import RiemannMachineVerification.Common.Execution
namespace RiemannMachineVerification

def naturalSearchStep (bad : ℕ → Bool) : Option ℕ → Option ℕ
  | none => none
  | some n => if bad (n + 1) then none else some (n + 1)

/-- [proof-guide] Moving one initial step to the starting configuration preserves the rest of a trajectory.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem trajectory_succ_start {α : Type} (step : α → α) (s : α) (t : ℕ) :
    trajectory step s (t + 1) = trajectory step (step s) t := by
  rw [Nat.add_comm, trajectory_add]
  rfl

/-- [proof-guide] The ascending natural-number search halts exactly when a later value satisfies its test.
Proof: Induction on `t`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem naturalSearch_correct (bad : ℕ → Bool) (n : ℕ) :
    Eventually (naturalSearchStep bad) (fun s => s = none) (some n) ↔
      ∃ m, n < m ∧ bad m = true := by
  constructor
  · rintro ⟨t, ht⟩
    induction t generalizing n with
    | zero => cases ht
    | succ t ih =>
      rw [trajectory_succ_start, naturalSearchStep] at ht
      cases hb : bad (n + 1) with
      | false =>
        simp only [hb, Bool.false_eq_true, ↓reduceIte] at ht
        obtain ⟨m, hm, hmB⟩ := ih (n + 1) ht
        exact ⟨m, by omega, hmB⟩
      | true => exact ⟨n + 1, by omega, hb⟩
  · rintro ⟨m, hm, hb⟩
    have reach : ∀ d n, bad (n + d + 1) = true →
        Eventually (naturalSearchStep bad) (fun s => s = none) (some n) := by
      intro d
      induction d with
      | zero =>
        intro n h
        refine ⟨1, ?_⟩
        simpa only [trajectory, naturalSearchStep, Nat.add_zero, h, ↓reduceIte]
      | succ d ih =>
        intro n h
        cases hn : bad (n + 1) with
        | true =>
          refine ⟨1, ?_⟩
          simp only [trajectory, naturalSearchStep, hn, ↓reduceIte]
        | false =>
          obtain ⟨t, ht⟩ := ih (n + 1) (by convert h using 1 <;> congr 1 <;> omega)
          refine ⟨t + 1, ?_⟩
          simpa only [trajectory_succ_start, naturalSearchStep, hn, Bool.false_eq_true, ↓reduceIte] using ht
    apply reach (m - n - 1) n
    have he : n + (m - n - 1) + 1 = m := by omega
    rw [he]; exact hb

end RiemannMachineVerification
