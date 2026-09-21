# The binary tape implements the register program

[Correctness.lean](Correctness.lean) proves `machine389_iff_primitive` by a
simulation relation between tape configurations and primitive register states.
The relation holds initially, identifies halting, and makes positive progress.

[Encoding.lean](Encoding.lean) describes the counter and unary register areas.
[Allocation.lean](Allocation.lean) maps logical registers to physical slots;
[StorageInvariant.lean](StorageInvariant.lean) ensures sufficient encoded storage
through initialization and subsequent execution.

[Dispatch.lean](Dispatch.lean) selects an instruction from the 10-bit counter;
[Counter.lean](Counter.lean) checks its two possible updates.
[Selectors.lean](Selectors.lean), [Initialize.lean](Initialize.lean),
[Increment.lean](Increment.lean), [Decrement.lean](Decrement.lean),
[Insertion.lean](Insertion.lean), and [Deletion.lean](Deletion.lean) implement
unbounded unary operations. [RegisterOperations.lean](RegisterOperations.lean)
lifts them to the complete encoding.

[Core](Core/README.md) contains reusable tape arguments. Concrete counter and
dispatch cases live in [Generated](../Generated/README.md); the finite case split
is over instruction addresses, not possible register values or tape lengths.
