# From the compiled table to 278 states

[ShortPaths.lean](ShortPaths.lean) proves `machine389_iff_machine339`.
[ShortPathSupport.lean](ShortPathSupport.lean) supplies local certificate lemmas;
[generated cases](../Generated/ShortPaths/README.md) check all state/symbol paths.
The generic local-expansion theorem lifts them to arbitrary infinite tapes,
and positive expansion lengths preserve nontermination as well as halting.

[Reachability.lean](Reachability.lean) composes three inductive tape invariants.
Their final read mask permits exactly the transitions needed by
[Quotient.lean](Quotient.lean), which proves `machine339_iff_machine278` by a
literal state map and a transition check for every permitted symbol.

This quotient theorem is about the exact saved table. It does not assert that
278 is a lower bound for equivalent machines.
