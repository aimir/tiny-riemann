"""Solve the entire reachable-state quotient problem using Boolean SMT.

The fixed read masks are premises, supplied by a reachability certificate.
Every model is independently checked against every specified transition.
UNSAT is only a solver result for these premises, not a Lean lower bound.
"""
from collections import defaultdict, deque
from pathlib import Path
import argparse
import hashlib
import json
import random
import re
import shutil
import subprocess
import time

from tm_reduce import load, dump


def quotient_problem(rows, possible):
    names = [q for q in rows if possible[q]]
    ids = {q: i for i, q in enumerate(names)}
    assert '!ENTRY' in ids
    assert all(possible[q] in range(4) for q in rows)
    bad, parents = set(), defaultdict(list)
    for i, q in enumerate(names):
        for j in range(i):
            r = names[j]
            for b in (0, 1):
                if not (possible[q] & possible[r] & (1 << b)):
                    continue
                e, f = rows[q][b], rows[r][b]
                if e[:2] != f[:2] or ((e[2] == 'HALT') != (f[2] == 'HALT')):
                    bad.add((j, i))
                    break
                if e[2] != f[2]:
                    parents[tuple(sorted((ids[e[2]], ids[f[2]])))].append((j, i))
    queue = deque(bad)
    while queue:
        for pair in parents[queue.popleft()]:
            if pair not in bad:
                bad.add(pair)
                queue.append(pair)
    pairs = [(j, i) for i in range(len(names)) for j in range(i) if (j, i) not in bad]
    pairset = set(pairs)
    core = sorted({i for pair in pairs for i in pair})

    def equal(i, j):
        if i == j:
            return 'true'
        a, b = sorted((i, j))
        return f'e{a}_{b}' if (a, b) in pairset else 'false'

    lines = ['(set-logic QF_FD)']
    for i, j in pairs:
        lines.append(f'(declare-const {equal(i, j)} Bool)')
    # Symmetry and reflexivity are built into equal(). Enforce transitivity,
    # including wedges whose endpoints are known to be incompatible.
    for at, i in enumerate(core):
        for jt, j in enumerate(core[:at]):
            for k in core[:jt]:
                edges = [equal(i, j), equal(i, k), equal(j, k)]
                if edges.count('false') >= 2:
                    continue
                if 'false' in edges:
                    a, b = [edge for edge in edges if edge != 'false']
                    lines.append(f'(assert (or (not {a}) (not {b})))')
                else:
                    for h in range(3):
                        lines.append(f'(assert (=> (and {edges[h]} {edges[(h+1)%3]}) {edges[(h+2)%3]}))')
    for j, i in pairs:
        for b in (0, 1):
            if possible[names[i]] & possible[names[j]] & (1 << b):
                s, t = rows[names[i]][b][2], rows[names[j]][b][2]
                if s != t:
                    lines.append(f'(assert (=> {equal(i, j)} {equal(ids[s], ids[t])}))')
    representatives = []
    for i in core:
        prior = [equal(j, i) for j in core if j < i and (j, i) in pairset]
        representatives.append('(not (or ' + ' '.join(prior) + '))' if prior else 'true')
    return names, pairs, core, lines, representatives


def clique_first(rows, possible, seed=278, trials=1500):
    """Reorder variables without adding constraints or restricting partitions.

    Mutually incompatible states must be distinct representatives if placed
    first. Exposing these constants simplifies the cardinality constraint.
    The greedy clique is only an ordering heuristic; maximality is not assumed.
    """
    names, pairs, core, *_ = quotient_problem(rows, possible)
    incompatible = {i: set(core) - {i} for i in core}
    for a, b in pairs:
        incompatible[a].discard(b)
        incompatible[b].discard(a)
    rng = random.Random(seed)
    best = []
    for _ in range(trials):
        remaining = set(core)
        clique = []
        while remaining:
            weights = {i: len(incompatible[i] & remaining) + rng.random() * 10
                       for i in remaining}
            vertex = max(remaining, key=weights.get)
            clique.append(vertex)
            remaining &= incompatible[vertex]
        if len(clique) > len(best):
            best = clique
    assert all(b in incompatible[a] for i, a in enumerate(best) for b in best[i+1:])
    first = [names[i] for i in best]
    rest = [q for q in rows if q not in first]
    random.Random(seed).shuffle(rest)
    ordered = {q: rows[q] for q in first + rest}
    assert ordered == rows
    return ordered, first


def encode(problem, target, timeout_ms):
    names, pairs, core, lines, representatives = problem
    available = target - (len(names) - len(core))
    bound = ('(assert false)' if available < 0 else
             f'(assert ((_ at-most {available}) ' + ' '.join(representatives) + '))'
             if representatives else '(assert true)')
    values = ('(get-value (' + ' '.join(f'e{i}_{j}' for i, j in pairs) + '))') if pairs else ''
    return '\n'.join([f'(set-option :timeout {timeout_ms})', *lines, bound,
                      '(check-sat)', values]) + '\n'


def check_mapping(rows, possible, mapping):
    assert mapping['!ENTRY'] == '!ENTRY' and mapping['HALT'] == 'HALT'
    output = {}
    for q, mask in possible.items():
        if not mask:
            continue
        assert mapping[q] != 'HALT'
        row = output.setdefault(mapping[q], [None, None])
        for b in (0, 1):
            if mask & (1 << b):
                w, m, t = rows[q][b]
                edge = (w, m, mapping[t])
                assert row[b] is None or row[b] == edge, (q, b)
                row[b] = edge
    for q, row in output.items():
        for b in (0, 1):
            if row[b] is None:
                row[b] = row[1-b] or (0, 1, q)
            assert row[b][2] in output or row[b][2] == 'HALT'
    return output


def decode_model(rows, possible, problem, text):
    names, pairs, *_ = problem
    values = {(int(i), int(j)): value == 'true' for i, j, value in
              re.findall(r'\(e(\d+)_(\d+) (true|false)\)', text)}
    assert set(values) == set(pairs), 'Incomplete or malformed solver model'
    parent = list(range(len(names)))

    def root(i):
        while parent[i] != i:
            i = parent[i]
        return i

    for (i, j), same in values.items():
        if same:
            a, b = sorted((root(i), root(j)))
            parent[b] = a
    entry = root(names.index('!ENTRY'))
    mapping = {q: ('!ENTRY' if root(i) == entry else names[root(i)])
               for i, q in enumerate(names)}
    mapping.update({q: 'HALT' for q in rows if not possible[q]})
    mapping['HALT'] = 'HALT'
    return check_mapping(rows, possible, mapping), mapping


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--machine', type=Path, default=Path('machine/riemann.macro.tm'))
    parser.add_argument('--certificate', type=Path, default=Path('machine/reduction.json'))
    parser.add_argument('--target', type=int, default=298)
    parser.add_argument('--minimum', type=int, default=1)
    parser.add_argument('--timeout', type=float, default=60)
    parser.add_argument('--output', type=Path, default=Path('results/exact-quotient'))
    parser.add_argument('--solver', default=shutil.which('z3'))
    parser.add_argument('--order', choices=('source', 'clique'), default='source')
    parser.add_argument('--order-seed', type=int, default=278)
    args = parser.parse_args()
    assert args.solver, 'Install Z3 or pass --solver.'
    assert 1 <= args.minimum <= args.target and args.timeout > 0
    rows = load(args.machine)
    cert = json.loads(args.certificate.read_text())
    possible = cert['possible']
    assert set(possible) == set(rows)
    for q in rows:
        for b in (0, 1):
            t = rows[q][b][2]
            assert not (possible[q] & (1 << b)) or t == 'HALT' or possible[t]
    ordered, clique = clique_first(rows, possible, args.order_seed) if args.order == 'clique' else (rows, [])
    problem = quotient_problem(ordered, possible)
    names, pairs, core, *_ = problem
    args.output.mkdir(parents=True, exist_ok=True)
    report = {
        'machine_sha256': hashlib.sha256(args.machine.read_bytes()).hexdigest(),
        'certificate_sha256': hashlib.sha256(args.certificate.read_bytes()).hexdigest(),
        'solver': subprocess.check_output([args.solver, '-version'], text=True).strip(),
        'live_states': len(names), 'core_states': len(core), 'potential_pairs': len(pairs),
        'order': args.order, 'order_seed': args.order_seed, 'incompatible_clique': clique,
        'source_names': names, 'queries': [],
        'scope': 'Fixed transition table and read masks; UNSAT is not a Lean lower-bound proof.'}
    print({k: report[k] for k in ('live_states', 'core_states', 'potential_pairs')}, flush=True)
    for target in range(args.target, args.minimum - 1, -1):
        path = args.output / f'quotient-{target}'
        query = path.with_suffix('.smt2')
        query.write_text(encode(problem, target, int(args.timeout * 1000)))
        start = time.monotonic()
        result = subprocess.run([args.solver, str(query)], text=True, capture_output=True,
                                timeout=args.timeout + 15)
        path.with_suffix('.solver.txt').write_text(result.stdout + result.stderr)
        status = result.stdout.splitlines()[0] if result.stdout else 'error'
        record = {'target': target, 'status': status, 'seconds': time.monotonic() - start}
        if status == 'sat':
            output, mapping = decode_model(rows, possible, problem, result.stdout)
            assert len(output) <= target
            record['checked_states'] = len(output)
            dump(output, path.with_suffix('.tm'))
            certificate = dict(cert, mapping=mapping, solver=report['solver'], target_states=target)
            certificate.pop('merge_seed', None)
            path.with_suffix('.certificate.json').write_text(json.dumps(certificate, indent=2) + '\n')
        report['queries'].append(record)
        (args.output / 'report.json').write_text(json.dumps(report, indent=2) + '\n')
        print(record, flush=True)
        if status != 'sat':
            break


if __name__ == '__main__':
    main()
