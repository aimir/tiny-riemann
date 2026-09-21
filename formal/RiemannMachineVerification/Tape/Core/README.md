# Reusable tape reasoning

[Zipper.lean](Zipper.lean) represents the tape by the two streams adjacent to the
head and proves equivalence to absolute integer coordinates.
[Execution.lean](Execution.lean) composes finite zipper executions.

[Word.lean](Word.lean) and [RegisterEncoding.lean](RegisterEncoding.lean) describe
finite delimited words and unary registers. [Scan.lean](Scan.lean),
[Carry.lean](Carry.lean), [Insertion.lean](Insertion.lean),
[Deletion.lean](Deletion.lean), [Return.lean](Return.lean),
[InsertReturn.lean](InsertReturn.lean), and [Selector.lean](Selector.lean) prove
operations on arbitrary-length words under explicit transition hypotheses.
[Mirror.lean](Mirror.lean) transfers such arguments across left/right reflection.

These lemmas are machine-independent. The [parent folder](../README.md)
instantiates their transition hypotheses with the literal 389-state machine.
