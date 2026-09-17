import RiemannMachineVerification.BooleanCertificate

namespace RiemannMachineVerification

def currentWindow {N : ℕ} (c : Configuration N) (p : ℤ) : Bool :=
  c.tape (c.head + p)

def RespectsReadMask {N : ℕ} (mask : Fin N → Bool → Bool)
    (c : Configuration N) : Prop :=
  ∀ q, c.state = some q → mask q (c.tape c.head) = true

def WindowInvariant {N : ℕ} (predicate : Fin N → (ℤ → Bool) → Bool)
    (c : Configuration N) : Prop :=
  match c.state with
  | none => True
  | some q => predicate q (currentWindow c) = true

theorem currentWindow_step {N : ℕ} (M : Machine N) (c : Configuration N)
    (q : Fin N) (hq : c.state = some q) :
    currentWindow (step M c) =
      shiftInput (M.transition q (c.tape c.head)).right
        (M.transition q (c.tape c.head)).write (currentWindow c) := by
  funext p
  simp only [currentWindow, step, hq, shiftInput]
  cases (M.transition q (c.tape c.head)).right <;> simp only [Bool.false_eq_true, ↓reduceIte]
  all_goals
    split_ifs <;> first | rfl | omega | (congr 1; omega)

/-- A checked inductive tape predicate sharpens any previously proved read mask.
The predicate ranges over the entire tape through its relative-offset view;
there is no execution-time bound in this theorem. -/
theorem certify_read_mask {N : ℕ} (M : Machine N)
    (before after : Fin N → Bool → Bool)
    (predicate : Fin N → (ℤ → Bool) → Bool)
    (initial : predicate M.entry (fun _ => false) = true)
    (closed : ∀ (q : Fin N) (t : ℤ → Bool) (b : Bool),
      before q b = true → t 0 = b → predicate q t = true →
      match (M.transition q b).next with
      | none => True
      | some q' => predicate q' (shiftInput (M.transition q b).right
          (M.transition q b).write t) = true)
    (read_mask : ∀ (q : Fin N) (t : ℤ → Bool) (b : Bool),
      before q b = true → t 0 = b → predicate q t = true → after q b = true)
    (previous : ∀ t, RespectsReadMask before (run M t)) :
    ∀ t, RespectsReadMask after (run M t) := by
  have invariant : ∀ t, WindowInvariant predicate (run M t) := by
    intro t
    induction t with
    | zero => exact initial
    | succ t ih =>
      change WindowInvariant predicate (step M (run M t))
      cases hs : (run M t).state with
      | none => rw [step_halted M _ hs]; exact ih
      | some q =>
        have hp := previous t q hs
        have hc := closed q (currentWindow (run M t)) ((run M t).tape (run M t).head)
          hp (by simp [currentWindow]) (by simpa [WindowInvariant, hs] using ih)
        unfold WindowInvariant
        rw [show (step M (run M t)).state =
          (M.transition q ((run M t).tape (run M t).head)).next by simp [step, hs]]
        rw [currentWindow_step M _ q hs]
        exact hc
  intro t q hq
  exact read_mask q (currentWindow (run M t)) ((run M t).tape (run M t).head)
    (previous t q hq) (by simp [currentWindow])
    (by simpa [WindowInvariant, hq] using invariant t)

end RiemannMachineVerification
