import RiemannMachineVerification.Registers.Arithmetic.StructuredSemantics
import RiemannMachineVerification.Arithmetic.Harmonic
import RiemannMachineVerification.Arithmetic.Lcm
namespace RiemannMachineVerification

structure Registers where
  x : ℕ
  lcm : ℕ
  num : ℕ
  denom : ℕ
  i : ℕ
  c : ℕ
  deriving DecidableEq

def sequence (commands : List (Command σ)) : Command σ :=
  commands.foldr Command.seq Command.skip

def harmonicBody : Command Registers := sequence [
  .modify (fun s => { s with num := s.i * s.num + s.denom }),
  .modify (fun s => { s with denom := s.i * s.denom }),
  .modify (fun s => { s with i := s.i - 1 })]

def harmonicWhile : Command Registers := .loop (fun s => decide (0 < s.i)) harmonicBody

def harmonicProgram : Command Registers := sequence [
  .modify (fun s => { s with denom := 1 }),
  .modify (fun s => { s with num := 0 }), harmonicWhile]

def squareProgram : Command Registers := sequence [
  .modify (fun s => { s with num := s.num * s.num }),
  .modify (fun s => { s with denom := s.denom * s.denom })]

def divisibilityBody : Command Registers := sequence [
  .branch (fun s => decide (s.denom = 0))
    (.modify (fun s => { s with denom := s.i })) .skip,
  .modify (fun s => { s with denom := s.denom - 1 }),
  .modify (fun s => { s with num := s.num - 1 })]

def divisibilityWhile : Command Registers :=
  .loop (fun s => decide (0 < s.num)) divisibilityBody

def lcmBody : Command Registers := sequence [
  .skip, .skip, -- noop_3(); noop_3();
  .modify (fun s => { s with denom := 0 }),
  .modify (fun s => { s with num := s.lcm }),
  divisibilityWhile,
  .branch (fun s => decide (0 < s.denom))
    (sequence [
      .modify (fun s => { s with i := s.x }),
      .modify (fun s => { s with lcm := s.lcm + 1 })])
    (sequence [.skip, .modify (fun s => { s with i := s.i - 1 })])]

def lcmWhile : Command Registers := .loop (fun s => decide (0 < s.i)) lcmBody

/-- Literal structured translation of `machine/riemann.nql` with procedure calls
inlined. No-op statements remain explicit. The compiler proof is a separate
obligation; these definitions alone do not identify this with a Turing machine. -/
def sourceMain : Command Registers := sequence [
  .modify (fun s => { s with lcm := 1 }),
  .modify (fun s => { s with x := s.x + 1 }),
  .modify (fun s => { s with i := s.x }),
  lcmWhile,
  .skip,
  .modify (fun s => { s with i := s.lcm }),
  harmonicProgram,
  .modify (fun s => { s with i := s.x }),
  .modify (fun s => { s with c := s.denom }),
  .modify (fun s => { s with num := s.num - s.denom * s.x }),
  .modify (fun s => { s with lcm := s.num }),
  harmonicProgram,
  squareProgram,
  .modify (fun s => { s with num := s.c * s.num }),
  .modify (fun s => { s with denom := s.lcm * s.denom }),
  squareProgram,
  .modify (fun s => { s with denom := s.denom - s.num * s.x }),
  .branch (fun s => decide (0 < s.denom)) .halt .skip]

def initialRegisters : Registers := ⟨0, 0, 0, 0, 0, 0⟩

end RiemannMachineVerification
