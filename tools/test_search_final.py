"""Regression checks for register placement and exact-result cache semantics."""
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch
import json
import tempfile

from compile import ROOT
from search_final import Evaluator, compile_candidate
from tm_reduce import load
from verify import run_register


def main():
    count = 0
    for body, expected in [('a=a*b;', 12), ('a=a-b;', 1), ('a=a*a+b;', 19)]:
        source = 'global a; global b; proc main() { a=4; b=3; ' + body + ' return; }'
        _, names = compile_candidate(source, [])
        for order in (names, names[::-1], names[1:] + names[:1]):
            machine, _ = compile_candidate(source, order)
            values, _ = run_register(machine)
            assert values['_Ga'] == expected and values['_Gb'] == 3
            count += 1
    with tempfile.TemporaryDirectory() as directory:
        output = Path(directory)
        evaluator = Evaluator(output, [0])
        original = (ROOT / 'machine/reduction.json').read_text()

        def candidate(name):
            folder = output / name
            folder.mkdir()
            (folder / 'reduction.json').write_text(original)
            return {'directory': folder, 'rows': load(ROOT / 'machine/riemann.macro.tm'),
                    'key': name, 'final_states': 299}

        hit = candidate('cached-sat')
        with patch('search_final.subprocess.run', side_effect=AssertionError('Cache hit started Z3')):
            evaluator.exact(hit, 297, 1)
        assert hit['final_states'] == 297 and hit['exact']['reused_from']
        unknown = candidate('unknown')
        evaluator.exact_cache.clear()
        with patch('search_final.subprocess.run', return_value=SimpleNamespace(stdout='unknown\n')) as run:
            evaluator.exact(unknown, 296, 1)
            evaluator.exact(unknown, 296, 1)
            assert run.call_count == 2
        assert unknown['final_states'] == 299 and not evaluator.exact_cache
    print(f'PASS: {count} register placement checks; SAT cache replay; UNKNOWN is neither cached nor promoted.')


if __name__ == '__main__':
    main()
