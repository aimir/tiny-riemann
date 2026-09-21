import RiemannMachineVerification.Generated.RegisterRefinement.Boundaries

namespace RiemannMachineVerification.Implementation

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 14, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path14_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨437, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨454, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_437, instruction0_453, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 14, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path14_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨289, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨310, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_289, instruction1_309, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 14, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path14_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨437, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨455, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_437, instruction0_453, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 14, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path14_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨289, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨311, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_289, instruction1_309, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 14: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance14 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨437, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨289, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), b⟩ j) := by
  have hc : (v 6) = (v 6) := by omega
  by_cases h : (v 6) = 0
  · have hnew : (v 6) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path14_0_0 v a h, path14_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), 0, 0, 0, (v 0), 0, (v 2), 0, (v 0), (v 3), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block16 w _ _)
  · have hnew : (v 6) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path14_1_0 v a h, path14_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), ((v 6) - 1), 0, 0, (v 0), 0, (v 2), 0, (v 0), (v 3), ((v 6) - 1), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) - 1) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) - 1) 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block25 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 15, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path15_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨438, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨437, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) + (v 0)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_436, instruction0_438, instruction0_440, instruction0_448, instruction0_452, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 15, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path15_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨290, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) (v 7) 0), c⟩ 6 =
      ⟨some ⟨289, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) + (v 0)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_288, instruction1_290, instruction1_292, instruction1_296, instruction1_304, instruction1_308, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 15, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path15_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨438, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨438, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) + (v 0)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_436, instruction0_438, instruction0_440, instruction0_448, instruction0_452, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 15, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path15_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨290, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) (v 7) 0), c⟩ 6 =
      ⟨some ⟨290, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) + (v 0)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_288, instruction1_290, instruction1_292, instruction1_296, instruction1_304, instruction1_308, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 15: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance15 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨438, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨290, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 6, by decide, by decide, ?_⟩
    rw [path15_0_0 v a h, path15_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), ((v 6) + (v 0)), 0, 0, (v 0), 0, (v 2), 0, (v 0), (v 3), ((v 6) + (v 0)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) + (v 0)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) + (v 0)) 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block14 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 6, by decide, by decide, ?_⟩
    rw [path15_1_0 v a h, path15_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), ((v 6) + (v 0)), ((v 7) - 1), 0, (v 0), 0, (v 2), 0, (v 0), (v 3), ((v 6) + (v 0)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) + (v 0)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) + (v 0)) ((v 7) - 1) 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block15 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 16, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 16, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 16, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 16, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 16: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 20, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 20, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 20, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 20, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 20: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 22, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path22_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 5) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨693, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 10 =
      ⟨some ⟨781, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_693, instruction0_709, instruction0_710, instruction0_712, instruction0_716, instruction0_720, instruction0_736, instruction0_768, instruction0_776, instruction0_780, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 22, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path22_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 5) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨565, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 7 =
      ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_565, instruction1_581, instruction1_582, instruction1_584, instruction1_588, instruction1_592, instruction1_596, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 22, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path22_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 5) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨693, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 10 =
      ⟨some ⟨782, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 ((v 5) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_693, instruction0_709, instruction0_710, instruction0_712, instruction0_716, instruction0_720, instruction0_736, instruction0_768, instruction0_776, instruction0_780, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 22, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path22_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 5) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨565, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 7 =
      ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 0 0 ((v 5) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_565, instruction1_581, instruction1_582, instruction1_584, instruction1_588, instruction1_592, instruction1_596, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 22: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance22 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨693, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨565, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), b⟩ j) := by
  have hc : (v 5) = (v 5) := by omega
  by_cases h : (v 5) = 0
  · have hnew : (v 5) = 0 := by omega
    refine ⟨10, 7, by decide, by decide, ?_⟩
    rw [path22_0_0 v a h, path22_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 6), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 6) 0 0 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block28 w _ _)
  · have hnew : (v 5) ≠ 0 := by omega
    refine ⟨10, 7, by decide, by decide, ?_⟩
    rw [path22_1_0 v a h, path22_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, ((v 5) - 1), 0, (v 0), (v 1), (v 2), (v 6), 0, 0, 0, ((v 5) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 ((v 5) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 6) 0 0 0 ((v 5) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block33 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 23, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path23_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨694, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨693, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_692, instruction0_694, instruction0_696, instruction0_704, instruction0_708, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 23, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path23_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨566, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨565, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_564, instruction1_566, instruction1_568, instruction1_576, instruction1_580, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 23, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path23_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨694, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨694, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_692, instruction0_694, instruction0_696, instruction0_704, instruction0_708, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 23, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path23_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨566, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨566, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_564, instruction1_566, instruction1_568, instruction1_576, instruction1_580, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 23: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance23 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨694, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨566, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path23_0_0 v a h, path23_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), 0, 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block22 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path23_1_0 v a h, path23_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), ((v 7) - 1), 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block23 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 25, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path25_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨455, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨456, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_455, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 25, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path25_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨311, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨312, by decide⟩, (values (v 0) 0 0 0 (v 0) (v 3) (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_311, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 25, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path25_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨455, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨457, by decide⟩, (values (v 0) (v 1) ((v 2) - 1) (v 3) (v 0) (v 3) (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_455, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 25, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path25_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨311, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), c⟩ 1 =
      ⟨some ⟨313, by decide⟩, (values (v 0) 0 ((v 2) - 1) 0 (v 0) (v 3) (v 6) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_311, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 25: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance25 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨455, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨311, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), b⟩ j) := by
  have hc : (v 2) = (v 2) := by omega
  by_cases h : (v 2) = 0
  · have hnew : (v 2) = 0 := by omega
    refine ⟨1, 1, by decide, by decide, ?_⟩
    rw [path25_0_0 v a h, path25_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, (v 3), (v 0), (v 3), (v 6), 0, 0, (v 0), 0, 0, 0, (v 0), (v 3), (v 6), 0, 0]
    have hv0 : (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) (v 6) 0 0) = (values (w 0) (w 1) 0 (w 3) (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 0 (v 0) (v 3) (v 6) 0 0) = (values (w 0) 0 0 0 (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block30 w _ _)
  · have hnew : (v 2) ≠ 0 := by omega
    refine ⟨1, 1, by decide, by decide, ?_⟩
    rw [path25_1_0 v a h, path25_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 2) - 1), (v 3), (v 0), (v 3), (v 6), 0, 0, (v 0), 0, ((v 2) - 1), 0, (v 0), (v 3), (v 6), 0, 0]
    have hv0 : (values (v 0) (v 1) ((v 2) - 1) (v 3) (v 0) (v 3) (v 6) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 ((v 2) - 1) 0 (v 0) (v 3) (v 6) 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block43 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 28, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 28, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 28, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 28, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 28: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 30, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path30_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨456, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 3 =
      ⟨some ⟨454, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_453, instruction0_456, instruction0_457, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 30, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path30_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨312, by decide⟩, (values (v 0) 0 0 0 (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨310, by decide⟩, (values (v 0) 0 0 0 (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_309, instruction1_312, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 30, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path30_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨456, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 3 =
      ⟨some ⟨455, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_453, instruction0_456, instruction0_457, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 30, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path30_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨312, by decide⟩, (values (v 0) 0 0 0 (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨311, by decide⟩, (values (v 0) 0 0 0 (v 0) (v 3) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_309, instruction1_312, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 30: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance30 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨456, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨312, by decide⟩, (values (v 0) 0 0 0 (v 0) (v 3) (v 6) 0 0), b⟩ j) := by
  have hc : (v 6) = (v 6) := by omega
  by_cases h : (v 6) = 0
  · have hnew : (v 6) = 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path30_0_0 v a h, path30_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, (v 3), (v 0), (v 3), 0, 0, 0, (v 0), 0, 0, 0, (v 0), (v 3), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 0 (v 0) (v 3) 0 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block16 w _ _)
  · have hnew : (v 6) ≠ 0 := by omega
    refine ⟨3, 2, by decide, by decide, ?_⟩
    rw [path30_1_0 v a h, path30_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), 0, (v 3), (v 0), (v 3), ((v 6) - 1), 0, 0, (v 0), 0, 0, 0, (v 0), (v 3), ((v 6) - 1), 0, 0]
    have hv0 : (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) ((v 6) - 1) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 0 0 (v 0) (v 3) ((v 6) - 1) 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block25 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 32, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path32_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨821, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 10 =
      ⟨some ⟨909, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_821, instruction0_837, instruction0_838, instruction0_840, instruction0_844, instruction0_848, instruction0_864, instruction0_896, instruction0_904, instruction0_908, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 32, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path32_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨629, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨669, by decide⟩, (values (v 0) 0 (v 2) (v 6) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_629, instruction1_645, instruction1_646, instruction1_648, instruction1_652, instruction1_656, instruction1_664, instruction1_668, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 32, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path32_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨821, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 10 =
      ⟨some ⟨910, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 ((v 2) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_821, instruction0_837, instruction0_838, instruction0_840, instruction0_844, instruction0_848, instruction0_864, instruction0_896, instruction0_904, instruction0_908, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 32, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path32_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨629, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨670, by decide⟩, (values (v 0) 0 (v 2) (v 6) 0 0 0 ((v 2) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_629, instruction1_645, instruction1_646, instruction1_648, instruction1_652, instruction1_656, instruction1_664, instruction1_668, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 32: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance32 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨821, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨629, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 2) = (v 2) := by omega
  by_cases h : (v 2) = 0
  · have hnew : (v 2) = 0 := by omega
    refine ⟨10, 8, by decide, by decide, ?_⟩
    rw [path32_0_0 v a h, path32_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 6), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 6) 0 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block36 w _ _)
  · have hnew : (v 2) ≠ 0 := by omega
    refine ⟨10, 8, by decide, by decide, ?_⟩
    rw [path32_1_0 v a h, path32_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, ((v 2) - 1), 0, (v 0), 0, (v 2), (v 6), 0, 0, 0, ((v 2) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 ((v 2) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 6) 0 0 0 ((v 2) - 1) 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block49 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 33, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path33_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨782, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨781, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_780, instruction0_782, instruction0_784, instruction0_792, instruction0_796, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 33, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path33_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_596, instruction1_598, instruction1_600, instruction1_608, instruction1_612, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 33, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path33_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨782, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨782, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_780, instruction0_782, instruction0_784, instruction0_792, instruction0_796, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 33, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path33_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_596, instruction1_598, instruction1_600, instruction1_608, instruction1_612, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 33: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance33 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨782, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path33_0_0 v a h, path33_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), 0, 0, (v 0), (v 1), (v 2), (v 3), 0, 0, ((v 6) + (v 2)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 0 ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block28 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path33_1_0 v a h, path33_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), ((v 7) - 1), 0, (v 0), (v 1), (v 2), (v 3), 0, 0, ((v 6) + (v 2)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 0 ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block33 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 36, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path36_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨909, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨949, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_909, instruction0_925, instruction0_926, instruction0_928, instruction0_932, instruction0_936, instruction0_944, instruction0_948, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 36, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path36_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨669, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨709, by decide⟩, (values (v 0) 0 (v 6) (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_669, instruction1_685, instruction1_686, instruction1_688, instruction1_692, instruction1_696, instruction1_704, instruction1_708, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 36, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path36_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨909, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨950, by decide⟩, (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 3) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_909, instruction0_925, instruction0_926, instruction0_928, instruction0_932, instruction0_936, instruction0_944, instruction0_948, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 36, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path36_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 3) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨669, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), c⟩ 8 =
      ⟨some ⟨710, by decide⟩, (values (v 0) 0 (v 6) (v 3) 0 0 0 ((v 3) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_669, instruction1_685, instruction1_686, instruction1_688, instruction1_692, instruction1_696, instruction1_704, instruction1_708, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 36: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance36 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨909, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨669, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 3) = (v 3) := by omega
  by_cases h : (v 3) = 0
  · have hnew : (v 3) = 0 := by omega
    refine ⟨8, 8, by decide, by decide, ?_⟩
    rw [path36_0_0 v a h, path36_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, 0, 0, (v 0), 0, (v 6), (v 3), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 6) (v 3) 0 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block39 w _ _)
  · have hnew : (v 3) ≠ 0 := by omega
    refine ⟨8, 8, by decide, by decide, ?_⟩
    rw [path36_1_0 v a h, path36_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 6), (v 3), 0, (v 5), 0, ((v 3) - 1), 0, (v 0), 0, (v 6), (v 3), 0, 0, 0, ((v 3) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 6) (v 3) 0 (v 5) 0 ((v 3) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 6) (v 3) 0 0 0 ((v 3) - 1) 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block48 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 39, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 39, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 39, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 39, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 39: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 43, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path43_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨457, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨454, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_453, instruction0_457, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 43, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path43_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨313, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨310, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_309, instruction1_313, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 43, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path43_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨457, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨455, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_453, instruction0_457, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 43, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path43_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 6) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨313, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), c⟩ 2 =
      ⟨some ⟨311, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) - 1) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_309, instruction1_313, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 43: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance43 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨457, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨313, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), b⟩ j) := by
  have hc : (v 6) = (v 6) := by omega
  by_cases h : (v 6) = 0
  · have hnew : (v 6) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path43_0_0 v a h, path43_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), 0, 0, 0, (v 0), 0, (v 2), 0, (v 0), (v 3), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block16 w _ _)
  · have hnew : (v 6) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path43_1_0 v a h, path43_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 0), (v 3), ((v 6) - 1), 0, 0, (v 0), 0, (v 2), 0, (v 0), (v 3), ((v 6) - 1), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) ((v 6) - 1) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) 0 (v 0) (v 3) ((v 6) - 1) 0 0) = (values (w 0) 0 (w 2) 0 (w 0) (w 3) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block25 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 45, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path45_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨654, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨653, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_652, instruction0_654, instruction0_656, instruction0_664, instruction0_668, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 45, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path45_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_524, instruction1_526, instruction1_528, instruction1_536, instruction1_540, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 45, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path45_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨654, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨654, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_652, instruction0_654, instruction0_656, instruction0_664, instruction0_668, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 45, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path45_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_524, instruction1_526, instruction1_528, instruction1_536, instruction1_540, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 45: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance45 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨654, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path45_0_0 v a h, path45_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), 0, 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block20 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path45_1_0 v a h, path45_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), ((v 7) - 1), 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 2)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block45 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 47, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path47_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨822, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨821, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_820, instruction0_822, instruction0_824, instruction0_832, instruction0_836, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 47, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path47_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨630, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨629, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_628, instruction1_630, instruction1_632, instruction1_640, instruction1_644, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 47, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path47_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨822, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨822, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_820, instruction0_822, instruction0_824, instruction0_832, instruction0_836, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 47, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path47_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨630, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨630, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_628, instruction1_630, instruction1_632, instruction1_640, instruction1_644, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 47: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance47 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨822, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨630, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path47_0_0 v a h, path47_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), 0, 0, (v 0), 0, (v 2), (v 3), 0, 0, ((v 6) + (v 3)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block32 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path47_1_0 v a h, path47_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), ((v 7) - 1), 0, (v 0), 0, (v 2), (v 3), 0, 0, ((v 6) + (v 3)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block47 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 48, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path48_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨950, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨949, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_948, instruction0_950, instruction0_952, instruction0_960, instruction0_964, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 48, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path48_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨710, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨709, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_708, instruction1_710, instruction1_712, instruction1_720, instruction1_724, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 48, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path48_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨950, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨950, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_948, instruction0_950, instruction0_952, instruction0_960, instruction0_964, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 48, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path48_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨710, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨710, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_708, instruction1_710, instruction1_712, instruction1_720, instruction1_724, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 48: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance48 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨950, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨710, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path48_0_0 v a h, path48_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), 0, 0, (v 0), 0, (v 2), (v 3), 0, 0, ((v 6) + (v 3)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block39 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path48_1_0 v a h, path48_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), ((v 6) + (v 3)), ((v 7) - 1), 0, (v 0), 0, (v 2), (v 3), 0, 0, ((v 6) + (v 3)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) 0 (w 2) (w 3) 0 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block48 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 49, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 49, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 49, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 49, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 49: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

end RiemannMachineVerification.Implementation
