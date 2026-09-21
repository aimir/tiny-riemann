import RiemannMachineVerification.Optimized278.CounterChecks
import RiemannMachineVerification.Optimized278.BackendEncoding

namespace RiemannMachineVerification.Optimized278

theorem counter_execution (pc : ProgramCounter) (two : Bool) (values : List ℕ) :
    trajectory (zipperStep machine389)
      (zipperOf (backendConfig (some (if two then ⟨178, by decide⟩ else ⟨9, by decide⟩))
        10 pc values)) 10 = encodedRegisterZipper (counterNext pc two) values := by
  rw [← zipperOf_advance]
  change zipperOf (advance machine389
    (FiniteWindow.assemble 0 (registerBackground values) (counterStart pc two)) 10) = _
  rw [FiniteWindow.assemble_execute _ _ _ _ _ (counter_checks pc two).1,
    (counter_checks pc two).2]
  rfl

theorem counter_return (pc : ProgramCounter) (two : Bool) (values : List ℕ) :
    ZExec machine389
      ⟨some (if two then ⟨178, by decide⟩ else ⟨9, by decide⟩), streamTail (pcLeft pc),
        streamCons (pcLeft pc 0) (streamCons false (streamCons false (registerStream values)))⟩
      (encodedRegisterZipper (counterNext pc two) values) := by
  refine ⟨10, ?_⟩
  rw [← backend_counter_area]
  exact counter_execution pc two values

end RiemannMachineVerification.Optimized278
