import RiemannMachineVerification.InsertionCore
import RiemannMachineVerification.ReturnCore

namespace RiemannMachineVerification

theorem insert_and_return {N} (M : Machine N)
    (incOne incZero retOne retZero finish : Fin N)
    (hi11 : M.transition incOne true = ⟨true, true, some incOne⟩)
    (hi10 : M.transition incOne false = ⟨true, true, some incZero⟩)
    (hi01 : M.transition incZero true = ⟨false, true, some incOne⟩)
    (hi00 : M.transition incZero false = ⟨false, false, some retZero⟩)
    (hr11 : M.transition retOne true = ⟨true, false, some retOne⟩)
    (hr10 : M.transition retOne false = ⟨false, false, some retZero⟩)
    (hr01 : M.transition retZero true = ⟨true, false, some retOne⟩)
    (hr00 : M.transition retZero false = ⟨false, false, some finish⟩)
    (before after : TapeWord) (pcLeft : BitStream) :
    ZExec M
      ⟨some incOne,
        streamPrefix before.bits (streamCons false (streamCons false pcLeft)),
        streamPrefix after.bits zeros⟩
      ⟨some finish, streamTail pcLeft,
        streamCons (pcLeft 0) (streamCons false (streamCons false
          (streamPrefix before.bits.reverse (streamCons true (streamPrefix after.bits zeros)))))⟩ := by
  apply ZExec.trans (insertion_core M incOne incZero retZero hi11 hi10 hi01 hi00 after _)
  have hr := return_core M retOne retZero finish hr11 hr10 hr01 hr00
    (after.reverseCarried.append before) pcLeft zeros false
  simpa only [Bool.false_eq_true, ↓reduceIte, TapeWord.append_bits,
    TapeWord.reverseCarried_bits, List.reverse_append, List.reverse_reverse,
    streamPrefix_append, TapeWord.carried_prefix] using hr

end RiemannMachineVerification
