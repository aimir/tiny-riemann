import RiemannMachineVerification.RegisterMachine

namespace RiemannMachineVerification

def RExec (program : ProgramCounter → RegisterInstruction)
    (a b : RegisterConfiguration) : Prop :=
  ∃ t, trajectory (registerStep program) a t = b

theorem RExec.refl (program : ProgramCounter → RegisterInstruction) (s : RegisterConfiguration) :
    RExec program s s := ⟨0, rfl⟩

theorem RExec.trans {program : ProgramCounter → RegisterInstruction} {a b c : RegisterConfiguration}
    (hab : RExec program a b) (hbc : RExec program b c) : RExec program a c := by
  obtain ⟨i, hi⟩ := hab
  obtain ⟨j, hj⟩ := hbc
  exact ⟨i + j, by rw [trajectory_add, hi, hj]⟩

theorem RExec.prepend {program : ProgramCounter → RegisterInstruction} {a b c : RegisterConfiguration}
    (h : registerStep program a = b) (hbc : RExec program b c) : RExec program a c :=
  (show RExec program a b from ⟨1, h⟩).trans hbc

theorem RExec.single {program : ProgramCounter → RegisterInstruction} {a b : RegisterConfiguration}
    (h : registerStep program a = b) : RExec program a b := ⟨1, h⟩

theorem registerConfiguration_ext {a b : RegisterConfiguration}
    (hp : a.pc = b.pc) (hv : a.values = b.values) (hc : a.capacity = b.capacity) : a = b := by
  cases a; cases b; simp_all

def addTargets (values : RegisterIndex → ℕ) (targets : List RegisterIndex) (amount : ℕ) :
    RegisterIndex → ℕ :=
  targets.foldl (fun values' r => Function.update values' r (values' r + amount)) values

def transferRound (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) : RegisterIndex → ℕ :=
  addTargets (Function.update values source (values source - 1)) targets 1

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

theorem transferValues_apply (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) (r : RegisterIndex) :
    transferValues values source targets r =
      (if r = source then 0 else values r) + values source * targets.count r := by
  change addTargets (Function.update values source 0) targets (values source) r = _
  rw [addTargets_apply]
  simp only [Function.update_apply]

theorem transferRound_source (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) (hs : source ∉ targets) :
    transferRound values source targets source = values source - 1 := by
  simp [transferRound, addTargets_apply, List.count_eq_zero.mpr hs]

theorem transferValues_zero (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) (hz : values source = 0) :
    transferValues values source targets = values := by
  funext r
  rw [transferValues_apply, hz]
  by_cases h : r = source <;> simp [h, hz]

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

end RiemannMachineVerification
