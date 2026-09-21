import RiemannMachineVerification.Tape.Core.Deletion
import RiemannMachineVerification.Tape.Core.Scan
import RiemannMachineVerification.Generated.Tables.CompiledMachine
namespace RiemannMachineVerification.Implementation

/-- [proof-guide] The scan reaches the end delimiter of the encoded register area.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem machine389_scan_end (w : TapeWord) (left background : BitStream) :
    ZExec machine389
      ⟨some ⟨5, by decide⟩, left, streamPrefix w.bits (streamCons false (streamCons false background))⟩
      ⟨some ⟨6, by decide⟩, streamPrefix w.bits.reverse left,
        streamCons false (streamCons false background)⟩ :=
  scan_core machine389 ⟨5, by decide⟩ ⟨4, by decide⟩ ⟨6, by decide⟩
    rfl rfl rfl rfl w left background

/-- [proof-guide] The deletion routine removes the end mark and returns to the required position.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem machine389_delete_at_end (w : TapeWord) (background : BitStream) :
    ZExec machine389
      ⟨some ⟨7, by decide⟩, streamPrefix w.bits (streamCons false (streamCons false background)),
        streamCons true zeros⟩
      ⟨some ⟨202, by decide⟩, streamTail background,
        streamCons (background 0) (streamCons false
          (streamCons true (streamPrefix w.carried.reverse zeros)))⟩ :=
  deletion_core machine389 ⟨8, by decide⟩ ⟨7, by decide⟩ ⟨202, by decide⟩
    rfl rfl rfl rfl w background

end RiemannMachineVerification.Implementation
