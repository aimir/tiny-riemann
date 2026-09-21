# 24-parent search: checkpoint after reaching the target

This run supplied two layouts that reached **278 states** through the
[supplemental clique-first solver](../clique-target278/README.md). The search
was stopped after those results passed independent checks. Its originally
planned three generations were **not completed**.

The [checkpoint](checkpoint.json) records 259 configurations: 115 reused from
the [16-parent run](../unified-wide/README.md), plus 144 first-generation
offspring. All 24 initial parents contributed. Of the new candidates, 36
received complete reductions. The [artifact audit](audit.json) checks all
151 saved quotient mappings, configuration identities and pending ancestry.

The source-order SMT selection stage was interrupted. Its best saved count is
280; the separate supplemental certificates establish 278. The candidate
metadata is not rewritten to erase that distinction. Queries interrupted
before receiving a solver response are listed in the checkpoint.

The original command was:

```sh
.venv/bin/python tools/search_unified.py \
  --output /tmp/riemann-target278 --seed-pool results/unified-wide \
  --generations 3 --beam 24 --offspring 144 --promote 36 \
  --exact-finalists 12 --exact-seconds 45 --workers 3 --seed 278024
```

It plans a full run; it does not reproduce the manual early stopping time.
Use `--exact-order clique` to apply the improved ordering during selection.
To audit the saved checkpoint:

```sh
.venv/bin/python tools/audit_unified.py results/unified-target278
```

The full-machine Lean theorem remains outstanding. The verified headline is
still `machine295_correct`.
