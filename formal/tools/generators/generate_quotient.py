"""Emit the state map and finite transition equations, checked by Lean."""
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parent
source=[s.split()[0] for s in (ROOT.parent/'machine/riemann.macro.tm').read_text().splitlines()]
target=[s.split()[0] for s in (ROOT.parent/'machine/riemann.tm').read_text().splitlines()]
cert=json.loads((ROOT.parent/'machine/reduction.json').read_text())
out=['import RiemannMachineVerification.Invariants',
     'import RiemannMachineVerification.Machine299', '',
     'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
     'namespace RiemannMachineVerification', '',
     'def quotientMapTable : Array (Fin 299) := #[']
for i,q in enumerate(source):
    to=cert['mapping'].get(q,'HALT')
    if cert['possible'][q]==0:to='!ENTRY'
    out += [f'  ⟨{target.index(to)}, by decide⟩'+(',' if i<341 else '')]
out += [']', '', 'def quotientMap (q : Fin 342) : Fin 299 :=',
        "  quotientMapTable[q.val]'(by simpa only [show quotientMapTable.size = 342 from rfl] using q.isLt)", '',
        'theorem quotient_transitions : ∀ (q : Fin 342) (b : Bool),',
        '    inv3_after q b = true →',
        '    machine299.transition (quotientMap q) b =',
        '      renameInstruction quotientMap (machine342.transition q b) := by',
        '  intro q b h', '  fin_cases q <;> cases b']
for q in source:
    for b in (0,1):
        if cert['possible'][q] & (1<<b):out+=['  · rfl']
        else:out+=['  · exact Bool.noConfusion (show false = true from h)']
out += ['', 'theorem machine342_iff_machine299 :',
        '    HaltsBlank machine342 ↔ HaltsBlank machine299 := by',
        '  apply halts_iff_of_invariant_quotient machine342 machine299 quotientMap',
        '    (fun c => ∃ t, run machine342 t = c)',
        '  · exact ⟨0, rfl⟩',
        '  · rintro c ⟨t, rfl⟩',
        '    exact ⟨t + 1, rfl⟩',
        '  · rfl',
        '  · rintro c ⟨t, rfl⟩ q hq',
        '    exact quotient_transitions q _ (read_mask_verified t q hq)', '',
        'end RiemannMachineVerification', '']
(ROOT/'RiemannMachineVerification/Quotient.lean').write_text('\n'.join(out))
