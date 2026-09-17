from compile import compile_source, ROOT, table
import json

s = (ROOT / 'candidates/source-best.nql').read_text()
start = s.index('        l = lcm;')
end = s.index('        if (x > 253)')
cases = {
    'subtract': '''l = lcm;
        i = lcm;
        while (i > 0) {
            while (i >= x) { i = i - x; }
            if (i > 0) { lcm = lcm + l; i = lcm; }
        }
''',
    'subtract_proc': '''l = lcm;
        remainder();
        while (i > 0) {
            lcm = lcm + l;
            remainder();
        }
''',
    'gcd_subtract': '''i = lcm;
        l = x;
        while (i != l) {
            if (i > l) { i = i - l; }
            else { l = l - i; }
        }
        lcm = lcm * (x / i);
''',
    'gcd_euclid': '''i = lcm;
        l = x;
        while (l > 0) {
            c = i - (i / l) * l;
            i = l;
            l = c;
        }
        lcm = lcm * (x / i);
''',
    'countdown': '''l = lcm;
        i = 1;
        while (i > 0) {
            i = x;
            c = lcm;
            while (c > 0) {
                if (i == 0) { i = x; }
                c = c - 1;
                i = i - 1;
            }
            if (i > 0) { lcm = lcm + l; }
        }
''',
}
for name, body in cases.items():
    v = s[:start] + body + s[end:]
    if name == 'subtract_proc':
        v += '\nproc remainder() { i = lcm; while (i >= x) { i = i - x; } }\n'
    (ROOT / f'candidates/{name}.nql').write_text(v)
    m = compile_source(v)
    print(name, len(m.reachable()), flush=True)
    (ROOT / f'results/{name}.tm').write_text(table(m))
