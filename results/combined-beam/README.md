# Combined layout search and exact quotient solving

This page records an earlier experiment. The current
[278-state primary result](../clique-target278/README.md) is the
[fully Lean-verified headline](../../formal/README.md).

This experiment produced the **295-state machine**, preserved with its
[complete Lean theorem in Git](../../formal/ACCEPTANCE.md#earlier-verified-results).
The [literal table](../../machine/riemann295.tm) is formally proved to halt
exactly when the unchanged arithmetic counterexample predicate has a witness.
Use the archived checkout described at that link to recheck the 295-state proof.
The [construction guide](../../CONSTRUCTION.md) explains the arithmetic and
tape reductions, and the [verification contract](../../formal/ACCEPTANCE.md)
states the unchanged specification.

## Search and result

The search keeps a diverse beam, cheaply screens mutations, then evaluates
promising candidates through all eleven reachability passes and eight greedy
merge seeds. Three finalists per generation receive exact quotient queries
**before** beam selection. Decisive solver results are reused only when the
entire SMT query agrees apart from the timeout and a local solver transcript
is available. Raw transcripts are not distributed. Unknown results are not cached.

Two generations screened 80 mutations and saved 80 distinct candidate
artifacts. Fourteen candidates received complete reductions, and six finalist
queries were submitted to the exact-solver stage, including cache hits.
The initial sources included earlier arithmetic variants. Mutations varied
physical register placement, expression order, independent assignments,
procedure boundaries, and padding.

Candidate [`633541de8e59b7af`](633541de8e59b7af) exchanges the physical slots
of `_Gdenom` and `_scratch_2`. Its arithmetic source and all 2,048 logical
primitive and macro instructions remain unchanged. Its fully reduced greedy
count was 299, but exact solving found 296. A procedure-extraction descendant
has the same constraint problem and reused that result.

The [extended exact search](../combined-296-exact/report.json) found **295**
in about 12 seconds. The query for 294 timed out after 90 seconds; it remains
unresolved. Neither that timeout nor the earlier UNSAT result for a different
table establishes a lower bound for this machine.

The structured [beam report](report.json) records its own 296-state result. The later
295-state table and certificate are saved separately in
[`combined-296-exact`](../combined-296-exact), preserving the experiment history.

## Reproduce the search

From the repository root, install `requirements.txt` in `.venv` and provide a
`z3` executable (the saved run used Z3 4.14.1):

```sh
.venv/bin/python tools/search_final.py \
  --sources machine/riemann.nql candidates/macro-layout-second.nql candidates/xfirst-1101-halt.nql \
  --rounds 2 --beam 6 --offspring 40 --promote 6 --seed 296 \
  --exact-finalists 3 --exact-seconds 60 --output results/combined-beam

.venv/bin/python tools/solve_quotient.py \
  --machine results/combined-beam/633541de8e59b7af/macro.tm \
  --certificate results/combined-beam/633541de8e59b7af/reduction.json \
  --target 295 --minimum 293 --timeout 90 --output results/combined-296-exact
```

These commands overwrite their result directories. Solver versions, timing,
and available cached decisive queries can affect the discovered partition.
Saved mappings can be checked without rerunning the search or installing Z3.

## Check the delivered machine

```sh
.venv/bin/python tools/check_reallocated.py
.venv/bin/python tools/test_search_final.py
.venv/bin/python tools/test_solve_quotient.py
```

The independent construction checker reproduces all three tables byte for
byte, checks 85 macro replacements over 1,360 exhaustive tape windows, and
checks the reachability and 342-to-295 quotient certificate. The solver test
compares against every partition of 72 small examples. The search test covers
explicit register placement, cached SAT-model replay, and unresolved queries.

The archived Lean proof separately checks the changed backend, all dispatcher and
counter cases, short-path replacements, four reachability invariant stages,
and quotient equations. It reuses the unchanged arithmetic proof. Python
checks and solver answers are not assumptions of that theorem.

The [proof inputs](../../machine/riemann295.proof-inputs.json) record the
register order and intermediate state-name normalization. The archived `formal/tools/generators/generate_reallocated.py` reproduces that
proof from the saved candidate and mapping. It is available in the same Git
commit as the proof; checking it requires no regeneration.

Raw solver, execution and console logs stay local. Versioned tables,
certificates, configurations, SMT inputs and structured reports follow the
[repository artifact policy](../../README.md#repository-artifacts-and-local-logs).
