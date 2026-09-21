# Joint multigeneration optimization search

This page records an earlier experiment. The current
[278-state primary result](../clique-target278/README.md) is the
[fully Lean-verified headline](../../formal/README.md).

This search combines all three compiler experiments: program-counter layout,
register liveness/arithmetic lowering, and invariant-guided fragment replacement.
It also mutates source padding, expression order and procedure boundaries.
The approved arithmetic specification is unchanged. The current Lean headline
is the later primary 278-state machine; this report concerns the 282-state search.

## Results

The [three-generation run](report.json) screened **127 configurations**: seven
seeds and 40 offspring per generation. It performed **36 new complete
reductions** and reused seven earlier reductions after checking exact table
identity and their quotient mappings. It issued 31 SMT queries: 19 SAT, 11
UNKNOWN and one UNSAT. Each generation drew from all six beam parents.

The best count in this six-parent run was **282 states**. The joint search found additional
282-state constructions but did not improve the count from phase 3. The
281-state attempts in this run remained unresolved; no minimality claim is made.

| Configuration | Compiled | Macro | Best greedy | Saved quotient |
|---|---:|---:|---:|---:|
| [Inherited phase-3 result](c74e36d8be5aafc3/candidate.json) | 366 | 327 | 287 | 282 |
| [Procedure extraction](4ae1d87a93d56197/candidate.json) | 366 | 327 | 287 | 282 |
| [Another register placement](5e96606d02a0c224/candidate.json) | 366 | 327 | 287 | 282 |
| [Extraction plus harmonic inlining](fb92e7de11dc705e/candidate.json) | 366 | 327 | 285 | 282 |
| [Packed main blocks and register facts](4d6764b4229bed0e/candidate.json) | 381 | 339 | 286 | 282 |

The last two rows illustrate why final-count scoring matters: equal macro
counts can merge differently, and a larger macro table can reach the same
smallest quotient. The table also includes a chain of mutations across
generations, rather than independent sweeps from a single fixed incumbent.

The [artifact audit](audit.json) checks all 127 configuration identities,
ancestry, retained counts and 43 quotient mappings. The pool contains 16 source
variants, 33 PC-layout configurations, 27 lowering configurations, 29 fragment
configurations and 32 register orders.

The [new harmonic-inlining table](fb92e7de11dc705e/final.tm) has its own
[source](fb92e7de11dc705e/source.nql),
[configuration](fb92e7de11dc705e/candidate.json),
[macro certificate](fb92e7de11dc705e/macros.json),
[fragment certificate](fb92e7de11dc705e/phases.json),
[quotient certificate](fb92e7de11dc705e/reduction.json), and
[independent verification report](fb92e7de11dc705e/verification.json).
It passes 528 arithmetic cases, native-fragment regression checks, 631 dispatch
prefix checks, 2,048 counter updates, a 243-pair zero-replacement bisimulation,
and independent macro/quotient checking. Generic Lean component proofs compile
with only the permitted axioms. This still does not establish the whole
candidate's unbounded source-to-register/RH-related theorem.

## Search policy

[`search_unified.py`](../../tools/search_unified.py) maintains six candidates
across three generations, with 40 screened offspring and up to 12 complete
reductions per generation. Each generation draws from multiple parents.
Occasional mutations combine two choices, allowing interactions that a sequence
of single-winner sweeps could miss.

Cheap screening uses narrow-window reachability and a greedy quotient. It
only decides which candidates to promote. Every survivor has gone through the
complete eleven-window reduction and eight merge orders, or has inherited an
identical already-reduced table and checked quotient. Up to four diverse
promoted candidates receive SMT queries **before** survivor selection. Successful
queries descend further; UNKNOWN and UNSAT never discard a saved quotient.
The scores are actual feasible final counts, not claims of optimal quotients.

The best half of the beam is retained by final count. Remaining slots favor
the best candidates from compiler categories not yet represented, within a
25-state penalty. Categories include arithmetic kernels, borrowing, native
fragments, register facts, packed blocks and zero-call replacements. The search
also deduplicates isomorphic transition graphs before promotion and selection.
It preserves the best candidate throughout; a timeout cannot replace a known
282-state bound with the larger greedy count.

The initial pool includes the 282-state fragment result, two 285-state arithmetic
configurations, a second fragment configuration, the 291-state PC result, and
previously rejected eight-register and shared-`i` harmonic kernels. This gives
arithmetic variants another chance under the joint objective. The shared-`i`
seed is retained in the report even when its count excludes it from the beam.

## Mutation dimensions

- Physical register order, including allocation without preallocating discarded
  scratch registers when experimenting with borrowing or harmonic kernels.
- PC jump policies and thresholds, per-procedure policies, individual jumps,
  block packing/placement, whole-procedure and individual-call inlining.
- Destructive reads, zero/positive facts, consumed-zero propagation, scratch
  borrowing, operand commutation, specialized squaring/subtraction and both
  coordinated harmonic kernels.
- Native clear/test choices, register-boundary read restrictions, reachable-PC
  pruning, and subsets of whole calls whose input is always zero.
- Source no-op padding, commutative operands, independent assignment order,
  extraction of procedure bodies and inlining of extracted procedures.

Source-line selectors are removed when source formatting changes; all enabled
transformations still require the existing liveness/zero eligibility checks.
The five-read incumbent has an equivalent name-based consumption configuration,
checked to reproduce its compiled table byte for byte. Every candidate stores
its own source and complete configuration. Source/layout mutations rediscover
eligible zero-call sites, retaining only selected sites still proved safe.
Those replacements also pass the register-level bisimulation check before
promotion. Unsupported or unproved combinations are recorded as rejected.

## Reproduction and checks

Run from the repository root, with the Python requirements and Z3 installed:

```sh
.venv/bin/python tools/test_search_unified.py
.venv/bin/python tools/test_search_final.py
.venv/bin/python tools/search_unified.py --output /tmp/riemann-unified \
  --generations 3 --beam 6 --offspring 40 --promote 12 \
  --exact-finalists 4 --exact-seconds 25 --seed 282003
```

Use a fresh output directory. The search records generation-by-generation
survivors and ancestry, actual final counts, solver outcomes and rejected
combinations. Complete artifacts remain for fully reduced candidates;
other screened candidates retain source and configuration metadata.
The [artifact audit](../../tools/audit_unified.py) independently checks candidate
identities, ancestry across generations, retained bounds and all saved quotient
mappings:

```sh
.venv/bin/python tools/audit_unified.py results/unified-beam
```

Saved-candidate checking does not require Z3:

```sh
.venv/bin/python tools/check_fragments.py \
  --candidate results/unified-beam/fb92e7de11dc705e
```

The tests exercise all five mutation families, certificate inheritance,
deduplication without changing ancestry, selection by final rather than macro
count, and retaining previous bounds across unknown solver answers.
The current formal theorem is `machine278_correct`. Generic native
fragment proofs and Python certificates do not supply the full new-machine
source/backend/refinement theorem; see [formal/README.md](../../formal/README.md).

A supplementary [281-state query](../unified-challengers/a8827bf4535cea54/report.json)
checks a promising jump-threshold variant outside the per-generation SMT
shortlist. It returned UNKNOWN after 60 seconds; no quotient bound is inferred.
Its [provenance](../unified-challengers/a8827bf4535cea54/provenance.json) identifies
the exact candidate and reason for the follow-up.

Raw solver, execution and console logs stay local. Versioned tables,
certificates, configurations, SMT inputs and structured reports follow the
[repository artifact policy](../../README.md#repository-artifacts-and-local-logs).
