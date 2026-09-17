import RiemannMachineVerification.MacroProofSupport

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

theorem macro_check_140 : MacroCheckFor ⟨140, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

theorem macro_check_141 : MacroCheckFor ⟨141, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_142 : MacroCheckFor ⟨142, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_143 : MacroCheckFor ⟨143, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_144 : MacroCheckFor ⟨144, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_145 : MacroCheckFor ⟨145, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_146 : MacroCheckFor ⟨146, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_147 : MacroCheckFor ⟨147, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_148 : MacroCheckFor ⟨148, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_149 : MacroCheckFor ⟨149, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_150 : MacroCheckFor ⟨150, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_151 : MacroCheckFor ⟨151, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_152 : MacroCheckFor ⟨152, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_153 : MacroCheckFor ⟨153, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_154 : MacroCheckFor ⟨154, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_155 : MacroCheckFor ⟨155, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_156 : MacroCheckFor ⟨156, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_157 : MacroCheckFor ⟨157, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

theorem macro_check_158 : MacroCheckFor ⟨158, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_159 : MacroCheckFor ⟨159, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

end RiemannMachineVerification
