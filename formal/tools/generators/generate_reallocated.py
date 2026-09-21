"""Generate kernel-checkable backend and reduction proofs for the 295-state result.

The arithmetic register program is reused. All finite dispatch, counter,
macro-expansion, reachability and quotient obligations are checked anew in
the Reallocated namespace, without changing the frozen original proofs.
"""
from pathlib import Path
from functools import cache
import hashlib
import json
import re
import runpy
import shutil
import sys
import tempfile

ROOT = Path(__file__).resolve().parent
sys.path[:0] = [str(ROOT), str(ROOT.parent / 'tools')]
from compile import compile_source
from search_final import compile_candidate
from tm_reduce import load, dump
from generate_register_program import leaf, instruction, REGISTERS
from generate_tables import generate
import generate_dispatcher_proofs as dispatcher

CANDIDATE = ROOT.parent / 'results/combined-beam/633541de8e59b7af'
PREFIX = 'RiemannMachineVerification.Reallocated'
FINAL = ROOT.parent / 'results/combined-296-exact/quotient-295.tm'


def main():
    metadata = json.loads((CANDIDATE / 'candidate.json').read_text())
    source = (CANDIDATE / 'source.nql').read_text()
    machine, order = compile_candidate(source, metadata['order'])
    baseline = compile_source((ROOT.parent / 'machine/riemann.nql').read_text())
    for macro in (False, True):
        assert all(instruction(leaf(machine.main, pc, macro), pc) ==
                   instruction(leaf(baseline.main, pc, macro), pc) for pc in range(2048))
    # Give physical selector states their original indices. This is just a
    # bijective state renaming, not a change to tape or register semantics.
    rename = {
        'reg_incr.7': 'transfer(_Gi,_scratch_2,_scratch_3)[01]',
        'transfer(_Gi,_scratch_2,_scratch_3)[01]': 'transfer(_Gdenom,_scratch_1,_scratch_2)[01]',
    }

    def renamed(value):
        if isinstance(value, str):
            return rename.get(value, value)
        if isinstance(value, list):
            return [renamed(x) for x in value]
        if isinstance(value, dict):
            result = {}
            for k, v in value.items():
                key = rename.get(k, k)
                if k.endswith((' 0', ' 1')):
                    q, b = k.rsplit(' ', 1)
                    key = rename.get(q, q) + ' ' + b
                result[key] = renamed(v)
            return result
        return value

    for stage in ('compiled', 'macro'):
        rows = load(CANDIDATE / f'{stage}.tm')
        normalized = {rename.get(q, q): [(w, d, rename.get(t, t)) for w, d, t in row]
                      for q, row in rows.items()}
        assert set(normalized) == set(load(ROOT.parent / f'machine/riemann.{stage}.tm'))
        dump(normalized, ROOT.parent / f'machine/riemann295.{stage}.tm')
    cert = json.loads(FINAL.with_suffix('.certificate.json').read_text())
    # Mapping domain is renamed; the final machine retains its literal names.
    normalized_cert = renamed({k: v for k, v in cert.items() if k != 'mapping'})
    normalized_cert['mapping'] = {rename.get(q, q): t for q, t in cert['mapping'].items()}
    for name, data in [('reduction', normalized_cert),
                       ('macros', renamed(json.loads((CANDIDATE / 'macros.json').read_text()))),
                       ('layout', {'register_order': order, 'candidate': str(CANDIDATE.relative_to(ROOT.parent))})]:
        (ROOT.parent / f'machine/riemann295.{name}.json').write_text(json.dumps(data, indent=2) + '\n')
    shutil.copyfile(FINAL, ROOT.parent / 'machine/riemann295.tm')
    (ROOT.parent / 'machine/riemann295.nql').write_text(source)

    originals = ROOT / 'RiemannMachineVerification'
    modules = {p.stem: p.read_text() for p in originals.glob('*.lean')}

    @cache
    def dependencies(name):
        result = {name}
        for dep in re.findall(r'^import RiemannMachineVerification\.(\w+)$', modules[name], re.M):
            result |= dependencies(dep)
        return result

    selected = {name for top in ('BackendCorrectness', 'MacroCorrectness')
                for name in dependencies(top)
                if dependencies(name) & {'Machine381', 'Machine342'}}
    output = originals / 'Reallocated'
    output.mkdir(exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='riemann295-proof-') as directory:
        temp = Path(directory)
        target = temp / 'formal/RiemannMachineVerification'
        target.mkdir(parents=True)
        (temp / 'machine').mkdir()
        for name in selected:
            (target / f'{name}.lean').write_text(modules[name])
        for stage in ('compiled', 'macro'):
            shutil.copyfile(ROOT.parent / f'machine/riemann295.{stage}.tm',
                            temp / f'machine/riemann.{stage}.tm')
        shutil.copyfile(ROOT.parent / 'machine/riemann295.macros.json', temp / 'machine/macros.json')
        shutil.copyfile(ROOT.parent / 'machine/riemann295.reduction.json', temp / 'machine/reduction.json')
        (temp / 'machine/riemann.nql').write_text(source)
        dispatcher.ROOT = temp / 'formal'
        dispatcher.compile_source = lambda _: machine
        dispatcher.generate()
        for script in ('generate_macro_data.py', 'generate_macro_proofs.py', 'generate_invariants.py'):
            shutil.copyfile(ROOT / script, temp / 'formal' / script)
            runpy.run_path(str(temp / 'formal' / script), run_name='__main__')
        for n, stage in ((381, 'compiled'), (342, 'macro')):
            file = ROOT.parent / f'machine/riemann295.{stage}.tm'
            (target / f'Machine{n}.lean').write_text(generate(n, str(file.relative_to(ROOT.parent)),
                                                               hashlib.sha256(file.read_bytes()).hexdigest()))
        physical = (target / 'PhysicalRegisters.lean').read_text()
        start, end = physical.index('def registerSlot'), physical.index('theorem slotRegister_registerSlot')
        allocation = 'def registerSlot (r : RegisterIndex) : Fin 9 :=\n  match r.val with\n'
        for i, reg in enumerate(REGISTERS):
            allocation += f'  | {i if i < 8 else "_"} => ⟨{order.index(reg)}, by decide⟩\n'
        allocation += '\ndef slotRegister (r : Fin 9) : RegisterIndex :=\n  match r.val with\n'
        for i, reg in enumerate(order):
            allocation += f'  | {i if i < 8 else "_"} => ⟨{REGISTERS.index(reg)}, by decide⟩\n'
        (target / 'PhysicalRegisters.lean').write_text(physical[:start] + allocation + '\n' + physical[end:])
        count = len(list(target.glob('Invariant[0-9].lean')))
        inv = [f'import RiemannMachineVerification.Invariant{i}' for i in range(count)]
        inv += ['import RiemannMachineVerification.WindowInvariant', '',
                'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
                'namespace RiemannMachineVerification', '',
                'theorem initial_mask_trivial : ∀ q b, inv0_before q b = true := by',
                '  intro q b; fin_cases q <;> cases b <;> rfl', '']
        for i in range(count):
            name = 'read_mask_verified' if i == count - 1 else f'read_mask{i}_verified'
            previous = '(fun _ q _ => initial_mask_trivial q _)' if i == 0 else f'read_mask{i-1}_verified'
            inv += [f'theorem {name} : ∀ t, RespectsReadMask inv{i}_after (run machine342 t) :=',
                    f'  certify_read_mask machine342 inv{i}_before inv{i}_after inv{i}_predicate',
                    f'    inv{i}_initial (by',
                    '      intro q t b hb ht hp', f'      have h := inv{i}_closed q t b hb ht hp',
                    '      cases he : (machine342.transition q b).next <;> simpa only [he] using h)',
                    f'    inv{i}_read_mask {previous}', '']
        inv += ['end RiemannMachineVerification', '']
        (target / 'Invariants.lean').write_text('\n'.join(inv))
        all_names = {p.stem for p in target.glob('*.lean')}
        for file in target.glob('*.lean'):
            text = file.read_text()
            text = re.sub(r'^import RiemannMachineVerification\.(\w+)$',
                          lambda m: f'import {PREFIX}.{m[1]}' if m[1] in all_names else m[0], text, flags=re.M)
            text = text.replace('namespace RiemannMachineVerification\n', f'namespace {PREFIX}\n')
            text = text.replace('end RiemannMachineVerification', f'end {PREFIX}')
            (output / file.name).write_text(text)
        (ROOT.parent / 'machine/riemann295.proof-inputs.json').write_text(json.dumps({
            'candidate': str(CANDIDATE.relative_to(ROOT.parent)), 'state_renaming': rename,
            'register_order': order, 'invariant_stages': count,
            'primitive_instructions': 2048, 'macro_instructions': 2048,
            'generated_modules': sorted(all_names)}, indent=2) + '\n')
    final = ROOT.parent / 'machine/riemann295.tm'
    (originals / 'Machine295.lean').write_text(generate(295, 'machine/riemann295.tm',
                                                       hashlib.sha256(final.read_bytes()).hexdigest()))
    names = list(load(ROOT.parent / 'machine/riemann295.macro.tm'))
    targets = list(load(final))
    cert = normalized_cert
    quotient = [f'import {PREFIX}.Invariants', 'import RiemannMachineVerification.Machine295', '',
                'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
                f'namespace {PREFIX}', '', 'def quotientMapTable : Array (Fin 295) := #[']
    for i, q in enumerate(names):
        to = cert['mapping'][q] if cert['possible'][q] else '!ENTRY'
        quotient.append(f'  ⟨{targets.index(to)}, by decide⟩' + (',' if i < 341 else ''))
    quotient += [']', '', 'def quotientMap (q : Fin 342) : Fin 295 :=',
                 "  quotientMapTable[q.val]'(by simpa only [show quotientMapTable.size = 342 from rfl] using q.isLt)", '',
                 'theorem quotient_transitions : ∀ (q : Fin 342) (b : Bool),',
                 f'    inv{count-1}_after q b = true →',
                 '    machine295.transition (quotientMap q) b =',
                 '      renameInstruction quotientMap (machine342.transition q b) := by',
                 '  intro q b h', '  fin_cases q <;> cases b']
    for q in names:
        for b in (0, 1):
            quotient.append('  · rfl' if cert['possible'][q] & (1 << b) else
                            '  · exact Bool.noConfusion (show false = true from h)')
    quotient += ['', 'theorem machine342_iff_machine295 :',
                 '    HaltsBlank machine342 ↔ HaltsBlank machine295 := by',
                 '  apply halts_iff_of_invariant_quotient machine342 machine295 quotientMap',
                 '    (fun c => ∃ t, run machine342 t = c)',
                 '  · exact ⟨0, rfl⟩', '  · rintro c ⟨t, rfl⟩', '    exact ⟨t + 1, rfl⟩',
                 '  · rfl', '  · rintro c ⟨t, rfl⟩ q hq',
                 '    exact quotient_transitions q _ (read_mask_verified t q hq)', '',
                 f'end {PREFIX}', '']
    (output / 'Quotient295.lean').write_text('\n'.join(quotient))
    (originals / 'Correctness295.lean').write_text('''import RiemannMachineVerification.Reallocated.BackendCorrectness
import RiemannMachineVerification.Reallocated.MacroCorrectness
import RiemannMachineVerification.Reallocated.Quotient295
import RiemannMachineVerification.MacroRegisterCorrectness
import RiemannMachineVerification.CompilerCorrectness

namespace RiemannMachineVerification

theorem machine295_correct :
    HaltsBlank machine295 ↔ ∃ n : ℕ, Counterexample n :=
  Reallocated.machine342_iff_machine295.symm.trans
    (Reallocated.machine381_iff_machine342.symm.trans
      (Reallocated.machine381_iff_primitive.trans
        (primitive_iff_macro.trans macro_correct)))

end RiemannMachineVerification
''')
    print('Generated reallocated backend, macro and reachability proofs.', flush=True)


if __name__ == '__main__':
    main()
