# Register invariants and whole fragments: 282-state candidate

This page records an earlier experiment. The current
[278-state primary result](../clique-target278/README.md) is the
[fully Lean-verified headline](../../formal/README.md).

The third experiment reduces the preceding 285-state candidate to **282
nonhalting states**. It combines the earlier 10-bit PC layout, five destructive
reads and register placement with three whole-call replacements justified by
register-zero invariants. **The whole machine is not Lean verified.** The
verified headline is `machine278_correct` with the same approved predicate.

## Result

- [282-state transition table](../fragments-zero/24d3d7667ba1fe4f/final.tm)
- [Configuration](../fragments-zero/24d3d7667ba1fe4f/candidate.json),
  [source](../fragments-zero/source.nql), and
  [verification report](../fragments-zero/24d3d7667ba1fe4f/verification.json)
- [Compiled table](../fragments-zero/24d3d7667ba1fe4f/compiled.tm),
  [macro table](../fragments-zero/24d3d7667ba1fe4f/macro.tm),
  [macro certificate](../fragments-zero/24d3d7667ba1fe4f/macros.json),
  [fragment certificate](../fragments-zero/24d3d7667ba1fe4f/phases.json), and
  [quotient certificate](../fragments-zero/24d3d7667ba1fe4f/reduction.json)

| Stage | States |
|---|---:|
| Compiled | 366 |
| Short-path reduction | 327 |
| Best of eight greedy merge orders | 287 |
| Exact quotient | **282** |

The machine uses nine registers and a 10-bit counter. Its SHA-256 is:

```text
13b6f577d27bd10c3a978a674ca7cf566094d1507064ae46f3c30ba2528c0fdf
```

The final queries found 284, 283 and 282 states. The [281-state query](../fragments-zero/24d3d7667ba1fe4f/lower/report.json)
returned UNKNOWN after 90 seconds. This establishes no lower bound, even for
this fixed quotient construction.

## Stronger invariants and replacements

[`fragments.py`](../../tools/fragments.py) computes an inductive register
invariant at each logical program counter. It tracks zero/positive values and
a lower bound on initialized register capacity, including the main loop's
backedge. These facts describe complete unary registers, regardless of their
length or their distance from the tape head.

Nine transfer/clear calls in the 285-state program have zero sources at every
reachable entry. The winner replaces three calls: the third clear of `i`, the
first clear of `c`, and the second clear of `lcm` in `main`. A zero-source
transfer terminates without changing any register. Its replacement occupies
one no-op instruction slot so an adjacent decrement still skips one slot.
Shared calls collect every actual entry address; replacements are rejected if
a feasible external edge enters their interior. Occurrence identifiers follow
source order and remain attached to their call when blocks are reordered.

The invariant checker independently checks initial inclusion and closure.
A separate register-level weak-bisimulation check erases jumps and decrements
proved to read zero, then matches all remaining primitive operations and
feasible branch outcomes. The winning replacement has **243 related pairs**.
This is an unbounded register-control check, implemented in Python; it is not
a kernel-checked theorem for the literal TM.

The experiment also implements:

- A native clear loop that deletes an arbitrary register value without returning
  to PC dispatch after every decrement. Intermediate tapes and execution lengths
  differ from the original loop.
- A nondestructive register test replacing decrement/branch/increment fragments.
- Dispatcher pruning using reachable PCs, and fixed-read restrictions justified
  by register sentinels, delimiters, and the double-zero fence.

The [native sweep](report.json) screened 50 configurations and fully reduced 13;
none improved the incumbent. The [zero-call sweep](../fragments-zero/report.json)
screened all 512 subsets and fully reduced 16. Removing every eligible call at
once was worse. Both sweeps retain screening metadata for every configuration
and complete artifacts for promoted candidates.

## Checks and component proofs

[NativeRegisterFragments.lean](../../formal/Validation/NativeRegisterFragments.lean) proves
`clear_core` for every natural register value, arbitrary finite register suffix
and arbitrary left tape background. It also proves `test_core` with the complete
tape preserved. The proofs depend only on `propext` and `Quot.sound` (the test
uses only `propext`). The checker checks their explicit transition premises
against native fragment implementations. These lemmas are optional component
proofs, not imports of the default headline.

The candidate checker reproduces tables, checks reachable dispatch prefixes,
compares the ordinary register backend and exhausts counter updates, runs 528
arithmetic cases and 180 literal native-tape cases, checks zero replacements,
and independently checks short macros and the final quotient. Regression tests
also cover block reordering, corrupted invariants and unproved replacement
requests. Finite arithmetic tests do not close the preceding experiment's
source-to-register proof gap.

From the repository root:

```sh
.venv/bin/python tools/test_fragments.py
.venv/bin/python tools/check_fragments.py \
  --candidate results/fragments-zero/24d3d7667ba1fe4f
cd formal
lake env lean --memory=16384 --threads=2 Validation/NativeRegisterFragments.lean
cd ..
```

The saved-candidate check needs Lean and the existing Python requirements;
Z3 is needed only to search. Reproduce searches into new output directories:

```sh
.venv/bin/python tools/search_fragments.py --output /tmp/native-fragments
.venv/bin/python tools/search_fragments.py --suite zero \
  --output /tmp/zero-fragments --promote 16 --exact-finalists 5 --target 284
.venv/bin/python tools/solve_quotient.py \
  --machine /tmp/zero-fragments/24d3d7667ba1fe4f/macro.tm \
  --certificate /tmp/zero-fragments/24d3d7667ba1fe4f/reduction.json \
  --target 283 --timeout 90 --output /tmp/zero-fragments/lower
```

Promotion to the Lean headline requires composing the source/liveness proof,
register-language invariant, actual new backend, fragment replacements, macros
and quotient against the unchanged arithmetic specification. The new generic
component lemmas do not supply that composition. See the
[formal acceptance contract](../../formal/ACCEPTANCE.md).

Raw solver, execution and console logs stay local. Versioned tables,
certificates, configurations, SMT inputs and structured reports follow the
[repository artifact policy](../../README.md#repository-artifacts-and-local-logs).
