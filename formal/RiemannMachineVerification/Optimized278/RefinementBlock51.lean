import RiemannMachineVerification.Optimized278.RefinementData

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem path51_0_0 (v : Fin 18 → ℕ) (c : ℕ) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1060, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 1 =
      ⟨none, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_1060, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply] <;> omega
      · dsimp only <;> omega

theorem path51_0_1 (v : Fin 18 → ℕ) (c : ℕ) :
    trajectory (registerStep macroProgram) ⟨some ⟨764, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), c⟩ 1 =
      ⟨none, (values (v 0) 0 0 (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_764, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply] <;> omega
      · dsimp only <;> omega

theorem advance51 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨1060, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨764, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), b⟩ j) := by
  refine ⟨1, 1, by decide, by decide, ?_⟩
  rw [path51_0_0 v a, path51_0_1 v b]
  exact Boundary.halted _ _ rfl rfl

end RiemannMachineVerification.Optimized278
