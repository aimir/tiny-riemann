# Approved target, 2026-09-17

The user approved the following statement and its definitions in the conversation,
after reviewing them thoroughly. Proof development must not weaken this target.

```lean
theorem machine299_correct :
    HaltsBlank machine299 ↔ ∃ n : ℕ, Counterexample n
```

`Counterexample n` means `254 ≤ n` and

`(max (harmonic (lcmUpto n) - (n : ℚ)) 0)^2 > (n : ℚ) * (harmonic n)^4`.

`harmonic 0 = 0` and `harmonic (n+1) = harmonic n + 1/(n+1)` in exact rationals.
`lcmUpto 0 = 1` and `lcmUpto (n+1) = Nat.lcm (lcmUpto n) (n+1)`.

`machine299` is the exact table in `../machine/riemann.tm`, whose SHA-256 is
`00402eabd3bcc448d97042458ea0186598d0f7c066673d9584262eed87c9840a`.
It has 299 ordinary states and a separate halting state. The initial state is
`!ENTRY`, the head starts at integer position zero, and the tape is all zeros.
There is one tape indexed by all integers, two symbols, and each transition
writes the current cell then moves left or right by exactly one cell.
Halting means entering the designated halting state after finitely many steps.

The proof must have no additional hypotheses, no `sorry`, no additional unproved
axioms, no assumed compiler correctness, and no axiom trusting native computation.
The ordinary Lean foundational axioms are allowed. The theorem concerns the
literal final table, not merely a source or intermediate machine.

The mathematical equivalence of this arithmetic characterization to RH is outside
the proof. Proving literal equivalence to the original 744-state table is an
optional additional result, not a replacement for the approved theorem.

`Target.lean` records the proposition as a definition while the proof is pending.
No theorem named `machine299_correct` is to be introduced until it has a complete
proof. The absence of that theorem is an explicit unfinished obligation.
