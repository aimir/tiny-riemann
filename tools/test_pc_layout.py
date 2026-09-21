"""Check control relocation and dispatch independently on branching programs."""
import json
from compile import ROOT
from search_final import compile_candidate
from pc_layout import compile_layout, check_control_equivalence, check_dispatch, check_backend
from verify import run_register


def rejected(fn):
    try:
        fn()
    except AssertionError:
        return
    raise AssertionError('A deliberately incorrect machine was accepted')


def main():
    source = '''option relative_jumps; option fused_decrement;
    global a; global b; global c;
    proc helper() { if (a == 0) { c=c+1; return; } b=b+2; }
    proc main() { a=4; b=0; c=0;
      while(a>0) { helper(); a=a-1; }
      helper(); if(b>0) { c=c+3; } else { c=c+10; }
      return;
    }'''
    baseline, registers = compile_candidate(source, [])
    configs = [{}, {'inline': ['helper()']}]
    configs.extend([{'inline_calls': {'helper()': [0]}},
                    {'procedure_jumps': {'main()': 'suffix'}},
                    {'jump_orders': {'transfer(_Ga):1': 'relative'}}])
    for packed in ([], ['main()'], ['main()', 'helper()']):
        for jump in ('relative', 'suffix', 'suffix-full', 'hybrid', 'random'):
            for placement in ('source', 'size', 'random'):
                configs.append({'pack': packed, 'jump': jump, 'threshold': 3,
                                'placement': placement, 'seed': 4})
    for config in configs:
        candidate = compile_layout(source, registers, config)
        check_control_equivalence(baseline, candidate)
        check_dispatch(candidate)
        check_backend(baseline, candidate)
        values, _ = run_register(candidate)
        assert values['_Ga'] == 0 and values['_Gb'] == 8 and values['_Gc'] == 4
    wrong_source = source.replace('b=b+2', 'c=c+2')
    wrong = compile_layout(wrong_source, registers, {})
    rejected(lambda: check_control_equivalence(baseline, wrong))
    broken_dispatch = compile_layout(source, registers, {})
    broken_dispatch.entry.write0 = '1'
    rejected(lambda: check_dispatch(broken_dispatch))
    riemann = (ROOT / 'machine/riemann295.nql').read_text()
    registers = json.loads((ROOT / 'machine/riemann295.layout.json').read_text())['register_order']
    original, _ = compile_candidate(riemann, registers)
    ten = compile_layout(riemann, registers, {'inline': ['square()']})
    assert ten.main.order == 10
    check_control_equivalence(original, ten)
    check_dispatch(ten)
    check_backend(original, ten)
    broken_counter = compile_layout(riemann, registers, {'inline': ['square()']})
    broken_counter.builder.nextstate().write0 = '0'
    rejected(lambda: check_backend(original, broken_counter))
    print(f'PASS: {len(configs)} branch/loop/return layouts and backends; 10-bit Riemann layout; three incorrect machines rejected.')


if __name__ == '__main__':
    main()
