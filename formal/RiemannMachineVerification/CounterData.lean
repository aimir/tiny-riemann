import RiemannMachineVerification.DispatcherData

namespace RiemannMachineVerification

def counterStart (pc : ProgramCounter) (two : Bool) : FiniteWindow.Config 381 13 :=
  ⟨some (if two then ⟨176, by decide⟩ else ⟨9, by decide⟩), 11, pcPrefix pc⟩

def counterNext (pc : ProgramCounter) (two : Bool) : ProgramCounter :=
  ⟨(pc.val + if two then 2 else 1) % 2048, Nat.mod_lt _ (by decide)⟩

def CounterCheck (pc : ProgramCounter) (two : Bool) : Prop :=
  FiniteWindow.safe machine381 (counterStart pc two) 11 = true ∧
  FiniteWindow.execute machine381 (counterStart pc two) 11 = initialPrefix (counterNext pc two)

end RiemannMachineVerification
