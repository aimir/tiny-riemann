# Construction and correctness of the 295-state machine

This guide explains the arithmetic, compilation, and reductions behind the
current [295-state transition table](machine/riemann295.tm). The complete
[Lean verification](formal/README.md) proves:

```lean
theorem machine295_correct :
    HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n
```

The proof checks the literal table, tape backend, and reduction certificates
without trusting the compiler or solver. The [verification contract](formal/ACCEPTANCE.md)
defines the exact predicate and execution semantics. Its mathematical
equivalence to RH remains outside the formal proof's scope.

The current construction has 381 compiled states, 342 after short-path
replacements, and 295 after the exact quotient. The earlier 299- and 297-state
machines use a different physical register allocation; their proofs remain
available. All counts exclude the separate halting state.

## 1. The predicate computed by the original program

Write

* `L(x) = lcm(1, ..., x)`;
* `H(n) = sum(1/j, j=1,...,n)`;
* `D(n) = n!` and `P(n) = D(n) H(n)`.

All register values are nonnegative integers, and subtraction in NQL is
**saturating**: `a - b` means `max(a-b, 0)`.

Set `A = max(P(L(x)) - x D(L(x)), 0)`. Inspection of the original program shows
that it halts precisely upon finding an integer `x >= 254` satisfying

```
A^2 D(x)^4 > x D(L(x))^2 P(x)^4.                       (1)
```

Equivalently, `max(H(L(x))-x,0)^2 > x H(x)^4`. The smaller machine preserves
this predicate and the search for a witness. Its connection to the Riemann
hypothesis is inherited from the original construction; no claim here settles
the Riemann hypothesis.

## 2. Removing the initial cutoff

For every integer `m >= 1`,

```
H(m) <= 1 + ceil(log2(m)).
```

To see this, extend the sum to `H(2^k)`, with `k=ceil(log2(m))`. Each of the
`k` blocks `2^(j-1)+1, ..., 2^j` has `2^(j-1)` terms, each at most
`1/2^(j-1)`, so contributes at most one. For `m=1`, the bound is exact.

The independent Python checker computes `L(x)` and `H(x)` exactly, for
**every** `1 <= x <= 253`, and checks

```
max(1 + ceil(log2(L(x))) - x, 0)^2 <= x H(x)^4.
```

The logarithm is obtained without floating point as `(L(x)-1).bit_length()`.
All 253 inequalities hold using rational arithmetic. Monotonicity of
`max(t-x,0)^2` proves that none of these extra inputs can cause a halt.

The Lean proof does not assume that Python result.
[`Cutoff.lean`](formal/RiemannMachineVerification/Cutoff.lean) checks the cases
below 16 directly and uses kernel-checked LCM bounds for 16 through 253:
`L(x) <= 2^(x + floor(x/2) + 1)`. Together with `H(x) >= H(16) >= 3`, these
bounds prove `no_counterexample_below_cutoff`. The theorem `cutoff_removal`
then justifies searching from 1 while keeping `254 <= n` in the specification.

## 3. Computing the LCM with fewer operations in the program

For fixed `x >= 1`, test positive candidates `lcm=1,2,...` against divisors
`i=x,x-1,...,1`. To test a divisor, initialize `num=lcm` and `denom=0`.
Decrement `num` to zero; before each paired decrement of `denom`, reset
`denom` to `i` when it is zero. After `lcm` repetitions,

```
denom = 0                         if i divides lcm,
denom = i - (lcm mod i)            otherwise.
```

On failure, increase `lcm` and restart at `i=x`. On success, decrease `i`.
The first candidate passing all tests is exactly `L(x)`. The search terminates
for each `x`, since `x!` is a candidate that passes. This saves program states
at a substantial runtime cost, which is intentional for this task.

[`LcmSearch.lean`](formal/RiemannMachineVerification/LcmSearch.lean) proves this
using `lcmSearch_initialized`.

## 4. One harmonic-sum routine

The shared routine starts with `(num,denom)=(0,1)`. For `i=n,n-1,...,1`, it
performs

```
num   <- num*i + denom
denom <- denom*i
```

using the old `denom` in the first assignment. The represented rational value
increases by `1/i` at each step. Thus its result is `(P(n),D(n))`. The order
of summation differs from the original routine, but the final denominator is
the same factorial and the rational sum is identical, so the integer
numerator is also identical. Each call terminates.

[`HarmonicLoop.lean`](formal/RiemannMachineVerification/HarmonicLoop.lean)
proves `harmonicLoop_initialized` and connects the final integer comparison
to the rational inequality through `arithmeticTail_positive_iff`.

## 5. Reusing registers and sharing squaring

The new program first evaluates `H(L(x))`, subtracts `x` using saturating
subtraction on the numerator, and saves the pair `(A,D(L(x)))` in registers
whose prior values are no longer needed. It then evaluates `H(x)` and uses
the same pair-squaring routine twice. At the final comparison its two
registers have the exact values

```
num   = P(x)^4 D(L(x))^2
denom = D(x)^4 A^2.
```

It then performs the saturating subtraction `denom = denom - num*x` and
halts if `denom > 0`. This is exactly the test `denom > num*x` on the prior
values, and hence exactly (1). This identity also handles `A=0`. It uses no
division, approximation, or sign assumption.

Each outer iteration is finite. The compiled program repeats `main` when it
reaches the end; an explicit `return` from `main` halts. The theorem
`compiled_cycle`, followed by `macro_correct`, proves that the literal logical
register program searches successive positive integers and halts precisely
when the approved predicate has a witness. The argument above also explains
agreement with the original source program; the formal theorem does not
assert literal equivalence to the original 744-state transition table.

## 6. Source layout and optional compiler rules

The combined search varies commutative operand order, adjacent assignments
without read/write dependencies, no-op padding, procedure boundaries, and
physical register placement. Padding lets more instruction-dispatch subtrees
coincide; it does not affect register values or termination. Search candidates
do not automatically inherit a formal proof: the selected table is checked
through the complete proof chain.

`tools/optimized.py` provides opt-in local rules:

* `canonical_temps` selects a free temporary register in a fixed order. A
  freed temporary is zero under the upstream compiler's register contract.
* `inplace` writes an expression directly to its destination when the
  destination is not an input, or applies an equivalent in-place addition,
  multiplication, or saturating subtraction with independent operands.
* `consume` replaces a preserved read of an overwritten value with a transfer
  only when that read occurs once, outside a repeatedly evaluated operand.
* `fused_decrement` combines `while (r>0)` with a body decrement when all
  statements before that decrement neither inspect nor modify `r` and cannot
  return or break. The successful conditional decrement executes the body
  once and leaves the same value of `r`.
* `halt_on_positive`, when selected, uses a conditional decrement immediately
  followed by halt to implement a positive-register test that returns from
  `main`. On the halting branch the final register value may differ by one;
  there is no further computation, and the halting predicate is unchanged.

Only options explicitly present in the [compilation input](machine/riemann295.nql)
apply to this machine. Its explicit [register layout](machine/riemann295.layout.json)
is also required for reproduction. The original compiler sources are vendored
without modification; the wrapper enables the local rules. The regression
suite also reproduces the original 744-state transition table exactly.

## 7. Register allocation and the tape backend

The winning candidate exchanges zero-based physical slots 4 and 6, holding `_Gdenom`
and `_scratch_2`. The arithmetic and all 2,048 logical primitive instructions
and 2,048 macro instructions are unchanged. The nine register positions on
tape change, which changes dispatch transitions and creates better merging
opportunities later.

The [`Reallocated` proof modules](formal/RiemannMachineVerification/Reallocated)
check the new 381-state backend, including all dispatch cases, binary counter
updates, register operations, and growth of tape storage. The resulting
`Reallocated.machine381_iff_primitive` connects this literal tape machine to
the already verified logical program. Intermediate state names are normalized
by the bijection in [proof-inputs.json](machine/riemann295.proof-inputs.json);
this is separate from the physical register permutation.

## 8. Exact replacement of short transition sequences

Before state merging, the reducer looks for short odd-length paths that have
the same effect as a single permitted Turing-machine transition. For each
starting state and read symbol, it symbolically branches on every newly read
neighboring cell. A replacement is accepted only if every possible path has
the same target state and net head move (exactly one cell left or right),
changes no cell other than the starting cell, writes the same symbol there,
and does not halt before the end of the path.

The independent checker instead enumerates every assignment to all tape cells
that could be inspected during the short path. It checks all of these
conditions explicitly. Thus these replacements hold for **every tape**, not
just the blank-tape execution. Each new step simulates a positive, finite
number of original steps. This preserves halting and nonhalting in both
directions. Graph-unreachable states can then be deleted, and exact
transition bisimulation can merge further states.

For this construction, 85 replacements reduce 381 states to 342. The
independent checker tests 1,360 tape windows. The Lean theorem
[`Reallocated.machine381_iff_machine342`](formal/RiemannMachineVerification/Reallocated/MacroCorrectness.lean)
separately checks the finite local equations and proves the unbounded halting
equivalence.

## 9. Reachability and exact quotient solving

An abstract configuration consists of an original control state and a finite
tape window centered at the head. Initially the state is `!ENTRY` and every
window bit is zero. For each transition, the analysis writes and moves just
as the machine does, then admits **both** possibilities for the newly exposed
boundary cell. Thus its reachable configurations overapproximate every
concrete configuration of the blank-tape run, however long that run is.

If an original state never reads a particular symbol in this analysis, that
transition is unreachable in the actual run. Several window shapes can be
used sequentially, restricting later passes only with masks already proved
by earlier passes. The certificate records every pass; there is no assumed
circular invariant.

The greedy reducer merges compatible states in a chosen order. The exact
solver instead chooses the entire partition at once, subject to compatible
transitions and equality of successor classes. For the new layout, the best
of the eight greedy seeds gave 299 states, while exact solving reached 295.

Both methods produce the same kind of certificate. It supplies
a mapping `f` from original states to reduced states, with
`f(!ENTRY)=!ENTRY` and `f(HALT)=HALT`. The independent verifier recomputes
the abstract reachability passes and checks, for every permitted original
transition `q --[read/write,move]--> r`, the exact equation

```
delta_reduced(f(q),read) = (write,move,f(r)).
```

Induction on concrete execution steps proves equal tape contents, equal head
positions, and the state correspondence `f` throughout the actual run. In
particular, halting occurs in one machine if and only if it occurs in the
other. Filling an unreachable transition with an arbitrary existing
transition cannot invalidate this induction.

The verifier's implementation of abstract reachability is separate from the
reducer's. Concrete lockstep simulation is an additional regression check,
not the justification for the unbounded conclusion.

For the current table, four Lean invariant stages establish the read masks.
[`Reallocated.machine342_iff_machine295`](formal/RiemannMachineVerification/Reallocated/Quotient295.lean)
checks the quotient equations and proves halting equivalence. Z3's answer
is not an assumption. Composing this with the macro, backend, register, and
arithmetic results gives
[`machine295_correct`](formal/RiemannMachineVerification/Correctness295.lean),
selected by the default [headline theorem](formal/RiemannMachineVerification/Headline.lean).

## Limit of the result

This construction establishes a smaller upper bound. It does not prove the
state count globally minimal, nor decide whether the machine eventually
halts. Runtime and tape usage are enormous and were not optimization targets.
The query for a 294-state quotient timed out, so that target remains unresolved.
The earlier UNSAT result for 296 applies only to the older table, read masks,
and quotient construction. See the [combined search report](results/combined-beam/README.md)
for saved queries and reproduction commands.

A subsequent [program-counter experiment](results/pc-layout/README.md) found
a 291-state candidate by fitting the program into a 10-bit counter. That
candidate has independent Python checks but is not yet part of the Lean proof
described here. The timeouts and quotient bounds above concern the earlier
295-state construction, not all later layouts.

The following [register-liveness and arithmetic experiment](results/register-lowering/README.md)
reached 285 states using five destructive reads of dead values and another
physical register placement. It also tested borrowing dead globals, known-zero
clears, eight-register variants, and coordinated harmonic arithmetic. Its
arithmetic lowering has differential tests, with independent checks of the
backend and reductions, but no unbounded source-to-register theorem. The
285-state candidate therefore does not replace the formally verified result.

The third [register-invariant and fragment experiment](results/fragments/README.md)
reached 282 states by replacing three entire calls proved to have zero inputs.
It adds an independent register-level bisimulation check and generic Lean
proofs for native clear/test cores. Native-kernel variants were larger; the
zero-call replacements produced the improvement. The 281-state fixed quotient
query timed out after 90 seconds. The whole new machine still lacks the Lean
refinement theorem and does not replace the verified 295-state headline.

The subsequent [joint multigeneration search](results/unified-beam/README.md)
combines all three compiler experiments and source mutations, ranking survivors
by completed reductions and applying SMT before selection. Three generations
screened 127 configurations and produced or reused 43 reductions. Additional
282-state layouts were found, including a 339-state macro table that reduced
to 282. The count did not improve beyond phase 3. Saved ancestry and quotient
mappings pass an independent artifact audit; the new harmonic-inlining
candidate also passes the backend, register-control and reduction checks.
The full new-machine Lean theorem remains outstanding.


The [wider joint search](results/unified-wide/README.md) retains 16 parents,
examines 331 configurations over three generations, and produces or reuses
115 complete reductions. It reaches **280 states** using packed main blocks,
a 10-bit program counter, all eligible destructive reads and a new physical
register order. Complete-reduction scoring and exact solving precede survivor
selection. Independent backend, invariant, macro and quotient checks pass;
the verified Lean headline remains the 295-state machine. Longer exact
queries, larger tape windows and longer transition contractions are recorded
with the search artifacts and do not establish a lower bound.


A further [24-parent search and clique-first refinement](results/clique-target278/README.md)
reach **278 states**, 466 fewer than the original 744 (62.63%). Both selected
candidates compile to 389 states, simplify to 339, and have a best greedy count
of 283 before the 278-state SMT quotient. The key solver change places mutually
incompatible states first, making more representative-count terms constant.
It only reorders variables; it does not add assumptions or exclude partitions.
Both resulting mappings pass the independent unbounded reduction checker.
The primary source is identical to the accepted arithmetic source after
removing padding and formatting. Destructive lowering, packed control and
changed dispatch still need full Lean refinements before this machine can
replace the verified headline.

The 24-parent and local-neighborhood runs were stopped after the supplemental
278-state results passed their checks. Their checkpoints distinguish completed
reductions from unfinished generation selection. They are not presented as
completed three-generation runs. Earlier beam counts and artifacts remain
unchanged by the supplemental solver results.
