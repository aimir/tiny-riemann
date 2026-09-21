import Validation.Table295.DispatcherData
import RiemannMachineVerification.Tape.Core.Word
namespace RiemannMachineVerification.Reallocated

/-- The register storage begins at position 14; positions 12 and 13 form the fence. -/
def registerBackground (values : List ℕ) (p : ℤ) : Bool :=
  if 14 ≤ p then registerStream values (p - 14).toNat else false

def backendConfig (state : Option (Fin 381)) (head : ℤ) (pc : ProgramCounter)
    (values : List ℕ) : Configuration 381 :=
  FiniteWindow.assemble 0 (registerBackground values) ⟨state, head, pcPrefix pc⟩

def encodedRegisterZipper (pc : ProgramCounter) (values : List ℕ) : Zipper 381 :=
  zipperOf (backendConfig (some machine381.entry) 0 pc values)

def pcLeft (pc : ProgramCounter) : BitStream :=
  (zipperOf (backendConfig (some machine381.entry) 12 pc [])).left

/-- [proof-guide] The register portion of the full tape encoding has the required unary stream shape.
Proof: Combines `zipper_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem backend_register_area (state : Option (Fin 381)) (pc : ProgramCounter)
    (values : List ℕ) :
    zipperOf (backendConfig state 12 pc values) =
      ⟨state, pcLeft pc, streamCons false (streamCons false (registerStream values))⟩ := by
  apply zipper_ext
  · rfl
  · funext n
    simp only [zipperOf, backendConfig, pcLeft, FiniteWindow.assemble, zero_add, sub_zero]
    have h : ¬ (14 : ℤ) ≤ 12 - ((n : ℤ) + 1) := by omega
    simp [registerBackground, h]
  · funext n
    cases n with
    | zero => simp [zipperOf, backendConfig, FiniteWindow.assemble, pcPrefix, streamCons]
    | succ n =>
      cases n with
      | zero => simp [zipperOf, backendConfig, FiniteWindow.assemble, registerBackground, streamCons]
      | succ n =>
        simp only [zipperOf, backendConfig, FiniteWindow.assemble, zero_add, sub_zero, streamCons]
        have hn : ¬ (0 ≤ (12 : ℤ) + (n + 1 + 1 : ℕ) ∧ (12 : ℤ) + (n + 1 + 1 : ℕ) < 13) := by omega
        have hp : (14 : ℤ) ≤ 12 + (n + 1 + 1 : ℕ) := by omega
        simp only [Nat.cast_ofNat, hn, ↓reduceDIte, registerBackground, hp, ↓reduceIte]
        congr 1
        omega

/-- [proof-guide] Moving the head left gives the corresponding change of zipper coordinates.
Proof: Combines `zipper_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
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
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem backend_counter_area (state : Option (Fin 381)) (pc : ProgramCounter)
    (values : List ℕ) :
    zipperOf (backendConfig state 11 pc values) =
      ⟨state, streamTail (pcLeft pc), streamCons (pcLeft pc 0)
        (streamCons false (streamCons false (registerStream values)))⟩ := by
  have h := zipperOf_move_left (backendConfig state 12 pc values)
  rw [backend_register_area] at h
  exact h

end RiemannMachineVerification.Reallocated
