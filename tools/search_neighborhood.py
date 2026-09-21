"""Systematic local refinement of saved candidates using complete reductions.

Enumerate register transpositions, padding edits and compiler switches around
the best layouts. Preserve the base artifacts and independently check every
inherited quotient. A target is a stopping criterion, never an assumed bound.
"""
from pathlib import Path
import argparse
import copy
import itertools
import json
from compile import grammar
from search_layout import show, walk
from search_unified import (UnifiedEvaluator, configuration, source_at, select,
                            full_batch, repair_zero_sites)
from fragments import compile_fragments, zero_fragments
import nqlast as n


def neighbors(base):
    def changed(label):
        c=configuration(base)
        c['layout'].pop('jump_orders',None)
        c.update(parent=base['key'],mutation=[label],generation=1)
        return c
    orders=[base['register_order']]
    if base['registers']!=orders[0]:orders.append(base['registers'])
    for order in orders:
        for a,b in itertools.combinations(range(len(order)),2):
            c=changed('register-transposition');c['register_order']=list(order)
            c['register_order'][a],c['register_order'][b]=order[b],order[a]
            yield c
    ast,=grammar.parse_string(base['source'],parse_all=True)
    pads=[e for e in walk(ast) if isinstance(e,n.Call) and e.func.startswith('noop_')]
    for i,pad in enumerate(pads):
        for replacement in [None,'noop_0','noop_1','noop_2','noop_3']:
            if replacement==pad.func:continue
            tree=copy.deepcopy(ast)
            target=[e for e in walk(tree) if isinstance(e,n.Call) and e.func.startswith('noop_')][i]
            if replacement is None:
                for block in walk(tree):
                    if isinstance(block,n.Block) and target in block.children:
                        block.children.remove(target);break
            else:target.func=replacement
            c=changed(f'padding:{i}:{replacement}');c['source']=show(tree)
            for key in ('consume_lines','zero_lines'):c['lowering'].pop(key,None)
            yield c
    for threshold in range(5):
        c=changed('jump-threshold');c['layout'].update(jump='hybrid',threshold=threshold);yield c
    for jump in ('relative','suffix','suffix-full'):
        c=changed('jump-policy');c['layout']['jump']=jump;yield c
    for knob in ('positive','zero','propagate_consumed','commute','specialize_calls'):
        c=changed('lowering:'+knob);c['lowering'][knob]=not c['lowering'].get(knob,False);yield c
    for omitted in ('lcm','x','i','num','denom','c'):
        c=changed('consume-except:'+omitted)
        c['lowering']['consume']=[v for v in ('lcm','x','i','num','denom','c') if v!=omitted]
        c['lowering'].pop('consume_lines',None);yield c
    for prune,roles in itertools.product((False,True),repeat=2):
        c=changed('register-facts');c['fragments'].update(prune=prune,roles=roles);yield c
    flags=dict(base['fragments']);flags.pop('zero_skip',None)
    machine,regs=compile_fragments(base['source'],base['register_order'],base['layout'],base['lowering'],flags,False)
    sites=sorted(zero_fragments(machine,regs))
    for mask in range(1<<len(sites)):
        c=changed('zero-call-subset')
        c['fragments']['zero_skip']=[s for i,s in enumerate(sites) if mask&(1<<i)]
        yield c


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--bases',type=Path,nargs='+',required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--promote',type=int,default=40)
    p.add_argument('--exact-finalists',type=int,default=16)
    p.add_argument('--exact-seconds',type=int,default=60)
    p.add_argument('--exact-order',choices=('source','clique'),default='source')
    p.add_argument('--workers',type=int,default=2)
    p.add_argument('--target',type=int,default=278)
    args=p.parse_args();assert not args.output.exists(),'Choose a fresh output directory'
    ev=UnifiedEvaluator(args.output,source_at(args.bases[0]));bases=[];rejected=[]
    ev.exact_order=args.exact_order
    for old in args.bases:
        base=json.loads((old/'candidate.json').read_text());base['source']=source_at(old)
        base.update(parent=None,mutation=['seed'],generation=0)
        c=ev.screen(base);assert ev.inherit(c,old);bases.append(c)
        for spec in neighbors(base):
            try:
                repair_zero_sites(spec);ev.screen(spec)
            except (AssertionError,ValueError,KeyError,NotImplementedError) as error:
                rejected.append(dict(parent=base['key'],mutation=spec['mutation'],error=str(error)))
    promoted=select([c for c in ev.cache.values() if 'final_states' not in c],args.promote,'screen_states')
    full_batch(ev,promoted,args.workers)
    incumbent=min(c['final_states'] for c in bases+promoted)
    for c in select(promoted,args.exact_finalists,'final_states'):
        target=min(c['final_states']-1,incumbent+1)
        while target>=args.target:
            status=ev.solve(c,target,args.exact_seconds)
            if status!='sat':break
            incumbent=min(incumbent,c['final_states']);target=c['final_states']-1
        if incumbent<=args.target:break
    best=min(bases+promoted,key=lambda c:c['final_states'])
    report=dict(settings={k:[str(x) for x in v] if k=='bases' else str(v) if isinstance(v,Path) else v for k,v in vars(args).items()},
                screened=len(ev.cache),fully_reduced=len(bases)+len(promoted),best_states=best['final_states'],
                best_candidate=best['key'],rejected=rejected,
                scope='Experimental machine; full-machine Lean theorem is outstanding.')
    (args.output/'report.json').write_text(json.dumps(report,indent=2)+'\n')
    for c in ev.cache.values():
        if 'final_states' not in c:
            for name in ('compiled.tm','macro.tm','macros.json','phases.json'):(c['directory']/name).unlink(missing_ok=True)
    print('result',json.dumps(report),flush=True)


if __name__=='__main__':main()
