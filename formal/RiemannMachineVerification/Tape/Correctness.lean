import RiemannMachineVerification.Tape.RegisterOperations
import RiemannMachineVerification.Tape.StorageInvariant
import RiemannMachineVerification.Tape.Dispatch
namespace RiemannMachineVerification.Implementation

def RegisterRep (z : Zipper 389) (s : RegisterConfiguration) : Prop :=
  match s.pc with
  | none => z.state = none
  | some pc => z = encodedRegisterZipper pc (encodedStorage s.capacity s.values)

def RegisterRelation (z : Zipper 389) (s : RegisterConfiguration) : Prop :=
  RegisterValid s ∧ RegisterRep z s

/-- [proof-guide] The initial tape encoding represents the initial register configuration.
Proof: Combines `zipper_ext` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem encodedRegister_initial :
    encodedRegisterZipper ⟨0, by decide⟩ [] =
      ⟨some machine389.entry, fun _ => false, fun _ => false⟩ := by
  apply zipper_ext
  · rfl
  · funext n
    simp [encodedRegisterZipper, zipperOf, backendConfig, FiniteWindow.assemble,
      registerBackground, pcPrefix, registerStream, registerWord, TapeWord.bits,
      streamPrefix_nil, zeros]
  · funext n
    simp [encodedRegisterZipper, zipperOf, backendConfig, FiniteWindow.assemble,
      registerBackground, pcPrefix, registerStream, registerWord, TapeWord.bits,
      streamPrefix_nil, zeros]

/-- [proof-guide] The blank machine and the initial register configuration satisfy the simulation relation.
Proof: Combines `encodedRegister_initial.symm` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem registerRelation_initial :
    RegisterRelation ⟨some machine389.entry, fun _ => false, fun _ => false⟩
      initialRegisterConfiguration := by
  refine ⟨initialRegisterValid, ?_⟩
  exact encodedRegister_initial.symm

/-- [proof-guide] Related tape and register configurations agree on whether they are halted.
Proof: Combines `hr` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem registerRelation_halts (z : Zipper 389) (s : RegisterConfiguration)
    (h : RegisterRelation z s) : z.state = none ↔ s.pc = none := by
  obtain ⟨hv, hr⟩ := h
  cases hp : s.pc with
  | none => simpa only [RegisterRep, hp, iff_true] using hr
  | some pc =>
    simp only [RegisterRep, hp] at hr
    subst z
    simp only [encodedRegisterZipper, zipperOf, backendConfig, FiniteWindow.assemble,
      hp, reduceCtorEq]

/-- [proof-guide] One primitive register instruction is implemented by a positive tape execution preserving the encoding.
Proof: Combines `finish`, `backend_increment_encoded`, `backend_decrement_encoded` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem backend_primitive_advance (s : RegisterConfiguration) (pc : ProgramCounter)
    (hp : s.pc = some pc) (hv : RegisterValid s) :
    ∃ t, 0 < t ∧ RegisterRelation
      (trajectory (zipperStep machine389)
        (encodedRegisterZipper pc (encodedStorage s.capacity s.values)) t)
      (registerStep primitiveProgram s) := by
  have finish : ∀ z,
      ZExec machine389
        (zipperOf (FiniteWindow.assemble 0 (registerBackground (encodedStorage s.capacity s.values))
          (dispatcherTarget pc))) z →
      RegisterRep z (registerStep primitiveProgram s) →
      ∃ t, 0 < t ∧ RegisterRelation
        (trajectory (zipperStep machine389)
          (encodedRegisterZipper pc (encodedStorage s.capacity s.values)) t)
        (registerStep primitiveProgram s) := by
    intro z ⟨k, hk⟩ hz
    refine ⟨dispatcherLength pc + k, by have := dispatcher_positive pc; omega, ?_⟩
    rw [trajectory_add, dispatcher_execution, hk]
    exact ⟨registerValid_step s hv, hz⟩
  have hshape := primitive_shape pc
  have hcap := hv.1 pc hp
  unfold PrimitiveShape at hshape
  cases hi : primitiveProgram pc with
  | increment r next =>
    rw [hi] at hshape
    have hr : (registerSlot r).val < s.capacity := by
      rw [Nat.min_eq_right hshape.1] at hcap
      have := (registerSlot r).isLt; omega
    apply finish (encodedRegisterZipper (counterNext pc false)
      (encodedStorage s.capacity (Function.update s.values r (s.values r + 1))))
    · simpa only [dispatcherTarget, hi, backendConfig] using backend_increment_encoded s.capacity s.values r hr pc
    · simp only [RegisterRep, registerStep, hp, hi, hshape.2]
  | decrement r zero positive =>
    rw [hi] at hshape
    have hr : (registerSlot r).val < s.capacity := by
      rw [Nat.min_eq_right hshape.1] at hcap
      have := (registerSlot r).isLt; omega
    apply finish (encodedRegisterZipper (counterNext pc (if s.values r = 0 then false else true))
      (encodedStorage s.capacity (Function.update s.values r (s.values r - 1))))
    · simpa only [dispatcherTarget, hi, backendConfig] using backend_decrement_encoded s.capacity s.values r hr pc
    · simp only [RegisterRep, registerStep, hp, hi, hshape.2.1, hshape.2.2]
      split <;> rfl
  | «initialize» next =>
    rw [hi] at hshape
    apply finish (encodedRegisterZipper (counterNext pc false)
      (encodedStorage (s.capacity + 1) s.values))
    · rw [encodedStorage_append s.capacity s.values (registerValid_append_zero s hv)]
      simpa only [dispatcherTarget, hi, backendConfig] using backend_initialize (encodedStorage s.capacity s.values) pc
    · simp only [RegisterRep, registerStep, hp, hi, hshape.2]
  | jump next =>
    apply finish (encodedRegisterZipper next (encodedStorage s.capacity s.values))
    · simpa only [dispatcherTarget, hi, encodedRegisterZipper, backendConfig, initialPrefix] using
        ZExec.refl machine389 (encodedRegisterZipper next (encodedStorage s.capacity s.values))
    · simp only [RegisterRep, registerStep, hp, hi]
  | halt =>
    apply finish (zipperOf (backendConfig none 11 pc (encodedStorage s.capacity s.values)))
    · simpa only [dispatcherTarget, hi, backendConfig] using
        ZExec.refl machine389 (zipperOf (backendConfig none 11 pc (encodedStorage s.capacity s.values)))
    · simp only [RegisterRep, registerStep, hp, hi]
      rfl
  | transfer source targets next => simpa only [hi] using hshape

/-- [proof-guide] Every related configuration pair can advance through a positive tape execution to remain related.
Proof: Combines `hr`, `backend_primitive_advance` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem registerRelation_advance (z : Zipper 389) (s : RegisterConfiguration)
    (h : RegisterRelation z s) :
    ∃ t, 0 < t ∧ RegisterRelation (trajectory (zipperStep machine389) z t)
      (registerStep primitiveProgram s) := by
  obtain ⟨hv, hr⟩ := h
  cases hp : s.pc with
  | none =>
    have hz : z.state = none := by simpa only [RegisterRep, hp] using hr
    refine ⟨1, by decide, ?_⟩
    simpa only [trajectory, zipperStep, hz, registerStep, hp] using
      (show RegisterRelation z s from ⟨hv, hr⟩)
  | some pc =>
    simp only [RegisterRep, hp] at hr
    subst z
    exact backend_primitive_advance s pc hp hv

/-- Unbounded blank-tape halting equivalence for the literal compiled table.
The simulation includes the dispatch bits, unary data, and growing capacity. -/
theorem machine389_iff_primitive : HaltsBlank machine389 ↔ RegisterHalts primitiveProgram := by
  rw [halts_iff_zipper]
  exact eventually_iff_of_simulation (zipperStep machine389) (registerStep primitiveProgram)
    (fun z => z.state = none) (fun s => s.pc = none)
    ⟨some machine389.entry, fun _ => false, fun _ => false⟩ initialRegisterConfiguration
    RegisterRelation registerRelation_initial
    (by intro z hz; simp only [zipperStep, hz])
    registerRelation_halts registerRelation_advance

end RiemannMachineVerification.Implementation
