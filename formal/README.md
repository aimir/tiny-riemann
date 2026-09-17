# Formally verified 295-state Riemann machine

The current theorem is proved in
[Correctness295.lean](RiemannMachineVerification/Correctness295.lean):

```lean
theorem machine295_correct :
    HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n
```

[Headline.lean](RiemannMachineVerification/Headline.lean) provides the stable
entry point: `headlineMachine` is `machine295`, and `headline_correct` proves
its specification. The default build and the main `RiemannMachineVerification`
import include this result.

The [verification contract](ACCEPTANCE.md) records both the current result and
the preserved original approval. The original `machine299_correct` and the
later `machine297_correct` remain available. The original machine, semantics,
predicate, and four acceptance pins are unchanged. The new machine uses the
same logical register program with a different physical register allocation.
Its tape backend and state reductions are checked separately in the
[`Reallocated` proof modules](RiemannMachineVerification/Reallocated).

The theorem depends only on `propext`, `Classical.choice`, and `Quot.sound`.
There is no `sorry`, additional axiom, assumed compiler correctness, or axiom
trusting native computation. `Counterexample n` is the approved rational
inequality with `254 ≤ n`. Its equivalence to RH remains outside the formal
proof's scope. Literal equivalence to the original 744-state table and global
minimality are not claimed.

## Recheck

Use `elan`, Python 3, and the pinned Lake dependencies. From this directory:

```sh
lake exe cache get          # Optional: fetch the pinned mathlib build cache.
python3 check_current.py    # Build and check the current and original targets.
lake env lean Audit.lean    # Audit the main results.
```

The current checker retains the original acceptance check and its four pins.
It checks all seven literal table imports: the original 381/342/299 tables,
the earlier 297-state table, and the new 381/342/295 tables. It verifies the
headline's identity and exact theorem type, checks permitted axiom dependencies,
and then refreshes [verification.json](verification.json), including hashes of
all proof modules in the `Reallocated` subdirectory.

Successful output ends with:

```text
'RiemannMachineVerification.machine295_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'RiemannMachineVerification.headline_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
ACCEPTED: the 295-state headline and original 299-state target are proved with only permitted axioms.
```

Lean is pinned to `leanprover/lean4:v4.32.2`; mathlib is pinned to
`905b95818eb32af7874a58b427f50c1711a5e96c`. Checking the committed proof sources
requires neither Z3 nor regeneration. The generator
[`generate_reallocated.py`](generate_reallocated.py) records how the new
backend and reduction certificates were produced; it is not trusted by Lean.

## Proof structure

The [construction guide](../CONSTRUCTION.md) explains the arithmetic and
optimizations in plain language. The checked proof composes these results:

1. `Reallocated.machine342_iff_machine295` checks the exact quotient of the new
   shortened table. Four generated tape-invariant stages justify the read masks
   for unbounded execution. Every relevant transition equation is checked.
2. `Reallocated.machine381_iff_machine342` verifies the short-path replacements
   between the new literal compiled and shortened tables.
3. `Reallocated.machine381_iff_primitive` checks the new tape backend: all 2,048
   dispatch cases, both binary counter updates, unary register operations,
   the changed physical allocation, and growth of register storage. The physical
   mapping exchanges `denom` and `_scratch_2`; the logical register instructions
   are the same as in the previous proof.
4. The original `primitive_iff_macro` contracts all 102 transfer loops for
   arbitrary natural register values.
5. The existing `compiled_cycle` proves positive finite execution of each
   arithmetic search iteration: LCM, multiplication, truncated subtraction,
   and harmonic computations. `macro_correct` connects repeated iterations
   to the approved predicate, including exclusion of values 1 through 253.
6. `machine295_correct` composes these results. `headline_correct` selects it
   as the current result.

The original `machine299_correct` proof is retained without modification.
There is also an independently checked structured-source result:
`source_correct` proves its arithmetic specification, and `macro_iff_source`
connects it to the logical register program.

## Artifact identity

The current table is [`../machine/riemann295.tm`](../machine/riemann295.tm),
with SHA-256:

```text
d79512cf945e8828ff587662990ee595e596871928f402fa6fef470b144d7079
```

It has 295 ordinary states and a separate halting state. The tape is two-sided,
binary, and initially zero; the head starts at zero in state `!ENTRY`. Each
transition writes, moves by one cell, and enters an ordinary state or HALT.

The historical `../machine/riemann.tm` still contains the frozen 299-state
machine. The earlier 297-state table remains in `../results/exact-quotient/`.
State names in the new intermediate tables are normalized by the explicit
bijection in [proof-inputs.json](../machine/riemann295.proof-inputs.json).
The final table is imported literally by
[Machine295.lean](RiemannMachineVerification/Machine295.lean).

The [combined search report](../results/combined-beam/README.md) documents how
295 states were found. The query for 294 timed out; no corresponding lower
bound is claimed. Z3 and Python propose artifacts; the Lean kernel checks the
complete correctness proof.

All former archive contents are available directly in the repository; see the
[artifact directory](../README.md#reproduce-and-independently-check-the-construction).
This folder contains the Lean sources, pinned dependencies, generators, checks,
and report. Machine tables and certificates are in [machine/](../machine),
and saved optimization runs are in [results/](../results).

Release ZIPs are generated locally, not committed. After checking the proof,
`python3 package_verified.py` packages the current result, all proof sources,
certificates, and the preserved baseline artifacts.
