# Untrusted proof-source generators

The supported entry point is `python3 tools/regenerate.py --check` from
`formal/`; use `--write` to refresh the output. The driver runs components in an
isolated temporary workspace and maps their internal component names to the
public directory structure. Do not run these internal scripts directly against
the public source tree: their component paths are the generator interface.

The current generator pipeline is:

1. `generate_optimized278.py`: exact primitive and transfer register programs.
2. `generate_refinement278.py`: symbolic paired-boundary discovery, instruction equations, and positive-progress proofs.
3. `generate_backend278.py`: tape compiler specialization, allocation, dispatch, counter and transfer certificates.
4. `generate_reduction278.py`: literal tables, local path checks, inductive read masks and quotient.

The backend uses the counter, dispatcher, grouped-check, program-shape,
macro-site and transfer-site helpers. The reduction uses the table, macro-data,
macro-proof and invariant helpers. `generate_register_program.py` supplies
instruction decoding. `generate_candidate_quotient.py` supplies the independently
checked 297-state literal import used by the acceptance checker.

`generate_arithmetic_paths.py` and `generate_lcm_bounds.py` describe the shared
arithmetic certificates, reproduced by `tools/regenerate.py --suite arithmetic --check`.
`generate_reallocated.py` is reproduced with `--suite table295 --check`.
`generate_quotient.py` and
the general table/register generators support the supplementary acceptance
instances. Their concrete output modules and component templates are recorded
in `../module_map.json`.

Generators propose ordinary Lean declarations and proof terms. Compilation
assertions and Python checks are useful for reproduction but carry no logical
trust: only a subsequent Lean build and axiom audit establish acceptance.
