"""Check the current 295-state headline and the unchanged original acceptance target."""
from pathlib import Path
import datetime
import hashlib
import json
import re
import subprocess
import sys
import tempfile

from generate_candidate_quotient import generate_candidate
from generate_tables import generate

ROOT = Path(__file__).resolve().parent
MACHINE = ROOT.parent / 'machine/riemann295.tm'
CERTIFICATE = ROOT.parent / 'machine/riemann295.reduction.json'
MACHINE_SHA256 = 'd79512cf945e8828ff587662990ee595e596871928f402fa6fef470b144d7079'
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command, log_name):
    result = subprocess.run(command, cwd=ROOT, text=True, capture_output=True)
    (ROOT / '.logs').mkdir(exist_ok=True)
    (ROOT / '.logs' / log_name).write_text(result.stdout + result.stderr)
    if len(result.stdout) > 8000:
        print(f'Full output saved to .logs/{log_name}')
        print('\n'.join(result.stdout.splitlines()[-8:]))
    else:
        print(result.stdout, end='')
    print(result.stderr, end='', file=sys.stderr)
    if result.returncode:
        raise SystemExit(result.returncode)
    return result.stdout


def main():
    assert digest(MACHINE) == MACHINE_SHA256, 'The current literal machine changed.'
    # Keep checking the previous 297-state literal import as well.
    old = ROOT.parent / 'results/exact-quotient/quotient-297.tm'
    n, expected = generate_candidate(old, old.with_suffix('.certificate.json'))
    assert n == 297 and (ROOT / 'RiemannMachineVerification/Quotient297.lean').read_text() == expected
    for n, path, module in (
        (295, 'machine/riemann295.tm', 'Machine295'),
        (381, 'machine/riemann295.compiled.tm', 'Reallocated/Machine381'),
        (342, 'machine/riemann295.macro.tm', 'Reallocated/Machine342'),
    ):
        expected = generate(n, path, digest(ROOT.parent / path))
        if module.startswith('Reallocated/'):
            expected = expected.replace('namespace RiemannMachineVerification\n',
                                        'namespace RiemannMachineVerification.Reallocated\n')
            expected = expected.replace('end RiemannMachineVerification',
                                        'end RiemannMachineVerification.Reallocated')
        assert (ROOT / 'RiemannMachineVerification' / (module + '.lean')).read_text() == expected, module
    # This preserves all four original acceptance pins and also builds the headline.
    run([sys.executable, 'check_acceptance.py'], 'acceptance.log')
    run([sys.executable, 'generate_tables.py', '--check'], 'tables.log')
    with tempfile.TemporaryDirectory(prefix='riemann-headline-') as directory:
        probe = Path(directory) / 'HeadlineCheck.lean'
        probe.write_text('''import RiemannMachineVerification
open RiemannMachineVerification
example : headlineMachine = machine295 := rfl
example : HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n := machine295_correct
example : HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n := headline_correct
#print axioms RiemannMachineVerification.machine295_correct
#print axioms RiemannMachineVerification.headline_correct
''')
        output = run(['lake', 'env', 'lean', str(probe)], 'headline.log')
    for theorem in ('machine295_correct', 'headline_correct'):
        name = 'RiemannMachineVerification.' + theorem
        match = re.search(r"'" + re.escape(name) + r"' depends on axioms: \[([^\]]*)\]", output)
        if match:
            axioms = {x.strip() for x in match[1].split(',') if x.strip()}
        elif f"'{name}' does not depend on any axioms" in output:
            axioms = set()
        else:
            raise SystemExit(f'Unrecognized axiom audit for {name}.')
        assert axioms <= ALLOWED, f'Forbidden axioms for {name}: {axioms - ALLOWED}'
    paths = [ROOT / 'RiemannMachineVerification.lean', ROOT / 'Audit.lean']
    paths += sorted((ROOT / 'RiemannMachineVerification').rglob('*.lean'))
    report = {
        'verified_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'status': 'accepted',
        'theorem': 'RiemannMachineVerification.machine295_correct',
        'headline': 'RiemannMachineVerification.headline_correct',
        'statement': 'HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n',
        'axioms': sorted(axioms),
        'lean_toolchain': (ROOT / 'lean-toolchain').read_text().strip(),
        'mathlib_revision': '905b95818eb32af7874a58b427f50c1711a5e96c',
        'machine_states': 295,
        'machine_file': str(MACHINE.relative_to(ROOT.parent)),
        'machine_sha256': MACHINE_SHA256,
        'original_target': 'RiemannMachineVerification.machine299_correct',
        'checks': {'frozen_acceptance': 'passed', 'headline_type_and_axioms': 'passed',
                   'all_seven_literal_tables': 'passed', 'literal_imports': 'byte-for-byte match'},
        'proof_source_sha256': {str(p.relative_to(ROOT)): digest(p) for p in paths},
    }
    (ROOT / 'verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print('ACCEPTED: the 295-state headline and original 299-state target are proved with only permitted axioms.')


if __name__ == '__main__':
    main()
