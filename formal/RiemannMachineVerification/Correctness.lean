import RiemannMachineVerification.RegisterReduction
import RiemannMachineVerification.CompilerCorrectness

namespace RiemannMachineVerification

/-- The exact unconditional theorem approved in ACCEPTANCE.md. -/
theorem machine299_correct :
    HaltsBlank machine299 ↔ ∃ n : ℕ, Counterexample n :=
  machine299_iff_macro.trans macro_correct

end RiemannMachineVerification
