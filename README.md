# A formally verified 297-state Riemann machine

**Formally verified in Lean:** the delivered machine halts on a blank tape
if and only if the approved arithmetic counterexample predicate has a witness.
The [complete proof and verification guide](formal/README.md) are included.

The machine has **297 nonhalting states and two symbols**, down from the
original **744**: **447 fewer states (60.1%)**. It starts on a blank zero tape
in state `!ENTRY`.
The distinguished `HALT` state is excluded from both counts.

This is the smallest candidate found in this workspace, not a claim of global
minimality. The reduction deliberately trades runtime for fewer states.

| Stage | Nonhalting states |
|---|---:|
| Original, reproduced byte for byte | 744 |
| Optimized program and opt-in lowering | 381 |
| Exact short transition replacements | 342 |
| Certified reachability analysis and greedy state merging | 299 |
| Global constraint solving with a Lean-checked quotient | **297** |

## Result and supporting artifacts

The [verified 297-state archive](riemann-297-verified.zip) contains the current
machine, proof, certificates, and reproduction tools
([SHA-256 checksum](riemann-297-verified.zip.sha256)).

* [Final transition table](results/exact-quotient/quotient-297.tm): the actual 297-state machine.
* [Headline theorem](formal/RiemannMachineVerification/Headline.lean): the stable
  `headline_correct` entry point now selects `machine297_correct`, proved in
  [Quotient297.lean](formal/RiemannMachineVerification/Quotient297.lean).
  This proves equivalence between blank-tape halting and the approved arithmetic
  predicate. The [verification report](formal/verification.json) records the
  successful acceptance check, axiom audit, and proof-source hashes.
* [Compilation input](machine/riemann.nql): includes deliberate no-op padding
  that improves sharing in the compiler's decision graph.
* [Readable algorithm](machine/algorithm.nql): the same arithmetic without
  layout padding.
* [Correctness argument](PROOF.md): the arithmetic transformation, removal of
  the cutoff, compiler rules, and both forms of transition reduction.
* [Baseline build manifest](machine/manifest.json): the preserved 299-state
  construction's counts, upstream revision,
  deterministic analysis parameters, merge seed, and SHA-256 hashes.
* [Baseline validation report](machine/validation.json): results of the independent
  executable checks on that construction.
* [Exact quotient results](results/exact-quotient/README.md): the 297-state
  mapping, solver experiment, and search using final reduction counts.

The intermediate tables and certificates are also included:
[compiled table](machine/riemann.compiled.tm),
[shortened table](machine/riemann.macro.tm),
[short-path certificate](machine/macros.json), and
[297-state reduction certificate](results/exact-quotient/quotient-297.certificate.json).
The original [299-state table](machine/riemann.tm) and
[its certificate](machine/reduction.json) remain as the frozen acceptance baseline.

The formal proof covers **unbounded execution**, connecting the literal
297-state transition table to the arithmetic search through the state
reductions and compiled register program. It checks the compiler's output
without assuming compiler correctness.

## Formal verification

The proved theorem is:

```lean
theorem machine297_correct :
    HaltsBlank machine297 ↔ ∃ n : ℕ, Counterexample n
```

`HaltsBlank` describes execution of the literal machine on an initially zero
infinite binary tape. `Counterexample n` is the approved exact rational
inequality, including the original `254 ≤ n` bound. The mathematical
equivalence of that criterion to RH is outside the formal proof's scope.
See the [detailed verification README](formal/README.md) for the specification,
proof structure, artifact identity, and dependency versions.
The main Lean library exports this theorem and the stable `headline_correct`
alias. The originally approved `machine299_correct` theorem and its acceptance
pins remain unchanged.

Install `elan` so that `lean` and `lake` are on your path, and use Python 3.
The project pins Lean to **4.32.2** and its mathlib dependency to a specific
commit. Initial toolchain and dependency downloads require network access.
From the repository root, run:

```sh
cd formal
lake exe cache get             # Optional: fetch the pinned mathlib build cache.
python3 check_current.py       # Check the 297-state headline and frozen 299-state target.
lake env lean Audit.lean       # Report axiom dependencies of the main results.
cd ..
```

The current-result check verifies both exact theorem types, the unchanged approved
definitions, the final machine's hash, all four literal tables, and the theorem's
axiom dependencies.
It succeeds only with the permitted foundational axioms `propext`,
`Classical.choice`, and `Quot.sound`; no `sorry` or additional axiom is accepted.
Successful output ends with:

```text
ACCEPTED: the 297-state headline and original 299-state target are proved with only permitted axioms.
```

## Reproduce the construction and run executable checks

The existing build and executable-check commands reproduce the compiled and
shortened tables and the frozen **299-state baseline**:

Requires Python 3 and the pinned `pyparsing` dependency. No network access is
needed after installing that dependency; the original compiler is vendored.

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python tools/build.py --check
.venv/bin/python tools/check.py
```

`build.py --check` rebuilds in a temporary directory and requires byte-for-byte
identical tables and certificates, plus matching hashes. `check.py` independently
checks the arithmetic, the compiler transformations, all relevant tape windows
for the short-path replacements, and the unbounded state-reduction certificate.
The wider reachability passes can require several hundred megabytes of memory.

To regenerate those baseline tables in place, use `tools/build.py` without
`--check`. To inspect the source compilation alone:

```sh
.venv/bin/python tools/compile.py machine/riemann.nql
```

The 297-state result uses the same compiled and shortened tables with a new
quotient mapping. `check_current.py` checks that saved mapping in Lean without
requiring Z3. To repeat the global search with the `z3` executable installed:

```sh
.venv/bin/python tools/solve_quotient.py --target 297 --minimum 296 --timeout 120 --output results/reproduced-quotient
```

Different solver versions can find different valid mappings. See the
[exact quotient guide](results/exact-quotient/README.md) for certificates and
reproduction details.

An optional standalone C++ interpreter is provided for concrete execution:

```sh
.venv/bin/python tools/execution_inputs.py
c++ -O3 -std=c++17 tools/simulate.cpp -o /tmp/riemann-simulate
/tmp/riemann-simulate machine/riemann.compiled.tm machine/riemann.tm 11 100000000 3 machine/macro_lengths.tsv machine/state_map.tsv
```

This command checks the preserved 299-state baseline. It uses the certified
correspondence to compare every reduced step with the appropriate one or three
compiled steps. That machine passed through
its first two complete iterations: **12,169,826 compiled steps correspond to
12,118,618 reduced steps**. The [execution log](machine/execution.txt) records
the register checkpoints. This concrete test supplements the unbounded
certificates; it is not a substitute for them.

## What changed

The program shares its harmonic-sum and squaring routines, reuses dead
registers, recomputes the LCM using a small divisibility loop, and implements
the last strict comparison using saturating subtraction. A finite exact
certificate permits removing the original `x > 253` guard. A seeded search
adjusts harmless padding and operand order to improve decision-graph sharing.

Two machine-level passes then remove short sequences equivalent to one step,
and merge states using proved unreachable read-symbol combinations.
Global constraint solving replaces the greedy partition and reduces the result
from 299 to 297 states. Z3 reports UNSAT for 296 under that fixed transition
table and those reachability masks. This is a result about that quotient
construction, not a general machine-size lower bound; the UNSAT claim itself
has not been formalized in Lean.

A first search using complete reduction counts confirmed that candidates with
the same old proxy score can finish at 299 or 302 states. Its small initial
pilot found no further reduction. The search now supports a diverse beam,
register placement, expression order, procedure boundaries, and padding.

The arithmetic tests cover every removed cutoff case, harmonic sums for
inputs 0–80, 200 squaring cases, 100 comparison cases, ten complete algorithm
iterations, and 260 compiler cases. Two complete iterations also execute in
the compiled register-machine interpreter. Full Turing execution is feasible
only for tiny prefixes; runtime and tape use grow extremely quickly.

In the workspace, `candidates/`, `results/`, and `tools/search_*.py` retain the research
trail. The current final table and its quotient certificate are in
`results/exact-quotient/`; the other search candidates are not needed to verify it.

## Provenance

Based on [Stefan O'Rear's repository and the Matiyasevich–Aaronson
744-state construction](https://github.com/sorear/metamath-turing-machines/tree/master/machines/2016-riemann-matiyasevich-aaronson-744),
pinned to commit `0b8032c35bfb2107d94023f6ca2c2ffe6067faa8`.
The unchanged compiler and its MIT license are in [vendor/nql](vendor/nql).
The reference source and transition table are in [reference](reference).
