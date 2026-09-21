import RiemannMachineVerification.Tape.Core.Word
namespace RiemannMachineVerification

/-- Carry a bit through arbitrary finite data to a double-zero delimiter.
The final transition is left explicit so its movement direction is unrestricted. -/
theorem carry_right_core {N} (M : Machine N) (one zero : Fin N)
    (h11 : M.transition one true = ⟨true, true, some one⟩)
    (h10 : M.transition one false = ⟨true, true, some zero⟩)
    (h01 : M.transition zero true = ⟨false, true, some one⟩)
    (w : TapeWord) (left background : BitStream) :
    ZExec M
      ⟨some one, left, streamPrefix w.bits (streamCons false (streamCons false background))⟩
      (zipperStep M ⟨some zero, streamCons true (streamPrefix w.carried.reverse left),
        streamCons false background⟩) := by
  induction w generalizing left with
  | empty =>
    apply ZExec.prepend (zipper_right one zero false true h10 left _)
    exact .single rfl
  | one w ih =>
    apply ZExec.prepend (zipper_right one one true true h11 left _)
    convert ih (streamCons true left) using 1
    congr 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.carried, List.reverse_cons, streamPrefix_append]
    rfl
  | zeroOne w ih =>
    apply ZExec.prepend (zipper_right one zero false true h10 left _)
    apply ZExec.prepend (zipper_right zero one true false h01 (streamCons true left) _)
    convert ih (streamCons false (streamCons true left)) using 1
    congr 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.carried, List.reverse_cons, streamPrefix_append]
    rfl

end RiemannMachineVerification
