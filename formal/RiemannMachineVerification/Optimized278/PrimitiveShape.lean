import RiemannMachineVerification.Optimized278.CounterData
import RiemannMachineVerification.Optimized278.ProgramCounterParts

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Optimized278

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

theorem primitive_shape_chunk_0 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨0, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_1 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_2 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨2, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_3 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_4 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨4, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_5 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨5, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_6 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨6, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_7 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨7, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_8 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨8, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_9 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨9, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_10 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨10, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_11 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨11, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_12 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨12, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_13 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨13, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_14 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨14, by decide⟩ low) := by
  fin_cases low <;> decide

theorem primitive_shape_chunk_15 (low : Fin 64) :
    PrimitiveShape (pcParts ⟨15, by decide⟩ low) := by
  fin_cases low <;> decide

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

end RiemannMachineVerification.Optimized278
