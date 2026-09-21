# Exact statement and machine

[Arithmetic.lean](Arithmetic.lean) defines `harmonic`, `lcmUpto`, and
`Counterexample` using exact rationals. [MachineSemantics.lean](MachineSemantics.lean)
defines a two-sided binary tape, one-cell moves, the initially zero run, and
`HaltsBlank`. Both files are byte-pinned acceptance definitions.

[Machine278.lean](Machine278.lean) contains every literal transition, its array-size
proof, and `machine278`. State 0 is `!ENTRY`; `none` is the separate halting state.
The table importer and acceptance checker compare every row to the saved `.tm`.

The [entry file](../../RiemannMachineVerification.lean) displays checked excerpts
of these definitions immediately after the theorem. Those excerpts are reading
aids; the imported definitions here are authoritative.
