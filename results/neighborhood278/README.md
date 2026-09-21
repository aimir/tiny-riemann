# Systematic refinement around the leading layouts

This search enumerates register transpositions, padding edits, jump policies,
lowering switches, register facts and eligible zero-call subsets around two
leading layouts. It complements the broader beam by thoroughly exploring
local changes. Source edits only change semantically inert padding; tests
check that parent configurations and all non-padding source operations remain
unchanged.

The [checkpoint](checkpoint.json) contains **177 distinct configurations**:
two seeds and 175 new candidates, of which 40 received complete reductions.
The [audit](audit.json) checks all 42 saved quotient mappings and ancestry.
The [generator tests](tests.json) cover 99 and 80 generated neighbors; duplicate
configurations account for the difference from the saved count.

The ordinary solver reached 279 states. A supplemental
[clique-first query](e4e860163b7231c3/clique278/report.json) produced another
[278-state table](e4e860163b7231c3/clique278/quotient-278.tm). Its mapping is
checked by the solver driver, but the two independently checked delivery
candidates are documented in the [main 278-state report](../clique-target278/README.md).

Search stopped after the main 278-state results passed their independent
checks. The planned SMT finalist sweep was not completed; interrupted queries
are listed in the checkpoint. Historical candidate counts exclude supplemental
certificates. This does not change the verified 295-state Lean headline.

```sh
.venv/bin/python tools/test_search_neighborhood.py
.venv/bin/python tools/search_neighborhood.py \
  --bases results/unified-wide/fe4def10034af93f results/unified-wide/46067991bb65ded1 \
  --output /tmp/riemann-neighborhood278 --promote 40 --exact-finalists 20 \
  --exact-seconds 60 --workers 2 --target 278
.venv/bin/python tools/audit_unified.py results/neighborhood278
```

The search command plans the full sweep rather than reproducing the manual
early stopping time. Add `--exact-order clique` to use the improved ordering.

Raw solver, execution and console logs stay local. Versioned tables,
certificates, configurations, SMT inputs and structured reports follow the
[repository artifact policy](../../README.md#repository-artifacts-and-local-logs).
