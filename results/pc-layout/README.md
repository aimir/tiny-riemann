# Program-counter and dispatch experiment: 291 states

This page records an earlier experiment. The latest independently checked
result is [278 states](../clique-target278/README.md); the
[fully Lean-verified headline](../../formal/README.md) remains 295 states.

The first PC-layout experiment produced a **291-state, two-symbol candidate
with a 10-bit program counter**, four states smaller than the verified
295-state machine. The candidate has passed the independent Python checks
below. **It has not been proved in Lean.** The default theorem and smallest
Lean-verified result remain `machine295_correct`. The later
[register-liveness experiment](../register-lowering/README.md) improves the
experimental count to 285; this page records the preceding PC-only phase.

## Delivered candidate

- [291-state table](../pc-exact/7efbaa9d505034b3/quotient-291.tm)
- [Quotient certificate](../pc-exact/7efbaa9d505034b3/quotient-291.certificate.json)
- [Independent verification report](../pc-exact/7efbaa9d505034b3/verification.json)
- [Compiler layout configuration](7efbaa9d505034b3/candidate.json)
- [Compiled table](7efbaa9d505034b3/compiled.tm), [shortened table](7efbaa9d505034b3/macro.tm),
  and [macro certificate](7efbaa9d505034b3/macros.json)
- [Source](source.nql) and [unchanged register placement](registers.json)

The final table's SHA-256 is:

```text
e5c4375b41608febc7dd0cb44a4880bd4777db5a7972c170b4540fc5a5aca0af
```

| Stage | Verified baseline | Experimental layout |
|---|---:|---:|
| PC width | 11 bits | 10 bits |
| Compiled states | 381 | 374 |
| After macro replacements | 342 | 336 |
| Best of eight greedy merge orders | 299 | 297 |
| Exact quotient found | 295 | **291** |

## What changed

The old layout allocates 853 slots before alignment, including its 16
initialization instructions. Alignment pushes the occupied extent to 1,064
slots, requiring an 11-bit counter and rounding the whole program to 2,048
addresses. Four 128-slot procedure calls account for much of the alignment
cost.

The winner expands both calls to `square()` into their instruction blocks
before assigning addresses. This changes no arithmetic operation or register
allocation. The resulting main program occupies 920 slots, fitting a 10-bit
counter. It uses relative-addition jumps except where a suffix replacement
needs to overwrite at most one counter bit. A pure relative-jump version has
373 compiled states; the selected hybrid has 374. Candidate selection uses
the complete reduction pipeline and exact solving, not just that raw count.

[`pc_layout.py`](../../tools/pc_layout.py) also implements selective call-site
inlining, basic-block placement with explicit branch preservation, per-procedure
jump policies, and overrides for individual jump sites. These are compiler
layout choices, rather than source padding. The vendored compiler and the
verified machine artifacts are unchanged.

## Search coverage and limits

Three sweeps evaluated **246 configurations**, with 32 complete reductions:

| Sweep | Screened | Fully reduced | Exploration |
|---|---:|---:|---|
| [Broad](report.json) | 92 | 12 | Inlining, packing, jump families, random layouts |
| [Focused](../pc-focused/report.json) | 40 | 10 | Individual calls and per-procedure jump policies |
| [Local](../pc-local/report.json) | 114 | 10 | Individual jump choices around a leading layout |

Promoted candidates use the same eleven reachability passes and eight merge
seeds as the earlier search. Screened candidates retain their configuration,
checks, and scores in `candidate.json`; only promoted candidates retain full
machine tables and certificates. Each sweep stores its shared source and
register order at its root. Use `--keep-screened` to keep every table in a new run.

All three leading broad-sweep candidates admitted 291-state quotients.
A [longer query](../pc-long-exact/report.json) returned UNSAT for 290 in about
98 seconds for the selected candidate's fixed table, read masks, and partition
encoding. This is a Z3 result, not a Lean-certified lower bound, and does not
rule out other layouts or equivalent machines with 290 states. Other 290-state
queries timed out. The local sweep did not find a smaller candidate.

The useful gain came from removing procedure-alignment overhead. Inlining
only the first `square()` call still required 11 bits; inlining both allowed
10. Arbitrary block permutations and long suffix-writing jumps generally
increased the number of distinct transitions. This sweep provides no evidence
that ten bits alone, or aggressive packing alone, minimizes the final machine.

## Independent correctness checks

From the repository root, with the existing Python dependencies installed:

```sh
.venv/bin/python tools/test_pc_layout.py
.venv/bin/python tools/check_pc.py \
  --candidate results/pc-layout/7efbaa9d505034b3 \
  --machine results/pc-exact/7efbaa9d505034b3/quotient-291.tm \
  --certificate results/pc-exact/7efbaa9d505034b3/quotient-291.certificate.json
```

Z3 is unnecessary for these checks. The checker:

1. Reproduces the candidate's compiled and shortened tables byte for byte and
   matches its reference backend to the existing verified table.
2. Checks a 268-pair relation between primitive control graphs, following
   silent jumps and comparing both outcomes of every decrement. This covers
   arbitrary register values and control paths, not just sample iterations.
3. Executes all 1,024 PC prefixes and both counter updates for every value
   (2,048 counter cases).
4. Checks a 42-pair transition bisimulation between the register routines and
   the reference backend, with counter-update entries as boundaries.
5. Independently checks 80 macro replacements over 1,280 tape windows and
   the complete reachability/quotient certificate.

The regression suite checks 50 branching, looping, and early-return layouts
and rejects deliberately incorrect control flow, dispatch, and counter behavior.
These checks give reproducible evidence; they are **not a substitute for the
Lean theorem required to promote the candidate**.

## Reproduce the search

Install the repository's Python requirements and provide a `z3` executable.
The saved solver runs used Z3 4.14.1. These commands overwrite the named result
directories; use different output paths to preserve the saved run.

```sh
.venv/bin/python tools/search_pc.py \
  --random 12 --promote 12 --exact-finalists 3 --exact-seconds 60

.venv/bin/python tools/search_pc.py --suite focused \
  --promote 10 --exact-finalists 0 --output results/pc-focused

.venv/bin/python tools/search_pc.py --suite local \
  --base results/pc-layout/b4bc620665a40432/candidate.json \
  --promote 10 --exact-finalists 3 --target 290 --exact-seconds 60 \
  --output results/pc-local

.venv/bin/python tools/solve_quotient.py \
  --machine results/pc-layout/7efbaa9d505034b3/macro.tm \
  --certificate results/pc-layout/7efbaa9d505034b3/reduction.json \
  --target 293 --minimum 285 --timeout 60 \
  --output results/pc-exact/7efbaa9d505034b3

.venv/bin/python tools/solve_quotient.py \
  --machine results/pc-layout/7efbaa9d505034b3/macro.tm \
  --certificate results/pc-layout/7efbaa9d505034b3/reduction.json \
  --target 290 --minimum 289 --timeout 180 --output results/pc-long-exact
```

## Remaining Lean proof work

The previous 295-state improvement preserved the logical PC program. This
experiment changes both its addresses and the physical counter width, so its
proof cannot be inherited merely by swapping the final transition table.
Promotion requires:

- A progressing simulation in Lean for the control-graph correspondence,
  connecting the relocated program to the existing arithmetic proof.
- The 10-bit dispatcher/counter proofs and a checked connection for the
  unchanged register routines.
- The new macro, reachability, and 336-to-291 quotient proofs, composed into
  the same approved arithmetic specification.

The saved finite checks provide inputs for those proof obligations. The
[verification contract](../../formal/ACCEPTANCE.md), current theorem, and
acceptance pins remain unchanged. Register-liveness allocation and specialized arithmetic lowering are investigated
in the [following experiment](../register-lowering/README.md). Stronger phase
invariants with larger fragment replacement are still a separate direction.

Raw solver, execution and console logs stay local. Versioned tables,
certificates, configurations, SMT inputs and structured reports follow the
[repository artifact policy](../../README.md#repository-artifacts-and-local-logs).
