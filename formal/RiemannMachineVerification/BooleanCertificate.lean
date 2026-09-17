import RiemannMachineVerification.Simulation

namespace RiemannMachineVerification

def shiftInput (right write : Bool) (tape : ℤ → Bool) (p : ℤ) : Bool :=
  let d : ℤ := if right then 1 else -1
  if p + d = 0 then write else tape (p + d)

theorem bool_select_same (x a : Bool) : a = (if x then a else a) := by
  cases x <;> rfl

/-- Shannon expansion, used by generated decision-diagram certificates. -/
theorem bool_binary_split (op : Bool → Bool → Bool)
    (x a b r al ah bl bh rl rh : Bool)
    (ha : a = if x then ah else al)
    (hb : b = if x then bh else bl)
    (hr : r = if x then rh else rl)
    (hlo : rl = op al bl) (hhi : rh = op ah bh) : r = op a b := by
  cases x <;> simp_all

theorem bool_unary_split (x a r al ah rl rh : Bool)
    (ha : a = if x then ah else al)
    (hr : r = if x then rh else rl)
    (hlo : rl = al) (hhi : rh = ah) : r = a := by
  cases x <;> simp_all

theorem bool_and_false_right (a : Bool) : false = (a && false) := by
  cases a <;> rfl

theorem bool_and_true_right (a : Bool) : a = (a && true) := by
  cases a <;> rfl

theorem bool_and_self (a : Bool) : a = (a && a) := by
  cases a <;> rfl

theorem bool_and_not_self (a : Bool) : false = (a && !a) := by
  cases a <;> rfl

theorem bool_and_not_true (a : Bool) : false = (a && !true) := by
  cases a <;> rfl

theorem bool_and_not_false (a : Bool) : a = (a && !false) := by
  cases a <;> rfl

theorem bool_transfer_true (old lit cond shifted new : Bool)
    (hold : old = true) (hlit : lit = true)
    (hcond : cond = (old && lit))
    (hempty : false = (cond && !shifted))
    (hshift : shifted = new) : new = true := by
  cases new <;> simp_all

theorem bool_empty_elim (old lit cond : Bool)
    (hold : old = true) (hlit : lit = true)
    (hcond : cond = (old && lit)) (hempty : cond = false) : False := by
  simp_all

end RiemannMachineVerification
