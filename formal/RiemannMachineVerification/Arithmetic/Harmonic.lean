import RiemannMachineVerification.Arithmetic.IntegerCriterion
namespace RiemannMachineVerification

/-- Descending loop used by `harmonic()`, including arbitrary initial accumulators. -/
def harmonicLoop : ℕ → ℕ → ℕ → ℕ × ℕ
  | 0, a, b => (a, b)
  | i + 1, a, b => harmonicLoop i ((i + 1) * a + b) ((i + 1) * b)

/-- [proof-guide] The harmonic loop produces its exact natural numerator and denominator for an arbitrary iteration count.
Proof: Induction on `i`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonicLoop_correct (i a b : ℕ) :
    harmonicLoop i a b =
      (i.factorial * a + harmonicNumerator i * b, i.factorial * b) := by
  induction i generalizing a b with
  | zero => simp [harmonicLoop, harmonicNumerator]
  | succ i ih =>
    rw [harmonicLoop, ih, Nat.factorial_succ, harmonicNumerator]
    congr 1 <;> ring

/-- [proof-guide] Initializing the harmonic loop yields the numerator and factorial denominator of the required harmonic number.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonicLoop_initialized (i : ℕ) :
    harmonicLoop i 0 1 = (harmonicNumerator i, i.factorial) := by
  simp [harmonicLoop_correct]

/-- The final assignments, after the two harmonic calls have returned. -/
def arithmeticTail (n : ℕ) : ℕ :=
  let numeratorLarge := harmonicNumerator (lcmUpto n)
  let denominatorLarge := (lcmUpto n).factorial
  let excess := numeratorLarge - denominatorLarge * n
  let numeratorSmall := harmonicNumerator n
  let denominatorSmall := n.factorial
  let numeratorSquared := numeratorSmall * numeratorSmall
  let denominatorSquared := denominatorSmall * denominatorSmall
  let numeratorScaled := denominatorLarge * numeratorSquared
  let denominatorScaled := excess * denominatorSquared
  denominatorScaled * denominatorScaled - numeratorScaled * numeratorScaled * n

/-- [proof-guide] The natural arithmetic tail is positive exactly when the integer counterexample test succeeds.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmeticTail_positive_iff (n : ℕ) :
    0 < arithmeticTail n ↔ IntegerTest n := by
  unfold arithmeticTail IntegerTest
  rw [Nat.sub_pos_iff_lt]
  congr 1 <;> ring

end RiemannMachineVerification
