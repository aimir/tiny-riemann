import Validation.Table299.TransferSites
import Validation.Table299.ProgramCounterParts
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

def MacroSite (pc : ProgramCounter) : Prop :=
  match macroProgram pc with
  | .transfer source targets next => TransferSite primitiveProgram pc next source targets
  | _ => macroProgram pc = primitiveProgram pc

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_16`, `transfer_site_24`, `transfer_site_32` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_0 (low : Fin 64) :
    MacroSite (pcParts ⟨0, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_16
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_24
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_32
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_40
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_64`, `transfer_site_68`, `transfer_site_72` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_1 (low : Fin 64) :
    MacroSite (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_64
  · rfl
  · rfl
  · rfl
  · exact transfer_site_68
  · rfl
  · rfl
  · rfl
  · exact transfer_site_72
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_80
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_92
  · rfl
  · rfl
  · rfl
  · exact transfer_site_96
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_104
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_116
  · rfl
  · rfl
  · rfl
  · exact transfer_site_120
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_128`, `transfer_site_152`, `transfer_site_160` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_2 (low : Fin 64) :
    MacroSite (pcParts ⟨2, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_128
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_152
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_160
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_168
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_3 (low : Fin 64) :
    MacroSite (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_256`, `transfer_site_264`, `transfer_site_272` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_4 (low : Fin 64) :
    MacroSite (pcParts ⟨4, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_256
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_264
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_272
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_280
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_288
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_296
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_304
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_312
  · rfl
  · rfl
  · rfl
  · exact transfer_site_316
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_320`, `transfer_site_328`, `transfer_site_336` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_5 (low : Fin 64) :
    MacroSite (pcParts ⟨5, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_320
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_328
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_336
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_344
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_352
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_360
  · rfl
  · rfl
  · rfl
  · exact transfer_site_364
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_384`, `transfer_site_392`, `transfer_site_400` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_6 (low : Fin 64) :
    MacroSite (pcParts ⟨6, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_384
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_392
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_400
  · rfl
  · rfl
  · rfl
  · exact transfer_site_404
  · rfl
  · rfl
  · rfl
  · exact transfer_site_408
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_416
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_424
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_432
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_440
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_448`, `transfer_site_460`, `transfer_site_464` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_7 (low : Fin 64) :
    MacroSite (pcParts ⟨7, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_448
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_460
  · rfl
  · rfl
  · rfl
  · exact transfer_site_464
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_472
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_512`, `transfer_site_520`, `transfer_site_528` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_8 (low : Fin 64) :
    MacroSite (pcParts ⟨8, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_512
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_520
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_528
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_536
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_544
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_552
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_560
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_568
  · rfl
  · rfl
  · rfl
  · exact transfer_site_572
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_576`, `transfer_site_584`, `transfer_site_592` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_9 (low : Fin 64) :
    MacroSite (pcParts ⟨9, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_576
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_584
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_592
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_600
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_608
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_616
  · rfl
  · rfl
  · rfl
  · exact transfer_site_620
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_640`, `transfer_site_648`, `transfer_site_656` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_10 (low : Fin 64) :
    MacroSite (pcParts ⟨10, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_640
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_648
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_656
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_664
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_672
  · rfl
  · rfl
  · rfl
  · exact transfer_site_676
  · rfl
  · rfl
  · rfl
  · exact transfer_site_680
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_688
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_696
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_704`, `transfer_site_712`, `transfer_site_716` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_11 (low : Fin 64) :
    MacroSite (pcParts ⟨11, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_704
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_712
  · rfl
  · rfl
  · rfl
  · exact transfer_site_716
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_768`, `transfer_site_776`, `transfer_site_784` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_12 (low : Fin 64) :
    MacroSite (pcParts ⟨12, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_768
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_776
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_784
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_792
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_800
  · rfl
  · rfl
  · rfl
  · exact transfer_site_804
  · rfl
  · rfl
  · rfl
  · exact transfer_site_808
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_816
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_824
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_832`, `transfer_site_840`, `transfer_site_844` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_13 (low : Fin 64) :
    MacroSite (pcParts ⟨13, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_832
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_840
  · rfl
  · rfl
  · rfl
  · exact transfer_site_844
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_896`, `transfer_site_904`, `transfer_site_912` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_14 (low : Fin 64) :
    MacroSite (pcParts ⟨14, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_896
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_904
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_912
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_920
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_928
  · rfl
  · rfl
  · rfl
  · exact transfer_site_932
  · rfl
  · rfl
  · rfl
  · exact transfer_site_936
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_944
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_952
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_960`, `transfer_site_968`, `transfer_site_972` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_15 (low : Fin 64) :
    MacroSite (pcParts ⟨15, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_960
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_968
  · rfl
  · rfl
  · rfl
  · exact transfer_site_972
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Combines `transfer_site_1024`, `transfer_site_1032`, `transfer_site_1040` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_16 (low : Fin 64) :
    MacroSite (pcParts ⟨16, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_1024
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_1032
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_1040
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_1048
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_17 (low : Fin 64) :
    MacroSite (pcParts ⟨17, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_18 (low : Fin 64) :
    MacroSite (pcParts ⟨18, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_19 (low : Fin 64) :
    MacroSite (pcParts ⟨19, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_20 (low : Fin 64) :
    MacroSite (pcParts ⟨20, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_21 (low : Fin 64) :
    MacroSite (pcParts ⟨21, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_22 (low : Fin 64) :
    MacroSite (pcParts ⟨22, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_23 (low : Fin 64) :
    MacroSite (pcParts ⟨23, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_24 (low : Fin 64) :
    MacroSite (pcParts ⟨24, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_25 (low : Fin 64) :
    MacroSite (pcParts ⟨25, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_26 (low : Fin 64) :
    MacroSite (pcParts ⟨26, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_27 (low : Fin 64) :
    MacroSite (pcParts ⟨27, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_28 (low : Fin 64) :
    MacroSite (pcParts ⟨28, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_29 (low : Fin 64) :
    MacroSite (pcParts ⟨29, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_30 (low : Fin 64) :
    MacroSite (pcParts ⟨30, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Collects the finite cases for the displayed high-counter chunk, covering every low index.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site_chunk_31 (low : Fin 64) :
    MacroSite (pcParts ⟨31, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `macro_site_chunk_0`, `macro_site_chunk_1`, `macro_site_chunk_2` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem macro_site (pc : ProgramCounter) : MacroSite pc := by
  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc
  fin_cases high
  · exact macro_site_chunk_0 low
  · exact macro_site_chunk_1 low
  · exact macro_site_chunk_2 low
  · exact macro_site_chunk_3 low
  · exact macro_site_chunk_4 low
  · exact macro_site_chunk_5 low
  · exact macro_site_chunk_6 low
  · exact macro_site_chunk_7 low
  · exact macro_site_chunk_8 low
  · exact macro_site_chunk_9 low
  · exact macro_site_chunk_10 low
  · exact macro_site_chunk_11 low
  · exact macro_site_chunk_12 low
  · exact macro_site_chunk_13 low
  · exact macro_site_chunk_14 low
  · exact macro_site_chunk_15 low
  · exact macro_site_chunk_16 low
  · exact macro_site_chunk_17 low
  · exact macro_site_chunk_18 low
  · exact macro_site_chunk_19 low
  · exact macro_site_chunk_20 low
  · exact macro_site_chunk_21 low
  · exact macro_site_chunk_22 low
  · exact macro_site_chunk_23 low
  · exact macro_site_chunk_24 low
  · exact macro_site_chunk_25 low
  · exact macro_site_chunk_26 low
  · exact macro_site_chunk_27 low
  · exact macro_site_chunk_28 low
  · exact macro_site_chunk_29 low
  · exact macro_site_chunk_30 low
  · exact macro_site_chunk_31 low

end RiemannMachineVerification
