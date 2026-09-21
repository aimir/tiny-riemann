# Supplementary acceptance targets

This is a separate Lean library. `python3 tools/build.py` checks the 278-state headline;
`python3 tools/build.py Validation` additionally checks the 299-, 298-, 297-, and 295-state results
and generic native-register fragments. `python3 tools/check_current.py` runs
both and checks their exact types and permitted axioms.

[AcceptanceTargets](AcceptanceTargets/README.md) contains the public supplementary
results and the byte-pinned acceptance proposition and table.
[Table299](Table299/README.md) and [Table295](Table295/README.md) instantiate the
compiler and reduction proofs for those distinct literal machines. These
certificates cannot be substituted for the 278-state ones: transition arrays,
state maps, and instruction layouts differ.

`Audit.lean` prints axiom dependencies of the principal results.
`NativeRegisterFragments.lean` proves generic native clear/test operations;
those operations are not selected by the headline machine.
