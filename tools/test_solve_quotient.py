"""Cross-check the SMT encoding against exhaustive partitions on small inputs."""
import random
import shutil
import subprocess

from solve_quotient import quotient_problem, encode, decode_model, clique_first


def partitions(size):
    def visit(labels):
        if len(labels) == size:
            yield labels
        else:
            for label in range(max(labels, default=-1) + 2):
                yield from visit(labels + [label])
    yield from visit([])


def exhaustive_minimum(rows, possible):
    names = [q for q in rows if possible[q]]
    best = len(names)
    for labels in partitions(len(names)):
        mapping = dict(zip(names, labels), HALT=-1)
        edges = {}
        valid = True
        for q in names:
            for b in (0, 1):
                if possible[q] & (1 << b):
                    w, d, t = rows[q][b]
                    key, value = (mapping[q], b), (w, d, mapping[t])
                    if key in edges and edges[key] != value:
                        valid = False
                    edges[key] = value
        if valid:
            best = min(best, len(set(labels)))
    return best


def main():
    solver = shutil.which('z3')
    assert solver
    rng = random.Random(297)
    cases = 0
    for size in range(1, 7):
        for _ in range(12):
            names = ['!ENTRY'] + [f'q{i}' for i in range(1, size)]
            possible = {q: rng.randrange(1, 4) for q in names}
            rows = {q: tuple((rng.randrange(2), rng.choice((-1, 1)),
                             rng.choice(names + ['HALT'])) for _ in range(2)) for q in names}
            if cases % 2:
                rows['dead'] = ((0, -1, 'dead'), (1, 1, 'dead'))
                possible['dead'] = 0
            optimum = exhaustive_minimum(rows, possible)
            ordered, _ = clique_first(rows, possible, trials=20)
            assert ordered == rows
            for order in (rows, ordered):
                problem = quotient_problem(order, possible)
                for target in (optimum, optimum - 1):
                    result = subprocess.run([solver, '-in'], input=encode(problem, target, 5000),
                                            text=True, capture_output=True, timeout=10)
                    status = result.stdout.splitlines()[0]
                    expected = 'sat' if target == optimum else 'unsat'
                    assert status == expected, (rows, possible, optimum, target, result.stdout)
                    if status == 'sat':
                        reduced, _ = decode_model(rows, possible, problem, result.stdout)
                        assert len(reduced) == optimum
            cases += 1
    print(f'PASS: {cases} exhaustive comparisons in both orders, SAT model checks and UNSAT boundary checks.')


if __name__ == '__main__':
    main()
