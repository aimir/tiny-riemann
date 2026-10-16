# From the compiled table to 275 states

[ShortPaths.lean](ShortPaths.lean) proves `machine388_iff_machine338`.
[ShortPathSupport.lean](ShortPathSupport.lean) supplies local certificate lemmas;
[generated cases](../Generated/ShortPaths/README.md) check all state/symbol paths.
The generic local-expansion theorem lifts them to arbitrary infinite tapes,
and positive expansion lengths preserve nontermination as well as halting.

[Reachability.lean](Reachability.lean) composes three inductive tape invariants.
Their final read mask permits exactly the transitions needed by
[Quotient.lean](Quotient.lean), which proves `machine338_iff_machine275` by a
literal state map and a transition check for every permitted symbol.

This quotient theorem is about the exact saved table. It does not assert that
275 is a lower bound for equivalent machines.
