import RiemannMachineVerification.Reallocated.BackendCorrectness
import RiemannMachineVerification.Reallocated.MacroCorrectness
import RiemannMachineVerification.Reallocated.Quotient295
import RiemannMachineVerification.MacroRegisterCorrectness
import RiemannMachineVerification.CompilerCorrectness

namespace RiemannMachineVerification

theorem machine295_correct :
    HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n :=
  Reallocated.machine342_iff_machine295.symm.trans
    (Reallocated.machine381_iff_machine342.symm.trans
      (Reallocated.machine381_iff_primitive.trans
        (primitive_iff_macro.trans macro_correct)))

end RiemannMachineVerification
