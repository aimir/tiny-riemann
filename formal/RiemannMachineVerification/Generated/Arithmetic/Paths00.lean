import RiemannMachineVerification.Generated.Arithmetic.Instructions
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace RiemannMachineVerification

/-- [proof-guide] Checks the displayed arithmetic register path at address 284, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_zero_284 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨284, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨301, by decide⟩ (s) a 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_284, arithmetic_instruction_285,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 284, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_positive_284 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨284, by decide⟩ (s) a (n + 1) 0 capacity)
      (sourceConfiguration ⟨284, by decide⟩ (s) (a + s.num) n 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_284, arithmetic_instruction_286, arithmetic_instruction_288, arithmetic_instruction_296, arithmetic_instruction_300,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 284, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_prefix_284 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨272, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨284, by decide⟩ (s) a s.i 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_272, arithmetic_instruction_280,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 340, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_zero_340 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨340, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨357, by decide⟩ (s) a 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_340, arithmetic_instruction_341,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 340, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_positive_340 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨340, by decide⟩ (s) a (n + 1) 0 capacity)
      (sourceConfiguration ⟨340, by decide⟩ (s) (a + s.denom) n 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_340, arithmetic_instruction_342, arithmetic_instruction_344, arithmetic_instruction_352, arithmetic_instruction_356,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 340, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_prefix_340 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨328, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨340, by decide⟩ (s) a s.i 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_328, arithmetic_instruction_336,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 436, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_zero_436 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨436, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨453, by decide⟩ (s) a 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_436, arithmetic_instruction_437,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 436, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_positive_436 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨436, by decide⟩ (s) a (n + 1) 0 capacity)
      (sourceConfiguration ⟨436, by decide⟩ (s) (a + s.x) n 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_436, arithmetic_instruction_438, arithmetic_instruction_440, arithmetic_instruction_448, arithmetic_instruction_452,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

end RiemannMachineVerification
