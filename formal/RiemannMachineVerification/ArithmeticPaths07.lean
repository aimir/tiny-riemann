import RiemannMachineVerification.ArithmeticPathInstructions

set_option maxRecDepth 8192
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace RiemannMachineVerification

theorem div_reset (s : Registers) (n capacity : ℕ) (h0 : s.i ≠ 0) :
    RExec macroProgram (sourceConfiguration ⟨84, by decide⟩ ({s with num := (n + 1), denom := 0}) 0 0 0 capacity)
      (sourceConfiguration ⟨84, by decide⟩ ({s with num := n, denom := (s.i - 1)}) 0 0 0 capacity) := by
  refine ⟨9, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_84, arithmetic_instruction_86, arithmetic_instruction_87, arithmetic_instruction_90, arithmetic_instruction_92, arithmetic_instruction_96, arithmetic_instruction_104, arithmetic_instruction_108, arithmetic_instruction_110,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h0]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply, h0] <;> omega
    · dsimp only <;> omega

theorem div_next (s : Registers) (n capacity : ℕ) (h0 : s.denom ≠ 0) (h1 : ((s.denom - 1) + 1) ≠ 0) :
    RExec macroProgram (sourceConfiguration ⟨84, by decide⟩ ({s with num := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨84, by decide⟩ ({s with num := n, denom := (((s.denom - 1) + 1) - 1)}) 0 0 0 capacity) := by
  refine ⟨6, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_84, arithmetic_instruction_86, arithmetic_instruction_88, arithmetic_instruction_89, arithmetic_instruction_108, arithmetic_instruction_110,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h0, h1]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply, h0, h1] <;> omega
    · dsimp only <;> omega

theorem lcm_retry (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨111, by decide⟩ ({s with num := 0, denom := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨44, by decide⟩ ({s with lcm := (s.lcm + 1), num := 0, denom := (n + 1), i := s.x}) 0 0 0 capacity) := by
  refine ⟨8, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_111, arithmetic_instruction_113, arithmetic_instruction_114, arithmetic_instruction_116, arithmetic_instruction_120, arithmetic_instruction_128, arithmetic_instruction_132, arithmetic_instruction_133,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem lcm_pass (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨111, by decide⟩ ({s with num := 0, denom := 0, i := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨44, by decide⟩ ({s with num := 0, denom := 0, i := n}) 0 0 0 capacity) := by
  refine ⟨6, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_111, arithmetic_instruction_112, arithmetic_instruction_134, arithmetic_instruction_136, arithmetic_instruction_144, arithmetic_instruction_146,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem after_lcm (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨147, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨256, by decide⟩ ({s with i := s.lcm}) 0 0 0 capacity) := by
  refine ⟨9, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_147, arithmetic_instruction_148, arithmetic_instruction_152, arithmetic_instruction_156, arithmetic_instruction_160, arithmetic_instruction_168, arithmetic_instruction_172, arithmetic_instruction_176, arithmetic_instruction_192,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_init_256 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨256, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨268, by decide⟩ ({s with num := 0, denom := 1}) 0 0 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_256, arithmetic_instruction_260, arithmetic_instruction_261, arithmetic_instruction_262, arithmetic_instruction_264,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_enter_256 (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨268, by decide⟩ ({s with i := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨272, by decide⟩ ({s with i := (n + 1)}) 0 0 0 capacity) := by
  refine ⟨3, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_268, arithmetic_instruction_270, arithmetic_instruction_271,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_exit_256 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨268, by decide⟩ ({s with i := 0}) 0 0 0 capacity)
      (sourceConfiguration ⟨384, by decide⟩ ({s with i := 0}) 0 0 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_268, arithmetic_instruction_269, arithmetic_instruction_371, arithmetic_instruction_372, arithmetic_instruction_376,
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
