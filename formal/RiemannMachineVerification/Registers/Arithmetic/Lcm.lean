import RiemannMachineVerification.Registers.Arithmetic.Equations
namespace RiemannMachineVerification

/-- [proof-guide] One structured LCM-search body implements the arithmetic search update.
Proof: Combines `Eval.seq_normal`, `Eval.branch_true`, `.seq_normal` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcmBody_eval (n candidate a b i spare : ℕ) :
    Eval lcmBody ⟨n, candidate, a, b, i, spare⟩
      (.normal (if 0 < countdownLoop candidate i 0 then
        ⟨n, candidate + 1, 0, countdownLoop candidate i 0, n, spare⟩
      else ⟨n, candidate, 0, countdownLoop candidate i 0, i - 1, spare⟩)) := by
  apply Eval.seq_normal (.skip _)
  apply Eval.seq_normal (.skip _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (divisibilityWhile_eval n candidate i spare candidate 0)
  by_cases h : 0 < countdownLoop candidate i 0
  · rw [if_pos h]
    apply Eval.seq_normal
    · apply Eval.branch_true (by simpa using h)
      exact .seq_normal (.modify _ _) (.seq_normal (.modify _ _) (.skip _))
    · exact .skip _
  · rw [if_neg h]
    apply Eval.seq_normal
    · apply Eval.branch_false (by simpa using h)
      exact .seq_normal (.skip _) (.seq_normal (.modify _ _) (.skip _))
    · exact .skip _

/-- [proof-guide] A terminating arithmetic LCM search induces evaluation of the structured while loop.
Proof: Induction on `h`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcmWhile_of_search {n candidate i result : ℕ}
    (h : LcmSearchEval n candidate i result) (spare a b : ℕ) :
    ∃ a' b', Eval lcmWhile ⟨n, candidate, a, b, i, spare⟩
      (.normal ⟨n, result, a', b', 0, spare⟩) := by
  induction h generalizing a b with
  | done candidate => exact ⟨a, b, .loop_false (by simp)⟩
  | pass candidate i result hi hz tail ih =>
    obtain ⟨a', b', hh⟩ := ih 0 0
    refine ⟨a', b', Eval.loop_next (by simpa using hi) ?_ hh⟩
    simpa only [hz, Nat.lt_irrefl, if_false] using lcmBody_eval n candidate a b i spare
  | retry candidate i result hi hz tail ih =>
    obtain ⟨a', b', hh⟩ := ih 0 (countdownLoop candidate i 0)
    refine ⟨a', b', Eval.loop_next (by simpa using hi) ?_ hh⟩
    simpa only [if_pos (Nat.pos_of_ne_zero hz)] using lcmBody_eval n candidate a b i spare

/-- [proof-guide] The initialized structured LCM loop returns the least common multiple.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcmWhile_initialized (n spare a b : ℕ) :
    ∃ a' b', Eval lcmWhile ⟨n, 1, a, b, n, spare⟩
      (.normal ⟨n, lcmUpto n, a', b', 0, spare⟩) :=
  lcmWhile_of_search (lcmSearch_initialized n) spare a b

end RiemannMachineVerification
