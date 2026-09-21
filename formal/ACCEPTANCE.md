# Verification contract and accepted results

The **current 295-state machine is formally verified**. The original
299-state theorem approved on 2026-09-17 is also proved and remains a frozen
acceptance target. The smaller machine satisfies the same arithmetic
specification; neither the predicate nor the execution semantics has changed.

## Current result

[`Correctness295.lean`](RiemannMachineVerification/Correctness295.lean) proves:

```lean
theorem machine295_correct :
    HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n
```

[`Headline.lean`](RiemannMachineVerification/Headline.lean) defines
`headlineMachine` as `machine295` and exposes this result as `headline_correct`.
The default Lean build includes it. The literal table is
[`machine/riemann295.tm`](../machine/riemann295.tm), with SHA-256:

```text
d79512cf945e8828ff587662990ee595e596871928f402fa6fef470b144d7079
```

The later [285-state experimental machine](../results/register-lowering/README.md)
is outside this accepted result. Its arithmetic lowering is not yet proved in
Lean; it does not change the headline or the frozen approval below.

## Preserved original approval

The user approved the following statement and its definitions after reviewing
them thoroughly. It must not be weakened or replaced by a claim about another
machine:

```lean
theorem machine299_correct :
    HaltsBlank machine299 ↔ ∃ n : ℕ, Counterexample n
```

The proof is complete in
[`Correctness.lean`](RiemannMachineVerification/Correctness.lean).
[`Target.lean`](RiemannMachineVerification/Target.lean) retains `ApprovedTarget`
as the definition of the approved proposition; it is no longer an unfinished
proof obligation.

`machine299` is the exact table in [`machine/riemann.tm`](../machine/riemann.tm),
whose SHA-256 remains:

```text
00402eabd3bcc448d97042458ea0186598d0f7c066673d9584262eed87c9840a
```

[`check_acceptance.py`](check_acceptance.py) preserves the original four pins
for `Semantics.lean`, `Arithmetic.lean`, `Machine299.lean`, and `Target.lean`,
and checks this literal table and theorem. The later 297-state theorem also
remains available in [`Quotient297.lean`](RiemannMachineVerification/Quotient297.lean).

## Shared specification and proof requirements

[`Counterexample n`](RiemannMachineVerification/Arithmetic.lean) means `254 ≤ n` and

```text
(max (harmonic (lcmUpto n) - (n : ℚ)) 0)^2 > (n : ℚ) * (harmonic n)^4
```

`harmonic 0 = 0` and `harmonic (n+1) = harmonic n + 1/(n+1)` in exact rationals.
`lcmUpto 0 = 1` and `lcmUpto (n+1) = Nat.lcm (lcmUpto n) (n+1)`.

Both machines use the same [`HaltsBlank` semantics](RiemannMachineVerification/Semantics.lean).
The initial state is `!ENTRY`, the head starts at integer position zero, and
the tape is all zeros. There is one tape indexed by all integers, two symbols,
and each transition writes the current cell then moves left or right by
exactly one cell. Halting means entering the separate halting state after
finitely many steps. Counts of 295 and 299 exclude that halting state.

Both theorems have no additional hypotheses, no `sorry`, no additional unproved
axioms, no assumed compiler correctness, and no axiom trusting native computation.
The only permitted axiom dependencies are `propext`, `Classical.choice`, and
`Quot.sound`. The theorems concern the literal final tables and unbounded
execution, rather than only sources, intermediate machines, or finite runs.

The mathematical equivalence of this arithmetic characterization to RH is
outside the proof. Literal equivalence to the original 744-state table remains
an optional additional result. No global minimality claim is part of acceptance.

## Recheck both results

From `formal/`, with the pinned Lean dependencies installed:

```sh
python3 check_current.py
lake env lean Audit.lean
```

The current checker runs the original acceptance gate, checks the seven literal
table imports, and verifies the 295-state headline's identity, exact theorem
type, and axiom dependencies. A successful run updates
[`verification.json`](verification.json) and ends with:

```text
ACCEPTED: the 295-state headline and original 299-state target are proved with only permitted axioms.
```

See the [verification guide](README.md) for prerequisites and proof structure.
