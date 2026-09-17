import RiemannMachineVerification.CompiledCycle
import RiemannMachineVerification.NaturalSearch

namespace RiemannMachineVerification

def arithmeticBad (n : ℕ) : Bool := decide (0 < arithmeticTail n)

def CycleRelation (r : RegisterConfiguration) (n : Option ℕ) : Prop :=
  match n with
  | none => r.pc = none
  | some n => ∃ s capacity, s.x = n ∧ r = sourceConfiguration ⟨0, by decide⟩ s 0 0 0 capacity

theorem cycleRelation_initial : CycleRelation initialRegisterConfiguration (some 0) := by
  refine ⟨initialRegisters, 0, rfl, ?_⟩
  apply registerConfiguration_ext <;> try rfl
  funext r; fin_cases r <;> rfl

theorem cycleRelation_halts (r : RegisterConfiguration) (n : Option ℕ)
    (h : CycleRelation r n) : r.pc = none ↔ n = none := by
  cases n with
  | none => simpa only [CycleRelation, iff_true] using h
  | some n =>
    obtain ⟨s, capacity, hs, rfl⟩ := h
    simp only [sourceConfiguration, reduceCtorEq]

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

theorem macro_iff_naturalSearch : RegisterHalts macroProgram ↔
    Eventually (naturalSearchStep arithmeticBad) (fun n => n = none) (some 0) := by
  apply eventually_iff_of_simulation (registerStep macroProgram) (naturalSearchStep arithmeticBad)
    (fun r => r.pc = none) (fun n => n = none)
    initialRegisterConfiguration (some 0) CycleRelation cycleRelation_initial
  · intro r hr; rw [registerStep_halted _ r hr]; exact hr
  · exact cycleRelation_halts
  · exact cycleRelation_advance

theorem macro_correct : RegisterHalts macroProgram ↔ ∃ n : ℕ, Counterexample n := by
  rw [macro_iff_naturalSearch, naturalSearch_correct]
  simp only [arithmeticBad, decide_eq_true_eq, arithmeticTail_positive_iff]
  exact integerTest_search_iff

/-- The compiled register program has the same halting behavior as the
explicit structured source program, from their respective initial states. -/
theorem macro_iff_source : RegisterHalts macroProgram ↔
    RepeatedHalts sourceMain initialRegisters := macro_correct.trans source_correct.symm

end RiemannMachineVerification
