"""Reproduce the current machine's proof sources in an isolated directory.

Use --check for a byte-for-byte comparison, or --write to replace generated
sources. The generator component names are resolved by module_map.json;
Python proposes proof terms, and Lean remains their verifier.
"""
import argparse
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
from layout import FORMAL, REPO, P, MODULES, MODELS, ENTRY, path, template, group_outputs

GENERATORS = Path(__file__).parent / 'generators'
STAGES = ('optimized278', 'refinement278', 'backend278', 'reduction278')


def generate(suite="headline"):
    stages = STAGES if suite == "headline" else (("register_program", "arithmetic_paths", "lcm_bounds") if suite == "arithmetic" else ("reallocated",))
    with tempfile.TemporaryDirectory(prefix='riemann-proof-') as directory:
        root = Path(directory)
        formal = root / 'formal'
        formal.mkdir()
        shutil.copytree(REPO / 'machine', root / 'machine')
        for name in ('tools', 'results', 'vendor', 'candidates'):
            if (REPO / name).exists():
                (root / name).symlink_to(REPO / name, target_is_directory=True)
        for script in GENERATORS.glob('*.py'):
            shutil.copyfile(script, formal / script.name)
        for old, new in MODULES.items():
            if old in ENTRY or '.RefinementBlock' in old:
                continue
            out = path(old, formal)
            out.parent.mkdir(parents=True, exist_ok=True)
            out.write_text(template(path(new).read_text()))
        for stage in stages:
            result = subprocess.run([sys.executable, str(formal / ('generate_' + stage + '.py'))],
                                    cwd=root, text=True, capture_output=True)
            if result.returncode:
                raise RuntimeError(result.stdout + result.stderr)
        if suite == 'headline':
            owned = {old for old in MODULES if '.Optimized278.' in old} | {P + '.Machine278'}
        elif suite == 'arithmetic':
            owned = {old for old in MODULES if old.startswith(P + '.ArithmeticPath')}
            owned |= {P + '.RegisterProgram', P + '.LcmBounds'}
        else:
            owned = {old for old in MODULES if '.Reallocated.' in old}
            owned |= {P + '.Machine295', P + '.Correctness295'}
            for artifact in (root / 'machine').glob('riemann295.*'):
                assert artifact.read_bytes() == (REPO / 'machine' / artifact.name).read_bytes(), artifact.name
        items = {old: path(old, formal).read_text() for old in owned - MODELS - ENTRY}
        return group_outputs(items)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--suite', choices=('headline', 'arithmetic', 'table295'), default='headline')
    parser.add_argument('--write', action='store_true')
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    if args.write and args.check:
        parser.error('Choose either --write or --check.')
    from document import annotate
    outputs = generate(args.suite)
    changed = []
    for module, text in sorted(outputs.items()):
        dest = path(module)
        text = annotate(dest, text)
        if dest.read_text() != text:
            changed.append(str(dest.relative_to(FORMAL)))
            if args.write:
                dest.write_text(text)
    if changed and not args.write:
        raise SystemExit('Generated source differences:\n' + '\n'.join(changed))
    print(f'{len(outputs)} generated modules: ' + ('updated ' + str(len(changed)) if args.write else 'byte-for-byte match'))


if __name__ == '__main__':
    main()
