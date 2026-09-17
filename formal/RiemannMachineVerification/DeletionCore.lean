import RiemannMachineVerification.CarryCore
import RiemannMachineVerification.Mirror

namespace RiemannMachineVerification

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

end RiemannMachineVerification
