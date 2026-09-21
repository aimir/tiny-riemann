"""Evaluate invariant-guided dispatch and unbounded register fragments."""
from pathlib import Path
import argparse
import hashlib
import itertools
import json
import time
from compile import ROOT,table
from fragments import compile_fragments
from search_final import Evaluator,graph_key
from macro_reduce import simplify
from tm_reduce import load,dump,abstract_reachable,fast_merge
from test_fragments import run_registers


class FragmentEvaluator(Evaluator):
    def __init__(self,output,source):
        super().__init__(output,[0,1,2,3,248,715,1181,1235])
        self.source=source;output.mkdir(parents=True,exist_ok=True)
        (output/'source.nql').write_text(source)

    def screen_config(self,registers,layout,lowering,fragments):
        key=hashlib.sha256(json.dumps([self.source,registers,layout,lowering,fragments],sort_keys=True).encode()).hexdigest()
        if key in self.cache:return self.cache[key]
        start=time.monotonic()
        m,actual=compile_fragments(self.source,registers,layout,lowering,fragments)
        values,steps,halt=run_registers(m)
        assert values['_Gx']==2 and values.get('_Gdenom',0)==0 and not halt
        directory=self.output/key[:16];directory.mkdir(parents=True,exist_ok=True)
        (directory/'compiled.tm').write_text(table(m))
        original=load(directory/'compiled.tm');rows,rounds=simplify(original)
        dump(rows,directory/'macro.tm')
        (directory/'macros.json').write_text(json.dumps({'rounds':rounds})+'\n')
        (directory/'phases.json').write_text(json.dumps({'phase':m.phase_certificate,'roles':m.role_certificate,'zero':m.zero_certificate},indent=2)+'\n')
        possible,_=abstract_reachable(rows,3);cheap,_=fast_merge(rows,possible,0)
        c=dict(key=key,layout=layout,lowering=lowering,fragments=fragments,register_order=registers,registers=actual,
               rows=rows,directory=directory,compiled_states=len(original),macro_states=len(rows),graph=graph_key(rows),
               pc_bits=m.main.order,fragment_counts=m.builder.fragment_counts,family='fragments',mutation=fragments,
               proxy=sum(v>0 for v in possible.values())-.7*sum(v in (1,2) for v in possible.values()),
               screen_states=len(cheap),screen_seconds=time.monotonic()-start,register_steps_two_iterations=steps,
               phase_rewrites=len(m.phase_certificate['dispatch_rewrites']) if m.phase_certificate else 0,role_rewrites=len(m.role_certificate))
        self.cache[key]=c;self.save(c)
        print('screen',key[:16],len(original),len(rows),len(cheap),fragments,flush=True)
        return c


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--base',type=Path,default=ROOT/'results/register-local/d01c9264a0344463/candidate.json')
    p.add_argument('--output',type=Path,default=ROOT/'results/fragments')
    p.add_argument('--promote',type=int,default=12)
    p.add_argument('--exact-finalists',type=int,default=4)
    p.add_argument('--target',type=int,default=284)
    p.add_argument('--exact-seconds',type=int,default=60)
    p.add_argument('--suite',choices=('native','zero'),default='native')
    args=p.parse_args();base=json.loads(args.base.read_text())
    source=(args.base.parent.parent/'source.nql').read_text();ev=FragmentEvaluator(args.output,source)
    configs=[]
    for clear,test,prune,roles in itertools.product((False,True),repeat=4):
        configs.append(dict(clear=clear,test=test,prune=prune,roles=roles))
    # Select individual clear/test fragments; distinct transfer patterns matter.
    clears=['_Glcm','_Gi','_Gdenom','_Gnum','_Gc']
    for mask in range(1,31):
        selected=[r for j,r in enumerate(clears) if mask&(1<<j)]
        configs.append(dict(clear=selected,test=True,prune=True,roles=True))
    for reg in ('_Gi','_Gdenom'):
        for roles in (False,True): configs.append(dict(test=[reg],prune=True,roles=roles))
    if args.suite=='zero':
        reference,_=compile_fragments(source,base['register_order'],base['layout'],base['lowering'],{'zero_skip':True})
        sites=sorted(reference.zero_certificate)
        configs=[{'zero_skip':[site for j,site in enumerate(sites) if mask&(1<<j)]} for mask in range(1<<len(sites))]
    screened=[ev.screen_config(base['register_order'],base['layout'],base['lowering'],f) for f in configs]
    unique={}
    for c in sorted(screened,key=lambda c:(c['screen_states'],c['macro_states'],c['key'])):unique.setdefault(c['graph'],c)
    finalists=list(unique.values())[:args.promote]
    for pred in (lambda c:bool(c['fragments'].get('clear')),lambda c:bool(c['fragments'].get('test')),lambda c:c['phase_rewrites']>0):
        group=[c for c in unique.values() if pred(c)]
        if group and group[0] not in finalists:finalists.append(group[0])
    for c in finalists:ev.full(c)
    for c in sorted(finalists,key=lambda c:(c['final_states'],c['macro_states']))[:args.exact_finalists]:ev.exact(c,args.target,args.exact_seconds)
    best=min(finalists,key=lambda c:c['final_states'])
    report=dict(screened=len(screened),unique_graphs=len(unique),fully_reduced=len(finalists),best_states=best['final_states'],best_candidate=best['key'],scope='Experimental whole machine; native component lemmas and finite certificates do not prove the full headline.')
    (args.output/'report.json').write_text(json.dumps(report,indent=2)+'\n')
    for c in screened:
        if 'final_states' not in c:
            for name in ('compiled.tm','macro.tm','macros.json','phases.json'):(c['directory']/name).unlink(missing_ok=True)
    print(json.dumps(report),flush=True)


if __name__=='__main__':main()
