"""Produce literal transfer-loop certificates, rechecked by Lean for all values."""
from pathlib import Path
from generate_register_program import compile_source, leaf, instruction, REGISTERS, fin

ROOT = Path(__file__).resolve().parent


def generate():
    machine = compile_source((ROOT.parent / 'machine/riemann.nql').read_text())
    sites = []
    used = set()
    for pc in range(2048):
        sub = leaf(machine.main, pc, True)
        if not sub.name.startswith('transfer('):
            continue
        source, *targets = sub.name[9:-1].split(',')
        exitpc = (pc + sub.size) % 2048
        paths = []
        for positive in (False, True):
            path = [pc]
            at = pc + (2 if positive else 1)
            end = pc if positive else exitpc
            while at != end:
                path.append(at)
                inst = leaf(machine.main, at, False)
                if inst.name.startswith('rjump('):
                    at = (at + int(inst.name[6:-1])) % 2048
                elif inst.name.startswith(('noop.', 'reg_incr(')):
                    at = (at + inst.size) % 2048
                else:
                    raise ValueError((pc, at, inst.name))
                assert len(path) < 30
            paths.append(path)
            used.update(path)
        sites.append((pc, exitpc, source, targets, paths))
    out = ['import RiemannMachineVerification.TransferSite',
           'import RiemannMachineVerification.RegisterProgram', '',
           'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0',
           'set_option linter.unusedSimpArgs false', '',
           'namespace RiemannMachineVerification', '']
    for pc in sorted(used):
        sub = leaf(machine.main, pc, False)
        out += [f'theorem transfer_instruction_{pc} : primitiveProgram {fin(pc)} =',
                f'    {instruction(sub, pc)} := rfl', '']
    for pc, exitpc, source, targets, paths in sites:
        src = fin(REGISTERS.index(source))
        dst = '[' + ', '.join(fin(REGISTERS.index(t)) for t in targets) + ']'
        out += [f'theorem transfer_site_{pc} :',
                f'    TransferSite primitiveProgram {fin(pc)} {fin(exitpc)} {src} {dst} := by',
                '  refine ⟨by decide, ?_, ?_⟩',
                '  · intro values capacity hz',
                f'    have hzero : Function.update values {src} 0 = values := by',
                f'      simpa only [hz] using Function.update_eq_self {src} values',
                f'    refine ⟨{len(paths[0])}, by decide, ?_⟩',
                '    simp only [trajectory, registerStep, ' + ', '.join(f'transfer_instruction_{p}' for p in paths[0]) + ',',
                '      hz, Nat.zero_sub, hzero, ↓reduceIte]',
                '  · intro values capacity hn',
                '    have hne := Nat.ne_of_gt hn',
                f'    refine ⟨{len(paths[1])}, by decide, ?_⟩',
                '    simp only [trajectory, registerStep, ' + ', '.join(f'transfer_instruction_{p}' for p in paths[1]) + ',',
                '      hne, ↓reduceIte, transferRound, addTargets, List.foldl_cons, List.foldl_nil]', '']
    out += ['end RiemannMachineVerification', '']
    (ROOT / 'RiemannMachineVerification/TransferSites.lean').write_text('\n'.join(out))
    return sites


if __name__ == '__main__':
    sites = generate()
    print(f'Generated {len(sites)} transfer sites.')
