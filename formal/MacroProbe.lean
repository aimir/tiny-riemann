import RiemannMachineVerification.MacroData

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

private theorem local_ext {N : ℕ} {a b : LocalConfiguration N}
    (hs : a.state = b.state) (hh : a.head = b.head)
    (ht : a.tape = b.tape) : a = b := by
  cases a
  cases b
  simp_all

theorem macro_check_probe : MacroCheckFor ⟨12, by decide⟩ := by
  unfold MacroCheckFor
  intro a b c d e
  cases a <;> cases b <;> cases c <;> cases d <;> cases e
  all_goals
    apply local_ext
    · rfl
    · rfl
    · funext p
      fin_cases p <;> rfl

#print axioms macro_check_probe

end RiemannMachineVerification
