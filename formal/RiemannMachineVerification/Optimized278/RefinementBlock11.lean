import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path11_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨269, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 15 =
      ⟨some ⟨437, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_269, instruction0_371, instruction0_372, instruction0_376, instruction0_384, instruction0_388, instruction0_392, instruction0_400, instruction0_404, instruction0_408, instruction0_416, instruction0_420, instruction0_424, instruction0_432, instruction0_436, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path11_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨134, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), c⟩ 11 =
      ⟨some ⟨289, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_134, instruction1_235, instruction1_236, instruction1_240, instruction1_256, instruction1_264, instruction1_268, instruction1_272, instruction1_280, instruction1_284, instruction1_288, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path11_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨269, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 15 =
      ⟨some ⟨438, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 ((v 3) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_269, instruction0_371, instruction0_372, instruction0_376, instruction0_384, instruction0_388, instruction0_392, instruction0_400, instruction0_404, instruction0_408, instruction0_416, instruction0_420, instruction0_424, instruction0_432, instruction0_436, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem path11_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨134, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), c⟩ 11 =
      ⟨some ⟨290, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 ((v 3) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_134, instruction1_235, instruction1_236, instruction1_240, instruction1_256, instruction1_264, instruction1_268, instruction1_272, instruction1_280, instruction1_284, instruction1_288, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

theorem advance11 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨269, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨134, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), b⟩ j) := by
  have hc : (v 3) = (v 3) := by omega
  by_cases h : (v 3) = 0
  · have hnew : (v 3) = 0 := by omega
    refine ⟨15, 11, by decide, by decide, ?_⟩
    rw [path11_0_0 v a h, path11_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), 0, 0, 0, (v 0), 0, (v 2), 0, (v 0), (v 3), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block14 w _ _)
  · have hnew : (v 3) ≠ 0 := by omega
    refine ⟨15, 11, by decide, by decide, ?_⟩
    rw [path11_1_0 v a h, path11_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), 0, ((v 3) - 1), 0, (v 0), 0, (v 2), 0, (v 0), (v 3), 0, ((v 3) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 ((v 3) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 ((v 3) - 1) 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block15 w _ _)

end RiemannMachineVerification.Optimized278
