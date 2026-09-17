import RiemannMachineVerification.Arithmetic
import RiemannMachineVerification.Machine299

namespace RiemannMachineVerification

/-- The exact proposition approved by the user on 2026-09-17.
This is a proposition definition, NOT a proof of that proposition. -/
def ApprovedTarget : Prop :=
  HaltsBlank machine299 ↔ ∃ n : ℕ, Counterexample n

end RiemannMachineVerification
