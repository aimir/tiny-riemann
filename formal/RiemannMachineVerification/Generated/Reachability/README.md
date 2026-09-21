# Inductive read masks

`Stage0.lean`, `Stage1.lean`, and `Stage2.lean` contain Boolean decision diagrams
and their explicit proof terms. In each stage, `invN_initial` checks the blank
entry, `invN_closed` proves closure under permitted transitions, and
`invN_read_mask` extracts the permitted symbol set for every state.

The `claim` lemmas check Boolean equations. The `shift` lemmas transport a
predicate through a tape write and head movement. They are numerous because
the full decision-diagram certificate is checked inside Lean; they are not
additional assumptions. Every such lemma documents its stage and certificate
index. Read the three final stage theorems before their supporting nodes.

[Reduction/Reachability.lean](../../Reduction/Reachability.lean) composes these
stages with the generic invariant theorem to cover every time of the infinite
run. [Reduction/Quotient.lean](../../Reduction/Quotient.lean) uses the resulting
mask to check the state quotient. Generation uses `tools/regenerate.py`.
