import RiemannMachineVerification.ArithmeticLemmas
import Mathlib.Data.Nat.ModEq

namespace RiemannMachineVerification

/-- One iteration of the repeated countdown used for the divisibility test. -/
def countdownNext (i d : ℕ) : ℕ := (if d = 0 then i else d) - 1

def countdownLoop : ℕ → ℕ → ℕ → ℕ
  | 0, _, d => d
  | m + 1, i, d => countdownLoop m i (countdownNext i d)

theorem countdownNext_spec (i d : ℕ) (hi : 0 < i) (hd : d < i) :
    countdownNext i d < i ∧ Nat.ModEq i (countdownNext i d + 1) d := by
  by_cases hz : d = 0
  · subst d
    simp only [countdownNext, ite_true]
    constructor
    · omega
    · have he : i - 1 + 1 = i := by omega
      rw [he]
      exact Nat.modulus_modEq_zero
  · simp only [countdownNext, if_neg hz]
    constructor
    · omega
    · have he : d - 1 + 1 = d := by omega
      rw [he]

theorem countdownLoop_spec (m i d : ℕ) (hi : 0 < i) (hd : d < i) :
    countdownLoop m i d < i ∧ Nat.ModEq i (countdownLoop m i d + m) d := by
  induction m generalizing d with
  | zero => simpa only [countdownLoop, Nat.add_zero] using
      And.intro hd (Nat.ModEq.refl d)
  | succ m ih =>
    have hs := countdownNext_spec i d hi hd
    have h := ih (countdownNext i d) hs.1
    refine ⟨h.1, ?_⟩
    simpa only [countdownLoop, Nat.add_assoc] using (h.2.add_right 1).trans hs.2

theorem countdownLoop_zero_iff (m i : ℕ) (hi : 0 < i) :
    countdownLoop m i 0 = 0 ↔ i ∣ m := by
  have h := countdownLoop_spec m i 0 hi hi
  constructor
  · intro hz
    rw [hz, Nat.zero_add] at h
    exact Nat.modEq_zero_iff_dvd.mp h.2
  · intro hdvd
    have hm : Nat.ModEq i m 0 := Nat.modEq_zero_iff_dvd.mpr hdvd
    have hc : Nat.ModEq i (countdownLoop m i 0) 0 := by
      apply Nat.ModEq.add_right_cancel hm
      simpa only [Nat.zero_add, Nat.add_zero] using h.2
    simpa only [Nat.ModEq, Nat.mod_eq_of_lt h.1, Nat.zero_mod] using hc

end RiemannMachineVerification
