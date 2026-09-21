import Validation.Table295.BackendCorrectness
import Validation.Table295.MacroCorrectness
import Validation.Table295.Quotient295
import Validation.Table299.MacroRegisterCorrectness
import RiemannMachineVerification.Registers.Arithmetic.Correctness
namespace RiemannMachineVerification

/-- [proof-guide] The literal 295-state machine halts from the blank tape exactly when the approved predicate has a witness.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem machine295_correct :
    HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n :=
  Reallocated.machine342_iff_machine295.symm.trans
    (Reallocated.machine381_iff_machine342.symm.trans
      (Reallocated.machine381_iff_primitive.trans
        (primitive_iff_macro.trans arithmetic_program_correct)))

end RiemannMachineVerification
