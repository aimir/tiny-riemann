"""Strict acceptance gate for the proved, frozen 299-state theorem.

The pinned files define the approved semantics, predicate and literal table.
Only the final unconditional theorem, with the permitted foundational axioms,
can pass this gate. Successful intermediate builds do not count as acceptance.
check_current.py retains this gate and additionally checks the 278-state headline.
"""
from pathlib import Path
import hashlib
import re
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parent
PINS = {
    'Semantics': 'bf17d57e37bdce44be15c0ebc61cfb3a86db671adcd494173e86fb86f6d7424a',
    'Arithmetic': 'a4fc7ad44a5a5118e55236f849fa5cbc3c91b75b54477564744bb4115e87a24b',
    'Machine299': '9f1e38b4be64f69654e1dbb30d1d81af93d19af505a143131cf862a6d681d06f',
    'Target': '922f30edb4cb4c419efd6b57f26152e9be55dae9f271645e232f525eaf94731c',
}
for name, digest in PINS.items():
    path = ROOT / 'RiemannMachineVerification' / f'{name}.lean'
    if hashlib.sha256(path.read_bytes()).hexdigest() != digest:
        raise SystemExit(f'Acceptance failed: approved definition changed: {path}')
machine = ROOT.parent / 'machine/riemann.tm'
if hashlib.sha256(machine.read_bytes()).hexdigest() != '00402eabd3bcc448d97042458ea0186598d0f7c066673d9584262eed87c9840a':
    raise SystemExit('Acceptance failed: frozen machine table changed.')

subprocess.run(['lake', 'build', 'RiemannMachineVerification'], cwd=ROOT, check=True)
with tempfile.TemporaryDirectory(prefix='riemann-acceptance-') as directory:
    probe = Path(directory) / 'AcceptanceCheck.lean'
    probe.write_text('''import RiemannMachineVerification
open RiemannMachineVerification
example : HaltsBlank machine299 ↔ ∃ n : ℕ, Counterexample n := machine299_correct
#print axioms RiemannMachineVerification.machine299_correct
''')
    result = subprocess.run(['lake', 'env', 'lean', str(probe)], cwd=ROOT,
                            text=True, capture_output=True)
    print(result.stdout, end='')
    print(result.stderr, end='')
    if result.returncode:
        raise SystemExit('Acceptance failed: the approved final theorem is not yet available as a checked proof.')
    match = re.search(r"'RiemannMachineVerification.machine299_correct' depends on axioms: \[([^\]]*)\]", result.stdout)
    if match:
        axioms = {x.strip() for x in match[1].split(',') if x.strip()}
    elif "'RiemannMachineVerification.machine299_correct' does not depend on any axioms" in result.stdout:
        axioms = set()
    else:
        raise SystemExit('Acceptance failed: axiom audit output was not recognized.')
    forbidden = axioms - {'propext', 'Classical.choice', 'Quot.sound'}
    if forbidden:
        raise SystemExit(f'Acceptance failed: forbidden axioms: {sorted(forbidden)}')
print('ACCEPTED: the frozen unconditional theorem is proved with only permitted axioms.')
