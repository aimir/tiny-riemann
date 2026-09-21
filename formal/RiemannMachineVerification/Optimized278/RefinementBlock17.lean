import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path17_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 5 =
      ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_270, instruction0_271, instruction0_272, instruction0_280, instruction0_284, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path17_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 4 =
      ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_135, instruction1_136, instruction1_144, instruction1_148, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path17_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 5 =
      ⟨some ⟨286, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_270, instruction0_271, instruction0_272, instruction0_280, instruction0_284, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path17_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 4 =
      ⟨some ⟨150, by decide⟩, (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 (((v 4) + 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_135, instruction1_136, instruction1_144, instruction1_148, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance17 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : ((v 4) + 1) = ((v 4) + 1) := by omega
  by_cases h : ((v 4) + 1) = 0
  · have hnew : ((v 4) + 1) = 0 := by omega
    refine ⟨5, 4, by decide, by decide, ?_⟩
    rw [path17_0_0 v a h, path17_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 3), ((v 4) + 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block21 w _ _)
  · have hnew : ((v 4) + 1) ≠ 0 := by omega
    refine ⟨5, 4, by decide, by decide, ?_⟩
    rw [path17_1_0 v a h, path17_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, (((v 4) + 1) - 1), 0, (v 0), 0, (v 2), (v 3), ((v 4) + 1), 0, 0, (((v 4) + 1) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 (((v 4) + 1) - 1) 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block19 w _ _)

end RiemannMachineVerification.Optimized278
