"""Independently reproduce and check the 295-state construction's artifacts."""
from pathlib import Path
import json
import tempfile

from compile import ROOT, table
from search_final import compile_candidate
from tm_reduce import load, dump
from macro_reduce import simplify
from solve_quotient import check_mapping
from verify import reduction_certificate
from verify_macros import verify


def main():
    folder = ROOT / 'machine'
    metadata = json.loads((folder / 'riemann295.proof-inputs.json').read_text())
    machine, _ = compile_candidate((folder / 'riemann295.nql').read_text(), metadata['register_order'])
    rename = metadata['state_renaming']
    with tempfile.TemporaryDirectory(prefix='riemann295-rebuild-') as directory:
        temporary = Path(directory)
        raw = temporary / 'raw.tm'
        raw.write_text(table(machine))
        rows = load(raw)
        rows = {rename.get(q, q): [(w, d, rename.get(t, t)) for w, d, t in edges]
                for q, edges in rows.items()}
        compiled = temporary / 'compiled.tm'
        dump(rows, compiled)
        assert compiled.read_bytes() == (folder / 'riemann295.compiled.tm').read_bytes()
        # Simplification is computed in the compiler's original state order.
        macro, _ = simplify(load(raw))
        macro = {rename.get(q, q): [(w, d, rename.get(t, t)) for w, d, t in edges]
                 for q, edges in macro.items()}
        shortened = temporary / 'macro.tm'
        dump(macro, shortened)
        assert shortened.read_bytes() == (folder / 'riemann295.macro.tm').read_bytes()
        cert = json.loads((folder / 'riemann295.reduction.json').read_text())
        final = check_mapping(macro, cert['possible'], cert['mapping'])
        target = temporary / 'final.tm'
        dump(final, target)
        assert len(final) == 295 and target.read_bytes() == (folder / 'riemann295.tm').read_bytes()
    macro_result = verify(folder / 'riemann295.compiled.tm', folder / 'riemann295.macro.tm',
                          folder / 'riemann295.macros.json')
    quotient_result = reduction_certificate(folder / 'riemann295.macro.tm', folder / 'riemann295.tm',
                                           folder / 'riemann295.reduction.json')
    print(json.dumps({'reproduction': 'byte-for-byte match', 'macros': macro_result,
                      'quotient': quotient_result}, indent=2))


if __name__ == '__main__':
    main()
