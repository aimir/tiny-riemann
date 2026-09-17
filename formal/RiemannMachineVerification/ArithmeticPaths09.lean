import RiemannMachineVerification.ArithmeticPathInstructions

set_option maxRecDepth 8192
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace RiemannMachineVerification

theorem after_sub_first (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨458, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨512, by decide⟩ ({s with lcm := s.num}) 0 0 0 capacity) := by
  refine ⟨6, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_458, arithmetic_instruction_460, arithmetic_instruction_464, arithmetic_instruction_472, arithmetic_instruction_476, arithmetic_instruction_480,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem after_square_first (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨720, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨768, by decide⟩ (s) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_720, arithmetic_instruction_736,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem after_scaled_products (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨848, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨896, by decide⟩ (s) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_848, arithmetic_instruction_864,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem after_square_second (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨976, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨1024, by decide⟩ (s) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_976, arithmetic_instruction_992,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem main_return (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1058, by decide⟩ ({s with denom := 0}) 0 0 0 capacity)
      (sourceConfiguration ⟨0, by decide⟩ ({s with denom := 0}) 0 0 0 capacity) := by
  refine ⟨10, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1058, arithmetic_instruction_1059, arithmetic_instruction_1061, arithmetic_instruction_1062, arithmetic_instruction_1064, arithmetic_instruction_1072, arithmetic_instruction_1088, arithmetic_instruction_1152, arithmetic_instruction_1280, arithmetic_instruction_1536,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem main_halt (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1058, by decide⟩ ({s with denom := (n + 1)}) 0 0 0 capacity)
      ⟨none, sourceValues ({s with denom := n}) 0 0 0, capacity⟩ := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1058, arithmetic_instruction_1060,
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
