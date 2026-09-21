import RiemannMachineVerification.Registers.Arithmetic.Program
namespace RiemannMachineVerification

/-- [proof-guide] One structured harmonic body implements the numerator and denominator update.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonicBody_eval (x l a b i c : ℕ) :
    Eval harmonicBody ⟨x, l, a, b, i, c⟩
      (.normal ⟨x, l, i * a + b, i * b, i - 1, c⟩) :=
  .seq_normal (.modify _ _) (.seq_normal (.modify _ _) (.seq_normal (.modify _ _) (.skip _)))

/-- [proof-guide] The structured harmonic while loop implements the arithmetic harmonic recurrence.
Proof: Induction on `i`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonicWhile_eval (x l c i a b : ℕ) :
    Eval harmonicWhile ⟨x, l, a, b, i, c⟩
      (.normal ⟨x, l, (harmonicLoop i a b).1, (harmonicLoop i a b).2, 0, c⟩) := by
  induction i generalizing a b with
  | zero => exact .loop_false (by simp)
  | succ i ih =>
    apply Eval.loop_next (by simp) (harmonicBody_eval x l a b (i + 1) c)
    simpa only [harmonicWhile, harmonicLoop, Nat.add_sub_cancel] using
      ih ((i + 1) * a + b) ((i + 1) * b)

/-- [proof-guide] The initialized structured harmonic program computes its exact numerator and denominator.
Proof: Combines `Eval.seq_normal`, `harmonicWhile_eval`, `Eval.skip` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem harmonicProgram_eval (x l a b i c : ℕ) :
    Eval harmonicProgram ⟨x, l, a, b, i, c⟩
      (.normal ⟨x, l, harmonicNumerator i, i.factorial, 0, c⟩) := by
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal
  · exact harmonicWhile_eval x l c i 0 1
  · rw [harmonicLoop_initialized]
    exact Eval.skip _

/-- [proof-guide] The structured square program replaces its operand with its square.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem squareProgram_eval (s : Registers) :
    Eval squareProgram s (.normal {s with num := s.num * s.num, denom := s.denom * s.denom}) :=
  .seq_normal (.modify _ _) (.seq_normal (.modify _ _) (.skip _))

/-- [proof-guide] One structured divisibility body implements the countdown update.
Proof: Combines `Eval.seq_normal`, `.seq_normal`, `hb` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem divisibilityBody_eval (x l a b i c : ℕ) :
    Eval divisibilityBody ⟨x, l, a, b, i, c⟩
      (.normal ⟨x, l, a - 1, countdownNext i b, i, c⟩) := by
  by_cases hb : b = 0
  · subst b
    apply Eval.seq_normal (Eval.branch_true (by simp) (.modify _ _))
    exact .seq_normal (.modify _ _) (.seq_normal (.modify _ _) (.skip _))
  · apply Eval.seq_normal (Eval.branch_false (by simpa using hb) (.skip _))
    rw [countdownNext, if_neg hb]
    exact .seq_normal (.modify _ _) (.seq_normal (.modify _ _) (.skip _))

/-- [proof-guide] The structured divisibility loop implements the full countdown test.
Proof: Induction on `a`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem divisibilityWhile_eval (x l i c a b : ℕ) :
    Eval divisibilityWhile ⟨x, l, a, b, i, c⟩
      (.normal ⟨x, l, 0, countdownLoop a i b, i, c⟩) := by
  induction a generalizing b with
  | zero => exact .loop_false (by simp)
  | succ a ih =>
    apply Eval.loop_next (by simp) (divisibilityBody_eval x l (a + 1) b i c)
    simpa only [divisibilityWhile, countdownLoop, Nat.add_sub_cancel] using ih (countdownNext i b)

end RiemannMachineVerification
