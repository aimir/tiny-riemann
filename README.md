# A formally verified 295-state Riemann machine

**Formally verified in Lean:** the machine halts on a blank tape if and only
if the approved arithmetic counterexample predicate has a witness. The
[complete verification guide](formal/README.md) and proof sources are included.

The machine has **295 nonhalting states and two symbols**, down from the
original **744**: **449 fewer states (60.3%)**. It starts on a blank zero tape
in state `!ENTRY`. The separate `HALT` state is excluded from both counts.
This is the smallest Lean-verified machine here; global minimality is not claimed.
The [program-counter experiment](results/pc-layout/README.md) has since found
a **291-state candidate with a 10-bit counter**. It passes independent Python
checks but has not yet been proved in Lean, so it is not the default headline.

| Construction | Nonhalting states |
|---|---:|
| Original, reproduced byte for byte | 744 |
| Optimized compiled program | 381 |
| Exact short transition replacements | 342 |
| Earlier greedy quotient | 299 |
| Earlier exact quotient, original register layout | 297 |
| New register layout and exact quotient | **295** |

## Results and artifacts

- [Current transition table](machine/riemann295.tm): the literal 295-state machine.
- [Headline theorem](formal/RiemannMachineVerification/Headline.lean):
  `headline_correct` selects `machine295_correct`, proved in
  [Correctness295.lean](formal/RiemannMachineVerification/Correctness295.lean).
- [Verification report](formal/verification.json): checked theorem, axiom
  dependencies, machine identity, and hashes of the complete proof sources.
- [Compilation input](machine/riemann295.nql) and
  [register layout](machine/riemann295.layout.json): both are needed to reproduce
  this compilation. The arithmetic source is unchanged; the physical positions
  of `denom` and `_scratch_2` are exchanged.
- [Readable algorithm](machine/algorithm.nql) and
  [construction and correctness guide](CONSTRUCTION.md).
- [Compiled table](machine/riemann295.compiled.tm),
  [shortened table](machine/riemann295.macro.tm),
  [short-path certificate](machine/riemann295.macros.json), and
  [quotient certificate](machine/riemann295.reduction.json).
- [Combined search results](results/combined-beam/README.md): search settings,
  candidate provenance, exact solving, and verification details.

The original [299-state table](machine/riemann.tm), its
[build manifest](machine/manifest.json), and the
[297-state result](results/exact-quotient/README.md) remain available. They are
historical verified results, not the current headline machine.

## Formal verification

The current theorem is:

```lean
theorem machine295_correct :
    HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n
```

`HaltsBlank` describes the literal machine on an initially zero, two-sided
infinite binary tape. `Counterexample n` is the approved exact rational
inequality, including the original `254 ≤ n` bound. Its mathematical
equivalence to RH remains outside the formal proof's scope.

The proof covers **unbounded execution**. It checks the reallocated tape
backend, all 2,048 dispatch cases, macro rewrites, reachability invariants,
and the new quotient. The logical register program is unchanged, so the
existing arithmetic proof applies. Neither the compiler nor Z3 is trusted.
The originally approved `machine299_correct` theorem and its acceptance pins
remain unchanged.

Install `elan` so that `lean` and `lake` are on your path, and use Python 3.
Lean is pinned to **4.32.2**, and mathlib to a specific commit. Initial dependency
downloads require network access. From the repository root:

```sh
cd formal
lake exe cache get          # Optional: fetch the pinned mathlib build cache.
python3 check_current.py    # Build and check the headline and original target.
lake env lean Audit.lean    # Audit the principal theorems' axiom dependencies.
cd ..
```

The check verifies exact theorem types, literal table imports and hashes,
and axiom dependencies. Only `propext`, `Classical.choice`, and `Quot.sound`
are permitted; no `sorry` or additional axiom is accepted. Successful output
ends with:

```text
ACCEPTED: the 295-state headline and original 299-state target are proved with only permitted axioms.
```

See [formal/README.md](formal/README.md) for the proof structure and table identity.

## Reproduce and independently check the construction

Python tools require the pinned dependency in `requirements.txt`. The original
compiler is vendored; Z3 is unnecessary to reproduce the saved quotient:

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python tools/check_reallocated.py
```

This rebuilds the compiled, shortened, and final tables byte for byte, then
independently checks the short-path and unbounded state-reduction certificates.
The state names in the intermediate tables are normalized by the bijection
recorded in [proof-inputs.json](machine/riemann295.proof-inputs.json).

The earlier construction's arithmetic and compiler tests remain available:

```sh
.venv/bin/python tools/build.py --check
.venv/bin/python tools/check.py
```

Those commands check the preserved **299-state baseline**. Its
[validation report](machine/validation.json) covers all 253 removed cutoff
cases, harmonic sums, squaring, comparisons, compiler lowering, and two complete
register-machine iterations. Its [concrete execution log](machine/execution.txt)
is supplementary evidence for that earlier table, not a finite-run proof of
correctness for the new table.

The former ZIP downloads are replaced by files in this repository. Nothing
requires downloading an archive:

| Archive contents | Repository location |
|---|---|
| Current machine, source, layout, and certificates | [Results and artifacts above](#results-and-artifacts), under [machine/](machine) |
| Lean proofs and verification report | [formal/](formal), with [verification instructions](formal/README.md) |
| Python compiler, reducers, search, and independent checkers | [tools/](tools) and [requirements.txt](requirements.txt) |
| Original compiler and its license | [vendor/nql/](vendor/nql) |
| Original 744-state source, table, and license | [reference/](reference) |
| Saved search candidates, queries, and solver output | [results/](results) and [candidates/](candidates) |
| Earlier 299-state release, checks, and hashes | [machine/manifest.json](machine/manifest.json), [validation report](machine/validation.json), and [execution log](machine/execution.txt) |
| Earlier verified 297-state release | [results/exact-quotient/](results/exact-quotient) |

Generated ZIPs and Lean build binaries are ignored by Git. After verification,
an optional local bundle can be produced with:

```sh
python3 formal/package_verified.py
```

## Combined optimization search

The search screens source and register-layout mutations cheaply, evaluates
promoted candidates through the complete reduction pipeline, and selects a
diverse beam using the resulting counts. Exact quotient solving is applied
before survivor selection. Identical constraint problems reuse decisive solver
results; timeouts remain unresolved and are not cached as impossibility claims.

Two generations found a register allocation whose greedy reduction still had
299 states, but exact solving produced 296 and then **295**. The 294-state query
timed out. The earlier UNSAT result for 296 applied only to the original table
and read masks; it did not constrain this new allocation.

The [search guide](results/combined-beam/README.md) gives reproduction commands.
Layout candidates and arithmetic variants remain in `candidates/` and `results/`.
Runtime and tape usage grow extremely quickly; minimizing states deliberately
trades away execution speed.

## Program-counter and dispatch experiment

The [new compiler-layout search](results/pc-layout/README.md) evaluates block
placement, call-site inlining, and individual jump implementations. Expanding
both `square()` calls before address assignment fits the unchanged arithmetic
program into a 10-bit counter. A hybrid jump policy and exact quotient solving
produce the independently checked **291-state candidate**.

The experiment screened 246 configurations and completely reduced 32. Its
report includes the literal table, certificates, reproduction commands, and
remaining Lean proof obligations. The approved specification is unchanged;
formal verification still selects the 295-state machine.

## Provenance

Based on [Stefan O'Rear's repository and the Matiyasevich–Aaronson
744-state construction](https://github.com/sorear/metamath-turing-machines/tree/master/machines/2016-riemann-matiyasevich-aaronson-744),
pinned to commit `0b8032c35bfb2107d94023f6ca2c2ffe6067faa8`.
The original compiler and MIT license are in [vendor/nql](vendor/nql).
The reference source and transition table are in [reference](reference).
