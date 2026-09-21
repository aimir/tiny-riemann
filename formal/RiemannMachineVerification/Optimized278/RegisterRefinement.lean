import RiemannMachineVerification.Optimized278.RefinementBlock0
import RiemannMachineVerification.Optimized278.RefinementBlock1
import RiemannMachineVerification.Optimized278.RefinementBlock2
import RiemannMachineVerification.Optimized278.RefinementBlock3
import RiemannMachineVerification.Optimized278.RefinementBlock4
import RiemannMachineVerification.Optimized278.RefinementBlock5
import RiemannMachineVerification.Optimized278.RefinementBlock6
import RiemannMachineVerification.Optimized278.RefinementBlock7
import RiemannMachineVerification.Optimized278.RefinementBlock8
import RiemannMachineVerification.Optimized278.RefinementBlock9
import RiemannMachineVerification.Optimized278.RefinementBlock10
import RiemannMachineVerification.Optimized278.RefinementBlock11
import RiemannMachineVerification.Optimized278.RefinementBlock12
import RiemannMachineVerification.Optimized278.RefinementBlock13
import RiemannMachineVerification.Optimized278.RefinementBlock14
import RiemannMachineVerification.Optimized278.RefinementBlock15
import RiemannMachineVerification.Optimized278.RefinementBlock16
import RiemannMachineVerification.Optimized278.RefinementBlock17
import RiemannMachineVerification.Optimized278.RefinementBlock18
import RiemannMachineVerification.Optimized278.RefinementBlock19
import RiemannMachineVerification.Optimized278.RefinementBlock20
import RiemannMachineVerification.Optimized278.RefinementBlock21
import RiemannMachineVerification.Optimized278.RefinementBlock22
import RiemannMachineVerification.Optimized278.RefinementBlock23
import RiemannMachineVerification.Optimized278.RefinementBlock24
import RiemannMachineVerification.Optimized278.RefinementBlock25
import RiemannMachineVerification.Optimized278.RefinementBlock26
import RiemannMachineVerification.Optimized278.RefinementBlock27
import RiemannMachineVerification.Optimized278.RefinementBlock28
import RiemannMachineVerification.Optimized278.RefinementBlock29
import RiemannMachineVerification.Optimized278.RefinementBlock30
import RiemannMachineVerification.Optimized278.RefinementBlock31
import RiemannMachineVerification.Optimized278.RefinementBlock32
import RiemannMachineVerification.Optimized278.RefinementBlock33
import RiemannMachineVerification.Optimized278.RefinementBlock34
import RiemannMachineVerification.Optimized278.RefinementBlock35
import RiemannMachineVerification.Optimized278.RefinementBlock36
import RiemannMachineVerification.Optimized278.RefinementBlock37
import RiemannMachineVerification.Optimized278.RefinementBlock38
import RiemannMachineVerification.Optimized278.RefinementBlock39
import RiemannMachineVerification.Optimized278.RefinementBlock40
import RiemannMachineVerification.Optimized278.RefinementBlock41
import RiemannMachineVerification.Optimized278.RefinementBlock42
import RiemannMachineVerification.Optimized278.RefinementBlock43
import RiemannMachineVerification.Optimized278.RefinementBlock44
import RiemannMachineVerification.Optimized278.RefinementBlock45
import RiemannMachineVerification.Optimized278.RefinementBlock46
import RiemannMachineVerification.Optimized278.RefinementBlock47
import RiemannMachineVerification.Optimized278.RefinementBlock48
import RiemannMachineVerification.Optimized278.RefinementBlock49
import RiemannMachineVerification.Optimized278.RefinementBlock50
import RiemannMachineVerification.Optimized278.RefinementBlock51
import RiemannMachineVerification.Optimized278.RefinementBlock52
import RiemannMachineVerification.Optimized278.RefinementBlock53
import RiemannMachineVerification.Optimized278.RefinementBlock54

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

theorem boundary_advance (a : RiemannMachineVerification.RegisterConfiguration) (b : RegisterConfiguration)
    (h : Boundary a b) : ∃ i j, 0 < i ∧ 0 < j ∧ Boundary
      (trajectory (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) a i)
      (trajectory (registerStep macroProgram) b j) := by
  cases h with
  | block0 v a b => exact advance0 v a b
  | block1 v a b => exact advance1 v a b
  | block2 v a b => exact advance2 v a b
  | block3 v a b => exact advance3 v a b
  | block4 v a b => exact advance4 v a b
  | block5 v a b => exact advance5 v a b
  | block6 v a b => exact advance6 v a b
  | block7 v a b => exact advance7 v a b
  | block8 v a b => exact advance8 v a b
  | block9 v a b => exact advance9 v a b
  | block10 v a b => exact advance10 v a b
  | block11 v a b => exact advance11 v a b
  | block12 v a b => exact advance12 v a b
  | block13 v a b => exact advance13 v a b
  | block14 v a b => exact advance14 v a b
  | block15 v a b => exact advance15 v a b
  | block16 v a b => exact advance16 v a b
  | block17 v a b => exact advance17 v a b
  | block18 v a b => exact advance18 v a b
  | block19 v a b => exact advance19 v a b
  | block20 v a b => exact advance20 v a b
  | block21 v a b => exact advance21 v a b
  | block22 v a b => exact advance22 v a b
  | block23 v a b => exact advance23 v a b
  | block24 v a b => exact advance24 v a b
  | block25 v a b => exact advance25 v a b
  | block26 v a b => exact advance26 v a b
  | block27 v a b => exact advance27 v a b
  | block28 v a b => exact advance28 v a b
  | block29 v a b => exact advance29 v a b
  | block30 v a b => exact advance30 v a b
  | block31 v a b => exact advance31 v a b
  | block32 v a b => exact advance32 v a b
  | block33 v a b => exact advance33 v a b
  | block34 v a b => exact advance34 v a b
  | block35 v a b => exact advance35 v a b
  | block36 v a b => exact advance36 v a b
  | block37 v a b => exact advance37 v a b
  | block38 v a b => exact advance38 v a b
  | block39 v a b => exact advance39 v a b
  | block40 v a b => exact advance40 v a b
  | block41 v a b => exact advance41 v a b
  | block42 v a b => exact advance42 v a b
  | block43 v a b => exact advance43 v a b
  | block44 v a b => exact advance44 v a b
  | block45 v a b => exact advance45 v a b
  | block46 v a b => exact advance46 v a b
  | block47 v a b => exact advance47 v a b
  | block48 v a b => exact advance48 v a b
  | block49 v a b => exact advance49 v a b
  | block50 v a b => exact advance50 v a b
  | block51 v a b => exact advance51 v a b
  | block52 v a b => exact advance52 v a b
  | block53 v a b => exact advance53 v a b
  | block54 v a b => exact advance54 v a b
  | halted a b ha hb =>
    refine ⟨1, 1, by decide, by decide, ?_⟩
    simpa only [trajectory, RiemannMachineVerification.registerStep_halted _ _ ha, registerStep_halted _ _ hb] using Boundary.halted a b ha hb

theorem macro_iff_original : RegisterHalts macroProgram ↔ RiemannMachineVerification.RegisterHalts RiemannMachineVerification.macroProgram := by
  symm
  apply eventually_iff_of_progressing_bisimulation
    (RiemannMachineVerification.registerStep RiemannMachineVerification.macroProgram) (registerStep macroProgram)
    (fun s => s.pc = none) (fun s => s.pc = none)
    RiemannMachineVerification.initialRegisterConfiguration initialRegisterConfiguration Boundary
  · have hv : values 0 0 0 0 0 0 0 0 0 = (fun _ => 0) := by
      funext r; fin_cases r <;> rfl
    simpa only [hv, initialRegisterConfiguration, RiemannMachineVerification.initialRegisterConfiguration] using Boundary.block0 (fun _ => 0) 0 0
  · intro a h; simpa only [RiemannMachineVerification.registerStep_halted _ _ h] using h
  · intro b h; simpa only [registerStep_halted _ _ h] using h
  · intro a b h; cases h <;> simp_all
  · exact boundary_advance

end RiemannMachineVerification.Optimized278
