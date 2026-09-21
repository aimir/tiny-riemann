"""Search liveness/arithmetic variants by the complete TM reduction pipeline."""
from pathlib import Path
import argparse
import hashlib
import itertools
import json
import time

from compile import ROOT, table
from register_lowering import compile_registers
from pc_layout import check_dispatch
from search_final import Evaluator, graph_key
from macro_reduce import simplify
from tm_reduce import load, dump, abstract_reachable, fast_merge
from verify import run_register


class RegisterEvaluator(Evaluator):
    def __init__(self,output,source):
        super().__init__(output,[0,1,2,3,248,715,1181,1235])
        self.source=source
        output.mkdir(parents=True,exist_ok=True)
        (output/'source.nql').write_text(source)

    def screen_config(self,registers,layout,lowering):
        key=hashlib.sha256(json.dumps([self.source,registers,layout,lowering],sort_keys=True).encode()).hexdigest()
        if key in self.cache: return self.cache[key]
        start=time.monotonic()
        machine,actual=compile_registers(self.source,registers,layout,lowering)
        values,steps=run_register(machine,iterations=2)
        assert values['_Gx']==2 and values.get('_Gdenom',0)==0
        checked=check_dispatch(machine)
        directory=self.output/key[:16]
        directory.mkdir(parents=True,exist_ok=True)
        (directory/'compiled.tm').write_text(table(machine))
        original=load(directory/'compiled.tm')
        rows,rounds=simplify(original)
        dump(rows,directory/'macro.tm')
        (directory/'macros.json').write_text(json.dumps({'rounds':rounds})+'\n')
        possible,_=abstract_reachable(rows,3)
        cheap,_=fast_merge(rows,possible,0)
        result=dict(key=key,layout=layout,lowering=lowering,register_order=registers,registers=actual,
                    rows=rows,directory=directory,compiled_states=len(original),macro_states=len(rows),graph=graph_key(rows),
                    pc_bits=machine.main.order,lowering_stats=machine.builder.stats,layout_stats=machine.builder.layout_stats,
                    family='register-lowering',mutation=lowering,
                    proxy=sum(v>0 for v in possible.values())-.7*sum(v in (1,2) for v in possible.values()),
                    screen_states=len(cheap),screen_seconds=time.monotonic()-start,checks=checked,
                    register_steps_two_iterations=steps)
        self.cache[key]=result
        self.save(result)
        print('screen',key[:16],len(actual),machine.main.order,len(original),len(rows),len(cheap),lowering,flush=True)
        return result


def configurations(order,suite):
    layouts=[{'inline':['square()'],'jump':'hybrid','threshold':1},
             {'inline':['square()'],'jump':'relative'},
             {'jump':'relative'}]
    if suite=='broad':
        for arithmetic in ({},{'commute':True},{'square':True},{'commute':True,'square':True},
                           {'harmonic':'paired'},{'harmonic':'consume'},
                           {'harmonic':'consume','square':True},
                           {'commute':True,'square':True,'monus_product':True},
                           {'harmonic':'consume','square':True,'monus_product':True}):
            for consume,zero in itertools.product((False,True),repeat=2):
                for layout in layouts[:2]:
                    # Do not reserve the third temporary: allocate it only if
                    # needed, retaining relative placement of remaining registers.
                    yield [r for r in order if r!='_scratch_3'],layout,dict(arithmetic,consume=consume,zero=zero,positive=zero)
        # Baseline placement keeps comparisons with the 291-state layout fair.
        for consume,zero in itertools.product((False,True),repeat=2):
            for layout in layouts:
                yield order,layout,dict(consume=consume,zero=zero,positive=zero)
        for borrow in (True,'zero'):
            for depth in (0,1,2):
                for specialize in (False,True):
                    for arithmetic in ({},{'commute':True,'square':True,'monus_product':True}):
                        yield [r for r in order if r!='_scratch_3'],layouts[0],dict(arithmetic,borrow=borrow,borrow_depth=depth,consume=True,zero=True,specialize_calls=specialize)
    elif suite=='facts':
        for mask in range(64):
            selected=[line for k,line in enumerate([60,64,65,68,69,71]) if mask&(1<<k)]
            yield order,layouts[0],{'consume':True,'consume_lines':selected,'propagate_consumed':True,'zero':True}
        for arithmetic in ({'commute':True},{'harmonic':'consume'},{'commute':True,'square':True}):
            for depth in (1,2):
                yield [r for r in order if r!='_scratch_3'],layouts[0],dict(arithmetic,borrow='zero',borrow_depth=depth,
                    borrow_zero=True,consume=True,consume_lines=[60,65,68,69,71],propagate_consumed=True,zero=True)
    elif suite=='allocation':
        for arithmetic in ({'commute':True},{'harmonic':'consume'},{'commute':True,'square':True}):
            for depth,skip,consume in itertools.product((1,2),(False,True),(False,True)):
                cfg=dict(arithmetic,borrow='zero',borrow_depth=depth,borrow_globals=['i'],borrow_zero=skip,
                         consume=consume,consume_lines=[60,65,68,69,71])
                for layout in layouts[:2]:
                    yield [r for r in order if r!='_scratch_3'],layout,cfg
    elif suite=='focused':
        lines=[60,64,65,68,69,71]
        for mask in range(64):
            selected=[line for k,line in enumerate(lines) if mask&(1<<k)]
            yield order,layouts[0],{'consume':True,'consume_lines':selected}
        for mask in range(1,16):
            selected=[line for k,line in enumerate([38,46,60,62]) if mask&(1<<k)]
            yield order,layouts[0],{'zero':True,'zero_lines':selected}
    else:
        raise ValueError(suite)


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,default=ROOT/'results/register-lowering')
    p.add_argument('--promote',type=int,default=12)
    p.add_argument('--exact-finalists',type=int,default=3)
    p.add_argument('--exact-seconds',type=int,default=60)
    p.add_argument('--target',type=int,default=290)
    p.add_argument('--suite',default='broad',choices=['broad','focused','local','allocation','facts'])
    p.add_argument('--base',type=Path,help='candidate.json supplying the local search base')
    args=p.parse_args()
    source=(ROOT/'machine/riemann295.nql').read_text()
    order=json.loads((ROOT/'machine/riemann295.layout.json').read_text())['register_order']
    ev=RegisterEvaluator(args.output,source)
    if args.suite=='local':
        assert args.base, '--suite local requires --base'
        base=json.loads(args.base.read_text())
        configs=[]
        for mask in range(16):
            chosen=[line for k,line in enumerate([38,46,60,62]) if mask&(1<<k)]
            configs.append((base['register_order'],base['layout'],dict(base['lowering'],zero=True,zero_lines=chosen)))
        for threshold in range(7):
            configs.append((base['register_order'],dict(base['layout'],jump='hybrid',threshold=threshold),base['lowering']))
        for i,j in itertools.combinations(range(len(base['register_order'])),2):
            placement=list(base['register_order']);placement[i],placement[j]=placement[j],placement[i]
            configs.append((placement,base['layout'],base['lowering']))
    else:
        configs=configurations(order,args.suite)
    screened=[ev.screen_config(o,l,c) for o,l,c in configs]
    unique={}
    for c in sorted(screened,key=lambda c:(c['screen_states'],c['macro_states'],c['key'])):
        unique.setdefault(c['graph'],c)
    finalists=list(unique.values())[:args.promote]
    # Include best coordinated harmonic and eight-register variants even when
    # narrow-window screening ranks them lower than minor baseline changes.
    for predicate in (lambda c:bool(c['lowering'].get('harmonic')),lambda c:len(c['registers'])<=8,lambda c:bool(c['lowering'].get('borrow'))):
        group=[c for c in unique.values() if predicate(c)]
        if group and group[0] not in finalists: finalists.append(group[0])
    for c in finalists: ev.full(c)
    for c in sorted(finalists,key=lambda c:(c['final_states'],c['macro_states']))[:args.exact_finalists]:
        ev.exact(c,args.target,args.exact_seconds)
    best=min(finalists,key=lambda c:c['final_states'])
    report=dict(screened=len(screened),unique_graphs=len(unique),fully_reduced=len(finalists),
                exact_queries=min(args.exact_finalists,len(finalists)),best_candidate=best['key'],best_states=best['final_states'],
                scope='Experimental arithmetic lowering; differential tests and finite backend/reduction checks, not Lean verified.')
    (args.output/'report.json').write_text(json.dumps(report,indent=2)+'\n')
    for c in screened:
        if 'final_states' not in c:
            for name in ('compiled.tm','macro.tm','macros.json'): (c['directory']/name).unlink(missing_ok=True)
    print(json.dumps(report),flush=True)


if __name__=='__main__': main()
