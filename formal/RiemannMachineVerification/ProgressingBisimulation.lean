import RiemannMachineVerification.Dynamics

namespace RiemannMachineVerification

/-- Both clocks advance. Thus neither simulation can hide an infinite execution
inside a finite prefix, even when the two programs take different numbers of steps. -/
theorem eventually_iff_of_progressing_bisimulation {α β : Type}
    (stepA : α → α) (stepB : β → β) (haltA : α → Prop) (haltB : β → Prop)
    (a₀ : α) (b₀ : β) (R : α → β → Prop)
    (initial : R a₀ b₀)
    (absorbingA : ∀ a, haltA a → haltA (stepA a))
    (absorbingB : ∀ b, haltB b → haltB (stepB b))
    (halts : ∀ a b, R a b → (haltA a ↔ haltB b))
    (advance : ∀ a b, R a b → ∃ i j, 0 < i ∧ 0 < j ∧
      R (trajectory stepA a i) (trajectory stepB b j)) :
    Eventually stepA haltA a₀ ↔ Eventually stepB haltB b₀ := by
  have samples : ∀ t, ∃ i j, t ≤ i ∧ t ≤ j ∧
      R (trajectory stepA a₀ i) (trajectory stepB b₀ j) := by
    intro t
    induction t with
    | zero => exact ⟨0, 0, le_rfl, le_rfl, initial⟩
    | succ t ih =>
      obtain ⟨i, j, hi, hj, h⟩ := ih
      obtain ⟨k, l, hk, hl, hnext⟩ := advance _ _ h
      exact ⟨i + k, j + l, by omega, by omega, by
        simpa only [trajectory_add] using hnext⟩
  constructor
  · rintro ⟨t, ht⟩
    obtain ⟨i, j, hi, _, h⟩ := samples t
    exact ⟨j, (halts _ _ h).mp (halted_later stepA haltA absorbingA a₀ t i ht hi)⟩
  · rintro ⟨t, ht⟩
    obtain ⟨i, j, _, hj, h⟩ := samples t
    exact ⟨i, (halts _ _ h).mpr (halted_later stepB haltB absorbingB b₀ t j ht hj)⟩

end RiemannMachineVerification
