import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

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

end RiemannMachineVerification.Optimized278
