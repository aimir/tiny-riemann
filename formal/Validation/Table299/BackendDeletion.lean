import RiemannMachineVerification.Tape.Core.Deletion
import RiemannMachineVerification.Tape.Core.Scan
import Validation.Table299.CompiledTable
namespace RiemannMachineVerification

/-- [proof-guide] The scan reaches the end delimiter of the encoded register area.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem machine381_scan_end (w : TapeWord) (left background : BitStream) :
    ZExec machine381
      ⟨some ⟨5, by decide⟩, left, streamPrefix w.bits (streamCons false (streamCons false background))⟩
      ⟨some ⟨6, by decide⟩, streamPrefix w.bits.reverse left,
        streamCons false (streamCons false background)⟩ :=
  scan_core machine381 ⟨5, by decide⟩ ⟨4, by decide⟩ ⟨6, by decide⟩
    rfl rfl rfl rfl w left background

/-- [proof-guide] The deletion routine removes the end mark and returns to the required position.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem machine381_delete_at_end (w : TapeWord) (background : BitStream) :
    ZExec machine381
      ⟨some ⟨7, by decide⟩, streamPrefix w.bits (streamCons false (streamCons false background)),
        streamCons true zeros⟩
      ⟨some ⟨202, by decide⟩, streamTail background,
        streamCons (background 0) (streamCons false
          (streamCons true (streamPrefix w.carried.reverse zeros)))⟩ :=
  deletion_core machine381 ⟨8, by decide⟩ ⟨7, by decide⟩ ⟨202, by decide⟩
    rfl rfl rfl rfl w background

end RiemannMachineVerification
