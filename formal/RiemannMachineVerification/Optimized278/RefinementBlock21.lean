import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path21_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨341, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_285, instruction0_301, instruction0_302, instruction0_304, instruction0_312, instruction0_316, instruction0_320, instruction0_324, instruction0_328, instruction0_336, instruction0_340, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path21_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨205, by decide⟩, (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_149, instruction1_165, instruction1_166, instruction1_168, instruction1_176, instruction1_180, instruction1_184, instruction1_188, instruction1_192, instruction1_200, instruction1_204, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path21_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨342, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_285, instruction0_301, instruction0_302, instruction0_304, instruction0_312, instruction0_316, instruction0_320, instruction0_324, instruction0_328, instruction0_336, instruction0_340, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path21_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨206, by decide⟩, (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 ((v 4) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_149, instruction1_165, instruction1_166, instruction1_168, instruction1_176, instruction1_180, instruction1_184, instruction1_188, instruction1_192, instruction1_200, instruction1_204, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance21 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨11, 11, by decide, by decide, ?_⟩
    rw [path21_0_0 v a h, path21_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, 0, 0, (v 0), 0, ((v 6) + (v 3)), (v 3), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block26 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨11, 11, by decide, by decide, ?_⟩
    rw [path21_1_0 v a h, path21_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, ((v 4) - 1), 0, (v 0), 0, ((v 6) + (v 3)), (v 3), (v 4), 0, 0, ((v 4) - 1), 0]
    have hv0 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 ((v 4) - 1) 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block27 w _ _)

end RiemannMachineVerification.Optimized278
