import RiemannMachineVerification.WindowInvariant
import RiemannMachineVerification.Invariant0
import RiemannMachineVerification.Invariant1
import RiemannMachineVerification.Invariant2
import RiemannMachineVerification.Invariant3

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

theorem initial_mask_trivial : ∀ q b, inv0_before q b = true := by
  intro q b
  fin_cases q <;> cases b <;> rfl

theorem read_mask0_verified : ∀ t, RespectsReadMask inv0_after (run machine342 t) :=
  certify_read_mask machine342 inv0_before inv0_after inv0_predicate
    inv0_initial (by
      intro q t b hb ht hp
      have h := inv0_closed q t b hb ht hp
      cases he : (machine342.transition q b).next <;> simpa only [he] using h)
    inv0_read_mask
    (fun _ q _ => initial_mask_trivial q _)

theorem read_mask1_verified : ∀ t, RespectsReadMask inv1_after (run machine342 t) :=
  certify_read_mask machine342 inv1_before inv1_after inv1_predicate
    inv1_initial (by
      intro q t b hb ht hp
      have h := inv1_closed q t b hb ht hp
      cases he : (machine342.transition q b).next <;> simpa only [he] using h)
    inv1_read_mask read_mask0_verified

theorem read_mask2_verified : ∀ t, RespectsReadMask inv2_after (run machine342 t) :=
  certify_read_mask machine342 inv2_before inv2_after inv2_predicate
    inv2_initial (by
      intro q t b hb ht hp
      have h := inv2_closed q t b hb ht hp
      cases he : (machine342.transition q b).next <;> simpa only [he] using h)
    inv2_read_mask read_mask1_verified

theorem read_mask_verified : ∀ t, RespectsReadMask inv3_after (run machine342 t) :=
  certify_read_mask machine342 inv3_before inv3_after inv3_predicate
    inv3_initial (by
      intro q t b hb ht hp
      have h := inv3_closed q t b hb ht hp
      cases he : (machine342.transition q b).next <;> simpa only [he] using h)
    inv3_read_mask read_mask2_verified

end RiemannMachineVerification
