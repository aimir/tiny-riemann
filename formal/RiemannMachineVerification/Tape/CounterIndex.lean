import RiemannMachineVerification.Registers.ImplementationModel
namespace RiemannMachineVerification.Implementation

def pcParts (high : Fin 16) (low : Fin 64) : ProgramCounter :=
  ⟨high.val * 64 + low.val, by omega⟩

/-- [proof-guide] Every program counter decomposes into a high chunk and a low six-bit index.
Proof: Combines `Fin.ext` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem pcParts_surjective (pc : ProgramCounter) :
    ∃ high low, pcParts high low = pc := by
  refine ⟨⟨pc.val / 64, by omega⟩, ⟨pc.val % 64, Nat.mod_lt _ (by decide)⟩, ?_⟩
  apply Fin.ext
  simp only [pcParts]
  omega

end RiemannMachineVerification.Implementation
