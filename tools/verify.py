"""Independent arithmetic checks, register execution, and reduction certificates."""
from collections import deque
from fractions import Fraction
from math import factorial, lcm
from pathlib import Path
import argparse
import json
import random
import re
import sys
from compile import ROOT, compile_source, grammar
import nqlast as n


def cutoff_certificate():
    """H_m <= 1 + ceil(log2(m)), verified rationally for x=1,...,253."""
    common=1; harmonic=Fraction(0)
    for x in range(1,254):
        common=lcm(common,x)
        harmonic+=Fraction(1,x)
        upper=1+(common-1).bit_length()
        assert max(upper-x,0)**2 <= x*harmonic**4
    return 253


def python_program(source):
    """Execute source semantics using Python big integers, independently of lowering."""
    ast,=grammar.parse_string(source,parse_all=True)
    globals_=[e.name for e in ast.children if isinstance(e,n.GlobalReg)]
    def expr(e):
        if isinstance(e,n.Reg):return e.name
        if isinstance(e,n.Lit):return str(e.value)
        if isinstance(e,n.BoolConst):return 'True' if isinstance(e,n.TrueConst) else 'False'
        if isinstance(e,n.Monus):return 'max(0, '+expr(e.children[0])+' - '+expr(e.children[1])+')'
        ops={n.Add:'+',n.Mul:'*',n.Div:'//',n.Greater:'>',n.GreaterEqual:'>=',n.Less:'<',n.LessEqual:'<=',n.Equal:'==',n.NotEqual:'!=',n.And:'and',n.Or:'or'}
        if type(e) in ops:return '('+(' '+ops[type(e)]+' ').join(expr(c) for c in e.children)+')'
        raise TypeError(type(e))
    def stmt(e,level,main):
        pad='    '*level
        if isinstance(e,n.Block):
            return ''.join(stmt(c,level,main) for c in e.children) or pad+'pass\n'
        if isinstance(e,n.Assign):return pad+expr(e.children[0])+' = '+expr(e.children[1])+'\n'
        if isinstance(e,n.Return):return pad+('return True\n' if main else 'return\n')
        if isinstance(e,n.Call):
            return pad+('pass' if e.func.startswith('noop_') else e.func+'('+','.join(expr(c) for c in e.children)+')')+'\n'
        if isinstance(e,n.WhileLoop):return pad+'while '+expr(e.children[0])+':\n'+stmt(e.children[1],level+1,main)
        if isinstance(e,n.IfThen):return pad+'if '+expr(e.children[0])+':\n'+stmt(e.children[1],level+1,main)+pad+'else:\n'+stmt(e.children[2],level+1,main)
        raise TypeError(type(e))
    lines='\n'.join(f'{g} = 0' for g in globals_)+'\n'
    for e in ast.children:
        if isinstance(e,n.ProcDef):
            assert not e.parameters
            lines+='def '+e.name+'():\n    global '+','.join(globals_)+'\n'+stmt(e.children[0],1,e.name=='main')
    env={}
    exec(lines,env)
    return env


def arithmetic_tests(source, difference=False):
    env=python_program(source)
    for k in range(81):
        env['i']=k;env['num']=117;env['denom']=91
        env['harmonic']()
        assert env['i']==0
        assert env['denom']==factorial(k)
        assert Fraction(env['num'],env['denom'])==sum((Fraction(1,j) for j in range(1,k+1)),Fraction(0))
    rng=random.Random(744)
    for _ in range(200):
        a,b=rng.randrange(10000),rng.randrange(10000)
        env['num'],env['denom']=a,b
        env['square']()
        assert (env['num'],env['denom'])==(a*a,b*b)
    env=python_program(source)
    common=1
    for x in range(1,11):
        common=lcm(common,x)
        halted=env['main']()
        hx=sum((Fraction(1,j) for j in range(1,x+1)),Fraction(0))
        hl=sum((Fraction(1,j) for j in range(1,common+1)),Fraction(0))
        dx,dl=factorial(x),factorial(common)
        nx=int(hx*dx);nl=int(hl*dl)
        assert env['x']==x
        assert env['num']==nx**4*dl**2
        lhs=dx**4*max(nl-dl*x,0)**2
        rhs=nx**4*dl**2
        assert env['denom']==(max(lhs-x*rhs,0) if difference else lhs)
        assert bool(halted)==(max(hl-x,0)**2 > x*hx**4)
    return {'harmonic_inputs':81,'square_inputs':200,'full_iterations':10}


def comparison_tests(source):
    ast,=grammar.parse_string(source,parse_all=True)
    options=' '.join('option '+e.name+';' for e in ast.children if isinstance(e,n.Option))
    rng=random.Random(325)
    for _ in range(100):
        a,b,x=rng.randrange(70),rng.randrange(20),rng.randrange(1,9)
        test=f'''{options} global num; global denom; global x; global flag;
        proc main() {{ num={b}; denom={a}; x={x};
          denom=denom-num*x;
          if(denom>0){{flag=1;}} return;
        }}'''
        regs,_=run_register(compile_source(test))
        assert regs.get('_Gdenom',0)==max(a-b*x,0)
        assert regs.get('_Gflag',0)==int(a>b*x)
    return 100


def run_register(machine, limit=2000000, iterations=None):
    """Independent interpreter of the upstream compressed register program."""
    slots={}
    def flatten(sub,base):
        if sub.name.startswith('transfer(') or not sub.child_map:
            slots[base]=sub
            return
        for prefix,info in sub.child_map.items():
            offset=int(prefix or '0',2) << (sub.order-len(prefix))
            flatten(info.sub,base+offset)
    flatten(machine.main,0)
    pc=0;mod=1<<machine.main.order;regs={};completed=0
    for steps in range(limit):
        if pc==0 and steps:
            completed+=1
            if iterations is not None and completed>=iterations:return regs,steps
        s=slots[pc];name=s.name
        if name=='halt':return regs,steps
        if name.startswith('reg_incr('):
            reg=name[9:-1];regs[reg]=regs.get(reg,0)+1;pc+=1
        elif name.startswith('reg_decr('):
            reg=name[9:-1];value=regs.get(reg,0)
            regs[reg]=max(0,value-1);pc+=2 if value else 1
        elif name.startswith('transfer('):
            source,*targets=name[9:-1].split(',');value=regs.get(source,0)
            regs[source]=0
            for target in targets:regs[target]=regs.get(target,0)+value
            pc+=s.size
        elif name.startswith('noop.') or name=='reg_init':pc+=s.size
        elif name.startswith('rjump('):pc+=int(name[6:-1])
        elif '.jump(' in name:
            rel,order=map(int,name.rsplit('.jump(',1)[1][:-1].split(','))
            pc=((pc>>order)<<order)+rel
        else:raise ValueError(name)
        pc%=mod
    raise AssertionError('Register instruction limit exceeded')


def lowering_tests():
    expressions=[
        ('a+b',lambda a,b:a+b),('a*b',lambda a,b:a*b),
        ('a*a',lambda a,b:a*a),('a-b',lambda a,b:max(a-b,0)),
        ('(a*b)+b',lambda a,b:a*b+b),('(a-b)*b',lambda a,b:max(a-b,0)*b),
        ('a*(b-1)',lambda a,b:a*max(b-1,0)),('b*(a-1)',lambda a,b:b*max(a-1,0)),
        ('a/b',lambda a,b:a//b),('b',lambda a,b:b),
    ]
    count=0
    for opts in ('','option inplace;','option consume;','option inplace; option consume; option canonical_temps;'):
        for a,b in ((0,1),(1,1),(2,3),(3,2),(5,4)):
            for expression,expected in expressions:
                source=f'{opts} global a; global b; proc main() {{ a={a}; b={b}; a={expression}; return; }}'
                machine=compile_source(source)
                regs,_=run_register(machine)
                assert regs.get('_Ga',0)==expected(a,b),(opts,a,b,expression,regs)
                assert regs.get('_Gb',0)==b
                count+=1
    for a in range(6):
        for b in range(1,4):
            for body,expected in (
                ('b=b+1; a=a-1;',b+a),
                ('if (b>0) { b=b+1; } a=a-1;',b+a),
                ('b=b+a; a=a-1;',b+a*(a+1)//2),
            ):
                source=f'option fused_decrement; global a; global b; proc main() {{ a={a}; b={b}; while(a>0){{{body}}} return; }}'
                regs,_=run_register(compile_source(source))
                assert regs.get('_Ga',0)==0 and regs.get('_Gb',0)==expected
                count+=1
    for a in range(6):
        source=f'''option halt_on_positive; global a; global flag;
        proc main() {{a={a}; if(a>0){{noop_2();return;noop_1();}} flag=1; return;}}'''
        regs,_=run_register(compile_source(source))
        assert regs.get('_Gflag',0)==int(a==0)
        count+=1
    return count


def parse_table(path):
    rows={}
    for line in Path(path).read_text().splitlines():
        fields=line.split();assert len(fields)==8 and fields[1]=='='
        assert fields[0] not in rows
        edges=[]
        for at in (2,5):
            w,d,q=fields[at:at+3]
            assert w in ('0','1') and d in ('L','R')
            edges.append((int(w),d,q))
        rows[fields[0]]=edges
    assert '!ENTRY' in rows and 'HALT' not in rows
    assert all(q in rows or q=='HALT' for row in rows.values() for w,d,q in row)
    return rows


def certify_window(rows,left,right,assumed):
    """A separate set-based reachability implementation for certificate checking."""
    width=left+right+1;mask=(1<<width)-1
    reached={s:set() for s in rows}
    reached['!ENTRY'].add(0)
    pending=deque([('!ENTRY',0)])
    bits={s:0 for s in rows}
    while pending:
        q,t=pending.popleft()
        read=(t>>left)&1
        if not (assumed[q]&(1<<read)):continue
        bits[q]|=1<<read
        w,d,nextq=rows[q][read]
        if nextq=='HALT':continue
        written=t^(1<<left) if w!=read else t
        if d=='R': successors=(written>>1,(written>>1)+(1<<(width-1)))
        else: successors=((written*2)&mask,((written*2)&mask)+1)
        for u in successors:
            if u not in reached[nextq]:
                reached[nextq].add(u);pending.append((nextq,u))
    return bits


def reduction_certificate(original_path,reduced_path,certificate_path):
    original=parse_table(original_path);reduced=parse_table(reduced_path)
    cert=json.loads(Path(certificate_path).read_text())
    assumed={s:3 for s in original}
    if cert.get('trace'):
        for step in cert['trace']:
            bits=certify_window(original,step['left'],step['right'],assumed)
            proven={s:assumed[s]&bits[s] for s in original}
            assert proven==step['possible']
            assumed=proven
    else:
        left=cert.get('left');right=cert.get('right')
        assumed=certify_window(original,cert['radius'] if left is None else left,cert['radius'] if right is None else right,assumed)
    assert assumed==cert['possible']
    mapping=cert['mapping']
    assert mapping['!ENTRY']=='!ENTRY' and mapping['HALT']=='HALT'
    for q,row in original.items():
        for b,(w,d,nextq) in enumerate(row):
            if assumed[q]&(1<<b):
                assert mapping[q] in reduced
                assert reduced[mapping[q]][b]==(w,d,mapping[nextq]),(q,b)
    assert set(reduced)=={mapping[q] for q in original if assumed[q]}
    # This is an unbounded simulation certificate, not a finite-run claim.
    return {'compiled_states':len(original),'reduced_states':len(reduced),'certificate':'valid'}


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--source',type=Path,default=ROOT/'candidates/layout-snapshot.nql')
    p.add_argument('--original',type=Path)
    p.add_argument('--reduced',type=Path)
    p.add_argument('--certificate',type=Path)
    p.add_argument('--difference',action='store_true')
    args=p.parse_args()
    from compile import table
    baseline=compile_source((ROOT/'reference/riemann-744.nql').read_text())
    assert table(baseline)==(ROOT/'reference/riemann-744.tm').read_text()
    print('baseline: exact 744-state reproduction',flush=True)
    print('cutoff:',cutoff_certificate(),flush=True)
    print('arithmetic:',arithmetic_tests(args.source.read_text(),args.difference),flush=True)
    print('comparison:',comparison_tests(args.source.read_text()),flush=True)
    print('lowering:',lowering_tests(),flush=True)
    machine=compile_source(args.source.read_text())
    regs,steps=run_register(machine,iterations=2)
    assert regs['_Gx']==2 and regs['_Gnum']==324 and regs.get('_Gdenom',0)==0
    print('compiled register execution:',steps,'instructions; first two iterations agree',flush=True)
    if args.original:
        print('reduction:',reduction_certificate(args.original,args.reduced,args.certificate),flush=True)


if __name__=='__main__':main()
