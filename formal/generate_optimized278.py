"""Proof data for the literal 278-state candidate; generated claims require Lean.

No compiler or Python checker is part of the logical trust boundary. Preserve
all approved original definitions and put the new compilation in its own namespace.
"""
from pathlib import Path
import json
import re
import sys

ROOT = Path(__file__).resolve().parent
sys.path[:0] = [str(ROOT.parent / 'tools'), str(ROOT)]
from compile import compile_source, table
from fragments import compile_fragments
from generate_register_program import leaf, REGISTERS, fin

PREFIX = 'RiemannMachineVerification.Optimized278'
DEST = ROOT / 'RiemannMachineVerification/Optimized278'
CANDIDATE = ROOT.parent / 'results/unified-target278/fefaa549f250fd12'


def machines():
    c = json.loads((CANDIDATE / 'candidate.json').read_text())
    new, _ = compile_fragments((CANDIDATE / 'source.nql').read_text(),
        c['register_order'], c['layout'], c['lowering'], c['fragments'])
    old = compile_source((ROOT.parent / 'machine/riemann.nql').read_text())
    assert table(new) == (CANDIDATE / 'compiled.tm').read_text()
    assert table(old) == (ROOT.parent / 'machine/riemann.compiled.tm').read_text()
    assert new.main.order == 10 and new.builder._nextreg == 9
    return old, new


def graph(machine, macro=True):
    out = {}
    modulus = 1 << machine.main.order
    for pc in range(modulus):
        sub = leaf(machine.main, pc, macro)
        name, nxt = sub.name, (pc + sub.size) % modulus
        if name.startswith('reg_incr('):
            op = ('increment', REGISTERS.index(name[9:-1]), [nxt])
        elif name.startswith('reg_decr('):
            op = ('decrement', REGISTERS.index(name[9:-1]), [(pc+1)%modulus, (pc+2)%modulus])
        elif name == 'reg_init': op = ('initialize', None, [nxt])
        elif name == 'halt': op = ('halt', None, [])
        elif name.startswith('noop.'): op = ('jump', None, [nxt])
        elif name.startswith('rjump('): op = ('jump', None, [(pc+int(name[6:-1]))%modulus])
        elif '.jump(' in name:
            value, power = map(int, name.rsplit('.jump(', 1)[1][:-1].split(','))
            op = ('jump', None, [(((pc >> power) << power)+value)%modulus])
        elif name.startswith('transfer('):
            op = ('transfer', [REGISTERS.index(r) for r in name[9:-1].split(',')], [nxt])
        else: raise ValueError(name)
        out[pc] = op
    return out


def instruction(op):
    kind, arg, nxt = op
    if kind == 'transfer':
        return f'.transfer {fin(arg[0])} [{", ".join(map(fin,arg[1:]))}] {fin(nxt[0])}'
    return '.'+kind+(' '+fin(arg) if arg is not None else '')+''.join(' '+fin(n) for n in nxt)


def header(*imports):
    return '\n'.join(['import '+i for i in imports]+['', 'set_option maxRecDepth 8192',
        'set_option maxHeartbeats 0', 'set_option linter.unusedSimpArgs false',
        'set_option linter.unusedVariables false', '', 'namespace '+PREFIX, ''])+'\n'


def write(name, content):
    DEST.mkdir(exist_ok=True)
    (DEST / (name+'.lean')).write_text(content+'\nend '+PREFIX+'\n')


def base(machine):
    selected = {'RegisterMachine','RegisterExecution','TransferSite','ProgramCounterParts','MacroRegisterCorrectness'}
    for name in selected:
        text = (ROOT/'RiemannMachineVerification'/f'{name}.lean').read_text()
        text = re.sub(r'^import RiemannMachineVerification\.(\w+)$',
            lambda m: 'import '+PREFIX+'.'+m[1] if m[1] in selected|{'RegisterProgram','MacroSites'} else m[0], text, flags=re.M)
        text = text.replace('namespace RiemannMachineVerification', 'namespace '+PREFIX).replace(
            'end RiemannMachineVerification','end '+PREFIX)
        if name in ('RegisterMachine','ProgramCounterParts'):
            text = text.replace('2048','1024')
        if name == 'ProgramCounterParts': text = text.replace('Fin 32','Fin 16')
        DEST.mkdir(exist_ok=True)
        (DEST/f'{name}.lean').write_text(text)
    out = header(PREFIX+'.RegisterMachine')
    for name, macro in [('primitiveProgram',False),('macroProgram',True)]:
        g = graph(machine,macro)
        for chunk in range(16):
            out += f'def {name}Chunk{chunk} : Array RegisterInstruction := #[\n'
            out += '\n'.join('  '+instruction(g[pc])+(',' if pc%64<63 else '')+f' -- {pc}'
                for pc in range(chunk*64,(chunk+1)*64))+'\n]\n\n'
        out += f'def {name} (pc : ProgramCounter) : RegisterInstruction :=\n  match pc.val / 64 with\n'
        out += '\n'.join(f'  | {chunk if chunk<15 else "_"} => {name}Chunk{chunk}[pc.val % 64]\'(by exact Nat.mod_lt _ (by decide))'
            for chunk in range(16))+'\n\n'
    write('RegisterProgram',out)


if __name__ == '__main__':
    _, machine = machines()
    base(machine)
