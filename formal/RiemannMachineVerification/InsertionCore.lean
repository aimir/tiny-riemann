import RiemannMachineVerification.TapeWord

namespace RiemannMachineVerification

/-- Correctness of the bit-carry insertion loop, parameterized by its literal
transition equations. The word may encode arbitrarily large registers. -/
theorem insertion_core {N} (M : Machine N) (one zero finish : Fin N)
    (h11 : M.transition one true = ⟨true, true, some one⟩)
    (h10 : M.transition one false = ⟨true, true, some zero⟩)
    (h01 : M.transition zero true = ⟨false, true, some one⟩)
    (h00 : M.transition zero false = ⟨false, false, some finish⟩)
    (w : TapeWord) (left : BitStream) :
    ZExec M ⟨some one, left, streamPrefix w.bits zeros⟩
      ⟨some finish, streamPrefix w.carried.reverse left, streamCons true zeros⟩ := by
  induction w generalizing left with
  | empty =>
    apply ZExec.prepend (b := ⟨some zero, streamCons true left, zeros⟩)
    · simpa only [TapeWord.bits, streamPrefix_nil, streamCons_zero] using
        zipper_right one zero false true h10 left zeros
    · apply ZExec.single
      simpa only [TapeWord.carried, List.reverse_nil, streamPrefix_nil, streamCons_zero] using
        zipper_left zero finish true false false h00 left zeros
  | one w ih =>
    apply ZExec.prepend (zipper_right one one true true h11 left _)
    convert ih (streamCons true left) using 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.carried, List.reverse_cons, streamPrefix_append]
    rfl
  | zeroOne w ih =>
    apply ZExec.prepend (zipper_right one zero false true h10 left _)
    apply ZExec.prepend (zipper_right zero one true false h01 (streamCons true left) _)
    convert ih (streamCons false (streamCons true left)) using 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.carried, List.reverse_cons, streamPrefix_append]
    rfl

end RiemannMachineVerification
