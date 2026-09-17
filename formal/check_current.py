"""Check the current 297-state headline and the unchanged original acceptance target."""
from pathlib import Path
import datetime
import hashlib
import json
import re
import subprocess
import sys
import tempfile

from generate_candidate_quotient import generate_candidate

ROOT = Path(__file__).resolve().parent
MACHINE = ROOT.parent / 'results/exact-quotient/quotient-297.tm'
CERTIFICATE = MACHINE.with_suffix('.certificate.json')
MACHINE_SHA256 = '724fb7359ca178e9919390958f157b98d9576999cb6cd62a140eef9fe1a50ae3'
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
    n, expected = generate_candidate(MACHINE, CERTIFICATE)
    proof = ROOT / 'RiemannMachineVerification/Quotient297.lean'
    assert n == 297 and proof.read_text() == expected, 'Literal table or quotient import changed.'
    # This preserves all four original acceptance pins and also builds the headline.
    run([sys.executable, 'check_acceptance.py'], 'acceptance.log')
    run([sys.executable, 'generate_tables.py', '--check'], 'tables.log')
    with tempfile.TemporaryDirectory(prefix='riemann-headline-') as directory:
        probe = Path(directory) / 'HeadlineCheck.lean'
        probe.write_text('''import RiemannMachineVerification
open RiemannMachineVerification
example : headlineMachine = machine297 := rfl
example : HaltsBlank machine297 ↔ ∃ n : ℕ, Counterexample n := machine297_correct
example : HaltsBlank machine297 ↔ ∃ n : ℕ, Counterexample n := headline_correct
#print axioms RiemannMachineVerification.machine297_correct
#print axioms RiemannMachineVerification.headline_correct
''')
        output = run(['lake', 'env', 'lean', str(probe)], 'headline.log')
    for theorem in ('machine297_correct', 'headline_correct'):
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
    paths += sorted((ROOT / 'RiemannMachineVerification').glob('*.lean'))
    report = {
        'verified_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'status': 'accepted',
        'theorem': 'RiemannMachineVerification.machine297_correct',
        'headline': 'RiemannMachineVerification.headline_correct',
        'statement': 'HaltsBlank machine297 ↔ ∃ n : ℕ, Counterexample n',
        'axioms': sorted(axioms),
        'lean_toolchain': (ROOT / 'lean-toolchain').read_text().strip(),
        'mathlib_revision': '905b95818eb32af7874a58b427f50c1711a5e96c',
        'machine_states': 297,
        'machine_file': str(MACHINE.relative_to(ROOT.parent)),
        'machine_sha256': MACHINE_SHA256,
        'original_target': 'RiemannMachineVerification.machine299_correct',
        'checks': {'frozen_acceptance': 'passed', 'headline_type_and_axioms': 'passed',
                   'all_four_literal_tables': 'passed', 'quotient_import': 'byte-for-byte match'},
        'proof_source_sha256': {str(p.relative_to(ROOT)): digest(p) for p in paths},
    }
    (ROOT / 'verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print('ACCEPTED: the 297-state headline and original 299-state target are proved with only permitted axioms.')


if __name__ == '__main__':
    main()
