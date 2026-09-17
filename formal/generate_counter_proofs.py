"""Lean proofs of both binary counter update routines for every counter value."""
from pathlib import Path
from generate_grouped_checks import aggregate

ROOT = Path(__file__).resolve().parent

out = ['import RiemannMachineVerification.DispatcherData', '',
       'namespace RiemannMachineVerification', '',
       'def counterStart (pc : ProgramCounter) (two : Bool) : FiniteWindow.Config 381 13 :=',
       '  ⟨some (if two then ⟨176, by decide⟩ else ⟨9, by decide⟩), 11, pcPrefix pc⟩', '',
       'def counterNext (pc : ProgramCounter) (two : Bool) : ProgramCounter :=',
       '  ⟨(pc.val + if two then 2 else 1) % 2048, Nat.mod_lt _ (by decide)⟩', '',
       'def CounterCheck (pc : ProgramCounter) (two : Bool) : Prop :=',
       '  FiniteWindow.safe machine381 (counterStart pc two) 11 = true ∧',
       '  FiniteWindow.execute machine381 (counterStart pc two) 11 = initialPrefix (counterNext pc two)', '',
       'end RiemannMachineVerification', '']
(ROOT/'RiemannMachineVerification/CounterData.lean').write_text('\n'.join(out))
for chunk in range(32):
    out = ['import RiemannMachineVerification.CounterData', '',
           'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
           'namespace RiemannMachineVerification', '']
    for pc in range(chunk*64, (chunk+1)*64):
        for b in ['false', 'true']:
            out += [f'theorem counter_check_{pc}_{b} : CounterCheck ⟨{pc}, by decide⟩ {b} := by',
                    '  constructor', '  · rfl', '  · apply FiniteWindow.config_ext',
                    '    · rfl', '    · rfl', '    · funext p; fin_cases p <;> rfl', '']
    out += ['end RiemannMachineVerification', '']
    (ROOT/f'RiemannMachineVerification/CounterChecks{chunk:02}.lean').write_text('\n'.join(out))
(ROOT/'RiemannMachineVerification/CounterChecks.lean').write_text(aggregate('counter'))
print('Generated 4096 counter-update certificates.')
