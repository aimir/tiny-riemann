import RiemannMachineVerification.Common.Simulation
namespace RiemannMachineVerification

def shiftInput (right write : Bool) (tape : ℤ → Bool) (p : ℤ) : Bool :=
  let d : ℤ := if right then 1 else -1
  if p + d = 0 then write else tape (p + d)

/-- [proof-guide] Testing a Boolean does not change two identical branches.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
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

/-- [proof-guide] Two matching Boolean branches prove a unary decision-diagram equation.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_unary_split (x a r al ah rl rh : Bool)
    (ha : a = if x then ah else al)
    (hr : r = if x then rh else rl)
    (hlo : rl = al) (hhi : rh = ah) : r = a := by
  cases x <;> simp_all

/-- [proof-guide] Conjunction with false is false.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_and_false_right (a : Bool) : false = (a && false) := by
  cases a <;> rfl

/-- [proof-guide] Conjunction with true preserves the other operand.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_and_true_right (a : Bool) : a = (a && true) := by
  cases a <;> rfl

/-- [proof-guide] Conjoining a Boolean with itself preserves it.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_and_self (a : Bool) : a = (a && a) := by
  cases a <;> rfl

/-- [proof-guide] A Boolean and its negation cannot both hold.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_and_not_self (a : Bool) : false = (a && !a) := by
  cases a <;> rfl

/-- [proof-guide] Conjunction with the negation of true is false.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_and_not_true (a : Bool) : false = (a && !true) := by
  cases a <;> rfl

/-- [proof-guide] Conjunction with the negation of false preserves the other operand.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_and_not_false (a : Bool) : a = (a && !false) := by
  cases a <;> rfl

/-- [proof-guide] A certified decision-diagram transfer preserves truth of the successor predicate.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_transfer_true (old lit cond shifted new : Bool)
    (hold : old = true) (hlit : lit = true)
    (hcond : cond = (old && lit))
    (hempty : false = (cond && !shifted))
    (hshift : shifted = new) : new = true := by
  cases new <;> simp_all

/-- [proof-guide] An empty decision-diagram branch cannot satisfy its predecessor condition.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Supplies the inductive read masks used to justify the 339-to-278-state quotient. -/
theorem bool_empty_elim (old lit cond : Bool)
    (hold : old = true) (hlit : lit = true)
    (hcond : cond = (old && lit)) (hempty : cond = false) : False := by
  simp_all

end RiemannMachineVerification
