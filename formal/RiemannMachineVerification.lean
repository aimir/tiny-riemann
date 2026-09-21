import RiemannMachineVerification.Tape.Correctness
import RiemannMachineVerification.Registers.TransferExpansion
import RiemannMachineVerification.Registers.Refinement
import RiemannMachineVerification.Reduction.ShortPaths
import RiemannMachineVerification.Reduction.Quotient
import RiemannMachineVerification.Registers.Arithmetic.Correctness
namespace RiemannMachineVerification

/-- The 278-state machine halts from the blank tape exactly when the arithmetic
predicate has a witness. Compose the quotient, short-path, tape, transfer and
register-refinement equivalences with arithmetic correctness. This is the public result. -/
theorem machine278_correct :
    HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n :=
  Implementation.machine339_iff_machine278.symm.trans
    (Implementation.machine389_iff_machine339.symm.trans
      (Implementation.machine389_iff_primitive.trans
        (Implementation.primitive_iff_macro.trans
          (Implementation.implementation_iff_arithmetic.trans arithmetic_program_correct))))

/-! BEGIN CHECKED SPECIFICATION
## Meaning of the headline

The literal 278-state binary machine halts from its all-zero tape if and only if
some natural number at least 254 satisfies the exact rational inequality below.
Halting is existential over all finite running times; the tape is indexed by
all integers. The ordinary-state count excludes the separate halted state.

The following are exact excerpts of the imported canonical definitions, checked
by `python3 tools/document.py --check`. Lean requires definitions before use, so
they are imported above the theorem and displayed here in reading order.

### Arithmetic predicate (Specification/Arithmetic.lean)
```lean
def harmonic : ℕ → ℚ
  | 0 => 0
  | n + 1 => harmonic n + 1 / ((n : ℚ) + 1)

def lcmUpto : ℕ → ℕ
  | 0 => 1
  | n + 1 => Nat.lcm (lcmUpto n) (n + 1)

def Counterexample (n : ℕ) : Prop :=
  254 ≤ n ∧
    (max (harmonic (lcmUpto n) - (n : ℚ)) 0) ^ 2 >
      (n : ℚ) * (harmonic n) ^ 4
```

### Execution (Specification/MachineSemantics.lean)
```lean
structure Instruction (N : ℕ) where
  write : Bool
  right : Bool
  next : Option (Fin N)
  deriving DecidableEq

structure Machine (N : ℕ) where
  entry : Fin N
  transition : Fin N → Bool → Instruction N

structure Configuration (N : ℕ) where
  state : Option (Fin N)
  head : ℤ
  tape : ℤ → Bool

def step {N : ℕ} (M : Machine N)
    (c : Configuration N) : Configuration N :=
  match c.state with
  | none => c
  | some q =>
      let ins := M.transition q (c.tape c.head)
      {
        state := ins.next
        head := if ins.right then c.head + 1 else c.head - 1
        tape := fun p =>
          if p = c.head then ins.write else c.tape p
      }

def run {N : ℕ} (M : Machine N) : ℕ → Configuration N
  | 0 =>
      {
        state := some M.entry
        head := 0
        tape := fun _ => false
      }
  | t + 1 => step M (run M t)

def HaltsBlank {N : ℕ} (M : Machine N) : Prop :=
  ∃ t : ℕ, (run M t).state = none
```

### Exact machine (Specification/Machine278.lean)
```lean
def machine278 : Machine 278 where
  entry := ⟨0, by decide⟩
  transition q b :=
    let row := table278[q.val]'(by simpa only [table278_size] using q.isLt)
    if b then row.2 else row.1
```

`table278` is the complete literal array in `Specification/Machine278.lean`.
Its input is `results/clique-target278/fefaa549f250fd12/quotient-278.tm`, SHA-256
`268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306`.
The checker compares every row and audits the theorem's axioms. See `README.md`
for the proof map and verification commands. Equivalence of the arithmetic
predicate to RH is outside this theorem's scope.
END CHECKED SPECIFICATION -/

/-- Public name for the literal machine in `machine278_correct`. -/
abbrev headlineMachine : Machine 278 := machine278

/-- The stable headline is exactly `machine278_correct`, with no extra hypotheses. -/
theorem headline_correct : HaltsBlank headlineMachine ↔ ∃ n : ℕ, Counterexample n :=
  machine278_correct

end RiemannMachineVerification
