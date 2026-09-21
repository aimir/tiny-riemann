import RiemannMachineVerification.Dynamics

namespace RiemannMachineVerification.Optimized278

abbrev RegisterIndex := Fin 9
abbrev ProgramCounter := Fin 1024

inductive RegisterInstruction where
  | increment (r : RegisterIndex) (next : ProgramCounter)
  | decrement (r : RegisterIndex) (zero positive : ProgramCounter)
  | initialize (next : ProgramCounter)
  | jump (next : ProgramCounter)
  | halt
  | transfer (source : RegisterIndex) (targets : List RegisterIndex) (next : ProgramCounter)
  deriving DecidableEq

structure RegisterConfiguration where
  pc : Option ProgramCounter
  values : RegisterIndex → ℕ
  capacity : ℕ

def transferValues (values : RegisterIndex → ℕ) (source : RegisterIndex)
    (targets : List RegisterIndex) : RegisterIndex → ℕ :=
  targets.foldl (fun values' r => Function.update values' r (values' r + values source))
    (Function.update values source 0)

def registerStep (program : ProgramCounter → RegisterInstruction)
    (s : RegisterConfiguration) : RegisterConfiguration :=
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

def initialRegisterConfiguration : RegisterConfiguration := ⟨some ⟨0, by decide⟩, fun _ => 0, 0⟩

def RegisterHalts (program : ProgramCounter → RegisterInstruction) : Prop :=
  Eventually (registerStep program) (fun s => s.pc = none) initialRegisterConfiguration

theorem registerStep_halted (program : ProgramCounter → RegisterInstruction)
    (s : RegisterConfiguration) (hs : s.pc = none) : registerStep program s = s := by
  simp [registerStep, hs]

end RiemannMachineVerification.Optimized278
