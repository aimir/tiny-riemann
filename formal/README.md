# Formally verified 278-state Riemann machine

[Correctness278.lean](RiemannMachineVerification/Correctness278.lean) proves:

```lean
theorem machine278_correct :
    HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n
```

[Headline.lean](RiemannMachineVerification/Headline.lean) selects `machine278` as
`headlineMachine` and exposes this theorem as `headline_correct`. The default
build and main `RiemannMachineVerification` import include the complete proof.
The earlier 295-, 297- and 299-state theorems remain available.

The machine is the **primary `fefaa549f250fd12` result** from the
[278-state search](../results/clique-target278/README.md). Its
[literal table](../results/clique-target278/fefaa549f250fd12/quotient-278.tm)
is imported by [Machine278.lean](RiemannMachineVerification/Machine278.lean),
with SHA-256:

```text
268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306
```

There are 278 ordinary states and a separate halting state. The tape is
binary, two-sided and initially zero; the head starts at zero in `!ENTRY`.
The second 278-state candidate and other experimental tables have independent
checks, but are not covered by this machine theorem.

## What is proved

`HaltsBlank` uses the unchanged approved Turing-machine semantics.
`Counterexample n` is the unchanged exact rational inequality with `254 ≤ n`:

```text
(max (harmonic (lcmUpto n) - (n : ℚ)) 0)^2 > (n : ℚ) * (harmonic n)^4
```

The equivalence holds for unbounded execution and arbitrary tape usage. It
has no compiler-correctness assumption, no `sorry`, no additional axiom, and
no axiom trusting native computation. Its only axiom dependencies are
`propext`, `Classical.choice`, and `Quot.sound`.

The mathematical equivalence of this predicate to RH remains outside this
proof's scope. Neither literal equivalence to the original 744-state table
nor global minimality is claimed. The [verification contract](ACCEPTANCE.md)
preserves the original approved theorem, predicate, semantics and four pins.

## Recheck

Use `elan`, Python 3 and the pinned Lake dependencies. From this directory:

```sh
lake exe cache get          # Optional: fetch the pinned mathlib build cache.
python3 check_current.py    # Build and check current and original targets.
lake env lean Audit.lean    # Audit the principal theorems' axiom dependencies.
```

`check_current.py` checks the headline's identity and exact theorem type,
permitted axiom dependencies, and all ten literal table imports: the original
381/342/299 tables, the 297-state table, the reallocated 381/342/295 tables,
and the new 389/339/278 tables. It retains the original acceptance gate and
its four pins. Only after these checks pass does it refresh
[verification.json](verification.json), including hashes of all proof modules.

Successful output ends with:

```text
'RiemannMachineVerification.machine278_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'RiemannMachineVerification.headline_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
ACCEPTED: the 278-state headline and original 299-state target are proved with only permitted axioms.
```

Lean is pinned to `leanprover/lean4:v4.32.2`; mathlib is pinned to
`905b95818eb32af7874a58b427f50c1711a5e96c`. Checking committed proofs requires
neither Z3 nor regeneration. A fresh build checks many concrete cases and can
take substantially longer than an incremental build.

## Proof structure

The new compilation uses a 10-bit program counter, packed main blocks,
inlined squaring, a different register allocation, destructive reads of dead
values, and omission of clears whose inputs are known zero. Its logical
register program therefore differs from the old one. The
[`Optimized278` modules](RiemannMachineVerification/Optimized278) prove the
following chain:

1. [RegisterRefinement.lean](RiemannMachineVerification/Optimized278/RegisterRefinement.lean)
   proves `macro_iff_original`. A relation at 55 paired control-flow boundaries
   records equal values and known zeros, while allowing dead registers to
   differ. Each boundary proof checks finite executions and corresponding
   branch outcomes for arbitrary natural register values satisfying the relation.
   Both execution clocks advance positively, so the relation preserves
   nontermination as well as halting. The generic argument is in
   [ProgressingBisimulation.lean](RiemannMachineVerification/ProgressingBisimulation.lean).
2. [MacroRegisterCorrectness.lean](RiemannMachineVerification/Optimized278/MacroRegisterCorrectness.lean)
   proves `primitive_iff_macro`. All 86 transfer sites are checked against the
   primitive register program, with induction on the source value for
   arbitrary-length transfer loops.
3. [BackendCorrectness.lean](RiemannMachineVerification/Optimized278/BackendCorrectness.lean)
   proves `machine389_iff_primitive`. It verifies all 1,024 dispatch cases,
   both counter updates for every value, unary register operations, the
   physical register allocation, and growing storage on the infinite tape.
4. [MacroCorrectness.lean](RiemannMachineVerification/Optimized278/MacroCorrectness.lean)
   proves `machine389_iff_machine339` by checking the short-path replacements
   on every relevant finite tape window and lifting them to the infinite tape.
5. [Quotient278.lean](RiemannMachineVerification/Optimized278/Quotient278.lean)
   proves `machine339_iff_machine278`. Three inductive tape-invariant stages
   establish the read masks; every permitted quotient transition is checked.
6. `machine278_correct` composes these equivalences with the existing
   `macro_correct` arithmetic theorem, including exclusion of values below
   254. That arithmetic proof and the original accepted definitions are unchanged.

The previous [295-state proof](RiemannMachineVerification/Correctness295.lean)
and [`Reallocated` backend](RiemannMachineVerification/Reallocated) remain
intact. The original `source_correct`, `compiled_cycle`, `macro_iff_source`,
and `machine299_correct` results also remain available.

## Proof generation and artifacts

Python proposes proof data; Lean checks the resulting definitions and proofs.
To reproduce the new proof sources from the saved candidate, from the repository root:

```sh
.venv/bin/python formal/generate_optimized278.py
.venv/bin/python formal/generate_refinement278.py
.venv/bin/python formal/generate_backend278.py
.venv/bin/python formal/generate_reduction278.py
```

These generators check the saved compiler output and emit the literal register
programs, boundary proofs, backend certificates, tape invariants and quotient.
They do not establish acceptance by themselves; rerun `check_current.py` afterward.
The [search report](../results/clique-target278/README.md) links the source,
configuration, machine tables, certificates and independent reproduction commands.

[NativeFragments.lean](experiments/NativeFragments.lean) contains separate
generic clear/test proofs for other experiments. Run it with
`lake env lean experiments/NativeFragments.lean`. The primary 278-state
candidate does not use native fragments or whole zero-call replacements.

All artifacts are available directly in the repository; see the
[artifact directory](../README.md#repository-artifacts-and-local-logs).
After verification, `python3 package_verified.py` creates a local release ZIP
from versioned inputs, including the proof and preserved baseline artifacts.
ZIPs, build binaries and raw logs are not committed. Verification logs under
`.logs/` are optional local diagnostics; the durable report, source hashes,
tables and certificates are the versioned acceptance evidence.
