import Validation.Table299.DispatcherChecks
import Validation.Table299.DispatcherPositive
import Validation.Table299.BackendEncoding
set_option maxRecDepth 16384
set_option maxHeartbeats 0

namespace RiemannMachineVerification

/-- The literal dispatch fragment works with every finite register storage,
however large, on the full infinite tape. -/
theorem dispatcher_execution (pc : ProgramCounter) (values : List ℕ) :
    trajectory (zipperStep machine381) (encodedRegisterZipper pc values) (dispatcherLength pc) =
      zipperOf (FiniteWindow.assemble 0 (registerBackground values) (dispatcherTarget pc)) := by
  rw [encodedRegisterZipper, ← zipperOf_advance]
  change zipperOf (advance machine381
    (FiniteWindow.assemble 0 (registerBackground values) (initialPrefix pc)) _) = _
  rw [FiniteWindow.assemble_execute _ _ _ _ _ (dispatcher_checks pc).1,
    (dispatcher_checks pc).2]

end RiemannMachineVerification
