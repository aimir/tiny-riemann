import RiemannMachineVerification.Registers.Arithmetic.Cycle
import RiemannMachineVerification.Arithmetic.Search
namespace RiemannMachineVerification

def arithmeticBad (n : ℕ) : Bool := decide (0 < arithmeticTail n)

def CycleRelation (r : RegisterConfiguration) (n : Option ℕ) : Prop :=
  match n with
  | none => r.pc = none
  | some n => ∃ s capacity, s.x = n ∧ r = sourceConfiguration ⟨0, by decide⟩ s 0 0 0 capacity

/-- [proof-guide] The initial arithmetic register configuration represents natural-search index zero.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem cycleRelation_initial : CycleRelation initialRegisterConfiguration (some 0) := by
  refine ⟨initialRegisters, 0, rfl, ?_⟩
  apply registerConfiguration_ext <;> try rfl
  funext r; fin_cases r <;> rfl

/-- [proof-guide] The cycle relation equates register halting with search termination.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem cycleRelation_halts (r : RegisterConfiguration) (n : Option ℕ)
    (h : CycleRelation r n) : r.pc = none ↔ n = none := by
  cases n with
  | none => simpa only [CycleRelation, iff_true] using h
  | some n =>
    obtain ⟨s, capacity, hs, rfl⟩ := h
    simp only [sourceConfiguration, reduceCtorEq]

/-- [proof-guide] One natural-search step is implemented by a positive complete register cycle.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem cycleRelation_advance (r : RegisterConfiguration) (n : Option ℕ)
    (h : CycleRelation r n) :
    ∃ t, 0 < t ∧ CycleRelation (trajectory (registerStep macroProgram) r t)
      (naturalSearchStep arithmeticBad n) := by
  cases n with
  | none =>
    have hr : r.pc = none := h
    refine ⟨1, by decide, ?_⟩
    simpa only [trajectory, registerStep_halted _ r hr, naturalSearchStep] using h
  | some n =>
    obtain ⟨s, capacity, rfl, rfl⟩ := h
    obtain ⟨t, ht, he⟩ := compiled_cycle s capacity
    refine ⟨t, ht, ?_⟩
    by_cases hb : 0 < arithmeticTail (s.x + 1)
    · simp only [naturalSearchStep, arithmeticBad, decide_eq_true_eq, if_pos hb, CycleRelation]
      simpa only [if_pos hb] using he
    · simp only [naturalSearchStep, arithmeticBad, decide_eq_true_eq, if_neg hb, CycleRelation]
      exact ⟨afterMain (s.x + 1), capacity + 16, rfl, by simpa only [if_neg hb] using he⟩

/-- [proof-guide] The arithmetic register program halts exactly when the abstract natural-number search halts.
Proof: Combines `eventually_iff_of_simulation`, `hr`, `cycleRelation_halts` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem macro_iff_naturalSearch : RegisterHalts macroProgram ↔
    Eventually (naturalSearchStep arithmeticBad) (fun n => n = none) (some 0) := by
  apply eventually_iff_of_simulation (registerStep macroProgram) (naturalSearchStep arithmeticBad)
    (fun r => r.pc = none) (fun n => n = none)
    initialRegisterConfiguration (some 0) CycleRelation cycleRelation_initial
  · intro r hr; rw [registerStep_halted _ r hr]; exact hr
  · exact cycleRelation_halts
  · exact cycleRelation_advance

/-- [proof-guide] The arithmetic register program halts exactly when the approved predicate has a witness.
Proof: Combines `integerTest_search_iff` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_program_correct : RegisterHalts macroProgram ↔ ∃ n : ℕ, Counterexample n := by
  rw [macro_iff_naturalSearch, naturalSearch_correct]
  simp only [arithmeticBad, decide_eq_true_eq, arithmeticTail_positive_iff]
  exact integerTest_search_iff

/-- The compiled register program has the same halting behavior as the
explicit structured source program, from their respective initial states. -/
theorem macro_iff_source : RegisterHalts macroProgram ↔
    RepeatedHalts sourceMain initialRegisters := arithmetic_program_correct.trans source_correct.symm

end RiemannMachineVerification
