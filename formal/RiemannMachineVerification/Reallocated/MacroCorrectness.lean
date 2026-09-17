import RiemannMachineVerification.Reallocated.MacroChecks

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Reallocated

theorem macroLength_bounds : ∀ q b, 0 < macroLength q b ∧ macroLength q b ≤ 3 := by
  decide +kernel

theorem macro_local_certificate : ∀ c : LocalConfiguration 342, c.head = 2 →
    localAdvance machine381 (renameLocal macroEmbedding c)
        (macroLength c.state (localRead c)) =
      renameLocal macroEmbedding (localStep machine342 c) := by
  rintro ⟨state, head, tape⟩ hc
  dsimp only at hc
  subst head
  cases state with
  | none => rfl
  | some q =>
    have h := all_macro_checks q (tape 0) (tape 1) (tape 2) (tape 3) (tape 4)
    simpa only [window5_eta] using h

/-- All short-path replacements preserve blank-tape halting in both directions.
This theorem concerns the literal 381-state and 342-state transition tables. -/
theorem machine381_iff_machine342 :
    HaltsBlank machine381 ↔ HaltsBlank machine342 := by
  apply halts_iff_of_local_expansion machine381 machine342 macroEmbedding
    (fun c => macroLength c.state (c.tape c.head))
  · intro c
    exact (macroLength_bounds _ _).1
  · rfl
  · exact expansion_of_local_check machine381 machine342 macroEmbedding macroLength
      (fun q b => (macroLength_bounds q b).2) macro_local_certificate

end RiemannMachineVerification.Reallocated
