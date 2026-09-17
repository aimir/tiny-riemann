import RiemannMachineVerification.ArithmeticPathInstructions

set_option maxRecDepth 8192
set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace RiemannMachineVerification

theorem harmonic_middle_256 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨324, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨328, by decide⟩ (s) 0 0 0 capacity) := by
  refine ⟨1, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_324,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_back_256 (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨368, by decide⟩ ({s with i := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨268, by decide⟩ ({s with i := n}) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_368, arithmetic_instruction_370,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_init_512 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨512, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨524, by decide⟩ ({s with num := 0, denom := 1}) 0 0 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_512, arithmetic_instruction_516, arithmetic_instruction_517, arithmetic_instruction_518, arithmetic_instruction_520,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_enter_512 (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨524, by decide⟩ ({s with i := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨528, by decide⟩ ({s with i := (n + 1)}) 0 0 0 capacity) := by
  refine ⟨3, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_524, arithmetic_instruction_526, arithmetic_instruction_527,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_exit_512 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨524, by decide⟩ ({s with i := 0}) 0 0 0 capacity)
      (sourceConfiguration ⟨640, by decide⟩ ({s with i := 0}) 0 0 0 capacity) := by
  refine ⟨5, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_524, arithmetic_instruction_525, arithmetic_instruction_627, arithmetic_instruction_628, arithmetic_instruction_632,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_middle_512 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨580, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨584, by decide⟩ (s) 0 0 0 capacity) := by
  refine ⟨1, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_580,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem harmonic_back_512 (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨624, by decide⟩ ({s with i := (n + 1)}) 0 0 0 capacity)
      (sourceConfiguration ⟨524, by decide⟩ ({s with i := n}) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_624, arithmetic_instruction_626,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

theorem after_harmonic_first (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨384, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨424, by decide⟩ ({s with i := s.x, c := s.denom}) 0 0 0 capacity) := by
  refine ⟨8, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_384, arithmetic_instruction_388, arithmetic_instruction_392, arithmetic_instruction_400, arithmetic_instruction_404, arithmetic_instruction_408, arithmetic_instruction_416, arithmetic_instruction_420,
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
