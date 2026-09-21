import RiemannMachineVerification.Tape.Core.Zipper
namespace RiemannMachineVerification

def ZExec {N} (M : Machine N) (a b : Zipper N) : Prop :=
  ∃ t, trajectory (zipperStep M) a t = b

/-- [proof-guide] Zero steps give a finite execution from a configuration to itself.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem ZExec.refl {N} (M : Machine N) (a : Zipper N) : ZExec M a a := ⟨0, rfl⟩

/-- [proof-guide] Two consecutive finite executions compose into one.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem ZExec.trans {N} {M : Machine N} {a b c : Zipper N}
    (hab : ZExec M a b) (hbc : ZExec M b c) : ZExec M a c := by
  obtain ⟨i, hi⟩ := hab
  obtain ⟨j, hj⟩ := hbc
  exact ⟨i + j, by rw [trajectory_add, hi, hj]⟩

/-- [proof-guide] A single verified step gives a finite execution.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem ZExec.single {N} {M : Machine N} {a b : Zipper N}
    (h : zipperStep M a = b) : ZExec M a b := ⟨1, h⟩

/-- [proof-guide] A single initial step can be prepended to a finite execution.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem ZExec.prepend {N} {M : Machine N} {a b c : Zipper N}
    (h : zipperStep M a = b) (tail : ZExec M b c) : ZExec M a c :=
  (ZExec.single h).trans tail

/-- [proof-guide] A right-moving transition has the stated effect on the two zipper streams.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem zipper_right {N} {M : Machine N} (q q' : Fin N) (b w : Bool)
    (h : M.transition q b = ⟨w, true, some q'⟩) (left right : BitStream) :
    zipperStep M ⟨some q, left, streamCons b right⟩ =
      ⟨some q', streamCons w left, right⟩ := by
  simp only [zipperStep, streamCons, h, ↓reduceIte]
  rfl

/-- [proof-guide] A left-moving transition has the stated effect on the two zipper streams.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem zipper_left {N} {M : Machine N} (q q' : Fin N) (a b w : Bool)
    (h : M.transition q b = ⟨w, false, some q'⟩) (left right : BitStream) :
    zipperStep M ⟨some q, streamCons a left, streamCons b right⟩ =
      ⟨some q', left, streamCons a (streamCons w right)⟩ := by
  simp only [zipperStep, streamCons, h, Bool.false_eq_true, ↓reduceIte]
  rfl

/-- [proof-guide] A stream is reconstructed from its leading cell and tail.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem streamCons_tail (s : BitStream) : streamCons (s 0) (streamTail s) = s := by
  funext n; cases n <;> rfl

def zeros : BitStream := fun _ => false

/-- [proof-guide] Reading a prefixed stream at zero returns the prefix cell.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem streamCons_zero : streamCons false zeros = zeros := by
  funext n; cases n <;> rfl

/-- [proof-guide] Removing the first cell from a prefixed stream recovers its tail.
Proof: Definitional reduction in the Lean kernel.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem streamTail_cons (b : Bool) (s : BitStream) : streamTail (streamCons b s) = s := rfl

/-- [proof-guide] An empty prefix leaves a stream unchanged.
Proof: Definitional reduction in the Lean kernel.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem streamPrefix_nil (s : BitStream) : streamPrefix [] s = s := rfl

/-- [proof-guide] A nonempty prefix decomposes into its leading cell and remaining prefix.
Proof: Definitional reduction in the Lean kernel.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem streamPrefix_cons (b : Bool) (bits : List Bool) (s : BitStream) :
    streamPrefix (b :: bits) s = streamCons b (streamPrefix bits s) := rfl

/-- [proof-guide] The right-moving scan traverses a finite block of unary marks.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem scan_ones_right {N} (M : Machine N) (q : Fin N)
    (h : M.transition q true = ⟨true, true, some q⟩) (n : ℕ) (left right : BitStream) :
    ZExec M ⟨some q, left, streamPrefix (List.replicate n true) right⟩
      ⟨some q, streamPrefix (List.replicate n true) left, right⟩ := by
  induction n generalizing left with
  | zero => exact .refl _ _
  | succ n ih =>
    apply ZExec.prepend (zipper_right q q true true h left _)
    convert ih (streamCons true left) using 1
    congr 1
    apply zipper_ext <;> try rfl
    rw [List.replicate_succ', streamPrefix_append]
    rfl

end RiemannMachineVerification
