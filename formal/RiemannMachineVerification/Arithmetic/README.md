# From arithmetic to a searchable predicate

The main result is the integer-search equivalence in
[IntegerCriterion.lean](IntegerCriterion.lean). Read:

1. [RationalFacts.lean](RationalFacts.lean): harmonic numerator identities, monotonicity and bounds.
2. [Divisibility.lean](Divisibility.lean) and [Lcm.lean](Lcm.lean): countdown divisibility and the terminating common-multiple search.
3. [Harmonic.lean](Harmonic.lean): the exact numerator/denominator loop and integer arithmetic tail.
4. [Cutoff.lean](Cutoff.lean): no positive counterexample exists below 254.
5. [IntegerCriterion.lean](IntegerCriterion.lean): clearing positive denominators and adding the cutoff preserves the witness predicate.
6. [Search.lean](Search.lean): ascending search halts exactly when a tested value succeeds.

The [register arithmetic proof](../Registers/Arithmetic/README.md) realizes
these computations. [Generated arithmetic cases](../Generated/Arithmetic/README.md)
include the finite small-index LCM bounds. Equivalence of this predicate to
RH itself is outside this development.
