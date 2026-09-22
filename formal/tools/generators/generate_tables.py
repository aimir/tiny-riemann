"""Untrusted, deterministic import of the frozen transition tables into Lean.

The acceptance checker compares every generated definition byte for byte.
The hash pins the accepted input; Lean contains the complete literal table.
"""
from pathlib import Path
import hashlib

ROOT = Path(__file__).resolve().parent
if ROOT.name == 'generators':
    ROOT = ROOT.parent.parent

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
