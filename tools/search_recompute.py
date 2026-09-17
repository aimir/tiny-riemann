from compile import compile_source, ROOT, table
from itertools import product

base = (ROOT / 'candidates/countdown-square-533-nocut.nql').read_text()
start = base.index('l = lcm;')
end = base.index('        if (true)')
lcms = {
    'trial': '''lcm = 1;
        i = x;
        while (i > 0) {
            if (lcm > (lcm / i) * i) {
                lcm = lcm + 1;
                i = x;
            } else { i = i - 1; }
        }
''',
    'trial-countdown': '''lcm = 1;
        i = x;
        while (i > 0) {
            c = lcm;
            d = 0;
            while (c > 0) {
                if (d == 0) { d = i; }
                c = c - 1;
                d = d - 1;
            }
            if (d > 0) { lcm = lcm + 1; i = x; }
            else { i = i - 1; }
        }
''',
    'trial-subtract': '''lcm = 1;
        i = x;
        while (i > 0) {
            c = lcm;
            while (c >= i) { c = c - i; }
            if (c > 0) { lcm = lcm + 1; i = x; }
            else { i = i - 1; }
        }
'''
}
for (name, body), inplace, consume, explicit_loop in product(lcms.items(), (False,True), (False,True), (False,True)):
    s = base[:start] + body + base[end:]
    if not inplace: s = s.replace('option inplace;\n', '')
    if not consume: s = s.replace('option consume;\n', '')
    if not explicit_loop:
        s = s.replace('option implicit_halt;\n', '')
        s = s.replace('    lcm = 1;\n    while (true) {', '')
        s = s.replace('    }\n}\n\nproc square', '}\n\nproc square')
    m = compile_source(s)
    count = len(m.reachable())
    label = f'{name}-{int(inplace)}{int(consume)}{int(explicit_loop)}'
    print(label, count, flush=True)
    (ROOT / f'candidates/{label}.nql').write_text(s)
    if count < 513: (ROOT / f'results/{label}.tm').write_text(table(m))
