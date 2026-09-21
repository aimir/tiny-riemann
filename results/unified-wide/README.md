# Wider joint search: 16 retained candidates

This page records an earlier experiment. The latest independently checked
result is [278 states](../clique-target278/README.md); the
[fully Lean-verified headline](../../formal/README.md) remains 295 states.

This follow-up expands the [six-candidate search](../unified-beam/README.md)
to a beam of **16 distinct machine graphs**. It retains all three optimization
families and source mutations, scores survivors after complete reduction, and
applies SMT before selection. The verified Lean headline remains
`machine295_correct`; these compiler experiments do not supply a new
whole-machine proof.

## Result: 280 states

Three generations examined **331 configurations**, producing or reusing **115
complete reductions**. All 16 retained parents contributed offspring in every
generation. The best counts were **281, 281, 280**; the [artifact audit](audit.json)
checks the saved ancestry, configuration identities and quotient mappings.

The best [280-state table](fe4def10034af93f/final.tm) uses a 10-bit counter,
nine registers, packed main blocks, all eligible destructive reads and
propagated zero facts. The [configuration](fe4def10034af93f/candidate.json) starts
with six global registers; the three scratch registers are allocated afterward.
Its [source](fe4def10034af93f/source.nql) retains the original harmonic arithmetic.
The stages are **388 compiled → 338 macro → 284 greedy → 280 exact**.

The [independent verification](fe4def10034af93f/verification.json) checks the
arithmetic regressions, backend, register invariants, dispatch and reduction
certificates. A separate [packing check](fe4def10034af93f/packing-check.json)
checks primitive control equivalence. The machine SHA-256 is:

```text
289b3c0426763383cd21ebba97ab1819f72b4ccee527fd26a3b6d841e5755703
```

```sh
.venv/bin/python tools/check_fragments.py \
  --candidate results/unified-wide/fe4def10034af93f
.venv/bin/python tools/audit_unified.py results/unified-wide
```

A [longer exact query](46067991bb65ded1/long-exact/report.json) on the first
281-state candidate also found [280 states](46067991bb65ded1/long-exact/quotient-280.tm)
after 48 seconds. This supplemental result is kept separate so historical beam
counts remain reproducible. Its 279-state query timed out after 180 seconds;
the newer candidate's [279-state query](fe4def10034af93f/long-exact/report.json)
also remained UNKNOWN after 300 seconds. None of these timeouts proves a lower
bound. A subsequent [24-parent search and reordered solver](../clique-target278/README.md)
reached 278 states on different layouts. Clique-first ordering also found
[279 states for this run's best table](fe4def10034af93f/clique279/quotient-279.tm)
in 1.81 seconds; its [independent check](fe4def10034af93f/clique279/verification.json)
passes. The reordered 278 query is UNSAT for that fixed table and masks only.

## First improvement: 281 states

The first generation found a **281-state candidate**, improving the previous
282-state bound. It uses the packed-main layout from the earlier search, a new
physical register order, all eligible destructive reads, propagated zeros and
known-zero clear removal. Its source is a reformatted version of the existing
arithmetic program. The candidate itself does not select native fragments.

- [281-state table](46067991bb65ded1/final.tm),
  [source](46067991bb65ded1/source.nql), and
  [configuration](46067991bb65ded1/candidate.json)
- [Independent verification](46067991bb65ded1/verification.json) and
  [block-packing control equivalence](46067991bb65ded1/packing-check.json)
- [Compiled table](46067991bb65ded1/compiled.tm),
  [macro table](46067991bb65ded1/macro.tm),
  [macro certificate](46067991bb65ded1/macros.json), and
  [quotient certificate](46067991bb65ded1/reduction.json)

The stages are **390 compiled → 340 macro → 284 greedy → 281 exact**.
This larger macro table improves the final count, reinforcing the importance
of complete-reduction scoring. The initial 280-state query returned UNKNOWN after
30 seconds; the longer query above subsequently found a 280-state mapping.

The machine's SHA-256 is:

```text
b8976729b767d97b9e648c243e7cbd545ffe0ebcc8ac51112d5f42c77d8e9bc8
```

The independent checker reproduces the tables, runs 528 arithmetic cases,
checks 585 reachable dispatch prefixes and 2,048 counter updates, checks the
register invariant, and validates the macro and quotient certificates. The
additional packing check relates 240 primitive-control pairs for arbitrary
decrement outcomes. Generic native component proofs also compile, but the
full machine's source-to-register/refinement theorem remains outstanding.

```sh
.venv/bin/python tools/check_fragments.py \
  --candidate results/unified-wide/46067991bb65ded1
```

## Configuration

| Setting | Earlier run | Wider run |
|---|---:|---:|
| Retained candidates | 6 | 16 |
| Generations | 3 | 3 |
| Screened offspring per generation | 40 | 96 |
| Full reductions per generation | 12 | 24 |
| SMT finalists per generation | 4 | 8 |
| Timeout per SMT query | 25 seconds | 30 seconds |
| Independent full-reduction workers | 1 | 3 |

The wider run starts from the earlier run's 43 fully reduced configurations,
reproducing their tables and checking their saved quotient mappings before
reuse. Its [initial beam](initial-beam.json) has five 282-state layouts and
represents eight compiler families. The original seed set remains available.

The wider run increases the evaluation budget and starts from prior results,
so its outcome reflects these changes together with the larger beam. The
mutation and reduction algorithms retain the same objectives. Mutation
families rotate for every parent, including beam widths divisible by five.

Full reductions run in separate processes, each writing its own candidate
directory. Screening and SMT remain sequential. Sequential/parallel regression
checks compare final tables and certificates byte for byte. A duplicate seed
cannot overwrite a better saved quotient. Each candidate and query remains
subject to the existing checks; parallelism does not change the acceptance
criteria or the Lean proof boundary.

## Reproduce

From the repository root, with Python dependencies and Z3 installed:

```sh
.venv/bin/python tools/test_search_unified.py
.venv/bin/python tools/search_unified.py \
  --output /tmp/riemann-unified-wide --seed-pool results/unified-beam \
  --generations 3 --beam 16 --offspring 96 --promote 24 \
  --exact-finalists 8 --exact-seconds 30 --workers 3 --seed 282016
.venv/bin/python tools/audit_unified.py /tmp/riemann-unified-wide
```

Use a fresh output directory. Set `--workers 1` for sequential full reductions.
The run retains source and configuration metadata for screened candidates,
complete tables and certificates for reduced candidates, generation ancestry,
and solver queries with structured result summaries. Raw solver transcripts
remain local. UNKNOWN is unresolved; UNSAT applies
only to the particular quotient constraints, never to equivalent Turing
machines in general.

Raw solver, execution and console logs stay local. Versioned tables,
certificates, configurations, SMT inputs and structured reports follow the
[repository artifact policy](../../README.md#repository-artifacts-and-local-logs).
