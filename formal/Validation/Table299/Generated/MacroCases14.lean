import Validation.Table299.MacroProofSupport
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

/-- [proof-guide] Shortened state 280: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_280 : MacroCheckFor ⟨280, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 281: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_281 : MacroCheckFor ⟨281, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 282: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_282 : MacroCheckFor ⟨282, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 283: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_283 : MacroCheckFor ⟨283, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 284: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_284 : MacroCheckFor ⟨284, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 285: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_285 : MacroCheckFor ⟨285, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 286: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_286 : MacroCheckFor ⟨286, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 287: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_287 : MacroCheckFor ⟨287, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 288: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_288 : MacroCheckFor ⟨288, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 289: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_289 : MacroCheckFor ⟨289, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 290: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_290 : MacroCheckFor ⟨290, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 291: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_291 : MacroCheckFor ⟨291, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 292: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_292 : MacroCheckFor ⟨292, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 293: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_293 : MacroCheckFor ⟨293, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 294: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_294 : MacroCheckFor ⟨294, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 295: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_295 : MacroCheckFor ⟨295, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 296: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_296 : MacroCheckFor ⟨296, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 297: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_297 : MacroCheckFor ⟨297, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 298: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_298 : MacroCheckFor ⟨298, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 299: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_check_299 : MacroCheckFor ⟨299, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

end RiemannMachineVerification
