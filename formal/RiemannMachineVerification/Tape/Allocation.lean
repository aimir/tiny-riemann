import RiemannMachineVerification.Tape.Selectors
import RiemannMachineVerification.Generated.Dispatch.Data
namespace RiemannMachineVerification.Implementation

/-- Physical tape allocation order differs from the source register order. -/
def registerSlot (r : RegisterIndex) : Fin 9 :=
  match r.val with
  | 0 => ⟨1, by decide⟩
  | 1 => ⟨0, by decide⟩
  | 2 => ⟨5, by decide⟩
  | 3 => ⟨6, by decide⟩
  | 4 => ⟨2, by decide⟩
  | 5 => ⟨7, by decide⟩
  | 6 => ⟨3, by decide⟩
  | 7 => ⟨4, by decide⟩
  | _ => ⟨8, by decide⟩

def slotRegister (r : Fin 9) : RegisterIndex :=
  match r.val with
  | 0 => ⟨1, by decide⟩
  | 1 => ⟨0, by decide⟩
  | 2 => ⟨4, by decide⟩
  | 3 => ⟨6, by decide⟩
  | 4 => ⟨7, by decide⟩
  | 5 => ⟨2, by decide⟩
  | 6 => ⟨3, by decide⟩
  | 7 => ⟨5, by decide⟩
  | _ => ⟨8, by decide⟩

/-- [proof-guide] Converting a logical register to a physical slot and back is the identity.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem slotRegister_registerSlot (r : RegisterIndex) : slotRegister (registerSlot r) = r := by
  fin_cases r <;> rfl

/-- [proof-guide] Converting a physical slot to a logical register and back is the identity.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem registerSlot_slotRegister (r : Fin 9) : registerSlot (slotRegister r) = r := by
  fin_cases r <;> rfl

/-- [proof-guide] The increment entry selected by the logical register matches its physical slot.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem backendIncrement_slot (r : RegisterIndex) :
    backendIncrement r = incrementSelector ((registerSlot r).val + 2) := by
  fin_cases r <;> rfl

/-- [proof-guide] The decrement entry selected by the logical register matches its physical slot.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem backendDecrement_slot (r : RegisterIndex) :
    backendDecrement r = decrementSelector ((registerSlot r).val + 2) := by
  fin_cases r <;> rfl

def physicalValue (values : RegisterIndex → ℕ) (i : ℕ) : ℕ :=
  if h : i < 9 then values (slotRegister ⟨i, h⟩) else 0

def encodedStorage (capacity : ℕ) (values : RegisterIndex → ℕ) : List ℕ :=
  List.ofFn (fun i : Fin capacity => physicalValue values i.val)

@[simp] theorem encodedStorage_length (capacity : ℕ) (values : RegisterIndex → ℕ) :
    (encodedStorage capacity values).length = capacity := List.length_ofFn

/-- [proof-guide] Reading an allocated physical slot returns the corresponding logical value.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem physicalValue_slot (values : RegisterIndex → ℕ) (r : RegisterIndex) :
    physicalValue values (registerSlot r).val = values r := by
  simp only [physicalValue, (registerSlot r).isLt, ↓reduceDIte]
  change values (slotRegister (registerSlot r)) = values r
  rw [slotRegister_registerSlot]

/-- [proof-guide] Equality after inverse allocation is equivalent to equality with the allocated slot.
Proof: Combines `congrArg` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem slotRegister_eq_iff (i : Fin 9) (r : RegisterIndex) :
    slotRegister i = r ↔ i.val = (registerSlot r).val := by
  constructor
  · intro h
    have := congrArg registerSlot h
    simpa only [registerSlot_slotRegister] using congrArg Fin.val this
  · intro h
    have : i = registerSlot r := Fin.ext h
    rw [this, slotRegister_registerSlot]

/-- [proof-guide] Updating a logical register updates exactly its allocated physical slot.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem physicalValue_update (values : RegisterIndex → ℕ) (r : RegisterIndex) (v i : ℕ) :
    physicalValue (Function.update values r v) i =
      if i = (registerSlot r).val then v else physicalValue values i := by
  unfold physicalValue
  by_cases hi : i < 9
  · simp only [hi, ↓reduceDIte, Function.update_apply, slotRegister_eq_iff]
  · have hne : i ≠ (registerSlot r).val := by have := (registerSlot r).isLt; omega
    simp only [hi, hne, ↓reduceDIte, ↓reduceIte]

/-- [proof-guide] Reading encoded storage returns the allocated register value or the specified padding value.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem encodedStorage_get (capacity : ℕ) (values : RegisterIndex → ℕ) (i : ℕ)
    (hi : i < (encodedStorage capacity values).length) :
    (encodedStorage capacity values)[i] = physicalValue values i := by
  simp [encodedStorage]

/-- [proof-guide] Updating encoded storage agrees with updating the corresponding register value.
Proof: Combines `List.ext_getElem` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem encodedStorage_update (capacity : ℕ) (values : RegisterIndex → ℕ)
    (r : RegisterIndex) (v : ℕ) (hr : (registerSlot r).val < capacity) :
    encodedStorage capacity (Function.update values r v) =
      (encodedStorage capacity values).set (registerSlot r).val v := by
  apply List.ext_getElem
  · simp
  · intro i hi hi'
    simp only [encodedStorage_get, List.getElem_set, physicalValue_update, eq_comm]

/-- [proof-guide] Increasing storage capacity appends the required zero slot.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem encodedStorage_append (capacity : ℕ) (values : RegisterIndex → ℕ)
    (hzero : physicalValue values capacity = 0) :
    encodedStorage (capacity + 1) values = encodedStorage capacity values ++ [0] := by
  unfold encodedStorage
  rw [List.ofFn_succ_last]
  change (List.ofFn (fun i : Fin capacity => physicalValue values i.val)) ++
    [physicalValue values capacity] = _
  rw [hzero]

/-- [proof-guide] Encoded storage splits around a selected physical register into its prefix, value and suffix.
Proof: Combines `hr` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem encodedStorage_split (capacity : ℕ) (values : RegisterIndex → ℕ)
    (r : RegisterIndex) (hr : (registerSlot r).val < capacity) :
    encodedStorage capacity values =
      (encodedStorage capacity values).take (registerSlot r).val ++
        values r :: (encodedStorage capacity values).drop ((registerSlot r).val + 1) := by
  have hlt : (registerSlot r).val < (encodedStorage capacity values).length := by simpa using hr
  have hget : (encodedStorage capacity values)[(registerSlot r).val] = values r := by
    rw [encodedStorage_get, physicalValue_slot]
  have h := List.set_eq_take_append_cons_drop (l := encodedStorage capacity values)
    (i := (registerSlot r).val) (a := (encodedStorage capacity values)[(registerSlot r).val])
  rw [List.set_getElem_self] at h
  simpa only [hlt, ↓reduceIte, hget] using h

end RiemannMachineVerification.Implementation
