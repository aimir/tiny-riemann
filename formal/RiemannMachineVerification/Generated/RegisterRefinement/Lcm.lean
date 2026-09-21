import RiemannMachineVerification.Generated.RegisterRefinement.Boundaries

namespace RiemannMachineVerification.Implementation

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 1, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path1_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨46, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 9 =
      ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) 0 0 ((v 4) + 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_46, instruction0_47, instruction0_48, instruction0_56, instruction0_64, instruction0_68, instruction0_72, instruction0_80, instruction0_84, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 1, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path1_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨38, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), c⟩ 7 =
      ⟨some ⟨61, by decide⟩, (values (v 0) (v 1) 0 0 ((v 4) + 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_38, instruction1_39, instruction1_40, instruction1_44, instruction1_48, instruction1_56, instruction1_60, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 1, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path1_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨46, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 9 =
      ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) ((v 1) - 1) 0 ((v 4) + 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_46, instruction0_47, instruction0_48, instruction0_56, instruction0_64, instruction0_68, instruction0_72, instruction0_80, instruction0_84, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 1, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path1_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨38, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), c⟩ 7 =
      ⟨some ⟨62, by decide⟩, (values (v 0) (v 1) ((v 1) - 1) 0 ((v 4) + 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_38, instruction1_39, instruction1_40, instruction1_44, instruction1_48, instruction1_56, instruction1_60, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 1: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance1 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨46, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨38, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 1) = (v 1) := by omega
  by_cases h : (v 1) = 0
  · have hnew : (v 1) = 0 := by omega
    refine ⟨9, 7, by decide, by decide, ?_⟩
    rw [path1_0_0 v a h, path1_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, ((v 4) + 1), (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, ((v 4) + 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 ((v 4) + 1) (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 ((v 4) + 1) 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block2 w _ _)
  · have hnew : (v 1) ≠ 0 := by omega
    refine ⟨9, 7, by decide, by decide, ?_⟩
    rw [path1_1_0 v a h, path1_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 1) - 1), 0, ((v 4) + 1), (v 5), 0, 0, 0, (v 0), (v 1), ((v 1) - 1), 0, ((v 4) + 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) ((v 1) - 1) 0 ((v 4) + 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) ((v 1) - 1) 0 ((v 4) + 1) 0 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block3 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 2, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path2_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_85, instruction0_111, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 2, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path2_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨61, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_61, instruction1_87, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 2, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path2_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨113, by decide⟩, (values (v 0) (v 1) 0 ((v 3) - 1) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_85, instruction0_111, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 2, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path2_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨61, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨89, by decide⟩, (values (v 0) (v 1) 0 ((v 3) - 1) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_61, instruction1_87, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 2: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance2 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨61, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 3) = (v 3) := by omega
  by_cases h : (v 3) = 0
  · have hnew : (v 3) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path2_0_0 v a h, path2_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, (v 4), (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) 0 0 (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0) = (values (w 0) (w 1) 0 0 (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block4 w _ _)
  · have hnew : (v 3) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path2_1_0 v a h, path2_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, ((v 3) - 1), (v 4), (v 5), 0, 0, 0, (v 0), (v 1), 0, ((v 3) - 1), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 ((v 3) - 1) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 ((v 3) - 1) (v 4) 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block12 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 3, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path3_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 1 =
      ⟨some ⟨87, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_86, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 3, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path3_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨62, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 1 =
      ⟨some ⟨63, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_62, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 3, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path3_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 1 =
      ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) (v 2) ((v 3) - 1) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_86, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 3, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path3_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨62, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 1 =
      ⟨some ⟨64, by decide⟩, (values (v 0) (v 1) (v 2) ((v 3) - 1) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_62, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 3: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance3 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨62, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 3) = (v 3) := by omega
  by_cases h : (v 3) = 0
  · have hnew : (v 3) = 0 := by omega
    refine ⟨1, 1, by decide, by decide, ?_⟩
    rw [path3_0_0 v a h, path3_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), 0, (v 4), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), 0, (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) 0 (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0) = (values (w 0) (w 1) (w 2) 0 (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block5 w _ _)
  · have hnew : (v 3) ≠ 0 := by omega
    refine ⟨1, 1, by decide, by decide, ?_⟩
    rw [path3_1_0 v a h, path3_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), ((v 3) - 1), (v 4), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), ((v 3) - 1), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) ((v 3) - 1) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) ((v 3) - 1) (v 4) 0 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block13 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 4, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path4_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), c⟩ 4 =
      ⟨some ⟨145, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_112, instruction0_134, instruction0_136, instruction0_144, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 4, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path4_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨111, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_88, instruction1_110, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 4, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path4_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), c⟩ 4 =
      ⟨some ⟨146, by decide⟩, (values (v 0) (v 1) 0 0 ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_112, instruction0_134, instruction0_136, instruction0_144, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 4, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path4_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 ((v 4) - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_88, instruction1_110, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 4: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance4 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨4, 2, by decide, by decide, ?_⟩
    rw [path4_0_0 v a h, path4_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, 0, (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) 0 0 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 0 0 0 0 0) = (values (w 0) (w 1) 0 0 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block6 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨4, 2, by decide, by decide, ?_⟩
    rw [path4_1_0 v a h, path4_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, ((v 4) - 1), (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, ((v 4) - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) 0 0 (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 ((v 4) - 1) 0 0 0 0) = (values (w 0) (w 1) 0 0 (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block7 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 5, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path5_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨87, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0), c⟩ 6 =
      ⟨some ⟨109, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_87, instruction0_90, instruction0_92, instruction0_96, instruction0_104, instruction0_108, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 5, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path5_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨63, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0), c⟩ 6 =
      ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_63, instruction1_66, instruction1_68, instruction1_72, instruction1_80, instruction1_84, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 5, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path5_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨87, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0), c⟩ 6 =
      ⟨some ⟨110, by decide⟩, (values (v 0) (v 1) (v 2) ((v 4) - 1) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_87, instruction0_90, instruction0_92, instruction0_96, instruction0_104, instruction0_108, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 5, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path5_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨63, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0), c⟩ 6 =
      ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) ((v 4) - 1) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_63, instruction1_66, instruction1_68, instruction1_72, instruction1_80, instruction1_84, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 5: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance5 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨87, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨63, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨6, 6, by decide, by decide, ?_⟩
    rw [path5_0_0 v a h, path5_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), 0, (v 4), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), 0, (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) 0 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0) = (values (w 0) (w 1) (w 2) 0 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block8 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨6, 6, by decide, by decide, ?_⟩
    rw [path5_1_0 v a h, path5_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), ((v 4) - 1), (v 4), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), ((v 4) - 1), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) ((v 4) - 1) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) ((v 4) - 1) (v 4) 0 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block9 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 6, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path6_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨145, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨45, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_44, instruction0_145, instruction0_146, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 6, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path6_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨111, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), c⟩ 2 =
      ⟨some ⟨37, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_36, instruction1_111, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 6, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path6_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨145, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨46, by decide⟩, (values (v 0) (v 1) 0 0 (0 - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_44, instruction0_145, instruction0_146, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 6, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path6_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨111, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), c⟩ 2 =
      ⟨some ⟨38, by decide⟩, (values (v 0) (v 1) 0 0 (0 - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_36, instruction1_111, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 6: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance6 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨145, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨111, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), b⟩ j) := by
  have hc : 0 = 0 := by omega
  by_cases h : 0 = 0
  · have hnew : 0 = 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path6_0_0 v a h, path6_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, 0, (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 0 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block10 w _ _)
  · have hnew : 0 ≠ 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path6_1_0 v a h, path6_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, (0 - 1), (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, (0 - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 (0 - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 (0 - 1) 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block1 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 7, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path7_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨146, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨45, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_44, instruction0_146, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 7, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path7_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨37, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_36, instruction1_112, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 7, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path7_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨146, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨46, by decide⟩, (values (v 0) (v 1) 0 0 ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_44, instruction0_146, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 7, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path7_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨38, by decide⟩, (values (v 0) (v 1) 0 0 ((v 4) - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_36, instruction1_112, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 7: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance7 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨146, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path7_0_0 v a h, path7_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, 0, (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 0 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block10 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path7_1_0 v a h, path7_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, ((v 4) - 1), (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, ((v 4) - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 ((v 4) - 1) 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block1 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 8, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path8_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨109, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_84, instruction0_109, instruction0_110, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 8, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path8_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 0 0 0 0), c⟩ 2 =
      ⟨some ⟨61, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_60, instruction1_85, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 8, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path8_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨109, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) ((v 2) - 1) 0 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_84, instruction0_109, instruction0_110, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 8, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path8_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 0 0 0 0), c⟩ 2 =
      ⟨some ⟨62, by decide⟩, (values (v 0) (v 1) ((v 2) - 1) 0 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_60, instruction1_85, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 8: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance8 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨109, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 0 0 0 0), b⟩ j) := by
  have hc : (v 2) = (v 2) := by omega
  by_cases h : (v 2) = 0
  · have hnew : (v 2) = 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path8_0_0 v a h, path8_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 0, 0, (v 5), 0, 0, 0, (v 0), (v 1), 0, 0, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 0 0 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block2 w _ _)
  · have hnew : (v 2) ≠ 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path8_1_0 v a h, path8_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 2) - 1), 0, 0, (v 5), 0, 0, 0, (v 0), (v 1), ((v 2) - 1), 0, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) ((v 2) - 1) 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) ((v 2) - 1) 0 0 0 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block3 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 9, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path9_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨110, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_84, instruction0_110, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 9, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path9_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨61, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_60, instruction1_86, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 9, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path9_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨110, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) ((v 2) - 1) (v 3) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_84, instruction0_110, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 9, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path9_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨62, by decide⟩, (values (v 0) (v 1) ((v 2) - 1) (v 3) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_60, instruction1_86, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 9: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance9 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨110, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 2) = (v 2) := by omega
  by_cases h : (v 2) = 0
  · have hnew : (v 2) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path9_0_0 v a h, path9_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, (v 3), (v 4), (v 5), 0, 0, 0, (v 0), (v 1), 0, (v 3), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block2 w _ _)
  · have hnew : (v 2) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path9_1_0 v a h, path9_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 2) - 1), (v 3), (v 4), (v 5), 0, 0, 0, (v 0), (v 1), ((v 2) - 1), (v 3), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) ((v 2) - 1) (v 3) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) ((v 2) - 1) (v 3) (v 4) 0 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block3 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 10, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path10_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨45, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 (v 5) 0 0 0), c⟩ 16 =
      ⟨some ⟨269, by decide⟩, (values (v 0) (v 1) 0 1 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_45, instruction0_147, instruction0_148, instruction0_152, instruction0_156, instruction0_160, instruction0_168, instruction0_172, instruction0_176, instruction0_192, instruction0_256, instruction0_260, instruction0_261, instruction0_262, instruction0_264, instruction0_268, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 10, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path10_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨37, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 0 0 0 0), c⟩ 8 =
      ⟨some ⟨134, by decide⟩, (values (v 0) 0 0 1 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_37, instruction1_113, instruction1_114, instruction1_116, instruction1_120, instruction1_128, instruction1_132, instruction1_133, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 10, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path10_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨45, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 (v 5) 0 0 0), c⟩ 16 =
      ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) 0 1 ((v 1) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_45, instruction0_147, instruction0_148, instruction0_152, instruction0_156, instruction0_160, instruction0_168, instruction0_172, instruction0_176, instruction0_192, instruction0_256, instruction0_260, instruction0_261, instruction0_262, instruction0_264, instruction0_268, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 10, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path10_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨37, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 0 0 0 0), c⟩ 8 =
      ⟨some ⟨135, by decide⟩, (values (v 0) 0 0 1 ((v 1) - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_37, instruction1_113, instruction1_114, instruction1_116, instruction1_120, instruction1_128, instruction1_132, instruction1_133, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 10: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance10 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨45, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨37, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 0 0 0 0), b⟩ j) := by
  have hc : (v 1) = (v 1) := by omega
  by_cases h : (v 1) = 0
  · have hnew : (v 1) = 0 := by omega
    refine ⟨16, 8, by decide, by decide, ?_⟩
    rw [path10_0_0 v a h, path10_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 1, 0, (v 5), 0, 0, 0, (v 0), 0, 0, 1, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 1 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 1 0 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block11 w _ _)
  · have hnew : (v 1) ≠ 0 := by omega
    refine ⟨16, 8, by decide, by decide, ?_⟩
    rw [path10_1_0 v a h, path10_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, 1, ((v 1) - 1), (v 5), 0, 0, 0, (v 0), 0, 0, 1, ((v 1) - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 1 ((v 1) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 1 ((v 1) - 1) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block17 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 12, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path12_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨113, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), c⟩ 8 =
      ⟨some ⟨45, by decide⟩, (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_44, instruction0_113, instruction0_114, instruction0_116, instruction0_120, instruction0_128, instruction0_132, instruction0_133, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 12, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path12_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨89, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), c⟩ 8 =
      ⟨some ⟨37, by decide⟩, (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_36, instruction1_89, instruction1_90, instruction1_92, instruction1_96, instruction1_104, instruction1_108, instruction1_109, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 12, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path12_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨113, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), c⟩ 8 =
      ⟨some ⟨46, by decide⟩, (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) ((v 0) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_44, instruction0_113, instruction0_114, instruction0_116, instruction0_120, instruction0_128, instruction0_132, instruction0_133, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 12, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path12_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨89, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), c⟩ 8 =
      ⟨some ⟨38, by decide⟩, (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) ((v 0) - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_36, instruction1_89, instruction1_90, instruction1_92, instruction1_96, instruction1_104, instruction1_108, instruction1_109, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 12: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance12 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨113, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨89, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 0) = (v 0) := by omega
  by_cases h : (v 0) = 0
  · have hnew : (v 0) = 0 := by omega
    refine ⟨8, 8, by decide, by decide, ?_⟩
    rw [path12_0_0 v a h, path12_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), ((v 1) + 1), 0, ((v 3) + 1), 0, (v 5), 0, 0, 0, (v 0), ((v 1) + 1), 0, ((v 3) + 1), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) 0 (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) 0 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block10 w _ _)
  · have hnew : (v 0) ≠ 0 := by omega
    refine ⟨8, 8, by decide, by decide, ?_⟩
    rw [path12_1_0 v a h, path12_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), ((v 1) + 1), 0, ((v 3) + 1), ((v 0) - 1), (v 5), 0, 0, 0, (v 0), ((v 1) + 1), 0, ((v 3) + 1), ((v 0) - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) ((v 0) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) ((v 1) + 1) 0 ((v 3) + 1) ((v 0) - 1) 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block1 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 13, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path13_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 3) + 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨109, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_88, instruction0_89, instruction0_108, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 13, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path13_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 3) + 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨64, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 3 =
      ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_64, instruction1_65, instruction1_84, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 13, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path13_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 3) + 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨110, by decide⟩, (values (v 0) (v 1) (v 2) (((v 3) + 1) - 1) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_88, instruction0_89, instruction0_108, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 13, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path13_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 3) + 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨64, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 3 =
      ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (((v 3) + 1) - 1) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_64, instruction1_65, instruction1_84, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 13: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance13 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨64, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : ((v 3) + 1) = ((v 3) + 1) := by omega
  by_cases h : ((v 3) + 1) = 0
  · have hnew : ((v 3) + 1) = 0 := by omega
    refine ⟨3, 3, by decide, by decide, ?_⟩
    rw [path13_0_0 v a h, path13_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), 0, (v 4), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), 0, (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) 0 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0) = (values (w 0) (w 1) (w 2) 0 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block8 w _ _)
  · have hnew : ((v 3) + 1) ≠ 0 := by omega
    refine ⟨3, 3, by decide, by decide, ?_⟩
    rw [path13_1_0 v a h, path13_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (((v 3) + 1) - 1), (v 4), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (((v 3) + 1) - 1), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (((v 3) + 1) - 1) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (((v 3) + 1) - 1) (v 4) 0 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block9 w _ _)

end RiemannMachineVerification.Implementation
