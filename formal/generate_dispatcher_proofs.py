"""Generate finite prefix execution proofs for all 2048 program counters.

Every claimed finite execution and every bounds check is rechecked by Lean.
No register contents or background tape are enumerated or assumed here.
"""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT))
from generate_register_program import compile_source, leaf, REGISTERS, fin
from generate_grouped_checks import aggregate


def generate():
    machine = compile_source((ROOT.parent/'machine/riemann.nql').read_text())
    rows = [line.split() for line in (ROOT.parent/'machine/riemann.compiled.tm').read_text().splitlines()]
    ids = {row[0]: k for k, row in enumerate(rows)}
    lengths = []
    entries = {}
    for pc in range(2048):
        sub = leaf(machine.main, pc, False)
        bits = [0] + [int(c) for c in f'{pc:011b}'] + [0]
        register = sub.name.startswith('reg_')
        q, head, steps = 0, 0, 0
        while steps == 0 or (q is not None and q != 0 and not (register and head == 12)):
            assert 0 <= head < 13
            row = rows[q]
            w, d, to = row[2+3*bits[head]:5+3*bits[head]]
            bits[head] = int(w)
            head += 1 if d == 'R' else -1
            q = ids.get(to)
            steps += 1
            assert steps < 100
        name = sub.name
        if name.startswith('reg_'):
            assert head == 12 and bits == [0] + [int(c) for c in f'{pc:011b}'] + [0]
            if name in entries:
                assert entries[name] == q
            entries[name] = q
        elif name == 'halt':
            assert q is None and head == 12
            assert bits == [0] + [int(c) for c in f'{pc:011b}'] + [0]
        else:
            expected = (pc + (int(name[6:-1]) if name.startswith('rjump(') else sub.size)) % 2048
            assert head == 0 and q == 0 and bits == [0] + [int(c) for c in f'{expected:011b}'] + [0], (pc,name,head,q,bits,expected)
        lengths.append(steps)
    out = ['import RiemannMachineVerification.RegisterProgram',
           'import RiemannMachineVerification.Machine381',
           'import RiemannMachineVerification.FiniteWindow', '',
           'set_option maxRecDepth 8192', '',
           'namespace RiemannMachineVerification', '',
           'def pcPrefix (pc : ProgramCounter) (p : Fin 13) : Bool :=',
           '  if p.val = 0 ∨ p.val = 12 then false else pc.val.testBit (11 - p.val)', '',
           'def initialPrefix (pc : ProgramCounter) : FiniteWindow.Config 381 13 :=',
           '  ⟨some machine381.entry, 0, pcPrefix pc⟩', '']
    for op, name in [('Increment', 'reg_incr'), ('Decrement', 'reg_decr')]:
        out += [f'def backend{op}Entries : Array (Fin 381) := #[',
                '  '+', '.join(fin(entries[f'{name}({r})']) for r in REGISTERS), ']', '',
                f'def backend{op} (r : RegisterIndex) : Fin 381 :=',
                f"  backend{op}Entries[r.val]'(by simpa only [show backend{op}Entries.size = 9 from rfl] using r.isLt)", '']
    out += [f'def backendInitialize : Fin 381 := {fin(entries["reg_init"])}', '',
            'def dispatcherTarget (pc : ProgramCounter) : FiniteWindow.Config 381 13 :=',
            '  match primitiveProgram pc with',
            '  | .increment r _ => ⟨some (backendIncrement r), 12, pcPrefix pc⟩',
            '  | .decrement r _ _ => ⟨some (backendDecrement r), 12, pcPrefix pc⟩',
            '  | .initialize _ => ⟨some backendInitialize, 12, pcPrefix pc⟩',
            '  | .jump next => initialPrefix next',
            '  | .halt => ⟨none, 12, pcPrefix pc⟩',
            '  | .transfer _ _ _ => initialPrefix pc', '']
    for chunk in range(32):
        out += [f'def dispatcherLengthChunk{chunk} : Array ℕ := #[',
                '  '+', '.join(map(str, lengths[chunk*64:(chunk+1)*64])), ']', '']
    out += ['def dispatcherLength (pc : ProgramCounter) : ℕ :=',
            '  match pc.val / 64 with']
    for chunk in range(32):
        pattern = str(chunk) if chunk < 31 else '_'
        out += [f"  | {pattern} => dispatcherLengthChunk{chunk}[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))"]
    out += ['',
            'def DispatcherCheck (pc : ProgramCounter) : Prop :=',
            '  FiniteWindow.safe machine381 (initialPrefix pc) (dispatcherLength pc) = true ∧',
            '  FiniteWindow.execute machine381 (initialPrefix pc) (dispatcherLength pc) = dispatcherTarget pc', '',
            'end RiemannMachineVerification', '']
    (ROOT/'RiemannMachineVerification/DispatcherData.lean').write_text('\n'.join(out))
    for chunk in range(32):
        out = ['import RiemannMachineVerification.DispatcherData', '',
               'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
               'namespace RiemannMachineVerification', '']
        for pc in range(chunk*64, (chunk+1)*64):
            out += [f'theorem dispatcher_check_{pc} : DispatcherCheck {fin(pc)} := by',
                    '  constructor', '  · rfl',
                    '  · apply FiniteWindow.config_ext', '    · rfl', '    · rfl',
                    '    · funext p; fin_cases p <;> rfl', '']
        out += ['end RiemannMachineVerification', '']
        (ROOT/f'RiemannMachineVerification/DispatcherChecks{chunk:02}.lean').write_text('\n'.join(out))
    (ROOT/'RiemannMachineVerification/DispatcherChecks.lean').write_text(aggregate('dispatcher'))
    print('2048 prefix certificates generated. Entry state numbers:', entries)


if __name__ == '__main__':
    generate()
