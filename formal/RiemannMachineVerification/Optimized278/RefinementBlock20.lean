import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path20_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨653, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨693, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_653, instruction0_669, instruction0_670, instruction0_672, instruction0_676, instruction0_680, instruction0_688, instruction0_692, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path20_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨565, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_525, instruction1_541, instruction1_542, instruction1_544, instruction1_548, instruction1_552, instruction1_560, instruction1_564, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path20_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨653, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨694, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 3) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_653, instruction0_669, instruction0_670, instruction0_672, instruction0_676, instruction0_680, instruction0_688, instruction0_692, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path20_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨566, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 3) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_525, instruction1_541, instruction1_542, instruction1_544, instruction1_548, instruction1_552, instruction1_560, instruction1_564, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance20 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨653, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), b⟩ j) := by
  have hc : (v 3) = (v 3) := by omega
  by_cases h : (v 3) = 0
  · have hnew : (v 3) = 0 := by omega
    refine ⟨8, 8, by decide, by decide, ?_⟩
    rw [path20_0_0 v a h, path20_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, 0, 0, (v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block22 w _ _)
  · have hnew : (v 3) ≠ 0 := by omega
    refine ⟨8, 8, by decide, by decide, ?_⟩
    rw [path20_1_0 v a h, path20_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, ((v 3) - 1), 0, (v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, ((v 3) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 3) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 3) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block23 w _ _)

end RiemannMachineVerification.Optimized278
