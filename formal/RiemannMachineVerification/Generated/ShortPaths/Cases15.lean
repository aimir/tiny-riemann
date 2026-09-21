import RiemannMachineVerification.Reduction.ShortPathSupport
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Shortened state 300: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_300 : MacroCheckFor ⟨300, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 301: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_301 : MacroCheckFor ⟨301, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 302: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_302 : MacroCheckFor ⟨302, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 303: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_303 : MacroCheckFor ⟨303, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 304: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_304 : MacroCheckFor ⟨304, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 305: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_305 : MacroCheckFor ⟨305, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 306: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_306 : MacroCheckFor ⟨306, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 307: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_307 : MacroCheckFor ⟨307, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 308: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_308 : MacroCheckFor ⟨308, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 309: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_309 : MacroCheckFor ⟨309, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 310: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_310 : MacroCheckFor ⟨310, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 311: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_311 : MacroCheckFor ⟨311, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 312: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_312 : MacroCheckFor ⟨312, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 313: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_313 : MacroCheckFor ⟨313, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 314: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_314 : MacroCheckFor ⟨314, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 315: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_315 : MacroCheckFor ⟨315, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 316: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_316 : MacroCheckFor ⟨316, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 317: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_317 : MacroCheckFor ⟨317, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 318: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_318 : MacroCheckFor ⟨318, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 319: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_319 : MacroCheckFor ⟨319, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

end RiemannMachineVerification.Implementation
