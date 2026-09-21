"""Check the current 278-state headline and the unchanged original acceptance target."""
from pathlib import Path
import datetime
import hashlib
import json
import re
import subprocess
import sys
import tempfile

sys.path.insert(0, str(Path(__file__).parent / 'generators'))
from layout import FORMAL, MODULES, PINNED, path as module_path, translate
from document import annotate
from build import lean_command
from generate_candidate_quotient import generate_candidate
from generate_tables import generate

ROOT = FORMAL
MACHINE = ROOT.parent / 'results/clique-target278/fefaa549f250fd12/quotient-278.tm'
MACHINE_SHA256 = '268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306'
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command, log_name):
    logs = ROOT / '.logs'
    logs.mkdir(exist_ok=True)
    log = logs / log_name
    print(f'Running {" ".join(command)}; output: .logs/{log_name}', flush=True)
    with log.open('w') as output:
        result = subprocess.run(command, cwd=ROOT, text=True,
                                stdout=output, stderr=subprocess.STDOUT)
    output = log.read_text()
    print('\n'.join(output.splitlines()[-35:]) if len(output) > 8000 else output, flush=True)
    if result.returncode:
        raise SystemExit(result.returncode)
    return output


def main():
    assert digest(MACHINE) == MACHINE_SHA256, 'The current literal machine changed.'
    for states, table, module in (
        (297, 'results/exact-quotient/quotient-297.tm', 'Machine297'),
        (298, 'results/global-quotient-298.tm', 'Machine298'),
    ):
        saved = ROOT.parent / table
        n, expected = generate_candidate(saved, saved.with_suffix('.certificate.json'))
        dest = ROOT / 'Validation/AcceptanceTargets' / (module + '.lean')
        assert n == states and dest.read_text() == annotate(dest, translate(expected))
    for n, path, module in (
        (299, 'machine/riemann.tm', 'Machine299'),
        (381, 'machine/riemann.compiled.tm', 'Machine381'),
        (342, 'machine/riemann.macro.tm', 'Machine342'),
        (278, 'results/clique-target278/fefaa549f250fd12/quotient-278.tm', 'Machine278'),
        (389, 'results/unified-target278/fefaa549f250fd12/compiled.tm', 'Optimized278/Machine389'),
        (339, 'results/unified-target278/fefaa549f250fd12/macro.tm', 'Optimized278/Machine339'),
        (295, 'machine/riemann295.tm', 'Machine295'),
        (381, 'machine/riemann295.compiled.tm', 'Reallocated/Machine381'),
        (342, 'machine/riemann295.macro.tm', 'Reallocated/Machine342'),
    ):
        expected = generate(n, path, digest(ROOT.parent / path))
        if '/' in module:
            namespace = 'RiemannMachineVerification.' + module.split('/')[0]
            expected = expected.replace('namespace RiemannMachineVerification\n',
                                        'namespace ' + namespace + '\n')
            expected = expected.replace('end RiemannMachineVerification',
                                        'end ' + namespace)
        old = 'RiemannMachineVerification.' + module.replace('/', '.')
        dest = module_path(MODULES[old])
        if old not in PINNED:
            expected = annotate(dest, translate(expected))
        assert dest.read_text() == expected, module
    # This preserves all four original acceptance pins and also builds the headline.
    run([sys.executable, 'tools/build.py'], 'headline-build.log')
    run([sys.executable, 'tools/check_acceptance.py'], 'acceptance.log')
    run([sys.executable, 'tools/document.py', '--check'], 'documentation.log')
    run([sys.executable, 'tools/check_layout.py'], 'layout.log')
    with tempfile.TemporaryDirectory(prefix='riemann-headline-') as directory:
        probe = Path(directory) / 'HeadlineCheck.lean'
        probe.write_text('''import Validation
open RiemannMachineVerification
example : headlineMachine = machine278 := rfl
example : HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n := machine278_correct
example : HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n := headline_correct
example : HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n := machine295_correct
example : HaltsBlank machine297 ↔ ∃ n : ℕ, Counterexample n := machine297_correct
example : HaltsBlank machine298 ↔ ∃ n : ℕ, Counterexample n := machine298_correct
example : HaltsBlank machine299 ↔ ∃ n : ℕ, Counterexample n := machine299_correct
#print axioms RiemannMachineVerification.machine295_correct
#print axioms RiemannMachineVerification.machine297_correct
#print axioms RiemannMachineVerification.machine298_correct
#print axioms RiemannMachineVerification.machine299_correct
#print axioms RiemannMachineVerification.machine278_correct
#print axioms RiemannMachineVerification.headline_correct
''')
        output = run(lean_command(probe), 'headline.log')
    theorem_axioms = {}
    for theorem in ('machine278_correct', 'headline_correct', 'machine295_correct', 'machine297_correct', 'machine298_correct', 'machine299_correct'):
        name = 'RiemannMachineVerification.' + theorem
        match = re.search(r"'" + re.escape(name) + r"' depends on axioms: \[([^\]]*)\]", output)
        if match:
            axioms = {x.strip() for x in match[1].split(',') if x.strip()}
        elif f"'{name}' does not depend on any axioms" in output:
            axioms = set()
        else:
            raise SystemExit(f'Unrecognized axiom audit for {name}.')
        theorem_axioms[theorem] = sorted(axioms)
        assert axioms <= ALLOWED, f'Forbidden axioms for {name}: {axioms - ALLOWED}'
    paths = [ROOT / 'RiemannMachineVerification.lean', ROOT / 'Validation.lean']
    paths += sorted((ROOT / 'Validation').rglob('*.lean'))
    paths += sorted((ROOT / 'RiemannMachineVerification').rglob('*.lean'))
    report = {
        'verified_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'status': 'accepted',
        'theorem': 'RiemannMachineVerification.machine278_correct',
        'headline': 'RiemannMachineVerification.headline_correct',
        'statement': 'HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n',
        'axioms': theorem_axioms['machine278_correct'],
        'theorem_axioms': theorem_axioms,
        'lean_toolchain': (ROOT / 'lean-toolchain').read_text().strip(),
        'mathlib_revision': '905b95818eb32af7874a58b427f50c1711a5e96c',
        'machine_states': 278,
        'machine_file': str(MACHINE.relative_to(ROOT.parent)),
        'machine_sha256': MACHINE_SHA256,
        'original_target': 'RiemannMachineVerification.machine299_correct',
        'checks': {'frozen_acceptance': 'passed', 'headline_type_and_axioms': 'passed',
                   'all_eleven_literal_tables': 'passed', 'literal_imports': 'byte-for-byte match',
                   'documentation_and_layout': 'passed'},
        'proof_source_sha256': {str(p.relative_to(ROOT)): digest(p) for p in paths},
    }
    (ROOT / 'verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print('ACCEPTED: the 278-state headline and original 299-state target are proved with only permitted axioms.')


if __name__ == '__main__':
    main()
