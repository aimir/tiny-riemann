import Validation.Table295.CounterData
import Validation.Table299.ProgramCounterParts
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Reallocated

def PrimitiveShape (pc : ProgramCounter) : Prop :=
  match primitiveProgram pc with
  | .increment _ next => 16 ≤ pc.val ∧ next = counterNext pc false
  | .decrement _ zero positive => 16 ≤ pc.val ∧
      zero = counterNext pc false ∧ positive = counterNext pc true
  | .initialize next => pc.val < 16 ∧ next = counterNext pc false
  | .jump _ | .halt => 16 ≤ pc.val
  | .transfer _ _ _ => False

instance (pc : ProgramCounter) : Decidable (PrimitiveShape pc) := by
  unfold PrimitiveShape; split <;> infer_instance

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_0 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨0, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_1 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_2 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨2, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_3 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_4 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨4, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_5 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨5, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_6 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨6, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_7 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨7, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_8 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨8, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_9 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨9, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_10 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨10, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_11 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨11, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_12 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨12, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_13 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨13, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_14 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨14, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_15 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨15, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_16 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨16, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_17 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨17, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_18 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨18, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_19 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨19, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_20 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨20, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_21 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨21, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_22 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨22, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_23 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨23, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_24 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨24, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_25 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨25, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_26 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨26, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_27 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨27, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_28 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨28, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_29 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨29, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_30 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨30, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape_chunk_31 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨31, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `primitive_shape_chunk_0`, `primitive_shape_chunk_1`, `primitive_shape_chunk_2` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem primitive_shape (pc : ProgramCounter) : PrimitiveShape pc := by
  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc
  fin_cases high
  · exact primitive_shape_chunk_0 low
  · exact primitive_shape_chunk_1 low
  · exact primitive_shape_chunk_2 low
  · exact primitive_shape_chunk_3 low
  · exact primitive_shape_chunk_4 low
  · exact primitive_shape_chunk_5 low
  · exact primitive_shape_chunk_6 low
  · exact primitive_shape_chunk_7 low
  · exact primitive_shape_chunk_8 low
  · exact primitive_shape_chunk_9 low
  · exact primitive_shape_chunk_10 low
  · exact primitive_shape_chunk_11 low
  · exact primitive_shape_chunk_12 low
  · exact primitive_shape_chunk_13 low
  · exact primitive_shape_chunk_14 low
  · exact primitive_shape_chunk_15 low
  · exact primitive_shape_chunk_16 low
  · exact primitive_shape_chunk_17 low
  · exact primitive_shape_chunk_18 low
  · exact primitive_shape_chunk_19 low
  · exact primitive_shape_chunk_20 low
  · exact primitive_shape_chunk_21 low
  · exact primitive_shape_chunk_22 low
  · exact primitive_shape_chunk_23 low
  · exact primitive_shape_chunk_24 low
  · exact primitive_shape_chunk_25 low
  · exact primitive_shape_chunk_26 low
  · exact primitive_shape_chunk_27 low
  · exact primitive_shape_chunk_28 low
  · exact primitive_shape_chunk_29 low
  · exact primitive_shape_chunk_30 low
  · exact primitive_shape_chunk_31 low

end RiemannMachineVerification.Reallocated
