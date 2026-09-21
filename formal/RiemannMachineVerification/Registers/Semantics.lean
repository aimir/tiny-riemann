import RiemannMachineVerification.Common.Execution
namespace RiemannMachineVerification.RegisterModel

variable {pcSize : ℕ}

abbrev RegisterIndex := Fin 9

inductive RegisterInstruction (pcSize : ℕ) where
  | increment (r : RegisterIndex) (next : (Fin pcSize))
  | decrement (r : RegisterIndex) (zero positive : (Fin pcSize))
  | initialize (next : (Fin pcSize))
  | jump (next : (Fin pcSize))
  | halt
  | transfer (source : RegisterIndex) (targets : List RegisterIndex) (next : (Fin pcSize))
  deriving DecidableEq

structure RegisterConfiguration (pcSize : ℕ) where
  pc : Option (Fin pcSize)
  values : RegisterIndex → ℕ
  capacity : ℕ

def transferValues (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) : RegisterIndex → ℕ :=
  targets.foldl (fun values' r => Function.update values' r (values' r + values source))
    (Function.update values source 0)

def registerStep (program : (Fin pcSize) → (RegisterInstruction pcSize))
    (s : (RegisterConfiguration pcSize)) : (RegisterConfiguration pcSize) :=
  match s.pc with
  | none => s
  | some pc =>
    match program pc with
    | .increment r next =>
      {s with pc := some next, values := Function.update s.values r (s.values r + 1)}
    | .decrement r zero positive =>
      {s with
        pc := some (if s.values r = 0 then zero else positive)
        values := Function.update s.values r (s.values r - 1)}
    | .initialize next => {s with pc := some next, capacity := s.capacity + 1}
    | .jump next => {s with pc := some next}
    | .halt => {s with pc := none}
    | .transfer source targets next =>
      {s with pc := some next, values := transferValues s.values source targets}

def initialRegisterConfiguration [NeZero pcSize] : (RegisterConfiguration pcSize) := ⟨some 0, fun _ => 0, 0⟩

def RegisterHalts [NeZero pcSize] (program : (Fin pcSize) → (RegisterInstruction pcSize)) : Prop :=
  Eventually (registerStep program) (fun s => s.pc = none) initialRegisterConfiguration

/-- [proof-guide] A halted register configuration is a fixed point of execution.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem registerStep_halted (program : (Fin pcSize) → (RegisterInstruction pcSize))
    (s : (RegisterConfiguration pcSize)) (hs : s.pc = none) : registerStep program s = s := by
  simp [registerStep, hs]

end RiemannMachineVerification.RegisterModel
