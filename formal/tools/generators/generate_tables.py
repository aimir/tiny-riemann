"""Untrusted, deterministic import of the frozen transition tables into Lean.

Run with --check to compare every generated definition byte for byte. The hash
pins the accepted input; the Lean files contain the complete literal table.
"""
from pathlib import Path
import argparse
import hashlib

ROOT = Path(__file__).resolve().parent
if ROOT.name == 'generators':
    ROOT = ROOT.parent.parent
TABLES = [
    (299, 'machine/riemann.tm', '00402eabd3bcc448d97042458ea0186598d0f7c066673d9584262eed87c9840a'),
    (342, 'machine/riemann.macro.tm', 'bf53eb23ff1f823cb89854f6ccfc1a4339e35deebc1943eb70c403ebdd669d79'),
    (381, 'machine/riemann.compiled.tm', 'de8f516f8de26a18c9b128f8e8173a8a3d0a78ba2bdd928e677dd9c2b53c49ab'),
]

def generate(n, relative, digest):
    data = (ROOT.parent / relative).read_bytes()
    assert hashlib.sha256(data).hexdigest() == digest
    lines = [line.split() for line in data.decode().splitlines()]
    assert len(lines) == n
    names = [line[0] for line in lines]
    assert len(set(names)) == n and names[0] == '!ENTRY' and 'HALT' not in names
    ids = {name: i for i, name in enumerate(names)}
    out = [
        'import RiemannMachineVerification.Semantics',
        '', 'set_option maxRecDepth 4096',
        '', 'namespace RiemannMachineVerification', '',
        f'-- Literal data from {relative}; SHA-256: {digest}',
        f'def table{n} : Array (Instruction {n} × Instruction {n}) := #[',
    ]
    for line in lines:
        assert len(line) == 8 and line[1] == '='
        instructions = []
        for at in (2, 5):
            w, direction, target = line[at:at+3]
            assert w in ('0', '1') and direction in ('L', 'R')
            nxt = 'none' if target == 'HALT' else f'some ⟨{ids[target]}, by decide⟩'
            instructions.append('⟨' + ', '.join([
                'true' if w == '1' else 'false',
                'true' if direction == 'R' else 'false', nxt]) + '⟩')
        out.append(f'  ({instructions[0]}, {instructions[1]}), -- {ids[line[0]]}: {line[0]}')
    out[-1] = out[-1].replace('), --', ') --')
    out += [
        ']', '',
        f'theorem table{n}_size : table{n}.size = {n} := rfl', '',
        f'def machine{n} : Machine {n} where',
        '  entry := ⟨0, by decide⟩',
        '  transition q b :=',
        f'    let row := table{n}[q.val]\'(by simpa only [table{n}_size] using q.isLt)',
        '    if b then row.2 else row.1', '',
        'end RiemannMachineVerification', '',
    ]
    return '\n'.join(out)

if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--check', action='store_true')
    args = p.parse_args()
    for n, relative, digest in TABLES:
        output = generate(n, relative, digest)
        path = ROOT / 'RiemannMachineVerification' / f'Machine{n}.lean'
        if args.check:
            assert path.read_text() == output, path
        else:
            path.write_text(output)
        print(f'{n}: every transition matches {relative}')
