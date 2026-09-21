import RiemannMachineVerification.Tape.Core.Selector
import Validation.Table295.CompiledTable
namespace RiemannMachineVerification.Reallocated

def incrementSelector : ℕ → Fin 381
  | 0 => ⟨60, by decide⟩
  | 1 => ⟨193, by decide⟩
  | 2 => ⟨194, by decide⟩
  | 3 => ⟨69, by decide⟩
  | 4 => ⟨195, by decide⟩
  | 5 => ⟨353, by decide⟩
  | 6 => ⟨196, by decide⟩
  | 7 => ⟨197, by decide⟩
  | 8 => ⟨198, by decide⟩
  | 9 => ⟨327, by decide⟩
  | _ => ⟨199, by decide⟩

def decrementSelector : ℕ → Fin 381
  | 0 => ⟨2, by decide⟩
  | 1 => ⟨183, by decide⟩
  | 2 => ⟨184, by decide⟩
  | 3 => ⟨185, by decide⟩
  | 4 => ⟨186, by decide⟩
  | 5 => ⟨187, by decide⟩
  | 6 => ⟨188, by decide⟩
  | 7 => ⟨189, by decide⟩
  | 8 => ⟨190, by decide⟩
  | 9 => ⟨191, by decide⟩
  | _ => ⟨192, by decide⟩

/-- [proof-guide] Each increment-selector transition matches the register-selection pattern.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem incrementSelector_transition (k : ℕ) (hk : 0 < k) (bound : k ≤ 10) (b : Bool) :
    machine381.transition (incrementSelector k) b =
      ⟨b, true, some (if b then incrementSelector k else incrementSelector (k - 1))⟩ := by
  interval_cases k <;> cases b <;> rfl

/-- [proof-guide] Each decrement-selector transition matches the register-selection pattern.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem decrementSelector_transition (k : ℕ) (hk : 0 < k) (bound : k ≤ 10) (b : Bool) :
    machine381.transition (decrementSelector k) b =
      ⟨b, true, some (if b then decrementSelector k else decrementSelector (k - 1))⟩ := by
  interval_cases k <;> cases b <;> rfl

end RiemannMachineVerification.Reallocated
