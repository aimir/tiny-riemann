import RiemannMachineVerification.Registers.Arithmetic.Values
import RiemannMachineVerification.Generated.Tables.ArithmeticProgram
set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification

/-- [proof-guide] Address 0 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_0 : macroProgram ⟨0, by decide⟩ =
    .initialize ⟨1, by decide⟩ := rfl

/-- [proof-guide] Address 1 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1 : macroProgram ⟨1, by decide⟩ =
    .initialize ⟨2, by decide⟩ := rfl

/-- [proof-guide] Address 2 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_2 : macroProgram ⟨2, by decide⟩ =
    .initialize ⟨3, by decide⟩ := rfl

/-- [proof-guide] Address 3 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_3 : macroProgram ⟨3, by decide⟩ =
    .initialize ⟨4, by decide⟩ := rfl

/-- [proof-guide] Address 4 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_4 : macroProgram ⟨4, by decide⟩ =
    .initialize ⟨5, by decide⟩ := rfl

/-- [proof-guide] Address 5 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_5 : macroProgram ⟨5, by decide⟩ =
    .initialize ⟨6, by decide⟩ := rfl

/-- [proof-guide] Address 6 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_6 : macroProgram ⟨6, by decide⟩ =
    .initialize ⟨7, by decide⟩ := rfl

/-- [proof-guide] Address 7 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_7 : macroProgram ⟨7, by decide⟩ =
    .initialize ⟨8, by decide⟩ := rfl

/-- [proof-guide] Address 8 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_8 : macroProgram ⟨8, by decide⟩ =
    .initialize ⟨9, by decide⟩ := rfl

/-- [proof-guide] Address 9 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_9 : macroProgram ⟨9, by decide⟩ =
    .initialize ⟨10, by decide⟩ := rfl

/-- [proof-guide] Address 10 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_10 : macroProgram ⟨10, by decide⟩ =
    .initialize ⟨11, by decide⟩ := rfl

/-- [proof-guide] Address 11 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_11 : macroProgram ⟨11, by decide⟩ =
    .initialize ⟨12, by decide⟩ := rfl

/-- [proof-guide] Address 12 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_12 : macroProgram ⟨12, by decide⟩ =
    .initialize ⟨13, by decide⟩ := rfl

/-- [proof-guide] Address 13 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_13 : macroProgram ⟨13, by decide⟩ =
    .initialize ⟨14, by decide⟩ := rfl

/-- [proof-guide] Address 14 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_14 : macroProgram ⟨14, by decide⟩ =
    .initialize ⟨15, by decide⟩ := rfl

/-- [proof-guide] Address 15 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_15 : macroProgram ⟨15, by decide⟩ =
    .initialize ⟨16, by decide⟩ := rfl

/-- [proof-guide] Address 16 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_16 : macroProgram ⟨16, by decide⟩ =
    .transfer ⟨1, by decide⟩ [] ⟨20, by decide⟩ := rfl

/-- [proof-guide] Address 20 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_20 : macroProgram ⟨20, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨21, by decide⟩ := rfl

/-- [proof-guide] Address 21 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_21 : macroProgram ⟨21, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨22, by decide⟩ := rfl

/-- [proof-guide] Address 22 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_22 : macroProgram ⟨22, by decide⟩ =
    .jump ⟨24, by decide⟩ := rfl

/-- [proof-guide] Address 24 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_24 : macroProgram ⟨24, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨28, by decide⟩ := rfl

/-- [proof-guide] Address 28 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_28 : macroProgram ⟨28, by decide⟩ =
    .jump ⟨32, by decide⟩ := rfl

/-- [proof-guide] Address 32 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_32 : macroProgram ⟨32, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨40, by decide⟩ := rfl

/-- [proof-guide] Address 40 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_40 : macroProgram ⟨40, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨44, by decide⟩ := rfl

/-- [proof-guide] Address 44 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_44 : macroProgram ⟨44, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨45, by decide⟩ ⟨46, by decide⟩ := rfl

/-- [proof-guide] Address 45 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_45 : macroProgram ⟨45, by decide⟩ =
    .jump ⟨147, by decide⟩ := rfl

/-- [proof-guide] Address 46 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_46 : macroProgram ⟨46, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨47, by decide⟩ := rfl

/-- [proof-guide] Address 47 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_47 : macroProgram ⟨47, by decide⟩ =
    .jump ⟨48, by decide⟩ := rfl

/-- [proof-guide] Address 48 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_48 : macroProgram ⟨48, by decide⟩ =
    .jump ⟨56, by decide⟩ := rfl

/-- [proof-guide] Address 56 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_56 : macroProgram ⟨56, by decide⟩ =
    .jump ⟨64, by decide⟩ := rfl

/-- [proof-guide] Address 64 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_64 : macroProgram ⟨64, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨68, by decide⟩ := rfl

/-- [proof-guide] Address 68 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_68 : macroProgram ⟨68, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨72, by decide⟩ := rfl

/-- [proof-guide] Address 72 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_72 : macroProgram ⟨72, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨2, by decide⟩, ⟨6, by decide⟩] ⟨80, by decide⟩ := rfl

/-- [proof-guide] Address 80 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_80 : macroProgram ⟨80, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨1, by decide⟩] ⟨84, by decide⟩ := rfl

/-- [proof-guide] Address 84 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_84 : macroProgram ⟨84, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨85, by decide⟩ ⟨86, by decide⟩ := rfl

/-- [proof-guide] Address 85 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_85 : macroProgram ⟨85, by decide⟩ =
    .jump ⟨111, by decide⟩ := rfl

/-- [proof-guide] Address 86 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_86 : macroProgram ⟨86, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨87, by decide⟩ ⟨88, by decide⟩ := rfl

/-- [proof-guide] Address 87 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_87 : macroProgram ⟨87, by decide⟩ =
    .jump ⟨90, by decide⟩ := rfl

/-- [proof-guide] Address 88 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_88 : macroProgram ⟨88, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨89, by decide⟩ := rfl

/-- [proof-guide] Address 89 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_89 : macroProgram ⟨89, by decide⟩ =
    .jump ⟨108, by decide⟩ := rfl

/-- [proof-guide] Address 90 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_90 : macroProgram ⟨90, by decide⟩ =
    .jump ⟨92, by decide⟩ := rfl

/-- [proof-guide] Address 92 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_92 : macroProgram ⟨92, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨96, by decide⟩ := rfl

/-- [proof-guide] Address 96 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_96 : macroProgram ⟨96, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨3, by decide⟩, ⟨6, by decide⟩] ⟨104, by decide⟩ := rfl

/-- [proof-guide] Address 104 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_104 : macroProgram ⟨104, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨4, by decide⟩] ⟨108, by decide⟩ := rfl

/-- [proof-guide] Address 108 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_108 : macroProgram ⟨108, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨109, by decide⟩ ⟨110, by decide⟩ := rfl

/-- [proof-guide] Address 110 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_110 : macroProgram ⟨110, by decide⟩ =
    .jump ⟨84, by decide⟩ := rfl

/-- [proof-guide] Address 111 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_111 : macroProgram ⟨111, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨112, by decide⟩ ⟨113, by decide⟩ := rfl

/-- [proof-guide] Address 112 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_112 : macroProgram ⟨112, by decide⟩ =
    .jump ⟨134, by decide⟩ := rfl

/-- [proof-guide] Address 113 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_113 : macroProgram ⟨113, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨114, by decide⟩ := rfl

/-- [proof-guide] Address 114 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_114 : macroProgram ⟨114, by decide⟩ =
    .jump ⟨116, by decide⟩ := rfl

/-- [proof-guide] Address 116 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_116 : macroProgram ⟨116, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨120, by decide⟩ := rfl

/-- [proof-guide] Address 120 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_120 : macroProgram ⟨120, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨128, by decide⟩ := rfl

/-- [proof-guide] Address 128 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_128 : macroProgram ⟨128, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨132, by decide⟩ := rfl

/-- [proof-guide] Address 132 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_132 : macroProgram ⟨132, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨133, by decide⟩ := rfl

/-- [proof-guide] Address 133 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_133 : macroProgram ⟨133, by decide⟩ =
    .jump ⟨44, by decide⟩ := rfl

/-- [proof-guide] Address 134 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_134 : macroProgram ⟨134, by decide⟩ =
    .jump ⟨136, by decide⟩ := rfl

/-- [proof-guide] Address 136 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_136 : macroProgram ⟨136, by decide⟩ =
    .jump ⟨144, by decide⟩ := rfl

/-- [proof-guide] Address 144 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_144 : macroProgram ⟨144, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨145, by decide⟩ ⟨146, by decide⟩ := rfl

/-- [proof-guide] Address 146 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_146 : macroProgram ⟨146, by decide⟩ =
    .jump ⟨44, by decide⟩ := rfl

/-- [proof-guide] Address 147 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_147 : macroProgram ⟨147, by decide⟩ =
    .jump ⟨148, by decide⟩ := rfl

/-- [proof-guide] Address 148 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_148 : macroProgram ⟨148, by decide⟩ =
    .jump ⟨152, by decide⟩ := rfl

/-- [proof-guide] Address 152 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_152 : macroProgram ⟨152, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨156, by decide⟩ := rfl

/-- [proof-guide] Address 156 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_156 : macroProgram ⟨156, by decide⟩ =
    .jump ⟨160, by decide⟩ := rfl

/-- [proof-guide] Address 160 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_160 : macroProgram ⟨160, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨168, by decide⟩ := rfl

/-- [proof-guide] Address 168 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_168 : macroProgram ⟨168, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨1, by decide⟩] ⟨172, by decide⟩ := rfl

/-- [proof-guide] Address 172 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_172 : macroProgram ⟨172, by decide⟩ =
    .jump ⟨176, by decide⟩ := rfl

/-- [proof-guide] Address 176 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_176 : macroProgram ⟨176, by decide⟩ =
    .jump ⟨192, by decide⟩ := rfl

/-- [proof-guide] Address 192 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_192 : macroProgram ⟨192, by decide⟩ =
    .jump ⟨256, by decide⟩ := rfl

/-- [proof-guide] Address 256 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_256 : macroProgram ⟨256, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨260, by decide⟩ := rfl

/-- [proof-guide] Address 260 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_260 : macroProgram ⟨260, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨261, by decide⟩ := rfl

/-- [proof-guide] Address 261 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_261 : macroProgram ⟨261, by decide⟩ =
    .jump ⟨262, by decide⟩ := rfl

/-- [proof-guide] Address 262 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_262 : macroProgram ⟨262, by decide⟩ =
    .jump ⟨264, by decide⟩ := rfl

/-- [proof-guide] Address 264 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_264 : macroProgram ⟨264, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨268, by decide⟩ := rfl

/-- [proof-guide] Address 268 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_268 : macroProgram ⟨268, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨269, by decide⟩ ⟨270, by decide⟩ := rfl

/-- [proof-guide] Address 269 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_269 : macroProgram ⟨269, by decide⟩ =
    .jump ⟨371, by decide⟩ := rfl

/-- [proof-guide] Address 270 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_270 : macroProgram ⟨270, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨271, by decide⟩ := rfl

/-- [proof-guide] Address 271 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_271 : macroProgram ⟨271, by decide⟩ =
    .jump ⟨272, by decide⟩ := rfl

/-- [proof-guide] Address 272 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_272 : macroProgram ⟨272, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨280, by decide⟩ := rfl

/-- [proof-guide] Address 280 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_280 : macroProgram ⟨280, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨284, by decide⟩ := rfl

/-- [proof-guide] Address 284 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_284 : macroProgram ⟨284, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨285, by decide⟩ ⟨286, by decide⟩ := rfl

/-- [proof-guide] Address 285 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_285 : macroProgram ⟨285, by decide⟩ =
    .jump ⟨301, by decide⟩ := rfl

/-- [proof-guide] Address 286 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_286 : macroProgram ⟨286, by decide⟩ =
    .jump ⟨288, by decide⟩ := rfl

/-- [proof-guide] Address 288 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_288 : macroProgram ⟨288, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨296, by decide⟩ := rfl

/-- [proof-guide] Address 296 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_296 : macroProgram ⟨296, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨300, by decide⟩ := rfl

/-- [proof-guide] Address 300 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_300 : macroProgram ⟨300, by decide⟩ =
    .jump ⟨284, by decide⟩ := rfl

/-- [proof-guide] Address 301 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_301 : macroProgram ⟨301, by decide⟩ =
    .jump ⟨302, by decide⟩ := rfl

/-- [proof-guide] Address 302 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_302 : macroProgram ⟨302, by decide⟩ =
    .jump ⟨304, by decide⟩ := rfl

/-- [proof-guide] Address 304 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_304 : macroProgram ⟨304, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] ⟨312, by decide⟩ := rfl

/-- [proof-guide] Address 312 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_312 : macroProgram ⟨312, by decide⟩ =
    .transfer ⟨7, by decide⟩ [⟨3, by decide⟩] ⟨316, by decide⟩ := rfl

/-- [proof-guide] Address 316 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_316 : macroProgram ⟨316, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨320, by decide⟩ := rfl

/-- [proof-guide] Address 320 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_320 : macroProgram ⟨320, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨324, by decide⟩ := rfl

/-- [proof-guide] Address 324 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_324 : macroProgram ⟨324, by decide⟩ =
    .jump ⟨328, by decide⟩ := rfl

/-- [proof-guide] Address 328 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_328 : macroProgram ⟨328, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨336, by decide⟩ := rfl

/-- [proof-guide] Address 336 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_336 : macroProgram ⟨336, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨340, by decide⟩ := rfl

/-- [proof-guide] Address 340 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_340 : macroProgram ⟨340, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨341, by decide⟩ ⟨342, by decide⟩ := rfl

/-- [proof-guide] Address 341 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_341 : macroProgram ⟨341, by decide⟩ =
    .jump ⟨357, by decide⟩ := rfl

/-- [proof-guide] Address 342 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_342 : macroProgram ⟨342, by decide⟩ =
    .jump ⟨344, by decide⟩ := rfl

/-- [proof-guide] Address 344 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_344 : macroProgram ⟨344, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨352, by decide⟩ := rfl

/-- [proof-guide] Address 352 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_352 : macroProgram ⟨352, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨356, by decide⟩ := rfl

/-- [proof-guide] Address 356 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_356 : macroProgram ⟨356, by decide⟩ =
    .jump ⟨340, by decide⟩ := rfl

/-- [proof-guide] Address 357 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_357 : macroProgram ⟨357, by decide⟩ =
    .jump ⟨358, by decide⟩ := rfl

/-- [proof-guide] Address 358 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_358 : macroProgram ⟨358, by decide⟩ =
    .jump ⟨360, by decide⟩ := rfl

/-- [proof-guide] Address 360 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_360 : macroProgram ⟨360, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨364, by decide⟩ := rfl

/-- [proof-guide] Address 364 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_364 : macroProgram ⟨364, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨368, by decide⟩ := rfl

/-- [proof-guide] Address 368 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_368 : macroProgram ⟨368, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨369, by decide⟩ ⟨370, by decide⟩ := rfl

/-- [proof-guide] Address 370 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_370 : macroProgram ⟨370, by decide⟩ =
    .jump ⟨268, by decide⟩ := rfl

/-- [proof-guide] Address 371 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_371 : macroProgram ⟨371, by decide⟩ =
    .jump ⟨372, by decide⟩ := rfl

/-- [proof-guide] Address 372 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_372 : macroProgram ⟨372, by decide⟩ =
    .jump ⟨376, by decide⟩ := rfl

/-- [proof-guide] Address 376 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_376 : macroProgram ⟨376, by decide⟩ =
    .jump ⟨384, by decide⟩ := rfl

/-- [proof-guide] Address 384 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_384 : macroProgram ⟨384, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨388, by decide⟩ := rfl

/-- [proof-guide] Address 388 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_388 : macroProgram ⟨388, by decide⟩ =
    .jump ⟨392, by decide⟩ := rfl

/-- [proof-guide] Address 392 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_392 : macroProgram ⟨392, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨400, by decide⟩ := rfl

/-- [proof-guide] Address 400 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_400 : macroProgram ⟨400, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨404, by decide⟩ := rfl

/-- [proof-guide] Address 404 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_404 : macroProgram ⟨404, by decide⟩ =
    .transfer ⟨5, by decide⟩ [] ⟨408, by decide⟩ := rfl

/-- [proof-guide] Address 408 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_408 : macroProgram ⟨408, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨5, by decide⟩, ⟨6, by decide⟩] ⟨416, by decide⟩ := rfl

/-- [proof-guide] Address 416 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_416 : macroProgram ⟨416, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨420, by decide⟩ := rfl

/-- [proof-guide] Address 420 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_420 : macroProgram ⟨420, by decide⟩ =
    .jump ⟨424, by decide⟩ := rfl

/-- [proof-guide] Address 424 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_424 : macroProgram ⟨424, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨432, by decide⟩ := rfl

/-- [proof-guide] Address 432 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_432 : macroProgram ⟨432, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨436, by decide⟩ := rfl

/-- [proof-guide] Address 436 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_436 : macroProgram ⟨436, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨437, by decide⟩ ⟨438, by decide⟩ := rfl

/-- [proof-guide] Address 437 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_437 : macroProgram ⟨437, by decide⟩ =
    .jump ⟨453, by decide⟩ := rfl

/-- [proof-guide] Address 438 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_438 : macroProgram ⟨438, by decide⟩ =
    .jump ⟨440, by decide⟩ := rfl

/-- [proof-guide] Address 440 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_440 : macroProgram ⟨440, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨448, by decide⟩ := rfl

/-- [proof-guide] Address 448 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_448 : macroProgram ⟨448, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨0, by decide⟩] ⟨452, by decide⟩ := rfl

/-- [proof-guide] Address 452 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_452 : macroProgram ⟨452, by decide⟩ =
    .jump ⟨436, by decide⟩ := rfl

/-- [proof-guide] Address 453 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_453 : macroProgram ⟨453, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨454, by decide⟩ ⟨455, by decide⟩ := rfl

/-- [proof-guide] Address 454 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_454 : macroProgram ⟨454, by decide⟩ =
    .jump ⟨458, by decide⟩ := rfl

/-- [proof-guide] Address 455 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_455 : macroProgram ⟨455, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨456, by decide⟩ ⟨457, by decide⟩ := rfl

/-- [proof-guide] Address 456 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_456 : macroProgram ⟨456, by decide⟩ =
    .jump ⟨457, by decide⟩ := rfl

/-- [proof-guide] Address 457 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_457 : macroProgram ⟨457, by decide⟩ =
    .jump ⟨453, by decide⟩ := rfl

/-- [proof-guide] Address 458 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_458 : macroProgram ⟨458, by decide⟩ =
    .jump ⟨460, by decide⟩ := rfl

/-- [proof-guide] Address 460 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_460 : macroProgram ⟨460, by decide⟩ =
    .transfer ⟨1, by decide⟩ [] ⟨464, by decide⟩ := rfl

/-- [proof-guide] Address 464 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_464 : macroProgram ⟨464, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨1, by decide⟩, ⟨6, by decide⟩] ⟨472, by decide⟩ := rfl

/-- [proof-guide] Address 472 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_472 : macroProgram ⟨472, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨476, by decide⟩ := rfl

/-- [proof-guide] Address 476 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_476 : macroProgram ⟨476, by decide⟩ =
    .jump ⟨480, by decide⟩ := rfl

/-- [proof-guide] Address 480 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_480 : macroProgram ⟨480, by decide⟩ =
    .jump ⟨512, by decide⟩ := rfl

/-- [proof-guide] Address 512 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_512 : macroProgram ⟨512, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨516, by decide⟩ := rfl

/-- [proof-guide] Address 516 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_516 : macroProgram ⟨516, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨517, by decide⟩ := rfl

/-- [proof-guide] Address 517 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_517 : macroProgram ⟨517, by decide⟩ =
    .jump ⟨518, by decide⟩ := rfl

/-- [proof-guide] Address 518 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_518 : macroProgram ⟨518, by decide⟩ =
    .jump ⟨520, by decide⟩ := rfl

/-- [proof-guide] Address 520 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_520 : macroProgram ⟨520, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨524, by decide⟩ := rfl

/-- [proof-guide] Address 524 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_524 : macroProgram ⟨524, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨525, by decide⟩ ⟨526, by decide⟩ := rfl

/-- [proof-guide] Address 525 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_525 : macroProgram ⟨525, by decide⟩ =
    .jump ⟨627, by decide⟩ := rfl

/-- [proof-guide] Address 526 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_526 : macroProgram ⟨526, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨527, by decide⟩ := rfl

/-- [proof-guide] Address 527 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_527 : macroProgram ⟨527, by decide⟩ =
    .jump ⟨528, by decide⟩ := rfl

/-- [proof-guide] Address 528 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_528 : macroProgram ⟨528, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨536, by decide⟩ := rfl

/-- [proof-guide] Address 536 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_536 : macroProgram ⟨536, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨540, by decide⟩ := rfl

/-- [proof-guide] Address 540 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_540 : macroProgram ⟨540, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨541, by decide⟩ ⟨542, by decide⟩ := rfl

/-- [proof-guide] Address 541 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_541 : macroProgram ⟨541, by decide⟩ =
    .jump ⟨557, by decide⟩ := rfl

/-- [proof-guide] Address 542 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_542 : macroProgram ⟨542, by decide⟩ =
    .jump ⟨544, by decide⟩ := rfl

/-- [proof-guide] Address 544 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_544 : macroProgram ⟨544, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨552, by decide⟩ := rfl

/-- [proof-guide] Address 552 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_552 : macroProgram ⟨552, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨556, by decide⟩ := rfl

/-- [proof-guide] Address 556 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_556 : macroProgram ⟨556, by decide⟩ =
    .jump ⟨540, by decide⟩ := rfl

/-- [proof-guide] Address 557 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_557 : macroProgram ⟨557, by decide⟩ =
    .jump ⟨558, by decide⟩ := rfl

/-- [proof-guide] Address 558 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_558 : macroProgram ⟨558, by decide⟩ =
    .jump ⟨560, by decide⟩ := rfl

/-- [proof-guide] Address 560 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_560 : macroProgram ⟨560, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] ⟨568, by decide⟩ := rfl

/-- [proof-guide] Address 568 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_568 : macroProgram ⟨568, by decide⟩ =
    .transfer ⟨7, by decide⟩ [⟨3, by decide⟩] ⟨572, by decide⟩ := rfl

/-- [proof-guide] Address 572 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_572 : macroProgram ⟨572, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨576, by decide⟩ := rfl

/-- [proof-guide] Address 576 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_576 : macroProgram ⟨576, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨580, by decide⟩ := rfl

/-- [proof-guide] Address 580 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_580 : macroProgram ⟨580, by decide⟩ =
    .jump ⟨584, by decide⟩ := rfl

/-- [proof-guide] Address 584 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_584 : macroProgram ⟨584, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨592, by decide⟩ := rfl

/-- [proof-guide] Address 592 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_592 : macroProgram ⟨592, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨596, by decide⟩ := rfl

/-- [proof-guide] Address 596 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_596 : macroProgram ⟨596, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨597, by decide⟩ ⟨598, by decide⟩ := rfl

/-- [proof-guide] Address 597 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_597 : macroProgram ⟨597, by decide⟩ =
    .jump ⟨613, by decide⟩ := rfl

/-- [proof-guide] Address 598 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_598 : macroProgram ⟨598, by decide⟩ =
    .jump ⟨600, by decide⟩ := rfl

/-- [proof-guide] Address 600 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_600 : macroProgram ⟨600, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨608, by decide⟩ := rfl

/-- [proof-guide] Address 608 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_608 : macroProgram ⟨608, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨612, by decide⟩ := rfl

/-- [proof-guide] Address 612 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_612 : macroProgram ⟨612, by decide⟩ =
    .jump ⟨596, by decide⟩ := rfl

/-- [proof-guide] Address 613 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_613 : macroProgram ⟨613, by decide⟩ =
    .jump ⟨614, by decide⟩ := rfl

/-- [proof-guide] Address 614 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_614 : macroProgram ⟨614, by decide⟩ =
    .jump ⟨616, by decide⟩ := rfl

/-- [proof-guide] Address 616 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_616 : macroProgram ⟨616, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨620, by decide⟩ := rfl

/-- [proof-guide] Address 620 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_620 : macroProgram ⟨620, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨624, by decide⟩ := rfl

/-- [proof-guide] Address 624 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_624 : macroProgram ⟨624, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨625, by decide⟩ ⟨626, by decide⟩ := rfl

/-- [proof-guide] Address 626 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_626 : macroProgram ⟨626, by decide⟩ =
    .jump ⟨524, by decide⟩ := rfl

/-- [proof-guide] Address 627 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_627 : macroProgram ⟨627, by decide⟩ =
    .jump ⟨628, by decide⟩ := rfl

/-- [proof-guide] Address 628 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_628 : macroProgram ⟨628, by decide⟩ =
    .jump ⟨632, by decide⟩ := rfl

/-- [proof-guide] Address 632 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_632 : macroProgram ⟨632, by decide⟩ =
    .jump ⟨640, by decide⟩ := rfl

/-- [proof-guide] Address 640 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_640 : macroProgram ⟨640, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨648, by decide⟩ := rfl

/-- [proof-guide] Address 648 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_648 : macroProgram ⟨648, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨652, by decide⟩ := rfl

/-- [proof-guide] Address 652 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_652 : macroProgram ⟨652, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨653, by decide⟩ ⟨654, by decide⟩ := rfl

/-- [proof-guide] Address 653 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_653 : macroProgram ⟨653, by decide⟩ =
    .jump ⟨669, by decide⟩ := rfl

/-- [proof-guide] Address 654 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_654 : macroProgram ⟨654, by decide⟩ =
    .jump ⟨656, by decide⟩ := rfl

/-- [proof-guide] Address 656 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_656 : macroProgram ⟨656, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨664, by decide⟩ := rfl

/-- [proof-guide] Address 664 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_664 : macroProgram ⟨664, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨668, by decide⟩ := rfl

/-- [proof-guide] Address 668 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_668 : macroProgram ⟨668, by decide⟩ =
    .jump ⟨652, by decide⟩ := rfl

/-- [proof-guide] Address 669 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_669 : macroProgram ⟨669, by decide⟩ =
    .jump ⟨670, by decide⟩ := rfl

/-- [proof-guide] Address 670 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_670 : macroProgram ⟨670, by decide⟩ =
    .jump ⟨672, by decide⟩ := rfl

/-- [proof-guide] Address 672 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_672 : macroProgram ⟨672, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨676, by decide⟩ := rfl

/-- [proof-guide] Address 676 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_676 : macroProgram ⟨676, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨680, by decide⟩ := rfl

/-- [proof-guide] Address 680 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_680 : macroProgram ⟨680, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨688, by decide⟩ := rfl

/-- [proof-guide] Address 688 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_688 : macroProgram ⟨688, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨692, by decide⟩ := rfl

/-- [proof-guide] Address 692 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_692 : macroProgram ⟨692, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨693, by decide⟩ ⟨694, by decide⟩ := rfl

/-- [proof-guide] Address 693 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_693 : macroProgram ⟨693, by decide⟩ =
    .jump ⟨709, by decide⟩ := rfl

/-- [proof-guide] Address 694 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_694 : macroProgram ⟨694, by decide⟩ =
    .jump ⟨696, by decide⟩ := rfl

/-- [proof-guide] Address 696 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_696 : macroProgram ⟨696, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨704, by decide⟩ := rfl

/-- [proof-guide] Address 704 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_704 : macroProgram ⟨704, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨708, by decide⟩ := rfl

/-- [proof-guide] Address 708 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_708 : macroProgram ⟨708, by decide⟩ =
    .jump ⟨692, by decide⟩ := rfl

/-- [proof-guide] Address 709 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_709 : macroProgram ⟨709, by decide⟩ =
    .jump ⟨710, by decide⟩ := rfl

/-- [proof-guide] Address 710 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_710 : macroProgram ⟨710, by decide⟩ =
    .jump ⟨712, by decide⟩ := rfl

/-- [proof-guide] Address 712 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_712 : macroProgram ⟨712, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨716, by decide⟩ := rfl

/-- [proof-guide] Address 716 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_716 : macroProgram ⟨716, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨720, by decide⟩ := rfl

/-- [proof-guide] Address 720 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_720 : macroProgram ⟨720, by decide⟩ =
    .jump ⟨736, by decide⟩ := rfl

/-- [proof-guide] Address 736 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_736 : macroProgram ⟨736, by decide⟩ =
    .jump ⟨768, by decide⟩ := rfl

/-- [proof-guide] Address 768 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_768 : macroProgram ⟨768, by decide⟩ =
    .transfer ⟨5, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨776, by decide⟩ := rfl

/-- [proof-guide] Address 776 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_776 : macroProgram ⟨776, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨5, by decide⟩] ⟨780, by decide⟩ := rfl

/-- [proof-guide] Address 780 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_780 : macroProgram ⟨780, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨781, by decide⟩ ⟨782, by decide⟩ := rfl

/-- [proof-guide] Address 781 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_781 : macroProgram ⟨781, by decide⟩ =
    .jump ⟨797, by decide⟩ := rfl

/-- [proof-guide] Address 782 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_782 : macroProgram ⟨782, by decide⟩ =
    .jump ⟨784, by decide⟩ := rfl

/-- [proof-guide] Address 784 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_784 : macroProgram ⟨784, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨792, by decide⟩ := rfl

/-- [proof-guide] Address 792 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_792 : macroProgram ⟨792, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨796, by decide⟩ := rfl

/-- [proof-guide] Address 796 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_796 : macroProgram ⟨796, by decide⟩ =
    .jump ⟨780, by decide⟩ := rfl

/-- [proof-guide] Address 797 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_797 : macroProgram ⟨797, by decide⟩ =
    .jump ⟨798, by decide⟩ := rfl

/-- [proof-guide] Address 798 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_798 : macroProgram ⟨798, by decide⟩ =
    .jump ⟨800, by decide⟩ := rfl

/-- [proof-guide] Address 800 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_800 : macroProgram ⟨800, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨804, by decide⟩ := rfl

/-- [proof-guide] Address 804 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_804 : macroProgram ⟨804, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨808, by decide⟩ := rfl

/-- [proof-guide] Address 808 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_808 : macroProgram ⟨808, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨816, by decide⟩ := rfl

/-- [proof-guide] Address 816 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_816 : macroProgram ⟨816, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨1, by decide⟩] ⟨820, by decide⟩ := rfl

/-- [proof-guide] Address 820 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_820 : macroProgram ⟨820, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨821, by decide⟩ ⟨822, by decide⟩ := rfl

/-- [proof-guide] Address 821 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_821 : macroProgram ⟨821, by decide⟩ =
    .jump ⟨837, by decide⟩ := rfl

/-- [proof-guide] Address 822 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_822 : macroProgram ⟨822, by decide⟩ =
    .jump ⟨824, by decide⟩ := rfl

/-- [proof-guide] Address 824 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_824 : macroProgram ⟨824, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨832, by decide⟩ := rfl

/-- [proof-guide] Address 832 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_832 : macroProgram ⟨832, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨836, by decide⟩ := rfl

/-- [proof-guide] Address 836 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_836 : macroProgram ⟨836, by decide⟩ =
    .jump ⟨820, by decide⟩ := rfl

/-- [proof-guide] Address 837 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_837 : macroProgram ⟨837, by decide⟩ =
    .jump ⟨838, by decide⟩ := rfl

/-- [proof-guide] Address 838 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_838 : macroProgram ⟨838, by decide⟩ =
    .jump ⟨840, by decide⟩ := rfl

/-- [proof-guide] Address 840 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_840 : macroProgram ⟨840, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨844, by decide⟩ := rfl

/-- [proof-guide] Address 844 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_844 : macroProgram ⟨844, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨848, by decide⟩ := rfl

/-- [proof-guide] Address 848 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_848 : macroProgram ⟨848, by decide⟩ =
    .jump ⟨864, by decide⟩ := rfl

/-- [proof-guide] Address 864 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_864 : macroProgram ⟨864, by decide⟩ =
    .jump ⟨896, by decide⟩ := rfl

/-- [proof-guide] Address 896 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_896 : macroProgram ⟨896, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨904, by decide⟩ := rfl

/-- [proof-guide] Address 904 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_904 : macroProgram ⟨904, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨908, by decide⟩ := rfl

/-- [proof-guide] Address 908 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_908 : macroProgram ⟨908, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨909, by decide⟩ ⟨910, by decide⟩ := rfl

/-- [proof-guide] Address 909 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_909 : macroProgram ⟨909, by decide⟩ =
    .jump ⟨925, by decide⟩ := rfl

/-- [proof-guide] Address 910 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_910 : macroProgram ⟨910, by decide⟩ =
    .jump ⟨912, by decide⟩ := rfl

/-- [proof-guide] Address 912 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_912 : macroProgram ⟨912, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨920, by decide⟩ := rfl

/-- [proof-guide] Address 920 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_920 : macroProgram ⟨920, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨924, by decide⟩ := rfl

/-- [proof-guide] Address 924 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_924 : macroProgram ⟨924, by decide⟩ =
    .jump ⟨908, by decide⟩ := rfl

/-- [proof-guide] Address 925 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_925 : macroProgram ⟨925, by decide⟩ =
    .jump ⟨926, by decide⟩ := rfl

/-- [proof-guide] Address 926 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_926 : macroProgram ⟨926, by decide⟩ =
    .jump ⟨928, by decide⟩ := rfl

/-- [proof-guide] Address 928 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_928 : macroProgram ⟨928, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨932, by decide⟩ := rfl

/-- [proof-guide] Address 932 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_932 : macroProgram ⟨932, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨936, by decide⟩ := rfl

/-- [proof-guide] Address 936 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_936 : macroProgram ⟨936, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨944, by decide⟩ := rfl

/-- [proof-guide] Address 944 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_944 : macroProgram ⟨944, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨948, by decide⟩ := rfl

/-- [proof-guide] Address 948 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_948 : macroProgram ⟨948, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨949, by decide⟩ ⟨950, by decide⟩ := rfl

/-- [proof-guide] Address 949 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_949 : macroProgram ⟨949, by decide⟩ =
    .jump ⟨965, by decide⟩ := rfl

/-- [proof-guide] Address 950 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_950 : macroProgram ⟨950, by decide⟩ =
    .jump ⟨952, by decide⟩ := rfl

/-- [proof-guide] Address 952 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_952 : macroProgram ⟨952, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨960, by decide⟩ := rfl

/-- [proof-guide] Address 960 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_960 : macroProgram ⟨960, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨964, by decide⟩ := rfl

/-- [proof-guide] Address 964 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_964 : macroProgram ⟨964, by decide⟩ =
    .jump ⟨948, by decide⟩ := rfl

/-- [proof-guide] Address 965 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_965 : macroProgram ⟨965, by decide⟩ =
    .jump ⟨966, by decide⟩ := rfl

/-- [proof-guide] Address 966 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_966 : macroProgram ⟨966, by decide⟩ =
    .jump ⟨968, by decide⟩ := rfl

/-- [proof-guide] Address 968 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_968 : macroProgram ⟨968, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨972, by decide⟩ := rfl

/-- [proof-guide] Address 972 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_972 : macroProgram ⟨972, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨976, by decide⟩ := rfl

/-- [proof-guide] Address 976 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_976 : macroProgram ⟨976, by decide⟩ =
    .jump ⟨992, by decide⟩ := rfl

/-- [proof-guide] Address 992 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_992 : macroProgram ⟨992, by decide⟩ =
    .jump ⟨1024, by decide⟩ := rfl

/-- [proof-guide] Address 1024 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1024 : macroProgram ⟨1024, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨1032, by decide⟩ := rfl

/-- [proof-guide] Address 1032 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1032 : macroProgram ⟨1032, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨1036, by decide⟩ := rfl

/-- [proof-guide] Address 1036 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1036 : macroProgram ⟨1036, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨1037, by decide⟩ ⟨1038, by decide⟩ := rfl

/-- [proof-guide] Address 1037 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1037 : macroProgram ⟨1037, by decide⟩ =
    .jump ⟨1053, by decide⟩ := rfl

/-- [proof-guide] Address 1038 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1038 : macroProgram ⟨1038, by decide⟩ =
    .jump ⟨1040, by decide⟩ := rfl

/-- [proof-guide] Address 1040 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1040 : macroProgram ⟨1040, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨1048, by decide⟩ := rfl

/-- [proof-guide] Address 1048 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1048 : macroProgram ⟨1048, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨0, by decide⟩] ⟨1052, by decide⟩ := rfl

/-- [proof-guide] Address 1052 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1052 : macroProgram ⟨1052, by decide⟩ =
    .jump ⟨1036, by decide⟩ := rfl

/-- [proof-guide] Address 1053 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1053 : macroProgram ⟨1053, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨1054, by decide⟩ ⟨1055, by decide⟩ := rfl

/-- [proof-guide] Address 1054 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1054 : macroProgram ⟨1054, by decide⟩ =
    .jump ⟨1058, by decide⟩ := rfl

/-- [proof-guide] Address 1055 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1055 : macroProgram ⟨1055, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨1056, by decide⟩ ⟨1057, by decide⟩ := rfl

/-- [proof-guide] Address 1056 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1056 : macroProgram ⟨1056, by decide⟩ =
    .jump ⟨1057, by decide⟩ := rfl

/-- [proof-guide] Address 1057 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1057 : macroProgram ⟨1057, by decide⟩ =
    .jump ⟨1053, by decide⟩ := rfl

/-- [proof-guide] Address 1058 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1058 : macroProgram ⟨1058, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨1059, by decide⟩ ⟨1060, by decide⟩ := rfl

/-- [proof-guide] Address 1059 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1059 : macroProgram ⟨1059, by decide⟩ =
    .jump ⟨1061, by decide⟩ := rfl

/-- [proof-guide] Address 1060 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1060 : macroProgram ⟨1060, by decide⟩ =
    .halt := rfl

/-- [proof-guide] Address 1061 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1061 : macroProgram ⟨1061, by decide⟩ =
    .jump ⟨1062, by decide⟩ := rfl

/-- [proof-guide] Address 1062 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1062 : macroProgram ⟨1062, by decide⟩ =
    .jump ⟨1064, by decide⟩ := rfl

/-- [proof-guide] Address 1064 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1064 : macroProgram ⟨1064, by decide⟩ =
    .jump ⟨1072, by decide⟩ := rfl

/-- [proof-guide] Address 1072 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1072 : macroProgram ⟨1072, by decide⟩ =
    .jump ⟨1088, by decide⟩ := rfl

/-- [proof-guide] Address 1088 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1088 : macroProgram ⟨1088, by decide⟩ =
    .jump ⟨1152, by decide⟩ := rfl

/-- [proof-guide] Address 1152 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1152 : macroProgram ⟨1152, by decide⟩ =
    .jump ⟨1280, by decide⟩ := rfl

/-- [proof-guide] Address 1280 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1280 : macroProgram ⟨1280, by decide⟩ =
    .jump ⟨1536, by decide⟩ := rfl

/-- [proof-guide] Address 1536 has exactly the displayed instruction in the literal register-program array.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_instruction_1536 : macroProgram ⟨1536, by decide⟩ =
    .jump ⟨0, by decide⟩ := rfl

end RiemannMachineVerification
