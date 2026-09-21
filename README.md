# A formally verified 295-state Riemann machine

**Formally verified in Lean:** the machine halts on a blank tape if and only
if the approved arithmetic counterexample predicate has a witness. The
[complete verification guide](formal/README.md) and proof sources are included.

The machine has **295 nonhalting states and two symbols**, down from the
original **744**: **449 fewer states (60.3%)**. It starts on a blank zero tape
in state `!ENTRY`. The separate `HALT` state is excluded from both counts.
This is the smallest Lean-verified machine here; global minimality is not claimed.
The later [wider search and reordered SMT solving](results/clique-target278/README.md)
produced **278-state candidates**: **466 fewer states (62.63%)** than the original.
They pass independent arithmetic, register-control, backend and reduction checks.
Their full-machine Lean proof is still outstanding, so they do not replace the
verified 295-state headline.

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
- [Experimental 278-state result](results/clique-target278/README.md): two checked
  candidates from wider search and clique-first SMT ordering, with complete
  tables, certificates and reproduction commands.
- [Earlier 16-parent search](results/unified-wide/README.md): 331 configurations,
  115 complete or reused reductions, and a 280-state result before refinement.
- [Earlier experimental 282-state result](results/fragments/README.md): whole-call
  replacements, stronger register invariants, and native component proofs.
- [Earlier experimental 285-state result](results/register-lowering/README.md): selective
  destructive reads, register placement, arithmetic experiments, and proof limits.
- [Joint search across all three experiments](results/unified-beam/README.md):
  multiple generations, retained alternatives, and selection by final counts.
- [Earlier combined search results](results/combined-beam/README.md): search settings,
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
register-machine iterations. Concrete execution traces are local diagnostics;
the unbounded correctness claim comes from the proof and certificates.

## Repository artifacts and local logs

The former ZIP downloads are replaced by files in this repository. Nothing
requires downloading an archive:

| Archive contents | Repository location |
|---|---|
| Current machine, source, layout, and certificates | [Results and artifacts above](#results-and-artifacts), under [machine/](machine) |
| Lean proofs and verification report | [formal/](formal), with [verification instructions](formal/README.md) |
| Python compiler, reducers, search, and independent checkers | [tools/](tools) and [requirements.txt](requirements.txt) |
| Original compiler and its license | [vendor/nql/](vendor/nql) |
| Original 744-state source, table, and license | [reference/](reference) |
| Saved search candidates, queries, certificates, and structured reports | [results/](results) and [candidates/](candidates) |
| Earlier 299-state release, checks, and hashes | [machine/manifest.json](machine/manifest.json) and [validation report](machine/validation.json) |
| Earlier verified 297-state release | [results/exact-quotient/](results/exact-quotient) |

Raw solver transcripts (`*.solver.txt`), execution traces, console/test output,
and log streams (`*.log`, `*.jsonl`, and similar files) stay local and are
excluded from Git and release bundles. This applies regardless of the log's
extension. Verification uses machine tables, certificates and structured
reports; it does not require archived logs. The checked-in artifact audit
validates query hashes and quotient witnesses. Historical UNSAT/UNKNOWN
statuses are recorded metadata, not solver results re-established by that audit.

Generated ZIPs and Lean build binaries are also ignored by Git. Packaging
includes only versioned artifacts, even when local log files are present.
After verification,
an optional local bundle can be produced with:

```sh
python3 formal/package_verified.py
```

## Combined optimization search

The search screens source and register-layout mutations cheaply, evaluates
promoted candidates through the complete reduction pipeline, and selects a
diverse beam using the resulting counts. Exact quotient solving is applied
before survivor selection. Identical constraint problems can reuse decisive solver
results from the local cache; timeouts remain unresolved and are not cached as impossibility claims.

Two generations found a register allocation whose greedy reduction still had
299 states, but exact solving produced 296 and then **295**. The 294-state query
timed out. The earlier UNSAT result for 296 applied only to the original table
and read masks; it did not constrain this new allocation.

The [search guide](results/combined-beam/README.md) gives reproduction commands.
Layout candidates and arithmetic variants remain in `candidates/` and `results/`.
Runtime and tape usage grow extremely quickly; minimizing states deliberately
trades away execution speed.

## Program-counter and dispatch experiment

The [first compiler-layout search](results/pc-layout/README.md) evaluates block
placement, call-site inlining, and individual jump implementations. Expanding
both `square()` calls before address assignment fits the unchanged arithmetic
program into a 10-bit counter. A hybrid jump policy and exact quotient solving
produce the independently checked **291-state candidate**.

The experiment screened 246 configurations and completely reduced 32. Its
report includes the literal table, certificates, reproduction commands, and
remaining Lean proof obligations. The approved specification is unchanged;
formal verification still selects the 295-state machine.

## Register liveness and specialized arithmetic experiment

The [next experiment](results/register-lowering/README.md) implements liveness
across calls and loop backedges, dead-global scratch borrowing, zero/positive
facts, and specialized multiplication, squaring, subtraction, and harmonic
updates. Selectively consuming five dead values, then changing register
placement, produces a **285-state candidate**. Eight-register machines were
also obtained, but they did not improve the best state count.

The 285-state table and all search settings and certificates are included.
Its arithmetic regression suite has 528 cases, and its backend and reduction
certificates pass independent checks. An unbounded source-to-register proof
and the new Lean machine proof remain outstanding; the default theorem stays
`machine295_correct`.

## Register invariants and whole-fragment experiment

The [third experiment](results/fragments/README.md) tracks register zeros and
initialized capacity at each program counter, beyond bounded tape windows.
Replacing three complete calls whose source register is always zero produces
**282 states** after exact quotient solving. The 281-state query timed out.

Native clear and nondestructive-test kernels were also implemented and proved
as generic Lean components, but their tested layouts were larger. All 512
subsets of nine eligible zero-call replacements were screened. The winning
replacement has an independent register-level bisimulation check; the complete
machine's Lean theorem remains outstanding.

## Joint search across the three experiments

The [multigeneration search](results/unified-beam/README.md) combines source
mutations, PC layout and jump policies, register allocation and arithmetic
lowering, and invariant-guided fragments. It keeps a diverse beam of six
candidates, promotes offspring through the complete reduction pipeline, and
applies exact quotient solving before survivor selection. Previously rejected
arithmetic kernels are included in the initial pool. Each candidate carries
its own source, configuration, ancestry and checked feasible state count.

Three generations screened 127 configurations and produced or reused 43
complete reductions. They found several distinct 282-state candidates without
beating phase 3. A larger 339-state macro table also reached 282 after exact
solving, confirming the value of scoring the final reduction. The new
[artifact audit](results/unified-beam/audit.json) and
[candidate verification](results/unified-beam/fb92e7de11dc705e/verification.json)
pass; the Lean headline remains the verified 295-state machine.

## Wider search and the 278-state result

The [16-parent run](results/unified-wide/README.md) examined 331 configurations
and reached 280 states. A subsequent [24-parent run](results/unified-target278/README.md)
and [systematic local search](results/neighborhood278/README.md) supplied further
layouts. Reordering the SMT variables to put mutually incompatible states first
made previously difficult quotient queries tractable.

The [two delivered candidates](results/clique-target278/README.md) each have
**278 states**, a **62.63% reduction** from 744. Both compile to 389 states,
simplify to 339, and reduce to 283 with the best greedy seed before SMT reaches
278. They passed the independent arithmetic, backend, control, invariant,
macro and quotient checks. The searches were stopped after the 278-state
results passed; their checkpoints identify unfinished selection stages.
The full-machine Lean proof remains outstanding, and the default headline
continues to select the proved 295-state machine.

## Provenance

Based on [Stefan O'Rear's repository and the Matiyasevich–Aaronson
744-state construction](https://github.com/sorear/metamath-turing-machines/tree/master/machines/2016-riemann-matiyasevich-aaronson-744),
pinned to commit `0b8032c35bfb2107d94023f6ca2c2ffe6067faa8`.
The original compiler and MIT license are in [vendor/nql](vendor/nql).
The reference source and transition table are in [reference](reference).
