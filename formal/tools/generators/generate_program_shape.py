"""Emit kernel-checked metadata for every literal primitive instruction."""
from pathlib import Path

ROOT = Path(__file__).resolve().parent


def generate():
    out = ['import RiemannMachineVerification.CounterData',
           'import RiemannMachineVerification.ProgramCounterParts', '',
           'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
           'namespace RiemannMachineVerification', '',
           'def PrimitiveShape (pc : ProgramCounter) : Prop :=',
           '  match primitiveProgram pc with',
           '  | .increment _ next => 16 ≤ pc.val ∧ next = counterNext pc false',
           '  | .decrement _ zero positive => 16 ≤ pc.val ∧',
           '      zero = counterNext pc false ∧ positive = counterNext pc true',
           '  | .initialize next => pc.val < 16 ∧ next = counterNext pc false',
           '  | .jump _ | .halt => 16 ≤ pc.val',
           '  | .transfer _ _ _ => False', '',
           'instance (pc : ProgramCounter) : Decidable (PrimitiveShape pc) := by',
           '  unfold PrimitiveShape; split <;> infer_instance', '']
    for k in range(32):
        out += [f'theorem primitive_shape_chunk_{k} (low : Fin 64) :',
                f'    PrimitiveShape (pcParts ⟨{k}, by decide⟩ low) := by',
                '  fin_cases low <;> decide', '']
    out += ['theorem primitive_shape (pc : ProgramCounter) : PrimitiveShape pc := by',
            '  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc', '  fin_cases high']
    out += [f'  · exact primitive_shape_chunk_{k} low' for k in range(32)]
    out += ['', 'end RiemannMachineVerification', '']
    return '\n'.join(out)


if __name__ == '__main__':
    (ROOT / 'RiemannMachineVerification/PrimitiveShape.lean').write_text(generate())
