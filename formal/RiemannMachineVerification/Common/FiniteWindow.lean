import RiemannMachineVerification.Common.Expansion
namespace RiemannMachineVerification.FiniteWindow

structure Config (N W : ℕ) where
  state : Option (Fin N)
  head : ℤ
  tape : Fin W → Bool
  deriving DecidableEq

def read {N W} (c : Config N W) : Bool :=
  if h : 0 ≤ c.head ∧ c.head < W then c.tape ⟨c.head.toNat, by omega⟩ else false

def next {N W} (M : Machine N) (c : Config N W) : Config N W :=
  match c.state with
  | none => c
  | some q =>
    let ins := M.transition q (read c)
    ⟨ins.next, if ins.right then c.head + 1 else c.head - 1,
      fun p => if (p.val : ℤ) = c.head then ins.write else c.tape p⟩

def execute {N W} (M : Machine N) (c : Config N W) : ℕ → Config N W
  | 0 => c
  | t + 1 => next M (execute M c t)

def safe {N W} (M : Machine N) (c : Config N W) : ℕ → Bool
  | 0 => true
  | t + 1 => safe M c t &&
      decide (0 ≤ (execute M c t).head ∧ (execute M c t).head < W)

def assemble {N W} (origin : ℤ) (background : ℤ → Bool)
    (c : Config N W) : Configuration N :=
  ⟨c.state, origin + c.head, fun p =>
    if h : 0 ≤ p - origin ∧ p - origin < W then
      c.tape ⟨(p - origin).toNat, by omega⟩ else background p⟩

/-- [proof-guide] Assembling a finite-window step gives the corresponding step on the whole tape.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the simulation and execution facts used to compose the headline equivalence. -/
theorem assemble_next {N W} (M : Machine N) (origin : ℤ)
    (background : ℤ → Bool) (c : Config N W)
    (bounded : 0 ≤ c.head ∧ c.head < W) :
    step M (assemble origin background c) = assemble origin background (next M c) := by
  cases hs : c.state with
  | none => simp [step, assemble, next, hs]
  | some q =>
    have read_eq : (assemble origin background c).tape
        (assemble origin background c).head = read c := by
      simp [assemble, read, bounded]
    simp only [step, assemble, hs, next]
    change ({ state := (M.transition q _).next, head := _, tape := _ } : Configuration N) = _
    rw [show (if h : 0 ≤ origin + c.head - origin ∧ origin + c.head - origin < W
        then c.tape ⟨(origin + c.head - origin).toNat, by omega⟩
        else background (origin + c.head)) = read c from read_eq]
    congr 1
    · split <;> omega
    · funext p
      by_cases hp : p = origin + c.head
      · subst p; simp [bounded]
      · have hn : p - origin ≠ c.head := by omega
        simp only [hp, ↓reduceIte]
        split
        · rename_i hw; simp [max_eq_left hw.1, hn]
        · rfl

/-- [proof-guide] Finite-window execution agrees with whole-tape execution while the checked window is adequate.
Proof: Induction on `t`, using the displayed step equations and auxiliary lemmas.
Role: Supplies the simulation and execution facts used to compose the headline equivalence. -/
theorem assemble_execute {N W} (M : Machine N) (origin : ℤ)
    (background : ℤ → Bool) (c : Config N W) (t : ℕ)
    (checked : safe M c t = true) :
    advance M (assemble origin background c) t =
      assemble origin background (execute M c t) := by
  induction t with
  | zero => rfl
  | succ t ih =>
    simp only [safe, Bool.and_eq_true, decide_eq_true_eq] at checked
    rw [advance, ih checked.1, assemble_next M origin background _ checked.2]
    rfl

/-- [proof-guide] Finite configurations agree when their state, head and cell values agree.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the simulation and execution facts used to compose the headline equivalence. -/
theorem config_ext {N W} {a b : Config N W} (hs : a.state = b.state)
    (hh : a.head = b.head) (ht : a.tape = b.tape) : a = b := by
  cases a; cases b; simp_all

end RiemannMachineVerification.FiniteWindow
