import RiemannMachineVerification.ArithmeticLemmas
import RiemannMachineVerification.Cutoff

namespace RiemannMachineVerification

/-- The natural-number inequality obtained by the two squarings in the program.
Subtraction here is truncated natural-number subtraction. -/
def IntegerTest (n : ℕ) : Prop :=
  (harmonicNumerator (lcmUpto n) - n * (lcmUpto n).factorial) ^ 2 *
      n.factorial ^ 4 >
    n * (lcmUpto n).factorial ^ 2 * (harmonicNumerator n) ^ 4

theorem harmonic_excess_numerator (m n : ℕ) :
    ((harmonicNumerator m - n * m.factorial : ℕ) : ℚ) =
      (m.factorial : ℚ) * max (harmonic m - (n : ℚ)) 0 := by
  rw [nat_sub_cast_eq_max, harmonicNumerator_correct, Nat.cast_mul]
  have hf : (0 : ℚ) ≤ m.factorial := by positivity
  rw [mul_max_of_nonneg _ _ hf, mul_zero]
  congr 1
  ring

theorem integerTest_iff (n : ℕ) :
    IntegerTest n ↔
      (max (harmonic (lcmUpto n) - (n : ℚ)) 0) ^ 2 >
        (n : ℚ) * (harmonic n) ^ 4 := by
  unfold IntegerTest
  have hcast :
      (harmonicNumerator (lcmUpto n) - n * (lcmUpto n).factorial) ^ 2 *
          n.factorial ^ 4 >
        n * (lcmUpto n).factorial ^ 2 * (harmonicNumerator n) ^ 4 ↔
      (((harmonicNumerator (lcmUpto n) - n * (lcmUpto n).factorial : ℕ) : ℚ)) ^ 2 *
          (n.factorial : ℚ) ^ 4 >
        (n : ℚ) * ((lcmUpto n).factorial : ℚ) ^ 2 *
          (harmonicNumerator n : ℚ) ^ 4 := by
    norm_cast
  rw [hcast, harmonic_excess_numerator, harmonicNumerator_correct]
  have hf : (0 : ℚ) < ((lcmUpto n).factorial : ℚ) ^ 2 * (n.factorial : ℚ) ^ 4 := by
    positivity
  convert mul_lt_mul_iff_of_pos_left hf using 1 <;> ring

theorem integerTest_search_iff :
    (∃ n : ℕ, 0 < n ∧ IntegerTest n) ↔ ∃ n : ℕ, Counterexample n := by
  simp_rw [integerTest_iff]
  exact cutoff_removal

end RiemannMachineVerification
