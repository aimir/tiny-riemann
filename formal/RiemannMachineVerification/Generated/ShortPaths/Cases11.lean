import RiemannMachineVerification.Reduction.ShortPathSupport
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Shortened state 220: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_220 : MacroCheckFor ⟨220, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 221: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_221 : MacroCheckFor ⟨221, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 222: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_222 : MacroCheckFor ⟨222, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 223: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_223 : MacroCheckFor ⟨223, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 224: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_224 : MacroCheckFor ⟨224, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 225: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_225 : MacroCheckFor ⟨225, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 226: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_226 : MacroCheckFor ⟨226, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 227: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_227 : MacroCheckFor ⟨227, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 228: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `localConfiguration_ext` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_228 : MacroCheckFor ⟨228, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

/-- [proof-guide] Shortened state 229: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_229 : MacroCheckFor ⟨229, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 230: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_230 : MacroCheckFor ⟨230, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 231: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_231 : MacroCheckFor ⟨231, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 232: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_232 : MacroCheckFor ⟨232, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 233: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_233 : MacroCheckFor ⟨233, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 234: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_234 : MacroCheckFor ⟨234, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 235: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_235 : MacroCheckFor ⟨235, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 236: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_236 : MacroCheckFor ⟨236, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 237: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_237 : MacroCheckFor ⟨237, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 238: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_238 : MacroCheckFor ⟨238, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

/-- [proof-guide] Shortened state 239: both read-symbol transitions satisfy the local expansion certificate.
Proof: Combines `macroCheck_one` with the displayed local equations.
Role: Preserves blank-tape halting through local path replacement and the invariant-restricted quotient. -/
theorem macro_check_239 : MacroCheckFor ⟨239, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

end RiemannMachineVerification.Implementation
