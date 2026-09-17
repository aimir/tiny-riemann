"""Reproduce upstream compilation and optionally minimize by bisimulation."""
from pathlib import Path
import argparse
import contextlib
import io
import json
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'vendor' / 'nql'))
from framework import Machine, Halt
from nqlast import AstMachine
from nqlgrammar import grammar
import optimized  # Registers explicit opt-in source options.


def compile_source(source):
    ast, = grammar.parse_string(source, parse_all=True)
    sizing = AstMachine(ast)
    sizing.pc_bits = 50
    order = sizing.main().order
    builder = AstMachine(ast)
    builder.pc_bits = order
    machine = Machine(builder)
    machine.compress()
    return machine


def minimize(machine):
    """Greatest deterministic transition bisimulation; all tape inputs preserved."""
    states = machine.reachable()
    blocks = {s: 0 for s in states}
    while True:
        signatures = {}
        refined = {}
        for s in states:
            sig = tuple((getattr(s, 'write' + b), getattr(s, 'move' + b),
                         blocks.get(getattr(s, 'next' + b), -1)) for b in '01')
            refined[s] = signatures.setdefault(sig, len(signatures))
        if refined == blocks:
            break
        blocks = refined
    representatives = {}
    # Keep the entry state's name when it belongs to a nontrivial class.
    for s in [machine.entry] + states:
        representatives.setdefault(blocks[s], s)
    mapping = {s: representatives[blocks[s]] for s in states}
    for s in representatives.values():
        s.next0 = mapping.get(s.next0, s.next0)
        s.next1 = mapping.get(s.next1, s.next1)
    machine.entry = mapping[machine.entry]
    return mapping


def table(machine):
    with contextlib.redirect_stdout(io.StringIO()) as output:
        machine.print_machine()
    return output.getvalue()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('source', type=Path)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--minimize', action='store_true')
    args = parser.parse_args()
    machine = compile_source(args.source.read_text())
    before = len(machine.reachable())
    if args.minimize:
        minimize(machine)
    if args.output:
        args.output.write_text(table(machine))
    print(json.dumps({'source': str(args.source), 'compiled_states': before,
                      'states': len(machine.reachable()),
                      'pc_bits': machine.builder.pc_bits,
                      'registers': machine.builder._nextreg}))


if __name__ == '__main__':
    main()
