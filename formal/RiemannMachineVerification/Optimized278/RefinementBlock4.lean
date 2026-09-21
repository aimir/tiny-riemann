import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

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

end RiemannMachineVerification.Optimized278
