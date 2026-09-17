import RiemannMachineVerification.Quotient297

namespace RiemannMachineVerification

/-- The current smallest verified machine. The original ApprovedTarget is preserved. -/
abbrev headlineMachine : Machine 297 := machine297

/-- Stable entry point for the current machine's exact arithmetic specification. -/
theorem headline_correct :
    HaltsBlank headlineMachine ↔ ∃ n : ℕ, Counterexample n :=
  machine297_correct

end RiemannMachineVerification
