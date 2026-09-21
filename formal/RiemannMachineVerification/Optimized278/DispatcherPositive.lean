import RiemannMachineVerification.Optimized278.DispatcherData
import RiemannMachineVerification.Optimized278.ProgramCounterParts

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Optimized278

theorem dispatcher_positive_chunk_0 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨0, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_1 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_2 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨2, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_3 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_4 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨4, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_5 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨5, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_6 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨6, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_7 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨7, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_8 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨8, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_9 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨9, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_10 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨10, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_11 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨11, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_12 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨12, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_13 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨13, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_14 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨14, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive_chunk_15 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨15, by decide⟩ low) := by
  fin_cases low <;> decide

theorem dispatcher_positive (pc : ProgramCounter) : 0 < dispatcherLength pc := by
  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc
  fin_cases high
  · exact dispatcher_positive_chunk_0 low
  · exact dispatcher_positive_chunk_1 low
  · exact dispatcher_positive_chunk_2 low
  · exact dispatcher_positive_chunk_3 low
  · exact dispatcher_positive_chunk_4 low
  · exact dispatcher_positive_chunk_5 low
  · exact dispatcher_positive_chunk_6 low
  · exact dispatcher_positive_chunk_7 low
  · exact dispatcher_positive_chunk_8 low
  · exact dispatcher_positive_chunk_9 low
  · exact dispatcher_positive_chunk_10 low
  · exact dispatcher_positive_chunk_11 low
  · exact dispatcher_positive_chunk_12 low
  · exact dispatcher_positive_chunk_13 low
  · exact dispatcher_positive_chunk_14 low
  · exact dispatcher_positive_chunk_15 low

end RiemannMachineVerification.Optimized278
