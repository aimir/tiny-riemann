import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path39_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨949, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 10 =
      ⟨some ⟨1037, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_949, instruction0_965, instruction0_966, instruction0_968, instruction0_972, instruction0_976, instruction0_992, instruction0_1024, instruction0_1032, instruction0_1036, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path39_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨709, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 7 =
      ⟨some ⟨741, by decide⟩, (values (v 0) 0 0 (v 6) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_709, instruction1_725, instruction1_726, instruction1_728, instruction1_732, instruction1_736, instruction1_740, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path39_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨949, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 10 =
      ⟨some ⟨1038, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 ((v 2) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_949, instruction0_965, instruction0_966, instruction0_968, instruction0_972, instruction0_976, instruction0_992, instruction0_1024, instruction0_1032, instruction0_1036, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path39_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨709, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 7 =
      ⟨some ⟨742, by decide⟩, (values (v 0) 0 0 (v 6) 0 0 0 ((v 2) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_709, instruction1_725, instruction1_726, instruction1_728, instruction1_732, instruction1_736, instruction1_740, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance39 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨949, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨709, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 2) = (v 2) := by omega
  by_cases h : (v 2) = 0
  · have hnew : (v 2) = 0 := by omega
    refine ⟨10, 7, by decide, by decide, ?_⟩
    rw [path39_0_0 v a h, path39_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, 0, 0, (v 0), 0, 0, (v 6), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 6) 0 0 0 0 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block41 w _ _)
  · have hnew : (v 2) ≠ 0 := by omega
    refine ⟨10, 7, by decide, by decide, ?_⟩
    rw [path39_1_0 v a h, path39_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, ((v 2) - 1), 0, (v 0), 0, 0, (v 6), 0, 0, 0, ((v 2) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 ((v 2) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 (v 6) 0 0 0 ((v 2) - 1) 0) = (values (w 0) 0 0 (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block50 w _ _)

end RiemannMachineVerification.Optimized278
