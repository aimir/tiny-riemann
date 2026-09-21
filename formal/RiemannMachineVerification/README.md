# Proof modules

Start with [the headline theorem and definition excerpts](../RiemannMachineVerification.lean).
The statement uses the exact specification in [Specification](Specification/README.md).

Read the proof in this order:

1. [Arithmetic](Arithmetic/README.md): exact rational criterion, integer computation, and exclusion of indices below 254.
2. [Registers](Registers/README.md): arithmetic program correctness, implementation refinement, and transfer-loop expansion.
3. [Tape](Tape/README.md): the literal 389-state machine implements the primitive register program.
4. [Reduction](Reduction/README.md): finite path replacements and a certified quotient connect 389 → 339 → 278 states.

[Common](Common/README.md) supplies reusable simulation arguments.
[Generated](Generated/README.md) holds literal arrays and finite certificates;
read the conceptual results before inspecting those cases.

`Arithmetic.lean`, `Semantics.lean`, and `Machine299.lean` are three import-only
compatibility modules. They preserve imports inside byte-pinned acceptance
files, whose exact hashes are still checked. The headline imports the canonical
specification directly. Other accepted tables live under
[Validation](../Validation/README.md), outside the default dependency chain.
