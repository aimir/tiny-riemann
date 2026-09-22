# Verification and proof maintenance

Run these commands from `formal/`:

```sh
python3 tools/build.py           # Serial headline build, 16384 MiB per Lean compiler.
python3 tools/check_current.py   # Bounded builds, exact types, axioms and literal tables.
python3 tools/regenerate.py --check  # Reproduce 92 current generated modules byte for byte.
python3 tools/regenerate.py --suite arithmetic --check # Shared arithmetic certificates.
python3 tools/document.py --check   # Check supporting-lemma guides and exact definition excerpts.
python3 tools/check_layout.py       # Check imports, directory guides and documentation links.
lake env lean --memory=16384 --threads=2 Audit.lean # Print the principal axiom dependencies.
```

`build.py` checks cached dependencies and submits one uncached project module
at a time. `lakefile.toml` sets two Lean workers and a 16384 MiB allocation limit
per compiler. A POSIX checkout lock (macOS/Linux) prevents overlapping serial builds. External
dependencies must be cached; use `lake exe cache get` on a fresh checkout.
The script preserves Lake’s ordinary source/dependency checks and stops on
any failed proof. Its output streams to ignored `.logs/serial-build/` files.

`check_current.py` enforces the two immutable specification-file hashes and
the 278-state machine identity, compares the three literal tables, and audits
the exact headline type and the principal proofs' axioms. It builds only the
headline dependencies. Only a successful check refreshes `verification.json`;
raw console logs stay in ignored `.logs/`.

Regeneration also needs the project Python dependencies; use
`../.venv/bin/python` when the environment is not active.

`regenerate.py --write` refreshes generated current-machine sources. It uses
[generators](generators/README.md) in a temporary component workspace, drawing
templates from the checked modules. `module_map.json` assigns component names
to public modules and groups the 55 register boundaries into semantic phases.
`layout.py` applies that map; it contains no trusted proof checking.

`document.py` adds certificate-family explanations and the English statements
maintained in `proof_summaries.py`. Existing handwritten docstrings are kept.
The excerpt checker reads the canonical definitions, so the theorem-first
view cannot silently drift from them. The two pinned specification files are never rewritten.

After successful acceptance, `package_verified.py` creates a local ZIP using
only versioned text inputs and checked hashes. It excludes logs, caches and
build outputs. Archives and checksums are local outputs, not repository inputs.
