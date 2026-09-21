import RiemannMachineVerification.Selector
import RiemannMachineVerification.Optimized278.Machine389

namespace RiemannMachineVerification.Optimized278

def incrementSelector : ℕ → Fin 389
  | 0 => ⟨61, by decide⟩
  | 1 => ⟨192, by decide⟩
  | 2 => ⟨193, by decide⟩
  | 3 => ⟨70, by decide⟩
  | 4 => ⟨194, by decide⟩
  | 5 => ⟨364, by decide⟩
  | 6 => ⟨195, by decide⟩
  | 7 => ⟨196, by decide⟩
  | 8 => ⟨197, by decide⟩
  | 9 => ⟨198, by decide⟩
  | _ => ⟨199, by decide⟩

def decrementSelector : ℕ → Fin 389
  | 0 => ⟨2, by decide⟩
  | 1 => ⟨182, by decide⟩
  | 2 => ⟨183, by decide⟩
  | 3 => ⟨184, by decide⟩
  | 4 => ⟨185, by decide⟩
  | 5 => ⟨186, by decide⟩
  | 6 => ⟨187, by decide⟩
  | 7 => ⟨188, by decide⟩
  | 8 => ⟨189, by decide⟩
  | 9 => ⟨190, by decide⟩
  | _ => ⟨191, by decide⟩

theorem incrementSelector_transition (k : ℕ) (hk : 0 < k) (bound : k ≤ 10) (b : Bool) :
    machine389.transition (incrementSelector k) b =
      ⟨b, true, some (if b then incrementSelector k else incrementSelector (k - 1))⟩ := by
  interval_cases k <;> cases b <;> rfl

theorem decrementSelector_transition (k : ℕ) (hk : 0 < k) (bound : k ≤ 10) (b : Bool) :
    machine389.transition (decrementSelector k) b =
      ⟨b, true, some (if b then decrementSelector k else decrementSelector (k - 1))⟩ := by
  interval_cases k <;> cases b <;> rfl

end RiemannMachineVerification.Optimized278
