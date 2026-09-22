"""Package the current 278-state result, its proof, and the construction artifacts."""
from pathlib import Path
import hashlib
import json
import subprocess
import zipfile

from layout import proof_sources

ROOT = Path(__file__).resolve().parents[2]
FORMAL = ROOT / 'formal'


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def package_paths(manifest):
    paths = {ROOT / name for name in manifest['sha256']}
    paths.add(ROOT / 'machine/manifest.json')
    paths.add(ROOT / 'results/global-quotient-298.tm')
    paths.add(ROOT / 'results/global-quotient-298.certificate.json')
    paths.update(p for p in FORMAL.rglob('*') if p.is_file()
                 and p.suffix in {'.lean', '.md', '.py', '.json', '.toml'}
                 and not any(part.startswith('.') or part == '__pycache__'
                             for part in p.relative_to(FORMAL).parts))
    paths.add(FORMAL / 'lean-toolchain')
    paths.update((ROOT / 'machine').glob('riemann295.*'))
    for name in ('solve_quotient.py', 'test_solve_quotient.py', 'search_final.py',
                 'search_layout.py', 'check_reallocated.py', 'test_search_final.py',
                 'pc_layout.py', 'search_pc.py', 'test_pc_layout.py', 'check_pc.py',
                 'register_lowering.py', 'search_arithmetic.py', 'test_register_lowering.py',
                 'check_arithmetic.py', 'fragments.py', 'search_fragments.py',
                 'test_fragments.py', 'check_fragments.py', 'search_unified.py',
                 'test_search_unified.py', 'audit_unified.py', 'search_neighborhood.py',
                 'test_search_neighborhood.py', 'refine_quotients.py'):
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
                      'results/register-kernels', 'results/fragments', 'results/fragments-zero',
                      'results/unified-beam', 'results/unified-challengers', 'results/unified-wide',
                      'results/unified-target278', 'results/neighborhood278',
                      'results/clique-target278'):
        paths.update(p for p in (ROOT / directory).rglob('*') if p.is_file())

    # Local runs may leave transcripts beside certificates. Only versioned
    # inputs belong in a distributable bundle, even when logs exist on disk.
    tracked = set(subprocess.check_output(
        ['git', 'ls-files', '-z'], cwd=ROOT).decode().split('\0'))
    return {p for p in paths if p.relative_to(ROOT).as_posix() in tracked}


def package():
    # Verification reports and proof hashes are the durable inputs; console
    # logs are intentionally optional and never included in the archive.
    report = json.loads((FORMAL / 'verification.json').read_text())
    assert report['status'] == 'accepted' and report['machine_states'] == 278
    assert report['theorem'] == 'RiemannMachineVerification.machine278_correct'
    assert report['headline'] == 'RiemannMachineVerification.headline_correct'
    assert digest(ROOT / report['machine_file']) == report['machine_sha256']
    assert set(report['proof_source_sha256']) == {str(p.relative_to(FORMAL)) for p in proof_sources()}
    for name, expected in report['specification_sha256'].items():
        assert digest(FORMAL / name) == expected, name
    for name, expected in report['literal_input_sha256'].items():
        assert digest(ROOT / name) == expected, name
    for name, expected in report['proof_source_sha256'].items():
        assert digest(FORMAL / name) == expected, name
    manifest = json.loads((ROOT / 'machine/manifest.json').read_text())
    for name, expected in manifest['sha256'].items():
        assert digest(ROOT / name) == expected, name
    paths = package_paths(manifest)
    assert set(proof_sources()) <= paths, "Stage every proof source before packaging."

    target = ROOT / 'riemann-278-verified.zip'
    prefix = 'riemann-278/'
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
