# A formally verified 275-state forward-gap layout

The arithmetic source is byte-for-byte identical to the verified
[276-state construction](../forward-gap276/README.md). This candidate changes
physical register placement, removing one private instruction-decoder state.
Its complete reduction is **388 compiled → 338 shortened → 275 quotient states**.
The forward-gap decrement and its full return preserve exact storage capacity
and all other register values. State counts exclude the separate `HALT` state.

The Lean proof checks unbounded positive and zero decrement, increment,
dispatch, exact blank initialization, caller compatibility and positive
progress. It then proves path shortening and the literal quotient. The
arithmetic predicate and execution definitions retain their approved hashes;
mathematical equivalence of that predicate to RH remains outside the theorem.
The accepted headline and proof-source hashes are recorded in
[formal/verification.json](../../formal/verification.json).

The table SHA-256 is
`ded5bdfc6be8747683e88903d39fcf6775ad661632d148b7ab4a84dfebc473b4`.

Reproduce and independently check:

```sh
.venv/bin/python tools/check_fragments.py --candidate results/forward-gap275 \
  --machine results/forward-gap275/quotient-275.tm \
  --certificate results/forward-gap275/quotient-275.certificate.json
cd formal
../.venv/bin/python tools/regenerate.py --check
python3 tools/check_current.py
```

The independent checker tests 432 complete arithmetic calls with exact tape
comparison and 1,024 composed calls starting on literal blank tape. These
finite regressions supplement the unbounded Lean proof.

A two-generation beam completed 24 candidates, each ranked after the complete
reduction. All 36 single register swaps around the best candidate were then
reduced; eight distinct finalists received exact-solver checks. The best
remained 275. For the delivered fixed table and read mask, the exact quotient
solver rejects 274; that is not a lower bound for equivalent machines.
A separate increment-tail detour through the decrement scanner and cleanup
also reduced to 275 and was not selected. The quotient already shares the
initialization scan entries with compatible arithmetic states. These trials
were judged after complete reduction rather than by raw kernel size.
Raw search logs, solver caches and Lean build files remain ignored locally.
