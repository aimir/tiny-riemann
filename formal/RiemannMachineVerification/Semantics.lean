import Mathlib.Data.Fin.Basic

namespace RiemannMachineVerification

structure Instruction (N : ℕ) where
  write : Bool
  right : Bool
  next : Option (Fin N)
  deriving DecidableEq

structure Machine (N : ℕ) where
  entry : Fin N
  transition : Fin N → Bool → Instruction N

structure Configuration (N : ℕ) where
  state : Option (Fin N)
  head : ℤ
  tape : ℤ → Bool

def step {N : ℕ} (M : Machine N)
    (c : Configuration N) : Configuration N :=
  match c.state with
  | none => c
  | some q =>
      let ins := M.transition q (c.tape c.head)
      {
        state := ins.next
        head := if ins.right then c.head + 1 else c.head - 1
        tape := fun p =>
          if p = c.head then ins.write else c.tape p
      }

def run {N : ℕ} (M : Machine N) : ℕ → Configuration N
  | 0 =>
      {
        state := some M.entry
        head := 0
        tape := fun _ => false
      }
  | t + 1 => step M (run M t)

def HaltsBlank {N : ℕ} (M : Machine N) : Prop :=
  ∃ t : ℕ, (run M t).state = none

end RiemannMachineVerification
