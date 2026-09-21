import Validation.Table295.MacroData
namespace RiemannMachineVerification.Reallocated

/-- [proof-guide] Local configurations agree when all their fields agree.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem localConfiguration_ext {N : ℕ} {a b : LocalConfiguration N}
    (hs : a.state = b.state) (hh : a.head = b.head)
    (ht : a.tape = b.tape) : a = b := by
  cases a
  cases b
  simp_all

/-- [proof-guide] Renaming states commutes with a compatible local step.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem localStep_rename {N K : ℕ} (A : Machine N) (B : Machine K)
    (f : Fin K → Fin N) (c : LocalConfiguration K)
    (compatible : ∀ q, c.state = some q →
      A.transition (f q) (localRead c) =
        renameInstruction f (B.transition q (localRead c))) :
    localStep A (renameLocal f c) = renameLocal f (localStep B c) := by
  cases h : c.state with
  | none => simp [localStep, renameLocal, h]
  | some q =>
    have hr : localRead (⟨some (f q), c.head, c.tape⟩ : LocalConfiguration N) =
        localRead c := rfl
    simp only [localStep, renameLocal, h, Option.map_some, hr,
      compatible q h, renameInstruction]

/-- [proof-guide] A one-step expansion satisfies the local certificate when its literal transitions match.
Proof: Combines `localStep_rename`, `transitions` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macroCheck_one (q : Fin 342)
    (lengths : ∀ b, macroLength (some q) b = 1)
    (transitions : ∀ b, machine381.transition (macroEmbedding q) b =
      renameInstruction macroEmbedding (machine342.transition q b)) :
    MacroCheckFor q := by
  intro a b c d e
  dsimp only
  rw [lengths]
  change localStep machine381
    (renameLocal macroEmbedding ⟨some q, 2, window5 a b c d e⟩) = _
  apply localStep_rename
  intro r hr
  have heq : q = r := Option.some.inj hr
  subst r
  exact transitions _

end RiemannMachineVerification.Reallocated
