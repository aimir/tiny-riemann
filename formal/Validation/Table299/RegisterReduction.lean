import Validation.Table299.BackendCorrectness
import Validation.Table299.MacroRegisterCorrectness
import Validation.Table299.Reduction
namespace RiemannMachineVerification

/-- [proof-guide] The literal 299-state machine and the arithmetic register program have equivalent initial halting behavior.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem machine299_iff_macro : HaltsBlank machine299 ↔ RegisterHalts macroProgram :=
  machine381_iff_machine299.symm.trans (machine381_iff_primitive.trans primitive_iff_macro)

end RiemannMachineVerification
