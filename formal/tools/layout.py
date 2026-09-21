"""Map generator-internal component names to the public proof layout.

The map is an interface to the generators, not a second collection of proofs.
All templates are read from the checked Lean sources in the public layout.
"""
from collections import defaultdict
import json
from pathlib import Path
import re

FORMAL = Path(__file__).resolve().parent.parent
REPO = FORMAL.parent
DATA = json.loads((Path(__file__).parent / 'module_map.json').read_text())
MODULES = DATA['modules']
P = 'RiemannMachineVerification'
PINNED = {P + '.' + name for name in ('Arithmetic', 'Semantics', 'Machine299', 'Target')}
MODELS = {P + '.' + prefix + name for prefix in ('', 'Optimized278.')
          for name in ('RegisterMachine', 'RegisterExecution', 'TransferSite')}
ENTRY = {P + '.Correctness278', P + '.Headline'}


def path(module, root=FORMAL):
    return root / (module.replace('.', '/') + '.lean')


def strip_annotations(text):
    """Remove only annotations emitted by document.py, never proof terms."""
    return re.sub(r'/-- \[proof-guide\].*?-\/\n', '', text, flags=re.S)


def translate(text):
    text = re.sub(r'^import +(RiemannMachineVerification[.\w]*)\s*$',
                  lambda m: 'import ' + MODULES.get(m[1], m[1]), text, flags=re.M)
    text = text.replace('RiemannMachineVerification.Optimized278', P + '.Implementation')
    text = text.replace('Optimized278.', 'Implementation.')
    for a, b in DATA['declaration_renames'].items():
        text = re.sub(r'\b' + a + r'\b', b, text)
    seen, lines = set(), []
    for line in text.splitlines():
        if line.startswith('import '):
            if line in seen:
                continue
            seen.add(line)
        lines.append(line)
    return '\n'.join(lines) + '\n'


def template(text):
    inverse = {new: old for old, new in reversed(list(MODULES.items()))}
    text = strip_annotations(text)
    text = re.sub(r'^import +([.\w]+)\s*$',
                  lambda m: 'import ' + inverse.get(m[1], m[1]), text, flags=re.M)
    text = text.replace(P + '.Implementation', P + '.Optimized278')
    text = text.replace('Implementation.', 'Optimized278.')
    for a, b in DATA['declaration_renames'].items():
        text = re.sub(r'\b' + b + r'\b', a, text)
    return text


def group_outputs(items):
    groups = defaultdict(list)
    for old, text in items.items():
        if old in MODELS | ENTRY:
            continue
        groups[MODULES[old]].append((old, text if old in PINNED else translate(text)))
    outputs = {}
    for module, members in groups.items():
        if len(members) == 1:
            outputs[module] = members[0][1]
            continue
        assert '.Generated.RegisterRefinement.' in module, module
        members.sort(key=lambda item: int(re.search(r'\d+$', item[0])[0]))
        imports, chunks = set(), []
        for _, body in members:
            imports.update(re.findall(r'^import .+$', body, re.M))
            body = re.sub(r'^import .+\n', '', body, flags=re.M)
            body = re.sub(r'^(namespace|end) ' + P + r'\.Implementation\n', '', body, flags=re.M)
            chunks.append(body.strip())
        outputs[module] = ('\n'.join(sorted(imports)) + '\n\nnamespace ' + P + '.Implementation\n\n'
                           + '\n\n'.join(chunks) + '\n\nend ' + P + '.Implementation\n')
    return outputs
