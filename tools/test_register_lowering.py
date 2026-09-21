"""Differential arithmetic tests for the experimental register compiler.

These execute generated register instructions, not source-only rewrites.
They are regression evidence, not an unbounded proof of compiler correctness.
"""
from fractions import Fraction
from math import factorial
import json
import random
from compile import ROOT, table
from register_lowering import compile_registers, Analysis, prepare
from pc_layout import compile_layout, check_dispatch
from verify import run_register, python_program

OPTIONS='option inplace; option consume; option canonical_temps; option fused_decrement; option halt_on_positive; option relative_jumps;'
LAYOUT={'inline':['square()'],'jump':'hybrid','threshold':1}
CONFIGS=[{}, {'consume':True}, {'borrow':True}, {'zero':True,'positive':True},
         {'consume':True,'borrow':True,'zero':True,'positive':True,'specialize_calls':True},
         {'commute':True,'square':True,'monus_product':True,'consume':True,'zero':True},
         {'consume':True,'borrow':'zero','borrow_zero':True,'zero':True,'propagate_consumed':True}]


def run_tests():
    count=0
    rng=random.Random(744295)
    exprs=['a*b+b','(a-b)*b','a*(b-1)','a*a','a-b*b','b*a+a','b*(a-b)','a*a+a']
    for config in CONFIGS:
        for expr in exprs:
            for a,b in [(0,0),(0,3),(3,0),(1,1),(2,3),(4,2)]:
                source=f'{OPTIONS} global a; global b; global spare; proc main() {{ spare=7; a={a}; b={b}; a={expr}; return; }}'
                expected=python_program(source); expected['main']()
                machine,_=compile_registers(source,[],LAYOUT,dict(config,observable=['a']))
                actual,_=run_register(machine)
                assert actual.get('_Ga',0)==expected['a'],(config,a,b,expr,actual,expected['a'])
                count+=1
        # Nested loops, zero-trip paths and shared procedures with different
        # live-outs exercise the nonlocal analysis and temporary initialization.
        for a in range(4):
            source=f'''{OPTIONS} global a; global b; global spare; global out;
            proc work() {{ b=b*a; }}
            proc main() {{ a={a}; b=2; spare=7; work(); out=b;
              while(a>0) {{ b=b+a; a=a-1; }}
              if(b>0) {{ a=b; }} else {{ a=3; }}
              work(); out=out+b; return;
            }}'''
            expected=python_program(source); expected['main']()
            machine,_=compile_registers(source,[],LAYOUT,dict(config,observable=['out']))
            actual,_=run_register(machine)
            assert actual.get('_Gout',0)==expected['out'],(config,a,actual,expected['out'])
            count+=1
    source=(ROOT/'machine/riemann295.nql').read_text()
    # Compare the disabled experiment with the independently compiled baseline.
    order=json.loads((ROOT/'machine/riemann295.layout.json').read_text())['register_order']
    machine,_=compile_registers(source,order,LAYOUT,{})
    assert table(machine)==table(compile_layout(source,order,LAYOUT))
    # Check the named kernels against exact arithmetic, retaining all outputs
    # and unrelated globals as observable across the call.
    from search_layout import show
    import nqlast as n
    for kernel in (None,'paired','consume'):
        for square in (False,True):
            for k in range(7):
                ast=prepare(source,{})
                header=f'{OPTIONS} global x; global lcm; global num; global denom; global i; global c;'
                funcs='\n'.join(show(e) for e in ast.children if isinstance(e,n.ProcDef) and e.name!='main')
                harness=header+funcs+f'proc main() {{ x=7; lcm=11; c=13; i={k}; harmonic(); square(); return; }}'
                config={'square':square,'zero':True,'consume':True,'borrow':True,'observable':['x','lcm','num','denom','i','c']}
                if kernel: config['harmonic']=kernel
                m,_=compile_registers(harness,[],LAYOUT,config)
                actual,_=run_register(m,limit=5000000)
                den=factorial(k); num=int(den*sum((Fraction(1,j) for j in range(1,k+1)),Fraction()))
                assert [actual.get('_G'+g,0) for g in ('x','lcm','c','i','num','denom')]==[7,11,13,0,num*num,den*den],(config,k,actual)
                count+=1
    # The coordinated operation must work on arbitrary inputs, not only on
    # values encountered after harmonic's own initialization.
    cases=[(i,a,b) for i in range(3) for a in range(3) for b in range(3)]
    cases += [tuple(rng.randrange(9) for _ in range(3)) for _ in range(30)]
    for kernel in ('paired','consume'):
        for i,a,b in cases:
            harness=f'''{OPTIONS} global i; global num; global denom; global spare;
              proc harmonic() {{ while(1>0) {{
                num=((i*num)+denom); denom=(i*denom); return;
              }} }}
              proc main() {{ spare=17; i={i}; num={a}; denom={b}; harmonic(); return; }}'''
            m,_=compile_registers(harness,[],LAYOUT,{'harmonic':kernel,'borrow':True,'observable':['i','num','denom']})
            actual,_=run_register(m)
            assert [actual.get('_G'+g,0) for g in ('i','num','denom')]==[i,i*a+b,i*b],(kernel,i,a,b,actual)
            count+=1
    for config in CONFIGS+[{'harmonic':'consume','square':True,'monus_product':True,'zero':True}]:
        m,_=compile_registers(source,order,LAYOUT,config)
        actual,_=run_register(m,iterations=2)
        assert actual['_Gx']==2 and actual.get('_Gdenom',0)==0,(config,actual)
        check_dispatch(m)
        count+=1
    # Reject unsupported constructs instead of silently under-approximating.
    for bad in ('proc f(a) {} proc main() { f(x); }','proc f() { f(); } proc main() { f(); }'):
        try: compile_registers('global x;'+bad,[],{}, {})
        except AssertionError: pass
        else: raise AssertionError('Unsupported input accepted')
    return {'differential_cases':count,'disabled_lowering_byte_identical':True,'unsupported_inputs_rejected':2}


if __name__=='__main__':
    print(json.dumps(run_tests(),indent=2))
