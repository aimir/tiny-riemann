import RiemannMachineVerification.MacroProofSupport

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

theorem macro_check_40 : MacroCheckFor ⟨40, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

theorem macro_check_41 : MacroCheckFor ⟨41, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_42 : MacroCheckFor ⟨42, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_43 : MacroCheckFor ⟨43, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_44 : MacroCheckFor ⟨44, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_45 : MacroCheckFor ⟨45, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_46 : MacroCheckFor ⟨46, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_47 : MacroCheckFor ⟨47, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

theorem macro_check_48 : MacroCheckFor ⟨48, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_49 : MacroCheckFor ⟨49, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_50 : MacroCheckFor ⟨50, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_51 : MacroCheckFor ⟨51, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_52 : MacroCheckFor ⟨52, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_53 : MacroCheckFor ⟨53, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_54 : MacroCheckFor ⟨54, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply localConfiguration_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

theorem macro_check_55 : MacroCheckFor ⟨55, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_56 : MacroCheckFor ⟨56, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_57 : MacroCheckFor ⟨57, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_58 : MacroCheckFor ⟨58, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

theorem macro_check_59 : MacroCheckFor ⟨59, by decide⟩ := by
  apply macroCheck_one
  · intro b; cases b <;> rfl
  · intro b; cases b <;> rfl

end RiemannMachineVerification
