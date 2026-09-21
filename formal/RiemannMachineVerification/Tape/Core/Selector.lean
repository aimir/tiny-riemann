import RiemannMachineVerification.Tape.Core.RegisterEncoding
namespace RiemannMachineVerification

/-- [proof-guide] The selector traverses the preceding unary registers to reach the requested register.
Proof: Induction on `values`, using the displayed step equations and auxiliary lemmas.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem select_registers {N} (M : Machine N) (states : ℕ → Fin N)
    (transitions : ∀ k, 0 < k → k ≤ 10 → ∀ b,
      M.transition (states k) b = ⟨b, true, some (if b then states k else states (k - 1))⟩)
    (values : List ℕ) (bound : values.length ≤ 10) (left right : BitStream) :
    ZExec M ⟨some (states values.length), left, streamPrefix (unaryRegisters values) right⟩
      ⟨some (states 0), streamPrefix (unaryRegisters values).reverse left, right⟩ := by
  induction values generalizing left with
  | nil => exact .refl _ _
  | cons v rest ih =>
    have hpos : 0 < (v :: rest).length := by simp
    have hone : M.transition (states (v :: rest).length) true =
        ⟨true, true, some (states (v :: rest).length)⟩ := transitions _ hpos bound true
    have hzero : M.transition (states (v :: rest).length) false =
        ⟨false, true, some (states rest.length)⟩ := by
      simpa only [List.length_cons, Bool.false_eq_true, ↓reduceIte, Nat.add_sub_cancel] using
        transitions _ hpos bound false
    rw [unaryRegisters, streamPrefix_append, streamPrefix_cons]
    apply ZExec.trans (scan_ones_right M _ hone (v + 1) left _)
    apply ZExec.prepend (zipper_right _ _ false false hzero _ _)
    convert ih (by simpa using Nat.le_of_succ_le bound) (streamCons false
      (streamPrefix (List.replicate (v + 1) true) left)) using 1
    congr 1
    simp only [List.reverse_append, List.reverse_cons, List.reverse_replicate,
      streamPrefix_append, streamPrefix_cons, streamPrefix_nil]

/-- [proof-guide] The selector reaches the requested register in the fenced encoding.
Proof: Combines `transitions`, `ZExec.prepend` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem select_fenced {N} (M : Machine N) (states : ℕ → Fin N)
    (transitions : ∀ k, 0 < k → k ≤ 10 → ∀ b,
      M.transition (states k) b = ⟨b, true, some (if b then states k else states (k - 1))⟩)
    (before after : List ℕ) (bound : before.length ≤ 8) (left : BitStream) :
    ZExec M
      ⟨some (states (before.length + 2)), left,
        streamCons false (streamCons false (registerStream (before ++ after)))⟩
      ⟨some (states 0),
        streamPrefix (registerTailWord before.reverse).bits (streamCons false (streamCons false left)),
        registerStream after⟩ := by
  have h1 : M.transition (states (before.length + 2)) false =
      ⟨false, true, some (states (before.length + 1))⟩ := by
    simpa using transitions (before.length + 2) (by omega) (by omega) false
  have h2 : M.transition (states (before.length + 1)) false =
      ⟨false, true, some (states before.length)⟩ := by
    simpa using transitions (before.length + 1) (by omega) (by omega) false
  apply ZExec.prepend (zipper_right _ _ false false h1 _ _)
  apply ZExec.prepend (zipper_right _ _ false false h2 _ _)
  rw [registerStream_append]
  simpa only [unaryRegisters_reverse] using
    select_registers M states transitions before (by omega)
      (streamCons false (streamCons false left)) (registerStream after)

end RiemannMachineVerification
