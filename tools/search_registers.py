from compile import compile_source, ROOT, table
from itertools import product

best = 495
base = (ROOT / 'candidates/trial-countdown-000.nql').read_text()
for order, save_order, lcm_regs, inplace, consume, canonical, square in product(
        ('xfirst', 'Lfirst'), (False,True), ('cd', 'nd', 'ni', 'cn'),
        (False,True), (False,True), (False,True), ('mul','odd')):
    s = base
    if inplace: s = 'option inplace;\n' + s
    if consume: s = 'option consume;\n' + s
    if canonical: s = 'option canonical_temps;\n' + s
    start = s.index('        if (true)')
    if order == 'xfirst':
        a,b = ('lcm','c') if not save_order else ('c','lcm')
        tail = f'''i = x;
        harmonic(); square();
        i = lcm;
        {a} = num;
        {b} = denom;
        harmonic();
        num = (num - denom * x) * {b};
        denom = denom * {a};
        square();
        if (num > denom * x) {{ return; }}
}}
'''
    else:
        a,b = ('lcm','c') if not save_order else ('c','lcm')
        tail = f'''i = lcm;
        harmonic();
        num = num - denom * x;
        {a} = num;
        {b} = denom;
        i = x;
        harmonic(); square();
        num = num * {b};
        denom = denom * {a};
        square();
        if (denom > num * x) {{ return; }}
}}
'''
    s = s[:start] + tail
    # Workspace pair used only by LCM computation.
    start = s.index('            c = lcm;')
    end = s.index('i = x;\n        harmonic') if order == 'xfirst' else s.index('i = lcm;\n        harmonic')
    frag = s[start:end]
    if lcm_regs != 'cd':
        import re
        pair = {'nd': ('num','denom'), 'ni': ('num','d'), 'cn': ('c','num')}[lcm_regs]
        frag = re.sub(r'\b[cd]\b', lambda m: pair[0 if m[0]=='c' else 1], frag)
        s = s[:start] + frag + s[end:]
    if square == 'mul':
        s += '\nproc square() { num = num * num; denom = denom * denom; }\n'
    else:
        s += '''
proc square() {
    i = num; num = 0;
    while (i > 0) { num = num + i + i; num = num - 1; i = i - 1; }
    i = denom; denom = 0;
    while (i > 0) { denom = denom + i + i; denom = denom - 1; i = i - 1; }
}
'''
    m = compile_source(s)
    count = len(m.reachable())
    if count < best:
        best = count
        print(best, order,save_order,lcm_regs,inplace,consume,canonical,square,flush=True)
        (ROOT / 'candidates/register-best.nql').write_text(s)
        (ROOT / 'results/register-best.tm').write_text(table(m))
