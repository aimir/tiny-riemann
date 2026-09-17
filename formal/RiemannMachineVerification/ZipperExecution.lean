import RiemannMachineVerification.Zipper

namespace RiemannMachineVerification

def ZExec {N} (M : Machine N) (a b : Zipper N) : Prop :=
  ∃ t, trajectory (zipperStep M) a t = b

theorem ZExec.refl {N} (M : Machine N) (a : Zipper N) : ZExec M a a := ⟨0, rfl⟩

theorem ZExec.trans {N} {M : Machine N} {a b c : Zipper N}
    (hab : ZExec M a b) (hbc : ZExec M b c) : ZExec M a c := by
  obtain ⟨i, hi⟩ := hab
  obtain ⟨j, hj⟩ := hbc
  exact ⟨i + j, by rw [trajectory_add, hi, hj]⟩

theorem ZExec.single {N} {M : Machine N} {a b : Zipper N}
    (h : zipperStep M a = b) : ZExec M a b := ⟨1, h⟩

theorem ZExec.prepend {N} {M : Machine N} {a b c : Zipper N}
    (h : zipperStep M a = b) (tail : ZExec M b c) : ZExec M a c :=
  (ZExec.single h).trans tail

theorem zipper_right {N} {M : Machine N} (q q' : Fin N) (b w : Bool)
    (h : M.transition q b = ⟨w, true, some q'⟩) (left right : BitStream) :
    zipperStep M ⟨some q, left, streamCons b right⟩ =
      ⟨some q', streamCons w left, right⟩ := by
  simp only [zipperStep, streamCons, h, ↓reduceIte]
  rfl

theorem zipper_left {N} {M : Machine N} (q q' : Fin N) (a b w : Bool)
    (h : M.transition q b = ⟨w, false, some q'⟩) (left right : BitStream) :
    zipperStep M ⟨some q, streamCons a left, streamCons b right⟩ =
      ⟨some q', left, streamCons a (streamCons w right)⟩ := by
  simp only [zipperStep, streamCons, h, Bool.false_eq_true, ↓reduceIte]
  rfl

theorem streamCons_tail (s : BitStream) : streamCons (s 0) (streamTail s) = s := by
  funext n; cases n <;> rfl

def zeros : BitStream := fun _ => false

theorem streamCons_zero : streamCons false zeros = zeros := by
  funext n; cases n <;> rfl

theorem streamTail_cons (b : Bool) (s : BitStream) : streamTail (streamCons b s) = s := rfl

theorem streamPrefix_nil (s : BitStream) : streamPrefix [] s = s := rfl

theorem streamPrefix_cons (b : Bool) (bits : List Bool) (s : BitStream) :
    streamPrefix (b :: bits) s = streamCons b (streamPrefix bits s) := rfl

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
