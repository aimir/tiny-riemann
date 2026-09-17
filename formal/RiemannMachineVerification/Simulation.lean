import RiemannMachineVerification.Semantics
import Mathlib.Tactic

namespace RiemannMachineVerification

theorem run_invariant {N : ℕ} (M : Machine N)
    (I : Configuration N → Prop)
    (initial : I (run M 0))
    (preserved : ∀ c, I c → I (step M c)) :
    ∀ t, I (run M t) := by
  intro t
  induction t with
  | zero => exact initial
  | succ t ih => exact preserved _ ih

/-- A relation preserved by each step and reflecting halting gives both
directions of blank-tape halting equivalence. No termination premise is hidden. -/
theorem halts_iff_of_simulation {N K : ℕ} (A : Machine N) (B : Machine K)
    (R : Configuration N → Configuration K → Prop)
    (initial : R (run A 0) (run B 0))
    (preserved : ∀ c d, R c d → R (step A c) (step B d))
    (halting : ∀ c d, R c d → (c.state = none ↔ d.state = none)) :
    HaltsBlank A ↔ HaltsBlank B := by
  have related : ∀ t, R (run A t) (run B t) := by
    intro t
    induction t with
    | zero => exact initial
    | succ t ih => exact preserved _ _ ih
  constructor
  · rintro ⟨t, ht⟩
    exact ⟨t, (halting _ _ (related t)).mp ht⟩
  · rintro ⟨t, ht⟩
    exact ⟨t, (halting _ _ (related t)).mpr ht⟩

def renameConfiguration {N K : ℕ} (f : Fin N → Fin K)
    (c : Configuration N) : Configuration K :=
  { state := c.state.map f, head := c.head, tape := c.tape }

def renameInstruction {N K : ℕ} (f : Fin N → Fin K)
    (i : Instruction N) : Instruction K :=
  { write := i.write, right := i.right, next := i.next.map f }

theorem rename_halts {N K : ℕ} (f : Fin N → Fin K)
    (c : Configuration N) :
    (renameConfiguration f c).state = none ↔ c.state = none := by
  cases h : c.state <;> simp [renameConfiguration, h]

theorem rename_step {N K : ℕ} (A : Machine N) (B : Machine K)
    (f : Fin N → Fin K) (c : Configuration N)
    (compatible : ∀ q, c.state = some q →
      B.transition (f q) (c.tape c.head) =
        renameInstruction f (A.transition q (c.tape c.head))) :
    step B (renameConfiguration f c) = renameConfiguration f (step A c) := by
  cases h : c.state with
  | none => simp [step, renameConfiguration, h]
  | some q =>
    simp [step, renameConfiguration, h, compatible q h, renameInstruction]

/-- State merging is allowed to use an invariant: transitions outside it need
not agree. The map takes ordinary states to ordinary states, so it cannot hide
or invent halting. -/
theorem halts_iff_of_invariant_quotient {N K : ℕ}
    (A : Machine N) (B : Machine K) (f : Fin N → Fin K)
    (I : Configuration N → Prop)
    (initial : I (run A 0))
    (preserved : ∀ c, I c → I (step A c))
    (entry : f A.entry = B.entry)
    (compatible : ∀ c, I c → ∀ q, c.state = some q →
      B.transition (f q) (c.tape c.head) =
        renameInstruction f (A.transition q (c.tape c.head))) :
    HaltsBlank A ↔ HaltsBlank B := by
  apply halts_iff_of_simulation A B
    (fun c d => I c ∧ d = renameConfiguration f c)
  · constructor
    · exact initial
    · simp [run, renameConfiguration, entry]
  · rintro c d ⟨hc, rfl⟩
    exact ⟨preserved c hc, rename_step A B f c (compatible c hc)⟩
  · rintro c d ⟨_, rfl⟩
    exact (rename_halts f c).symm

theorem step_halted {N : ℕ} (M : Machine N) (c : Configuration N)
    (h : c.state = none) : step M c = c := by
  simp [step, h]

theorem run_halted_succ {N : ℕ} (M : Machine N) (t : ℕ)
    (h : (run M t).state = none) : (run M (t + 1)).state = none := by
  simpa only [run, step_halted M _ h] using h

theorem run_halted_later {N : ℕ} (M : Machine N) {s t : ℕ}
    (h : (run M s).state = none) (hst : s ≤ t) :
    (run M t).state = none := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hst
  clear hst
  induction d with
  | zero => simpa using h
  | succ d ih => exact run_halted_succ M (s + d) ih

/-- Sampling at an unbounded increasing clock preserves halting. The lower
bound on the clock prevents infinitely many target steps from representing
only a finite prefix of the source execution. -/
theorem halts_iff_of_clock {N K : ℕ} (A : Machine N) (B : Machine K)
    (clock : ℕ → ℕ)
    (progress : ∀ t, t ≤ clock t)
    (halting : ∀ t, (run A (clock t)).state = none ↔ (run B t).state = none) :
    HaltsBlank A ↔ HaltsBlank B := by
  constructor
  · rintro ⟨t, ht⟩
    exact ⟨t, (halting t).mp (run_halted_later A ht (progress t))⟩
  · rintro ⟨t, ht⟩
    exact ⟨clock t, (halting t).mpr ht⟩

end RiemannMachineVerification
