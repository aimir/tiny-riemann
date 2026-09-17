"""Seeded search over harmless padding and commutative operand order."""
import argparse
import copy
import gc
import json
import random
from pathlib import Path
from compile import compile_source, ROOT, table, grammar, AstMachine, Machine
import nqlast as n


def show(e, indent=0):
    pad = '    ' * indent
    if isinstance(e,n.Program): return '\n\n'.join(show(c) for c in e.children)+'\n'
    if isinstance(e,n.Option): return f'option {e.name};'
    if isinstance(e,n.GlobalReg): return f'global {e.name};'
    if isinstance(e,n.ProcDef): return f'proc {e.name}('+', '.join(e.parameters)+') '+show(e.children[0],indent)
    if isinstance(e,n.Block): return '{\n'+'\n'.join('    '*(indent+1)+show(c,indent+1) for c in e.children)+'\n'+pad+'}'
    if isinstance(e,n.Reg): return e.name
    if isinstance(e,n.Lit): return str(e.value)
    if isinstance(e,n.TrueConst):return 'true'
    if isinstance(e,n.FalseConst):return 'false'
    if isinstance(e,n.Assign):return show(e.children[0])+' = '+show(e.children[1])+';'
    if isinstance(e,n.Call):return e.func+'('+', '.join(show(c) for c in e.children)+');'
    if isinstance(e,n.Return):return 'return;'
    if isinstance(e,n.WhileLoop):return 'while ('+show(e.children[0])+') '+show(e.children[1],indent)
    if isinstance(e,n.IfThen):
        a,b,c=e.children
        return 'if ('+show(a)+') '+show(b,indent)+(' else '+show(c,indent) if c.children else '')
    ops={n.Add:'+',n.Mul:'*',n.Monus:'-',n.Div:'/',n.Greater:'>',n.GreaterEqual:'>=',n.Less:'<',n.LessEqual:'<=',n.Equal:'==',n.NotEqual:'!=',n.And:'&&',n.Or:'||'}
    if type(e) in ops:return '('+(' '+ops[type(e)]+' ').join(show(c) for c in e.children)+')'
    raise TypeError(type(e))


def walk(e):
    yield e
    for c in e.children: yield from walk(c)


def build(ast):
    a=AstMachine(ast); a.pc_bits=50
    order=a.main().order
    b=AstMachine(ast);b.pc_bits=order
    m=Machine(b);m.compress()
    return m


def run():
    p=argparse.ArgumentParser()
    p.add_argument('--steps',type=int,default=12000)
    p.add_argument('--seed',type=int,default=744)
    p.add_argument('--source',type=Path,default=ROOT/'candidates/register-best.nql')
    p.add_argument('--objective',choices=['states','proxy','macro'],default='states')
    p.add_argument('--extract',action='store_true')
    p.add_argument('--tag')
    args=p.parse_args()
    rng=random.Random(args.seed)
    original,=grammar.parse_string(args.source.read_text(),parse_all=True)
    current=original
    def evaluate(m):
        if args.objective=='states': return len(m.reachable())
        from tm_reduce import abstract_reachable
        rows={s.name:tuple((int(getattr(s,'write'+b)),getattr(s,'move'+b),getattr(s,'next'+b).name) for b in '01') for s in m.reachable()}
        # print_machine disambiguates duplicate names; use its exported table.
        raw=table(m)
        rows={}
        for line in raw.splitlines():
            q,eq,w0,d0,q0,w1,d1,q1=line.split()
            rows[q]=((int(w0),1 if d0=='R' else -1,q0),(int(w1),1 if d1=='R' else -1,q1))
        if args.objective=='macro':
            from macro_reduce import simplify
            rows,_=simplify(rows)
        possible,_=abstract_reachable(rows,3)
        return sum(v>0 for v in possible.values())-0.7*sum(v in (1,2) for v in possible.values())
    current_score=evaluate(build(current))
    best=current_score;best_ast=copy.deepcopy(current)
    with (ROOT/'results/search-layout.jsonl').open('a') as log:
        for iteration in range(args.steps):
            if iteration%1000==0:
                current=copy.deepcopy(best_ast if iteration%3000 else original)
                current_score=evaluate(build(current))
            candidate=copy.deepcopy(current)
            kind=rng.randrange(7 if args.extract else 5)
            nodes=list(walk(candidate))
            if kind<2:
                blocks=[e for e in nodes if isinstance(e,n.Block)]
                block=rng.choice(blocks)
                pads=[i for i,e in enumerate(block.children) if isinstance(e,n.Call) and e.func.startswith('noop_')]
                if pads and rng.random()<0.5:
                    del block.children[rng.choice(pads)]
                else:
                    block.children.insert(rng.randrange(len(block.children)+1),n.Call(func='noop_'+str(rng.randrange(4)),children=[]))
            elif kind==2:
                swaps=[e for e in nodes if isinstance(e,(n.Mul,n.Add)) and len(e.children)==2]
                rng.choice(swaps).children.reverse()
            elif kind==3:
                opt=rng.choice(['canonical_temps','inplace','consume','no_sort_transfers','relative_jumps','fused_decrement','halt_on_positive'])
                setattr(candidate.options,opt,not getattr(candidate.options,opt))
                candidate.children=[e for e in candidate.children if not (isinstance(e,n.Option) and e.name==opt)]
                if getattr(candidate.options,opt):candidate.children.insert(0,n.Option(name=opt))
            elif kind==4:
                # Swapping adjacent assignments only when they have no read/write dependencies.
                blocks=[e for e in nodes if isinstance(e,n.Block)]
                block=rng.choice(blocks)
                choices=[]
                for i,(a,b) in enumerate(zip(block.children,block.children[1:])):
                    if not isinstance(a,n.Assign) or not isinstance(b,n.Assign):continue
                    wa=a.children[0].name;wb=b.children[0].name
                    ra={e.name for e in walk(a.children[1]) if isinstance(e,n.Reg)}
                    rb={e.name for e in walk(b.children[1]) if isinstance(e,n.Reg)}
                    if wa!=wb and wa not in rb and wb not in ra:choices.append(i)
                if not choices:continue
                i=rng.choice(choices);block.children[i:i+2]=reversed(block.children[i:i+2])
            elif kind==5:
                blocks=[e for e in nodes if isinstance(e,n.Block) and e.children]
                block=rng.choice(blocks)
                i=rng.randrange(len(block.children));j=rng.randrange(i+1,len(block.children)+1)
                selected=block.children[i:j]
                if any(isinstance(e,(n.Return,n.Break)) for s in selected for e in walk(s)):continue
                index=0
                while 'part'+str(index) in candidate.by_name:index+=1
                name='part'+str(index)
                proc=n.ProcDef(name=name,parameters=[],children=[n.Block(children=selected)])
                candidate.by_name[name]=proc;candidate.children.append(proc)
                block.children[i:j]=[n.Call(func=name,children=[])]
            else:
                counts={name:sum(isinstance(e,n.Call) and e.func==name for e in nodes) for name in candidate.by_name}
                choices=[e for e in nodes if isinstance(e,n.Call) and e.func.startswith('part') and counts.get(e.func)==1]
                if not choices:continue
                call=rng.choice(choices);name=call.func
                for block in nodes:
                    if isinstance(block,n.Block) and call in block.children:
                        i=block.children.index(call)
                        block.children[i:i+1]=candidate.by_name[name].children[0].children
                        break
                candidate.children.remove(candidate.by_name.pop(name))
            try:
                m=build(candidate)
            except AssertionError:
                # A helper emptied by no-op removal has no representable size
                # in the upstream compiler. Such candidates are discarded.
                continue
            score=evaluate(m)
            # Small bounded uphill moves; deterministic seed and source saved for each record.
            import math
            temp=0.25+1.5*(1-(iteration%1000)/1000)
            if score<=current_score or rng.random()<math.exp((current_score-score)/temp):
                current,current_score=candidate,score
            if score<best:
                best,best_ast=score,copy.deepcopy(candidate)
                source=show(candidate)
                # Reparse the emitted source to certify this is a reproducible score.
                regenerated=compile_source(source)
                assert evaluate(regenerated)==score
                tag=args.tag or ('layout' if args.objective=='states' else 'proxy')
                (ROOT/f'candidates/{tag}-best.nql').write_text(source)
                (ROOT/f'results/{tag}-best.tm').write_text(table(regenerated))
                record={'iteration':iteration,'seed':args.seed,'states':score,'source':source}
                log.write(json.dumps(record)+'\n');log.flush()
                print(iteration,score,flush=True)
            if iteration%100==0:gc.collect()
    print('DONE',best,flush=True)


if __name__=='__main__':run()
