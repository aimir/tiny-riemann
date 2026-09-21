# A formally verified 278-state Riemann machine

**Formally verified in Lean:** this literal machine halts on a blank tape if
and only if the approved arithmetic counterexample predicate has a witness.
The [verification guide](formal/README.md) includes the complete proof and
rechecking instructions.

The machine has **278 nonhalting states and two symbols**, down from the
original **744**: **466 fewer states (62.63%)**. The separate `HALT` state is
excluded from both counts. The primary 278-state result is now the default
Lean headline. Global minimality is not claimed.

## Results and artifacts

- [Current transition table](results/clique-target278/fefaa549f250fd12/quotient-278.tm):
  the formally verified primary 278-state machine.
- [Headline theorem](formal/RiemannMachineVerification/Headline.lean):
  `headline_correct` selects `machine278_correct`, proved in
  [Correctness278.lean](formal/RiemannMachineVerification/Correctness278.lean).
- [Verification report](formal/verification.json): theorem, permitted axioms,
  machine identity and hashes of all proof sources.
- [Compilation input](results/unified-target278/fefaa549f250fd12/source.nql) and
  [configuration](results/unified-target278/fefaa549f250fd12/candidate.json):
  register order, block layout, lowering options and source padding.
- [Compiled table](results/unified-target278/fefaa549f250fd12/compiled.tm),
  [shortened table](results/unified-target278/fefaa549f250fd12/macro.tm),
  [short-path certificate](results/unified-target278/fefaa549f250fd12/macros.json),
  and [quotient certificate](results/clique-target278/fefaa549f250fd12/quotient-278.certificate.json).
- [Search report](results/clique-target278/README.md): provenance, solver changes,
  reproduction commands and a second independently checked 278-state candidate.
  The full Lean theorem covers the primary table, not that second candidate.
- [Readable algorithm](machine/algorithm.nql) and
  [construction and correctness guide](CONSTRUCTION.md).

The current pipeline is **389 compiled → 339 macro → 278 exact quotient**.
It uses nine registers and a 10-bit program counter, packed main blocks,
inlined squaring, destructive reads of dead values, known-zero clear removal,
source padding and register placement. Native fragments and whole zero-call
replacements are not selected in this candidate.

SHA-256 of the verified table:

```text
268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306
```

## Formal verification

```lean
theorem machine278_correct :
    HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n
```

`HaltsBlank` describes the literal machine on an initially zero, two-sided
infinite binary tape, starting at head position zero in state `!ENTRY`.
`Counterexample n` is the approved exact rational inequality, including the
original `254 ≤ n` bound. Its mathematical equivalence to RH remains outside
the formal proof's scope.

The proof covers **unbounded execution**. A progressing bisimulation at 55
paired control-flow boundaries relates the new register program to the
previously verified one, allowing dead registers to differ. Lean checks all
86 transfer sites, all 1,024 dispatch cases, both counter updates at every
counter value, unary register operations, short-path rewrites, three stages
of tape invariants, and the final quotient. The original arithmetic theorem
then applies. Neither the compiler nor Z3 is trusted.

The original `machine299_correct` theorem, execution semantics, predicate and
four acceptance pins remain unchanged. The 295- and 297-state theorems are
also retained.

Install `elan` so that `lean` and `lake` are on your path, and use Python 3.
Lean is pinned to **4.32.2**, and mathlib to a specific commit. Initial dependency
downloads require network access. From the repository root:

```sh
cd formal
lake exe cache get          # Optional: fetch the pinned mathlib build cache.
python3 check_current.py    # Build and check current and original targets.
lake env lean Audit.lean    # Audit the principal theorems' axiom dependencies.
cd ..
```

The check verifies exact theorem types, all ten literal table imports, hashes,
and axiom dependencies. Only `propext`, `Classical.choice`, and `Quot.sound`
are permitted; no `sorry` or additional axiom is accepted. Successful output
ends with:

```text
ACCEPTED: the 278-state headline and original 299-state target are proved with only permitted axioms.
```

See [formal/README.md](formal/README.md) for the proof chain, generator commands,
artifact identity, preserved results and detailed verification instructions.

## Reproduce and independently check the construction

The original compiler is vendored. Install the pinned Python dependency, then
check the saved primary result without rerunning Z3:

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python tools/check_fragments.py \
  --candidate results/unified-target278/fefaa549f250fd12 \
  --machine results/clique-target278/fefaa549f250fd12/quotient-278.tm \
  --certificate results/clique-target278/fefaa549f250fd12/quotient-278.certificate.json
```

This reproduces the compiled and macro tables, runs arithmetic regressions,
checks backend and register invariants, and validates the reduction certificates.
These independent checks supplement the complete Lean proof.

The preserved constructions can still be checked separately:

```sh
.venv/bin/python tools/check_reallocated.py  # Earlier verified 295-state result.
.venv/bin/python tools/build.py --check      # Preserved 299-state baseline.
.venv/bin/python tools/check.py
```

The [baseline manifest](machine/manifest.json) and
[validation report](machine/validation.json) describe that original optimization
stage. Their state counts continue to refer to the baseline.

## Search history

| Stage | States | Report |
|---|---:|---|
| Original, reproduced byte for byte | 744 | [Upstream machine](https://github.com/sorear/metamath-turing-machines/tree/master/machines/2016-riemann-matiyasevich-aaronson-744) |
| Earlier greedy quotient, formally verified | 299 | [Baseline table](machine/riemann.tm) |
| Earlier exact quotient, formally verified | 297 | [Exact quotient](results/exact-quotient/README.md) |
| New register placement, formally verified | 295 | [Combined search](results/combined-beam/README.md) |
| Program-counter layout experiment | 291 | [PC layout](results/pc-layout/README.md) |
| Register-liveness and arithmetic lowering | 285 | [Register lowering](results/register-lowering/README.md) |
| Stronger invariants and whole-call replacement | 282 | [Fragments](results/fragments/README.md) |
| Joint multigeneration search | 282 | [Joint search](results/unified-beam/README.md) |
| Wider 16-parent search | 280 | [Wider search](results/unified-wide/README.md) |
| 24-parent search and clique-first SMT, primary formally verified | **278** | [Delivered results](results/clique-target278/README.md) |

The combined searches retain multiple candidates and rank survivors using
complete reductions. The decisive final solver change places mutually
incompatible states first, simplifying representative-count constraints
without excluding partitions. The [24-parent checkpoint](results/unified-target278/README.md)
and [neighborhood search](results/neighborhood278/README.md) preserve the
actual stopping points; unfinished generations are not claimed complete.
Historical candidate metadata is preserved separately from supplemental
278-state tables and certificates.

Solver failures and timeouts concern their particular tables, read masks and
quotient constructions. They do not establish a lower bound for equivalent
Turing machines. Runtime and tape use are enormous and were not optimization
targets. The verification does not decide whether this machine halts.

## Repository artifacts and local logs

Everything formerly distributed in ZIPs is available directly in the repository:

| Contents | Repository location |
|---|---|
| Current machine, source, configuration and certificates | [Results and artifacts above](#results-and-artifacts), under [results/](results) |
| Lean proofs, pinned dependencies, generators and verification report | [formal/](formal) |
| Python compiler, reductions, search and independent checks | [tools/](tools) and [requirements.txt](requirements.txt) |
| Preserved 299- and 295-state tables and certificates | [machine/](machine) |
| Earlier verified 297-state result | [results/exact-quotient/](results/exact-quotient) |
| Search inputs, checkpoints, SMT queries and structured reports | [candidates/](candidates) and [results/](results) |
| Vendored upstream compiler and original machine | [vendor/](vendor) |

Raw solver output, execution traces and console logs remain local, whether
named `.log`, `.solver.txt`, `.jsonl`, stdout/stderr files or otherwise. They
are neither committed nor packaged. The durable artifacts are machine tables,
certificates, configurations, SMT inputs, structured reports and proof sources.
Generated ZIPs and Lean build binaries are also ignored by Git.

After verification, a local archive can be generated with:

```sh
python3 formal/package_verified.py
```

Packaging checks the accepted verification report and artifact hashes, includes
only versioned files, and requires no saved acceptance-console transcript.
