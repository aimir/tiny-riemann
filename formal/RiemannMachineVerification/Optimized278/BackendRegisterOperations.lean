import RiemannMachineVerification.Optimized278.PhysicalRegisters
import RiemannMachineVerification.Optimized278.BackendIncrement
import RiemannMachineVerification.Optimized278.BackendDecrement
import RiemannMachineVerification.Optimized278.BackendInitialize

namespace RiemannMachineVerification.Optimized278

theorem backend_increment_encoded (capacity : ℕ) (values : RegisterIndex → ℕ)
    (r : RegisterIndex) (hr : (registerSlot r).val < capacity) (pc : ProgramCounter) :
    ZExec machine389
      (zipperOf (backendConfig (some (backendIncrement r)) 11 pc (encodedStorage capacity values)))
      (encodedRegisterZipper (counterNext pc false)
        (encodedStorage capacity (Function.update values r (values r + 1)))) := by
  have hlen : ((encodedStorage capacity values).take (registerSlot r).val).length =
      (registerSlot r).val := by simp [Nat.min_eq_left (Nat.le_of_lt hr)]
  have hbound : ((encodedStorage capacity values).take (registerSlot r).val).length ≤ 8 := by
    rw [hlen]; exact Nat.le_pred_of_lt (registerSlot r).isLt
  have h := backend_increment ((encodedStorage capacity values).take (registerSlot r).val)
    ((encodedStorage capacity values).drop ((registerSlot r).val + 1)) (values r) hbound pc
  rw [hlen, ← backendIncrement_slot, ← encodedStorage_split capacity values r hr] at h
  rw [encodedStorage_update capacity values r _ hr, List.set_eq_take_append_cons_drop]
  simpa only [encodedStorage_length, hr, ↓reduceIte] using h

theorem backend_decrement_encoded (capacity : ℕ) (values : RegisterIndex → ℕ)
    (r : RegisterIndex) (hr : (registerSlot r).val < capacity) (pc : ProgramCounter) :
    ZExec machine389
      (zipperOf (backendConfig (some (backendDecrement r)) 11 pc (encodedStorage capacity values)))
      (encodedRegisterZipper (counterNext pc (if values r = 0 then false else true))
        (encodedStorage capacity (Function.update values r (values r - 1)))) := by
  have hlen : ((encodedStorage capacity values).take (registerSlot r).val).length =
      (registerSlot r).val := by simp [Nat.min_eq_left (Nat.le_of_lt hr)]
  have hbound : ((encodedStorage capacity values).take (registerSlot r).val).length ≤ 8 := by
    rw [hlen]; exact Nat.le_pred_of_lt (registerSlot r).isLt
  rw [backendDecrement_slot, encodedStorage_update capacity values r _ hr,
    List.set_eq_take_append_cons_drop]
  simp only [encodedStorage_length, hr, ↓reduceIte]
  conv_lhs => rw [encodedStorage_split capacity values r hr]
  cases hv : values r with
  | zero =>
    simpa only [hlen, Nat.zero_sub, ↓reduceIte] using
      backend_decrement_zero ((encodedStorage capacity values).take (registerSlot r).val)
        ((encodedStorage capacity values).drop ((registerSlot r).val + 1)) hbound pc
  | succ v =>
    simpa only [hlen, Nat.succ_eq_add_one, Nat.add_sub_cancel, Nat.succ_ne_zero, ↓reduceIte] using
      backend_decrement_positive ((encodedStorage capacity values).take (registerSlot r).val)
        ((encodedStorage capacity values).drop ((registerSlot r).val + 1)) v hbound pc

end RiemannMachineVerification.Optimized278
