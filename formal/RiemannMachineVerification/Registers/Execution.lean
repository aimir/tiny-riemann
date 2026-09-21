import RiemannMachineVerification.Registers.Semantics
namespace RiemannMachineVerification.RegisterModel

variable {pcSize : ℕ}

def RExec (program : (Fin pcSize) → (RegisterInstruction pcSize))
    (a b : (RegisterConfiguration pcSize)) : Prop :=
  ∃ t, trajectory (registerStep program) a t = b

/-- [proof-guide] Zero steps give a finite execution from a configuration to itself.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem RExec.refl (program : (Fin pcSize) → (RegisterInstruction pcSize)) (s : (RegisterConfiguration pcSize)) :
    RExec program s s := ⟨0, rfl⟩

/-- [proof-guide] Two consecutive finite executions compose into one.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem RExec.trans {program : (Fin pcSize) → (RegisterInstruction pcSize)} {a b c : (RegisterConfiguration pcSize)}
    (hab : RExec program a b) (hbc : RExec program b c) : RExec program a c := by
  obtain ⟨i, hi⟩ := hab
  obtain ⟨j, hj⟩ := hbc
  exact ⟨i + j, by rw [trajectory_add, hi, hj]⟩

/-- [proof-guide] A single initial step can be prepended to a finite execution.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem RExec.prepend {program : (Fin pcSize) → (RegisterInstruction pcSize)} {a b c : (RegisterConfiguration pcSize)}
    (h : registerStep program a = b) (hbc : RExec program b c) : RExec program a c :=
  (show RExec program a b from ⟨1, h⟩).trans hbc

/-- [proof-guide] A single verified step gives a finite execution.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem RExec.single {program : (Fin pcSize) → (RegisterInstruction pcSize)} {a b : (RegisterConfiguration pcSize)}
    (h : registerStep program a = b) : RExec program a b := ⟨1, h⟩

/-- [proof-guide] Register configurations agree when their counter, values and capacity agree.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem registerConfiguration_ext {a b : (RegisterConfiguration pcSize)}
    (hp : a.pc = b.pc) (hv : a.values = b.values) (hc : a.capacity = b.capacity) : a = b := by
  cases a; cases b; simp_all

def addTargets (values : RegisterIndex → ℕ) (targets : List RegisterIndex) (amount : ℕ) :
    RegisterIndex → ℕ :=
  targets.foldl (fun values' r => Function.update values' r (values' r + amount)) values

def transferRound (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) : RegisterIndex → ℕ :=
  addTargets (Function.update values source (values source - 1)) targets 1

/-- [proof-guide] Adding to a target list increments a register by its multiplicity in that list.
Proof: Induction on `targets`, using the displayed step equations and auxiliary lemmas.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem addTargets_apply (values : RegisterIndex → ℕ) (targets : List RegisterIndex)
    (amount : ℕ) (r : RegisterIndex) :
    addTargets values targets amount r = values r + amount * targets.count r := by
  induction targets generalizing values with
  | nil => simp [addTargets]
  | cons t rest ih =>
    change addTargets (Function.update values t (values t + amount)) rest amount r = _
    rw [ih]
    by_cases h : t = r
    · subst t; simp [List.count_cons, Function.update_apply]; ring
    · simp [List.count_cons, h, Ne.symm h, Function.update_apply]

/-- [proof-guide] A transfer clears its source and adds the source value to each target, counting repeated targets.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem transferValues_apply (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) (r : RegisterIndex) :
    transferValues values source targets r =
      (if r = source then 0 else values r) + values source * targets.count r := by
  change addTargets (Function.update values source 0) targets (values source) r = _
  rw [addTargets_apply]
  simp only [Function.update_apply]

/-- [proof-guide] One primitive transfer round decrements the source when it is not among the targets.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem transferRound_source (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) (hs : source ∉ targets) :
    transferRound values source targets source = values source - 1 := by
  simp [transferRound, addTargets_apply, List.count_eq_zero.mpr hs]

/-- [proof-guide] Transferring a zero source leaves the register values unchanged.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem transferValues_zero (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) (hz : values source = 0) :
    transferValues values source targets = values := by
  funext r
  rw [transferValues_apply, hz]
  by_cases h : r = source <;> simp [h, hz]

/-- [proof-guide] A primitive transfer round preserves the eventual transfer result.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem transferValues_round (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) (hs : source ∉ targets) (hn : 0 < values source) :
    transferValues (transferRound values source targets) source targets =
      transferValues values source targets := by
  funext r
  rw [transferValues_apply, transferValues_apply, transferRound_source _ _ _ hs]
  by_cases h : r = source
  · subst r; simp [List.count_eq_zero.mpr hs]
  · simp only [h, ↓reduceIte, transferRound, addTargets_apply, Function.update_apply,
      Nat.one_mul]
    have he : values source - 1 + 1 = values source := by omega
    nlinarith

end RiemannMachineVerification.RegisterModel
