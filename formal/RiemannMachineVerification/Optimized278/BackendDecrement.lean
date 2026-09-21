import RiemannMachineVerification.Optimized278.BackendSelector
import RiemannMachineVerification.Optimized278.BackendDeletion
import RiemannMachineVerification.ReturnCore
import RiemannMachineVerification.Optimized278.CounterCorrectness

namespace RiemannMachineVerification.Optimized278

theorem decrement_shift (w : TapeWord) (background : BitStream) :
    ZExec machine389
      ⟨some ⟨2, by decide⟩, streamCons false background,
        streamCons true (streamCons true (streamPrefix w.bits zeros))⟩
      ⟨some ⟨202, by decide⟩, streamTail background,
        streamCons (background 0) (streamCons false
          (streamCons true (streamPrefix w.bits zeros)))⟩ := by
  apply ZExec.prepend (zipper_right ⟨2, by decide⟩ ⟨1, by decide⟩ true false rfl _ _)
  apply ZExec.prepend (zipper_right ⟨1, by decide⟩ ⟨5, by decide⟩ true true rfl _ _)
  apply ZExec.trans (b := ⟨some ⟨6, by decide⟩,
    streamCons true (streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background))),
    zeros⟩)
  · simpa only [streamCons_zero, TapeWord.reverse_prefix] using
      machine389_scan_end w (streamCons true (streamCons false (streamCons false background))) zeros
  · have hstep : zipperStep machine389
        ⟨some ⟨6, by decide⟩,
          streamCons true (streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background))),
          zeros⟩ =
        ⟨some ⟨7, by decide⟩,
          streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background)),
          streamCons true zeros⟩ := by
      simpa only [streamCons_zero] using
        zipper_left ⟨6, by decide⟩ ⟨7, by decide⟩ true false false rfl
          (streamPrefix w.reverseCarried.bits (streamCons false (streamCons false background))) zeros
    apply ZExec.prepend hstep
    simpa only [TapeWord.reverseCarried_carried] using
      machine389_delete_at_end w.reverseCarried background

theorem backend_decrement_zero (before after : List ℕ)
    (bound : before.length ≤ 8) (pc : ProgramCounter) :
    ZExec machine389
      (zipperOf (backendConfig (some (decrementSelector (before.length + 2)))
        11 pc (before ++ 0 :: after)))
      (encodedRegisterZipper (counterNext pc false) (before ++ 0 :: after)) := by
  rw [backend_register_area]
  apply ZExec.trans (select_fenced machine389 decrementSelector decrementSelector_transition
    before (0 :: after) bound (pcLeft pc))
  rw [registerStream_cons]
  change ZExec machine389
    ⟨some ⟨2, by decide⟩,
      streamPrefix (registerTailWord before.reverse).bits (streamCons false (streamCons false (pcLeft pc))),
      streamCons true (streamCons false (registerStream after))⟩ _
  apply ZExec.prepend (zipper_right ⟨2, by decide⟩ ⟨1, by decide⟩ true false rfl _ _)
  apply ZExec.prepend (zipper_left ⟨1, by decide⟩ ⟨3, by decide⟩ false false false rfl _ _)
  let behind := streamPrefix (registerTailWord before.reverse).bits
    (streamCons false (streamCons false (pcLeft pc)))
  have restore : zipperStep machine389
      ⟨some ⟨3, by decide⟩, behind, streamCons false (streamCons false (registerStream after))⟩ =
      ⟨some ⟨201, by decide⟩, streamTail behind,
        streamCons (behind 0) (streamCons true (streamCons false (registerStream after)))⟩ := by
    simpa only [streamCons_tail] using
      zipper_left ⟨3, by decide⟩ ⟨201, by decide⟩ (behind 0) false true rfl
        (streamTail behind) (streamCons false (registerStream after))
  apply ZExec.prepend restore
  apply ZExec.trans (return_after_write machine389 ⟨201, by decide⟩ ⟨200, by decide⟩
    ⟨9, by decide⟩ rfl rfl rfl rfl (registerTailWord before.reverse) (pcLeft pc)
    (streamCons false (registerStream after)))
  simpa only [registerTailWord_reverse_bits, registerStream_append, registerStream_cons,
    List.replicate_succ, List.replicate_zero, streamPrefix_cons, streamPrefix_nil,
    Bool.false_eq_true, ↓reduceIte] using
    counter_return pc false (before ++ 0 :: after)

theorem backend_decrement_positive (before after : List ℕ) (v : ℕ)
    (bound : before.length ≤ 8) (pc : ProgramCounter) :
    ZExec machine389
      (zipperOf (backendConfig (some (decrementSelector (before.length + 2)))
        11 pc (before ++ (v + 1) :: after)))
      (encodedRegisterZipper (counterNext pc true) (before ++ v :: after)) := by
  rw [backend_register_area]
  apply ZExec.trans (select_fenced machine389 decrementSelector decrementSelector_transition
    before ((v + 1) :: after) bound (pcLeft pc))
  let behind := streamPrefix (registerTailWord before.reverse).bits
    (streamCons false (streamCons false (pcLeft pc)))
  have hb : behind = streamCons false (streamTail behind) := by
    cases h : before.reverse <;> simp [behind, h, registerTailWord, TapeWord.bits,
      streamPrefix_cons, streamPrefix_nil, streamTail_cons]
  have hv : registerStream ((v + 1) :: after) =
      streamCons true (streamCons true
        (streamPrefix (TapeWord.ones v (registerTailWord after)).bits zeros)) := by
    simp only [registerStream, registerWord, TapeWord.ones, TapeWord.bits, streamPrefix_cons]
  rw [hv]
  change ZExec machine389 ⟨some ⟨2, by decide⟩, behind, _⟩ _
  rw [hb]
  apply ZExec.trans (decrement_shift (TapeWord.ones v (registerTailWord after)) (streamTail behind))
  apply ZExec.trans (return_after_separator machine389 ⟨203, by decide⟩ ⟨202, by decide⟩
    ⟨178, by decide⟩ rfl rfl rfl rfl before.reverse (pcLeft pc)
    (streamCons true (streamPrefix (TapeWord.ones v (registerTailWord after)).bits zeros)))
  have hv' : registerStream (v :: after) =
      streamCons true (streamPrefix (TapeWord.ones v (registerTailWord after)).bits zeros) := rfl
  simpa only [registerTailWord_reverse_bits, registerStream_append, hv', ↓reduceIte] using
    counter_return pc true (before ++ v :: after)

end RiemannMachineVerification.Optimized278
