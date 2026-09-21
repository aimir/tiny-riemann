import RiemannMachineVerification.Specification.Arithmetic
import Mathlib.Tactic

namespace RiemannMachineVerification

/-- [proof-guide] Every rational harmonic number is nonnegative.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonic_nonneg (n : ℕ) : 0 ≤ harmonic n := by
  induction n with
  | zero => simp [harmonic]
  | succ n ih =>
    rw [harmonic]
    positivity

/-- [proof-guide] Rational harmonic numbers are monotone in their index.
Proof: Combines `monotone_nat_of_le_succ` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonic_mono : Monotone harmonic := by
  apply monotone_nat_of_le_succ
  intro n
  rw [harmonic]
  have : (0 : ℚ) ≤ 1 / ((n : ℚ) + 1) := by positivity
  linarith

/-- Numerator with factorial denominator, as in the original program. -/
def harmonicNumerator : ℕ → ℕ
  | 0 => 0
  | n + 1 => (n + 1) * harmonicNumerator n + n.factorial

/-- [proof-guide] The natural harmonic numerator divided by the factorial equals the rational harmonic number.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonicNumerator_correct (n : ℕ) :
    (harmonicNumerator n : ℚ) = (n.factorial : ℚ) * harmonic n := by
  induction n with
  | zero => simp [harmonicNumerator, harmonic]
  | succ n ih =>
    rw [harmonicNumerator, Nat.cast_add, Nat.cast_mul, ih,
      Nat.factorial_succ, Nat.cast_mul, harmonic]
    push_cast
    have hn : (n : ℚ) + 1 ≠ 0 := by positivity
    field_simp

/-- [proof-guide] Natural subtraction becomes the maximum of rational subtraction and zero after casting.
Proof: Combines `sub_nonneg.mpr`, `sub_nonpos.mpr` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem nat_sub_cast_eq_max (a b : ℕ) :
    ((a - b : ℕ) : ℚ) = max ((a : ℚ) - (b : ℚ)) 0 := by
  by_cases h : b ≤ a
  · rw [Nat.cast_sub h, max_eq_left]
    exact sub_nonneg.mpr (by exact_mod_cast h)
  · have h' : a ≤ b := by omega
    rw [Nat.sub_eq_zero_of_le h', Nat.cast_zero, max_eq_right]
    exact sub_nonpos.mpr (by exact_mod_cast h')

/-- [proof-guide] A block of harmonic summands is bounded using its smallest denominator.
Proof: Induction on `k`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonic_add_upper (n k : ℕ) (hn : 0 < n) :
    harmonic (n + k) ≤ harmonic n + (k : ℚ) / (n : ℚ) := by
  have hnq : (0 : ℚ) < n := by exact_mod_cast hn
  induction k with
  | zero => simp
  | succ k ih =>
    have hb : (1 : ℚ) / ((n + k : ℕ) + 1) ≤ 1 / (n : ℚ) := by
      apply one_div_le_one_div_of_le hnq
      push_cast
      have hk : (0 : ℚ) ≤ k := by positivity
      linarith
    calc
      harmonic (n + (k + 1)) = harmonic (n + k) + 1 / ((n + k : ℕ) + 1) := rfl
      _ ≤ (harmonic n + (k : ℚ) / (n : ℚ)) + 1 / (n : ℚ) := add_le_add ih hb
      _ = harmonic n + ((k + 1 : ℕ) : ℚ) / (n : ℚ) := by push_cast; ring

/-- [proof-guide] Harmonic numbers at powers of two obey the stated linear upper bound.
Proof: Induction on `k`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonic_pow_two_bound (k : ℕ) :
    harmonic (2 ^ k) ≤ 1 + (k : ℚ) := by
  induction k with
  | zero => norm_num [harmonic]
  | succ k ih =>
    have hp : 0 < (2 : ℕ) ^ k := pow_pos (by decide) _
    have hb := harmonic_add_upper (2 ^ k) (2 ^ k) hp
    have hne : ((2 ^ k : ℕ) : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt hp)
    rw [div_self hne] at hb
    have heq : (2 : ℕ) ^ (k + 1) = 2 ^ k + 2 ^ k := by
      rw [pow_succ]; omega
    rw [heq]
    push_cast
    linarith

/-- [proof-guide] An index below a power of two inherits the corresponding harmonic upper bound.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonic_le_of_le_pow_two (m k : ℕ) (h : m ≤ 2 ^ k) :
    harmonic m ≤ 1 + (k : ℚ) :=
  (harmonic_mono h).trans (harmonic_pow_two_bound k)

end RiemannMachineVerification
