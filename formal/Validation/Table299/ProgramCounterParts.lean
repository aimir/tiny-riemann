import RiemannMachineVerification.Registers.ArithmeticModel
namespace RiemannMachineVerification

def pcParts (high : Fin 32) (low : Fin 64) : ProgramCounter :=
  ⟨high.val * 64 + low.val, by omega⟩

/-- [proof-guide] Every program counter decomposes into a high chunk and a low six-bit index.
Proof: Combines `Fin.ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem pcParts_surjective (pc : ProgramCounter) :
    ∃ high low, pcParts high low = pc := by
  refine ⟨⟨pc.val / 64, by omega⟩, ⟨pc.val % 64, Nat.mod_lt _ (by decide)⟩, ?_⟩
  apply Fin.ext
  simp only [pcParts]
  omega

end RiemannMachineVerification
