# Two independently checked 278-state machines

The requested **278 nonhalting states** have been reached: **466 fewer than
744, a 62.63% reduction**. (279 states would be exactly 62.5%.) Both machines
use two symbols, a blank zero tape, initial state `!ENTRY`, and a separate
`HALT` state excluded from the count.

These are experimental machines with independent checks. Their full-machine
Lean theorem is outstanding; the verified default remains `machine295_correct`.

## Primary result

- [278-state transition table](fefaa549f250fd12/quotient-278.tm)
- [Source](../unified-target278/fefaa549f250fd12/source.nql) and
  [compiler configuration](../unified-target278/fefaa549f250fd12/candidate.json)
- [Compiled table](../unified-target278/fefaa549f250fd12/compiled.tm),
  [macro table](../unified-target278/fefaa549f250fd12/macro.tm), and
  [macro certificate](../unified-target278/fefaa549f250fd12/macros.json)
- [Quotient certificate](fefaa549f250fd12/quotient-278.certificate.json),
  [SMT query](fefaa549f250fd12/quotient-278.smt2), and
  [structured query result](fefaa549f250fd12/report.json)
- [Independent checks](fefaa549f250fd12/verification.json),
  [packing equivalence](fefaa549f250fd12/packing-check.json), and
  [artifact hashes](manifest.json)

SHA-256 of the primary transition table:

```text
268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306
```

The stages are **389 compiled → 339 macro → 283 greedy → 278 exact**.
The machine has a 10-bit program counter and nine physical registers. It
combines packed main blocks, inline squaring, destructive reads of dead values,
propagated zeros, known-zero clear removal, source padding and register placement.
Native register fragments are not selected in this candidate. After removing
padding and formatting, its source equals the verified arithmetic source.

The independent checker reproduces the compiled and macro tables, exercises
528 arithmetic cases, checks 585 dispatch prefixes and all 2,048 counter
updates, checks the register invariant, and validates 80 macro rewrites against
1,280 exhaustive tape windows. It separately recomputes reachability and checks
every permitted quotient transition. The packing checker relates 240 primitive
control pairs with arbitrary decrement outcomes. Arithmetic regression tests
do not replace an unbounded source-to-register proof in Lean.

## Second result

The [second 278-state table](d859aef2158f0ec5/quotient-278.tm) has the same stage
counts with a different register order and an independent-assignment source
reordering. Its [configuration](../unified-target278/d859aef2158f0ec5/candidate.json),
[quotient certificate](d859aef2158f0ec5/quotient-278.certificate.json),
[independent checks](d859aef2158f0ec5/verification.json), and
[packing check](d859aef2158f0ec5/packing-check.json) are also retained.

```text
942e6e7709f90f8b3743c48d5cea83cf9adcea1880be3678a8e69b51faf736f1
```

## What changed in the search

The completed [16-parent search](../unified-wide/README.md) reached 280 states.
A new [24-parent run](../unified-target278/README.md) retained multiple compiler
families and promoted candidates using complete reductions. Its first 144
offspring included both layouts above. A separate
[systematic neighborhood search](../neighborhood278/README.md) explored the
leading layouts more thoroughly.

The decisive solver improvement was **clique-first variable ordering**. States
known to be mutually incompatible are placed first. They must occupy separate
classes, so many terms in the representative-count constraint become constants.
This only permutes the original problem: it neither assumes additional
reachability facts nor rules out partitions. The encoding is tested against
exhaustive partition enumeration on 72 small machines in both variable orders.

With the old ordering, both layouts reached 281 states but their 280-state
queries timed out after 45 seconds. The reordered queries found 278-state
mappings in 0.85 and 8.40 seconds. Each mapping is independently checked; the
solver itself is not trusted for the resulting upper bound. No global lower
bound or optimality is claimed.

The [supplemental run](report.json) queried six distinct table/mask problems
before stopping on the two successes. Supplemental tables are kept separate
from historical beam artifacts. The 24-parent and neighborhood searches were
stopped after these checks passed; their checkpoints explicitly record the
unfinished selection stage rather than claiming completed generations.

## Reproduce the result

From the repository root, with the Python dependencies installed:

```sh
.venv/bin/python tools/check_fragments.py \
  --candidate results/unified-target278/fefaa549f250fd12 \
  --machine results/clique-target278/fefaa549f250fd12/quotient-278.tm \
  --certificate results/clique-target278/fefaa549f250fd12/quotient-278.certificate.json
```

Replace `fefaa549f250fd12` with `d859aef2158f0ec5` in all three paths to check
the second result.

To rerun the primary SMT query, with Z3 installed:

```sh
.venv/bin/python tools/test_solve_quotient.py
.venv/bin/python tools/solve_quotient.py \
  --machine results/unified-target278/fefaa549f250fd12/macro.tm \
  --certificate results/unified-target278/fefaa549f250fd12/reduction.json \
  --target 278 --minimum 278 --timeout 60 --order clique \
  --output /tmp/riemann-278-clique
```

The saved witness can be checked without rerunning Z3. To apply the same
ordering across a pool of candidates:

```sh
.venv/bin/python tools/refine_quotients.py \
  --pools results/unified-wide results/neighborhood278 results/unified-target278 \
  --output /tmp/riemann-278-refinement --target 278 \
  --timeout 30 --workers 3 --limit 100 --max-states 288
```

Use a fresh output directory. The archived runs were snapshotted while other
searches were active, so replaying a larger completed pool can encounter a
different candidate first. `--exact-order clique` is also available directly
in the beam and neighborhood search tools; their default remains `source`
so earlier configurations remain reproducible.

Raw solver, execution and console logs stay local. Versioned tables,
certificates, configurations, SMT inputs and structured reports follow the
[repository artifact policy](../../README.md#repository-artifacts-and-local-logs).
