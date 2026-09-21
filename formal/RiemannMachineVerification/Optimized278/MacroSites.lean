import RiemannMachineVerification.Optimized278.TransferSites
import RiemannMachineVerification.Optimized278.ProgramCounterParts

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Optimized278

def MacroSite (pc : ProgramCounter) : Prop :=
  match macroProgram pc with
  | .transfer source targets next => TransferSite primitiveProgram pc next source targets
  | _ => macroProgram pc = primitiveProgram pc

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
  · rfl
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
  · exact transfer_site_48
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_56
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

theorem macro_site_chunk_1 (low : Fin 64) :
    MacroSite (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
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
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

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
  · exact transfer_site_136
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_144
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
  · exact transfer_site_176
  · rfl
  · rfl
  · rfl
  · exact transfer_site_180
  · rfl
  · rfl
  · rfl
  · exact transfer_site_184
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

theorem macro_site_chunk_3 (low : Fin 64) :
    MacroSite (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low
  · exact transfer_site_192
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_200
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_208
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_216
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_224
  · rfl
  · rfl
  · rfl
  · exact transfer_site_228
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

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
  · exact transfer_site_284
  · rfl
  · rfl
  · rfl
  · rfl
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
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_316
  · rfl
  · rfl
  · rfl

theorem macro_site_chunk_5 (low : Fin 64) :
    MacroSite (pcParts ⟨5, by decide⟩ low) := by
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
  · rfl
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
  · exact transfer_site_436
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
  · exact transfer_site_456
  · rfl
  · rfl
  · rfl
  · rfl
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
  · exact transfer_site_480
  · rfl
  · rfl
  · rfl
  · exact transfer_site_484
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

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
  · exact transfer_site_548
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
  · rfl
  · rfl
  · rfl
  · rfl

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
  · exact transfer_site_588
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
  · exact transfer_site_624
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_632
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

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
  · exact transfer_site_652
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
  · rfl
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
  · exact transfer_site_692
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
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_720
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_728
  · rfl
  · rfl
  · rfl
  · exact transfer_site_732
  · rfl
  · rfl
  · rfl
  · exact transfer_site_736
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_744
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact transfer_site_752
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

theorem macro_site_chunk_12 (low : Fin 64) :
    MacroSite (pcParts ⟨12, by decide⟩ low) := by
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

theorem macro_site_chunk_13 (low : Fin 64) :
    MacroSite (pcParts ⟨13, by decide⟩ low) := by
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

theorem macro_site_chunk_14 (low : Fin 64) :
    MacroSite (pcParts ⟨14, by decide⟩ low) := by
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

theorem macro_site_chunk_15 (low : Fin 64) :
    MacroSite (pcParts ⟨15, by decide⟩ low) := by
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

end RiemannMachineVerification.Optimized278
