import Validation.Table295.PrimitiveShape
import Validation.Table295.PhysicalRegisters
namespace RiemannMachineVerification.Reallocated

def RegisterValid (s : RegisterConfiguration) : Prop :=
  (∀ pc, s.pc = some pc → min pc.val 16 ≤ s.capacity) ∧
    (s.capacity < 16 → ∀ r, s.values r = 0)

/-- [proof-guide] Sufficient storage capacity implies validity of the register layout.
Proof: Combines `le_trans` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem registerValid_of_capacity (s : RegisterConfiguration) (h : 16 ≤ s.capacity) :
    RegisterValid s := by
  constructor
  · intro pc _; exact le_trans (Nat.min_le_right _ _) h
  · intro hn; omega

/-- [proof-guide] The initial register configuration satisfies the storage invariant.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem initialRegisterValid : RegisterValid initialRegisterConfiguration := by
  constructor
  · intro pc hp
    simp only [initialRegisterConfiguration, Option.some.injEq] at hp
    subst pc; decide
  · intro _ r; rfl

/-- [proof-guide] Initialization preserves validity while increasing capacity.
Proof: Combines `Nat.mod_eq_of_lt`, `le_trans`, `hv.2` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem registerValid_initialize (s : RegisterConfiguration) (pc next : ProgramCounter)
    (hv : RegisterValid s) (hp : s.pc = some pc) (hpc : pc.val < 16)
    (hn : next = counterNext pc false) :
    RegisterValid {s with pc := some next, capacity := s.capacity + 1} := by
  constructor
  · intro p h
    have hpnext : next = p := Option.some.inj h
    subst p
    have hcap := hv.1 pc hp
    rw [Nat.min_eq_left (by omega)] at hcap
    have hnext : next.val = pc.val + 1 := by
      rw [hn]
      simp only [counterNext, Bool.false_eq_true, ↓reduceIte]
      exact Nat.mod_eq_of_lt (by omega)
    simp only
    rw [hnext]
    exact le_trans (Nat.min_le_left _ _) (by omega)
  · intro hc r; exact hv.2 (by simpa only using Nat.lt_of_succ_lt hc) r

/-- [proof-guide] Every primitive register step preserves storage validity.
Proof: Combines `hv`, `registerValid_of_capacity`, `hcap` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem registerValid_step (s : RegisterConfiguration) (hv : RegisterValid s) :
    RegisterValid (registerStep primitiveProgram s) := by
  cases hp : s.pc with
  | none => simpa only [registerStep, hp] using hv
  | some pc =>
    have hshape := primitive_shape pc
    have hcap := hv.1 pc hp
    unfold PrimitiveShape at hshape
    cases hi : primitiveProgram pc with
    | increment r next =>
      rw [hi] at hshape
      apply registerValid_of_capacity
      simpa only [registerStep, hp, hi] using
        (show 16 ≤ s.capacity by rw [Nat.min_eq_right hshape.1] at hcap; exact hcap)
    | decrement r zero positive =>
      rw [hi] at hshape
      apply registerValid_of_capacity
      simpa only [registerStep, hp, hi] using
        (show 16 ≤ s.capacity by rw [Nat.min_eq_right hshape.1] at hcap; exact hcap)
    | «initialize» next =>
      rw [hi] at hshape
      simpa only [registerStep, hp, hi] using registerValid_initialize s pc next hv hp hshape.1 hshape.2
    | jump next =>
      rw [hi] at hshape
      apply registerValid_of_capacity
      simpa only [registerStep, hp, hi] using
        (show 16 ≤ s.capacity by rw [Nat.min_eq_right hshape] at hcap; exact hcap)
    | halt =>
      rw [hi] at hshape
      apply registerValid_of_capacity
      simpa only [registerStep, hp, hi] using
        (show 16 ≤ s.capacity by rw [Nat.min_eq_right hshape] at hcap; exact hcap)
    | transfer source targets next => simpa only [hi] using hshape

/-- [proof-guide] Appending a zero slot agrees with the capacity increase under the storage invariant.
Proof: Combines `hv.2` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem registerValid_append_zero (s : RegisterConfiguration) (hv : RegisterValid s) :
    physicalValue s.values s.capacity = 0 := by
  unfold physicalValue
  split
  · rename_i h; exact hv.2 (by omega) _
  · rfl

end RiemannMachineVerification.Reallocated
