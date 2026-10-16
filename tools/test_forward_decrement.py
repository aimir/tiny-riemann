"""Literal-tape regression checks for the complete forward-gap arithmetic calls.

These supplement the unbounded Lean proof; finite cases are not its replacement.
"""
import json
import random
from pathlib import Path
from compile import ROOT, table
from fragments import compile_fragments, graph
from test_fragments import run_tape, tape_for

BASE = ROOT / 'results/forward-gap276'


def run_tests(directory=BASE):
    c = json.loads((directory / 'candidate.json').read_text())
    machine, names = compile_fragments((directory / 'source.nql').read_text(),
        c['register_order'], c['layout'], c['lowering'],
        dict(c['fragments'], backend='forward_gap'))
    if c['fragments'].get('backend') == 'forward_gap':
        assert table(machine) == (directory / 'compiled.tm').read_text()
    width = machine.main.order
    rng = random.Random(276003)
    cases = 0
    for index, name in enumerate(names):
        for value in (0, 1, 2, 7, 31, 257):
            for pc in (0, (1 << width) - 2, (1 << width) - 1, rng.randrange(1 << width)):
                values = [rng.randrange(8) for _ in range(len(names) + 3)]
                values[index] = value
                for kind in ('inc', 'dec'):
                    register = machine.builder.register(name)
                    entry = getattr(register, kind).entry
                    expected = list(values)
                    expected[index] = value + 1 if kind == 'inc' else max(0, value - 1)
                    nextpc = (pc + (2 if kind == 'dec' and value else 1)) % (1 << width)
                    _, head, tape, _ = run_tape(entry, width + 1,
                        tape_for(pc, width, values), lambda q, h: q.name == '!ENTRY' and h == 0)
                    assert head == 0 and tape == tape_for(nextpc, width, expected), (kind, index, value, pc)
                    cases += 1
    program = graph(machine)
    # Start with the literal empty tape, retaining the actual tape between calls.
    pc, values, tape = 0, [], {}
    for call in range(1024):
        action, successors = program[pc]
        branch = 0
        if action == 'reg_init':
            values.append(0)
        elif action.startswith(('reg_incr(', 'reg_decr(')):
            index = names.index(action[action.index('(') + 1:-1])
            if action.startswith('reg_incr('):
                values[index] += 1
            else:
                branch = int(values[index] > 0)
                values[index] = max(0, values[index] - 1)
        else:
            assert action == 'silent', (call, pc, action)
        pc = successors[branch]
        _, head, tape, _ = run_tape(machine.entry, 0, tape,
            lambda q, h: q.name == '!ENTRY' and h == 0)
        assert head == 0 and tape == tape_for(pc, width, values), (call, pc, values)
    return {'complete_arithmetic_calls': cases, 'blank_bootstrap_and_composed_calls': 1024}


if __name__ == '__main__':
    print(json.dumps(run_tests(), indent=2))
