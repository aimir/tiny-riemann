"""Check fragment candidates; component Lean proofs are not a full TM theorem."""
from pathlib import Path
import argparse
import hashlib
import json
import subprocess
import tempfile
from compile import ROOT,table
from fragments import compile_fragments,graph,analyze_pc,zero_fragments
from tm_reduce import load,dump
from macro_reduce import simplify
from verify import reduction_certificate
from verify_macros import verify
from test_fragments import run_tests,run_tape,tape_for
from test_register_lowering import run_tests as arithmetic_tests
from search_final import compile_candidate
from pc_layout import check_backend


def invariant_check(program,facts,registers):
    """Independent closure check using representative concrete operand values.

    For zero/positive, 0, 1 and 2 exhaust the distinct abstract outcomes of
    decrement, increment, clear and test. Other registers are framed unchanged.
    """
    assert facts[0][1]==0 and all(v&1 for v in facts[0][0])
    checked=0
    for pc,(values,capacity) in facts.items():
        assert len(values)==len(registers) and all(v in (1,2,3) for v in values)
        assert 0<=capacity<=len(registers)
        op,successors=program[pc]
        if op=='halt': continue
        if op in ('silent','reg_init'):
            outcomes=[(successors[0],list(values),min(len(registers),capacity+1) if op=='reg_init' else capacity)]
        else:
            reg=op[op.index('(')+1:-1];index=registers.index(reg)
            assert index<capacity
            outcomes=[]
            for operand in (0,1,2):
                if not values[index]&(1 if operand==0 else 2):continue
                result=operand;branch=0
                if op.startswith('reg_decr('): result=max(0,operand-1);branch=int(operand>0)
                elif op.startswith('reg_test('): branch=int(operand>0)
                elif op.startswith('reg_incr('): result=operand+1
                elif op.startswith('reg_clear('): result=0
                else:raise ValueError(op)
                out=list(values);out[index]=1 if result==0 else 2
                outcomes.append((successors[branch],out,capacity))
        for target,out,cap in outcomes:
            expected,minimum=facts[target]
            assert minimum<=cap and all(v&~w==0 for v,w in zip(out,expected))
            checked+=1
    return checked


def native_obligations(machine):
    """Check the literal transition premises of NativeFragments.lean."""
    states={q.name:q for q in machine.reachable()};count=0
    def edge(name,bit,write,move,target):
        nonlocal count
        q=states[name];b=str(bit)
        assert (int(getattr(q,'write'+b)),getattr(q,'move'+b),getattr(q,'next'+b).name)==(write,move,target),(name,bit)
        count+=1
    if 'clear.init' in states:
        for args in [('clear.init',1,0,1,'clear.check'),('clear.check',0,0,-1,'clear.restore'),
                     ('clear.check',1,1,1,'clear.scan1'),('clear.scan1',1,1,1,'clear.scan1'),
                     ('clear.scan1',0,0,1,'clear.scan0'),('clear.scan0',1,1,1,'clear.scan1'),
                     ('clear.scan0',0,0,-1,'clear.end'),('clear.end',0,0,-1,'clear.shift0'),
                     ('clear.shift1',1,1,-1,'clear.shift1'),('clear.shift1',0,1,-1,'clear.shift0'),
                     ('clear.shift0',1,0,-1,'clear.shift1'),('clear.shift0',0,0,-1,'clear.back1'),
                     ('clear.back1',0,0,1,'clear.back2'),('clear.back1',1,1,1,'clear.back2'),
                     ('clear.back2',0,0,1,'clear.init'),('clear.restore',0,1,-1,'fragment.return.1')]:edge(*args)
    if 'test.first' in states:
        for args in [('test.first',1,1,1,'test.check'),('test.check',0,0,-1,'fragment.return.1'),
                     ('test.check',1,1,-1,'fragment.return2.1')]:edge(*args)
    return count


def zero_equivalence(before,after,registers):
    """Weak bisimulation at instruction boundaries with equal register files.

    Erase only silent jumps and decrements independently proved to read zero.
    Matching primitive operations preserve equality. Both inductive invariants
    constrain each related pair; a decrement branch is required whenever its
    input is possible in their intersection. Reject silent cycles.
    """
    pg,fg=analyze_pc(before,registers);ph,fh=analyze_pc(after,registers)
    invariant_check(pg,fg,registers);invariant_check(ph,fh,registers)
    def normalize(pc,program,facts):
        seen=set()
        while True:
            assert pc not in seen,'Silent divergence is not a finite replacement'
            seen.add(pc);op,succ=program[pc]
            silent=op=='silent'
            if op.startswith(('reg_decr(','reg_clear(')):
                silent=facts[pc][0][registers.index(op[op.index('(')+1:-1])]==1
            if not silent:return pc
            pc=succ[0]
    pending=[(0,0)];seen=set()
    while pending:
        a,b=pending.pop();a=normalize(a,pg,fg);b=normalize(b,ph,fh)
        if (a,b) in seen:continue
        seen.add((a,b));op,sa=pg[a];other,sb=ph[b]
        assert op==other,('Different observable register operations',a,b,op,other)
        assert len(sa)==len(sb)
        common=[v&w for v,w in zip(fg[a][0],fh[b][0])]
        assert all(common),'Related states have incompatible register invariants'
        branches=range(len(sa))
        if op.startswith(('reg_decr(','reg_test(')):
            mask=common[registers.index(op[op.index('(')+1:-1])]
            branches=[i for i in (0,1) if mask&(1<<i)]
        pending.extend((sa[i],sb[i]) for i in branches)
    return len(seen)


def dispatch_check(machine,registers):
    """Compare literal prefix execution with every reachable logical instruction."""
    program,facts=analyze_pc(machine,registers);width=machine.main.order;cases=0
    for pc in facts:
        op,successors=program[pc]
        # A complete initialized zero register file makes all literal register
        # entries safe; only prefix/control behavior is tested in this loop.
        bits=tape_for(pc,width,[0]*max(1,len(registers)))
        q,h,t,steps=run_tape(machine.entry,0,bits,
            lambda q,h:(q.name=='!ENTRY' and h==0) or (h==width+1 and op not in ('silent','halt')) or not hasattr(q,'move0'),limit=4*width+25)
        if op=='silent':
            assert h==0 and q.name=='!ENTRY' and t==tape_for(successors[0],width,[0]*max(1,len(registers)))
        elif op=='halt': assert not hasattr(q,'move0') and t==bits
        else:
            assert h==width+1 and t==bits
            if op=='reg_init': expected=machine.builder.reg_init().entry
            elif op.startswith('reg_clear('):expected=machine.builder.native_sub('clear',op[10:-1]).entry
            elif op.startswith('reg_test('):expected=machine.builder.native_sub('test',op[9:-1]).entry
            else:
                reg=machine.builder.register(op[9:-1]);expected=reg.inc.entry if op.startswith('reg_incr(') else reg.dec.entry
            # Compression may choose another representative of an identical
            # transition graph. Check both read cases, rather than state names.
            pending=[(q,expected)];seen=set()
            while pending:
                a,b=pending.pop()
                if a is b or (a,b) in seen:continue
                seen.add((a,b));assert hasattr(a,'move0')==hasattr(b,'move0')
                if not hasattr(a,'move0'):continue
                for bit in '01':
                    assert getattr(a,'write'+bit)==getattr(b,'write'+bit) and getattr(a,'move'+bit)==getattr(b,'move'+bit)
                    pending.append((getattr(a,'next'+bit),getattr(b,'next'+bit)))
        cases+=1
    return cases


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--candidate',type=Path,required=True);p.add_argument('--output',type=Path)
    p.add_argument('--machine',type=Path);p.add_argument('--certificate',type=Path)
    args=p.parse_args();d=args.candidate;c=json.loads((d/'candidate.json').read_text())
    source=(d/'source.nql').read_text() if (d/'source.nql').exists() else (d.parent/'source.nql').read_text()
    m,rs=compile_fragments(source,c['register_order'],c['layout'],c['lowering'],c['fragments'])
    assert rs==c['registers'] and table(m)==(d/'compiled.tm').read_text()
    raw,_=compile_fragments(source,c['register_order'],c['layout'],c['lowering'],c['fragments'],compress=False)
    checks={'regressions':run_tests(),'native_transition_premises':native_obligations(raw),'dispatch_prefixes':dispatch_check(m,rs)}
    checks['arithmetic_regressions']=arithmetic_tests()
    order=json.loads((ROOT/'machine/riemann295.layout.json').read_text())['register_order']
    reference,_=compile_candidate((ROOT/'machine/riemann295.nql').read_text(),order)
    assert len(rs)<=len(order),'No verified reference for additional physical registers'
    backend=m
    if c['fragments'].get('roles'):
        backend,_=compile_fragments(source,c['register_order'],c['layout'],c['lowering'],dict(c['fragments'],roles=False))
    checks['backend_before_role_restriction']=check_backend(reference,backend,list(zip(order,rs)))
    program,facts=analyze_pc(raw,rs);checks['inductive_edges']=invariant_check(program,facts,rs)
    saved=json.loads((d/'phases.json').read_text())
    assert saved.get('zero',{})==m.zero_certificate and saved['phase']==m.phase_certificate and saved['roles']==m.role_certificate
    if m.zero_certificate:
        before=dict(c['fragments']);before.pop('zero_skip',None)
        old,_=compile_fragments(source,c['register_order'],c['layout'],c['lowering'],before,compress=False)
        oldp,oldf=analyze_pc(old,rs);invariant_check(oldp,oldf,rs)
        eligible=zero_fragments(old,rs)
        assert all(eligible[site]==record for site,record in m.zero_certificate.items())
        checks['zero_replacement_bisimulation_pairs']=zero_equivalence(old,raw,rs)
    with tempfile.TemporaryDirectory(prefix='riemann-fragment-check-') as temp:
        rows,_=simplify(load(d/'compiled.tm'));path=Path(temp)/'macro.tm';dump(rows,path)
        assert path.read_bytes()==(d/'macro.tm').read_bytes()
    checks['macros']=verify(d/'compiled.tm',d/'macro.tm',d/'macros.json')
    final=args.machine or d/'final.tm';certificate=args.certificate or d/'reduction.json'
    checks['quotient']=reduction_certificate(d/'macro.tm',final,certificate)
    lake=Path.home()/'.elan/bin/lake'
    result=subprocess.run([str(lake),'env','lean','experiments/NativeFragments.lean'],cwd=ROOT/'formal',capture_output=True,text=True)
    assert result.returncode==0,result.stdout+result.stderr
    assert 'sorryAx' not in result.stdout and 'axioms: [propext, Quot.sound]' in result.stdout and 'axioms: [propext]' in result.stdout
    checks['lean_component_axioms']=result.stdout.strip().splitlines()
    paths=[final,certificate,d/'candidate.json',d/'compiled.tm',d/'macro.tm',d/'macros.json',d/'phases.json',ROOT/'formal/experiments/NativeFragments.lean']
    report={'states':len(load(final)),'status':'Independent checks and generic Lean component proofs passed; whole machine not Lean verified.',
            'checks':checks,'sha256':{str(path):hashlib.sha256(path.read_bytes()).hexdigest() for path in paths},
            'implementation_sha256':{str(path.relative_to(ROOT)):hashlib.sha256(path.read_bytes()).hexdigest() for path in sorted((ROOT/'tools').glob('*.py'))},
            'formal_scope':'The new full-machine source/backend/refinement theorem is not proved. The headline remains machine295_correct.'}
    output=json.dumps(report,indent=2)+'\n'
    if args.output:args.output.write_text(output)
    print(output,end='')


if __name__=='__main__':main()
