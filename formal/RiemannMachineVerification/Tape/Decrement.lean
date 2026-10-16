import RiemannMachineVerification.Tape.Selectors
import RiemannMachineVerification.Tape.Deletion
import RiemannMachineVerification.Tape.Core.Return
import RiemannMachineVerification.Tape.Counter
namespace RiemannMachineVerification.Implementation

/-- [proof-guide] The tape decrement routine takes the zero branch and preserves the encoded zero value.
Proof: Combines `ZExec.trans`, `ZExec.prepend` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
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

/-- [proof-guide] The tape decrement routine removes one unary mark and takes the positive branch.
Proof: Combines `ZExec.trans`, `ZExec.prepend` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
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
  have hv : registerStream ((v + 1) :: after) =
      streamCons true (streamCons true
        (streamPrefix (TapeWord.ones v (registerTailWord after)).bits zeros)) := by
    simp only [registerStream, registerWord, TapeWord.ones, TapeWord.bits, streamPrefix_cons]
  rw [hv]
  change ZExec machine389 ⟨some ⟨2, by decide⟩, behind, _⟩ _
  apply ZExec.prepend (zipper_right ⟨2, by decide⟩ ⟨1, by decide⟩ true false rfl _ _)
  apply ZExec.prepend (zipper_left ⟨1, by decide⟩ ⟨5, by decide⟩ false true true rfl _ _)
  apply ZExec.prepend (zipper_right ⟨5, by decide⟩ ⟨4, by decide⟩ false true rfl _ _)
  apply ZExec.prepend (zipper_right ⟨4, by decide⟩ ⟨5, by decide⟩ true false rfl _ _)
  apply ZExec.trans (machine389_forward_gap (TapeWord.ones v (registerTailWord after))
    (streamCons true behind))
  apply ZExec.prepend (zipper_left ⟨6, by decide⟩ ⟨203, by decide⟩ false true false rfl _ _)
  have hreverse := TapeWord.reverse_prefix (TapeWord.ones v (registerTailWord after)) behind
  rw [hreverse]
  simp only [streamCons_zero]
  have skip := zipper_left (M := machine389) ⟨203, by decide⟩ ⟨202, by decide⟩
    true false false rfl
    (streamPrefix (TapeWord.ones v (registerTailWord after)).reverseCarried.bits behind) zeros
  simp only [streamCons_zero] at skip
  apply ZExec.prepend skip
  have hreturn := return_core machine389 ⟨203, by decide⟩ ⟨202, by decide⟩
    ⟨178, by decide⟩ rfl rfl rfl rfl
    ((TapeWord.ones v (registerTailWord after)).reverseCarried.append
      (registerTailWord before.reverse)) (pcLeft pc) zeros false
  simp only [TapeWord.append_bits, streamPrefix_append] at hreturn
  apply ZExec.trans hreturn
  have hv' : registerStream (v :: after) =
      streamCons true (streamPrefix (TapeWord.ones v (registerTailWord after)).bits zeros) := rfl
  simpa only [TapeWord.append_bits, List.reverse_append, TapeWord.reverseCarried_bits,
    List.reverse_reverse, streamPrefix_append, TapeWord.carried_prefix,
    registerTailWord_reverse_bits, registerStream_append, hv', ↓reduceIte] using
    counter_return pc true (before ++ v :: after)

end RiemannMachineVerification.Implementation
