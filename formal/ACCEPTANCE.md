# Verification contract

The unconditional headline is proved in
[RiemannMachineVerification.lean](RiemannMachineVerification.lean):

```lean
theorem machine278_correct :
    HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n
```

`headlineMachine` is definitionally `machine278`; `headline_correct` exposes the
same statement. The exact [278-state input](../results/clique-target278/fefaa549f250fd12/quotient-278.tm)
has SHA-256 `268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306`.
The checker compares every literal transition. Only this primary table is
covered by the headline theorem.

## Fixed meaning

[Arithmetic.lean](RiemannMachineVerification/Specification/Arithmetic.lean)
defines `Counterexample n` as `254 ≤ n` and

```text
(max (harmonic (lcmUpto n) - (n : ℚ)) 0)^2 > (n : ℚ) * (harmonic n)^4
```

`harmonic 0 = 0`, with successor recurrence adding `1 / ((n : ℚ) + 1)`.
`lcmUpto 0 = 1`, with successor recurrence `Nat.lcm (lcmUpto n) (n+1)`.
[MachineSemantics.lean](RiemannMachineVerification/Specification/MachineSemantics.lean)
defines the infinite two-sided, initially zero binary tape; head position zero;
entry state `!ENTRY`; one-cell left/right moves after writing; and existential
finite-time halting at the separate halted state. State counts exclude that
halting state. These are the authoritative definitions, also displayed as
checked excerpts immediately below the headline theorem.

The theorem has no extra hypotheses, `sorry`, additional unproved axioms,
assumed compiler correctness, or axiom trusting native evaluation. Only
`propext`, `Classical.choice`, and `Quot.sound` are permitted dependencies.
Its scope is the literal table and unbounded execution. Equivalence of the
arithmetic predicate to RH, direct equivalence to the original 744-state table,
and global minimality are outside this contract.

## Immutable acceptance pins

The independently retained acceptance proposition is
`HaltsBlank machine299 ↔ ∃ n, Counterexample n`, named `ApprovedTarget` in
[Target.lean](Validation/AcceptanceTargets/Target.lean) and proved by
`machine299_correct` in [Correctness299.lean](Validation/AcceptanceTargets/Correctness299.lean).
The [299-state input](../machine/riemann.tm) retains SHA-256
`00402eabd3bcc448d97042458ea0186598d0f7c066673d9584262eed87c9840a`.

The following four files retain their exact approved bytes. Relocation changes
neither their content hashes nor what the acceptance gate requires:

| Canonical file | SHA-256 |
| --- | --- |
| [MachineSemantics.lean](RiemannMachineVerification/Specification/MachineSemantics.lean) | `bf17d57e37bdce44be15c0ebc61cfb3a86db671adcd494173e86fb86f6d7424a` |
| [Arithmetic.lean](RiemannMachineVerification/Specification/Arithmetic.lean) | `a4fc7ad44a5a5118e55236f849fa5cbc3c91b75b54477564744bb4115e87a24b` |
| [Machine299.lean](Validation/AcceptanceTargets/Machine299.lean) | `9f1e38b4be64f69654e1dbb30d1d81af93d19af505a143131cf862a6d681d06f` |
| [Target.lean](Validation/AcceptanceTargets/Target.lean) | `922f30edb4cb4c419efd6b57f26152e9be55dae9f271645e232f525eaf94731c` |

Three import-only compatibility modules preserve the imports inside those
pinned files. The default headline imports the canonical specification directly.
The 299-, 298-, 297-, and 295-state theorems are available through `import Validation`.

## Acceptance command

From `formal/`, run:

```sh
python3 tools/check_current.py
```

The checker builds the headline and supplementary library; checks the four pins,
all eleven literal imports, exact result types and allowed axiom dependencies; and
checks documentation and layout. It writes [verification.json](verification.json)
only after all checks pass. `tools/check_acceptance.py` retains the immutable
299-state gate as part of this process. Raw logs remain local and ignored.
See [README.md](README.md) for prerequisites, the proof map, and regeneration.
