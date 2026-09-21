import RiemannMachineVerification.Optimized278.BackendCorrectness
import RiemannMachineVerification.Optimized278.MacroRegisterCorrectness
import RiemannMachineVerification.Optimized278.RegisterRefinement
import RiemannMachineVerification.Optimized278.MacroCorrectness
import RiemannMachineVerification.Optimized278.Quotient278
import RiemannMachineVerification.CompilerCorrectness

namespace RiemannMachineVerification

/-- The literal 278-state machine halts exactly on a counterexample to the
approved arithmetic formulation. Both the predicate and blank-tape semantics
are the unchanged accepted definitions. -/
theorem machine278_correct :
    HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n :=
  Optimized278.machine339_iff_machine278.symm.trans
    (Optimized278.machine389_iff_machine339.symm.trans
      (Optimized278.machine389_iff_primitive.trans
        (Optimized278.primitive_iff_macro.trans
          (Optimized278.macro_iff_original.trans macro_correct))))

end RiemannMachineVerification
