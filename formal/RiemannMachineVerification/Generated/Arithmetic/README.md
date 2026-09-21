# Concrete arithmetic instruction paths

`Instructions.lean` proves the literal instruction at each referenced program
address by reduction. `Paths00.lean` through `Paths09.lean` compose finite paths
with symbolic register values; `Paths.lean` imports the whole collection.
`LcmBounds.lean` checks the finite numerical bounds needed by the cutoff proof.

The paths are split to keep elaboration units bounded. Each theorem states its
entry address, branch assumptions, and exact postcondition. The unbounded
multiplication, harmonic and search loop proofs are in
[Registers/Arithmetic](../../Registers/Arithmetic/README.md); these path lemmas
supply their base and step cases. Internal generators are
`generate_arithmetic_paths.py` and `generate_lcm_bounds.py` under
[tools/generators](../../../tools/generators/README.md).

Reproduce this folder and the arithmetic program array with
`python3 tools/regenerate.py --suite arithmetic --check` from `formal/`.
