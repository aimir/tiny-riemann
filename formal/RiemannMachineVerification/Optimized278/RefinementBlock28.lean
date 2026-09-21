import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path28_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨781, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨821, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_781, instruction0_797, instruction0_798, instruction0_800, instruction0_804, instruction0_808, instruction0_816, instruction0_820, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path28_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 7 =
      ⟨some ⟨629, by decide⟩, (values (v 0) 0 (v 6) (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_597, instruction1_613, instruction1_614, instruction1_616, instruction1_620, instruction1_624, instruction1_628, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path28_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨781, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨822, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_781, instruction0_797, instruction0_798, instruction0_800, instruction0_804, instruction0_808, instruction0_816, instruction0_820, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path28_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 7 =
      ⟨some ⟨630, by decide⟩, (values (v 0) 0 (v 6) (v 3) 0 0 0 ((v 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_597, instruction1_613, instruction1_614, instruction1_616, instruction1_620, instruction1_624, instruction1_628, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance28 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨781, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 1) = (v 1) := by omega
  by_cases h : (v 1) = 0
  · have hnew : (v 1) = 0 := by omega
    refine ⟨8, 7, by decide, by decide, ?_⟩
    rw [path28_0_0 v a h, path28_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, 0, 0, (v 0), 0, (v 6), (v 3), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 6) (v 3) 0 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block32 w _ _)
  · have hnew : (v 1) ≠ 0 := by omega
    refine ⟨8, 7, by decide, by decide, ?_⟩
    rw [path28_1_0 v a h, path28_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, ((v 1) - 1), 0, (v 0), 0, (v 6), (v 3), 0, 0, 0, ((v 1) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 1) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 6) (v 3) 0 0 0 ((v 1) - 1) 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block47 w _ _)

end RiemannMachineVerification.Optimized278
