import RiemannMachineVerification.MacroCorrectness
import RiemannMachineVerification.Quotient

namespace RiemannMachineVerification

/-- The entire transition-table optimization, for the three literal tables.
Source compilation and arithmetic correctness are separate obligations. -/
theorem machine381_iff_machine299 :
    HaltsBlank machine381 ↔ HaltsBlank machine299 :=
  machine381_iff_machine342.trans machine342_iff_machine299

end RiemannMachineVerification
