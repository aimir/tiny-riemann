import RiemannMachineVerification.Registers.ArithmeticModel
import RiemannMachineVerification.Generated.Tables.ArithmeticProgram
set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false

namespace RiemannMachineVerification

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_16 : primitiveProgram ⟨16, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨17, by decide⟩ ⟨18, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_17 : primitiveProgram ⟨17, by decide⟩ =
    .jump ⟨19, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_18 : primitiveProgram ⟨18, by decide⟩ =
    .jump ⟨16, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_19 : primitiveProgram ⟨19, by decide⟩ =
    .jump ⟨20, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_24 : primitiveProgram ⟨24, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨25, by decide⟩ ⟨26, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_25 : primitiveProgram ⟨25, by decide⟩ =
    .jump ⟨27, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_26 : primitiveProgram ⟨26, by decide⟩ =
    .jump ⟨24, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_27 : primitiveProgram ⟨27, by decide⟩ =
    .jump ⟨28, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_32 : primitiveProgram ⟨32, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨33, by decide⟩ ⟨34, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_33 : primitiveProgram ⟨33, by decide⟩ =
    .jump ⟨37, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_34 : primitiveProgram ⟨34, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨35, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_35 : primitiveProgram ⟨35, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨36, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_36 : primitiveProgram ⟨36, by decide⟩ =
    .jump ⟨32, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_37 : primitiveProgram ⟨37, by decide⟩ =
    .jump ⟨38, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_38 : primitiveProgram ⟨38, by decide⟩ =
    .jump ⟨40, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_40 : primitiveProgram ⟨40, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨41, by decide⟩ ⟨42, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_41 : primitiveProgram ⟨41, by decide⟩ =
    .jump ⟨44, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_42 : primitiveProgram ⟨42, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨43, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_43 : primitiveProgram ⟨43, by decide⟩ =
    .jump ⟨40, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_64 : primitiveProgram ⟨64, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨65, by decide⟩ ⟨66, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_65 : primitiveProgram ⟨65, by decide⟩ =
    .jump ⟨67, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_66 : primitiveProgram ⟨66, by decide⟩ =
    .jump ⟨64, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_67 : primitiveProgram ⟨67, by decide⟩ =
    .jump ⟨68, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_68 : primitiveProgram ⟨68, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨69, by decide⟩ ⟨70, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_69 : primitiveProgram ⟨69, by decide⟩ =
    .jump ⟨71, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_70 : primitiveProgram ⟨70, by decide⟩ =
    .jump ⟨68, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_71 : primitiveProgram ⟨71, by decide⟩ =
    .jump ⟨72, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_72 : primitiveProgram ⟨72, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨73, by decide⟩ ⟨74, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_73 : primitiveProgram ⟨73, by decide⟩ =
    .jump ⟨77, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_74 : primitiveProgram ⟨74, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨75, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_75 : primitiveProgram ⟨75, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨76, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_76 : primitiveProgram ⟨76, by decide⟩ =
    .jump ⟨72, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_77 : primitiveProgram ⟨77, by decide⟩ =
    .jump ⟨78, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_78 : primitiveProgram ⟨78, by decide⟩ =
    .jump ⟨80, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_80 : primitiveProgram ⟨80, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨81, by decide⟩ ⟨82, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_81 : primitiveProgram ⟨81, by decide⟩ =
    .jump ⟨84, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_82 : primitiveProgram ⟨82, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨83, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_83 : primitiveProgram ⟨83, by decide⟩ =
    .jump ⟨80, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_92 : primitiveProgram ⟨92, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨93, by decide⟩ ⟨94, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_93 : primitiveProgram ⟨93, by decide⟩ =
    .jump ⟨95, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_94 : primitiveProgram ⟨94, by decide⟩ =
    .jump ⟨92, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_95 : primitiveProgram ⟨95, by decide⟩ =
    .jump ⟨96, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_96 : primitiveProgram ⟨96, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨97, by decide⟩ ⟨98, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_97 : primitiveProgram ⟨97, by decide⟩ =
    .jump ⟨101, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_98 : primitiveProgram ⟨98, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨99, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_99 : primitiveProgram ⟨99, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨100, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_100 : primitiveProgram ⟨100, by decide⟩ =
    .jump ⟨96, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_101 : primitiveProgram ⟨101, by decide⟩ =
    .jump ⟨102, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_102 : primitiveProgram ⟨102, by decide⟩ =
    .jump ⟨104, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_104 : primitiveProgram ⟨104, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨105, by decide⟩ ⟨106, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_105 : primitiveProgram ⟨105, by decide⟩ =
    .jump ⟨108, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_106 : primitiveProgram ⟨106, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨107, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_107 : primitiveProgram ⟨107, by decide⟩ =
    .jump ⟨104, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_116 : primitiveProgram ⟨116, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨117, by decide⟩ ⟨118, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_117 : primitiveProgram ⟨117, by decide⟩ =
    .jump ⟨119, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_118 : primitiveProgram ⟨118, by decide⟩ =
    .jump ⟨116, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_119 : primitiveProgram ⟨119, by decide⟩ =
    .jump ⟨120, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_120 : primitiveProgram ⟨120, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨121, by decide⟩ ⟨122, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_121 : primitiveProgram ⟨121, by decide⟩ =
    .jump ⟨125, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_122 : primitiveProgram ⟨122, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨123, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_123 : primitiveProgram ⟨123, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨124, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_124 : primitiveProgram ⟨124, by decide⟩ =
    .jump ⟨120, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_125 : primitiveProgram ⟨125, by decide⟩ =
    .jump ⟨126, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_126 : primitiveProgram ⟨126, by decide⟩ =
    .jump ⟨128, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_128 : primitiveProgram ⟨128, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨129, by decide⟩ ⟨130, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_129 : primitiveProgram ⟨129, by decide⟩ =
    .jump ⟨132, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_130 : primitiveProgram ⟨130, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨131, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_131 : primitiveProgram ⟨131, by decide⟩ =
    .jump ⟨128, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_152 : primitiveProgram ⟨152, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨153, by decide⟩ ⟨154, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_153 : primitiveProgram ⟨153, by decide⟩ =
    .jump ⟨155, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_154 : primitiveProgram ⟨154, by decide⟩ =
    .jump ⟨152, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_155 : primitiveProgram ⟨155, by decide⟩ =
    .jump ⟨156, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_160 : primitiveProgram ⟨160, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨161, by decide⟩ ⟨162, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_161 : primitiveProgram ⟨161, by decide⟩ =
    .jump ⟨165, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_162 : primitiveProgram ⟨162, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨163, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_163 : primitiveProgram ⟨163, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨164, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_164 : primitiveProgram ⟨164, by decide⟩ =
    .jump ⟨160, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_165 : primitiveProgram ⟨165, by decide⟩ =
    .jump ⟨166, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_166 : primitiveProgram ⟨166, by decide⟩ =
    .jump ⟨168, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_168 : primitiveProgram ⟨168, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨169, by decide⟩ ⟨170, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_169 : primitiveProgram ⟨169, by decide⟩ =
    .jump ⟨172, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_170 : primitiveProgram ⟨170, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨171, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_171 : primitiveProgram ⟨171, by decide⟩ =
    .jump ⟨168, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_256 : primitiveProgram ⟨256, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨257, by decide⟩ ⟨258, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_257 : primitiveProgram ⟨257, by decide⟩ =
    .jump ⟨259, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_258 : primitiveProgram ⟨258, by decide⟩ =
    .jump ⟨256, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_259 : primitiveProgram ⟨259, by decide⟩ =
    .jump ⟨260, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_264 : primitiveProgram ⟨264, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨265, by decide⟩ ⟨266, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_265 : primitiveProgram ⟨265, by decide⟩ =
    .jump ⟨267, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_266 : primitiveProgram ⟨266, by decide⟩ =
    .jump ⟨264, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_267 : primitiveProgram ⟨267, by decide⟩ =
    .jump ⟨268, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_272 : primitiveProgram ⟨272, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨273, by decide⟩ ⟨274, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_273 : primitiveProgram ⟨273, by decide⟩ =
    .jump ⟨277, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_274 : primitiveProgram ⟨274, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨275, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_275 : primitiveProgram ⟨275, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨276, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_276 : primitiveProgram ⟨276, by decide⟩ =
    .jump ⟨272, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_277 : primitiveProgram ⟨277, by decide⟩ =
    .jump ⟨278, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_278 : primitiveProgram ⟨278, by decide⟩ =
    .jump ⟨280, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_280 : primitiveProgram ⟨280, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨281, by decide⟩ ⟨282, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_281 : primitiveProgram ⟨281, by decide⟩ =
    .jump ⟨284, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_282 : primitiveProgram ⟨282, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨283, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_283 : primitiveProgram ⟨283, by decide⟩ =
    .jump ⟨280, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_288 : primitiveProgram ⟨288, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨289, by decide⟩ ⟨290, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_289 : primitiveProgram ⟨289, by decide⟩ =
    .jump ⟨293, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_290 : primitiveProgram ⟨290, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨291, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_291 : primitiveProgram ⟨291, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨292, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_292 : primitiveProgram ⟨292, by decide⟩ =
    .jump ⟨288, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_293 : primitiveProgram ⟨293, by decide⟩ =
    .jump ⟨294, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_294 : primitiveProgram ⟨294, by decide⟩ =
    .jump ⟨296, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_296 : primitiveProgram ⟨296, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨297, by decide⟩ ⟨298, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_297 : primitiveProgram ⟨297, by decide⟩ =
    .jump ⟨300, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_298 : primitiveProgram ⟨298, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨299, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_299 : primitiveProgram ⟨299, by decide⟩ =
    .jump ⟨296, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_304 : primitiveProgram ⟨304, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨305, by decide⟩ ⟨306, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_305 : primitiveProgram ⟨305, by decide⟩ =
    .jump ⟨309, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_306 : primitiveProgram ⟨306, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨307, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_307 : primitiveProgram ⟨307, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨308, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_308 : primitiveProgram ⟨308, by decide⟩ =
    .jump ⟨304, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_309 : primitiveProgram ⟨309, by decide⟩ =
    .jump ⟨310, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_310 : primitiveProgram ⟨310, by decide⟩ =
    .jump ⟨312, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_312 : primitiveProgram ⟨312, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨313, by decide⟩ ⟨314, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_313 : primitiveProgram ⟨313, by decide⟩ =
    .jump ⟨316, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_314 : primitiveProgram ⟨314, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨315, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_315 : primitiveProgram ⟨315, by decide⟩ =
    .jump ⟨312, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_316 : primitiveProgram ⟨316, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨317, by decide⟩ ⟨318, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_317 : primitiveProgram ⟨317, by decide⟩ =
    .jump ⟨319, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_318 : primitiveProgram ⟨318, by decide⟩ =
    .jump ⟨316, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_319 : primitiveProgram ⟨319, by decide⟩ =
    .jump ⟨320, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_320 : primitiveProgram ⟨320, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨321, by decide⟩ ⟨322, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_321 : primitiveProgram ⟨321, by decide⟩ =
    .jump ⟨324, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_322 : primitiveProgram ⟨322, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨323, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_323 : primitiveProgram ⟨323, by decide⟩ =
    .jump ⟨320, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_328 : primitiveProgram ⟨328, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨329, by decide⟩ ⟨330, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_329 : primitiveProgram ⟨329, by decide⟩ =
    .jump ⟨333, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_330 : primitiveProgram ⟨330, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨331, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_331 : primitiveProgram ⟨331, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨332, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_332 : primitiveProgram ⟨332, by decide⟩ =
    .jump ⟨328, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_333 : primitiveProgram ⟨333, by decide⟩ =
    .jump ⟨334, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_334 : primitiveProgram ⟨334, by decide⟩ =
    .jump ⟨336, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_336 : primitiveProgram ⟨336, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨337, by decide⟩ ⟨338, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_337 : primitiveProgram ⟨337, by decide⟩ =
    .jump ⟨340, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_338 : primitiveProgram ⟨338, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨339, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_339 : primitiveProgram ⟨339, by decide⟩ =
    .jump ⟨336, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_344 : primitiveProgram ⟨344, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨345, by decide⟩ ⟨346, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_345 : primitiveProgram ⟨345, by decide⟩ =
    .jump ⟨349, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_346 : primitiveProgram ⟨346, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨347, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_347 : primitiveProgram ⟨347, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨348, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_348 : primitiveProgram ⟨348, by decide⟩ =
    .jump ⟨344, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_349 : primitiveProgram ⟨349, by decide⟩ =
    .jump ⟨350, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_350 : primitiveProgram ⟨350, by decide⟩ =
    .jump ⟨352, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_352 : primitiveProgram ⟨352, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨353, by decide⟩ ⟨354, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_353 : primitiveProgram ⟨353, by decide⟩ =
    .jump ⟨356, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_354 : primitiveProgram ⟨354, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨355, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_355 : primitiveProgram ⟨355, by decide⟩ =
    .jump ⟨352, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_360 : primitiveProgram ⟨360, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨361, by decide⟩ ⟨362, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_361 : primitiveProgram ⟨361, by decide⟩ =
    .jump ⟨363, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_362 : primitiveProgram ⟨362, by decide⟩ =
    .jump ⟨360, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_363 : primitiveProgram ⟨363, by decide⟩ =
    .jump ⟨364, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_364 : primitiveProgram ⟨364, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨365, by decide⟩ ⟨366, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_365 : primitiveProgram ⟨365, by decide⟩ =
    .jump ⟨368, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_366 : primitiveProgram ⟨366, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨367, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_367 : primitiveProgram ⟨367, by decide⟩ =
    .jump ⟨364, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_384 : primitiveProgram ⟨384, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨385, by decide⟩ ⟨386, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_385 : primitiveProgram ⟨385, by decide⟩ =
    .jump ⟨387, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_386 : primitiveProgram ⟨386, by decide⟩ =
    .jump ⟨384, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_387 : primitiveProgram ⟨387, by decide⟩ =
    .jump ⟨388, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_392 : primitiveProgram ⟨392, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨393, by decide⟩ ⟨394, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_393 : primitiveProgram ⟨393, by decide⟩ =
    .jump ⟨397, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_394 : primitiveProgram ⟨394, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨395, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_395 : primitiveProgram ⟨395, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨396, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_396 : primitiveProgram ⟨396, by decide⟩ =
    .jump ⟨392, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_397 : primitiveProgram ⟨397, by decide⟩ =
    .jump ⟨398, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_398 : primitiveProgram ⟨398, by decide⟩ =
    .jump ⟨400, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_400 : primitiveProgram ⟨400, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨401, by decide⟩ ⟨402, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_401 : primitiveProgram ⟨401, by decide⟩ =
    .jump ⟨404, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_402 : primitiveProgram ⟨402, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨403, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_403 : primitiveProgram ⟨403, by decide⟩ =
    .jump ⟨400, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_404 : primitiveProgram ⟨404, by decide⟩ =
    .decrement ⟨5, by decide⟩ ⟨405, by decide⟩ ⟨406, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_405 : primitiveProgram ⟨405, by decide⟩ =
    .jump ⟨407, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_406 : primitiveProgram ⟨406, by decide⟩ =
    .jump ⟨404, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_407 : primitiveProgram ⟨407, by decide⟩ =
    .jump ⟨408, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_408 : primitiveProgram ⟨408, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨409, by decide⟩ ⟨410, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_409 : primitiveProgram ⟨409, by decide⟩ =
    .jump ⟨413, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_410 : primitiveProgram ⟨410, by decide⟩ =
    .increment ⟨5, by decide⟩ ⟨411, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_411 : primitiveProgram ⟨411, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨412, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_412 : primitiveProgram ⟨412, by decide⟩ =
    .jump ⟨408, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_413 : primitiveProgram ⟨413, by decide⟩ =
    .jump ⟨414, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_414 : primitiveProgram ⟨414, by decide⟩ =
    .jump ⟨416, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_416 : primitiveProgram ⟨416, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨417, by decide⟩ ⟨418, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_417 : primitiveProgram ⟨417, by decide⟩ =
    .jump ⟨420, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_418 : primitiveProgram ⟨418, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨419, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_419 : primitiveProgram ⟨419, by decide⟩ =
    .jump ⟨416, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_424 : primitiveProgram ⟨424, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨425, by decide⟩ ⟨426, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_425 : primitiveProgram ⟨425, by decide⟩ =
    .jump ⟨429, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_426 : primitiveProgram ⟨426, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨427, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_427 : primitiveProgram ⟨427, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨428, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_428 : primitiveProgram ⟨428, by decide⟩ =
    .jump ⟨424, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_429 : primitiveProgram ⟨429, by decide⟩ =
    .jump ⟨430, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_430 : primitiveProgram ⟨430, by decide⟩ =
    .jump ⟨432, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_432 : primitiveProgram ⟨432, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨433, by decide⟩ ⟨434, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_433 : primitiveProgram ⟨433, by decide⟩ =
    .jump ⟨436, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_434 : primitiveProgram ⟨434, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨435, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_435 : primitiveProgram ⟨435, by decide⟩ =
    .jump ⟨432, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_440 : primitiveProgram ⟨440, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨441, by decide⟩ ⟨442, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_441 : primitiveProgram ⟨441, by decide⟩ =
    .jump ⟨445, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_442 : primitiveProgram ⟨442, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨443, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_443 : primitiveProgram ⟨443, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨444, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_444 : primitiveProgram ⟨444, by decide⟩ =
    .jump ⟨440, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_445 : primitiveProgram ⟨445, by decide⟩ =
    .jump ⟨446, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_446 : primitiveProgram ⟨446, by decide⟩ =
    .jump ⟨448, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_448 : primitiveProgram ⟨448, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨449, by decide⟩ ⟨450, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_449 : primitiveProgram ⟨449, by decide⟩ =
    .jump ⟨452, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_450 : primitiveProgram ⟨450, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨451, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_451 : primitiveProgram ⟨451, by decide⟩ =
    .jump ⟨448, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_460 : primitiveProgram ⟨460, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨461, by decide⟩ ⟨462, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_461 : primitiveProgram ⟨461, by decide⟩ =
    .jump ⟨463, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_462 : primitiveProgram ⟨462, by decide⟩ =
    .jump ⟨460, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_463 : primitiveProgram ⟨463, by decide⟩ =
    .jump ⟨464, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_464 : primitiveProgram ⟨464, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨465, by decide⟩ ⟨466, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_465 : primitiveProgram ⟨465, by decide⟩ =
    .jump ⟨469, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_466 : primitiveProgram ⟨466, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨467, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_467 : primitiveProgram ⟨467, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨468, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_468 : primitiveProgram ⟨468, by decide⟩ =
    .jump ⟨464, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_469 : primitiveProgram ⟨469, by decide⟩ =
    .jump ⟨470, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_470 : primitiveProgram ⟨470, by decide⟩ =
    .jump ⟨472, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_472 : primitiveProgram ⟨472, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨473, by decide⟩ ⟨474, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_473 : primitiveProgram ⟨473, by decide⟩ =
    .jump ⟨476, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_474 : primitiveProgram ⟨474, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨475, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_475 : primitiveProgram ⟨475, by decide⟩ =
    .jump ⟨472, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_512 : primitiveProgram ⟨512, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨513, by decide⟩ ⟨514, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_513 : primitiveProgram ⟨513, by decide⟩ =
    .jump ⟨515, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_514 : primitiveProgram ⟨514, by decide⟩ =
    .jump ⟨512, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_515 : primitiveProgram ⟨515, by decide⟩ =
    .jump ⟨516, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_520 : primitiveProgram ⟨520, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨521, by decide⟩ ⟨522, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_521 : primitiveProgram ⟨521, by decide⟩ =
    .jump ⟨523, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_522 : primitiveProgram ⟨522, by decide⟩ =
    .jump ⟨520, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_523 : primitiveProgram ⟨523, by decide⟩ =
    .jump ⟨524, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_528 : primitiveProgram ⟨528, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨529, by decide⟩ ⟨530, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_529 : primitiveProgram ⟨529, by decide⟩ =
    .jump ⟨533, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_530 : primitiveProgram ⟨530, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨531, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_531 : primitiveProgram ⟨531, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨532, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_532 : primitiveProgram ⟨532, by decide⟩ =
    .jump ⟨528, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_533 : primitiveProgram ⟨533, by decide⟩ =
    .jump ⟨534, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_534 : primitiveProgram ⟨534, by decide⟩ =
    .jump ⟨536, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_536 : primitiveProgram ⟨536, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨537, by decide⟩ ⟨538, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_537 : primitiveProgram ⟨537, by decide⟩ =
    .jump ⟨540, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_538 : primitiveProgram ⟨538, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨539, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_539 : primitiveProgram ⟨539, by decide⟩ =
    .jump ⟨536, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_544 : primitiveProgram ⟨544, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨545, by decide⟩ ⟨546, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_545 : primitiveProgram ⟨545, by decide⟩ =
    .jump ⟨549, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_546 : primitiveProgram ⟨546, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨547, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_547 : primitiveProgram ⟨547, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨548, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_548 : primitiveProgram ⟨548, by decide⟩ =
    .jump ⟨544, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_549 : primitiveProgram ⟨549, by decide⟩ =
    .jump ⟨550, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_550 : primitiveProgram ⟨550, by decide⟩ =
    .jump ⟨552, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_552 : primitiveProgram ⟨552, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨553, by decide⟩ ⟨554, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_553 : primitiveProgram ⟨553, by decide⟩ =
    .jump ⟨556, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_554 : primitiveProgram ⟨554, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨555, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_555 : primitiveProgram ⟨555, by decide⟩ =
    .jump ⟨552, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_560 : primitiveProgram ⟨560, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨561, by decide⟩ ⟨562, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_561 : primitiveProgram ⟨561, by decide⟩ =
    .jump ⟨565, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_562 : primitiveProgram ⟨562, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨563, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_563 : primitiveProgram ⟨563, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨564, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_564 : primitiveProgram ⟨564, by decide⟩ =
    .jump ⟨560, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_565 : primitiveProgram ⟨565, by decide⟩ =
    .jump ⟨566, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_566 : primitiveProgram ⟨566, by decide⟩ =
    .jump ⟨568, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_568 : primitiveProgram ⟨568, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨569, by decide⟩ ⟨570, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_569 : primitiveProgram ⟨569, by decide⟩ =
    .jump ⟨572, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_570 : primitiveProgram ⟨570, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨571, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_571 : primitiveProgram ⟨571, by decide⟩ =
    .jump ⟨568, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_572 : primitiveProgram ⟨572, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨573, by decide⟩ ⟨574, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_573 : primitiveProgram ⟨573, by decide⟩ =
    .jump ⟨575, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_574 : primitiveProgram ⟨574, by decide⟩ =
    .jump ⟨572, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_575 : primitiveProgram ⟨575, by decide⟩ =
    .jump ⟨576, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_576 : primitiveProgram ⟨576, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨577, by decide⟩ ⟨578, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_577 : primitiveProgram ⟨577, by decide⟩ =
    .jump ⟨580, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_578 : primitiveProgram ⟨578, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨579, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_579 : primitiveProgram ⟨579, by decide⟩ =
    .jump ⟨576, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_584 : primitiveProgram ⟨584, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨585, by decide⟩ ⟨586, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_585 : primitiveProgram ⟨585, by decide⟩ =
    .jump ⟨589, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_586 : primitiveProgram ⟨586, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨587, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_587 : primitiveProgram ⟨587, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨588, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_588 : primitiveProgram ⟨588, by decide⟩ =
    .jump ⟨584, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_589 : primitiveProgram ⟨589, by decide⟩ =
    .jump ⟨590, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_590 : primitiveProgram ⟨590, by decide⟩ =
    .jump ⟨592, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_592 : primitiveProgram ⟨592, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨593, by decide⟩ ⟨594, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_593 : primitiveProgram ⟨593, by decide⟩ =
    .jump ⟨596, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_594 : primitiveProgram ⟨594, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨595, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_595 : primitiveProgram ⟨595, by decide⟩ =
    .jump ⟨592, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_600 : primitiveProgram ⟨600, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨601, by decide⟩ ⟨602, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_601 : primitiveProgram ⟨601, by decide⟩ =
    .jump ⟨605, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_602 : primitiveProgram ⟨602, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨603, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_603 : primitiveProgram ⟨603, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨604, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_604 : primitiveProgram ⟨604, by decide⟩ =
    .jump ⟨600, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_605 : primitiveProgram ⟨605, by decide⟩ =
    .jump ⟨606, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_606 : primitiveProgram ⟨606, by decide⟩ =
    .jump ⟨608, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_608 : primitiveProgram ⟨608, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨609, by decide⟩ ⟨610, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_609 : primitiveProgram ⟨609, by decide⟩ =
    .jump ⟨612, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_610 : primitiveProgram ⟨610, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨611, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_611 : primitiveProgram ⟨611, by decide⟩ =
    .jump ⟨608, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_616 : primitiveProgram ⟨616, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨617, by decide⟩ ⟨618, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_617 : primitiveProgram ⟨617, by decide⟩ =
    .jump ⟨619, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_618 : primitiveProgram ⟨618, by decide⟩ =
    .jump ⟨616, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_619 : primitiveProgram ⟨619, by decide⟩ =
    .jump ⟨620, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_620 : primitiveProgram ⟨620, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨621, by decide⟩ ⟨622, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_621 : primitiveProgram ⟨621, by decide⟩ =
    .jump ⟨624, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_622 : primitiveProgram ⟨622, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨623, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_623 : primitiveProgram ⟨623, by decide⟩ =
    .jump ⟨620, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_640 : primitiveProgram ⟨640, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨641, by decide⟩ ⟨642, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_641 : primitiveProgram ⟨641, by decide⟩ =
    .jump ⟨645, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_642 : primitiveProgram ⟨642, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨643, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_643 : primitiveProgram ⟨643, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨644, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_644 : primitiveProgram ⟨644, by decide⟩ =
    .jump ⟨640, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_645 : primitiveProgram ⟨645, by decide⟩ =
    .jump ⟨646, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_646 : primitiveProgram ⟨646, by decide⟩ =
    .jump ⟨648, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_648 : primitiveProgram ⟨648, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨649, by decide⟩ ⟨650, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_649 : primitiveProgram ⟨649, by decide⟩ =
    .jump ⟨652, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_650 : primitiveProgram ⟨650, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨651, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_651 : primitiveProgram ⟨651, by decide⟩ =
    .jump ⟨648, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_656 : primitiveProgram ⟨656, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨657, by decide⟩ ⟨658, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_657 : primitiveProgram ⟨657, by decide⟩ =
    .jump ⟨661, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_658 : primitiveProgram ⟨658, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨659, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_659 : primitiveProgram ⟨659, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨660, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_660 : primitiveProgram ⟨660, by decide⟩ =
    .jump ⟨656, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_661 : primitiveProgram ⟨661, by decide⟩ =
    .jump ⟨662, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_662 : primitiveProgram ⟨662, by decide⟩ =
    .jump ⟨664, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_664 : primitiveProgram ⟨664, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨665, by decide⟩ ⟨666, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_665 : primitiveProgram ⟨665, by decide⟩ =
    .jump ⟨668, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_666 : primitiveProgram ⟨666, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨667, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_667 : primitiveProgram ⟨667, by decide⟩ =
    .jump ⟨664, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_672 : primitiveProgram ⟨672, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨673, by decide⟩ ⟨674, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_673 : primitiveProgram ⟨673, by decide⟩ =
    .jump ⟨675, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_674 : primitiveProgram ⟨674, by decide⟩ =
    .jump ⟨672, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_675 : primitiveProgram ⟨675, by decide⟩ =
    .jump ⟨676, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_676 : primitiveProgram ⟨676, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨677, by decide⟩ ⟨678, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_677 : primitiveProgram ⟨677, by decide⟩ =
    .jump ⟨680, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_678 : primitiveProgram ⟨678, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨679, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_679 : primitiveProgram ⟨679, by decide⟩ =
    .jump ⟨676, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_680 : primitiveProgram ⟨680, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨681, by decide⟩ ⟨682, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_681 : primitiveProgram ⟨681, by decide⟩ =
    .jump ⟨685, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_682 : primitiveProgram ⟨682, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨683, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_683 : primitiveProgram ⟨683, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨684, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_684 : primitiveProgram ⟨684, by decide⟩ =
    .jump ⟨680, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_685 : primitiveProgram ⟨685, by decide⟩ =
    .jump ⟨686, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_686 : primitiveProgram ⟨686, by decide⟩ =
    .jump ⟨688, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_688 : primitiveProgram ⟨688, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨689, by decide⟩ ⟨690, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_689 : primitiveProgram ⟨689, by decide⟩ =
    .jump ⟨692, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_690 : primitiveProgram ⟨690, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨691, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_691 : primitiveProgram ⟨691, by decide⟩ =
    .jump ⟨688, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_696 : primitiveProgram ⟨696, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨697, by decide⟩ ⟨698, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_697 : primitiveProgram ⟨697, by decide⟩ =
    .jump ⟨701, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_698 : primitiveProgram ⟨698, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨699, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_699 : primitiveProgram ⟨699, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨700, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_700 : primitiveProgram ⟨700, by decide⟩ =
    .jump ⟨696, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_701 : primitiveProgram ⟨701, by decide⟩ =
    .jump ⟨702, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_702 : primitiveProgram ⟨702, by decide⟩ =
    .jump ⟨704, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_704 : primitiveProgram ⟨704, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨705, by decide⟩ ⟨706, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_705 : primitiveProgram ⟨705, by decide⟩ =
    .jump ⟨708, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_706 : primitiveProgram ⟨706, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨707, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_707 : primitiveProgram ⟨707, by decide⟩ =
    .jump ⟨704, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_712 : primitiveProgram ⟨712, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨713, by decide⟩ ⟨714, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_713 : primitiveProgram ⟨713, by decide⟩ =
    .jump ⟨715, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_714 : primitiveProgram ⟨714, by decide⟩ =
    .jump ⟨712, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_715 : primitiveProgram ⟨715, by decide⟩ =
    .jump ⟨716, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_716 : primitiveProgram ⟨716, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨717, by decide⟩ ⟨718, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_717 : primitiveProgram ⟨717, by decide⟩ =
    .jump ⟨720, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_718 : primitiveProgram ⟨718, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨719, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_719 : primitiveProgram ⟨719, by decide⟩ =
    .jump ⟨716, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_768 : primitiveProgram ⟨768, by decide⟩ =
    .decrement ⟨5, by decide⟩ ⟨769, by decide⟩ ⟨770, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_769 : primitiveProgram ⟨769, by decide⟩ =
    .jump ⟨773, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_770 : primitiveProgram ⟨770, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨771, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_771 : primitiveProgram ⟨771, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨772, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_772 : primitiveProgram ⟨772, by decide⟩ =
    .jump ⟨768, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_773 : primitiveProgram ⟨773, by decide⟩ =
    .jump ⟨774, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_774 : primitiveProgram ⟨774, by decide⟩ =
    .jump ⟨776, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_776 : primitiveProgram ⟨776, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨777, by decide⟩ ⟨778, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_777 : primitiveProgram ⟨777, by decide⟩ =
    .jump ⟨780, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_778 : primitiveProgram ⟨778, by decide⟩ =
    .increment ⟨5, by decide⟩ ⟨779, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_779 : primitiveProgram ⟨779, by decide⟩ =
    .jump ⟨776, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_784 : primitiveProgram ⟨784, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨785, by decide⟩ ⟨786, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_785 : primitiveProgram ⟨785, by decide⟩ =
    .jump ⟨789, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_786 : primitiveProgram ⟨786, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨787, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_787 : primitiveProgram ⟨787, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨788, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_788 : primitiveProgram ⟨788, by decide⟩ =
    .jump ⟨784, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_789 : primitiveProgram ⟨789, by decide⟩ =
    .jump ⟨790, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_790 : primitiveProgram ⟨790, by decide⟩ =
    .jump ⟨792, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_792 : primitiveProgram ⟨792, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨793, by decide⟩ ⟨794, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_793 : primitiveProgram ⟨793, by decide⟩ =
    .jump ⟨796, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_794 : primitiveProgram ⟨794, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨795, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_795 : primitiveProgram ⟨795, by decide⟩ =
    .jump ⟨792, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_800 : primitiveProgram ⟨800, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨801, by decide⟩ ⟨802, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_801 : primitiveProgram ⟨801, by decide⟩ =
    .jump ⟨803, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_802 : primitiveProgram ⟨802, by decide⟩ =
    .jump ⟨800, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_803 : primitiveProgram ⟨803, by decide⟩ =
    .jump ⟨804, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_804 : primitiveProgram ⟨804, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨805, by decide⟩ ⟨806, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_805 : primitiveProgram ⟨805, by decide⟩ =
    .jump ⟨808, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_806 : primitiveProgram ⟨806, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨807, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_807 : primitiveProgram ⟨807, by decide⟩ =
    .jump ⟨804, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_808 : primitiveProgram ⟨808, by decide⟩ =
    .decrement ⟨1, by decide⟩ ⟨809, by decide⟩ ⟨810, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_809 : primitiveProgram ⟨809, by decide⟩ =
    .jump ⟨813, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_810 : primitiveProgram ⟨810, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨811, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_811 : primitiveProgram ⟨811, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨812, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_812 : primitiveProgram ⟨812, by decide⟩ =
    .jump ⟨808, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_813 : primitiveProgram ⟨813, by decide⟩ =
    .jump ⟨814, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_814 : primitiveProgram ⟨814, by decide⟩ =
    .jump ⟨816, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_816 : primitiveProgram ⟨816, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨817, by decide⟩ ⟨818, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_817 : primitiveProgram ⟨817, by decide⟩ =
    .jump ⟨820, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_818 : primitiveProgram ⟨818, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨819, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_819 : primitiveProgram ⟨819, by decide⟩ =
    .jump ⟨816, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_824 : primitiveProgram ⟨824, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨825, by decide⟩ ⟨826, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_825 : primitiveProgram ⟨825, by decide⟩ =
    .jump ⟨829, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_826 : primitiveProgram ⟨826, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨827, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_827 : primitiveProgram ⟨827, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨828, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_828 : primitiveProgram ⟨828, by decide⟩ =
    .jump ⟨824, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_829 : primitiveProgram ⟨829, by decide⟩ =
    .jump ⟨830, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_830 : primitiveProgram ⟨830, by decide⟩ =
    .jump ⟨832, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_832 : primitiveProgram ⟨832, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨833, by decide⟩ ⟨834, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_833 : primitiveProgram ⟨833, by decide⟩ =
    .jump ⟨836, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_834 : primitiveProgram ⟨834, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨835, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_835 : primitiveProgram ⟨835, by decide⟩ =
    .jump ⟨832, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_840 : primitiveProgram ⟨840, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨841, by decide⟩ ⟨842, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_841 : primitiveProgram ⟨841, by decide⟩ =
    .jump ⟨843, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_842 : primitiveProgram ⟨842, by decide⟩ =
    .jump ⟨840, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_843 : primitiveProgram ⟨843, by decide⟩ =
    .jump ⟨844, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_844 : primitiveProgram ⟨844, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨845, by decide⟩ ⟨846, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_845 : primitiveProgram ⟨845, by decide⟩ =
    .jump ⟨848, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_846 : primitiveProgram ⟨846, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨847, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_847 : primitiveProgram ⟨847, by decide⟩ =
    .jump ⟨844, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_896 : primitiveProgram ⟨896, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨897, by decide⟩ ⟨898, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_897 : primitiveProgram ⟨897, by decide⟩ =
    .jump ⟨901, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_898 : primitiveProgram ⟨898, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨899, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_899 : primitiveProgram ⟨899, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨900, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_900 : primitiveProgram ⟨900, by decide⟩ =
    .jump ⟨896, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_901 : primitiveProgram ⟨901, by decide⟩ =
    .jump ⟨902, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_902 : primitiveProgram ⟨902, by decide⟩ =
    .jump ⟨904, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_904 : primitiveProgram ⟨904, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨905, by decide⟩ ⟨906, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_905 : primitiveProgram ⟨905, by decide⟩ =
    .jump ⟨908, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_906 : primitiveProgram ⟨906, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨907, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_907 : primitiveProgram ⟨907, by decide⟩ =
    .jump ⟨904, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_912 : primitiveProgram ⟨912, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨913, by decide⟩ ⟨914, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_913 : primitiveProgram ⟨913, by decide⟩ =
    .jump ⟨917, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_914 : primitiveProgram ⟨914, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨915, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_915 : primitiveProgram ⟨915, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨916, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_916 : primitiveProgram ⟨916, by decide⟩ =
    .jump ⟨912, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_917 : primitiveProgram ⟨917, by decide⟩ =
    .jump ⟨918, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_918 : primitiveProgram ⟨918, by decide⟩ =
    .jump ⟨920, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_920 : primitiveProgram ⟨920, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨921, by decide⟩ ⟨922, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_921 : primitiveProgram ⟨921, by decide⟩ =
    .jump ⟨924, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_922 : primitiveProgram ⟨922, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨923, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_923 : primitiveProgram ⟨923, by decide⟩ =
    .jump ⟨920, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_928 : primitiveProgram ⟨928, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨929, by decide⟩ ⟨930, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_929 : primitiveProgram ⟨929, by decide⟩ =
    .jump ⟨931, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_930 : primitiveProgram ⟨930, by decide⟩ =
    .jump ⟨928, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_931 : primitiveProgram ⟨931, by decide⟩ =
    .jump ⟨932, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_932 : primitiveProgram ⟨932, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨933, by decide⟩ ⟨934, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_933 : primitiveProgram ⟨933, by decide⟩ =
    .jump ⟨936, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_934 : primitiveProgram ⟨934, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨935, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_935 : primitiveProgram ⟨935, by decide⟩ =
    .jump ⟨932, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_936 : primitiveProgram ⟨936, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨937, by decide⟩ ⟨938, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_937 : primitiveProgram ⟨937, by decide⟩ =
    .jump ⟨941, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_938 : primitiveProgram ⟨938, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨939, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_939 : primitiveProgram ⟨939, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨940, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_940 : primitiveProgram ⟨940, by decide⟩ =
    .jump ⟨936, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_941 : primitiveProgram ⟨941, by decide⟩ =
    .jump ⟨942, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_942 : primitiveProgram ⟨942, by decide⟩ =
    .jump ⟨944, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_944 : primitiveProgram ⟨944, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨945, by decide⟩ ⟨946, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_945 : primitiveProgram ⟨945, by decide⟩ =
    .jump ⟨948, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_946 : primitiveProgram ⟨946, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨947, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_947 : primitiveProgram ⟨947, by decide⟩ =
    .jump ⟨944, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_952 : primitiveProgram ⟨952, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨953, by decide⟩ ⟨954, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_953 : primitiveProgram ⟨953, by decide⟩ =
    .jump ⟨957, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_954 : primitiveProgram ⟨954, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨955, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_955 : primitiveProgram ⟨955, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨956, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_956 : primitiveProgram ⟨956, by decide⟩ =
    .jump ⟨952, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_957 : primitiveProgram ⟨957, by decide⟩ =
    .jump ⟨958, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_958 : primitiveProgram ⟨958, by decide⟩ =
    .jump ⟨960, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_960 : primitiveProgram ⟨960, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨961, by decide⟩ ⟨962, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_961 : primitiveProgram ⟨961, by decide⟩ =
    .jump ⟨964, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_962 : primitiveProgram ⟨962, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨963, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_963 : primitiveProgram ⟨963, by decide⟩ =
    .jump ⟨960, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_968 : primitiveProgram ⟨968, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨969, by decide⟩ ⟨970, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_969 : primitiveProgram ⟨969, by decide⟩ =
    .jump ⟨971, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_970 : primitiveProgram ⟨970, by decide⟩ =
    .jump ⟨968, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_971 : primitiveProgram ⟨971, by decide⟩ =
    .jump ⟨972, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_972 : primitiveProgram ⟨972, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨973, by decide⟩ ⟨974, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_973 : primitiveProgram ⟨973, by decide⟩ =
    .jump ⟨976, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_974 : primitiveProgram ⟨974, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨975, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_975 : primitiveProgram ⟨975, by decide⟩ =
    .jump ⟨972, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1024 : primitiveProgram ⟨1024, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨1025, by decide⟩ ⟨1026, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1025 : primitiveProgram ⟨1025, by decide⟩ =
    .jump ⟨1029, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1026 : primitiveProgram ⟨1026, by decide⟩ =
    .increment ⟨7, by decide⟩ ⟨1027, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1027 : primitiveProgram ⟨1027, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨1028, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1028 : primitiveProgram ⟨1028, by decide⟩ =
    .jump ⟨1024, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1029 : primitiveProgram ⟨1029, by decide⟩ =
    .jump ⟨1030, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1030 : primitiveProgram ⟨1030, by decide⟩ =
    .jump ⟨1032, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1032 : primitiveProgram ⟨1032, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨1033, by decide⟩ ⟨1034, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1033 : primitiveProgram ⟨1033, by decide⟩ =
    .jump ⟨1036, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1034 : primitiveProgram ⟨1034, by decide⟩ =
    .increment ⟨2, by decide⟩ ⟨1035, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1035 : primitiveProgram ⟨1035, by decide⟩ =
    .jump ⟨1032, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1040 : primitiveProgram ⟨1040, by decide⟩ =
    .decrement ⟨0, by decide⟩ ⟨1041, by decide⟩ ⟨1042, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1041 : primitiveProgram ⟨1041, by decide⟩ =
    .jump ⟨1045, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1042 : primitiveProgram ⟨1042, by decide⟩ =
    .increment ⟨6, by decide⟩ ⟨1043, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1043 : primitiveProgram ⟨1043, by decide⟩ =
    .increment ⟨8, by decide⟩ ⟨1044, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1044 : primitiveProgram ⟨1044, by decide⟩ =
    .jump ⟨1040, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1045 : primitiveProgram ⟨1045, by decide⟩ =
    .jump ⟨1046, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1046 : primitiveProgram ⟨1046, by decide⟩ =
    .jump ⟨1048, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1048 : primitiveProgram ⟨1048, by decide⟩ =
    .decrement ⟨8, by decide⟩ ⟨1049, by decide⟩ ⟨1050, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1049 : primitiveProgram ⟨1049, by decide⟩ =
    .jump ⟨1052, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1050 : primitiveProgram ⟨1050, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨1051, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Definitional reduction in the Lean kernel.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_instruction_1051 : primitiveProgram ⟨1051, by decide⟩ =
    .jump ⟨1048, by decide⟩ := rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_16 :
    TransferSite primitiveProgram ⟨16, by decide⟩ ⟨20, by decide⟩ ⟨1, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_16, transfer_instruction_17, transfer_instruction_19,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_16, transfer_instruction_18,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_24 :
    TransferSite primitiveProgram ⟨24, by decide⟩ ⟨28, by decide⟩ ⟨4, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_24, transfer_instruction_25, transfer_instruction_27,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_24, transfer_instruction_26,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_32 :
    TransferSite primitiveProgram ⟨32, by decide⟩ ⟨40, by decide⟩ ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_32, transfer_instruction_33, transfer_instruction_37, transfer_instruction_38,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_32, transfer_instruction_34, transfer_instruction_35, transfer_instruction_36,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_40 :
    TransferSite primitiveProgram ⟨40, by decide⟩ ⟨44, by decide⟩ ⟨6, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_40, transfer_instruction_41,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_40, transfer_instruction_42, transfer_instruction_43,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_64 :
    TransferSite primitiveProgram ⟨64, by decide⟩ ⟨68, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_64, transfer_instruction_65, transfer_instruction_67,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_64, transfer_instruction_66,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_68 :
    TransferSite primitiveProgram ⟨68, by decide⟩ ⟨72, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_68, transfer_instruction_69, transfer_instruction_71,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_68, transfer_instruction_70,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_72 :
    TransferSite primitiveProgram ⟨72, by decide⟩ ⟨80, by decide⟩ ⟨1, by decide⟩ [⟨2, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_72, transfer_instruction_73, transfer_instruction_77, transfer_instruction_78,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_72, transfer_instruction_74, transfer_instruction_75, transfer_instruction_76,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_80 :
    TransferSite primitiveProgram ⟨80, by decide⟩ ⟨84, by decide⟩ ⟨6, by decide⟩ [⟨1, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_80, transfer_instruction_81,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_80, transfer_instruction_82, transfer_instruction_83,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_92 :
    TransferSite primitiveProgram ⟨92, by decide⟩ ⟨96, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_92, transfer_instruction_93, transfer_instruction_95,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_92, transfer_instruction_94,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_96 :
    TransferSite primitiveProgram ⟨96, by decide⟩ ⟨104, by decide⟩ ⟨4, by decide⟩ [⟨3, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_96, transfer_instruction_97, transfer_instruction_101, transfer_instruction_102,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_96, transfer_instruction_98, transfer_instruction_99, transfer_instruction_100,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_104 :
    TransferSite primitiveProgram ⟨104, by decide⟩ ⟨108, by decide⟩ ⟨6, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_104, transfer_instruction_105,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_104, transfer_instruction_106, transfer_instruction_107,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_116 :
    TransferSite primitiveProgram ⟨116, by decide⟩ ⟨120, by decide⟩ ⟨4, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_116, transfer_instruction_117, transfer_instruction_119,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_116, transfer_instruction_118,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_120 :
    TransferSite primitiveProgram ⟨120, by decide⟩ ⟨128, by decide⟩ ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_120, transfer_instruction_121, transfer_instruction_125, transfer_instruction_126,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_120, transfer_instruction_122, transfer_instruction_123, transfer_instruction_124,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_128 :
    TransferSite primitiveProgram ⟨128, by decide⟩ ⟨132, by decide⟩ ⟨6, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_128, transfer_instruction_129,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_128, transfer_instruction_130, transfer_instruction_131,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_152 :
    TransferSite primitiveProgram ⟨152, by decide⟩ ⟨156, by decide⟩ ⟨4, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_152, transfer_instruction_153, transfer_instruction_155,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_152, transfer_instruction_154,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_160 :
    TransferSite primitiveProgram ⟨160, by decide⟩ ⟨168, by decide⟩ ⟨1, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_160, transfer_instruction_161, transfer_instruction_165, transfer_instruction_166,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_160, transfer_instruction_162, transfer_instruction_163, transfer_instruction_164,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_168 :
    TransferSite primitiveProgram ⟨168, by decide⟩ ⟨172, by decide⟩ ⟨6, by decide⟩ [⟨1, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_168, transfer_instruction_169,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_168, transfer_instruction_170, transfer_instruction_171,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_256 :
    TransferSite primitiveProgram ⟨256, by decide⟩ ⟨260, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_256, transfer_instruction_257, transfer_instruction_259,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_256, transfer_instruction_258,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_264 :
    TransferSite primitiveProgram ⟨264, by decide⟩ ⟨268, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_264, transfer_instruction_265, transfer_instruction_267,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_264, transfer_instruction_266,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_272 :
    TransferSite primitiveProgram ⟨272, by decide⟩ ⟨280, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_272, transfer_instruction_273, transfer_instruction_277, transfer_instruction_278,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_272, transfer_instruction_274, transfer_instruction_275, transfer_instruction_276,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_280 :
    TransferSite primitiveProgram ⟨280, by decide⟩ ⟨284, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_280, transfer_instruction_281,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_280, transfer_instruction_282, transfer_instruction_283,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_288 :
    TransferSite primitiveProgram ⟨288, by decide⟩ ⟨296, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_288, transfer_instruction_289, transfer_instruction_293, transfer_instruction_294,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_288, transfer_instruction_290, transfer_instruction_291, transfer_instruction_292,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_296 :
    TransferSite primitiveProgram ⟨296, by decide⟩ ⟨300, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_296, transfer_instruction_297,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_296, transfer_instruction_298, transfer_instruction_299,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_304 :
    TransferSite primitiveProgram ⟨304, by decide⟩ ⟨312, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_304, transfer_instruction_305, transfer_instruction_309, transfer_instruction_310,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_304, transfer_instruction_306, transfer_instruction_307, transfer_instruction_308,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_312 :
    TransferSite primitiveProgram ⟨312, by decide⟩ ⟨316, by decide⟩ ⟨7, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨7, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨7, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_312, transfer_instruction_313,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_312, transfer_instruction_314, transfer_instruction_315,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_316 :
    TransferSite primitiveProgram ⟨316, by decide⟩ ⟨320, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_316, transfer_instruction_317, transfer_instruction_319,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_316, transfer_instruction_318,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_320 :
    TransferSite primitiveProgram ⟨320, by decide⟩ ⟨324, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_320, transfer_instruction_321,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_320, transfer_instruction_322, transfer_instruction_323,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_328 :
    TransferSite primitiveProgram ⟨328, by decide⟩ ⟨336, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_328, transfer_instruction_329, transfer_instruction_333, transfer_instruction_334,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_328, transfer_instruction_330, transfer_instruction_331, transfer_instruction_332,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_336 :
    TransferSite primitiveProgram ⟨336, by decide⟩ ⟨340, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_336, transfer_instruction_337,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_336, transfer_instruction_338, transfer_instruction_339,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_344 :
    TransferSite primitiveProgram ⟨344, by decide⟩ ⟨352, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_344, transfer_instruction_345, transfer_instruction_349, transfer_instruction_350,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_344, transfer_instruction_346, transfer_instruction_347, transfer_instruction_348,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_352 :
    TransferSite primitiveProgram ⟨352, by decide⟩ ⟨356, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_352, transfer_instruction_353,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_352, transfer_instruction_354, transfer_instruction_355,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_360 :
    TransferSite primitiveProgram ⟨360, by decide⟩ ⟨364, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_360, transfer_instruction_361, transfer_instruction_363,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_360, transfer_instruction_362,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_364 :
    TransferSite primitiveProgram ⟨364, by decide⟩ ⟨368, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_364, transfer_instruction_365,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_364, transfer_instruction_366, transfer_instruction_367,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_384 :
    TransferSite primitiveProgram ⟨384, by decide⟩ ⟨388, by decide⟩ ⟨4, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_384, transfer_instruction_385, transfer_instruction_387,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_384, transfer_instruction_386,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_392 :
    TransferSite primitiveProgram ⟨392, by decide⟩ ⟨400, by decide⟩ ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_392, transfer_instruction_393, transfer_instruction_397, transfer_instruction_398,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_392, transfer_instruction_394, transfer_instruction_395, transfer_instruction_396,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_400 :
    TransferSite primitiveProgram ⟨400, by decide⟩ ⟨404, by decide⟩ ⟨6, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_400, transfer_instruction_401,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_400, transfer_instruction_402, transfer_instruction_403,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_404 :
    TransferSite primitiveProgram ⟨404, by decide⟩ ⟨408, by decide⟩ ⟨5, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨5, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨5, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_404, transfer_instruction_405, transfer_instruction_407,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_404, transfer_instruction_406,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_408 :
    TransferSite primitiveProgram ⟨408, by decide⟩ ⟨416, by decide⟩ ⟨3, by decide⟩ [⟨5, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_408, transfer_instruction_409, transfer_instruction_413, transfer_instruction_414,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_408, transfer_instruction_410, transfer_instruction_411, transfer_instruction_412,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_416 :
    TransferSite primitiveProgram ⟨416, by decide⟩ ⟨420, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_416, transfer_instruction_417,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_416, transfer_instruction_418, transfer_instruction_419,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_424 :
    TransferSite primitiveProgram ⟨424, by decide⟩ ⟨432, by decide⟩ ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_424, transfer_instruction_425, transfer_instruction_429, transfer_instruction_430,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_424, transfer_instruction_426, transfer_instruction_427, transfer_instruction_428,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_432 :
    TransferSite primitiveProgram ⟨432, by decide⟩ ⟨436, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_432, transfer_instruction_433,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_432, transfer_instruction_434, transfer_instruction_435,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_440 :
    TransferSite primitiveProgram ⟨440, by decide⟩ ⟨448, by decide⟩ ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_440, transfer_instruction_441, transfer_instruction_445, transfer_instruction_446,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_440, transfer_instruction_442, transfer_instruction_443, transfer_instruction_444,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_448 :
    TransferSite primitiveProgram ⟨448, by decide⟩ ⟨452, by decide⟩ ⟨8, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_448, transfer_instruction_449,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_448, transfer_instruction_450, transfer_instruction_451,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_460 :
    TransferSite primitiveProgram ⟨460, by decide⟩ ⟨464, by decide⟩ ⟨1, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_460, transfer_instruction_461, transfer_instruction_463,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_460, transfer_instruction_462,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_464 :
    TransferSite primitiveProgram ⟨464, by decide⟩ ⟨472, by decide⟩ ⟨2, by decide⟩ [⟨1, by decide⟩, ⟨6, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_464, transfer_instruction_465, transfer_instruction_469, transfer_instruction_470,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_464, transfer_instruction_466, transfer_instruction_467, transfer_instruction_468,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_472 :
    TransferSite primitiveProgram ⟨472, by decide⟩ ⟨476, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_472, transfer_instruction_473,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_472, transfer_instruction_474, transfer_instruction_475,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_512 :
    TransferSite primitiveProgram ⟨512, by decide⟩ ⟨516, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_512, transfer_instruction_513, transfer_instruction_515,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_512, transfer_instruction_514,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_520 :
    TransferSite primitiveProgram ⟨520, by decide⟩ ⟨524, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_520, transfer_instruction_521, transfer_instruction_523,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_520, transfer_instruction_522,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_528 :
    TransferSite primitiveProgram ⟨528, by decide⟩ ⟨536, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_528, transfer_instruction_529, transfer_instruction_533, transfer_instruction_534,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_528, transfer_instruction_530, transfer_instruction_531, transfer_instruction_532,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_536 :
    TransferSite primitiveProgram ⟨536, by decide⟩ ⟨540, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_536, transfer_instruction_537,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_536, transfer_instruction_538, transfer_instruction_539,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_544 :
    TransferSite primitiveProgram ⟨544, by decide⟩ ⟨552, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_544, transfer_instruction_545, transfer_instruction_549, transfer_instruction_550,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_544, transfer_instruction_546, transfer_instruction_547, transfer_instruction_548,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_552 :
    TransferSite primitiveProgram ⟨552, by decide⟩ ⟨556, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_552, transfer_instruction_553,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_552, transfer_instruction_554, transfer_instruction_555,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_560 :
    TransferSite primitiveProgram ⟨560, by decide⟩ ⟨568, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_560, transfer_instruction_561, transfer_instruction_565, transfer_instruction_566,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_560, transfer_instruction_562, transfer_instruction_563, transfer_instruction_564,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_568 :
    TransferSite primitiveProgram ⟨568, by decide⟩ ⟨572, by decide⟩ ⟨7, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨7, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨7, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_568, transfer_instruction_569,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_568, transfer_instruction_570, transfer_instruction_571,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_572 :
    TransferSite primitiveProgram ⟨572, by decide⟩ ⟨576, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_572, transfer_instruction_573, transfer_instruction_575,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_572, transfer_instruction_574,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_576 :
    TransferSite primitiveProgram ⟨576, by decide⟩ ⟨580, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_576, transfer_instruction_577,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_576, transfer_instruction_578, transfer_instruction_579,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_584 :
    TransferSite primitiveProgram ⟨584, by decide⟩ ⟨592, by decide⟩ ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨4, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨4, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_584, transfer_instruction_585, transfer_instruction_589, transfer_instruction_590,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_584, transfer_instruction_586, transfer_instruction_587, transfer_instruction_588,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_592 :
    TransferSite primitiveProgram ⟨592, by decide⟩ ⟨596, by decide⟩ ⟨8, by decide⟩ [⟨4, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_592, transfer_instruction_593,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_592, transfer_instruction_594, transfer_instruction_595,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_600 :
    TransferSite primitiveProgram ⟨600, by decide⟩ ⟨608, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_600, transfer_instruction_601, transfer_instruction_605, transfer_instruction_606,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_600, transfer_instruction_602, transfer_instruction_603, transfer_instruction_604,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_608 :
    TransferSite primitiveProgram ⟨608, by decide⟩ ⟨612, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_608, transfer_instruction_609,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_608, transfer_instruction_610, transfer_instruction_611,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_616 :
    TransferSite primitiveProgram ⟨616, by decide⟩ ⟨620, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_616, transfer_instruction_617, transfer_instruction_619,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_616, transfer_instruction_618,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_620 :
    TransferSite primitiveProgram ⟨620, by decide⟩ ⟨624, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_620, transfer_instruction_621,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_620, transfer_instruction_622, transfer_instruction_623,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_640 :
    TransferSite primitiveProgram ⟨640, by decide⟩ ⟨648, by decide⟩ ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_640, transfer_instruction_641, transfer_instruction_645, transfer_instruction_646,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_640, transfer_instruction_642, transfer_instruction_643, transfer_instruction_644,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_648 :
    TransferSite primitiveProgram ⟨648, by decide⟩ ⟨652, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_648, transfer_instruction_649,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_648, transfer_instruction_650, transfer_instruction_651,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_656 :
    TransferSite primitiveProgram ⟨656, by decide⟩ ⟨664, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_656, transfer_instruction_657, transfer_instruction_661, transfer_instruction_662,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_656, transfer_instruction_658, transfer_instruction_659, transfer_instruction_660,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_664 :
    TransferSite primitiveProgram ⟨664, by decide⟩ ⟨668, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_664, transfer_instruction_665,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_664, transfer_instruction_666, transfer_instruction_667,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_672 :
    TransferSite primitiveProgram ⟨672, by decide⟩ ⟨676, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_672, transfer_instruction_673, transfer_instruction_675,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_672, transfer_instruction_674,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_676 :
    TransferSite primitiveProgram ⟨676, by decide⟩ ⟨680, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_676, transfer_instruction_677,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_676, transfer_instruction_678, transfer_instruction_679,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_680 :
    TransferSite primitiveProgram ⟨680, by decide⟩ ⟨688, by decide⟩ ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_680, transfer_instruction_681, transfer_instruction_685, transfer_instruction_686,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_680, transfer_instruction_682, transfer_instruction_683, transfer_instruction_684,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_688 :
    TransferSite primitiveProgram ⟨688, by decide⟩ ⟨692, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_688, transfer_instruction_689,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_688, transfer_instruction_690, transfer_instruction_691,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_696 :
    TransferSite primitiveProgram ⟨696, by decide⟩ ⟨704, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_696, transfer_instruction_697, transfer_instruction_701, transfer_instruction_702,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_696, transfer_instruction_698, transfer_instruction_699, transfer_instruction_700,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_704 :
    TransferSite primitiveProgram ⟨704, by decide⟩ ⟨708, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_704, transfer_instruction_705,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_704, transfer_instruction_706, transfer_instruction_707,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_712 :
    TransferSite primitiveProgram ⟨712, by decide⟩ ⟨716, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_712, transfer_instruction_713, transfer_instruction_715,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_712, transfer_instruction_714,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_716 :
    TransferSite primitiveProgram ⟨716, by decide⟩ ⟨720, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_716, transfer_instruction_717,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_716, transfer_instruction_718, transfer_instruction_719,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_768 :
    TransferSite primitiveProgram ⟨768, by decide⟩ ⟨776, by decide⟩ ⟨5, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨5, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨5, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_768, transfer_instruction_769, transfer_instruction_773, transfer_instruction_774,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_768, transfer_instruction_770, transfer_instruction_771, transfer_instruction_772,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_776 :
    TransferSite primitiveProgram ⟨776, by decide⟩ ⟨780, by decide⟩ ⟨8, by decide⟩ [⟨5, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_776, transfer_instruction_777,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_776, transfer_instruction_778, transfer_instruction_779,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_784 :
    TransferSite primitiveProgram ⟨784, by decide⟩ ⟨792, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_784, transfer_instruction_785, transfer_instruction_789, transfer_instruction_790,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_784, transfer_instruction_786, transfer_instruction_787, transfer_instruction_788,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_792 :
    TransferSite primitiveProgram ⟨792, by decide⟩ ⟨796, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_792, transfer_instruction_793,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_792, transfer_instruction_794, transfer_instruction_795,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_800 :
    TransferSite primitiveProgram ⟨800, by decide⟩ ⟨804, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_800, transfer_instruction_801, transfer_instruction_803,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_800, transfer_instruction_802,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_804 :
    TransferSite primitiveProgram ⟨804, by decide⟩ ⟨808, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_804, transfer_instruction_805,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_804, transfer_instruction_806, transfer_instruction_807,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_808 :
    TransferSite primitiveProgram ⟨808, by decide⟩ ⟨816, by decide⟩ ⟨1, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨1, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨1, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_808, transfer_instruction_809, transfer_instruction_813, transfer_instruction_814,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_808, transfer_instruction_810, transfer_instruction_811, transfer_instruction_812,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_816 :
    TransferSite primitiveProgram ⟨816, by decide⟩ ⟨820, by decide⟩ ⟨8, by decide⟩ [⟨1, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_816, transfer_instruction_817,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_816, transfer_instruction_818, transfer_instruction_819,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_824 :
    TransferSite primitiveProgram ⟨824, by decide⟩ ⟨832, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_824, transfer_instruction_825, transfer_instruction_829, transfer_instruction_830,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_824, transfer_instruction_826, transfer_instruction_827, transfer_instruction_828,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_832 :
    TransferSite primitiveProgram ⟨832, by decide⟩ ⟨836, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_832, transfer_instruction_833,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_832, transfer_instruction_834, transfer_instruction_835,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_840 :
    TransferSite primitiveProgram ⟨840, by decide⟩ ⟨844, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_840, transfer_instruction_841, transfer_instruction_843,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_840, transfer_instruction_842,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_844 :
    TransferSite primitiveProgram ⟨844, by decide⟩ ⟨848, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_844, transfer_instruction_845,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_844, transfer_instruction_846, transfer_instruction_847,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_896 :
    TransferSite primitiveProgram ⟨896, by decide⟩ ⟨904, by decide⟩ ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_896, transfer_instruction_897, transfer_instruction_901, transfer_instruction_902,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_896, transfer_instruction_898, transfer_instruction_899, transfer_instruction_900,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_904 :
    TransferSite primitiveProgram ⟨904, by decide⟩ ⟨908, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_904, transfer_instruction_905,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_904, transfer_instruction_906, transfer_instruction_907,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_912 :
    TransferSite primitiveProgram ⟨912, by decide⟩ ⟨920, by decide⟩ ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_912, transfer_instruction_913, transfer_instruction_917, transfer_instruction_918,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_912, transfer_instruction_914, transfer_instruction_915, transfer_instruction_916,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_920 :
    TransferSite primitiveProgram ⟨920, by decide⟩ ⟨924, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_920, transfer_instruction_921,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_920, transfer_instruction_922, transfer_instruction_923,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_928 :
    TransferSite primitiveProgram ⟨928, by decide⟩ ⟨932, by decide⟩ ⟨2, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_928, transfer_instruction_929, transfer_instruction_931,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_928, transfer_instruction_930,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_932 :
    TransferSite primitiveProgram ⟨932, by decide⟩ ⟨936, by decide⟩ ⟨6, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_932, transfer_instruction_933,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_932, transfer_instruction_934, transfer_instruction_935,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_936 :
    TransferSite primitiveProgram ⟨936, by decide⟩ ⟨944, by decide⟩ ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_936, transfer_instruction_937, transfer_instruction_941, transfer_instruction_942,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_936, transfer_instruction_938, transfer_instruction_939, transfer_instruction_940,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_944 :
    TransferSite primitiveProgram ⟨944, by decide⟩ ⟨948, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_944, transfer_instruction_945,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_944, transfer_instruction_946, transfer_instruction_947,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_952 :
    TransferSite primitiveProgram ⟨952, by decide⟩ ⟨960, by decide⟩ ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_952, transfer_instruction_953, transfer_instruction_957, transfer_instruction_958,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_952, transfer_instruction_954, transfer_instruction_955, transfer_instruction_956,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_960 :
    TransferSite primitiveProgram ⟨960, by decide⟩ ⟨964, by decide⟩ ⟨8, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_960, transfer_instruction_961,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_960, transfer_instruction_962, transfer_instruction_963,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_968 :
    TransferSite primitiveProgram ⟨968, by decide⟩ ⟨972, by decide⟩ ⟨3, by decide⟩ [] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨3, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨3, by decide⟩ values
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_968, transfer_instruction_969, transfer_instruction_971,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_968, transfer_instruction_970,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_972 :
    TransferSite primitiveProgram ⟨972, by decide⟩ ⟨976, by decide⟩ ⟨6, by decide⟩ [⟨3, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨6, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨6, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_972, transfer_instruction_973,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_972, transfer_instruction_974, transfer_instruction_975,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_1024 :
    TransferSite primitiveProgram ⟨1024, by decide⟩ ⟨1032, by decide⟩ ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨2, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨2, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1024, transfer_instruction_1025, transfer_instruction_1029, transfer_instruction_1030,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1024, transfer_instruction_1026, transfer_instruction_1027, transfer_instruction_1028,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_1032 :
    TransferSite primitiveProgram ⟨1032, by decide⟩ ⟨1036, by decide⟩ ⟨8, by decide⟩ [⟨2, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1032, transfer_instruction_1033,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1032, transfer_instruction_1034, transfer_instruction_1035,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_1040 :
    TransferSite primitiveProgram ⟨1040, by decide⟩ ⟨1048, by decide⟩ ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨0, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨0, by decide⟩ values
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1040, transfer_instruction_1041, transfer_instruction_1045, transfer_instruction_1046,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨4, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1040, transfer_instruction_1042, transfer_instruction_1043, transfer_instruction_1044,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `Function.update_eq_self` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem transfer_site_1048 :
    TransferSite primitiveProgram ⟨1048, by decide⟩ ⟨1052, by decide⟩ ⟨8, by decide⟩ [⟨0, by decide⟩] := by
  refine ⟨by decide, ?_, ?_⟩
  · intro values capacity hz
    have hzero : Function.update values ⟨8, by decide⟩ 0 = values := by
      simpa only [hz] using Function.update_eq_self ⟨8, by decide⟩ values
    refine ⟨2, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1048, transfer_instruction_1049,
      hz, Nat.zero_sub, hzero, ↓reduceIte]
  · intro values capacity hn
    have hne := Nat.ne_of_gt hn
    refine ⟨3, by decide, ?_⟩
    simp only [trajectory, registerStep, transfer_instruction_1048, transfer_instruction_1050, transfer_instruction_1051,
      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]

end RiemannMachineVerification
