import Validation.Table299.RegisterReduction
import RiemannMachineVerification.Registers.Arithmetic.Correctness
namespace RiemannMachineVerification

/-- The exact unconditional theorem approved in ACCEPTANCE.md. -/
theorem machine299_correct :
    HaltsBlank machine299 ↔ ∃ n : ℕ, Counterexample n :=
  machine299_iff_macro.trans arithmetic_program_correct

end RiemannMachineVerification
