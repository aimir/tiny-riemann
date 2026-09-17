# Why the smaller machine has the same blank-tape halting behavior

This is a mathematical correctness argument with executable checks. It is not
a proof formalized in a proof assistant. The original NQL compiler and the
stated local lowering rules remain part of the trusted implementation. The
final transition-table reduction has a separately checked, unbounded simulation
certificate.

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

The verifier computes `L(x)` and `H(x)` exactly, for **every** `1 <= x <= 253`,
and checks

```
max(1 + ceil(log2(L(x))) - x, 0)^2 <= x H(x)^4.
```

The logarithm is obtained without floating point as `(L(x)-1).bit_length()`.
All 253 inequalities hold using rational arithmetic. Monotonicity of
`max(t-x,0)^2` proves that none of these extra inputs can cause a halt.

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

Each outer iteration is finite. The NQL compiler automatically repeats `main`
when it reaches the end; an explicit `return` from `main` halts. Consequently,
the smaller program halts if and only if the original program does.

## 6. Source layout and optional compiler rules

The search only changes commutative operand order, swaps adjacent assignments
without read/write dependencies, inserts no-ops, and selects explicit
compiler options. Padding lets more instruction-dispatch subtrees coincide;
it does not affect register values or termination.

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

Only options explicitly present in the delivered source apply to that
machine. The original compiler sources are vendored without modification;
the wrapper enables the local rules. The regression suite also reproduces
the original 744-state transition table exactly.

## 7. Exact replacement of short transition sequences

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

## 8. Unbounded certificate for transition-table reduction

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

The reducer then merges compatible control states. The certificate supplies
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

## Limit of the result

This construction establishes a smaller upper bound. It does not prove the
state count globally minimal, nor decide whether the machine eventually
halts. Runtime and tape usage are enormous and were not optimization targets.
