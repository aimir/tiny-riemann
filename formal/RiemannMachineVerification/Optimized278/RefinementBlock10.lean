import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

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

end RiemannMachineVerification.Optimized278
