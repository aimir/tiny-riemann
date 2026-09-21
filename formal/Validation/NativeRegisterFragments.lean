import RiemannMachineVerification.Tape.Core.Scan
import RiemannMachineVerification.Tape.Core.Deletion
namespace RiemannMachineVerification.NativeFragments

/-- Local transition obligations for clearing an entire unary register. -/
structure ClearCode {N : ℕ} (M : Machine N) where
  start : Fin N
  check : Fin N
  scanOne : Fin N
  scanZero : Fin N
  scanEnd : Fin N
  shiftOne : Fin N
  shiftZero : Fin N
  backOne : Fin N
  backTwo : Fin N
  restore : Fin N
  done : Fin N
  hstart : M.transition start true = ⟨false, true, some check⟩
  hcheck0 : M.transition check false = ⟨false, false, some restore⟩
  hcheck1 : M.transition check true = ⟨true, true, some scanOne⟩
  hscan11 : M.transition scanOne true = ⟨true, true, some scanOne⟩
  hscan10 : M.transition scanOne false = ⟨false, true, some scanZero⟩
  hscan01 : M.transition scanZero true = ⟨true, true, some scanOne⟩
  hscan00 : M.transition scanZero false = ⟨false, false, some scanEnd⟩
  hend : M.transition scanEnd false = ⟨false, false, some shiftZero⟩
  hshift11 : M.transition shiftOne true = ⟨true, false, some shiftOne⟩
  hshift10 : M.transition shiftOne false = ⟨true, false, some shiftZero⟩
  hshift01 : M.transition shiftZero true = ⟨false, false, some shiftOne⟩
  hshift00 : M.transition shiftZero false = ⟨false, false, some backOne⟩
  hback1 : ∀ b, M.transition backOne b = ⟨b, true, some backTwo⟩
  hback2 : M.transition backTwo false = ⟨false, true, some start⟩
  hrestore : M.transition restore false = ⟨true, false, some done⟩

/-- One deletion through an arbitrarily long, well-formed register suffix. -/
theorem clear_delete {N} (M : Machine N) (c : ClearCode M)
    (w : TapeWord) (background : BitStream) :
    ZExec M
      ⟨some c.start, streamCons false background,
        streamCons true (streamCons true (streamPrefix w.bits zeros))⟩
      ⟨some c.backOne, streamTail background,
        streamCons (background 0) (streamCons false
          (streamCons true (streamPrefix w.bits zeros)))⟩ := by
  apply ZExec.prepend (zipper_right c.start c.check true false c.hstart _ _)
  apply ZExec.prepend (zipper_right c.check c.scanOne true true c.hcheck1 _ _)
  apply ZExec.trans (b := ⟨some c.scanEnd,
    streamCons true (streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background))),
    zeros⟩)
  · simpa only [streamCons_zero, TapeWord.reverse_prefix] using
      scan_core M c.scanOne c.scanZero c.scanEnd
        c.hscan11 c.hscan10 c.hscan01 c.hscan00 w
        (streamCons true (streamCons false (streamCons false background))) zeros
  · have hstep : zipperStep M
        ⟨some c.scanEnd,
          streamCons true (streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background))),
          zeros⟩ =
        ⟨some c.shiftZero,
          streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background)),
          streamCons true zeros⟩ := by
      simpa only [streamCons_zero] using
        zipper_left c.scanEnd c.shiftZero true false false c.hend
          (streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background))) zeros
    apply ZExec.prepend hstep
    simpa only [TapeWord.reverseCarried_carried] using
      deletion_core M c.shiftOne c.shiftZero c.backOne
        c.hshift11 c.hshift10 c.hshift01 c.hshift00 w.reverseCarried background

/-- Clear any natural value, preserving the complete suffix and left
background. Execution length and intermediate tape contents may change. -/
theorem clear_core {N} (M : Machine N) (c : ClearCode M)
    (value : ℕ) (after : List ℕ) (background : BitStream) :
    ZExec M
      ⟨some c.start, streamCons false background,
        streamCons true (streamPrefix (TapeWord.ones value (registerTailWord after)).bits zeros)⟩
      ⟨some c.done, background,
        streamCons false (streamCons true (streamPrefix (registerTailWord after).bits zeros))⟩ := by
  induction value with
  | zero =>
    have hz : (streamPrefix (registerTailWord after).bits zeros) 0 = false := by
      cases after <;> rfl
    have ht : streamPrefix (registerTailWord after).bits zeros =
        streamCons false (streamTail (streamPrefix (registerTailWord after).bits zeros)) := by
      rw [← hz]; exact (streamCons_tail _).symm
    change ZExec M ⟨some c.start, streamCons false background,
      streamCons true (streamPrefix (registerTailWord after).bits zeros)⟩ _
    rw [ht]
    apply ZExec.prepend (zipper_right c.start c.check true false c.hstart _ _)
    apply ZExec.prepend (zipper_left c.check c.restore false false false c.hcheck0 _ _)
    exact .single (zipper_left c.restore c.done false false true c.hrestore _ _)
  | succ value ih =>
    apply ZExec.trans (clear_delete M c (TapeWord.ones value (registerTailWord after)) background)
    apply ZExec.prepend (zipper_right c.backOne c.backTwo (background 0) (background 0)
      (c.hback1 _) _ _)
    apply ZExec.prepend (zipper_right c.backTwo c.start false false c.hback2 _ _)
    simpa only [streamCons_tail] using ih

/-- Read the cell after a register's sentinel without changing any tape cell. -/
theorem test_core {N} (M : Machine N) (start check zero positive : Fin N)
    (hstart : M.transition start true = ⟨true, true, some check⟩)
    (hzero : M.transition check false = ⟨false, false, some zero⟩)
    (hpositive : M.transition check true = ⟨true, false, some positive⟩)
    (bit : Bool) (left tail : BitStream) :
    ZExec M
      ⟨some start, left, streamCons true (streamCons bit tail)⟩
      ⟨some (if bit then positive else zero), left, streamCons true (streamCons bit tail)⟩ := by
  apply ZExec.prepend (zipper_right start check true true hstart _ _)
  cases bit
  · exact .single (zipper_left check zero true false false hzero _ _)
  · exact .single (zipper_left check positive true true true hpositive _ _)

#print axioms clear_core
#print axioms test_core
end RiemannMachineVerification.NativeFragments
