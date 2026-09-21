import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

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

end RiemannMachineVerification.Optimized278
