import RiemannMachineVerification.Common.Simulation
namespace RiemannMachineVerification

def advance {N : ℕ} (M : Machine N) (c : Configuration N) : ℕ → Configuration N
  | 0 => c
  | t + 1 => step M (advance M c t)

/-- [proof-guide] Executing two consecutive time intervals equals executing their sum.
Proof: Induction on `t`, using the displayed step equations and auxiliary lemmas.
Role: Supplies the simulation and execution facts used to compose the headline equivalence. -/
theorem run_add {N : ℕ} (M : Machine N) (s t : ℕ) :
    run M (s + t) = advance M (run M s) t := by
  induction t with
  | zero => rfl
  | succ t ih => exact congrArg (step M) ih

def expansionClock {K : ℕ} (B : Machine K)
    (length : Configuration K → ℕ) : ℕ → ℕ
  | 0 => 0
  | t + 1 => expansionClock B length t + length (run B t)

/-- [proof-guide] Positive local expansion lengths produce a clock at least as large as elapsed source time.
Proof: Induction on `t`, using the displayed step equations and auxiliary lemmas.
Role: Supplies the simulation and execution facts used to compose the headline equivalence. -/
theorem expansionClock_progress {K : ℕ} (B : Machine K)
    (length : Configuration K → ℕ) (positive : ∀ c, 0 < length c) :
    ∀ t, t ≤ expansionClock B length t := by
  intro t
  induction t with
  | zero => simp [expansionClock]
  | succ t ih =>
    rw [expansionClock]
    have := positive (run B t)
    omega

/-- Each target step expands into a positive number of source steps. An
embedding maps ordinary states to ordinary states and preserves the full tape.
The source cannot halt unnoticed between checkpoints, since its halted
configuration is absorbing. -/
theorem halts_iff_of_local_expansion {N K : ℕ}
    (A : Machine N) (B : Machine K) (embedding : Fin K → Fin N)
    (length : Configuration K → ℕ)
    (positive : ∀ c, 0 < length c)
    (entry : embedding B.entry = A.entry)
    (expand : ∀ c, advance A (renameConfiguration embedding c) (length c) =
      renameConfiguration embedding (step B c)) :
    HaltsBlank A ↔ HaltsBlank B := by
  have related : ∀ t, run A (expansionClock B length t) =
      renameConfiguration embedding (run B t) := by
    intro t
    induction t with
    | zero => simp [expansionClock, run, renameConfiguration, entry]
    | succ t ih =>
      rw [expansionClock, run_add, ih, expand]
      rfl
  apply halts_iff_of_clock A B (expansionClock B length)
    (expansionClock_progress B length positive)
  intro t
  rw [related t]
  exact rename_halts embedding (run B t)

end RiemannMachineVerification
