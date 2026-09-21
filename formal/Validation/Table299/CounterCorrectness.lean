import Validation.Table299.CounterChecks
import Validation.Table299.BackendEncoding
namespace RiemannMachineVerification

/-- [proof-guide] The certified counter routine updates the bit representation for either branch increment.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
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

/-- [proof-guide] After its counter update, the machine returns to the dispatcher with the required encoding.
Proof: Combines `counter_execution` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_return (pc : ProgramCounter) (two : Bool) (values : List ℕ) :
    ZExec machine381
      ⟨some (if two then ⟨176, by decide⟩ else ⟨9, by decide⟩), streamTail (pcLeft pc),
        streamCons (pcLeft pc 0) (streamCons false (streamCons false (registerStream values)))⟩
      (encodedRegisterZipper (counterNext pc two) values) := by
  refine ⟨11, ?_⟩
  rw [← backend_counter_area]
  exact counter_execution pc two values

end RiemannMachineVerification
