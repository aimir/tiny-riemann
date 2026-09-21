# Literal data and finite proof certificates

Read the [conceptual proof stages](../README.md) first. These modules instantiate
their hypotheses with exact data:

- [Tables](Tables/README.md): literal register programs and intermediate machines.
- [Arithmetic](Arithmetic/README.md): concrete instruction equations, finite arithmetic paths and small-index bounds.
- [RegisterRefinement](RegisterRefinement/README.md): paired boundaries and transfer certificates.
- [Dispatch](Dispatch/README.md): all 1024 instruction addresses.
- [Counter](Counter/README.md): both updates for all 1024 counter values.
- [ShortPaths](ShortPaths/README.md): all 339 shortened states and their local expansions.
- [Reachability](Reachability/README.md): three inductive read-mask stages.

The numbered case files bound individual Lean elaboration jobs and allow
independent caching. Their aggregate coverage theorems quantify over every
index; file count is not a mathematical assumption. The register boundaries
are grouped by semantic phase rather than one file per boundary.

From `formal/`, run `python3 tools/regenerate.py --check` to reproduce the 92
current machine-specific modules in a temporary directory and compare them
byte for byte. `--write` refreshes them. Re-run `python3 tools/check_current.py`
after any change. Python generators are untrusted; Lean checks each proposed
proof. Shared arithmetic inputs have their generators in [tools](../../tools/README.md).
