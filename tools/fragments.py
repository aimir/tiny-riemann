"""Native register fragments and inductive PC/register invariants.

The native fragments operate on the unary register language 1^(n+1)0 and
its double-zero fence. PC invariants remember whole register zero facts,
not a bounded tape window. All changes are opt-in; the verified build stays
unchanged. Component proofs do not constitute a theorem for a new full TM.
"""
from collections import deque
from compile import Machine
from framework import State, Subroutine, Register, Goto, memo
from register_lowering import RegisterBuilder, prepare, hooks


class FragmentBuilder(RegisterBuilder):
    def __init__(self,ast,layout,lowering,fragments,clobbers=None):
        self.fragments=fragments
        self.fragment_counts={'native_clears':0,'native_tests':0,'zero_fragments':0}
        self.parent_name=None
        self.used_skips=set()
        super().__init__(ast,layout,lowering,clobbers)

    def selected(self,key,name):
        choice=self.fragments.get(key,False)
        return choice is True or isinstance(choice,list) and name in choice

    @memo
    def return_scan(self,positive):
        one,zero=State(),State()
        prefix='fragment.return2' if positive else 'fragment.return'
        one.be(move=-1,next0=zero,next1=one,name=prefix+'.1')
        zero.be(move=-1,next0=self.nextstate_2() if positive else self.nextstate(),next1=one,name=prefix+'.0')
        return one,zero

    @memo
    def native_clear_core(self):
        init,check,scan1,scan0,end,shift0,shift1,back1,back2,restore=[State() for _ in range(10)]
        init.be(write='0',move=1,next=check,name='clear.init')
        check.be(move0=-1,next0=restore,move1=1,next1=scan1,name='clear.check')
        scan1.be(move=1,next1=scan1,next0=scan0,name='clear.scan1')
        scan0.be(move1=1,next1=scan1,move0=-1,next0=end,name='clear.scan0')
        end.be(move=-1,next=shift0,name='clear.end')
        shift0.be(write='0',move=-1,next0=back1,next1=shift1,name='clear.shift0')
        shift1.be(write='1',move=-1,next0=shift0,next1=shift1,name='clear.shift1')
        back1.be(move=1,next=back2,name='clear.back1')
        back2.be(move=1,next=init,name='clear.back2')
        restore.be(write='1',move=-1,next=self.return_scan(False)[0],name='clear.restore')
        return init

    @memo
    def native_test_core(self):
        first,check=State(),State()
        first.be(move=1,next=check,name='test.first')
        check.be(move=-1,next0=self.return_scan(False)[0],next1=self.return_scan(True)[0],name='test.check')
        return first

    @memo
    def fragment_selector(self,kind,index):
        if index==-2:
            return self.native_clear_core() if kind=='clear' else self.native_test_core()
        q=State()
        q.be(move=1,next1=q,next0=self.fragment_selector(kind,index-1),name=f'{kind}.select.{index}')
        return q

    @memo
    def native_sub(self,kind,name):
        reg=self.register(name)
        return Subroutine(self.fragment_selector(kind,reg.index),0,f'reg_{kind}({name})',is_decrement=kind=='test')

    @memo
    def transfer(self,source,*targets):
        if not targets and self.selected('clear',source.name):
            self.fragment_counts['native_clears']+=1
            return self.native_sub('clear',source.name)
        return super().transfer(source,*targets)

    def makesub(self,*parts,name):
        # The adjacent instructions dec r; goto zero; inc r constitute a
        # nondestructive test. No labels may enter the middle of this fragment.
        result=[];i=0
        while i<len(parts):
            if i+2<len(parts):
                a,b,c=parts[i:i+3]
                if (isinstance(a,Subroutine) and a.name.startswith('reg_decr(')
                        and isinstance(b,Goto) and isinstance(c,Subroutine)
                        and c.name=='reg_incr('+a.name[9:-1]+')'
                        and self.selected('test',a.name[9:-1])):
                    result.extend((self.native_sub('test',a.name[9:-1]),b))
                    self.fragment_counts['native_tests']+=1
                    i+=3
                    continue
            result.append(parts[i]);i+=1
        old=self.parent_name;self.parent_name=name
        try:return super().makesub(*result,name=name)
        finally:self.parent_name=old

    def inline_parts(self,parts):
        parts=super().inline_parts(parts)
        counts={};out=[]
        for part in parts:
            if isinstance(part,Subroutine) and part.name.startswith(('transfer(','reg_clear(')):
                occurrence=counts.get(part.name,0);counts[part.name]=occurrence+1
                site=f'{self.parent_name}:{part.name}:{occurrence}'
                if site in self.fragments.get('skip_sites',[]):
                    self.used_skips.add(site);self.fragment_counts['zero_fragments']+=1
                    part=self.noop(0)
                else:
                    # An occurrence belongs to source order, not address order:
                    # block packing may move identical calls past one another.
                    original=part
                    part=Subroutine(original.entry,original.order,original.name,
                                    original.child_map,original.is_decrement)
                    if hasattr(original,'source_parts'):part.source_parts=original.source_parts
                    part.fragment_site=site
            out.append(part)
        return tuple(out)


def graph(machine):
    slots={}
    def flatten(sub,base):
        if not sub.child_map:
            for i in range(sub.size): slots[base+i]=sub
        else:
            for prefix,info in sub.child_map.items():
                flatten(info.sub,base+(int(prefix or '0',2)<<(sub.order-len(prefix))))
    flatten(machine.main,0)
    modulus=1<<machine.main.order
    result={}
    for pc,sub in slots.items():
        name=sub.name
        if name=='halt': result[pc]=(name,())
        elif name.startswith(('reg_decr(','reg_test(')):
            result[pc]=(name,((pc+1)%modulus,(pc+2)%modulus))
        elif name.startswith(('reg_incr(','reg_clear(')) or name=='reg_init':
            result[pc]=(name,((pc+1)%modulus,))
        else:
            if name.startswith('noop.'): target=pc+sub.size
            elif name.startswith('rjump('): target=pc+int(name[6:-1])
            elif '.jump(' in name:
                rel,power=map(int,name.rsplit('.jump(',1)[1][:-1].split(','))
                target=((pc>>power)<<power)+rel
            else: raise ValueError(name)
            result[pc]=('silent',(target%modulus,))
    return result


def abstract_successors(action,successors,values,capacity,registers):
    if action=='halt': return []
    if action=='silent': return [(successors[0],values,capacity)]
    if action=='reg_init': return [(successors[0],values,min(len(registers),capacity+1))]
    name=action[action.index('(')+1:-1]
    index=registers.index(name)
    assert index<capacity,('Register used before initialization',action,capacity)
    if action.startswith('reg_incr('):
        out=list(values);out[index]=2
        return [(successors[0],tuple(out),capacity)]
    if action.startswith('reg_clear('):
        out=list(values);out[index]=1
        return [(successors[0],tuple(out),capacity)]
    result=[]
    if values[index]&1:
        out=list(values);out[index]=1
        result.append((successors[0],tuple(out),capacity))
    if values[index]&2:
        out=list(values);out[index]=2 if action.startswith('reg_test(') else 3
        result.append((successors[1],tuple(out),capacity))
    return result


def analyze_pc(machine,registers):
    program=graph(machine)
    facts={0:(tuple(1 for _ in registers),0)}
    pending=deque([0])
    while pending:
        pc=pending.popleft()
        for target,values,capacity in abstract_successors(*program[pc],*facts[pc],registers):
            old=facts.get(target)
            new=(values,capacity) if old is None else (tuple(a|b for a,b in zip(old[0],values)),min(old[1],capacity))
            if old!=new:
                facts[target]=new;pending.append(target)
    return program,facts


def check_invariant(program,facts,registers):
    """Check initial inclusion and closure; computing the least fixed point is unnecessary."""
    assert 0 in facts and facts[0][1]==0 and all(v&1 for v in facts[0][0])
    for pc,(values,capacity) in facts.items():
        assert len(values)==len(registers) and all(v in (1,2,3) for v in values)
        assert 0<=capacity<=len(registers)
        for target,out,newcap in abstract_successors(*program[pc],values,capacity,registers):
            assert target in facts and facts[target][1]<=newcap
            assert all(v&~w==0 for v,w in zip(out,facts[target][0]))
    return True


def prune_dispatch(machine,registers):
    program,facts=analyze_pc(machine,registers)
    check_invariant(program,facts,registers)
    width=machine.main.order
    # Only private, uncompressed dispatcher nodes may be changed. Native
    # register selectors, arithmetic on PC bits and return paths stay intact.
    dispatch={q for q in machine.reachable() if q.name.endswith(']') and '[' in q.name}
    masks={q:0 for q in dispatch}
    for pc in facts:
        action=program[pc][0]
        tape=[0]+[int(x) for x in f'{pc:0{width}b}']+[0]
        q,head,steps=machine.entry,0,0
        while steps==0 or q.name!='!ENTRY':
            if not hasattr(q,'move0') or (steps and action not in ('silent','halt') and head==width+1): break
            assert 0<=head<len(tape)
            bit=str(tape[head])
            if q in dispatch:
                assert q.move0==q.move1==1 and q.write0=='0' and q.write1=='1'
                masks[q]|=1<<int(bit)
            tape[head]=int(getattr(q,'write'+bit));head+=getattr(q,'move'+bit);q=getattr(q,'next'+bit)
            steps+=1
            assert steps<=4*width+20
    changes=[]
    for q in sorted(dispatch,key=lambda q:q.name):
        if masks[q] in (1,2):
            keep='0' if masks[q]==1 else '1';unused='1' if keep=='0' else '0'
            changes.append({'state':q.name,'read':int(unused),'reachable_read':int(keep)})
            for field in ('move','write','next'): setattr(q,field+unused,getattr(q,field+keep))
    return {'registers':registers,'program':{str(k):[a,list(s)] for k,(a,s) in program.items()},
            'invariant':{str(k):{'values':list(v),'capacity':c} for k,(v,c) in facts.items()},
            'dispatch_rewrites':changes,'reachable_program_counters':len(facts),
            'zero_facts':sum(v==1 for values,_ in facts.values() for v in values)}


def zero_fragments(machine,registers):
    """Find whole transfer calls whose source is zero at every reachable entry.

    Every external edge entering a replaceable interval must enter at its first
    instruction. This prevents deleting an interior target of another branch.
    Shared procedure instances contribute all their actual call addresses.
    """
    program,facts=analyze_pc(machine,registers)
    sites={}
    def walk(sub,base):
        counts={}
        children=sorted(sub.child_map.items(),key=lambda p:int(p[0] or '0',2)<<(sub.order-len(p[0])))
        for prefix,info in children:
            part=info.sub;at=base+(int(prefix or '0',2)<<(sub.order-len(prefix)))
            if part.name.startswith(('transfer(','reg_clear(')) and '.jump(' not in part.name:
                occurrence=counts.get(part.name,0);counts[part.name]=occurrence+1
                site=part.fragment_site
                source=part.name[part.name.index('(')+1:-1].split(',')[0]
                record=sites.setdefault(site,{'source':source,'entries':[],'valid':True})
                external=[p for p,(values,capacity) in facts.items() if not at<=p<at+part.size
                          and any(at<t<at+part.size for t,_,_ in
                                  abstract_successors(*program[p],values,capacity,registers))]
                record['valid'] &= not external
                if at in facts:
                    record['entries'].append(at)
                    record['valid'] &= facts[at][0][registers.index(source)]==1
            walk(part,at)
    walk(machine.main,0)
    return {s:r for s,r in sites.items() if r['valid'] and r['entries']}


def restrict_roles(machine):
    """Reads fixed by the register-language invariant, before any state merging."""
    roles={'dec.init':1,'dec.restore':0,'dec.scan_done':0,'init.f1':0,'init.f2':0,
           'clear.init':1,'clear.restore':0,'clear.end':0,'clear.back2':0,'test.first':1}
    changes=[]
    for q in machine.reachable():
        if q.name not in roles: continue
        keep=str(roles[q.name]);other=str(1-roles[q.name])
        before=tuple(getattr(q,f+other) for f in ('write','move','next'))
        after=tuple(getattr(q,f+keep) for f in ('write','move','next'))
        if before!=after: changes.append({'state':q.name,'read':int(keep)})
        for f in ('write','move','next'): setattr(q,f+other,getattr(q,f+keep))
    return changes


def compile_fragments(source,registers,layout,lowering,fragments,compress=True,_skips=None):
    assert 'skip_sites' not in fragments, 'Use zero_skip selectors; sites must be proved before replacement'
    settings=dict(fragments,skip_sites=_skips or [])
    with hooks():
        ast=prepare(source,lowering)
        def new(clobbers=None,bits=50):
            builder=FragmentBuilder(ast,layout,lowering,settings,clobbers)
            builder.pc_bits=bits
            for name in registers: builder.register(name)
            return builder
        sizing=new();bits=sizing.main().order;clobbers=None
        if lowering.get('propagate_consumed'):
            clobbers=sizing.clobbers;sizing=new(clobbers);bits=sizing.main().order
            assert sizing.clobbers==clobbers
        builder=new(clobbers,bits)
        machine=Machine(builder)
        if clobbers is not None: assert builder.clobbers==clobbers
    actual=[n for n,i in sorted({v.name:v.index for v in builder._memos.values() if isinstance(v,Register)}.items(),key=lambda p:p[1])]
    if fragments.get('zero_skip') and _skips is None:
        sites=zero_fragments(machine,actual)
        selected=list(sites) if fragments['zero_skip'] is True else [s for s in sites if s in fragments['zero_skip']]
        if isinstance(fragments['zero_skip'],list): assert set(selected)==set(fragments['zero_skip']), 'Requested zero fragment lacks an invariant'
        result,actual=compile_fragments(source,registers,layout,lowering,fragments,compress,_skips=selected)
        result.zero_certificate={s:sites[s] for s in selected}
        return result,actual
    machine.zero_certificate={}
    assert builder.used_skips==set(_skips or []), 'Unknown fragment replacement site'
    machine.phase_certificate=prune_dispatch(machine,actual) if fragments.get('prune') else None
    machine.role_certificate=restrict_roles(machine) if fragments.get('roles') else []
    if compress: machine.compress()
    return machine,actual
