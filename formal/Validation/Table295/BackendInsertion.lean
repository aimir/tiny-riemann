import RiemannMachineVerification.Tape.Core.InsertReturn
import Validation.Table295.CompiledTable
namespace RiemannMachineVerification.Reallocated

/-- The literal compiled insertion and return states, for unbounded tape data.
State 60 is `inc.shift_1`; state 9 increments the program counter. -/
theorem machine381_insert_and_return (before after : TapeWord) (pcLeft : BitStream) :
    ZExec machine381
      ⟨some ⟨60, by decide⟩,
        streamPrefix before.bits (streamCons false (streamCons false pcLeft)),
        streamPrefix after.bits zeros⟩
      ⟨some ⟨9, by decide⟩, streamTail pcLeft,
        streamCons (pcLeft 0) (streamCons false (streamCons false
          (streamPrefix before.bits.reverse (streamCons true (streamPrefix after.bits zeros)))))⟩ :=
  insert_and_return machine381 ⟨60, by decide⟩ ⟨59, by decide⟩
    ⟨201, by decide⟩ ⟨200, by decide⟩ ⟨9, by decide⟩
    rfl rfl rfl rfl rfl rfl rfl rfl before after pcLeft

end RiemannMachineVerification.Reallocated
