# A formally verified 276-state forward-gap machine

The unchanged arithmetic source, register allocation, and ten-bit instruction
layout from the verified 278-state result now use a local forward-gap decrement.
The complete reduction is **389 compiled → 339 shortened → 276 quotient states**.
The compiled table retains its original state ordering and unreachable backward
path on the unused zero cleanup input; the certified blank-tape read masks remove
that path. The delivered quotient contains 276 ordinary states, excluding `HALT`.

The positive branch restores the register's leading mark, then exchanges the
erased unary cell with successive marks and separators. A cleanup transition
erases the disposable final mark. The return skips the final blank suffix and
scans to the program-counter fence. No register is appended; the allocated
capacity and all other register values are preserved exactly.

`Tape/Core/Deletion.lean` proves `forward_gap_core` by induction over arbitrary
finite encoded words. `Tape/Decrement.lean` composes selection, positive and zero
branches, the full return, and the counter update. The remaining proof chain
covers unbounded register values, exact blank initialization, caller
compatibility, positive progress, path shortening, and the literal quotient.
The mathematical predicate and machine execution definitions retain their
approved hashes. The current accepted theorem is recorded in
[formal/verification.json](../../formal/verification.json) after kernel checking.

The table SHA-256 is
`46c8f130c667a98d496e193596aa301776b02b2e7a51d63e94628f7afc8e9695`.

Reproduce and independently check:

```sh
.venv/bin/python tools/check_fragments.py --candidate results/forward-gap276 \
  --machine results/forward-gap276/quotient-276.tm \
  --certificate results/forward-gap276/quotient-276.certificate.json
cd formal
../.venv/bin/python tools/regenerate.py --check
python3 tools/check_current.py
```

The independent checker includes 432 complete arithmetic calls with exact tape
comparison, plus 1,024 successive calls beginning on the literal blank tape.
Those finite regressions supplement the unbounded Lean proof. The exact solver
finds a 276-state quotient and rejects 275 for this fixed table and read mask;
that rejection is not a lower bound for equivalent Turing machines. A variant
sharing cleanup with the zero-branch restoration state also reduced to 276, so
it was not selected. Raw search output and Lean caches stay ignored locally.
