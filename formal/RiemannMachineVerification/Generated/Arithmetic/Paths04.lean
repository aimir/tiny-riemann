import RiemannMachineVerification.Generated.Arithmetic.Instructions
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace RiemannMachineVerification

/-- [proof-guide] Checks the displayed arithmetic register path at address 948, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_prefix_948 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨936, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨948, by decide⟩ (s) a s.denom 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_936, arithmetic_instruction_944,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 1036, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_zero_1036 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1036, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨1053, by decide⟩ (s) a 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1036, arithmetic_instruction_1037,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 1036, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_positive_1036 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1036, by decide⟩ (s) a (n + 1) 0 capacity)
      (sourceConfiguration ⟨1036, by decide⟩ (s) (a + s.x) n 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1036, arithmetic_instruction_1038, arithmetic_instruction_1040, arithmetic_instruction_1048, arithmetic_instruction_1052,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 1036, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_prefix_1036 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1024, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨1036, by decide⟩ (s) a s.num 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1024, arithmetic_instruction_1032,
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
theorem mul_suffix_284 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨301, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨324, by decide⟩ ({s with num := (a + s.denom)}) 0 0 0 capacity) := by
  refine ⟨6, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_301, arithmetic_instruction_302, arithmetic_instruction_304, arithmetic_instruction_312, arithmetic_instruction_316, arithmetic_instruction_320,
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
theorem mul_suffix_340 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨357, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨368, by decide⟩ ({s with denom := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_357, arithmetic_instruction_358, arithmetic_instruction_360, arithmetic_instruction_364,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 540, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_suffix_540 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨557, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨580, by decide⟩ ({s with num := (a + s.denom)}) 0 0 0 capacity) := by
  refine ⟨6, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_557, arithmetic_instruction_558, arithmetic_instruction_560, arithmetic_instruction_568, arithmetic_instruction_572, arithmetic_instruction_576,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 596, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_suffix_596 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨613, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨624, by decide⟩ ({s with denom := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_613, arithmetic_instruction_614, arithmetic_instruction_616, arithmetic_instruction_620,
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
