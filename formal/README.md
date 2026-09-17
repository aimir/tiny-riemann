# Formally verified 297-state Riemann machine

The current theorem, included in the default Lean build, is proved in
[Quotient297.lean](RiemannMachineVerification/Quotient297.lean):

```lean
theorem machine297_correct :
    HaltsBlank machine297 ↔ ∃ n : ℕ, Counterexample n
```

[Headline.lean](RiemannMachineVerification/Headline.lean) provides the stable
entry point: `headlineMachine` is `machine297`, and `headline_correct` proves
its specification. Importing `RiemannMachineVerification` exposes both the
headline and the explicitly numbered theorem.

The original [approved theorem](ACCEPTANCE.md), `machine299_correct`, remains
proved in [Correctness.lean](RiemannMachineVerification/Correctness.lean).
Its literal machine, semantics, predicate, and acceptance pins are unchanged.
The 297-state result adds a verified quotient and derives its correctness from
that existing proof. The theorem's complete axiom dependencies are exactly
`propext`, `Classical.choice`, and `Quot.sound`. There is no `sorry`, additional
axiom, assumed compiler correctness, or native-computation axiom.

`Counterexample n` is the approved exact rational inequality, with `254 ≤ n`.
The RH equivalence of that mathematical characterization remains outside the
proof's scope, as approved. Literal equivalence to the original 744-state table
is not claimed. The current table has **297 ordinary states** and a separate
halting state; global minimality is not claimed.

## Recheck

Use the pinned Lean toolchain through `elan`, Python 3, and the pinned Lake
dependencies. From this directory:

```sh
lake exe cache get             # Optional: fetch the pinned mathlib build cache.
python3 check_current.py       # Builds and checks the current and original targets.
lake env lean Audit.lean       # Reports axiom dependencies of the main results.
```

`check_current.py` invokes the original `check_acceptance.py` without changing
its four acceptance pins. It also verifies the 297-state table hash, checks
its literal Lean import and quotient mapping, checks all three older table
imports, and verifies the exact types and permitted axiom dependencies of
`machine297_correct` and `headline_correct`. It refreshes
[verification.json](verification.json) only after those checks succeed.

Successful output ends with:

```text
'RiemannMachineVerification.machine297_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'RiemannMachineVerification.headline_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
ACCEPTED: the 297-state headline and original 299-state target are proved with only permitted axioms.
```

Lean is pinned to `leanprover/lean4:v4.32.2`. Mathlib is pinned by
`lake-manifest.json` to commit `905b95818eb32af7874a58b427f50c1711a5e96c`.
All proof sources are included. Neither regeneration nor Z3 is required to
check them. For an optional byte-for-byte regeneration check of the new module:

```sh
python3 generate_candidate_quotient.py \
  ../results/exact-quotient/quotient-297.tm \
  ../results/exact-quotient/quotient-297.certificate.json \
  --output RiemannMachineVerification/Quotient297.lean --check
```

## Proof structure

1. `machine342_iff_machine297` checks the new quotient against the existing
   proved read-symbol invariants. Every relevant transition equation is checked
   by Lean. `machine297_iff_machine299` connects the new literal table to the
   original verified quotient; the solver is not a trusted dependency.
2. `machine381_iff_machine299` checks the macro rewrites and earlier state
   mergers between the literal compiled and reduced transition tables.
   Inductive tape invariants cover unbounded execution on the infinite tape.
3. `machine381_iff_primitive` verifies the compiler's tape backend: all 2,048
   dispatch cases, both counter increments, unary register operations, register
   allocation order, and storage growth. Initialization appends sixteen zero
   registers on every pass through `main`; the proof accounts for that growth.
4. `primitive_iff_macro` verifies contraction of all 102 transfer loops for
   arbitrary natural register values. `machine299_iff_macro` connects the older
   literal machine to this register program.
5. `compiled_cycle` verifies one complete arithmetic search iteration and proves
   it takes positive finite time. This includes the LCM search, multiplication,
   truncated subtraction, and both harmonic computations.
6. `macro_correct` connects repeated iterations to the approved arithmetic
   predicate. The arithmetic lemmas prove exact rational correspondence and
   rule out the excluded values from 1 through 253.
7. `machine299_correct` composes the original literal-machine and arithmetic
   results. `machine297_correct` transfers that result to the new machine, and
   `headline_correct` selects it as the current headline theorem.

There is also a separately checked structured source model: `source_correct`
proves its arithmetic specification, and `macro_iff_source` proves its halting
equivalence to the compiled register program from the initial states.

## Artifact identity

The current table is
[`../results/exact-quotient/quotient-297.tm`](../results/exact-quotient/quotient-297.tm),
with SHA-256:

```text
724fb7359ca178e9919390958f157b98d9576999cb6cd62a140eef9fe1a50ae3
```

The historical `../machine/riemann.tm` is still the frozen 299-state table,
with SHA-256:

```text
00402eabd3bcc448d97042458ea0186598d0f7c066673d9584262eed87c9840a
```

Both use one two-sided infinite binary tape, initially all zero, head position
zero, and entry state `!ENTRY`. Each transition writes, moves by exactly one
cell, and enters the next ordinary state or the separate halting state.

Python generators and Z3 are untrusted proof producers. Lean checks their
transition equations, Boolean identities, invariant closure, and symbolic
execution certificates. No theorem assumes their correctness. The
[exact quotient experiment](../results/exact-quotient/README.md) documents the
search and its restricted UNSAT result for 296 states. That lower-bound result
has not been verified in Lean and is separate from the machine's proved
correctness.

The [current verified archive](../riemann-297-verified.zip) includes this proof,
the 297-state table and certificate, and the preserved baseline artifacts.
The older `riemann-299` archives are historical releases.
