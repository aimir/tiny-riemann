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
theorem mul_suffix_652 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨669, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨680, by decide⟩ ({s with num := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_669, arithmetic_instruction_670, arithmetic_instruction_672, arithmetic_instruction_676,
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
theorem mul_suffix_692 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨709, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨720, by decide⟩ ({s with denom := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_709, arithmetic_instruction_710, arithmetic_instruction_712, arithmetic_instruction_716,
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
theorem mul_suffix_780 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨797, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨808, by decide⟩ ({s with num := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_797, arithmetic_instruction_798, arithmetic_instruction_800, arithmetic_instruction_804,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 820, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_suffix_820 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨837, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨848, by decide⟩ ({s with denom := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_837, arithmetic_instruction_838, arithmetic_instruction_840, arithmetic_instruction_844,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 908, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_suffix_908 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨925, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨936, by decide⟩ ({s with num := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_925, arithmetic_instruction_926, arithmetic_instruction_928, arithmetic_instruction_932,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 948, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem mul_suffix_948 (s : Registers) (a capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨965, by decide⟩ (s) a 0 0 capacity)
      (sourceConfiguration ⟨976, by decide⟩ ({s with denom := a}) 0 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_965, arithmetic_instruction_966, arithmetic_instruction_968, arithmetic_instruction_972,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 453, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem sub_zero_453 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨453, by decide⟩ (s) 0 0 0 capacity)
      (sourceConfiguration ⟨458, by decide⟩ (s) 0 0 0 capacity) := by
  refine ⟨2, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_453, arithmetic_instruction_454,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply] <;> omega
    · dsimp only <;> omega

/-- [proof-guide] Checks the displayed arithmetic register path at address 453, including its branch guard and final register values.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem sub_positive_zero_453 (s : Registers) (n capacity : ℕ) (h0 : s.num = 0) :
    RExec macroProgram (sourceConfiguration ⟨453, by decide⟩ (s) (n + 1) 0 0 capacity)
      (sourceConfiguration ⟨453, by decide⟩ ({s with num := 0}) n 0 0 capacity) := by
  refine ⟨4, ?_⟩
  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,
    arithmetic_instruction_453, arithmetic_instruction_455, arithmetic_instruction_456, arithmetic_instruction_457,
    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,
    Nat.reduceEqDiff,
    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,
    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h0]
  all_goals
    apply registerConfiguration_ext
    · rfl
    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply, h0] <;> omega
    · dsimp only <;> omega

end RiemannMachineVerification
