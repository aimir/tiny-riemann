import RiemannMachineVerification.ArithmeticPathInstructions

set_option maxRecDepth 8192
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace RiemannMachineVerification

theorem sub_positive_positive_453 (s : Registers) (n capacity : ℕ) (h0 : s.num ≠ 0) :
    RExec macroProgram (sourceConfiguration ⟨453, by decide⟩ (s) (n + 1) 0 0 capacity)
      (sourceConfiguration ⟨453, by decide⟩ ({s with num := (s.num - 1)}) n 0 0 capacity) := by
  refine ⟨3, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_453, arithmetic_instruction_455, arithmetic_instruction_457,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h0]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply, h0] <;> omega
    · dsimp only <;> omega

theorem sub_zero_1053 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1053, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨1058, by decide⟩ (s) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1053, arithmetic_instruction_1054,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem sub_positive_zero_1053 (s : Registers) (n capacity : ℕ) (h0 : s.denom = 0) :
    RExec macroProgram (sourceConfiguration ⟨1053, by decide⟩ (s) (n + 1) 0 0 capacity)
      (sourceConfiguration ⟨1053, by decide⟩ ({s with denom := 0}) n 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1053, arithmetic_instruction_1055, arithmetic_instruction_1056, arithmetic_instruction_1057,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h0]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply, h0] <;> omega
    · dsimp only <;> omega

theorem sub_positive_positive_1053 (s : Registers) (n capacity : ℕ) (h0 : s.denom ≠ 0) :
    RExec macroProgram (sourceConfiguration ⟨1053, by decide⟩ (s) (n + 1) 0 0 capacity)
      (sourceConfiguration ⟨1053, by decide⟩ ({s with denom := (s.denom - 1)}) n 0 0 capacity) := by
  refine ⟨3, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_1053, arithmetic_instruction_1055, arithmetic_instruction_1057,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h0]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply, h0] <;> omega
    · dsimp only <;> omega

theorem main_prefix (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨0, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨44, by decide⟩ ({s with x := (s.x + 1), lcm := 1, i := (s.x + 1)}) 0 0 0 (capacity + 16)) := by
  refine ⟨24, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_0, arithmetic_instruction_1, arithmetic_instruction_2, arithmetic_instruction_3, arithmetic_instruction_4, arithmetic_instruction_5, arithmetic_instruction_6, arithmetic_instruction_7, arithmetic_instruction_8, arithmetic_instruction_9, arithmetic_instruction_10, arithmetic_instruction_11, arithmetic_instruction_12, arithmetic_instruction_13, arithmetic_instruction_14, arithmetic_instruction_15, arithmetic_instruction_16, arithmetic_instruction_20, arithmetic_instruction_21, arithmetic_instruction_22, arithmetic_instruction_24, arithmetic_instruction_28, arithmetic_instruction_32, arithmetic_instruction_40,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem lcm_enter (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨44, by decide⟩ ({s with i := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨84, by decide⟩ ({s with num := s.lcm, denom := 0, i := (n + 1)}) 0 0 0 capacity) := by
  refine ⟨9, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_44, arithmetic_instruction_46, arithmetic_instruction_47, arithmetic_instruction_48, arithmetic_instruction_56, arithmetic_instruction_64, arithmetic_instruction_68, arithmetic_instruction_72, arithmetic_instruction_80,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem lcm_exit (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨44, by decide⟩ ({s with i := 0}) 0 0 0 capacity)
      (sourceConfiguration ⟨147, by decide⟩ ({s with i := 0}) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_44, arithmetic_instruction_45,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem div_exit (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨84, by decide⟩ ({s with num := 0}) 0 0 0 capacity)
      (sourceConfiguration ⟨111, by decide⟩ ({s with num := 0}) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_84, arithmetic_instruction_85,
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
