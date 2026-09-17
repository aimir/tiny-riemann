"""Generate elementary proofs; every concrete calculation is checked by Lean.

For length-one cases there are two instruction equations. For length-three
cases there are 32 binary windows, and equality is proved field by field.
No evaluation oracle or native-computation axiom is used.
"""
from pathlib import Path
import json

ROOT = Path(__file__).resolve().parent
names = [line.split()[0] for line in (ROOT.parent/'machine/riemann.macro.tm').read_text().splitlines()]
cert, = json.loads((ROOT.parent/'machine/macros.json').read_text())['rounds']
chunks = []
for first in range(0,342,20):
    mod = f'MacroChecks{first//20:02}'
    chunks.append(mod)
    out = ['import RiemannMachineVerification.MacroProofSupport', '',
           'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
           'namespace RiemannMachineVerification', '']
    for i in range(first,min(first+20,342)):
        name=names[i]
        out += [f'theorem macro_check_{i} : MacroCheckFor ⟨{i}, by decide⟩ := by']
        if all(name+' '+str(b) not in cert['lengths'] for b in (0,1)):
            out += ['  apply macroCheck_one',
                    '  · intro b; cases b <;> rfl',
                    '  · intro b; cases b <;> rfl', '']
        else:
            out += ['  unfold MacroCheckFor', '  intro a b c d e',
                    '  cases a <;> cases b <;> cases c <;> cases d <;> cases e',
                    '  all_goals', '    apply localConfiguration_ext',
                    '    · rfl', '    · rfl', '    · funext p',
                    '      fin_cases p <;> rfl', '']
    out += ['end RiemannMachineVerification','']
    (ROOT/'RiemannMachineVerification'/f'{mod}.lean').write_text('\n'.join(out))
out=[f'import RiemannMachineVerification.{m}' for m in chunks]
out += ['', 'namespace RiemannMachineVerification', '',
        'theorem all_macro_checks : ∀ q : Fin 342, MacroCheckFor q := by',
        '  intro q', '  fin_cases q']
out += [f'  · exact macro_check_{i}' for i in range(342)]
out += ['', 'end RiemannMachineVerification', '']
(ROOT/'RiemannMachineVerification/MacroChecks.lean').write_text('\n'.join(out))
