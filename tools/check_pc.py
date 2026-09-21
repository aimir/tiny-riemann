"""Reproduce a saved experimental PC layout and independently check its certificates.

This does not promote the candidate to the Lean headline. The verified reference
backend is matched byte for byte, and the new layout is checked in Python.
"""
from pathlib import Path
import argparse
import hashlib
import json
import tempfile

from compile import ROOT, table
from search_final import compile_candidate
from pc_layout import compile_layout, check_control_equivalence, check_dispatch, check_backend
from tm_reduce import load, dump
from macro_reduce import simplify
from verify import reduction_certificate
from verify_macros import verify


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--candidate', type=Path, required=True)
    parser.add_argument('--machine', type=Path, required=True)
    parser.add_argument('--certificate', type=Path, required=True)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    metadata = json.loads((args.candidate / 'candidate.json').read_text())
    source = (args.candidate / 'source.nql').read_text()
    reference, _ = compile_candidate((ROOT / 'machine/riemann295.nql').read_text(), metadata['registers'])
    candidate = compile_layout(source, metadata['registers'], metadata['layout'])
    assert table(candidate) == (args.candidate / 'compiled.tm').read_text()
    with tempfile.TemporaryDirectory(prefix='riemann-pc-check-') as directory:
        temp = Path(directory)
        raw_reference = temp / 'reference.tm'
        raw_reference.write_text(table(reference))
        rename = json.loads((ROOT / 'machine/riemann295.proof-inputs.json').read_text())['state_renaming']
        normalized = {rename.get(q, q): [(w, d, rename.get(t, t)) for w, d, t in edges]
                      for q, edges in load(raw_reference).items()}
        normalized_path = temp / 'normalized.tm'
        dump(normalized, normalized_path)
        assert normalized_path.read_bytes() == (ROOT / 'machine/riemann295.compiled.tm').read_bytes()
        shortened, _ = simplify(load(args.candidate / 'compiled.tm'))
        path = temp / 'macro.tm'
        dump(shortened, path)
        assert path.read_bytes() == (args.candidate / 'macro.tm').read_bytes()
    checks = check_control_equivalence(reference, candidate)
    checks.update(check_dispatch(candidate))
    checks.update(check_backend(reference, candidate))
    checks['macros'] = verify(args.candidate / 'compiled.tm', args.candidate / 'macro.tm',
                              args.candidate / 'macros.json')
    checks['quotient'] = reduction_certificate(args.candidate / 'macro.tm', args.machine, args.certificate)
    report = {'status': 'independently checked; not Lean-verified',
              'machine_states': len(load(args.machine)), 'pc_bits': candidate.main.order,
              'layout': metadata['layout'], 'checks': checks,
              'reference_compilation': 'byte-for-byte match with verified riemann295.compiled.tm',
              'candidate_reproduction': 'compiled and macro tables match byte for byte',
              'sha256': {str(p): digest(p) for p in (args.machine, args.certificate,
                         args.candidate / 'compiled.tm', args.candidate / 'macro.tm')},
              'formal_status': 'The default Lean headline remains machine295_correct. No theorem for this candidate is asserted.'}
    output = json.dumps(report, indent=2) + '\n'
    if args.output:
        args.output.write_text(output)
    print(output, end='')


if __name__ == '__main__':
    main()
