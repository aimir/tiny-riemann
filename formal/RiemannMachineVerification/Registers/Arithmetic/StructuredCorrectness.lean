import RiemannMachineVerification.Registers.Arithmetic.Lcm
set_option maxRecDepth 8192

namespace RiemannMachineVerification

def afterMain (n : ℕ) : Registers :=
  let d := (lcmUpto n).factorial
  let p := harmonicNumerator n
  ⟨n, harmonicNumerator (lcmUpto n) - d * n,
    (d * (p * p)) * (d * (p * p)), arithmeticTail n, 0, d⟩

/-- [proof-guide] A structured main iteration computes the stated updated registers and halting decision.
Proof: Combines `Eval.seq_normal`, `.seq_halted`, `.seq_normal` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem sourceMain_eval (s : Registers) :
    Eval sourceMain s
      (if 0 < arithmeticTail (s.x + 1) then .halted (afterMain (s.x + 1))
       else .normal (afterMain (s.x + 1))) := by
  rcases s with ⟨x, l, a, b, i, c⟩
  obtain ⟨a', b', hLcm⟩ := lcmWhile_initialized (x + 1) c a b
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal hLcm
  apply Eval.seq_normal (.skip _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (harmonicProgram_eval _ _ _ _ _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (harmonicProgram_eval _ _ _ _ _ _)
  apply Eval.seq_normal (squareProgram_eval _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (.modify _ _)
  apply Eval.seq_normal (squareProgram_eval _)
  apply Eval.seq_normal (.modify _ _)
  change Eval _ (afterMain (x + 1))
    (if 0 < arithmeticTail (x + 1) then .halted (afterMain (x + 1))
     else .normal (afterMain (x + 1)))
  by_cases h : 0 < arithmeticTail (x + 1)
  · rw [if_pos h]
    exact .seq_halted (.branch_true (by simpa only [afterMain, decide_eq_true_eq] using h) (.halt _))
  · rw [if_neg h]
    exact .seq_normal
      (.branch_false (by simpa only [afterMain, decide_eq_false_iff_not] using h) (.skip _)) (.skip _)

/-- [proof-guide] The structured main iteration halts exactly when its arithmetic test succeeds.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem sourceMain_halts_iff (s t : Registers) :
    Eval sourceMain s (.halted t) ↔
      IntegerTest (s.x + 1) ∧ t = afterMain (s.x + 1) := by
  have hs := sourceMain_eval s
  by_cases h : 0 < arithmeticTail (s.x + 1)
  · rw [if_pos h] at hs
    have ht := (arithmeticTail_positive_iff _).mp h
    constructor
    · intro he; exact ⟨ht, Outcome.halted.inj (he.deterministic hs)⟩
    · rintro ⟨_, rfl⟩; exact hs
  · rw [if_neg h] at hs
    have ht : ¬ IntegerTest (s.x + 1) := by
      simpa only [arithmeticTail_positive_iff] using h
    constructor
    · intro he; cases he.deterministic hs
    · rintro ⟨he, _⟩; exact (ht he).elim

/-- [proof-guide] The structured main iteration continues exactly when its arithmetic test fails.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem sourceMain_continues_iff (s t : Registers) :
    Eval sourceMain s (.normal t) ↔
      ¬ IntegerTest (s.x + 1) ∧ t = afterMain (s.x + 1) := by
  have hs := sourceMain_eval s
  by_cases h : 0 < arithmeticTail (s.x + 1)
  · rw [if_pos h] at hs
    have ht := (arithmeticTail_positive_iff _).mp h
    constructor
    · intro he; cases he.deterministic hs
    · rintro ⟨he, _⟩; exact (he ht).elim
  · rw [if_neg h] at hs
    have ht : ¬ IntegerTest (s.x + 1) := by
      simpa only [arithmeticTail_positive_iff] using h
    constructor
    · intro he; exact ⟨ht, Outcome.normal.inj (he.deterministic hs)⟩
    · rintro ⟨_, rfl⟩; exact hs

/-- [proof-guide] Repeated structured execution halts exactly when a searched arithmetic test succeeds.
Proof: Induction on `h`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem source_repeated_iff (s : Registers) :
    RepeatedHalts sourceMain s ↔ ∃ n : ℕ, s.x < n ∧ IntegerTest n := by
  constructor
  · intro h
    induction h with
    | halt he =>
      have htest := ((sourceMain_halts_iff _ _).mp he).1
      exact ⟨_, by omega, htest⟩
    | next he _ ih =>
      obtain ⟨_, rfl⟩ := (sourceMain_continues_iff _ _).mp he
      obtain ⟨n, hn, ht⟩ := ih
      change _ + 1 < n at hn
      exact ⟨n, by omega, ht⟩
  · rintro ⟨n, hn, ht⟩
    generalize heq : n - s.x = distance
    induction distance using Nat.strong_induction_on generalizing s with
    | h distance ih =>
      by_cases hh : IntegerTest (s.x + 1)
      · exact .halt ((sourceMain_halts_iff _ _).mpr ⟨hh, rfl⟩)
      · have hn' : s.x + 1 < n := by
          by_contra h
          have he : n = s.x + 1 := by omega
          exact hh (he ▸ ht)
        apply RepeatedHalts.next ((sourceMain_continues_iff _ _).mpr ⟨hh, rfl⟩)
        apply ih (n - (s.x + 1)) (by omega) (afterMain (s.x + 1)) hn' rfl

/-- Correctness of the structured source program. Connecting this program to
the literal 381-state compiled table remains a separate proof obligation. -/
theorem source_correct :
    RepeatedHalts sourceMain initialRegisters ↔ ∃ n : ℕ, Counterexample n := by
  rw [source_repeated_iff]
  exact integerTest_search_iff

end RiemannMachineVerification
