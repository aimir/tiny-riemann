import RiemannMachineVerification.Optimized278.DispatcherChecks
import RiemannMachineVerification.Optimized278.DispatcherPositive
import RiemannMachineVerification.Optimized278.BackendEncoding

set_option maxRecDepth 16384
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Optimized278

/-- The literal dispatch fragment works with every finite register storage,
however large, on the full infinite tape. -/
theorem dispatcher_execution (pc : ProgramCounter) (values : List ℕ) :
    trajectory (zipperStep machine389) (encodedRegisterZipper pc values) (dispatcherLength pc) =
      zipperOf (FiniteWindow.assemble 0 (registerBackground values) (dispatcherTarget pc)) := by
  rw [encodedRegisterZipper, ← zipperOf_advance]
  change zipperOf (advance machine389
    (FiniteWindow.assemble 0 (registerBackground values) (initialPrefix pc)) _) = _
  rw [FiniteWindow.assemble_execute _ _ _ _ _ (dispatcher_checks pc).1,
    (dispatcher_checks pc).2]

end RiemannMachineVerification.Optimized278
