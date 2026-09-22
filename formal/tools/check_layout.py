"""Check public proof navigation, theorem documentation and local doc links."""
import re
import subprocess
from urllib.parse import unquote
from layout import FORMAL, REPO, P, proof_sources
from document import DECL


def main():
    roots = [FORMAL/P, FORMAL/'tools']
    sources = proof_sources()
    files = {'.'.join(p.relative_to(FORMAL).with_suffix('').parts): p for p in sources}
    errors, imports, count = [], {}, 0
    directories = {FORMAL}
    for root in roots:
        directories.add(root)
        for file in root.rglob('*'):
            if file.is_file() and file.suffix in ('.lean', '.py', '.json', '.md') and '__pycache__' not in file.parts:
                directories.update(p for p in file.parents if p == FORMAL or FORMAL in p.parents)
    for directory in directories:
        if not (directory/'README.md').is_file():
            errors.append(f'Missing directory README: {directory.relative_to(FORMAL)}')
    for module, file in files.items():
        text = file.read_text()
        imports[module] = re.findall(r'^import ([\w.]+)', text, re.M)
        for dep in imports[module]:
            if dep.startswith((P, 'Validation')) and dep not in files:
                errors.append(f'{module}: unresolved local import {dep}')
        for match in DECL.finditer(text):
            count += 1
            if not text[max(0,match.start()-2048):match.start()].rstrip().endswith('-/'):
                errors.append(f'{module}: undocumented theorem {match[1]}')
    seen, todo = set(), [P]
    while todo:
        module = todo.pop()
        if module in seen:
            continue
        seen.add(module)
        todo.extend(dep for dep in imports.get(module, []) if dep in files)
    assert set(files) - seen == {'Audit'}, 'Proof tree contains modules outside the headline dependencies.'
    docs = {REPO/p for p in subprocess.check_output(['git','ls-files','-z','*.md'],cwd=REPO).decode().split('\0') if p}
    docs.update(d/'README.md' for d in directories)
    for file in sorted(docs):
        if not file.exists():
            continue
        for label, target in re.findall(r'\[([^\]]*)\]\(([^)]+)\)', file.read_text()):
            target = unquote(target.split('#',1)[0].split(' "',1)[0].strip('<>'))
            if not target or '://' in target or target.startswith(('mailto:', 'app:')):
                continue
            if not (file.parent/target).exists():
                errors.append(f'{file.relative_to(REPO)}: broken link {target}')
    if errors:
        raise SystemExit('\n'.join(errors))
    print(f'Layout accepted: {len(files)} Lean modules, {len(seen)} headline dependencies, {count} documented theorems; directory guides and local links resolve.')


if __name__ == '__main__':
    main()
