import RiemannMachineVerification.Generated.Dispatch.Data
import RiemannMachineVerification.Tape.CounterIndex
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Collects the dispatcher obligations for addresses 0 through 63.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_0 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨0, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 64 through 127.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_1 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 128 through 191.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_2 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨2, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 192 through 255.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_3 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 256 through 319.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_4 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨4, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 320 through 383.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_5 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨5, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 384 through 447.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_6 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨6, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 448 through 511.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_7 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨7, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 512 through 575.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_8 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨8, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 576 through 639.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_9 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨9, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 640 through 703.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_10 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨10, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 704 through 767.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_11 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨11, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 768 through 831.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_12 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨12, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 832 through 895.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_13 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨13, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 896 through 959.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_14 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨14, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Collects the dispatcher obligations for addresses 960 through 1023.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_positive_chunk_15 (low : Fin 64) :
    0 < dispatcherLength (pcParts ⟨15, by decide⟩ low) := by
  fin_cases low <;> decide

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `dispatcher_positive_chunk_0`, `dispatcher_positive_chunk_1`, `dispatcher_positive_chunk_2` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
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

end RiemannMachineVerification.Implementation
