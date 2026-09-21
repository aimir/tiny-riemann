import RiemannMachineVerification.Arithmetic.RationalFacts
import RiemannMachineVerification.Generated.Arithmetic.LcmBounds
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

/-- [proof-guide] The sixteenth harmonic number is at least three.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonic_sixteen_ge_three : (3 : ℚ) ≤ harmonic 16 := by
  decide_cbv

def smallExponent (n : Fin 16) : ℕ :=
  (#[0, 0, 1, 3, 4, 6, 6, 9, 10, 12, 12, 15, 15, 19, 19, 19] : Array ℕ)[n.val]

/-- [proof-guide] The finite positive cases below sixteen fail the counterexample inequality.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem small_cutoff_checks : ∀ n : Fin 16, 0 < n.val →
    lcmUpto n.val ≤ 2 ^ smallExponent n ∧
    (max (1 + (smallExponent n : ℚ) - (n.val : ℚ)) 0) ^ 2 ≤
      (n.val : ℚ) * (harmonic n.val) ^ 4 := by
  decide_cbv

/-- [proof-guide] No positive index below 254 satisfies the counterexample inequality.
Proof: Combines `max_le_max`, `max_le` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem no_counterexample_below_cutoff (n : ℕ) (hn : 0 < n) (hn254 : n < 254) :
    (max (harmonic (lcmUpto n) - (n : ℚ)) 0) ^ 2 ≤
      (n : ℚ) * (harmonic n) ^ 4 := by
  by_cases hsmall : n < 16
  · have hc := small_cutoff_checks ⟨n, hsmall⟩ hn
    have hh := harmonic_le_of_le_pow_two (lcmUpto n) _ hc.1
    have hm : max (harmonic (lcmUpto n) - (n : ℚ)) 0 ≤
        max (1 + (smallExponent ⟨n, hsmall⟩ : ℚ) - (n : ℚ)) 0 := by
      exact max_le_max (by linarith) le_rfl
    exact (pow_le_pow_left₀ (le_max_right _ _) hm 2).trans hc.2
  · have hn16 : 16 ≤ n := by omega
    have hnq : (0 : ℚ) ≤ n := by positivity
    have hn16q : (16 : ℚ) ≤ n := by exact_mod_cast hn16
    have hn253q : (n : ℚ) ≤ 253 := by exact_mod_cast (show n ≤ 253 by omega)
    have hl := lcmUpto_small_bound ⟨n, hn254⟩
    have hh := harmonic_le_of_le_pow_two (lcmUpto n) (n + n / 2 + 1) hl
    have hdiv : (n / 2 : ℕ) * 2 ≤ n := Nat.div_mul_le_self n 2
    have hdivq : ((n / 2 : ℕ) : ℚ) * 2 ≤ n := by exact_mod_cast hdiv
    have hh' : harmonic (lcmUpto n) - (n : ℚ) ≤ (n : ℚ) / 2 + 2 := by
      push_cast at hh
      linarith
    have hu : max (harmonic (lcmUpto n) - (n : ℚ)) 0 ≤ (n : ℚ) / 2 + 2 := by
      exact max_le hh' (by positivity)
    have hH : (3 : ℚ) ≤ harmonic n :=
      harmonic_sixteen_ge_three.trans (harmonic_mono hn16)
    calc
      (max (harmonic (lcmUpto n) - (n : ℚ)) 0) ^ 2 ≤ ((n : ℚ) / 2 + 2) ^ 2 :=
        pow_le_pow_left₀ (le_max_right _ _) hu 2
      _ ≤ (n : ℚ) * (3 : ℚ) ^ 4 := by
        nlinarith [mul_nonneg hnq (sub_nonneg.mpr hn253q)]
      _ ≤ (n : ℚ) * (harmonic n) ^ 4 := by gcongr

/-- [proof-guide] Adding the lower bound 254 does not change existence of a positive counterexample.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem cutoff_removal :
    (∃ n : ℕ, 0 < n ∧
      (max (harmonic (lcmUpto n) - (n : ℚ)) 0) ^ 2 >
        (n : ℚ) * (harmonic n) ^ 4) ↔
      ∃ n : ℕ, Counterexample n := by
  constructor
  · rintro ⟨n, hn, hbad⟩
    refine ⟨n, ?_, hbad⟩
    by_contra h
    exact (not_lt_of_ge (no_counterexample_below_cutoff n hn (by omega))) hbad
  · rintro ⟨n, hcutoff, hbad⟩
    exact ⟨n, by omega, hbad⟩

end RiemannMachineVerification
