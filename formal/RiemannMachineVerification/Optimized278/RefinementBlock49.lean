import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path49_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨910, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨909, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_908, instruction0_910, instruction0_912, instruction0_920, instruction0_924, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path49_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨670, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨669, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_668, instruction1_670, instruction1_672, instruction1_680, instruction1_684, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path49_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨910, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨910, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_908, instruction0_910, instruction0_912, instruction0_920, instruction0_924, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path49_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨670, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨670, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_668, instruction1_670, instruction1_672, instruction1_680, instruction1_684, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance49 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨910, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨670, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path49_0_0 v a h, path49_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), 0, 0, (v 0), 0, (v 2), (v 3), 0, 0, ((v 6) + (v 2)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 2)) 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block36 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path49_1_0 v a h, path49_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), ((v 7) - 1), 0, (v 0), 0, (v 2), (v 3), 0, 0, ((v 6) + (v 2)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block49 w _ _)

end RiemannMachineVerification.Optimized278
