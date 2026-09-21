# Correctness of the arithmetic register program

The result in [Correctness.lean](Correctness.lean), `arithmetic_program_correct`,
connects the literal arithmetic register program to `∃ n, Counterexample n`.
Its cycle relation maps a complete program iteration to one natural-search step.

[Cycle.lean](Cycle.lean) assembles the LCM, harmonic, multiplication and subtraction
blocks. [LcmExecution.lean](LcmExecution.lean), [Harmonic.lean](Harmonic.lean),
[Multiplication.lean](Multiplication.lean), and [Subtraction.lean](Subtraction.lean)
prove those loops for arbitrary natural inputs. Repeated multiplication lemmas
refer to different concrete entry addresses and register operands; they feed
one cycle proof rather than asserting separate headline results.

The structured layer explains those values: [Program.lean](Program.lean),
[StructuredSemantics.lean](StructuredSemantics.lean), [Values.lean](Values.lean),
[Equations.lean](Equations.lean), [Lcm.lean](Lcm.lean), and
[StructuredCorrectness.lean](StructuredCorrectness.lean). It supplies exact
postconditions to the cycle proof and the supplementary `source_correct` result.

The [literal instruction equations and finite paths](../../Generated/Arithmetic/README.md)
are separate from these unbounded loop arguments.
