"""Extract literal register instructions for proof, without trusting compilation.

Correctness with respect to the frozen TM is a separate Lean obligation. The
macro table contracts transfer subroutines only at their entry PC; other PCs
retain their primitive meaning.
"""
from pathlib import Path
import argparse
import hashlib
import sys

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT.parent / 'tools'))
from compile import compile_source, table

REGISTERS = ['_Gx', '_Glcm', '_Gnum', '_Gdenom', '_Gi', '_Gc',
             '_scratch_1', '_scratch_2', '_scratch_3']


def fin(n):
    return f'⟨{n}, by decide⟩'


def instruction(sub, pc):
    name = sub.name
    next_ = fin((pc + sub.size) % 2048)
    if name.startswith('reg_incr('):
        return f'.increment {fin(REGISTERS.index(name[9:-1]))} {next_}'
    if name.startswith('reg_decr('):
        return f'.decrement {fin(REGISTERS.index(name[9:-1]))} {next_} {fin((pc+2)%2048)}'
    if name == 'reg_init':
        return f'.initialize {next_}'
    if name == 'halt':
        return '.halt'
    if name.startswith('noop.'):
        return f'.jump {next_}'
    if name.startswith('rjump('):
        return f'.jump {fin((pc+int(name[6:-1]))%2048)}'
    if name.startswith('transfer('):
        source, *targets = name[9:-1].split(',')
        return f'.transfer {fin(REGISTERS.index(source))} [{", ".join(fin(REGISTERS.index(r)) for r in targets)}] {next_}'
    raise ValueError(name)


def leaf(main, pc, macro):
    sub, offset = main, 0
    while sub.child_map:
        if macro and sub.name.startswith('transfer(') and pc == offset:
            break
        for prefix, info in sub.child_map.items():
            base = offset + (int(prefix or '0', 2) << (sub.order-len(prefix)))
            if base <= pc < base + info.sub.size:
                sub, offset = info.sub, base
                break
        else:
            raise ValueError((sub.name, pc, offset))
    return sub


def generate():
    source = (ROOT.parent / 'machine/riemann.nql').read_text()
    machine = compile_source(source)
    assert table(machine) == (ROOT.parent / 'machine/riemann.compiled.tm').read_text()
    assert machine.main.order == 11 and machine.builder._nextreg == 9
    out = ['import RiemannMachineVerification.RegisterMachine', '',
           'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
           'namespace RiemannMachineVerification', '',
           '-- Extracted from source SHA-256: ' + hashlib.sha256(source.encode()).hexdigest()]
    for name, macro in [('primitiveProgram', False), ('macroProgram', True)]:
        for chunk in range(32):
            out += [f'def {name}Chunk{chunk} : Array RegisterInstruction := #[']
            for pc in range(chunk*64, (chunk+1)*64):
                sub = leaf(machine.main, pc, macro)
                comma = ',' if pc % 64 < 63 else ''
                out.append(f'  {instruction(sub,pc)}{comma} -- {pc}: {sub.name}')
            out += [']', '']
        out += [f'def {name} (pc : ProgramCounter) : RegisterInstruction :=',
                '  match pc.val / 64 with']
        for chunk in range(32):
            pattern = str(chunk) if chunk < 31 else '_'
            out += [f"  | {pattern} => {name}Chunk{chunk}[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))"]
        out += ['']
    out += ['end RiemannMachineVerification', '']
    return '\n'.join(out)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    target = ROOT / 'RiemannMachineVerification/RegisterProgram.lean'
    output = generate()
    if args.check:
        assert target.read_text() == output
    else:
        target.write_text(output)
    print('Extracted both complete 2048-entry register tables; frozen TM matches.')
