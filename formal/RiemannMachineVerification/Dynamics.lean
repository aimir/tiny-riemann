import Mathlib.Tactic

namespace RiemannMachineVerification

def trajectory {α : Type} (step : α → α) (initial : α) : ℕ → α
  | 0 => initial
  | t + 1 => step (trajectory step initial t)

def Eventually {α : Type} (step : α → α) (halted : α → Prop) (initial : α) : Prop :=
  ∃ t, halted (trajectory step initial t)

theorem trajectory_add {α : Type} (step : α → α) (s : α) (m n : ℕ) :
    trajectory step s (m + n) = trajectory step (trajectory step s m) n := by
  induction n with
  | zero => rfl
  | succ n ih => exact congrArg step ih

theorem halted_later {α : Type} (step : α → α) (halted : α → Prop)
    (absorbing : ∀ s, halted s → halted (step s)) (s : α)
    (m n : ℕ) (hm : halted (trajectory step s m)) (hmn : m ≤ n) :
    halted (trajectory step s n) := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hmn
  induction k with
  | zero => exact hm
  | succ k ih => exact absorbing _ (ih (by omega))

/-- Progressing simulation permits arbitrary finite implementation time and a
relation between representations. Positivity prevents an infinite abstract run
from being represented by only finitely many concrete steps. -/
theorem eventually_iff_of_simulation {α β : Type}
    (stepA : α → α) (stepB : β → β) (haltA : α → Prop) (haltB : β → Prop)
    (a₀ : α) (b₀ : β) (R : α → β → Prop)
    (initial : R a₀ b₀)
    (absorbing : ∀ a, haltA a → haltA (stepA a))
    (halts : ∀ a b, R a b → (haltA a ↔ haltB b))
    (expand : ∀ a b, R a b →
      ∃ k : ℕ, 0 < k ∧ R (trajectory stepA a k) (stepB b)) :
    Eventually stepA haltA a₀ ↔ Eventually stepB haltB b₀ := by
  have samples : ∀ t, ∃ k, t ≤ k ∧
      R (trajectory stepA a₀ k) (trajectory stepB b₀ t) := by
    intro t
    induction t with
    | zero => exact ⟨0, le_rfl, initial⟩
    | succ t ih =>
      obtain ⟨k, htk, hr⟩ := ih
      obtain ⟨j, hj, hnext⟩ := expand _ _ hr
      refine ⟨k + j, by omega, ?_⟩
      simpa only [trajectory_add, trajectory] using hnext
  constructor
  · rintro ⟨t, ht⟩
    obtain ⟨k, htk, hr⟩ := samples t
    exact ⟨t, (halts _ _ hr).mp (halted_later stepA haltA absorbing a₀ t k ht htk)⟩
  · rintro ⟨t, ht⟩
    obtain ⟨k, _, hr⟩ := samples t
    exact ⟨k, (halts _ _ hr).mpr ht⟩

end RiemannMachineVerification
