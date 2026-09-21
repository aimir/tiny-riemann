"""Multi-generation search across source, PC, register and fragment choices.

Every survivor has a complete reduction and a saved feasible quotient. Narrow
screening controls promotion only. SMT runs before survivor selection and
never discards a previously checked upper bound when a query is unresolved.
"""
from pathlib import Path
import argparse
import copy
import hashlib
import json
import random
import shutil
import multiprocessing
from concurrent.futures import ProcessPoolExecutor,as_completed
from compile import ROOT,table
from fragments import compile_fragments,zero_fragments
from search_fragments import FragmentEvaluator
from search_final import Evaluator,mutate as mutate_source
from solve_quotient import check_mapping
from check_fragments import zero_equivalence
from tm_reduce import load


BASE=ROOT/'results/fragments-zero/24d3d7667ba1fe4f'
GLOBALS=['lcm','x','i','denom','num','c']


def source_at(directory):
    local=directory/'source.nql'
    return (local if local.exists() else directory.parent/'source.nql').read_text()


def configuration(candidate):
    return copy.deepcopy({key:candidate[key] for key in
                          ('source','register_order','layout','lowering','fragments')})


def niche(c):
    low,frag=c['lowering'],c['fragments']
    if low.get('harmonic'):return 'harmonic:'+low['harmonic']
    if low.get('borrow'):return 'borrow'
    if low.get('square') or low.get('monus_product'):return 'specialized'
    if frag.get('clear') or frag.get('test'):return 'native'
    if c['layout'].get('pack'):return 'packed'
    if low.get('zero') or low.get('propagate_consumed'):return 'facts'
    if frag.get('zero_skip'):return 'zero-fragments'
    return 'ordinary'


def select(candidates,size,score):
    unique={}
    for c in sorted(candidates,key=lambda c:(c[score],c['macro_states'],c['key'])):
        unique.setdefault(c['graph'],c)
    ordered=list(unique.values())
    if len(ordered)<=size:return ordered
    # Retain the best half unconditionally, then the best previously absent
    # compiler niches within a bounded count penalty. Fill from the ranking.
    chosen=ordered[:max(1,(size+1)//2)]
    families={niche(c) for c in chosen}
    for c in ordered[len(chosen):]:
        if len(chosen)==size:break
        if niche(c) not in families and c[score]<=ordered[0][score]+25:
            chosen.append(c);families.add(niche(c))
    chosen.extend(c for c in ordered if c not in chosen)
    return chosen[:size]


class UnifiedEvaluator(FragmentEvaluator):
    def screen(self,spec):
        self.source=spec['source']
        key=hashlib.sha256(json.dumps([self.source,spec['register_order'],spec['layout'],spec['lowering'],spec['fragments']],sort_keys=True).encode()).hexdigest()
        if key in self.cache:return self.cache[key]
        result=self.screen_config(spec['register_order'],spec['layout'],spec['lowering'],spec['fragments'])
        result.update(configuration(spec))
        result.update({k:spec[k] for k in ('parent','mutation','generation') if k in spec})
        result['family']='unified';result['niche']=niche(result)
        (result['directory']/'source.nql').write_text(self.source)
        try:
            if result['fragments'].get('zero_skip') and 'zero_bisimulation_pairs' not in result:
                before=dict(result['fragments']);before.pop('zero_skip')
                a,regs=compile_fragments(self.source,result['register_order'],result['layout'],result['lowering'],before,False)
                b,_=compile_fragments(self.source,result['register_order'],result['layout'],result['lowering'],result['fragments'],False)
                result['zero_bisimulation_pairs']=zero_equivalence(a,b,regs)
        except Exception:
            del self.cache[key]
            shutil.rmtree(result['directory'])
            raise
        self.save(result)
        return result

    def inherit(self,c,old,final=None,certificate=None):
        """Reuse a saved quotient only after exact table and mapping checks."""
        if (c['directory']/'compiled.tm').read_bytes()!=(old/'compiled.tm').read_bytes():return False
        if (c['directory']/'macro.tm').read_bytes()!=(old/'macro.tm').read_bytes():return False
        final=final or old/'final.tm';certificate=certificate or old/'reduction.json'
        if not final.exists() or not certificate.exists():return False
        cert=json.loads(certificate.read_text())
        mapped=check_mapping(c['rows'],cert['possible'],cert['mapping'])
        assert {q:tuple(edges) for q,edges in mapped.items()}==load(final)
        if c.get('final_states',float('inf'))<=len(mapped):return True
        shutil.copyfile(final,c['directory']/'final.tm');shutil.copyfile(certificate,c['directory']/'reduction.json')
        previous=json.loads((old/'candidate.json').read_text())
        inherited=str(old.relative_to(ROOT)) if old.is_relative_to(ROOT) else str(old.resolve())
        c.update(final_states=len(load(final)),inherited_from=inherited,
                 inherited_table_sha256=hashlib.sha256(final.read_bytes()).hexdigest(),
                 merge_counts=previous.get('merge_counts',[]))
        self.save(c);return True

    def solve(self,c,target,seconds):
        history=c.setdefault('exact_history',[])
        if any(r['target']==target for r in history):return None
        self.exact(c,target,seconds)
        history.append(dict(c['exact']));self.save(c)
        return c['exact']['status']


def full_worker(candidate,seeds,windows):
    # Full reduction needs no compiler or SMT cache. Each process writes only
    # its own already-screened candidate directory.
    evaluator=object.__new__(Evaluator)
    evaluator.seeds=seeds;evaluator.windows=windows
    return evaluator.full(candidate)


def full_batch(evaluator,candidates,workers):
    pending=[c for c in candidates if 'final_states' not in c]
    if workers==1:
        for c in pending:evaluator.full(c)
        return
    with ProcessPoolExecutor(max_workers=workers,mp_context=multiprocessing.get_context('spawn')) as pool:
        jobs={pool.submit(full_worker,c,evaluator.seeds,evaluator.windows):c for c in pending}
        for job in as_completed(jobs):jobs[job].update(job.result())


def mutation_slot(attempt,width):
    # Rotate families on each pass even when the beam width is a multiple of
    # five; otherwise each parent would be locked to one mutation family.
    index=attempt%width
    return index,['source','registers','pc','lowering','fragments'][(index+attempt//width)%5]


def repair_zero_sites(spec):
    """Source and block mutations may change which calls have a zero input."""
    selected=spec['fragments'].get('zero_skip')
    if not isinstance(selected,list) or not selected:return
    flags=dict(spec['fragments']);flags.pop('zero_skip')
    machine,regs=compile_fragments(spec['source'],spec['register_order'],spec['layout'],spec['lowering'],flags,False)
    eligible=zero_fragments(machine,regs)
    spec['fragments']['zero_skip']=[site for site in selected if site in eligible]


def mutate(parent,rng,kind=None):
    result=configuration(parent)
    kind=kind or rng.choice(['source','registers','pc','lowering','fragments'])
    mutations=[]
    # Usually a single change; occasional combinations let features cross
    # mediocre intermediate layouts while preserving multiple parent lineages.
    kinds=[kind]
    if rng.random()<0.25:kinds.append(rng.choice(['registers','pc','lowering','fragments']))
    for kind in kinds:
        low,layout,frag=result['lowering'],result['layout'],result['fragments']
        if kind=='source':
            adapted=dict(parent,source=result['source'],order=result['register_order'],family='unified')
            changed=mutate_source(adapted,rng)
            if changed is None:continue
            result['source']=changed['source'];result['register_order']=changed['order']
            # Source-line numbers are not stable under pretty-printing. Drop
            # selectors; eligibility still requires the liveness/zero proof.
            for key in ('consume_lines','zero_lines'):low.pop(key,None)
            mutations.append('source:'+changed['mutation'])
        elif kind=='registers':
            order=result['register_order']
            if len(order)>1:
                i,j=rng.sample(range(len(order)),2);order[i],order[j]=order[j],order[i]
                mutations.append('registers')
        elif kind=='pc':
            knob=rng.choice(['threshold','jumps','pack','inline','calls','procedure','one-jump'])
            if knob=='threshold':layout.update(jump='hybrid',threshold=rng.randrange(0,5))
            elif knob=='jumps':layout['jump']=rng.choice(['relative','suffix','suffix-full','hybrid','random'])
            elif knob=='pack':layout.update(pack=rng.choice([[],['main()'],['harmonic()'],['main()','harmonic()']]),placement=rng.choice(['source','size','random']))
            elif knob=='inline':layout['inline']=rng.choice([[],['square()'],['harmonic()'],['square()','harmonic()']]);layout.pop('inline_calls',None)
            elif knob=='calls':layout['inline']=[];layout['inline_calls']={rng.choice(['square()','harmonic()']):rng.choice([[0],[1],[0,1]])}
            elif knob=='procedure':layout.setdefault('procedure_jumps',{})[rng.choice(['main()','harmonic()','square()','transfer'])]=rng.choice(['relative','suffix','hybrid'])
            elif knob=='one-jump':
                layout.pop('jump_orders',None)
                machine,_=compile_fragments(result['source'],result['register_order'],layout,low,frag)
                site=rng.choice(sorted(machine.builder.jump_sites))
                layout['jump_orders']={site:rng.choice(machine.builder.jump_sites[site]['choices'])}
            layout['seed']=rng.randrange(1<<20)
            if knob!='one-jump':layout.pop('jump_orders',None)
            mutations.append('pc:'+knob)
        elif kind=='lowering':
            knob=rng.choice(['consume','zero','positive','propagate_consumed','borrow','commute','square','monus_product','harmonic','specialize_calls'])
            if knob=='consume':
                low.pop('consume_lines',None)
                low['consume']=rng.choice([True,False,['lcm','num','c'],['lcm','num'],['lcm','c'],['lcm','num','c','denom']])
            elif knob=='borrow':
                low.update(borrow=rng.choice([False,True,'zero']),borrow_depth=rng.randrange(4),borrow_zero=True,borrow_globals=rng.choice([['i'],['i','num','denom'],GLOBALS]))
                # Reallocate dynamically; preallocating every old scratch would
                # hide genuine reductions in the physical register count.
                result['register_order']=[r for r in result['register_order'] if not r.startswith('_scratch_')]
            elif knob=='harmonic':
                low['harmonic']=rng.choice([False,'paired','consume'])
                low.pop('commute',None)
                result['register_order']=[r for r in result['register_order'] if not r.startswith('_scratch_')]
            else:low[knob]=not low.get(knob,False)
            mutations.append('lowering:'+knob)
        else:
            knob=rng.choice(['clear','test','roles','prune','zero_skip','zero_skip'])
            if knob in ('clear','test'):
                frag[knob]=rng.choice([False,True,[rng.choice(result['register_order'])]])
            elif knob=='zero_skip':
                flags=dict(frag);flags.pop('zero_skip',None)
                machine,regs=compile_fragments(result['source'],result['register_order'],layout,low,flags,False)
                sites=sorted(zero_fragments(machine,regs))
                current=set(frag.get('zero_skip',[]) if isinstance(frag.get('zero_skip'),list) else sites)
                if sites:
                    site=rng.choice(sites);current.symmetric_difference_update([site])
                frag['zero_skip']=sorted(current)
            else:frag[knob]=not frag.get(knob,False)
            mutations.append('fragments:'+knob)
    if not mutations:return None
    # Site-specific jump overrides only remain meaningful in an unchanged
    # address assignment. A sole one-jump mutation is checked by the compiler.
    if mutations!=['pc:one-jump']:result['layout'].pop('jump_orders',None)
    repair_zero_sites(result)
    result.update(parent=parent['key'],mutation=mutations)
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,default=ROOT/'results/unified-beam')
    p.add_argument('--generations',type=int,default=3)
    p.add_argument('--beam',type=int,default=6)
    p.add_argument('--offspring',type=int,default=40)
    p.add_argument('--promote',type=int,default=12)
    p.add_argument('--exact-finalists',type=int,default=4)
    p.add_argument('--exact-seconds',type=int,default=25)
    p.add_argument('--exact-order',choices=('source','clique'),default='source')
    p.add_argument('--seed',type=int,default=282003)
    p.add_argument('--seed-pool',type=Path,nargs='*',default=[],help='Earlier search directories whose fully reduced candidates seed this run')
    p.add_argument('--workers',type=int,default=1,help='Independent full-reduction processes; screening and SMT remain sequential')
    args=p.parse_args()
    assert min(args.generations,args.beam,args.offspring,args.promote,args.exact_seconds)>0
    assert 0<=args.exact_finalists<=args.promote
    assert args.workers>0
    assert not (args.output/'report.json').exists(),'Choose a fresh output directory'
    rng=random.Random(args.seed);ev=UnifiedEvaluator(args.output,source_at(BASE))
    ev.exact_order=args.exact_order
    seeds=[BASE,ROOT/'results/register-local/d01c9264a0344463',
           ROOT/'results/register-facts/2eddb0cc492fb8ff',
           ROOT/'results/register-facts/23f0a3d9185b9e4c',
           ROOT/'results/fragments-zero/32d3f6d2eecb105a',
           ROOT/'results/pc-layout/7efbaa9d505034b3',
           ROOT/'results/register-kernels/73a001ca8bf2cf7b']
    for directory in args.seed_pool:
        for path in sorted(directory.glob('*/candidate.json')):
            if 'final_states' in json.loads(path.read_text()):seeds.append(path.parent.resolve())
    initial=[];rejections=[];history=[]
    for old in seeds:
        c=json.loads((old/'candidate.json').read_text())
        c.setdefault('lowering',{});c.setdefault('fragments',{})
        c.setdefault('register_order',c['registers'])
        c['source']=source_at(old)
        if c['lowering'].get('consume_lines')==[60,65,68,69,71]:
            c['lowering'].pop('consume_lines');c['lowering']['consume']=['lcm','num','c']
        spec=configuration(c);spec.update(parent=None,mutation=['seed'],generation=0)
        result=ev.screen(spec)
        if old==ROOT/'results/pc-layout/7efbaa9d505034b3':
            path=ROOT/'results/pc-exact/7efbaa9d505034b3'
            ev.inherit(result,old,path/'quotient-291.tm',path/'quotient-291.certificate.json')
        else:ev.inherit(result,old)
        ev.full(result);initial.append(result)
    beam=select(initial,args.beam,'final_states')
    (args.output/'initial-beam.json').write_text(json.dumps([dict(key=c['key'],states=c['final_states'],niche=niche(c)) for c in beam],indent=2)+'\n')
    for generation in range(1,args.generations+1):
        children=[];attempts=0;oldkeys=set(ev.cache)
        while len(children)<args.offspring and attempts<args.offspring*12:
            index,kind=mutation_slot(attempts,len(beam));parent=beam[index];attempts+=1
            try:
                spec=mutate(parent,rng,kind)
                if spec is None:continue
                spec['generation']=generation
                c=ev.screen(spec)
            except (AssertionError,ValueError,KeyError,StopIteration,NotImplementedError) as error:
                rejections.append(dict(generation=generation,parent=parent['key'],kind=kind,error=str(error)))
                continue
            if c['key'] in oldkeys or any(x['key']==c['key'] for x in children):continue
            children.append(c)
        promoted=select(children,args.promote,'screen_states')
        full_batch(ev,promoted,args.workers)
        pool=beam+promoted
        incumbent=min(c['final_states'] for c in pool)
        # Exact solving happens before selection, including diverse candidates
        # whose macros or greedy quotient would otherwise look less promising.
        finalists=select(promoted,args.exact_finalists,'final_states')
        for c in finalists:
            target=min(c['final_states']-1,incumbent+2)
            for _ in range(5):
                status=ev.solve(c,target,args.exact_seconds)
                if status!='sat':break
                incumbent=min(incumbent,c['final_states']);target=c['final_states']-1
        beam=select(pool,args.beam,'final_states')
        record=dict(generation=generation,attempts=attempts,screened=len(children),promoted=len(promoted),
                    parents=sorted({c['parent'] for c in children}),
                    survivors=[dict(key=c['key'],states=c['final_states'],niche=niche(c),parent=c.get('parent')) for c in beam])
        history.append(record)
        (args.output/f'generation-{generation}.json').write_text(json.dumps(record,indent=2)+'\n')
        (args.output/'rejections.json').write_text(json.dumps(rejections,indent=2)+'\n')
        print('generation',json.dumps(record),flush=True)
    best=min(ev.cache.values(),key=lambda c:c.get('final_states',float('inf')))
    settings={k:[str(p) for p in v] if k=='seed_pool' else str(v) if isinstance(v,Path) else v for k,v in vars(args).items()}
    report=dict(settings=settings,
                generations=history,screened=len(ev.cache),fully_reduced=sum('final_states' in c for c in ev.cache.values()),
                rejected=len(rejections),best_states=best['final_states'],best_candidate=best['key'],
                ranking='Every survivor has a complete reduction; SMT updates precede selection. Counts are feasible upper bounds.',
                formal_scope='Experimental full machine; verified headline remains machine295_correct.')
    (args.output/'report.json').write_text(json.dumps(report,indent=2)+'\n')
    for c in ev.cache.values():
        if 'final_states' not in c:
            for name in ('compiled.tm','macro.tm','macros.json','phases.json'):(c['directory']/name).unlink(missing_ok=True)
    print('result',json.dumps(report),flush=True)


if __name__=='__main__':main()
