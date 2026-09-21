"""Package the current 295-state result, its proof, and the preserved baseline."""
from pathlib import Path
import hashlib
import json
import zipfile

ROOT = Path(__file__).resolve().parent.parent
FORMAL = ROOT / 'formal'


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def package():
    acceptance = (FORMAL / '.logs/acceptance.log').read_text()
    assert acceptance.rstrip().endswith(
        'ACCEPTED: the frozen unconditional theorem is proved with only permitted axioms.')
    report = json.loads((FORMAL / 'verification.json').read_text())
    assert report['status'] == 'accepted' and report['machine_states'] == 295
    assert report['theorem'] == 'RiemannMachineVerification.machine295_correct'
    assert report['headline'] == 'RiemannMachineVerification.headline_correct'
    assert digest(ROOT / report['machine_file']) == report['machine_sha256']
    for name, expected in report['proof_source_sha256'].items():
        assert digest(FORMAL / name) == expected, name
    manifest = json.loads((ROOT / 'machine/manifest.json').read_text())
    for name, expected in manifest['sha256'].items():
        assert digest(ROOT / name) == expected, name

    paths = {ROOT / name for name in manifest['sha256']}
    paths.add(ROOT / 'machine/manifest.json')
    paths.update(p for p in FORMAL.iterdir() if p.is_file() and p.name != 'MacroProbe.lean')
    paths.update((FORMAL / 'RiemannMachineVerification').rglob('*.lean'))
    paths.update((ROOT / 'machine').glob('riemann295.*'))
    paths.add(FORMAL / 'experiments/Quotient297.lean')
    paths.add(FORMAL / 'experiments/NativeFragments.lean')
    for name in ('solve_quotient.py', 'test_solve_quotient.py', 'search_final.py',
                 'search_layout.py', 'check_reallocated.py', 'test_search_final.py',
                 'pc_layout.py', 'search_pc.py', 'test_pc_layout.py', 'check_pc.py',
                 'register_lowering.py', 'search_arithmetic.py', 'test_register_lowering.py',
                 'check_arithmetic.py', 'fragments.py', 'search_fragments.py',
                 'test_fragments.py', 'check_fragments.py'):
        paths.add(ROOT / 'tools' / name)
    for name in ('macro-layout-best.nql', 'macro-layout-second.nql', 'xfirst-1101-halt.nql'):
        paths.add(ROOT / 'candidates' / name)
    for directory in ('results/exact-quotient', 'results/final-beam',
                      'results/combined-beam', 'results/combined-296-exact',
                      'results/pc-layout', 'results/pc-focused', 'results/pc-local',
                      'results/pc-exact', 'results/pc-long-exact',
                      'results/register-lowering', 'results/register-focused',
                      'results/register-local', 'results/register-local2',
                      'results/register-allocation', 'results/register-facts',
                      'results/register-exact', 'results/register-exact-long',
                      'results/register-kernels', 'results/fragments', 'results/fragments-zero'):
        paths.update(p for p in (ROOT / directory).rglob('*') if p.is_file())

    target = ROOT / 'riemann-295-verified.zip'
    prefix = 'riemann-295/'
    with zipfile.ZipFile(target, 'w', zipfile.ZIP_DEFLATED, compresslevel=9) as result:
        for path in sorted(paths):
            name = prefix + path.relative_to(ROOT).as_posix()
            info = zipfile.ZipInfo(name, (2026, 9, 17, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = 0o100644 << 16
            result.writestr(info, path.read_bytes(), compresslevel=9)
    with zipfile.ZipFile(target) as result:
        assert result.testzip() is None
        for path in paths:
            name = prefix + path.relative_to(ROOT).as_posix()
            assert result.read(name) == path.read_bytes()
    checksum = digest(target)
    target.with_suffix('.zip.sha256').write_text(f'{checksum}  {target.name}\n')
    print(f'Packaged and checked {target.name}: {target.stat().st_size} bytes, SHA-256 {checksum}')


if __name__ == '__main__':
    package()
