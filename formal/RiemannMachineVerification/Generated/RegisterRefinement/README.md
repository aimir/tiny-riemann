# Paired control-flow boundaries and transfer loops

`Boundaries.lean` defines the relation at 55 paired counters. Each constructor
records live-value equalities and known zeros, while permitting dead values to
differ. The `instruction0_*` and `instruction1_*` lemmas are literal instruction
equations for the arithmetic and implementation programs respectively.

The path and progress lemmas are grouped by their arithmetic-program entry:

- `Initialization.lean`: initial entry 0.
- `Lcm.lean`: entries below 147, after initialization.
- `Harmonic.lean`: entries in 256–383 or 512–639.
- `Products.lean`: remaining product and subtraction entries below 1024.
- `Decision.lean`: entries at least 1024, including the final test and cycle return.

`pathB_C_P` checks boundary B, branch C (zero/positive), program P
(arithmetic/implementation). `advanceB` combines both paths into positive
progress and reestablishes a boundary constructor. Impossible branches are
excluded from their explicit value assumptions. The aggregate theorem is
[Registers/Refinement.lean](../../Registers/Refinement.lean).

`TransferSites.lean` certifies the zero and positive paths of 86 primitive
transfer loops. `TransferCoverage.lean` covers every instruction address.
[Registers/Transfers.lean](../../Registers/Transfers.lean) turns those finite
paths into an unbounded loop theorem by induction on the source value.

Reproduce these modules with `python3 tools/regenerate.py --check` from `formal/`.
