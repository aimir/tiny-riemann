import RiemannMachineVerification.Arithmetic.Divisibility
namespace RiemannMachineVerification

/-- [proof-guide] The least common multiple of the initial segment is positive.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcmUpto_pos (n : ℕ) : 0 < lcmUpto n := by
  induction n with
  | zero => decide
  | succ n ih => exact Nat.lcm_pos ih (by omega)

/-- [proof-guide] Every positive integer in the initial segment divides its least common multiple.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem dvd_lcmUpto (n j : ℕ) (hj : 0 < j) (hjn : j ≤ n) : j ∣ lcmUpto n := by
  induction n with
  | zero => omega
  | succ n ih =>
    by_cases he : j = n + 1
    · subst j; exact Nat.dvd_lcm_right _ _
    · exact (ih (by omega)).trans (Nat.dvd_lcm_left _ _)

/-- [proof-guide] The initial-segment least common multiple divides every common multiple of that segment.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcmUpto_dvd (n c : ℕ) (h : ∀ j, 0 < j → j ≤ n → j ∣ c) :
    lcmUpto n ∣ c := by
  induction n with
  | zero => exact one_dvd c
  | succ n ih =>
    exact Nat.lcm_dvd (ih (fun j hj hjn => h j hj (by omega))) (h (n + 1) (by omega) le_rfl)

/-- The exact outer-loop control flow, using the verified countdown test. -/
inductive LcmSearchEval (n : ℕ) : ℕ → ℕ → ℕ → Prop
  | done (c : ℕ) : LcmSearchEval n c 0 c
  | pass (c i r : ℕ) (hi : 0 < i) (hz : countdownLoop c i 0 = 0)
      (tail : LcmSearchEval n c (i - 1) r) : LcmSearchEval n c i r
  | retry (c i r : ℕ) (hi : 0 < i) (hz : countdownLoop c i 0 ≠ 0)
      (tail : LcmSearchEval n (c + 1) n r) : LcmSearchEval n c i r

/-- The bounded candidate measure proves termination; the descending index
invariant proves that the returned number is exactly the least common multiple. -/
theorem lcmSearch_correct (n c i : ℕ) (hc : 0 < c) (hcl : c ≤ lcmUpto n)
    (hin : i ≤ n) (passed : ∀ j, i < j → j ≤ n → j ∣ c) :
    LcmSearchEval n c i (lcmUpto n) := by
  generalize heq : (lcmUpto n - c) * (n + 1) + i = measure
  induction measure using Nat.strong_induction_on generalizing c i with
  | h measure ih =>
    by_cases hi : i = 0
    · subst i
      have hd : lcmUpto n ∣ c := lcmUpto_dvd n c passed
      have he : c = lcmUpto n := Nat.le_antisymm hcl (Nat.le_of_dvd hc hd)
      subst c
      exact LcmSearchEval.done _
    · have hip : 0 < i := by omega
      by_cases hz : countdownLoop c i 0 = 0
      · apply LcmSearchEval.pass c i _ hip hz
        have hmeasure : (lcmUpto n - c) * (n + 1) + (i - 1) < measure := by omega
        apply ih _ hmeasure c (i - 1) hc hcl (by omega) _ rfl
        intro j hj hjn
        by_cases he : j = i
        · subst j; exact (countdownLoop_zero_iff c i hip).mp hz
        · exact passed j (by omega) hjn
      · have hnotdvd : ¬ i ∣ c := by
          simpa only [countdownLoop_zero_iff c i hip] using hz
        have hstrict : c < lcmUpto n := by
          by_contra h
          have he : c = lcmUpto n := by omega
          exact hnotdvd (he ▸ dvd_lcmUpto n i hip hin)
        apply LcmSearchEval.retry c i _ hip hz
        have hsub : lcmUpto n - c = lcmUpto n - (c + 1) + 1 := by omega
        have hmeasure : (lcmUpto n - (c + 1)) * (n + 1) + n < measure := by
          rw [← heq, hsub, Nat.add_mul]
          omega
        apply ih _ hmeasure (c + 1) n (by omega) (by omega) le_rfl _ rfl
        intro j hj hjn
        omega

/-- [proof-guide] The initialized divisibility search returns the initial-segment least common multiple.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcmSearch_initialized (n : ℕ) : LcmSearchEval n 1 n (lcmUpto n) :=
  lcmSearch_correct n 1 n (by decide) (lcmUpto_pos n) le_rfl (by omega)

end RiemannMachineVerification
