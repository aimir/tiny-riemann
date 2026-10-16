# Literal programs and intermediate machines

`ArithmeticProgram.lean` contains the 2048-address arithmetic register program.
`ImplementationProgram.lean` contains the 1024-address implementation, each at
primitive and transfer-instruction granularity. `CompiledMachine.lean` and
`ShortenedMachine.lean` contain the 388-state and 338-state transition arrays.
The final array is [Machine275.lean](../../Specification/Machine275.lean).

Each machine array has a kernel-proved size lemma. The acceptance checker
regenerates every literal machine import and compares every transition. The
program arrays are checked against instruction and boundary proofs; current
implementation generation also asserts that compilation reproduces the saved
compiled table. Start from [register correctness](../../Registers/README.md).
