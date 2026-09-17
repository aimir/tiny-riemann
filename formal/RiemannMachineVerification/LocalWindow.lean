import RiemannMachineVerification.Expansion

namespace RiemannMachineVerification

/-- A five-cell window suffices to describe all cells read or written by three
steps starting at its center. The head may exit the window on the last step. -/
structure LocalConfiguration (N : ℕ) where
  state : Option (Fin N)
  head : ℤ
  tape : Fin 5 → Bool
  deriving DecidableEq

def localRead {N : ℕ} (c : LocalConfiguration N) : Bool :=
  if h : 0 ≤ c.head ∧ c.head < 5 then
    c.tape ⟨c.head.toNat, by omega⟩
  else false

def localStep {N : ℕ} (M : Machine N)
    (c : LocalConfiguration N) : LocalConfiguration N :=
  match c.state with
  | none => c
  | some q =>
      let ins := M.transition q (localRead c)
      {
        state := ins.next
        head := if ins.right then c.head + 1 else c.head - 1
        tape := fun p => if (p.val : ℤ) = c.head then ins.write else c.tape p
      }

def localAdvance {N : ℕ} (M : Machine N) (c : LocalConfiguration N) :
    ℕ → LocalConfiguration N
  | 0 => c
  | t + 1 => localStep M (localAdvance M c t)

def assemble {N : ℕ} (origin : ℤ) (background : ℤ → Bool)
    (c : LocalConfiguration N) : Configuration N :=
  {
    state := c.state
    head := origin + c.head
    tape := fun p =>
      if h : 0 ≤ p - origin ∧ p - origin < 5 then
        c.tape ⟨(p - origin).toNat, by omega⟩
      else background p
  }

theorem assemble_step {N : ℕ} (M : Machine N) (origin : ℤ)
    (background : ℤ → Bool) (c : LocalConfiguration N)
    (bounded : 0 ≤ c.head ∧ c.head < 5) :
    step M (assemble origin background c) =
      assemble origin background (localStep M c) := by
  cases hs : c.state with
  | none => simp [step, assemble, localStep, hs]
  | some q =>
    have read_eq : (assemble origin background c).tape
        (assemble origin background c).head = localRead c := by
      simp [assemble, localRead, bounded]
    simp only [step, assemble, hs, localStep]
    change
      ({ state := (M.transition q _).next, head := _, tape := _ } : Configuration N) = _
    rw [show (if h : 0 ≤ origin + c.head - origin ∧ origin + c.head - origin < 5
        then c.tape ⟨(origin + c.head - origin).toNat, by omega⟩
        else background (origin + c.head)) = localRead c from read_eq]
    congr 1
    · split <;> omega
    · funext p
      by_cases hp : p = origin + c.head
      · subst p
        simp [bounded]
      · have hn : p - origin ≠ c.head := by omega
        simp only [hp, ↓reduceIte]
        split
        · rename_i hw
          simp [max_eq_left hw.1, hn]
        · rfl

theorem local_head_step_bounds {N : ℕ} (M : Machine N)
    (c : LocalConfiguration N) :
    c.head - 1 ≤ (localStep M c).head ∧
      (localStep M c).head ≤ c.head + 1 := by
  cases hs : c.state with
  | none => simp [localStep, hs]
  | some q =>
    simp only [localStep, hs]
    split <;> omega

theorem local_head_bounds {N : ℕ} (M : Machine N)
    (c : LocalConfiguration N) (t : ℕ) :
    c.head - t ≤ (localAdvance M c t).head ∧
      (localAdvance M c t).head ≤ c.head + t := by
  induction t with
  | zero => simp [localAdvance]
  | succ t ih =>
    have := local_head_step_bounds M (localAdvance M c t)
    simp only [localAdvance]
    push_cast
    omega

theorem assemble_advance {N : ℕ} (M : Machine N) (origin : ℤ)
    (background : ℤ → Bool) (c : LocalConfiguration N)
    (center : c.head = 2) (t : ℕ) (ht : t ≤ 3) :
    advance M (assemble origin background c) t =
      assemble origin background (localAdvance M c t) := by
  induction t with
  | zero => rfl
  | succ t ih =>
    rw [advance, ih (by omega)]
    have hb := local_head_bounds M c t
    rw [assemble_step M origin background _ (by omega)]
    rfl

def extract {N : ℕ} (c : Configuration N) : LocalConfiguration N :=
  { state := c.state, head := 2,
    tape := fun p => c.tape (c.head - 2 + (p.val : ℤ)) }

theorem assemble_extract {N : ℕ} (c : Configuration N) :
    assemble (c.head - 2) c.tape (extract c) = c := by
  cases c with
  | mk state head tape =>
    simp only [assemble, extract]
    congr 1
    · omega
    · funext p
      split
      · rename_i h
        congr 1
        omega
      · rfl

def renameLocal {N K : ℕ} (f : Fin N → Fin K)
    (c : LocalConfiguration N) : LocalConfiguration K :=
  { state := c.state.map f, head := c.head, tape := c.tape }

theorem assemble_rename {N K : ℕ} (f : Fin N → Fin K)
    (origin : ℤ) (background : ℤ → Bool) (c : LocalConfiguration N) :
    assemble origin background (renameLocal f c) =
      renameConfiguration f (assemble origin background c) := rfl

/-- This transfers a finite-window calculation to an arbitrary infinite tape.
The length bound is exactly what guarantees that omitted cells are never read. -/
theorem expansion_of_local_check {N K : ℕ} (A : Machine N) (B : Machine K)
    (embedding : Fin K → Fin N) (length : Option (Fin K) → Bool → ℕ)
    (bounded : ∀ q b, length q b ≤ 3)
    (checked : ∀ c : LocalConfiguration K, c.head = 2 →
      localAdvance A (renameLocal embedding c) (length c.state (localRead c)) =
        renameLocal embedding (localStep B c)) :
    ∀ c : Configuration K,
      advance A (renameConfiguration embedding c) (length c.state (c.tape c.head)) =
        renameConfiguration embedding (step B c) := by
  intro c
  let w := extract c
  have hw : w.head = 2 := rfl
  have hr : localRead w = c.tape c.head := by
    simp [w, extract, localRead]
  have hc := checked w hw
  have hs := assemble_step B (c.head - 2) c.tape w (by simp [hw])
  have ha := assemble_advance A (c.head - 2) c.tape
    (renameLocal embedding w) (by exact hw)
    (length w.state (localRead w)) (bounded _ _)
  rw [hc, assemble_rename] at ha
  rw [assemble_rename, assemble_extract] at ha
  rw [assemble_extract] at hs
  rw [← hs] at ha
  rw [hr] at ha
  exact ha

end RiemannMachineVerification
