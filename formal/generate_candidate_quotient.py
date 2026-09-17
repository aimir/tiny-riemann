"""Import a new quotient of the frozen 342-state machine for kernel checking.

This adds a separate theorem; it does not alter the approved 299-state result.
The solver and this generator are untrusted. Lean checks the literal table,
every reachable transition, and the resulting halting equivalence.
"""
from pathlib import Path
import argparse
import hashlib
import json

from generate_tables import generate, ROOT


def generate_candidate(table_path, certificate_path):
    data = table_path.read_bytes()
    target = [line.split()[0] for line in data.decode().splitlines()]
    n = len(target)
    assert n not in (299, 342, 381), 'Do not shadow the frozen machines.'
    source = [line.split()[0] for line in
              (ROOT.parent / 'machine/riemann.macro.tm').read_text().splitlines()]
    cert = json.loads(certificate_path.read_text())
    frozen = json.loads((ROOT.parent / 'machine/reduction.json').read_text())
    assert cert['possible'] == frozen['possible']
    assert len(source) == 342
    relative = table_path.resolve().relative_to(ROOT.parent)
    out = [generate(n, str(relative), hashlib.sha256(data).hexdigest()).replace(
        'import RiemannMachineVerification.Semantics',
        'import RiemannMachineVerification.Correctness\n'
        'import RiemannMachineVerification.Reduction'),
        'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
        'namespace RiemannMachineVerification', '',
        f'def quotient{n}MapTable : Array (Fin {n}) := #[']
    for i, q in enumerate(source):
        to = cert['mapping'][q] if cert['possible'][q] else '!ENTRY'
        out.append(f'  ⟨{target.index(to)}, by decide⟩' + (',' if i < 341 else ''))
    out += [']', '', f'def quotient{n}Map (q : Fin 342) : Fin {n} :=',
            f"  quotient{n}MapTable[q.val]'(by simpa only [show quotient{n}MapTable.size = 342 from rfl] using q.isLt)", '',
            f'theorem quotient{n}_transitions : ∀ (q : Fin 342) (b : Bool),',
            '    inv3_after q b = true →',
            f'    machine{n}.transition (quotient{n}Map q) b =',
            f'      renameInstruction quotient{n}Map (machine342.transition q b) := by',
            '  intro q b h', '  fin_cases q <;> cases b']
    for q in source:
        for b in (0, 1):
            out.append('  · rfl' if cert['possible'][q] & (1 << b) else
                       '  · exact Bool.noConfusion (show false = true from h)')
    out += ['', f'theorem machine342_iff_machine{n} :',
            f'    HaltsBlank machine342 ↔ HaltsBlank machine{n} := by',
            f'  apply halts_iff_of_invariant_quotient machine342 machine{n} quotient{n}Map',
            '    (fun c => ∃ t, run machine342 t = c)',
            '  · exact ⟨0, rfl⟩',
            '  · rintro c ⟨t, rfl⟩',
            '    exact ⟨t + 1, rfl⟩',
            '  · rfl',
            '  · rintro c ⟨t, rfl⟩ q hq',
            f'    exact quotient{n}_transitions q _ (read_mask_verified t q hq)', '',
            f'theorem machine{n}_iff_machine299 :',
            f'    HaltsBlank machine{n} ↔ HaltsBlank machine299 :=',
            f'  machine342_iff_machine{n}.symm.trans machine342_iff_machine299', '',
            f'theorem machine{n}_correct :',
            f'    HaltsBlank machine{n} ↔ ∃ n : ℕ, Counterexample n :=',
            f'  machine{n}_iff_machine299.trans machine299_correct', '',
            'end RiemannMachineVerification', '']
    return n, '\n'.join(out)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('table', type=Path)
    parser.add_argument('certificate', type=Path)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    n, output = generate_candidate(args.table, args.certificate)
    if args.check:
        assert args.output.read_text() == output, args.output
        print(f'{n} states; literal table and quotient proof match {args.output}')
        return
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(output)
    print(f'{n} states; generated {args.output}')


if __name__ == '__main__':
    main()
