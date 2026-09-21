import RiemannMachineVerification.Generated.Dispatch.Data
namespace RiemannMachineVerification.Implementation

def counterStart (pc : ProgramCounter) (two : Bool) : FiniteWindow.Config 389 12 :=
  ⟨some (if two then ⟨178, by decide⟩ else ⟨9, by decide⟩), 10, pcPrefix pc⟩

def counterNext (pc : ProgramCounter) (two : Bool) : ProgramCounter :=
  ⟨(pc.val + if two then 2 else 1) % 1024, Nat.mod_lt _ (by decide)⟩

def CounterCheck (pc : ProgramCounter) (two : Bool) : Prop :=
  FiniteWindow.safe machine389 (counterStart pc two) 10 = true ∧
  FiniteWindow.execute machine389 (counterStart pc two) 10 = initialPrefix (counterNext pc two)

end RiemannMachineVerification.Implementation
