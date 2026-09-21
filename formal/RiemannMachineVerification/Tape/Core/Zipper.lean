import RiemannMachineVerification.Common.Execution
import RiemannMachineVerification.Common.Expansion
namespace RiemannMachineVerification

abbrev BitStream := ℕ → Bool

def streamCons (b : Bool) (s : BitStream) : BitStream
  | 0 => b
  | n + 1 => s n

def streamTail (s : BitStream) : BitStream := fun n => s (n + 1)

def streamPrefix (bits : List Bool) (s : BitStream) : BitStream :=
  bits.foldr streamCons s

/-- [proof-guide] Prefixing twice is equivalent to prefixing by the appended lists.
Proof: Combines `two` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem streamPrefix_append (a b : List Bool) (s : BitStream) :
    streamPrefix (a ++ b) s = streamPrefix a (streamPrefix b s) := by
  simp [streamPrefix, List.foldr_append]

/-- An exact two-sided infinite tape, viewed relative to the head. The left
stream starts immediately left of the head; the right stream includes it. -/
structure Zipper (N : ℕ) where
  state : Option (Fin N)
  left : BitStream
  right : BitStream

def zipperStep {N} (M : Machine N) (z : Zipper N) : Zipper N :=
  match z.state with
  | none => z
  | some q =>
    let ins := M.transition q (z.right 0)
    if ins.right then
      ⟨ins.next, streamCons ins.write z.left, streamTail z.right⟩
    else
      ⟨ins.next, streamTail z.left,
        streamCons (z.left 0) (streamCons ins.write (streamTail z.right))⟩

def zipperOf {N} (c : Configuration N) : Zipper N :=
  ⟨c.state, fun n => c.tape (c.head - ((n : ℤ) + 1)),
    fun n => c.tape (c.head + (n : ℤ))⟩

/-- [proof-guide] Zippers agree when their state and two tape streams agree.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem zipper_ext {N} {a b : Zipper N} (hs : a.state = b.state)
    (hl : a.left = b.left) (hr : a.right = b.right) : a = b := by
  cases a; cases b; simp_all

/-- [proof-guide] Converting a tape configuration to a zipper commutes with a machine step.
Proof: Combines `zipper_ext` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem zipperOf_step {N} (M : Machine N) (c : Configuration N) :
    zipperOf (step M c) = zipperStep M (zipperOf c) := by
  cases hs : c.state with
  | none => simp [step, zipperStep, zipperOf, hs]
  | some q =>
    cases hd : (M.transition q (c.tape c.head)).right
    · apply zipper_ext
      · simp [zipperOf, step, zipperStep, hs, hd]
      · funext n
        simp only [zipperOf, step, zipperStep, hs, Nat.cast_zero, Int.add_zero, hd, Bool.false_eq_true,
          ↓reduceIte, streamTail]
        have hn : c.head - 1 - ((n : ℤ) + 1) ≠ c.head := by omega
        simp only [hn, ↓reduceIte, Nat.cast_add, Nat.cast_one]
        congr 1; omega
      · funext n
        cases n with
        | zero =>
          simp [zipperOf, step, zipperStep, hs, hd, streamCons, show c.head - 1 ≠ c.head by omega]
        | succ n =>
          cases n with
          | zero => simp [zipperOf, step, zipperStep, hs, hd, streamCons]
          | succ n =>
            simp only [zipperOf, step, zipperStep, hs, Nat.cast_zero, Int.add_zero, hd, Bool.false_eq_true,
              ↓reduceIte, streamCons, streamTail]
            have hn : c.head - 1 + ((n + 1 + 1 : ℕ) : ℤ) ≠ c.head := by omega
            simp only [hn, ↓reduceIte]
            congr 1; omega
    · apply zipper_ext
      · simp [zipperOf, step, zipperStep, hs, hd]
      · funext n
        cases n with
        | zero => simp [zipperOf, step, zipperStep, hs, hd, streamCons]
        | succ n =>
          simp only [zipperOf, step, zipperStep, hs, Nat.cast_zero, Int.add_zero, hd, ↓reduceIte, streamCons]
          have hn : c.head + 1 - (((n + 1 : ℕ) : ℤ) + 1) ≠ c.head := by omega
          simp only [hn, ↓reduceIte]
          congr 1; omega
      · funext n
        simp only [zipperOf, step, zipperStep, hs, Nat.cast_zero, Int.add_zero, hd, ↓reduceIte, streamTail]
        have hn : c.head + 1 + (n : ℤ) ≠ c.head := by omega
        simp only [hn, ↓reduceIte]
        congr 1; omega

/-- [proof-guide] Converting to a zipper commutes with a finite machine execution.
Proof: Induction on `t`, using the displayed step equations and auxiliary lemmas.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem zipperOf_advance {N} (M : Machine N) (c : Configuration N) (t : ℕ) :
    zipperOf (advance M c t) = trajectory (zipperStep M) (zipperOf c) t := by
  induction t with
  | zero => rfl
  | succ t ih => rw [advance, zipperOf_step, ih]; rfl

/-- [proof-guide] Blank-tape halting is equivalent in the absolute-coordinate and zipper representations.
Proof: Combines `run_add` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem halts_iff_zipper {N} (M : Machine N) :
    HaltsBlank M ↔ Eventually (zipperStep M) (fun z => z.state = none)
      ⟨some M.entry, fun _ => false, fun _ => false⟩ := by
  have h : ∀ t, run M t = advance M (run M 0) t :=
    fun t => by simpa only [Nat.zero_add] using run_add M 0 t
  constructor
  · rintro ⟨t, ht⟩
    refine ⟨t, ?_⟩
    rw [h t] at ht
    change (zipperOf (advance M (run M 0) t)).state = none at ht
    rw [zipperOf_advance] at ht
    exact ht
  · rintro ⟨t, ht⟩
    refine ⟨t, ?_⟩
    rw [h t]
    change (zipperOf (advance M (run M 0) t)).state = none
    rw [zipperOf_advance]
    exact ht

end RiemannMachineVerification
