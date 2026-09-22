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

## Fixed specification and machine identity

The following canonical files retain their exact approved bytes:

| Canonical file | SHA-256 |
| --- | --- |
| [MachineSemantics.lean](RiemannMachineVerification/Specification/MachineSemantics.lean) | `bf17d57e37bdce44be15c0ebc61cfb3a86db671adcd494173e86fb86f6d7424a` |
| [Arithmetic.lean](RiemannMachineVerification/Specification/Arithmetic.lean) | `a4fc7ad44a5a5118e55236f849fa5cbc3c91b75b54477564744bb4115e87a24b` |

The checker enforces both hashes, the 278-state input hash above, and the exact
unconditional headline type. It compares every transition of the 389-, 339-
and 278-state Lean tables with the corresponding construction inputs. The
intermediate machines remain essential parts of the proof.

## Acceptance command

From `formal/`, run:

```sh
python3 tools/check_current.py
```

The checker builds the 153-module headline dependency tree, checks the fixed
specification and all three literal imports, audits exact result types and
allowed axiom dependencies, runs [Audit.lean](Audit.lean) for the principal
proof stages, and checks documentation and layout. It writes
[verification.json](verification.json) only after all checks pass. That report
hashes all 154 Lean sources, including the separate audit. Raw logs remain
local and ignored. See [README.md](README.md) for prerequisites and the proof map.

## Earlier verified results

Commit `b5a869e` preserves the complete, successfully checked 299-, 298-, 297-
and 295-state proofs, their generators, and the former acceptance checker.
These machine-specific proofs are absent from the active tree and are not
requirements of current acceptance. Shared lemmas used by the 278-state proof
remain in the current library.

The former acceptance gate additionally pinned a literal 299-state machine
and a proposition named `ApprovedTarget` about that machine. Those two archived
files are no longer active acceptance inputs. The arithmetic predicate and
execution semantics retain their original byte hashes above, and the exact
278-state machine and theorem remain unchanged. This removes supplementary
machine targets without changing the mathematical statement about the current
machine or adding hypotheses.

To inspect or rerun the earlier proofs in a separate checkout, from the
repository root (choose an unused destination directory):

```sh
git worktree add --detach /tmp/riemann-proof-archive b5a869e
cd /tmp/riemann-proof-archive/formal
lake exe cache get
python3 tools/check_current.py
```

That commit's `Validation/AcceptanceTargets/` contains the four earlier results;
its `Validation/Audit.lean` audits them. Its build driver uses the same serial,
two-thread, 16 GiB limits. Current acceptance does not need this checkout.
