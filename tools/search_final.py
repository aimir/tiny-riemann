"""Diverse beam search selected by counts after the complete reduction pipeline.

Cheap screening uses narrow-window merging. Promoted candidates use every
window from the delivered manifest and the same fixed bank of merge seeds.
These counts are feasible upper bounds, not globally optimal quotient sizes.
Source plus explicit register allocation order fully specifies each candidate.
"""
from pathlib import Path
import argparse
import hashlib
import json
import random
import shutil
import subprocess
import time

from compile import ROOT, AstMachine, Machine, grammar, table
from search_layout import show, walk
from macro_reduce import simplify
from tm_reduce import load, abstract_reachable, fast_merge, dump
from solve_quotient import check_mapping, quotient_problem, encode, decode_model
from framework import Register
import nqlast as n


class RejectedCandidate(Exception):
    """The upstream compiler cannot represent this source layout."""


def compile_candidate(source, order):
    ast, = grammar.parse_string(source, parse_all=True)
    sizing = AstMachine(ast)
    sizing.pc_bits = 50
    for name in order:
        sizing.register(name)
    bits = sizing.main().order
    builder = AstMachine(ast)
    builder.pc_bits = bits
    for name in order:
        builder.register(name)
    machine = Machine(builder)
    machine.compress()
    registers = sorted({value.name: value.index for value in builder._memos.values()
                        if isinstance(value, Register)}.items(),
                       key=lambda pair: pair[1])
    return machine, [name for name, _ in registers]


def mutate(parent, rng):
    ast, = grammar.parse_string(parent['source'], parse_all=True)
    order = list(parent['order'])
    nodes = list(walk(ast))
    blocks = [e for e in nodes if isinstance(e, n.Block)]
    kind = rng.choice(('padding', 'operands', 'assignments', 'extract', 'inline', 'registers'))
    if kind == 'padding':
        block = rng.choice(blocks)
        pads = [e for e in block.children if isinstance(e, n.Call) and e.func.startswith('noop_')]
        if pads and rng.random() < 0.5:
            block.children.remove(rng.choice(pads))
        else:
            block.children.insert(rng.randrange(len(block.children) + 1),
                                  n.Call(func='noop_' + str(rng.randrange(4)), children=[]))
    elif kind == 'operands':
        choices = [e for e in nodes if isinstance(e, (n.Add, n.Mul))]
        if not choices:
            return None
        rng.choice(choices).children.reverse()
    elif kind == 'assignments':
        choices = []
        for block in blocks:
            for i, (a, b) in enumerate(zip(block.children, block.children[1:])):
                if not isinstance(a, n.Assign) or not isinstance(b, n.Assign):
                    continue
                wa, wb = a.children[0].name, b.children[0].name
                ra = {e.name for e in walk(a.children[1]) if isinstance(e, n.Reg)}
                rb = {e.name for e in walk(b.children[1]) if isinstance(e, n.Reg)}
                if wa != wb and wa not in rb and wb not in ra:
                    choices.append((block, i))
        if not choices:
            return None
        block, i = rng.choice(choices)
        block.children[i:i+2] = reversed(block.children[i:i+2])
    elif kind == 'extract':
        block = rng.choice([e for e in blocks if e.children])
        i = rng.randrange(len(block.children))
        j = rng.randrange(i + 1, len(block.children) + 1)
        chosen = block.children[i:j]
        if any(isinstance(e, (n.Return, n.Break)) for child in chosen for e in walk(child)):
            return None
        index = 0
        while f'beam_part{index}' in ast.by_name:
            index += 1
        name = f'beam_part{index}'
        proc = n.ProcDef(name=name, parameters=[], children=[n.Block(children=chosen)])
        ast.children.append(proc)
        ast.by_name[name] = proc
        block.children[i:j] = [n.Call(func=name, children=[])]
    elif kind == 'inline':
        calls = [e for e in nodes if isinstance(e, n.Call) and e.func.startswith('beam_part')]
        choices = [e for e in calls if sum(c.func == e.func for c in calls) == 1]
        if not choices:
            return None
        call = rng.choice(choices)
        for block in blocks:
            if call in block.children:
                i = block.children.index(call)
                block.children[i:i+1] = ast.by_name[call.func].children[0].children
                break
        ast.children.remove(ast.by_name.pop(call.func))
    else:
        if not order:
            order = list(parent['registers'])
        if len(order) < 2:
            return None
        i, j = rng.sample(range(len(order)), 2)
        order[i], order[j] = order[j], order[i]
    return {'source': show(ast), 'order': order, 'family': parent['family'],
            'mutation': kind, 'parent': parent['key']}


def graph_key(rows):
    names = ['!ENTRY']
    ids = {'!ENTRY': 0, 'HALT': -1}
    edges = []
    for q in names:
        for w, d, t in rows[q]:
            if t not in ids:
                ids[t] = len(names)
                names.append(t)
            edges.append((w, d, ids[t]))
    return hashlib.sha256(repr(edges).encode()).hexdigest()


class Evaluator:
    def __init__(self, output, seeds):
        self.output, self.seeds = output, seeds
        self.windows = json.loads((ROOT / 'machine/manifest.json').read_text())['analysis_windows']
        self.cache = {}
        self.exact_cache = {}
        # Reuse only identical complete constraint problems with decisive answers.
        for query in (ROOT / 'results').glob('**/quotient-*.smt2'):
            answer = query.with_suffix('.solver.txt')
            if not answer.exists():
                continue
            text = answer.read_text()
            if text.splitlines()[:1] not in (['sat'], ['unsat']):
                continue
            body = query.read_text().split('\n', 1)[1]
            self.exact_cache[hashlib.sha256(body.encode()).hexdigest()] = (text, str(query))

    def screen(self, candidate):
        key = hashlib.sha256(json.dumps([candidate['source'], candidate['order']]).encode()).hexdigest()
        if key in self.cache:
            return self.cache[key]
        start = time.monotonic()
        try:
            machine, registers = compile_candidate(candidate['source'], candidate['order'])
        except AssertionError as error:
            raise RejectedCandidate(str(error)) from error
        directory = self.output / key[:16]
        directory.mkdir(parents=True, exist_ok=True)
        (directory / 'source.nql').write_text(candidate['source'])
        (directory / 'compiled.tm').write_text(table(machine))
        original = load(directory / 'compiled.tm')
        rows, rounds = simplify(original)
        dump(rows, directory / 'macro.tm')
        (directory / 'macros.json').write_text(json.dumps({'rounds': rounds}) + '\n')
        possible, _ = abstract_reachable(rows, 3)
        cheap, _ = fast_merge(rows, possible, 0)
        result = dict(candidate, key=key, registers=registers, rows=rows, directory=directory,
                      compiled_states=len(original), macro_states=len(rows), graph=graph_key(rows),
                      proxy=sum(v > 0 for v in possible.values()) - 0.7 * sum(v in (1, 2) for v in possible.values()),
                      screen_states=len(cheap), screen_seconds=time.monotonic() - start)
        self.cache[key] = result
        self.save(result)
        return result

    def save(self, candidate):
        record = {k: v for k, v in candidate.items() if k not in ('rows', 'directory', 'source')}
        (candidate['directory'] / 'candidate.json').write_text(json.dumps(record, indent=2) + '\n')

    def full(self, candidate):
        if 'final_states' in candidate:
            return candidate
        start = time.monotonic()
        rows = candidate['rows']
        allowed = {q: 3 for q in rows}
        trace = []
        for left, right in self.windows:
            possible, _ = abstract_reachable(rows, 0, left, right, allowed)
            allowed = {q: allowed[q] & possible[q] for q in rows}
            trace.append({'left': left, 'right': right, 'possible': allowed.copy()})
        best = None
        counts = []
        for seed in self.seeds:
            output, mapping = fast_merge(rows, allowed, seed)
            assert output == check_mapping(rows, allowed, mapping)
            counts.append([seed, len(output)])
            if best is None or len(output) < len(best[0]):
                best = output, mapping, seed
        output, mapping, seed = best
        dump(output, candidate['directory'] / 'final.tm')
        cert = {'trace': trace, 'possible': allowed, 'mapping': mapping, 'merge_seed': seed}
        (candidate['directory'] / 'reduction.json').write_text(json.dumps(cert, indent=2) + '\n')
        candidate.update(final_states=len(output), merge_counts=counts,
                         full_seconds=time.monotonic() - start)
        self.save(candidate)
        print(json.dumps({k: candidate[k] for k in
                          ('key', 'family', 'mutation', 'proxy', 'screen_states', 'final_states', 'full_seconds')}), flush=True)
        return candidate

    def exact(self, candidate, target, seconds):
        cert = json.loads((candidate['directory'] / 'reduction.json').read_text())
        problem = quotient_problem(candidate['rows'], cert['possible'])
        query = encode(problem, target, int(seconds * 1000))
        key = hashlib.sha256(query.split('\n', 1)[1].encode()).hexdigest()
        prefix = candidate['directory'] / f'quotient-{target}'
        prefix.with_suffix('.smt2').write_text(query)
        start = time.monotonic()
        if key in self.exact_cache:
            text, reused = self.exact_cache[key]
        else:
            solver = shutil.which('z3')
            assert solver, 'Exact search requires the z3 executable.'
            result = subprocess.run([solver, str(prefix.with_suffix('.smt2'))],
                                    text=True, capture_output=True, timeout=seconds + 15)
            text, reused = result.stdout, None
            if text.splitlines()[:1] in (['sat'], ['unsat']):
                self.exact_cache[key] = text, str(prefix.with_suffix('.smt2'))
        prefix.with_suffix('.solver.txt').write_text(text)
        status = text.splitlines()[0] if text else 'error'
        candidate['exact'] = {'target': target, 'status': status,
                              'seconds': time.monotonic() - start,
                              'problem_sha256': key, 'reused_from': reused}
        if status == 'sat':
            output, mapping = decode_model(candidate['rows'], cert['possible'], problem, text)
            assert len(output) <= target
            if len(output) < candidate['final_states']:
                dump(output, candidate['directory'] / 'final.tm')
                cert['mapping'] = mapping
                cert.pop('merge_seed', None)
                cert['solver'] = 'z3'
                (candidate['directory'] / 'reduction.json').write_text(json.dumps(cert, indent=2) + '\n')
                candidate['final_states'] = len(output)
        self.save(candidate)
        print('exact', candidate['key'][:16], candidate['exact'], flush=True)
        return candidate


def select_diverse(candidates, size, score, rng):
    unique = {}
    for candidate in sorted(candidates, key=lambda c: (c[score], c['macro_states'], c['key'])):
        unique.setdefault(candidate['graph'], candidate)
    ordered = list(unique.values())
    if len(ordered) <= size:
        return ordered
    elite = max(1, size * 3 // 4)
    selected = ordered[:elite]
    remaining = ordered[elite:]
    families = {c['family'] for c in selected}
    novel = [c for c in remaining if c['family'] not in families]
    while len(selected) < size:
        candidate = rng.choice(novel or remaining)
        selected.append(candidate)
        remaining.remove(candidate)
        novel = [c for c in novel if c != candidate and c['family'] != candidate['family']]
    return selected


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sources', nargs='+', type=Path, default=[ROOT / 'machine/riemann.nql'])
    parser.add_argument('--rounds', type=int, default=2)
    parser.add_argument('--beam', type=int, default=8)
    parser.add_argument('--offspring', type=int, default=32)
    parser.add_argument('--promote', type=int, default=8)
    parser.add_argument('--seed', type=int, default=297)
    parser.add_argument('--merge-seeds', nargs='+', type=int, default=[0, 1, 2, 3, 248, 715, 1181, 1235])
    parser.add_argument('--output', type=Path, default=ROOT / 'results/final-beam')
    parser.add_argument('--exact-finalists', type=int, default=0)
    parser.add_argument('--exact-target', type=int, default=296)
    parser.add_argument('--exact-seconds', type=float, default=60)
    args = parser.parse_args()
    assert args.rounds >= 0 and min(args.beam, args.offspring, args.promote) > 0
    args.output.mkdir(parents=True, exist_ok=True)
    evaluator = Evaluator(args.output, args.merge_seeds)
    rng = random.Random(args.seed)
    seeds = [evaluator.screen({'source': p.read_text(), 'order': [], 'family': p.stem,
                               'mutation': 'initial', 'parent': None}) for p in args.sources]
    for candidate in seeds:
        evaluator.full(candidate)
    beam = select_diverse(seeds, args.beam, 'final_states', rng)
    history = []
    for generation in range(args.rounds):
        children, seen = [], set()
        for _ in range(args.offspring * 20):
            if len(children) >= args.offspring:
                break
            candidate = mutate(rng.choice(beam), rng)
            if candidate is None:
                continue
            try:
                child = evaluator.screen(candidate)
            except RejectedCandidate:
                continue  # The upstream compiler rejects some empty helpers.
            if child['key'] not in seen:
                children.append(child)
                seen.add(child['key'])
        promoted = select_diverse(children, args.promote, 'screen_states', rng)
        for candidate in promoted:
            evaluator.full(candidate)
        if args.exact_finalists:
            finalists = select_diverse(promoted, args.exact_finalists, 'final_states', rng)
            for candidate in finalists:
                evaluator.exact(candidate, args.exact_target, args.exact_seconds)
        beam = select_diverse(beam + promoted, args.beam, 'final_states', rng)
        history.append({'generation': generation, 'screened': len(children),
                        'promoted': [c['key'] for c in promoted], 'beam': [c['key'] for c in beam]})
        report = {'seed': args.seed, 'windows': evaluator.windows, 'merge_seeds': args.merge_seeds,
                  'history': history, 'best_states': min(c['final_states'] for c in beam),
                  'exact_target': args.exact_target, 'exact_finalists': args.exact_finalists,
                  'scope': 'Feasible reduced counts. New source/compiler candidates are not yet formally verified.'}
        (args.output / 'report.json').write_text(json.dumps(report, indent=2) + '\n')
        print('generation', generation, 'best', report['best_states'], flush=True)
    if not history:
        report = {'seed': args.seed, 'windows': evaluator.windows, 'merge_seeds': args.merge_seeds,
                  'history': [], 'best_states': min(c['final_states'] for c in beam),
                  'scope': 'Feasible reduced counts. New source/compiler candidates are not yet formally verified.'}
        (args.output / 'report.json').write_text(json.dumps(report, indent=2) + '\n')


if __name__ == '__main__':
    main()
