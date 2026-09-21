import RiemannMachineVerification.Reduction.ShortPathSupport
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Shortened state 320: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_320 : MacroCheckFor ⟨320, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 321: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_321 : MacroCheckFor ⟨321, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 322: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_322 : MacroCheckFor ⟨322, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 323: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_323 : MacroCheckFor ⟨323, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 324: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_324 : MacroCheckFor ⟨324, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 325: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_325 : MacroCheckFor ⟨325, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 326: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_326 : MacroCheckFor ⟨326, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 327: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_327 : MacroCheckFor ⟨327, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 328: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_328 : MacroCheckFor ⟨328, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 329: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_329 : MacroCheckFor ⟨329, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 330: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_330 : MacroCheckFor ⟨330, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 331: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_331 : MacroCheckFor ⟨331, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 332: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_332 : MacroCheckFor ⟨332, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 333: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_333 : MacroCheckFor ⟨333, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 334: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_334 : MacroCheckFor ⟨334, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 335: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_335 : MacroCheckFor ⟨335, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 336: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_336 : MacroCheckFor ⟨336, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 337: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_337 : MacroCheckFor ⟨337, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 338: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_338 : MacroCheckFor ⟨338, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

end RiemannMachineVerification.Implementation
