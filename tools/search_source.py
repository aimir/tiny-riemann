"""Exhaustive small, semantics-preserving source variations."""
from pathlib import Path
from itertools import product
import json
from compile import compile_source, minimize, ROOT, table


def main():
    source = (ROOT / 'candidates/shared.nql').read_text()
    best = 10000
    results = []
    for sorted_, rel, test, cutoff, harmonic, final in product(
            (True, False), (False, True), ('!=', '>'),
            ('compare', 'counter'), ('down', 'up'), ('factored', 'original')):
        s = source
        if not sorted_:
            s = 'option no_sort_transfers;\n' + s
        if rel:
            s = 'option relative_jumps;\n' + s
        s = s.replace('lcm !=', 'lcm ' + test)
        if cutoff == 'counter':
            s = s.replace('global d;', 'global d;\nglobal skip;')
            s = s.replace('lcm = 1;', 'lcm = 1;\n    skip = 253;')
            s = s.replace('if (x > 253) {', 'if (skip > 0) {\n            skip = skip - 1;\n        } else {')
        if harmonic == 'up':
            s = s.replace('global d;', 'global d;\nglobal j;')
            s = s.replace('while (i > 0)', 'j = 1;\n    while (j <= i)')
            s = s.replace('num * i', 'num * j').replace('denom * i', 'denom * j')
            s = s.replace('i = i - 1;', 'j = j + 1;')
        if final == 'original':
            s = s.replace('num = (num - denom * x) * d;\n            denom = denom * c;\n            if (num * num > denom * denom * x)',
                          'num = num - denom * x;\n            c = c * c * x;\n            d = d * d;\n            if (num * num * d > denom * denom * c)')
        m = compile_source(s)
        minimize(m)
        count = len(m.reachable())
        spec = [sorted_, rel, test, cutoff, harmonic, final]
        results.append([count, spec])
        if count < best:
            best = count
            (ROOT / 'candidates/source-best.nql').write_text(s)
            (ROOT / 'results/source-best.tm').write_text(table(m))
            print(best, spec, flush=True)
    (ROOT / 'results/source-search.json').write_text(json.dumps(sorted(results), indent=2))


if __name__ == '__main__':
    main()
