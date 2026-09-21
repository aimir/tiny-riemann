import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path16_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨454, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0), c⟩ 13 =
      ⟨some ⟨525, by decide⟩, (values (v 0) (v 2) 0 1 0 (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_454, instruction0_458, instruction0_460, instruction0_464, instruction0_472, instruction0_476, instruction0_480, instruction0_512, instruction0_516, instruction0_517, instruction0_518, instruction0_520, instruction0_524, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path16_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨310, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0), c⟩ 7 =
      ⟨some ⟨390, by decide⟩, (values (v 0) (v 2) 0 1 0 (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_310, instruction1_314, instruction1_316, instruction1_320, instruction1_384, instruction1_388, instruction1_389, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path16_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨454, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0), c⟩ 13 =
      ⟨some ⟨526, by decide⟩, (values (v 0) (v 2) 0 1 ((v 0) - 1) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_454, instruction0_458, instruction0_460, instruction0_464, instruction0_472, instruction0_476, instruction0_480, instruction0_512, instruction0_516, instruction0_517, instruction0_518, instruction0_520, instruction0_524, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path16_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 0) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨310, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0), c⟩ 7 =
      ⟨some ⟨391, by decide⟩, (values (v 0) (v 2) 0 1 ((v 0) - 1) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_310, instruction1_314, instruction1_316, instruction1_320, instruction1_384, instruction1_388, instruction1_389, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance16 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨454, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨310, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0), b⟩ j) := by
  have hc : (v 0) = (v 0) := by omega
  by_cases h : (v 0) = 0
  · have hnew : (v 0) = 0 := by omega
    refine ⟨13, 7, by decide, by decide, ?_⟩
    rw [path16_0_0 v a h, path16_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 2), 0, 1, 0, (v 3), 0, 0, 0, (v 0), (v 2), 0, 1, 0, (v 3), 0, 0, 0]
    have hv0 : (values (v 0) (v 2) 0 1 0 (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 2) 0 1 0 (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block18 w _ _)
  · have hnew : (v 0) ≠ 0 := by omega
    refine ⟨13, 7, by decide, by decide, ?_⟩
    rw [path16_1_0 v a h, path16_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 2), 0, 1, ((v 0) - 1), (v 3), 0, 0, 0, (v 0), (v 2), 0, 1, ((v 0) - 1), (v 3), 0, 0, 0]
    have hv0 : (values (v 0) (v 2) 0 1 ((v 0) - 1) (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 2) 0 1 ((v 0) - 1) (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block24 w _ _)

end RiemannMachineVerification.Optimized278
