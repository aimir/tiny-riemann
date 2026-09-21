"""Generate local proof guides and check the theorem-first definition excerpts.

Annotations explain finite certificate families uniformly. English summaries
of general lemmas are maintained in proof_summaries.py. No proof term changes.
"""
import argparse
from pathlib import Path
import re
from layout import FORMAL, P, PINNED, MODULES, path, strip_annotations
from proof_summaries import SUMMARIES

DECL = re.compile(r'^(?:private )?(?:theorem|lemma) ([\w.]+)', re.M)
NEXT = re.compile(r'^(?:(?:private )?(?:theorem|lemma|def|abbrev|structure|inductive)|end |namespace )', re.M)
FROZEN = {path(MODULES[m]) for m in PINNED}


def role(file):
    rel = file.relative_to(FORMAL).as_posix()
    if rel.startswith('Validation/'):
        return 'Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain.'
    if '/Generated/Reachability/' in rel or '/BooleanCertificate.' in rel or '/WindowInvariant.' in rel:
        return 'Supplies the inductive read masks used to justify the 339-to-278-state quotient.'
    if '/Generated/RegisterRefinement/' in rel or rel.endswith('/Registers/Refinement.lean'):
        return 'Connects the implementation register program to the arithmetic program despite different temporary values.'
    if '/Generated/Counter/' in rel or '/Generated/Dispatch/' in rel:
        return 'Discharges a finite compiler obligation used by the tape-to-register simulation.'
    if '/Generated/ShortPaths/' in rel or '/Reduction/' in rel:
        return 'Preserves blank-tape halting through local path replacement and the invariant-restricted quotient.'
    if '/Arithmetic/' in rel:
        return 'Connects the arithmetic computation and its search to the exact Counterexample predicate.'
    if '/Tape/' in rel:
        return 'Connects operations on the binary tape to unbounded natural-valued register execution.'
    if '/Registers/' in rel:
        return 'Supplies the shared register execution theory used in compiler correctness and transfer expansion.'
    if '/Tables/' in rel or '/Specification/' in rel:
        return 'Binds the proof to the literal machine or program table.'
    return 'Supplies the simulation and execution facts used to compose the headline equivalence.'


def summary(name, declaration):
    if name in SUMMARIES:
        return SUMMARIES[name]
    if m := re.fullmatch(r'(RExec|ZExec)\.(refl|trans|prepend|single)', name):
        return {'refl': 'Zero steps give a finite execution from a configuration to itself.',
                'trans': 'Two consecutive finite executions compose into one.',
                'prepend': 'A single initial step can be prepended to a finite execution.',
                'single': 'A single verified step gives a finite execution.'}[m[2]]
    if m := re.fullmatch(r'table(\d+)_size', name):
        return f'The literal transition array contains exactly {m[1]} ordinary states.'
    if m := re.fullmatch(r'counter_check_(\d+)_(false|true)', name):
        return f'Counter value {m[1]}: the finite tape routine implements addition of {1 if m[2] == "false" else 2} modulo the counter size.'
    if m := re.fullmatch(r'dispatcher_check_(\d+)', name):
        return f'Counter value {m[1]}: dispatch reaches the entry and counter contents specified by the primitive instruction.'
    if m := re.fullmatch(r'macro_check_(\d+)', name):
        return f'Shortened state {m[1]}: both read-symbol transitions satisfy the local expansion certificate.'
    if m := re.fullmatch(r'inv(\d+)_(claim|shift)(\d+)', name):
        what = 'Boolean decision-diagram identity' if m[2] == 'claim' else 'decision-diagram identity after the tape write and head shift'
        return f'Reachability stage {m[1]}, certificate {m[3]}: proves the displayed {what} for every tape.'
    if m := re.fullmatch(r'inv(\d+)_(initial|closed|read_mask)', name):
        return f'Reachability stage {m[1]}: ' + {
            'initial': 'the blank initial configuration satisfies the predicate.',
            'closed': 'each permitted machine transition preserves the tape predicate.',
            'read_mask': 'the tape predicate implies the advertised set of readable symbols.'}[m[2]]
    if m := re.fullmatch(r'(?:arithmetic_instruction|instruction[01])_(\d+)', name):
        return f'Address {m[1]} has exactly the displayed instruction in the literal register-program array.'
    if m := re.fullmatch(r'path(\d+)_([01])_([01])', name):
        return f'Boundary {m[1]}, {"zero" if m[2] == "0" else "positive"} branch: the {"arithmetic" if m[3] == "0" else "implementation"} program follows the displayed finite path for all register values satisfying the guard.'
    if m := re.fullmatch(r'advance(\d+)', name):
        return f'Boundary {m[1]}: both register programs advance by positive numbers of steps to another related boundary.'
    if name == 'Boundary.congr_values':
        return 'Replacing equal register-value functions preserves the paired boundary relation.'
    if m := re.fullmatch(r'(counter|dispatcher)_(?:positive_)?chunk_(\d+)', name):
        return f'Collects the {m[1]} obligations for addresses {64*int(m[2])} through {64*int(m[2])+63}.'
    if 'chunk' in name:
        return 'Collects the finite cases for the displayed high-counter chunk, covering every low index.'
    if m := re.fullmatch(r'multiply_(loop|block)_(\d+)', name):
        return f'The multiplication {m[1]} at address {m[2]} computes the stated natural product and register values.'
    if m := re.fullmatch(r'compiled_harmonic(_loop)?_(\d+)', name):
        return f'The harmonic {"loop" if m[1] else "initialization and loop"} at address {m[2]} computes the exact harmonic numerator and denominator.'
    if m := re.fullmatch(r'subtraction_loop_(\d+)', name):
        return f'The countdown loop at address {m[1]} computes truncated natural subtraction.'
    if m := re.fullmatch(r'machine(\d+)_iff_machine(\d+)', name):
        return f'The literal {m[1]}-state and {m[2]}-state machines have equivalent blank-tape halting behavior.'
    if m := re.fullmatch(r'machine(\d+)_(scan_end|delete_at_end|insert_and_return)', name):
        return {'scan_end': 'The scan reaches the end delimiter of the encoded register area.',
                'delete_at_end': 'The deletion routine removes the end mark and returns to the required position.',
                'insert_and_return': 'The insertion routine inserts the encoded mark and returns to its required position.'}[m[2]]
    if m := re.fullmatch(r'lcm_(value|bound)_(\d+)', name):
        return (f'The initial-segment LCM at index {m[2]} equals the displayed exact natural number.'
                if m[1] == 'value' else
                f'The initial-segment LCM at index {m[2]} is at most the displayed power of two.')
    if m := re.fullmatch(r'(?:mul|harmonic|lcm|div|square|sub|main|tail|test)_[\w]+', name):
        pc = re.search(r'\d+$', name)
        return f'Checks the displayed arithmetic register path{(" at address " + pc[0]) if pc else ""}, including its branch guard and final register values.'
    if name.startswith(('transferSite', 'transfer_', 'site_', 'macro_site', 'primitive_shape', 'dispatcher_positive', 'counter_check', 'dispatcher_check', 'macro_check')):
        return 'Certifies the displayed instruction shape or finite execution case used by the compiler simulation.'
    raise ValueError(f'Missing English theorem summary: {name}')


def method(declaration):
    body = declaration.split(':=', 1)[-1]
    if m := re.search(r'\binduction ([\w.]+)', body):
        return f'Induction on `{m[1]}`, using the displayed step equations and auxiliary lemmas.'
    if re.fullmatch(r'\s*(?:by\s+)?rfl\s*', body):
        return 'Definitional reduction in the Lean kernel.'
    refs = re.findall(r'\b(?:apply|exact|using) ([\w.]+)', body)
    refs = [x for x in dict.fromkeys(refs) if x not in {'h', 'ht', 'hs', 'he', 'ih', 'this'}]
    if refs:
        return 'Combines ' + ', '.join('`' + x + '`' for x in refs[:3]) + ' with the displayed local equations.'
    if 'fin_cases' in body or 'decide' in body:
        return 'Enumerates the stated finite cases and checks their reductions in Lean.'
    if 'simp' in body or 'rw ' in body:
        return 'Rewrites the defining equations and the cited arithmetic or execution facts.'
    return 'Composes the displayed previously proved facts by ordinary Lean inference.'


def annotate(file, text):
    if file in FROZEN:
        return text
    text = strip_annotations(text)
    matches = list(DECL.finditer(text))
    out, pos = [], 0
    for m in matches:
        end = NEXT.search(text, m.end())
        declaration = text[m.start():end.start() if end else len(text)].strip()
        # A pre-existing explanatory docstring remains the authoritative guide.
        if text[max(0,m.start()-2048):m.start()].rstrip().endswith('-/'):
            continue
        out.append(text[pos:m.start()])
        out.append('/-- [proof-guide] ' + summary(m[1], declaration) + '\nProof: ' + method(declaration)
                   + '\nRole: ' + role(file) + ' -/\n')
        pos = m.start()
    out.append(text[pos:])
    return ''.join(out)


def excerpts():
    def body(file):
        s = file.read_text()
        return s.split('namespace ' + P + '\n', 1)[1].rsplit('end ' + P, 1)[0].strip()
    arithmetic = body(FORMAL/P/'Specification/Arithmetic.lean')
    semantics = body(FORMAL/P/'Specification/MachineSemantics.lean')
    machine = (FORMAL/P/'Specification/Machine278.lean').read_text()
    machine = machine[machine.index('def machine278'):machine.rindex('end ' + P)].strip()
    return '''/-! BEGIN CHECKED SPECIFICATION
## Meaning of the headline

The literal 278-state binary machine halts from its all-zero tape if and only if
some natural number at least 254 satisfies the exact rational inequality below.
Halting is existential over all finite running times; the tape is indexed by
all integers. The ordinary-state count excludes the separate halted state.

The following are exact excerpts of the imported canonical definitions, checked
by `python3 tools/document.py --check`. Lean requires definitions before use, so
they are imported above the theorem and displayed here in reading order.

### Arithmetic predicate (Specification/Arithmetic.lean)
```lean
''' + arithmetic + '''
```

### Execution (Specification/MachineSemantics.lean)
```lean
''' + semantics + '''
```

### Exact machine (Specification/Machine278.lean)
```lean
''' + machine + '''
```

`table278` is the complete literal array in `Specification/Machine278.lean`.
Its input is `results/clique-target278/fefaa549f250fd12/quotient-278.tm`, SHA-256
`268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306`.
The checker compares every row and audits the theorem's axioms. See `README.md`
for the proof map and verification commands. Equivalence of the arithmetic
predicate to RH is outside this theorem's scope.
END CHECKED SPECIFICATION -/'''


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    files = [FORMAL/(P+'.lean'), FORMAL/'Validation.lean']
    files += sorted((FORMAL/P).rglob('*.lean')) + sorted((FORMAL/'Validation').rglob('*.lean'))
    changed = []
    for file in files:
        original = file.read_text()
        updated = annotate(file, original)
        if file == FORMAL/(P+'.lean'):
            updated = re.sub(r'/\-! BEGIN CHECKED SPECIFICATION.*?END CHECKED SPECIFICATION -/\n*', '', updated, flags=re.S)
            at = updated.index('/-- Public name')
            updated = updated[:at] + excerpts() + '\n\n' + updated[at:]
        if updated != original:
            changed.append(str(file.relative_to(FORMAL)))
            if not args.check:
                file.write_text(updated)
    if args.check and changed:
        raise SystemExit('Stale proof documentation:\n' + '\n'.join(changed))
    print(f'Proof guides and specification excerpts: {len(files)} modules checked; {len(changed)} updated.')


if __name__ == '__main__':
    main()
