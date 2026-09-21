# Exact supplementary theorems

`Correctness299.lean` and `Correctness295.lean` state the unconditional arithmetic
correctness results for their literal tables. `Machine297.lean` contains the
297-state table, its quotient map, halting equivalence and arithmetic theorem.
`Machine298.lean` checks the additional saved 298-state quotient in the same way.
`Machine299.lean` and `Machine295.lean` contain the other final tables.

`Target.lean` defines `ApprovedTarget`. Its bytes, the bytes of `Machine299.lean`,
and both canonical specification files are checked against the same four
acceptance hashes by `tools/check_acceptance.py`. Their import-only compatibility
modules are documented in [the proof root](../../RiemannMachineVerification/README.md).

**Externally documented pinned lemma:** `table299_size` proves that the literal
array has exactly 299 rows, by definitional reduction (`rfl`). It supplies the
bound needed by `machine299.transition`. Its source docstring is intentionally
not edited because the entire file is byte-pinned. All other supporting
lemmas carry local proof guides or existing explanatory docstrings.
