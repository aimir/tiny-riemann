# Register liveness and arithmetic lowering: 285-state candidate

This experiment produced a **285-state, two-symbol candidate**, six states
smaller than the previous 291-state PC-layout result. It retains nine
registers and a 10-bit program counter. **It is not formally verified in
Lean.** The verified headline remains `machine295_correct` and its approved
arithmetic predicate is unchanged.

The candidate passes differential arithmetic tests and independent backend,
macro, reachability, and quotient checks. Unlike the preceding PC-layout
experiment, its primitive register operations change. No unbounded
source-to-register equivalence proof is claimed.

## Delivered candidate

- [285-state table](../register-local/d01c9264a0344463/final.tm)
- [Quotient certificate](../register-local/d01c9264a0344463/reduction.json)
- [Verification report](../register-local/d01c9264a0344463/verification.json)
- [Complete configuration and counts](../register-local/d01c9264a0344463/candidate.json)
- [Source program](../register-local/source.nql), identical to the 295-state source
- [Compiled table](../register-local/d01c9264a0344463/compiled.tm),
  [shortened table](../register-local/d01c9264a0344463/macro.tm), and
  [macro certificate](../register-local/d01c9264a0344463/macros.json)

| Stage | Earlier PC experiment | New candidate |
|---|---:|---:|
| Physical registers | 9 | 9 |
| PC width | 10 bits | 10 bits |
| Compiled states | 374 | 368 |
| After short-path replacement | 336 | 330 |
| Best of eight greedy merge orders | 297 | 290 |
| Exact quotient found | 291 | **285** |

The configuration specifies both the physical register order and the selected
lowering changes. Line selectors refer to the exact saved source; they only
enable transformations after the liveness and expression checks succeed.
The winning placement exchanges `num` and `_scratch_3` relative to the
295-state layout. Both `square()` calls are inlined using the previous
experiment's hybrid jump policy.

The final table SHA-256 is:

```text
2e733273b35e97e8eaf26fd4bdda85a55efa11aa898ff9f86ee301efbd008b89
```

## What worked

Whole-program liveness identifies five reads whose values can be consumed
without restoration:

| Assignment | Value consumed | Why it is dead afterward |
|---|---|---|
| `i = lcm` | old `lcm` | Replaced by the first harmonic deviation later |
| `lcm = num` | old `num` | The next harmonic call initializes `num` |
| `num = c * num` | `c` | Reassigned in the next main iteration |
| `denom = lcm * denom` | `lcm` | Reinitialized in the next main iteration |
| `denom = denom - num * x` | `num` | No subsequent read before reinitialization |

The main loop's backedge keeps `x` live; it cannot be consumed merely because
it has reached its last textual use. Calls and branches also participate in
the analysis. A sixth eligible consumption, of `denom` in the first deviation
calculation, made the resulting machine larger in the tested configurations.
Applying every locally valid optimization is therefore not the search policy.

## Other implementations and findings

[`register_lowering.py`](../../tools/register_lowering.py) adds opt-in
transformations without changing the vendored compiler or default compilation.
The analysis accepts parameter-free, nonrecursive programs containing the
supported assignments, comparisons, conditionals, loops, calls and returns;
unsupported constructs are rejected rather than analyzed incompletely:


- Interprocedural liveness with call expansion for analysis, fixed points at
  loops, and conservative unions at shared procedure bodies. Optional cloned
  call sites permit different live-outs for different calls.
- Scratch borrowing from dead global registers. Borrowed storage is cleared
  unless zero is established, and excluded if the statement reads or writes it.
  This includes depth-limited borrowing to replace only the last temporary.
- Forward zero/positive facts, branch refinement, removal of known-zero clears,
  and constant tests. An optional second analysis propagates zeros left by
  actual destructive reads, checked to be dead at the statement exit.
- Operand commutation to enable in-place multiplication, two-temporary squaring
  using the sum of odd numbers, and subtraction of a product without first
  materializing that product.
- Two coordinated harmonic kernels. One traverses a copy of `i` once for both
  products, at the cost of four temporaries. The other consumes old `num` and
  then old `denom`; each consumed denominator unit also increments the new
  numerator. It needs two temporaries and removes the separate denominator
  copy, although it still has two multiplication loops.

The shared-`i` kernel
[fully reduced to 324 states](../register-kernels/report.json). Eight-register
candidates were obtained. The best fully reduced one before
exact solving had **292 states**, using the second harmonic kernel and
propagated zero facts. Broad scratch borrowing, call-site specialization,
and the shared-`i` kernel generally introduced more distinct transfer and
control patterns. Fewer registers and fewer arithmetic operations did not
reliably imply fewer TM states. The winning 285-state candidate uses the
original arithmetic kernels with selective destructive reads.

## Search and reproduction

[`search_arithmetic.py`](../../tools/search_arithmetic.py) uses narrow-window
screening, then the complete eleven-window reachability reduction and eight
merge orders. It also promotes representative harmonic, eight-register, and
borrowing candidates even if their screening scores are worse. Exact solving
uses the same independently checked quotient encoding as the earlier search.
Timeouts remain unresolved; UNSAT applies only to that table, masks, and
quotient construction. Neither is a lower bound on equivalent Turing machines.

The [combined summary](summary.json) records **424 screening evaluations and
69 complete reductions** (including one repeat to fully reduce the shared-`i`
kernel). The sweep reports retain all configurations and scores; full tables are kept
for promoted candidates. The source is shared at each sweep's root.

| Sweep | Purpose | Report |
|---|---|---|
| Broad | Arithmetic, consumption, zero facts, borrowing, call specialization | [report](report.json) |
| Focused | Every subset of six eligible reads and four known-zero clears | [report](../register-focused/report.json) |
| Local | Register swaps, jump thresholds, and clear choices | [report](../register-local/report.json) |
| Allocation | Borrowing the exhausted loop register at selected scratch depths | [report](../register-allocation/report.json) |
| Facts | Propagating zeros left by consumed values | [report](../register-facts/report.json) |
| Second local | Neighbors of the 285-state configuration | [report](../register-local2/report.json) |
| Shared-`i` kernel | Full reduction of that kernel's best screened configuration | [report](../register-kernels/report.json) |

The saved 286-state quotient in the original physical placement has a fixed
285-state UNSAT result. Changing placement then yielded the 285-state machine
above. This is a concrete example of why a quotient bound cannot be generalized
to other compiler configurations. A second configuration using propagated
zero facts also reached 285 states. The winner's 284-state queries timed out
at [60 seconds](../register-exact/d01c9264a0344463/report.json) and
[180 seconds](../register-exact-long/report.json), so 284 remains unresolved.
The eight-register candidate's fixed query for
[285 returned UNSAT](../register-exact/23f0a3d9185b9e4c/report.json).

From the repository root, with Python requirements installed and Z3 available:

```sh
.venv/bin/python tools/test_register_lowering.py
.venv/bin/python tools/check_arithmetic.py \
  --candidate results/register-local/d01c9264a0344463

# Each search overwrites its named output; choose another path to retain these runs.
.venv/bin/python tools/search_arithmetic.py --promote 12 --exact-finalists 4
.venv/bin/python tools/search_arithmetic.py --suite focused \
  --output results/register-focused --promote 16 --exact-finalists 5
.venv/bin/python tools/search_arithmetic.py --suite local \
  --base results/register-focused/14ad147b1b9dc63d/candidate.json \
  --output results/register-local --promote 10 --exact-finalists 4 --target 285
.venv/bin/python tools/search_arithmetic.py --suite allocation \
  --output results/register-allocation --promote 8 --exact-finalists 2
.venv/bin/python tools/search_arithmetic.py --suite facts \
  --output results/register-facts --promote 8 --exact-finalists 3 --target 285
.venv/bin/python tools/search_arithmetic.py --suite local \
  --base results/register-local/d01c9264a0344463/candidate.json \
  --output results/register-local2 --promote 10 --exact-finalists 4 --target 284
```

The checker reproduces the compiled and macro tables byte for byte; tests
528 arithmetic cases, including arbitrary coordinated-step inputs and
zero-trip loops; checks all 1,024 dispatch prefixes and 2,048 counter updates;
compares physical register routines against the verified backend; and checks
the macro and quotient certificates independently. Z3 is not needed to check
a saved candidate. Two complete register-program iterations are also executed.

## Remaining proof work

Promotion requires an unbounded source-to-register simulation that permits
different values in dead registers and proves the liveness, temporary-zero,
and destructive-read obligations. It must connect to the same approved
arithmetic specification. The changed control graph, 10-bit backend, macro
replacements, reachability facts, and final quotient must then be checked and
composed in Lean. Regression tests and Python certificate checks do not supply
that theorem. The [formal acceptance contract](../../formal/ACCEPTANCE.md),
headline theorem, and proof-source pins remain unchanged.
