import RiemannMachineVerification.Tape.Core.Word
namespace RiemannMachineVerification

/-- Scan to the first double zero, preserving every tape cell. -/
theorem scan_core {N} (M : Machine N) (one zero finish : Fin N)
    (h11 : M.transition one true = ⟨true, true, some one⟩)
    (h10 : M.transition one false = ⟨false, true, some zero⟩)
    (h01 : M.transition zero true = ⟨true, true, some one⟩)
    (h00 : M.transition zero false = ⟨false, false, some finish⟩)
    (w : TapeWord) (left background : BitStream) :
    ZExec M
      ⟨some one, left, streamPrefix w.bits (streamCons false (streamCons false background))⟩
      ⟨some finish, streamPrefix w.bits.reverse left,
        streamCons false (streamCons false background)⟩ := by
  induction w generalizing left with
  | empty =>
    apply ZExec.prepend (zipper_right one zero false false h10 left _)
    exact .single (zipper_left zero finish false false false h00 left _)
  | one w ih =>
    apply ZExec.prepend (zipper_right one one true true h11 left _)
    convert ih (streamCons true left) using 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.bits, List.reverse_cons, streamPrefix_append]
    rfl
  | zeroOne w ih =>
    apply ZExec.prepend (zipper_right one zero false false h10 left _)
    apply ZExec.prepend (zipper_right zero one true true h01 (streamCons false left) _)
    convert ih (streamCons true (streamCons false left)) using 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.bits, List.reverse_cons, streamPrefix_append]
    rfl

end RiemannMachineVerification
