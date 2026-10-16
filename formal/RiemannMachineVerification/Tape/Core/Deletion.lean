import RiemannMachineVerification.Tape.Core.Carry
import RiemannMachineVerification.Tape.Core.Mirror
namespace RiemannMachineVerification

/-- [proof-guide] The left-moving carry routine traverses encoded data to its delimiter.
Proof: Combines `hm` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem carry_left_core {N} (M : Machine N) (one zero : Fin N)
    (h11 : M.transition one true = ⟨true, false, some one⟩)
    (h10 : M.transition one false = ⟨true, false, some zero⟩)
    (h01 : M.transition zero true = ⟨false, false, some one⟩)
    (w : TapeWord) (right background : BitStream) :
    ZExec M
      (mirrorZipper ⟨some one, right, streamPrefix w.bits (streamCons false (streamCons false background))⟩)
      (zipperStep M (mirrorZipper ⟨some zero,
        streamCons true (streamPrefix w.carried.reverse right), streamCons false background⟩)) := by
  have h := carry_right_core (mirrorMachine M) one zero
    (by simp [mirrorMachine, h11]) (by simp [mirrorMachine, h10])
    (by simp [mirrorMachine, h01]) w right background
  have hm := h.mirror
  simpa only [mirror_step, mirrorMachine_twice] using hm

/-- The deletion shift starts at the final one after the rightward scan. The
double zero on its left is the temporary marker beside the preceding delimiter. -/
theorem deletion_core {N} (M : Machine N) (one zero finish : Fin N)
    (h11 : M.transition one true = ⟨true, false, some one⟩)
    (h10 : M.transition one false = ⟨true, false, some zero⟩)
    (h01 : M.transition zero true = ⟨false, false, some one⟩)
    (h00 : M.transition zero false = ⟨false, false, some finish⟩)
    (w : TapeWord) (background : BitStream) :
    ZExec M
      ⟨some zero, streamPrefix w.bits (streamCons false (streamCons false background)),
        streamCons true zeros⟩
      ⟨some finish, streamTail background,
        streamCons (background 0) (streamCons false
          (streamCons true (streamPrefix w.carried.reverse zeros)))⟩ := by
  let input := streamPrefix w.bits (streamCons false (streamCons false background))
  apply ZExec.prepend (b := mirrorZipper ⟨some one, zeros, input⟩)
  · simpa only [input, mirrorZipper, streamCons_zero, streamCons_tail] using
      zipper_left zero one (input 0) true false h01 (streamTail input) zeros
  · have h := carry_left_core M one zero h11 h10 h01 w zeros background
    simpa only [zipperStep, mirrorZipper, streamCons, streamTail_cons, h00,
      Bool.false_eq_true, ↓reduceIte] using h


/-- Move a single blank gap to the end of an arbitrary encoded word. The two
working states exchange the gap with each mark or separator; the cleanup state
is reached on a disposable mark past the final gap. -/
theorem forward_gap_core {N} (M : Machine N) (gap swap cleanup : Fin N)
    (h11 : M.transition gap true = ⟨true, false, some gap⟩)
    (h10 : M.transition gap false = ⟨true, true, some swap⟩)
    (h01 : M.transition swap true = ⟨false, true, some gap⟩)
    (h00 : M.transition swap false = ⟨false, false, some cleanup⟩)
    (w : TapeWord) (left : BitStream) :
    ZExec M
      ⟨some gap, streamCons false left,
        streamPrefix w.bits (streamCons false zeros)⟩
      ⟨some cleanup, streamCons false (streamPrefix w.bits.reverse left),
        streamCons true zeros⟩ := by
  induction w generalizing left with
  | empty =>
    apply ZExec.prepend (zipper_right gap swap false true h10 _ _)
    apply ZExec.single
    simpa only [TapeWord.bits, List.reverse_nil, streamPrefix_nil, streamCons_zero] using
      zipper_left swap cleanup true false false h00 (streamCons false left) zeros
  | one w ih =>
    apply ZExec.prepend (zipper_left gap gap false true true h11 _ _)
    apply ZExec.prepend (zipper_right gap swap false true h10 _ _)
    apply ZExec.prepend (zipper_right swap gap true false h01 _ _)
    convert ih (streamCons true left) using 1
    congr 1
    congr 1
    simp only [TapeWord.bits, List.reverse_cons, streamPrefix_append,
      streamPrefix_cons, streamPrefix_nil]
  | zeroOne w ih =>
    apply ZExec.prepend (zipper_right gap swap false true h10 _ _)
    apply ZExec.prepend (zipper_right swap gap true false h01 _ _)
    convert ih (streamCons true (streamCons false left)) using 1
    congr 1
    congr 1
    simp only [TapeWord.bits, List.reverse_cons, streamPrefix_append,
      streamPrefix_cons, streamPrefix_nil]

end RiemannMachineVerification
