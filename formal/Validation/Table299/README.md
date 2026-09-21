# Compiler and reduction instance for the 299-state target

These modules prove the literal 381-state compilation implements the shared
arithmetic register program and that its 342-state shortening and 299-state
quotient preserve halting. `BackendCorrectness.lean` is the compiler endpoint;
`MacroCorrectness.lean` and `Reduction.lean` are the reduction endpoints.

The arithmetic program, generic simulation theory and reusable tape lemmas
come from [RiemannMachineVerification](../../RiemannMachineVerification/README.md).
Machine-specific transition equations, counter/dispatch checks and reachability
certificates remain here because this table has its own concrete states and
11-bit counter. [Generated](Generated/README.md) describes the bounded case files.
These modules are built by `python3 tools/build.py Validation`, not the default headline.
