import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path19_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨286, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_284, instruction0_286, instruction0_288, instruction0_296, instruction0_300, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path19_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨150, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_148, instruction1_150, instruction1_152, instruction1_160, instruction1_164, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path19_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨286, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨286, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_284, instruction0_286, instruction0_288, instruction0_296, instruction0_300, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path19_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨150, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨150, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_148, instruction1_150, instruction1_152, instruction1_160, instruction1_164, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance19 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨286, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨150, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path19_0_0 v a h, path19_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 2)), 0, 0, (v 0), 0, (v 2), (v 3), (v 4), 0, ((v 6) + (v 2)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 2)) 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block21 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path19_1_0 v a h, path19_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 2)), ((v 7) - 1), 0, (v 0), 0, (v 2), (v 3), (v 4), 0, ((v 6) + (v 2)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block19 w _ _)

end RiemannMachineVerification.Optimized278
