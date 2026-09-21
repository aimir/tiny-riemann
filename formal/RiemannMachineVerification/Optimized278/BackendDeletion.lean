import RiemannMachineVerification.DeletionCore
import RiemannMachineVerification.ScanCore
import RiemannMachineVerification.Optimized278.Machine389

namespace RiemannMachineVerification.Optimized278

theorem machine389_scan_end (w : TapeWord) (left background : BitStream) :
    ZExec machine389
      ⟨some ⟨5, by decide⟩, left, streamPrefix w.bits (streamCons false (streamCons false background))⟩
      ⟨some ⟨6, by decide⟩, streamPrefix w.bits.reverse left,
        streamCons false (streamCons false background)⟩ :=
  scan_core machine389 ⟨5, by decide⟩ ⟨4, by decide⟩ ⟨6, by decide⟩
    rfl rfl rfl rfl w left background

theorem machine389_delete_at_end (w : TapeWord) (background : BitStream) :
    ZExec machine389
      ⟨some ⟨7, by decide⟩, streamPrefix w.bits (streamCons false (streamCons false background)),
        streamCons true zeros⟩
      ⟨some ⟨202, by decide⟩, streamTail background,
        streamCons (background 0) (streamCons false
          (streamCons true (streamPrefix w.carried.reverse zeros)))⟩ :=
  deletion_core machine389 ⟨8, by decide⟩ ⟨7, by decide⟩ ⟨202, by decide⟩
    rfl rfl rfl rfl w background

end RiemannMachineVerification.Optimized278
