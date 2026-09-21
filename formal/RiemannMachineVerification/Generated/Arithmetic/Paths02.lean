import RiemannMachineVerification.Generated.Arithmetic.Instructions
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace RiemannMachineVerification

/-- [proof-guide] Checks the displayed arithmetic register path at address 652, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_positive_652 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨652, by decide⟩ (s) a (n + 1) 0 capacity)
      (sourceConfiguration ⟨652, by decide⟩ (s) (a + s.num) n 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_652, arithmetic_instruction_654, arithmetic_instruction_656, arithmetic_instruction_664, arithmetic_instruction_668,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 652, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_prefix_652 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨640, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨652, by decide⟩ (s) a s.num 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_640, arithmetic_instruction_648,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 692, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_zero_692 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨692, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨709, by decide⟩ (s) a 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_692, arithmetic_instruction_693,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 692, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_positive_692 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨692, by decide⟩ (s) a (n + 1) 0 capacity)
      (sourceConfiguration ⟨692, by decide⟩ (s) (a + s.denom) n 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_692, arithmetic_instruction_694, arithmetic_instruction_696, arithmetic_instruction_704, arithmetic_instruction_708,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 692, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_prefix_692 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨680, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨692, by decide⟩ (s) a s.denom 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_680, arithmetic_instruction_688,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 780, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_zero_780 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨780, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨797, by decide⟩ (s) a 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_780, arithmetic_instruction_781,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 780, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_positive_780 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨780, by decide⟩ (s) a (n + 1) 0 capacity)
      (sourceConfiguration ⟨780, by decide⟩ (s) (a + s.num) n 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_780, arithmetic_instruction_782, arithmetic_instruction_784, arithmetic_instruction_792, arithmetic_instruction_796,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 780, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_prefix_780 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨768, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨780, by decide⟩ (s) a s.c 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_768, arithmetic_instruction_776,
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
