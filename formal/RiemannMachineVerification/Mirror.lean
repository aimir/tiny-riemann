import RiemannMachineVerification.ZipperExecution

namespace RiemannMachineVerification

def mirrorMachine {N} (M : Machine N) : Machine N :=
  ⟨M.entry, fun q b =>
    let i := M.transition q b
    ⟨i.write, !i.right, i.next⟩⟩

def mirrorZipper {N} (z : Zipper N) : Zipper N :=
  ⟨z.state, streamTail z.right, streamCons (z.right 0) z.left⟩

theorem mirrorMachine_twice {N} (M : Machine N) : mirrorMachine (mirrorMachine M) = M := by
  simp only [mirrorMachine, Bool.not_not]

theorem mirrorZipper_twice {N} (z : Zipper N) : mirrorZipper (mirrorZipper z) = z := by
  apply zipper_ext <;> try rfl
  exact streamCons_tail z.right

theorem mirror_step {N} (M : Machine N) (z : Zipper N) :
    mirrorZipper (zipperStep M z) = zipperStep (mirrorMachine M) (mirrorZipper z) := by
  cases hs : z.state with
  | none => simp [zipperStep, mirrorZipper, hs]
  | some q =>
    cases hd : (M.transition q (z.right 0)).right
    · simp only [zipperStep, mirrorMachine, mirrorZipper, hs, streamCons, hd,
        Bool.false_eq_true, ↓reduceIte, Bool.not_false, streamTail_cons]
      apply zipper_ext <;> try rfl
      exact streamCons_tail z.left
    · simp only [zipperStep, mirrorMachine, mirrorZipper, hs, streamCons, hd,
        ↓reduceIte, Bool.not_true, Bool.false_eq_true, streamTail_cons]

theorem mirror_trajectory {N} (M : Machine N) (z : Zipper N) (t : ℕ) :
    mirrorZipper (trajectory (zipperStep M) z t) =
      trajectory (zipperStep (mirrorMachine M)) (mirrorZipper z) t := by
  induction t with
  | zero => rfl
  | succ t ih => rw [trajectory, mirror_step, ih]; rfl

theorem ZExec.mirror {N} {M : Machine N} {a b : Zipper N} (h : ZExec M a b) :
    ZExec (mirrorMachine M) (mirrorZipper a) (mirrorZipper b) := by
  obtain ⟨t, ht⟩ := h
  exact ⟨t, by rw [← mirror_trajectory, ht]⟩

end RiemannMachineVerification
