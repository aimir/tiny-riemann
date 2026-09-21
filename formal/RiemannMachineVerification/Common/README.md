# Shared execution and simulation arguments

[Execution.lean](Execution.lean) defines trajectories and eventual halting.
[Simulation.lean](Simulation.lean) transports halting through state maps and
invariant-restricted quotients. [ProgressingBisimulation.lean](ProgressingBisimulation.lean)
allows both sides to take different positive numbers of steps at each related
boundary, as needed by register refinement.

[Expansion.lean](Expansion.lean), [LocalWindow.lean](LocalWindow.lean), and
[FiniteWindow.lean](FiniteWindow.lean) lift finite tape-window checks to whole-tape
executions. [WindowInvariant.lean](WindowInvariant.lean) lifts an inductive local
predicate to a read mask for the complete run. [BooleanCertificate.lean](BooleanCertificate.lean)
checks Boolean decision-diagram identities by ordinary proofs.

These are generic theorems parameterized by machines, step functions, relations
or finite certificates. Concrete facts are supplied by the other proof stages.
