import RiemannMachineVerification.TapeWord

namespace RiemannMachineVerification

/-- Scanning back through the unary data stops at the two-zero fence. The two
return states remember whether the previously read bit was zero. -/
theorem return_core {N} (M : Machine N) (one zero finish : Fin N)
    (h11 : M.transition one true = ⟨true, false, some one⟩)
    (h10 : M.transition one false = ⟨false, false, some zero⟩)
    (h01 : M.transition zero true = ⟨true, false, some one⟩)
    (h00 : M.transition zero false = ⟨false, false, some finish⟩)
    (w : TapeWord) (left right : BitStream) (mode : Bool) :
    ZExec M
      ⟨some (if mode then one else zero),
        streamPrefix w.bits (streamCons false (streamCons false left)),
        streamCons true right⟩
      ⟨some finish, streamTail left,
        streamCons (left 0) (streamCons false (streamCons false
          (streamPrefix w.bits.reverse (streamCons true right))))⟩ := by
  have head_one : ∀ (mode : Bool) (left right : BitStream),
      zipperStep M ⟨some (if mode then one else zero), left, streamCons true right⟩ =
        ⟨some one, streamTail left, streamCons (left 0) (streamCons true right)⟩ := by
    intro mode left right
    cases mode <;> simp only [Bool.false_eq_true, ↓reduceIte]
    · simpa only [streamCons_tail] using
        zipper_left zero one (left 0) true true h01 (streamTail left) right
    · simpa only [streamCons_tail] using
        zipper_left one one (left 0) true true h11 (streamTail left) right
  induction w generalizing right mode with
  | empty =>
    apply ZExec.prepend (head_one mode _ right)
    apply ZExec.prepend (zipper_left one zero false false false h10 left _)
    apply ZExec.single
    simpa only [TapeWord.bits, List.reverse_nil, streamPrefix_nil, streamCons_tail] using
      zipper_left zero finish (left 0) false false h00 (streamTail left) _
  | one w ih =>
    apply ZExec.prepend (head_one mode _ right)
    convert ih (streamCons true right) true using 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.bits, List.reverse_cons, streamPrefix_append, streamPrefix_cons, streamPrefix_nil]
  | zeroOne w ih =>
    apply ZExec.prepend (head_one mode _ right)
    apply ZExec.prepend (zipper_left one zero true false false h10 _ _)
    convert ih (streamCons false (streamCons true right)) false using 1
    congr 1
    apply zipper_ext <;> try rfl
    simp only [TapeWord.bits, List.reverse_cons, streamPrefix_append, streamPrefix_cons, streamPrefix_nil]

theorem return_after_write {N} (M : Machine N) (one zero finish : Fin N)
    (h11 : M.transition one true = ⟨true, false, some one⟩)
    (h10 : M.transition one false = ⟨false, false, some zero⟩)
    (h01 : M.transition zero true = ⟨true, false, some one⟩)
    (h00 : M.transition zero false = ⟨false, false, some finish⟩)
    (w : TapeWord) (left right : BitStream) :
    let behind := streamPrefix w.bits (streamCons false (streamCons false left))
    ZExec M
      ⟨some one, streamTail behind, streamCons (behind 0) (streamCons true right)⟩
      ⟨some finish, streamTail left,
        streamCons (left 0) (streamCons false (streamCons false
          (streamPrefix w.bits.reverse (streamCons true right))))⟩ := by
  cases w with
  | empty =>
    apply ZExec.prepend (zipper_left one zero false false false h10 _ _)
    apply ZExec.single
    simpa only [TapeWord.bits, List.reverse_nil, streamPrefix_nil, streamCons_tail] using
      zipper_left zero finish (left 0) false false h00 (streamTail left) _
  | one w =>
    simpa only [TapeWord.bits, List.reverse_cons, streamPrefix_append,
      streamPrefix_cons, streamPrefix_nil, streamTail_cons, streamCons, ↓reduceIte] using
      return_core M one zero finish h11 h10 h01 h00 w left (streamCons true right) true
  | zeroOne w =>
    apply ZExec.prepend (zipper_left one zero true false false h10 _ _)
    simpa only [TapeWord.bits, List.reverse_cons, streamPrefix_append,
      streamPrefix_cons, streamPrefix_nil, Bool.false_eq_true, ↓reduceIte, streamPrefix,
      List.foldr_append, List.foldr_cons, List.foldr_nil] using
      return_core M one zero finish h11 h10 h01 h00 w left
        (streamCons false (streamCons true right)) false

theorem return_after_separator {N} (M : Machine N) (one zero finish : Fin N)
    (h11 : M.transition one true = ⟨true, false, some one⟩)
    (h10 : M.transition one false = ⟨false, false, some zero⟩)
    (h01 : M.transition zero true = ⟨true, false, some one⟩)
    (h00 : M.transition zero false = ⟨false, false, some finish⟩)
    (values : List ℕ) (left right : BitStream) :
    let behind := streamTail (streamPrefix (registerTailWord values).bits
      (streamCons false (streamCons false left)))
    ZExec M
      ⟨some zero, streamTail behind, streamCons (behind 0) (streamCons false right)⟩
      ⟨some finish, streamTail left,
        streamCons (left 0) (streamCons false (streamCons false
          (streamPrefix (registerTailWord values).bits.reverse right)))⟩ := by
  cases values with
  | nil =>
    apply ZExec.single
    simpa only [registerTailWord, TapeWord.bits, streamPrefix_nil, List.reverse_nil,
      streamTail_cons, streamCons, streamCons_tail] using
      zipper_left zero finish (left 0) false false h00 (streamTail left) (streamCons false right)
  | cons v rest =>
    simpa only [registerTailWord, TapeWord.bits, streamPrefix_cons, streamTail_cons,
      streamCons, List.reverse_cons, streamPrefix_append, streamPrefix_nil,
      Bool.false_eq_true, ↓reduceIte] using
      return_core M one zero finish h11 h10 h01 h00 (TapeWord.ones v (registerTailWord rest))
        left (streamCons false right) false

end RiemannMachineVerification
