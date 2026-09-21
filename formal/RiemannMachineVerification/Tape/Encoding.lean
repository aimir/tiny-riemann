import RiemannMachineVerification.Generated.Dispatch.Data
import RiemannMachineVerification.Tape.Core.Word
namespace RiemannMachineVerification.Implementation

/-- The register storage begins at position 13; positions 11 and 12 form the fence. -/
def registerBackground (values : List ℕ) (p : ℤ) : Bool :=
  if 13 ≤ p then registerStream values (p - 13).toNat else false

def backendConfig (state : Option (Fin 389)) (head : ℤ) (pc : ProgramCounter)
    (values : List ℕ) : Configuration 389 :=
  FiniteWindow.assemble 0 (registerBackground values) ⟨state, head, pcPrefix pc⟩

def encodedRegisterZipper (pc : ProgramCounter) (values : List ℕ) : Zipper 389 :=
  zipperOf (backendConfig (some machine389.entry) 0 pc values)

def pcLeft (pc : ProgramCounter) : BitStream :=
  (zipperOf (backendConfig (some machine389.entry) 11 pc [])).left

/-- [proof-guide] The register portion of the full tape encoding has the required unary stream shape.
Proof: Combines `zipper_ext` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem backend_register_area (state : Option (Fin 389)) (pc : ProgramCounter)
    (values : List ℕ) :
    zipperOf (backendConfig state 11 pc values) =
      ⟨state, pcLeft pc, streamCons false (streamCons false (registerStream values))⟩ := by
  apply zipper_ext
  · rfl
  · funext n
    simp only [zipperOf, backendConfig, pcLeft, FiniteWindow.assemble, zero_add, sub_zero]
    have h : ¬ (13 : ℤ) ≤ 11 - ((n : ℤ) + 1) := by omega
    simp [registerBackground, h]
  · funext n
    cases n with
    | zero => simp [zipperOf, backendConfig, FiniteWindow.assemble, pcPrefix, streamCons]
    | succ n =>
      cases n with
      | zero => simp [zipperOf, backendConfig, FiniteWindow.assemble, registerBackground, streamCons]
      | succ n =>
        simp only [zipperOf, backendConfig, FiniteWindow.assemble, zero_add, sub_zero, streamCons]
        have hn : ¬ (0 ≤ (11 : ℤ) + (n + 1 + 1 : ℕ) ∧ (11 : ℤ) + (n + 1 + 1 : ℕ) < 12) := by omega
        have hp : (13 : ℤ) ≤ 11 + (n + 1 + 1 : ℕ) := by omega
        simp only [Nat.cast_ofNat, hn, ↓reduceDIte, registerBackground, hp, ↓reduceIte]
        congr 1
        omega

/-- [proof-guide] Moving the head left gives the corresponding change of zipper coordinates.
Proof: Combines `zipper_ext` with the displayed local equations.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem zipperOf_move_left {N} (c : Configuration N) :
    zipperOf {c with head := c.head - 1} =
      ⟨c.state, streamTail (zipperOf c).left,
        streamCons ((zipperOf c).left 0) (zipperOf c).right⟩ := by
  apply zipper_ext
  · rfl
  · funext n
    simp only [zipperOf, streamTail]
    congr 1; omega
  · funext n
    cases n with
    | zero => simp [zipperOf, streamCons]
    | succ n =>
      simp only [zipperOf, streamCons]
      congr 1; omega

/-- [proof-guide] The counter portion of the full encoding has the required bit-stream shape.
Proof: Rewrites the defining equations and the cited arithmetic or execution facts.
Role: Connects operations on the binary tape to unbounded natural-valued register execution. -/
theorem backend_counter_area (state : Option (Fin 389)) (pc : ProgramCounter)
    (values : List ℕ) :
    zipperOf (backendConfig state 10 pc values) =
      ⟨state, streamTail (pcLeft pc), streamCons (pcLeft pc 0)
        (streamCons false (streamCons false (registerStream values)))⟩ := by
  have h := zipperOf_move_left (backendConfig state 11 pc values)
  rw [backend_register_area] at h
  exact h

end RiemannMachineVerification.Implementation
