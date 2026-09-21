import RiemannMachineVerification.Generated.Counter.Coverage
import RiemannMachineVerification.Tape.Encoding
namespace RiemannMachineVerification.Implementation

/-- [proof-guide] The certified counter routine updates the bit representation for either branch increment.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
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

/-- [proof-guide] After its counter update, the machine returns to the dispatcher with the required encoding.
Proof: Combines `counter_execution` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem counter_return (pc : ProgramCounter) (two : Bool) (values : List ℕ) :
    ZExec machine389
      ⟨some (if two then ⟨178, by decide⟩ else ⟨9, by decide⟩), streamTail (pcLeft pc),
        streamCons (pcLeft pc 0) (streamCons false (streamCons false (registerStream values)))⟩
      (encodedRegisterZipper (counterNext pc two) values) := by
  refine ⟨10, ?_⟩
  rw [← backend_counter_area]
  exact counter_execution pc two values

end RiemannMachineVerification.Implementation
