import RiemannMachineVerification.Generated.RegisterRefinement.Boundaries

namespace RiemannMachineVerification.Implementation

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 41, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path41_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1037, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨1054, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1037, instruction0_1053, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 41, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path41_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨741, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨758, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_741, instruction1_757, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 41, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path41_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1037, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨1055, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1037, instruction0_1053, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 41, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path41_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨741, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨759, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_741, instruction1_757, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 41: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance41 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1037, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨741, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 6) = (v 6) := by omega
  by_cases h : (v 6) = 0
  · have hnew : (v 6) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path41_0_0 v a h, path41_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0, (v 0), 0, 0, (v 3), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 3) 0 0 0 0 0) = (values (w 0) 0 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block44 w _ _)
  · have hnew : (v 6) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path41_1_0 v a h, path41_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) - 1), 0, 0, (v 0), 0, 0, (v 3), 0, 0, ((v 6) - 1), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) - 1) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 3) 0 0 ((v 6) - 1) 0 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block52 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 44, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path44_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1054, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨1059, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1054, instruction0_1058, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 44, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path44_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨758, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), c⟩ 2 =
      ⟨some ⟨763, by decide⟩, (values (v 0) 0 0 0 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_758, instruction1_762, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 44, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path44_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1054, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨1060, by decide⟩, (values (v 0) (v 1) (v 2) ((v 3) - 1) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1054, instruction0_1058, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 44, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path44_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨758, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), c⟩ 2 =
      ⟨some ⟨764, by decide⟩, (values (v 0) 0 0 ((v 3) - 1) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_758, instruction1_762, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 44: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance44 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1054, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨758, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), b⟩ j) := by
  have hc : (v 3) = (v 3) := by omega
  by_cases h : (v 3) = 0
  · have hnew : (v 3) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path44_0_0 v a h, path44_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), 0, 0, (v 5), 0, 0, 0, (v 0), 0, 0, 0, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) 0 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 0 0 0 0 0 0) = (values (w 0) 0 0 0 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block46 w _ _)
  · have hnew : (v 3) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path44_1_0 v a h, path44_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), ((v 3) - 1), 0, (v 5), 0, 0, 0, (v 0), 0, 0, ((v 3) - 1), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) ((v 3) - 1) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 ((v 3) - 1) 0 0 0 0 0) = (values (w 0) 0 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block51 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 46, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path46_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 0) + 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1059, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), c⟩ 34 =
      ⟨some ⟨45, by decide⟩, (values ((v 0) + 1) 1 (v 2) 0 0 (v 5) 0 0 0), (c + 16)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_0, instruction0_1, instruction0_2, instruction0_3, instruction0_4, instruction0_5, instruction0_6, instruction0_7, instruction0_8, instruction0_9, instruction0_10, instruction0_11, instruction0_12, instruction0_13, instruction0_14, instruction0_15, instruction0_16, instruction0_20, instruction0_21, instruction0_22, instruction0_24, instruction0_28, instruction0_32, instruction0_40, instruction0_44, instruction0_1059, instruction0_1061, instruction0_1062, instruction0_1064, instruction0_1072, instruction0_1088, instruction0_1152, instruction0_1280, instruction0_1536, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 46, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path46_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 0) + 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨763, by decide⟩, (values (v 0) 0 0 0 0 0 0 0 0), c⟩ 27 =
      ⟨some ⟨37, by decide⟩, (values ((v 0) + 1) 1 0 0 0 0 0 0 0), (c + 16)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_0, instruction1_1, instruction1_2, instruction1_3, instruction1_4, instruction1_5, instruction1_6, instruction1_7, instruction1_8, instruction1_9, instruction1_10, instruction1_11, instruction1_12, instruction1_13, instruction1_14, instruction1_15, instruction1_16, instruction1_17, instruction1_18, instruction1_20, instruction1_24, instruction1_32, instruction1_36, instruction1_763, instruction1_765, instruction1_766, instruction1_768, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 46, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path46_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 0) + 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1059, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), c⟩ 34 =
      ⟨some ⟨46, by decide⟩, (values ((v 0) + 1) 1 (v 2) 0 (((v 0) + 1) - 1) (v 5) 0 0 0), (c + 16)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_0, instruction0_1, instruction0_2, instruction0_3, instruction0_4, instruction0_5, instruction0_6, instruction0_7, instruction0_8, instruction0_9, instruction0_10, instruction0_11, instruction0_12, instruction0_13, instruction0_14, instruction0_15, instruction0_16, instruction0_20, instruction0_21, instruction0_22, instruction0_24, instruction0_28, instruction0_32, instruction0_40, instruction0_44, instruction0_1059, instruction0_1061, instruction0_1062, instruction0_1064, instruction0_1072, instruction0_1088, instruction0_1152, instruction0_1280, instruction0_1536, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 46, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path46_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 0) + 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨763, by decide⟩, (values (v 0) 0 0 0 0 0 0 0 0), c⟩ 27 =
      ⟨some ⟨38, by decide⟩, (values ((v 0) + 1) 1 0 0 (((v 0) + 1) - 1) 0 0 0 0), (c + 16)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_0, instruction1_1, instruction1_2, instruction1_3, instruction1_4, instruction1_5, instruction1_6, instruction1_7, instruction1_8, instruction1_9, instruction1_10, instruction1_11, instruction1_12, instruction1_13, instruction1_14, instruction1_15, instruction1_16, instruction1_17, instruction1_18, instruction1_20, instruction1_24, instruction1_32, instruction1_36, instruction1_763, instruction1_765, instruction1_766, instruction1_768, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 46: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance46 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1059, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨763, by decide⟩, (values (v 0) 0 0 0 0 0 0 0 0), b⟩ j) := by
  have hc : ((v 0) + 1) = ((v 0) + 1) := by omega
  by_cases h : ((v 0) + 1) = 0
  · have hnew : ((v 0) + 1) = 0 := by omega
    refine ⟨34, 27, by decide, by decide, ?_⟩
    rw [path46_0_0 v a h, path46_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![((v 0) + 1), 1, (v 2), 0, 0, (v 5), 0, 0, 0, ((v 0) + 1), 1, 0, 0, 0, 0, 0, 0, 0]
    have hv0 : (values ((v 0) + 1) 1 (v 2) 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values ((v 0) + 1) 1 0 0 0 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block10 w _ _)
  · have hnew : ((v 0) + 1) ≠ 0 := by omega
    refine ⟨34, 27, by decide, by decide, ?_⟩
    rw [path46_1_0 v a h, path46_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![((v 0) + 1), 1, (v 2), 0, (((v 0) + 1) - 1), (v 5), 0, 0, 0, ((v 0) + 1), 1, 0, 0, (((v 0) + 1) - 1), 0, 0, 0, 0]
    have hv0 : (values ((v 0) + 1) 1 (v 2) 0 (((v 0) + 1) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values ((v 0) + 1) 1 0 0 (((v 0) + 1) - 1) 0 0 0 0) = (values (w 0) (w 1) 0 (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block1 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 50, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path50_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1038, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨1037, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 0)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1036, instruction0_1038, instruction0_1040, instruction0_1048, instruction0_1052, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 50, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path50_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨742, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨741, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 ((v 6) + (v 0)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_740, instruction1_742, instruction1_744, instruction1_752, instruction1_756, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 50, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path50_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1038, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨1038, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 0)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1036, instruction0_1038, instruction0_1040, instruction0_1048, instruction0_1052, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 50, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path50_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨742, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨742, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 ((v 6) + (v 0)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_740, instruction1_742, instruction1_744, instruction1_752, instruction1_756, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 50: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance50 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1038, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨742, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path50_0_0 v a h, path50_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 0)), 0, 0, (v 0), 0, 0, (v 3), 0, 0, ((v 6) + (v 0)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 0)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 3) 0 0 ((v 6) + (v 0)) 0 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block41 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path50_1_0 v a h, path50_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 0)), ((v 7) - 1), 0, (v 0), 0, 0, (v 3), 0, 0, ((v 6) + (v 0)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 0)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 3) 0 0 ((v 6) + (v 0)) ((v 7) - 1) 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block50 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 51, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path51_0_0 (v : Fin 18 → ℕ) (c : ℕ) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1060, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 1 =
      ⟨none, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1060, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 51, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path51_0_1 (v : Fin 18 → ℕ) (c : ℕ) :
    trajectory (registerStep macroProgram) ⟨some ⟨764, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), c⟩ 1 =
      ⟨none, (values (v 0) 0 0 (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_764, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 51: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.halted` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance51 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1060, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨764, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), b⟩ j) := by
  refine ⟨1, 1, by decide, by decide, ?_⟩
  rw [path51_0_0 v a, path51_0_1 v b]
  exact Boundary.halted _ _ rfl rfl

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 52, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path52_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1055, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨1056, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1055, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 52, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path52_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨759, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨760, by decide⟩, (values (v 0) 0 0 0 0 0 (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_759, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 52, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path52_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1055, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨1057, by decide⟩, (values (v 0) (v 1) (v 2) ((v 3) - 1) 0 (v 5) (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1055, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 52, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path52_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨759, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨761, by decide⟩, (values (v 0) 0 0 ((v 3) - 1) 0 0 (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_759, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 52: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance52 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1055, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨759, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 3) = (v 3) := by omega
  by_cases h : (v 3) = 0
  · have hnew : (v 3) = 0 := by omega
    refine ⟨1, 1, by decide, by decide, ?_⟩
    rw [path52_0_0 v a h, path52_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), 0, 0, (v 5), (v 6), 0, 0, (v 0), 0, 0, 0, 0, 0, (v 6), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) 0 0 (v 5) (v 6) 0 0) = (values (w 0) (w 1) (w 2) 0 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 0 0 0 (v 6) 0 0) = (values (w 0) 0 0 0 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block53 w _ _)
  · have hnew : (v 3) ≠ 0 := by omega
    refine ⟨1, 1, by decide, by decide, ?_⟩
    rw [path52_1_0 v a h, path52_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), ((v 3) - 1), 0, (v 5), (v 6), 0, 0, (v 0), 0, 0, ((v 3) - 1), 0, 0, (v 6), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) ((v 3) - 1) 0 (v 5) (v 6) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 ((v 3) - 1) 0 0 (v 6) 0 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block54 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 53, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path53_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1056, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) (v 6) 0 0), c⟩ 3 =
      ⟨some ⟨1054, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1053, instruction0_1056, instruction0_1057, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 53, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path53_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨760, by decide⟩, (values (v 0) 0 0 0 0 0 (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨758, by decide⟩, (values (v 0) 0 0 0 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_757, instruction1_760, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 53, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path53_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1056, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) (v 6) 0 0), c⟩ 3 =
      ⟨some ⟨1055, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1053, instruction0_1056, instruction0_1057, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 53, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path53_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨760, by decide⟩, (values (v 0) 0 0 0 0 0 (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨759, by decide⟩, (values (v 0) 0 0 0 0 0 ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_757, instruction1_760, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 53: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance53 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1056, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨760, by decide⟩, (values (v 0) 0 0 0 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 6) = (v 6) := by omega
  by_cases h : (v 6) = 0
  · have hnew : (v 6) = 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path53_0_0 v a h, path53_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), 0, 0, (v 5), 0, 0, 0, (v 0), 0, 0, 0, 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 0 0 0 0 0 0) = (values (w 0) 0 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block44 w _ _)
  · have hnew : (v 6) ≠ 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path53_1_0 v a h, path53_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), 0, 0, (v 5), ((v 6) - 1), 0, 0, (v 0), 0, 0, 0, 0, 0, ((v 6) - 1), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) 0 0 (v 5) ((v 6) - 1) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 0 0 0 ((v 6) - 1) 0 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block52 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 54, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path54_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1057, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨1054, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1053, instruction0_1057, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 54, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path54_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨761, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨758, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_757, instruction1_761, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 54, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path54_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1057, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨1055, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1053, instruction0_1057, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 54, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path54_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨761, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨759, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_757, instruction1_761, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 54: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance54 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1057, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨761, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 6) = (v 6) := by omega
  by_cases h : (v 6) = 0
  · have hnew : (v 6) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path54_0_0 v a h, path54_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0, (v 0), 0, 0, (v 3), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 3) 0 0 0 0 0) = (values (w 0) 0 0 (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block44 w _ _)
  · have hnew : (v 6) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path54_1_0 v a h, path54_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) - 1), 0, 0, (v 0), 0, 0, (v 3), 0, 0, ((v 6) - 1), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) - 1) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 3) 0 0 ((v 6) - 1) 0 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block52 w _ _)

end RiemannMachineVerification.Implementation
