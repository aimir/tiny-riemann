# Compiler and reduction instance for the 295-state target

These modules check the 295-state target's own 381-state compilation and
342-state shortening. `BackendCorrectness.lean`, `MacroCorrectness.lean`, and
`Quotient295.lean` are the compiler, shortening and quotient endpoints.
It uses the shared primitive register program and transfer-loop equivalence;
only its physical allocation and tape compiler instance differ.

The `Reallocated` Lean namespace distinguishes this instance's definitions from
the other literal tables. Its finite certificates must mention its exact
register allocation and state indices, so they remain separate from the
278-state instance. [Generated](Generated/README.md) documents their ranges.
They are included in `python3 tools/build.py Validation` and the full acceptance check.

Reproduce this compiler instance with
`python3 tools/regenerate.py --suite table295 --check` from `formal/`.
