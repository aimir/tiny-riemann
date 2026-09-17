import RiemannMachineVerification.Correctness295

namespace RiemannMachineVerification

/-- The current smallest verified machine. The original ApprovedTarget is preserved. -/
abbrev headlineMachine : Machine 295 := machine295

/-- Stable entry point for the current machine's exact arithmetic specification. -/
theorem headline_correct :
    HaltsBlank headlineMachine ↔ ∃ n : ℕ, Counterexample n :=
  machine295_correct

end RiemannMachineVerification
