import RiemannMachineVerification.Tape.Core.Deletion
import RiemannMachineVerification.Tape.Core.Scan
import RiemannMachineVerification.Generated.Tables.CompiledMachine
namespace RiemannMachineVerification.Implementation

/-- The two local gap states move the erased positive mark through every
remaining register. This statement covers arbitrary values and word lengths. -/
theorem machine389_forward_gap (w : TapeWord) (left : BitStream) :
    ZExec machine389
      ⟨some ⟨5, by decide⟩, streamCons false left,
        streamPrefix w.bits zeros⟩
      ⟨some ⟨6, by decide⟩, streamCons false (streamPrefix w.bits.reverse left),
        streamCons true zeros⟩ := by
  simpa only [streamCons_zero] using
    forward_gap_core machine389 ⟨5, by decide⟩ ⟨4, by decide⟩ ⟨6, by decide⟩
      rfl rfl rfl rfl w left

end RiemannMachineVerification.Implementation
