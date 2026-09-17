import RiemannMachineVerification.Reallocated.CounterChecks
import RiemannMachineVerification.Reallocated.BackendEncoding

namespace RiemannMachineVerification.Reallocated

theorem counter_execution (pc : ProgramCounter) (two : Bool) (values : List ℕ) :
    trajectory (zipperStep machine381)
      (zipperOf (backendConfig (some (if two then ⟨176, by decide⟩ else ⟨9, by decide⟩))
        11 pc values)) 11 = encodedRegisterZipper (counterNext pc two) values := by
  rw [← zipperOf_advance]
  change zipperOf (advance machine381
    (FiniteWindow.assemble 0 (registerBackground values) (counterStart pc two)) 11) = _
  rw [FiniteWindow.assemble_execute _ _ _ _ _ (counter_checks pc two).1,
    (counter_checks pc two).2]
  rfl

theorem counter_return (pc : ProgramCounter) (two : Bool) (values : List ℕ) :
    ZExec machine381
      ⟨some (if two then ⟨176, by decide⟩ else ⟨9, by decide⟩), streamTail (pcLeft pc),
        streamCons (pcLeft pc 0) (streamCons false (streamCons false (registerStream values)))⟩
      (encodedRegisterZipper (counterNext pc two) values) := by
  refine ⟨11, ?_⟩
  rw [← backend_counter_area]
  exact counter_execution pc two values

end RiemannMachineVerification.Reallocated
