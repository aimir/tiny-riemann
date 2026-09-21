import RiemannMachineVerification.Generated.RegisterRefinement.Boundaries

namespace RiemannMachineVerification.Implementation

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 11, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 11, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 11, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 11, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 11: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 17, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path17_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 5 =
      ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_270, instruction0_271, instruction0_272, instruction0_280, instruction0_284, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 17, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path17_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 4 =
      ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_135, instruction1_136, instruction1_144, instruction1_148, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 17, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path17_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 5 =
      ⟨some ⟨286, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_270, instruction0_271, instruction0_272, instruction0_280, instruction0_284, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 17, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path17_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 4 =
      ⟨some ⟨150, by decide⟩, (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 (((v 4) + 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_135, instruction1_136, instruction1_144, instruction1_148, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 17: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance17 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : ((v 4) + 1) = ((v 4) + 1) := by omega
  by_cases h : ((v 4) + 1) = 0
  · have hnew : ((v 4) + 1) = 0 := by omega
    refine ⟨5, 4, by decide, by decide, ?_⟩
    rw [path17_0_0 v a h, path17_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 3), ((v 4) + 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block21 w _ _)
  · have hnew : ((v 4) + 1) ≠ 0 := by omega
    refine ⟨5, 4, by decide, by decide, ?_⟩
    rw [path17_1_0 v a h, path17_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, (((v 4) + 1) - 1), 0, (v 0), 0, (v 2), (v 3), ((v 4) + 1), 0, 0, (((v 4) + 1) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) ((v 4) + 1) 0 0 (((v 4) + 1) - 1) 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block19 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 18, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path18_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 7 =
      ⟨some ⟨653, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_525, instruction0_627, instruction0_628, instruction0_632, instruction0_640, instruction0_648, instruction0_652, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 18, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path18_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨390, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 7 =
      ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_390, instruction1_491, instruction1_492, instruction1_496, instruction1_512, instruction1_520, instruction1_524, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 18, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path18_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 7 =
      ⟨some ⟨654, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 ((v 2) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_525, instruction0_627, instruction0_628, instruction0_632, instruction0_640, instruction0_648, instruction0_652, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 18, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path18_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 2) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨390, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 7 =
      ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 ((v 2) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_390, instruction1_491, instruction1_492, instruction1_496, instruction1_512, instruction1_520, instruction1_524, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 18: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance18 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨390, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), b⟩ j) := by
  have hc : (v 2) = (v 2) := by omega
  by_cases h : (v 2) = 0
  · have hnew : (v 2) = 0 := by omega
    refine ⟨7, 7, by decide, by decide, ?_⟩
    rw [path18_0_0 v a h, path18_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block20 w _ _)
  · have hnew : (v 2) ≠ 0 := by omega
    refine ⟨7, 7, by decide, by decide, ?_⟩
    rw [path18_1_0 v a h, path18_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, ((v 2) - 1), 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, ((v 2) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 ((v 2) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 ((v 2) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block45 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 19, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 19, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 19, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 19, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

/-- [proof-guide] Boundary 19: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
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

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 21, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path21_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨341, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_285, instruction0_301, instruction0_302, instruction0_304, instruction0_312, instruction0_316, instruction0_320, instruction0_324, instruction0_328, instruction0_336, instruction0_340, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 21, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path21_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨205, by decide⟩, (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_149, instruction1_165, instruction1_166, instruction1_168, instruction1_176, instruction1_180, instruction1_184, instruction1_188, instruction1_192, instruction1_200, instruction1_204, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 21, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path21_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨342, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_285, instruction0_301, instruction0_302, instruction0_304, instruction0_312, instruction0_316, instruction0_320, instruction0_324, instruction0_328, instruction0_336, instruction0_340, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 21, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path21_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨206, by decide⟩, (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 ((v 4) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_149, instruction1_165, instruction1_166, instruction1_168, instruction1_176, instruction1_180, instruction1_184, instruction1_188, instruction1_192, instruction1_200, instruction1_204, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 21: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance21 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨11, 11, by decide, by decide, ?_⟩
    rw [path21_0_0 v a h, path21_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, 0, 0, (v 0), 0, ((v 6) + (v 3)), (v 3), (v 4), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block26 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨11, 11, by decide, by decide, ?_⟩
    rw [path21_1_0 v a h, path21_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, ((v 4) - 1), 0, (v 0), 0, ((v 6) + (v 3)), (v 3), (v 4), 0, 0, ((v 4) - 1), 0]
    have hv0 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 ((v 6) + (v 3)) (v 3) (v 4) 0 0 ((v 4) - 1) 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block27 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 24, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path24_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 5 =
      ⟨some ⟨541, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_526, instruction0_527, instruction0_528, instruction0_536, instruction0_540, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 24, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path24_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨391, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 4 =
      ⟨some ⟨405, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_391, instruction1_392, instruction1_400, instruction1_404, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 24, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path24_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 5 =
      ⟨some ⟨542, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_526, instruction0_527, instruction0_528, instruction0_536, instruction0_540, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 24, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path24_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : ((v 4) + 1) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨391, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 4 =
      ⟨some ⟨406, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_391, instruction1_392, instruction1_400, instruction1_404, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 24: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance24 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨391, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), b⟩ j) := by
  have hc : ((v 4) + 1) = ((v 4) + 1) := by omega
  by_cases h : ((v 4) + 1) = 0
  · have hnew : ((v 4) + 1) = 0 := by omega
    refine ⟨5, 4, by decide, by decide, ?_⟩
    rw [path24_0_0 v a h, path24_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block34 w _ _)
  · have hnew : ((v 4) + 1) ≠ 0 := by omega
    refine ⟨5, 4, by decide, by decide, ?_⟩
    rw [path24_1_0 v a h, path24_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, (((v 4) + 1) - 1), 0, (v 0), (v 1), (v 2), (v 3), ((v 4) + 1), (v 5), 0, (((v 4) + 1) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) + 1) (v 5) 0 (((v 4) + 1) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block29 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 26, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path26_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨341, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨369, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_341, instruction0_357, instruction0_358, instruction0_360, instruction0_364, instruction0_368, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 26, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path26_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨205, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨233, by decide⟩, (values (v 0) 0 (v 2) (v 6) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_205, instruction1_221, instruction1_222, instruction1_224, instruction1_228, instruction1_232, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 26, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path26_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨341, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨370, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_341, instruction0_357, instruction0_358, instruction0_360, instruction0_364, instruction0_368, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 26, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path26_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨205, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨234, by decide⟩, (values (v 0) 0 (v 2) (v 6) ((v 4) - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_205, instruction1_221, instruction1_222, instruction1_224, instruction1_228, instruction1_232, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 26: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance26 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨341, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨205, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨6, 6, by decide, by decide, ?_⟩
    rw [path26_0_0 v a h, path26_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 6), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 6) 0 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block31 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨6, 6, by decide, by decide, ?_⟩
    rw [path26_1_0 v a h, path26_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), ((v 4) - 1), (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 6), ((v 4) - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 6) ((v 4) - 1) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block35 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 27, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path27_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨342, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨341, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_340, instruction0_342, instruction0_344, instruction0_352, instruction0_356, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 27, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path27_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨206, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨205, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_204, instruction1_206, instruction1_208, instruction1_216, instruction1_220, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 27, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path27_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨342, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨342, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_340, instruction0_342, instruction0_344, instruction0_352, instruction0_356, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 27, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path27_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨206, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨206, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_204, instruction1_206, instruction1_208, instruction1_216, instruction1_220, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 27: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance27 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨342, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨206, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path27_0_0 v a h, path27_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 3)), 0, 0, (v 0), 0, (v 2), (v 3), (v 4), 0, ((v 6) + (v 3)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 3)) 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block26 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path27_1_0 v a h, path27_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 3)), ((v 7) - 1), 0, (v 0), 0, (v 2), (v 3), (v 4), 0, ((v 6) + (v 3)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) (v 4) 0 ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block27 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 29, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path29_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨542, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨541, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_540, instruction0_542, instruction0_544, instruction0_552, instruction0_556, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 29, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path29_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨406, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨405, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_404, instruction1_406, instruction1_408, instruction1_416, instruction1_420, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 29, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path29_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨542, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨542, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_540, instruction0_542, instruction0_544, instruction0_552, instruction0_556, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 29, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path29_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨406, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨406, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_404, instruction1_406, instruction1_408, instruction1_416, instruction1_420, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 29: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance29 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨542, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨406, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path29_0_0 v a h, path29_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 2)), 0, 0, (v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 2)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block34 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path29_1_0 v a h, path29_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 2)), ((v 7) - 1), 0, (v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 2)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 2)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block29 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 31, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path31_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨369, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨269, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_268, instruction0_369, instruction0_370, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 31, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path31_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨233, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), c⟩ 3 =
      ⟨some ⟨134, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_133, instruction1_233, instruction1_234, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 31, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path31_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨369, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (0 - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_268, instruction0_369, instruction0_370, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 31, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path31_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨233, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), c⟩ 3 =
      ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (0 - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_133, instruction1_233, instruction1_234, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 31: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance31 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨369, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨233, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), b⟩ j) := by
  have hc : 0 = 0 := by omega
  by_cases h : 0 = 0
  · have hnew : 0 = 0 := by omega
    refine ⟨3, 3, by decide, by decide, ?_⟩
    rw [path31_0_0 v a h, path31_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 3), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block11 w _ _)
  · have hnew : 0 ≠ 0 := by omega
    refine ⟨3, 3, by decide, by decide, ?_⟩
    rw [path31_1_0 v a h, path31_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (0 - 1), (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 3), (0 - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (0 - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) (0 - 1) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block17 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 34, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path34_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨541, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_541, instruction0_557, instruction0_558, instruction0_560, instruction0_568, instruction0_572, instruction0_576, instruction0_580, instruction0_584, instruction0_592, instruction0_596, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 34, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path34_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨405, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨461, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_405, instruction1_421, instruction1_422, instruction1_424, instruction1_432, instruction1_436, instruction1_440, instruction1_444, instruction1_448, instruction1_456, instruction1_460, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 34, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path34_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨541, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_541, instruction0_557, instruction0_558, instruction0_560, instruction0_568, instruction0_572, instruction0_576, instruction0_580, instruction0_584, instruction0_592, instruction0_596, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 34, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path34_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨405, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 11 =
      ⟨some ⟨462, by decide⟩, (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_405, instruction1_421, instruction1_422, instruction1_424, instruction1_432, instruction1_436, instruction1_440, instruction1_444, instruction1_448, instruction1_456, instruction1_460, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 34: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance34 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨541, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨405, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨11, 11, by decide, by decide, ?_⟩
    rw [path34_0_0 v a h, path34_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, 0, 0, (v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block37 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨11, 11, by decide, by decide, ?_⟩
    rw [path34_1_0 v a h, path34_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, ((v 4) - 1), 0, (v 0), (v 1), ((v 6) + (v 3)), (v 3), (v 4), (v 5), 0, ((v 4) - 1), 0]
    have hv0 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) ((v 6) + (v 3)) (v 3) (v 4) (v 5) 0 ((v 4) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block38 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 35, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path35_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨370, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨269, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_268, instruction0_370, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 35, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path35_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨234, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨134, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_133, instruction1_234, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 35, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path35_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨370, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_268, instruction0_370, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 35, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path35_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨234, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), c⟩ 2 =
      ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) ((v 4) - 1) 0 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_133, instruction1_234, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 35: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance35 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨370, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨234, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path35_0_0 v a h, path35_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 3), 0, 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) 0 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block11 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path35_1_0 v a h, path35_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) - 1), (v 5), 0, 0, 0, (v 0), 0, (v 2), (v 3), ((v 4) - 1), 0, 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) 0 (v 2) (v 3) ((v 4) - 1) 0 0 0 0) = (values (w 0) 0 (w 2) (w 3) (w 4) 0 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block17 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 37, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path37_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨625, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_597, instruction0_613, instruction0_614, instruction0_616, instruction0_620, instruction0_624, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 37, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path37_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨461, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨489, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_461, instruction1_477, instruction1_478, instruction1_480, instruction1_484, instruction1_488, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 37, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path37_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨626, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_597, instruction0_613, instruction0_614, instruction0_616, instruction0_620, instruction0_624, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 37, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path37_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨461, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), c⟩ 6 =
      ⟨some ⟨490, by decide⟩, (values (v 0) (v 1) (v 2) (v 6) ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_461, instruction1_477, instruction1_478, instruction1_480, instruction1_484, instruction1_488, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 37: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance37 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨461, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨6, 6, by decide, by decide, ?_⟩
    rw [path37_0_0 v a h, path37_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 6), 0, (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 6) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block40 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨6, 6, by decide, by decide, ?_⟩
    rw [path37_1_0 v a h, path37_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 6), ((v 4) - 1), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 6), ((v 4) - 1), (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 6) ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 6) ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block42 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 38, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path38_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_596, instruction0_598, instruction0_600, instruction0_608, instruction0_612, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 38, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path38_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨462, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨461, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_460, instruction1_462, instruction1_464, instruction1_472, instruction1_476, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 38, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path38_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_596, instruction0_598, instruction0_600, instruction0_608, instruction0_612, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 38, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path38_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 7) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨462, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), c⟩ 5 =
      ⟨some ⟨462, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_460, instruction1_462, instruction1_464, instruction1_472, instruction1_476, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 38: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance38 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨462, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), b⟩ j) := by
  have hc : (v 7) = (v 7) := by omega
  by_cases h : (v 7) = 0
  · have hnew : (v 7) = 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path38_0_0 v a h, path38_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 3)), 0, 0, (v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 3)), 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block37 w _ _)
  · have hnew : (v 7) ≠ 0 := by omega
    refine ⟨5, 5, by decide, by decide, ?_⟩
    rw [path38_1_0 v a h, path38_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 3)), ((v 7) - 1), 0, (v 0), (v 1), (v 2), (v 3), (v 4), (v 5), ((v 6) + (v 3)), ((v 7) - 1), 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) ((v 6) + (v 3)) ((v 7) - 1) 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block38 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 40, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path40_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨625, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_524, instruction0_625, instruction0_626, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 40, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path40_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨489, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨390, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_389, instruction1_489, instruction1_490, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 40, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path40_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨625, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (0 - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_524, instruction0_625, instruction0_626, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 40, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path40_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : 0 ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨489, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), c⟩ 3 =
      ⟨some ⟨391, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (0 - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_389, instruction1_489, instruction1_490, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 40: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance40 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨625, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨489, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), b⟩ j) := by
  have hc : 0 = 0 := by omega
  by_cases h : 0 = 0
  · have hnew : 0 = 0 := by omega
    refine ⟨3, 3, by decide, by decide, ?_⟩
    rw [path40_0_0 v a h, path40_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block18 w _ _)
  · have hnew : 0 ≠ 0 := by omega
    refine ⟨3, 3, by decide, by decide, ?_⟩
    rw [path40_1_0 v a h, path40_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), (0 - 1), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 3), (0 - 1), (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) (0 - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) (0 - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block24 w _ _)

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false


/-- [proof-guide] Boundary 42, zero branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path42_0_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨626, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_524, instruction0_626, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 42, zero branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path42_0_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) = 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨490, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨390, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_389, instruction1_490, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 42, positive branch: the arithmetic program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `RiemannMachineVerification.registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path42_1_0 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨626, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, RiemannMachineVerification.registerStep, instruction0_524, instruction0_626, values, RiemannMachineVerification.transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply RiemannMachineVerification.registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 42, positive branch: the implementation program follows the displayed finite path for all register values satisfying the guard.
Proof: Combines `registerConfiguration_ext` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem path42_1_1 (v : Fin 18 → ℕ) (c : ℕ) (h : (v 4) ≠ 0) :
    trajectory (registerStep macroProgram) ⟨some ⟨490, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), c⟩ 2 =
      ⟨some ⟨391, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) ((v 4) - 1) (v 5) 0 0 0), (c + 0)⟩ := by
  first | omega | skip
  all_goals
    simp only [trajectory, registerStep, instruction1_389, instruction1_490, values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte, h]
    all_goals
      apply registerConfiguration_ext
      · rfl
      · funext r; fin_cases r <;> simp [values, Function.update_apply, h] <;> omega
      · dsimp only <;> omega

/-- [proof-guide] Boundary 42: both register programs advance by positive numbers of steps to another related boundary.
Proof: Combines `Boundary.congr_values` with the displayed local equations.
Role: Connects the implementation register program to the arithmetic program despite different temporary values. -/
theorem advance42 (v : Fin 18 → ℕ) (a b : ℕ) :
    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) ⟨some ⟨626, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩ i)
      (trajectory (registerStep macroProgram) ⟨some ⟨490, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), b⟩ j) := by
  have hc : (v 4) = (v 4) := by omega
  by_cases h : (v 4) = 0
  · have hnew : (v 4) = 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path42_0_0 v a h, path42_0_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 3), 0, (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) 0 (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block18 w _ _)
  · have hnew : (v 4) ≠ 0 := by omega
    refine ⟨2, 2, by decide, by decide, ?_⟩
    rw [path42_1_0 v a h, path42_1_1 v b hnew]
    let w : Fin 18 → ℕ := ![(v 0), (v 1), (v 2), (v 3), ((v 4) - 1), (v 5), 0, 0, 0, (v 0), (v 1), (v 2), (v 3), ((v 4) - 1), (v 5), 0, 0, 0]
    have hv0 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    have hv1 : (values (v 0) (v 1) (v 2) (v 3) ((v 4) - 1) (v 5) 0 0 0) = (values (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) 0 0 0) := by
      funext r; fin_cases r <;> simp [values, w] <;> omega
    exact Boundary.congr_values hv0 hv1 (Boundary.block24 w _ _)

end RiemannMachineVerification.Implementation
