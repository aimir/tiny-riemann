import RiemannMachineVerification.Registers.Arithmetic.Program
import RiemannMachineVerification.Registers.ArithmeticModel
namespace RiemannMachineVerification

def sourceValues (s : Registers) (a b c : ℕ) (r : RegisterIndex) : ℕ :=
  match r.val with
  | 0 => s.x | 1 => s.lcm | 2 => s.num | 3 => s.denom | 4 => s.i | 5 => s.c
  | 6 => a | 7 => b | _ => c

def sourceConfiguration (pc : ProgramCounter) (s : Registers) (a b c capacity : ℕ) :
    RegisterConfiguration := ⟨some pc, sourceValues s a b c, capacity⟩

structure AccumulatorLoop (program : ProgramCounter → RegisterInstruction)
    (entry exit : ProgramCounter) (s : Registers) (capacity operand : ℕ) : Prop where
  zero : ∀ a, RExec program (sourceConfiguration entry s a 0 0 capacity)
    (sourceConfiguration exit s a 0 0 capacity)
  positive : ∀ a n, RExec program (sourceConfiguration entry s a (n + 1) 0 capacity)
    (sourceConfiguration entry s (a + operand) n 0 capacity)

/-- [proof-guide] The accumulator loop implements its arithmetic recurrence.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem AccumulatorLoop.correct {program : ProgramCounter → RegisterInstruction}
    {entry exit : ProgramCounter} {s : Registers} {capacity operand : ℕ}
    (site : AccumulatorLoop program entry exit s capacity operand) (a n : ℕ) :
    RExec program (sourceConfiguration entry s a n 0 capacity)
      (sourceConfiguration exit s (a + n * operand) 0 0 capacity) := by
  induction n generalizing a with
  | zero => simpa using site.zero a
  | succ n ih =>
    have he : a + (n + 1) * operand = (a + operand) + n * operand := by ring
    rw [he]
    exact (site.positive a n).trans (ih (a + operand))

end RiemannMachineVerification
