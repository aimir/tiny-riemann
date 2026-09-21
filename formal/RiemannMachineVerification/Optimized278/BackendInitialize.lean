import RiemannMachineVerification.Optimized278.BackendEncoding
import RiemannMachineVerification.RegisterEncoding
import RiemannMachineVerification.ReturnCore
import RiemannMachineVerification.Optimized278.CounterCorrectness

namespace RiemannMachineVerification.Optimized278

theorem initialize_scan (values : List ℕ) (left : BitStream) :
    ZExec machine389
      ⟨some ⟨64, by decide⟩, left, registerStream values⟩
      ⟨some ⟨64, by decide⟩, streamPrefix (unaryRegisters values).reverse left, zeros⟩ := by
  induction values generalizing left with
  | nil => exact .refl _ _
  | cons v rest ih =>
    rw [registerStream_cons, List.replicate_succ, streamPrefix_cons]
    apply ZExec.prepend (zipper_right ⟨64, by decide⟩ ⟨65, by decide⟩ true true rfl _ _)
    apply ZExec.trans (scan_ones_right machine389 ⟨65, by decide⟩ rfl v _ _)
    apply ZExec.prepend (zipper_right ⟨65, by decide⟩ ⟨64, by decide⟩ false false rfl _ _)
    convert ih (streamCons false (streamPrefix (List.replicate v true) (streamCons true left))) using 1
    congr 1
    simp only [unaryRegisters, List.reverse_append, List.reverse_cons, List.reverse_replicate,
      streamPrefix_append, streamPrefix_cons, streamPrefix_nil]
    rw [List.replicate_succ', streamPrefix_append]
    rfl

/-- Initialization appends a new zero register; existing values are retained. -/
theorem backend_initialize (values : List ℕ) (pc : ProgramCounter) :
    ZExec machine389
      (zipperOf (backendConfig (some backendInitialize) 11 pc values))
      (encodedRegisterZipper (counterNext pc false) (values ++ [0])) := by
  rw [backend_register_area]
  apply ZExec.prepend (zipper_right ⟨62, by decide⟩ ⟨63, by decide⟩ false false rfl _ _)
  apply ZExec.prepend (zipper_right ⟨63, by decide⟩ ⟨64, by decide⟩ false false rfl _ _)
  apply ZExec.trans (initialize_scan values _)
  rw [unaryRegisters_reverse]
  let behind := streamPrefix (registerTailWord values.reverse).bits
    (streamCons false (streamCons false (pcLeft pc)))
  have hwrite : zipperStep machine389 ⟨some ⟨64, by decide⟩, behind, zeros⟩ =
      ⟨some ⟨201, by decide⟩, streamTail behind, streamCons (behind 0) (streamCons true zeros)⟩ := by
    simpa only [streamCons_tail, streamCons_zero] using
      zipper_left ⟨64, by decide⟩ ⟨201, by decide⟩ (behind 0) false true rfl (streamTail behind) zeros
  apply ZExec.prepend hwrite
  apply ZExec.trans (return_after_write machine389 ⟨201, by decide⟩ ⟨200, by decide⟩
    ⟨9, by decide⟩ rfl rfl rfl rfl (registerTailWord values.reverse) (pcLeft pc) zeros)
  have hcounter := counter_return pc false (values ++ [0])
  rw [registerStream_append, show registerStream [0] = streamCons true zeros from rfl] at hcounter
  simpa only [registerTailWord_reverse_bits, Bool.false_eq_true, ↓reduceIte] using hcounter

end RiemannMachineVerification.Optimized278
