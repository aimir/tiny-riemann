import RiemannMachineVerification.Optimized278.RegisterMachine

namespace RiemannMachineVerification.Optimized278

def pcParts (high : Fin 16) (low : Fin 64) : ProgramCounter :=
  ⟨high.val * 64 + low.val, by omega⟩

theorem pcParts_surjective (pc : ProgramCounter) :
    ∃ high low, pcParts high low = pc := by
  refine ⟨⟨pc.val / 64, by omega⟩, ⟨pc.val % 64, Nat.mod_lt _ (by decide)⟩, ?_⟩
  apply Fin.ext
  simp only [pcParts]
  omega

end RiemannMachineVerification.Optimized278
