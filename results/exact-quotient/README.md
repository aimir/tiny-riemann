# Exact quotient and final-count search experiment

The new machine has **297 nonhalting states**, two symbols, and a separate
HALT state. Lean verifies the same arithmetic specification as the frozen
299-state machine:

```lean
theorem machine297_correct :
    HaltsBlank machine297 ↔ ∃ n : ℕ, Counterexample n
```

The predicate, including `254 ≤ n`, is unchanged. As before, the connection
between this arithmetic predicate and RH is outside the formal proof's scope.

Files:

- [297-state transition table](quotient-297.tm)
- [Reachability and quotient certificate](quotient-297.certificate.json)
- [Complete Lean proof](../../formal/RiemannMachineVerification/Quotient297.lean)
- [Current headline theorem](../../formal/RiemannMachineVerification/Headline.lean)
- [Verification results and hashes](verification.json)
- [Solver queries and results](report.json)

The original 299-state theorem and its acceptance pins remain intact. The
297-state proof is now part of the default Lean build and is selected by the
headline theorem. The READMEs, library entry point, and verification report
have been updated accordingly.

## What the exact solver established

The solver starts from the **342-state machine before greedy merging**. Its
existing reachability certificate removes 17 states, leaving 325. Propagating
necessary pair incompatibilities leaves 256 states that cannot merge with
anything else, and a 69-state core with 445 potentially compatible pairs.

Boolean variables say whether two core states share a quotient class. The
constraints enforce an equivalence relation and agreement of all specified
transitions, including equality of successor classes and preservation of HALT.
Each class is counted once, at its least-indexed member. Unreachable read
symbols place no restrictions on the quotient transition.

Z3 found a 297-state quotient and reported UNSAT for 296 in about 58 seconds.
Thus it reports 297 as optimal **for this fixed table, fixed read masks, and
partition construction**. The UNSAT result is not a Lean-checked lower bound,
and says nothing about other equivalent Turing machines. Timeouts in earlier
probes are recorded as `unknown`, not as impossibility results.

The solver is not trusted for correctness of the new machine. Its mapping was
checked against every specified transition, then imported into Lean. The
kernel checked all transition equations and an unbounded halting equivalence
with the already verified machine. The resulting theorem uses only
`propext`, `Classical.choice`, and `Quot.sound`.

The encoding also passed exhaustive comparisons against every partition of
72 small examples, including missing read symbols and unreachable states.

## Reproduce the exact search

From the repository root, with the existing Python environment and the `z3`
executable available:

```sh
.venv/bin/python tools/test_solve_quotient.py
.venv/bin/python tools/solve_quotient.py --target 297 --minimum 296 --timeout 120
```

Each query saves its SMT input, solver output, and, when satisfiable, a checked
transition table and certificate. `report.json` pins the input table and
certificate and records the solver version. Different Z3 versions can choose
different valid mappings or take different amounts of time.

## Verify the 297-state result in Lean

Use the prerequisites in the [formal verification guide](../../formal/README.md).
Z3 is unnecessary for checking the saved result:

```sh
cd formal
python3 check_current.py
python3 generate_candidate_quotient.py \
  ../results/exact-quotient/quotient-297.tm \
  ../results/exact-quotient/quotient-297.certificate.json \
  --output RiemannMachineVerification/Quotient297.lean --check
lake env lean Audit.lean
```

The audit must succeed and include:

```text
'RiemannMachineVerification.machine297_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Checking regeneration compares the saved table's literal import. It does not assume
the solver's answer or alter the original accepted theorem.

## Pilot search using final state counts

The new [search tool](../../tools/search_final.py) maintains a diverse beam.
It screens candidates with macro simplification, narrow-window reachability,
and an actual greedy quotient count. Promoted candidates then receive **all
11 reachability passes from the release manifest** and the same bank of eight
merge seeds. Beam selection uses the resulting state count every generation.
One quarter of available slots is reserved for exploration, preferring
different source families. Exact source configurations are cached within a
run; isomorphic macro graphs are deduplicated during selection.

Mutations cover register allocation, commutative operand order, independent
assignment order, padding, and extracting/inlining procedure bodies. A saved
source and its `candidate.json` register order together specify the compilation;
ordinary compilation of the source alone need not reproduce a register-layout
variant. Source variants have not automatically inherited the Lean proof.

The initial pilot used three seed sources, screened 12 mutations, and fully
evaluated seven candidates in total. Its best greedy result was 299 states.
In particular, the old proxy assigned **310.1** to candidates whose complete
reductions had **299 or 302 states**. The proxy cannot distinguish these cases.
Two promising mutations also received bounded exact-solver queries for 296;
both timed out at 30 seconds. One had an SMT problem identical to the baseline
query after removing the timeout setting, suggesting an additional useful
cache at the constraint-problem level.

Reproduce the pilot from the repository root:

```sh
.venv/bin/python tools/search_final.py \
  --sources machine/riemann.nql candidates/macro-layout-best.nql candidates/xfirst-1101-halt.nql \
  --rounds 1 --beam 4 --offspring 12 --promote 4
```

See the [pilot report](../final-beam/report.json) and its candidate directories
for the saved sources, explicit register orders, tables, certificates, scores,
and timings. A fixed seed bank makes the heuristic comparison reproducible;
these final counts remain feasible upper bounds until exact solving settles
the corresponding quotient problem.

The next useful experiment is a broader diverse beam, with more arithmetic
families and exact solving of finalists. Exact solving has exhausted the
current fixed quotient below 297 according to Z3; further reductions must
change its table, reachability premises, or quotient construction.
