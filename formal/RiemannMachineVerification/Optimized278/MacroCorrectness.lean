import RiemannMachineVerification.Optimized278.MacroChecks

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Optimized278

theorem macroLength_bounds : ∀ q b, 0 < macroLength q b ∧ macroLength q b ≤ 3 := by
  decide +kernel

theorem macro_local_certificate : ∀ c : LocalConfiguration 339, c.head = 2 →
    localAdvance machine389 (renameLocal macroEmbedding c)
        (macroLength c.state (localRead c)) =
      renameLocal macroEmbedding (localStep machine339 c) := by
  rintro ⟨state, head, tape⟩ hc
  dsimp only at hc
  subst head
  cases state with
  | none => rfl
  | some q =>
    have h := all_macro_checks q (tape 0) (tape 1) (tape 2) (tape 3) (tape 4)
    simpa only [window5_eta] using h

/-- All short-path replacements preserve blank-tape halting in both directions.
This theorem concerns the literal 389-state and 339-state transition tables. -/
theorem machine389_iff_machine339 :
    HaltsBlank machine389 ↔ HaltsBlank machine339 := by
  apply halts_iff_of_local_expansion machine389 machine339 macroEmbedding
    (fun c => macroLength c.state (c.tape c.head))
  · intro c
    exact (macroLength_bounds _ _).1
  · rfl
  · exact expansion_of_local_check machine389 machine339 macroEmbedding macroLength
      (fun q b => (macroLength_bounds q b).2) macro_local_certificate

end RiemannMachineVerification.Optimized278
