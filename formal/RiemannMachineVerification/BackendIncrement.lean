import RiemannMachineVerification.BackendSelector
import RiemannMachineVerification.BackendInsertion
import RiemannMachineVerification.CounterCorrectness

namespace RiemannMachineVerification

/-- An increment acts on one physical register and preserves every other
register, for all natural register values and arbitrary allocated capacity. -/
theorem backend_increment (before after : List ℕ) (v : ℕ)
    (bound : before.length ≤ 8) (pc : ProgramCounter) :
    ZExec machine381
      (zipperOf (backendConfig (some (incrementSelector (before.length + 2)))
        12 pc (before ++ v :: after)))
      (encodedRegisterZipper (counterNext pc false) (before ++ (v + 1) :: after)) := by
  rw [backend_register_area]
  apply ZExec.trans (select_fenced machine381 incrementSelector incrementSelector_transition
    before (v :: after) bound (pcLeft pc))
  apply ZExec.trans (b := ⟨some ⟨9, by decide⟩, streamTail (pcLeft pc),
    streamCons (pcLeft pc 0) (streamCons false (streamCons false
      (registerStream (before ++ (v + 1) :: after))))⟩)
  · rw [registerStream_append, registerStream_increment]
    simpa only [registerTailWord_reverse_bits, registerStream, incrementSelector] using
      machine381_insert_and_return (registerTailWord before.reverse)
        (registerWord (v :: after)) (pcLeft pc)
  · exact counter_return pc false _

end RiemannMachineVerification
