"""Literal tape tests for native fragments and inductive-invariant regressions."""
from pathlib import Path
import json
import random
from compile import ROOT,table
from fragments import compile_fragments,graph,analyze_pc,check_invariant
from register_lowering import compile_registers


def tape_for(pc,width,values):
    bits=[0]+[int(x) for x in f'{pc:0{width}b}']+[0,0]
    for v in values: bits += [1]*(v+1)+[0]
    return {i:b for i,b in enumerate(bits) if b}


def run_tape(state,head,tape,stop,limit=500000):
    tape=dict(tape)
    for steps in range(limit):
        if steps and stop(state,head): return state,head,tape,steps
        assert hasattr(state,'move0'),('Unexpected halt',steps)
        bit=str(tape.get(head,0));w=int(getattr(state,'write'+bit))
        if w:tape[head]=w
        else:tape.pop(head,None)
        head+=getattr(state,'move'+bit);state=getattr(state,'next'+bit)
    raise AssertionError('Fragment did not terminate within the test limit')


def run_registers(machine,iterations=2,limit=3000000):
    program=graph(machine);values={};pc=0;completed=0
    for steps in range(limit):
        if pc==0 and steps:
            completed+=1
            if completed>=iterations:return values,steps,False
        action,targets=program[pc]
        if action=='halt':return values,steps,True
        branch=0
        if action.startswith('reg_') and action!='reg_init':
            name=action[action.index('(')+1:-1];v=values.get(name,0)
            if action.startswith('reg_decr('): values[name]=max(0,v-1);branch=int(v>0)
            elif action.startswith('reg_test('): branch=int(v>0)
            elif action.startswith('reg_incr('): values[name]=v+1
            elif action.startswith('reg_clear('): values[name]=0
            else:raise ValueError(action)
        pc=targets[branch]
    raise AssertionError('Register test instruction limit')


def run_tests():
    c=json.loads((ROOT/'results/register-local/d01c9264a0344463/candidate.json').read_text())
    source=(ROOT/'machine/riemann295.nql').read_text()
    baseline,_=compile_registers(source,c['register_order'],c['layout'],c['lowering'])
    empty,_=compile_fragments(source,c['register_order'],c['layout'],c['lowering'],{})
    assert table(empty)==table(baseline)
    rng=random.Random(285003);cases=0
    for flags in ({'clear':True,'test':True},{'clear':True,'test':True,'roles':True}):
        m,order=compile_fragments(source,c['register_order'],c['layout'],c['lowering'],flags)
        width=m.main.order
        for name in order:
            index=order.index(name)
            for kind in ('clear','test'):
                entry=m.builder.fragment_selector(kind,index)
                # After compression, memoized entries may retain uncompressed
                # aliases. Those have the same transitions and return target.
                for value in (0,1,2,7,31):
                    values=[rng.randrange(5) for _ in range(len(order)+3)]
                    values[index]=value;pc=rng.randrange(1<<width)
                    expected=list(values)
                    if kind=='clear': expected[index]=0
                    nextpc=(pc+(2 if kind=='test' and value else 1))%(1<<width)
                    q,h,t,steps=run_tape(entry,width+1,tape_for(pc,width,values),lambda q,h:q.name=='!ENTRY' and h==0)
                    assert t==tape_for(nextpc,width,expected),(flags,kind,name,value,pc,steps)
                    cases+=1
    variants=0
    for clear in (False,True):
        for test in (False,True):
            for prune in (False,True):
                m,order=compile_fragments(source,c['register_order'],c['layout'],c['lowering'],{'clear':clear,'test':test,'prune':prune,'roles':True})
                values,steps,halted=run_registers(m)
                assert values['_Gx']==2 and values.get('_Gdenom',0)==0 and not halted
                program,facts=analyze_pc(m,order)
                assert check_invariant(program,facts,order)
                bad=dict(facts);bad[0]=((2,)*len(order),0)
                try:check_invariant(program,bad,order)
                except AssertionError:pass
                else:raise AssertionError('Bad initial invariant accepted')
                variants+=1
    from check_fragments import invariant_check,zero_equivalence
    replacements=0;rejected=0
    for layout in (c['layout'],dict(c['layout'],pack=['main()'],placement='random',seed=31)):
        before,order=compile_fragments(source,c['register_order'],layout,c['lowering'],{},False)
        after,_=compile_fragments(source,c['register_order'],layout,c['lowering'],{'zero_skip':True},False)
        assert after.zero_certificate
        replacements+=zero_equivalence(before,after,order)
        values,_,halted=run_registers(after)
        assert values['_Gx']==2 and not halted
    for flags in ({'skip_sites':['main():transfer(_Gc):0']},
                  {'zero_skip':['main():transfer(_Gx):0']}):
        try:compile_fragments(source,c['register_order'],c['layout'],c['lowering'],flags)
        except AssertionError:rejected+=1
        else:raise AssertionError('Unproved replacement accepted')
    # Initial inclusion alone must not suffice: corrupt a reachable successor.
    program,facts=analyze_pc(before,order)
    target=next(p for p in facts if p!=0 and any(v&2 for v in facts[p][0]))
    bad=dict(facts);bad[target]=((1,)*len(order),facts[target][1])
    try:invariant_check(program,bad,order)
    except AssertionError:rejected+=1
    else:raise AssertionError('Noninductive invariant accepted')
    return {'literal_native_tape_cases':cases,'two_iteration_variants':variants+2,
            'disabled_byte_identical':True,'invalid_invariants_rejected':variants+1,
            'zero_bisimulation_pairs':replacements,'unsafe_inputs_rejected':rejected}


if __name__=='__main__': print(json.dumps(run_tests(),indent=2))
