import Mathlib.Data.Rat.Lemmas
import Mathlib.Data.Nat.GCD.Basic

namespace RiemannMachineVerification

def harmonic : ℕ → ℚ
  | 0 => 0
  | n + 1 => harmonic n + 1 / ((n : ℚ) + 1)

def lcmUpto : ℕ → ℕ
  | 0 => 1
  | n + 1 => Nat.lcm (lcmUpto n) (n + 1)

def Counterexample (n : ℕ) : Prop :=
  254 ≤ n ∧
    (max (harmonic (lcmUpto n) - (n : ℚ)) 0) ^ 2 >
      (n : ℚ) * (harmonic n) ^ 4

end RiemannMachineVerification
