# Register computation and refinement

[Arithmetic/Correctness.lean](Arithmetic/Correctness.lean) proves
`arithmetic_program_correct`: the arithmetic register program halts iff the
approved predicate has a witness.

[Refinement.lean](Refinement.lean) proves `implementation_iff_arithmetic`.
Its paired boundary relation preserves live values and known zeros while
allowing dead temporaries to differ. Both execution clocks advance positively,
so the relation preserves halting in both directions. Its 55 boundary cases
are grouped into [five semantic phases](../Generated/RegisterRefinement/README.md).

[TransferExpansion.lean](TransferExpansion.lean) proves `primitive_iff_macro`:
the 86 transfer instructions expand into their primitive loops.
[Transfers.lean](Transfers.lean) proves the general loop result by induction
on the source value; no bound on register values is assumed.

[Semantics.lean](Semantics.lean) and [Execution.lean](Execution.lean) define and
reason about **one counter-size-parameterized register model**. The
`ArithmeticModel` and `ImplementationModel` files specialize it to 2048 and
1024 counter addresses respectively. Their aliases export the same semantics;
they do not duplicate a correctness proof. See [Arithmetic](Arithmetic/README.md)
for the program-level argument and [Tape](../Tape/README.md) for its implementation.
