"""Check the exact 278-state theorem, fixed specification and literal machine inputs."""
from pathlib import Path
import datetime
import hashlib
import json
import re
import subprocess
import sys
import tempfile

sys.path.insert(0, str(Path(__file__).parent / 'generators'))
from layout import FORMAL, MODULES, path as module_path, translate, proof_sources
from document import annotate
from build import lean_command
from generate_tables import generate

ROOT = FORMAL
MACHINE = ROOT.parent / 'results/clique-target278/fefaa549f250fd12/quotient-278.tm'
MACHINE_SHA256 = '268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306'
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}
SPECIFICATION_PINS = {
    'RiemannMachineVerification/Specification/MachineSemantics.lean':
        'bf17d57e37bdce44be15c0ebc61cfb3a86db671adcd494173e86fb86f6d7424a',
    'RiemannMachineVerification/Specification/Arithmetic.lean':
        'a4fc7ad44a5a5118e55236f849fa5cbc3c91b75b54477564744bb4115e87a24b',
}


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


def checked_axioms(output, name):
    match = re.search(r"'" + re.escape(name) + r"' depends on axioms: \[([^\]]*)\]", output)
    if match:
        axioms = {x.strip() for x in match[1].split(',') if x.strip()}
    elif f"'{name}' does not depend on any axioms" in output:
        axioms = set()
    else:
        raise SystemExit(f'Unrecognized axiom audit for {name}.')
    assert axioms <= ALLOWED, f'Forbidden axioms for {name}: {axioms - ALLOWED}'
    return sorted(axioms)


def main():
    assert digest(MACHINE) == MACHINE_SHA256, 'The current literal machine changed.'
    for file, expected in SPECIFICATION_PINS.items():
        assert digest(ROOT / file) == expected, f'Approved specification changed: {file}'
    tables = {}
    for n, relative, module in (
        (278, 'results/clique-target278/fefaa549f250fd12/quotient-278.tm', 'Machine278'),
        (389, 'results/unified-target278/fefaa549f250fd12/compiled.tm', 'Optimized278/Machine389'),
        (339, 'results/unified-target278/fefaa549f250fd12/macro.tm', 'Optimized278/Machine339'),
    ):
        tables[relative] = digest(ROOT.parent / relative)
        expected = generate(n, relative, tables[relative])
        if '/' in module:
            namespace = 'RiemannMachineVerification.' + module.split('/')[0]
            expected = expected.replace('namespace RiemannMachineVerification\n',
                                        'namespace ' + namespace + '\n')
            expected = expected.replace('end RiemannMachineVerification',
                                        'end ' + namespace)
        old = 'RiemannMachineVerification.' + module.replace('/', '.')
        dest = module_path(MODULES[old])
        assert dest.read_text() == annotate(dest, translate(expected)), module
    # Check the source graph before building, so deleted or unrelated modules
    # cannot silently be supplied by leftover local build artifacts.
    run([sys.executable, 'tools/check_layout.py'], 'layout.log')
    run([sys.executable, 'tools/document.py', '--check'], 'documentation.log')
    run([sys.executable, 'tools/build.py'], 'headline-build.log')
    with tempfile.TemporaryDirectory(prefix='riemann-headline-') as directory:
        probe = Path(directory) / 'HeadlineCheck.lean'
        probe.write_text('''import RiemannMachineVerification
open RiemannMachineVerification
example : headlineMachine = machine278 := rfl
example : HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n := machine278_correct
example : HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n := headline_correct
#print axioms RiemannMachineVerification.machine278_correct
#print axioms RiemannMachineVerification.headline_correct
''')
        output = run(lean_command(probe), 'headline.log')
    theorem_axioms = {name: checked_axioms(output, 'RiemannMachineVerification.' + name)
                      for name in ('machine278_correct', 'headline_correct')}
    audit_source = ROOT / 'Audit.lean'
    audit_output = run(lean_command(audit_source), 'axiom-audit.log')
    principal_axioms = {name: checked_axioms(audit_output, name)
                       for name in re.findall(r'^#print axioms ([\w.]+)', audit_source.read_text(), re.M)}
    report = {
        'verified_at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'status': 'accepted',
        'theorem': 'RiemannMachineVerification.machine278_correct',
        'headline': 'RiemannMachineVerification.headline_correct',
        'statement': 'HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n',
        'axioms': theorem_axioms['machine278_correct'],
        'theorem_axioms': theorem_axioms,
        'principal_axioms': principal_axioms,
        'lean_toolchain': (ROOT / 'lean-toolchain').read_text().strip(),
        'mathlib_revision': '905b95818eb32af7874a58b427f50c1711a5e96c',
        'machine_states': 278,
        'machine_file': str(MACHINE.relative_to(ROOT.parent)),
        'machine_sha256': MACHINE_SHA256,
        'specification_sha256': SPECIFICATION_PINS,
        'literal_input_sha256': tables,
        'checks': {'fixed_specification': 'passed', 'headline_type_and_axioms': 'passed',
                   'principal_axioms': 'passed', 'all_three_literal_tables': 'passed',
                   'literal_imports': 'byte-for-byte match', 'documentation_and_layout': 'passed'},
        'proof_source_sha256': {str(p.relative_to(ROOT)): digest(p) for p in proof_sources()},
    }
    (ROOT / 'verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print('ACCEPTED: the exact 278-state headline is proved with the fixed specification and only permitted axioms.')


if __name__ == '__main__':
    main()
