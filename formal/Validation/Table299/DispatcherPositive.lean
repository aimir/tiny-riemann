import Validation.Table299.DispatcherData
import Validation.Table299.ProgramCounterParts
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

/-- [proof-guide] Collects the dispatcher obligations for addresses 0 through 63.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_0 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨0, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 64 through 127.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_1 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 128 through 191.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_2 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨2, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 192 through 255.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_3 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 256 through 319.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_4 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨4, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 320 through 383.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_5 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨5, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 384 through 447.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_6 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨6, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 448 through 511.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_7 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨7, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 512 through 575.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_8 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨8, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 576 through 639.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_9 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨9, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 640 through 703.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_10 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨10, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 704 through 767.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_11 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨11, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 768 through 831.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_12 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨12, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 832 through 895.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_13 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨13, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 896 through 959.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_14 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨14, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 960 through 1023.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_15 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨15, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1024 through 1087.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_16 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨16, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1088 through 1151.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_17 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨17, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1152 through 1215.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_18 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨18, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1216 through 1279.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_19 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨19, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1280 through 1343.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_20 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨20, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1344 through 1407.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_21 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨21, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1408 through 1471.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_22 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨22, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1472 through 1535.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_23 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨23, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1536 through 1599.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_24 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨24, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1600 through 1663.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_25 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨25, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1664 through 1727.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_26 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨26, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1728 through 1791.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_27 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨27, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1792 through 1855.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_28 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨28, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1856 through 1919.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_29 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨29, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1920 through 1983.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_30 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨30, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 1984 through 2047.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem dispatcher_positive_chunk_31 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨31, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `dispatcher_positive_chunk_0`, `dispatcher_positive_chunk_1`, `dispatcher_positive_chunk_2` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
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
  · exact dispatcher_positive_chunk_16 low
  · exact dispatcher_positive_chunk_17 low
  · exact dispatcher_positive_chunk_18 low
  · exact dispatcher_positive_chunk_19 low
  · exact dispatcher_positive_chunk_20 low
  · exact dispatcher_positive_chunk_21 low
  · exact dispatcher_positive_chunk_22 low
  · exact dispatcher_positive_chunk_23 low
  · exact dispatcher_positive_chunk_24 low
  · exact dispatcher_positive_chunk_25 low
  · exact dispatcher_positive_chunk_26 low
  · exact dispatcher_positive_chunk_27 low
  · exact dispatcher_positive_chunk_28 low
  · exact dispatcher_positive_chunk_29 low
  · exact dispatcher_positive_chunk_30 low
  · exact dispatcher_positive_chunk_31 low

end RiemannMachineVerification
