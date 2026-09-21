import RiemannMachineVerification.Correctness278

namespace RiemannMachineVerification

/-- The current smallest verified machine. The original ApprovedTarget is preserved. -/
abbrev headlineMachine : Machine 278 := machine278

/-- Stable entry point for the current machine's exact arithmetic specification. -/
theorem headline_correct :
    HaltsBlank headlineMachine ↔ ∃ n : ℕ, Counterexample n :=
  machine278_correct

end RiemannMachineVerification
