"""Symbolic finite macro-register traces, with each result checked by Lean.

This is a proof producer, not a trusted evaluator. Loop termination is proved
separately; every path here has a fixed finite length and explicit guards.
"""
from pathlib import Path
from generate_register_program import compile_source, leaf, instruction, REGISTERS, fin

ROOT = Path(__file__).resolve().parent
FIELDS = ['x', 'lcm', 'num', 'denom', 'i', 'c']


def add(a, b):
    if a == '0': return b
    if b == '0': return a
    return f'({a} + {b})'


def sub1(a):
    if a == '0': return '0'
    if a == '(n + 1)': return 'n'
    return f'({a} - 1)'


def snapshot(values):
    changes = [f'{f} := {v}' for f, v in zip(FIELDS, values) if v != f's.{f}']
    s = '{s with ' + ', '.join(changes) + '}' if changes else 's'
    return f'({s}) {values[6]} {values[7]} {values[8]}'


def generate():
    machine = compile_source((ROOT.parent / 'machine/riemann.nql').read_text())
    proofs = []
    used = set()

    def path(name, start, end, initial, branches=None, params='(a n capacity : ℕ)'):
        branches = branches or {}
        values = initial.copy()
        capacity_added = 0
        pc = start
        steps = []
        guards = []
        while not steps or pc != end:
            assert len(steps) < 80, (name, pc)
            steps.append(pc)
            sub = leaf(machine.main, pc, True)
            op = sub.name
            if op.startswith('transfer('):
                src, *targets = op[9:-1].split(',')
                src = REGISTERS.index(src)
                old = values[src]
                values[src] = '0'
                for target in targets:
                    i = REGISTERS.index(target)
                    values[i] = add(values[i], old)
                pc = (pc + sub.size) % 2048
            elif op.startswith('reg_incr('):
                i = REGISTERS.index(op[9:-1])
                values[i] = add(values[i], '1')
                pc += 1
            elif op.startswith('reg_decr('):
                i = REGISTERS.index(op[9:-1])
                value = values[i]
                positive = branches.get(pc, value != '0')
                if value not in ('0', '(n + 1)'):
                    guards.append((value, positive))
                elif (value != '0') != positive:
                    raise ValueError((name, pc, value, positive))
                values[i] = sub1(value) if positive else '0'
                pc += 2 if positive else 1
            elif op.startswith('rjump('):
                pc = (pc + int(op[6:-1])) % 2048
            elif op.startswith('noop.'):
                pc = (pc + sub.size) % 2048
            elif op == 'reg_init':
                capacity_added += 1
                pc += 1
            elif op == 'halt':
                pc = None
            else:
                raise ValueError((name, pc, op))
        used.update(steps)
        output_capacity = f'(capacity + {capacity_added})' if capacity_added else 'capacity'
        output = (f'(sourceConfiguration {fin(end)} {snapshot(values)} {output_capacity})'
                  if end is not None else f'⟨none, sourceValues {snapshot(values)}, {output_capacity}⟩')
        binders = ''.join(f' (h{k} : {value} {"≠" if pos else "="} 0)' for k, (value, pos) in enumerate(guards))
        proofs.extend([f'theorem {name} (s : Registers) {params}{binders} :',
            f'    RExec macroProgram (sourceConfiguration {fin(start)} {snapshot(initial)} capacity)',
            f'      {output} := by',
            f'  refine ⟨{len(steps)}, ?_⟩',
            '  simp only [trajectory, registerStep, sourceConfiguration, sourceValues,',
            '    ' + ', '.join(f'arithmetic_instruction_{p}' for p in sorted(set(steps))) + ',',
            '    transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq,',
            '    Nat.reduceEqDiff,',
            '    Nat.add_sub_cancel, Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, not_false_eq_true,',
            '    Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte' + ''.join(f', h{k}' for k in range(len(guards))) + ']',
            '  all_goals',
            '    apply registerConfiguration_ext',
            '    · rfl',
            '    · funext r; fin_cases r <;> simp [sourceValues, Function.update_apply' + ''.join(f', h{k}' for k in range(len(guards))) + '] <;> omega',
            '    · dsimp only <;> omega', ''])

    mul_entries = [284, 340, 436, 540, 596, 652, 692, 780, 820, 908, 948, 1036]
    for entry in mul_entries:
        globals_ = [f's.{f}' for f in FIELDS]
        path(f'mul_zero_{entry}', entry, entry+17, globals_+['a','0','0'], params='(a capacity : ℕ)')
        path(f'mul_positive_{entry}', entry, entry, globals_+['a','(n + 1)','0'])
        path(f'mul_prefix_{entry}', entry-12, entry, globals_+['a','0','0'], params='(a capacity : ℕ)')
    suffix_ends = {284:324, 340:368, 540:580, 596:624, 652:680, 692:720,
                   780:808, 820:848, 908:936, 948:976}
    for entry, end in suffix_ends.items():
        path(f'mul_suffix_{entry}', entry+17, end, [f's.{f}' for f in FIELDS]+['a','0','0'], params='(a capacity : ℕ)')
    for entry, target, end in [(453, 'num', 458), (1053, 'denom', 1058)]:
        g = [f's.{f}' for f in FIELDS]
        path(f'sub_zero_{entry}', entry, end, g+['0','0','0'], params='(capacity : ℕ)')
        path(f'sub_positive_zero_{entry}', entry, entry, g+['(n + 1)','0','0'],
             {entry+2:False}, params='(n capacity : ℕ)')
        path(f'sub_positive_positive_{entry}', entry, entry, g+['(n + 1)','0','0'],
             {entry+2:True}, params='(n capacity : ℕ)')

    def source(**updates):
        return [updates.get(f, f's.{f}') for f in FIELDS]+['0','0','0']

    path('main_prefix', 0, 44, source(), params='(capacity : ℕ)')
    path('lcm_enter', 44, 84, source(i='(n + 1)'), params='(n capacity : ℕ)')
    path('lcm_exit', 44, 147, source(i='0'), params='(capacity : ℕ)')
    path('div_exit', 84, 111, source(num='0'), params='(capacity : ℕ)')
    path('div_reset', 84, 84, source(num='(n + 1)', denom='0'), params='(n capacity : ℕ)')
    path('div_next', 84, 84, source(num='(n + 1)'), params='(n capacity : ℕ)')
    path('lcm_retry', 111, 44, source(num='0', denom='(n + 1)'), params='(n capacity : ℕ)')
    path('lcm_pass', 111, 44, source(num='0', denom='0', i='(n + 1)'), params='(n capacity : ℕ)')
    path('after_lcm', 147, 256, source(), params='(capacity : ℕ)')
    for base in (256, 512):
        path(f'harmonic_init_{base}', base, base+12, source(), params='(capacity : ℕ)')
        path(f'harmonic_enter_{base}', base+12, base+16, source(i='(n + 1)'), params='(n capacity : ℕ)')
        path(f'harmonic_exit_{base}', base+12, base+128, source(i='0'), params='(capacity : ℕ)')
        path(f'harmonic_middle_{base}', base+68, base+72, source(), params='(capacity : ℕ)')
        path(f'harmonic_back_{base}', base+112, base+12, source(i='(n + 1)'), params='(n capacity : ℕ)')
    for name, start, end in [('after_harmonic_first',384,424), ('after_sub_first',458,512),
                             ('after_square_first',720,768), ('after_scaled_products',848,896),
                             ('after_square_second',976,1024)]:
        path(name, start, end, source(), params='(capacity : ℕ)')
    path('main_return',1058,0,source(denom='0'),params='(capacity : ℕ)')
    path('main_halt',1058,None,source(denom='(n + 1)'),params='(n capacity : ℕ)')
    header = ['import RiemannMachineVerification.SourceRegisters',
              'import RiemannMachineVerification.RegisterProgram', '',
              'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0',
              'set_option linter.unusedSimpArgs false',
              'set_option linter.unusedVariables false', '',
              'namespace RiemannMachineVerification', '']
    for pc in sorted(used):
        header += [f'theorem arithmetic_instruction_{pc} : macroProgram {fin(pc)} =',
                   f'    {instruction(leaf(machine.main, pc, True), pc)} := rfl', '']
    dest = ROOT / 'RiemannMachineVerification'
    (dest / 'ArithmeticPathInstructions.lean').write_text('\n'.join(header+['end RiemannMachineVerification','']))
    # Keep generated proof units bounded, and make a stalled unit identifiable.
    groups = []
    group = []
    count = 0
    for line in proofs:
        if line.startswith('theorem '):
            if count == 8:
                groups.append(group)
                group = []
                count = 0
            count += 1
        group.append(line)
    if group: groups.append(group)
    imports = []
    for k, group in enumerate(groups):
        name = f'ArithmeticPaths{k:02}'
        imports.append(f'import RiemannMachineVerification.{name}')
        pre = ['import RiemannMachineVerification.ArithmeticPathInstructions', '',
               'set_option maxRecDepth 8192', 'set_option maxHeartbeats 2000000',
               'set_option linter.unusedSimpArgs false', 'set_option linter.unusedVariables false',
               'set_option linter.unusedTactic false', 'set_option linter.unreachableTactic false', '',
               'namespace RiemannMachineVerification', '']
        (dest / f'{name}.lean').write_text('\n'.join(pre+group+['end RiemannMachineVerification','']))
    (dest / 'ArithmeticPaths.lean').write_text('\n'.join(imports)+'\n')


if __name__ == '__main__':
    generate()
