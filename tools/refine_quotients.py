"""Try a fixed quotient target across saved layouts with clique-first ordering.

Writes supplemental certificates separately from historical beam artifacts.
Identical tables and read masks are queried once, regardless of provenance.
"""
from pathlib import Path
import argparse
import concurrent.futures
import hashlib
import json
import subprocess
import time
from solve_quotient import clique_first, quotient_problem, encode, decode_model
from tm_reduce import load, dump


def solve(job,output,target,seconds):
    base=Path(job['base']);d=output/job['key'][:16];d.mkdir(parents=True,exist_ok=True)
    rows=load(base/'macro.tm');cert=json.loads((base/'reduction.json').read_text())
    assert hashlib.sha256((base/'macro.tm').read_bytes()).hexdigest()==job['macro_sha256']
    assert cert['possible']==job['possible']
    ordered,clique=clique_first(rows,cert['possible'])
    problem=quotient_problem(ordered,cert['possible'])
    prefix=d/f'quotient-{target}'
    prefix.with_suffix('.smt2').write_text(encode(problem,target,int(seconds*1000)))
    start=time.monotonic()
    result=subprocess.run(['z3',str(prefix.with_suffix('.smt2'))],capture_output=True,text=True,timeout=seconds+15)
    prefix.with_suffix('.solver.txt').write_text(result.stdout+result.stderr)
    status=result.stdout.splitlines()[0] if result.stdout else 'error'
    record={k:v for k,v in job.items() if k!='possible'}
    record.update(status=status,seconds=time.monotonic()-start,target=target,incompatible_clique=clique)
    if status=='sat':
        reduced,mapping=decode_model(rows,cert['possible'],problem,result.stdout)
        assert len(reduced)<=target
        dump(reduced,prefix.with_suffix('.tm'));record['states']=len(reduced)
        certificate=dict(cert,mapping=mapping,target_states=target,solver='z3')
        certificate.pop('merge_seed',None)
        prefix.with_suffix('.certificate.json').write_text(json.dumps(certificate,indent=2)+'\n')
    (d/'report.json').write_text(json.dumps(record,indent=2)+'\n')
    print(json.dumps({k:record[k] for k in ('key','status','seconds','target')}),flush=True)
    return record


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--pools',type=Path,nargs='+',required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--target',type=int,default=278)
    p.add_argument('--timeout',type=float,default=30)
    p.add_argument('--workers',type=int,default=3)
    p.add_argument('--limit',type=int,default=100)
    p.add_argument('--max-states',type=int,default=288)
    args=p.parse_args();assert not args.output.exists(),'Choose a fresh output directory'
    args.output.mkdir(parents=True);candidates=[]
    for pool in args.pools:
        for path in pool.glob('*/candidate.json'):
            c=json.loads(path.read_text())
            if c.get('final_states',10**9)>args.max_states:continue
            d=path.parent;cert=json.loads((d/'reduction.json').read_text())
            digest=hashlib.sha256((d/'macro.tm').read_bytes()).hexdigest()
            identity=hashlib.sha256(json.dumps([digest,cert['possible']],sort_keys=True).encode()).hexdigest()
            candidates.append(dict(base=str(d),key=c['key'],macro_sha256=digest,
                                   possible=cert['possible'],identity=identity,states_before=c['final_states']))
    unique={}
    for c in sorted(candidates,key=lambda c:(c['states_before'],c['key'])):unique.setdefault(c['identity'],c)
    jobs=list(unique.values())[:args.limit];records=[]
    settings={k:[str(x) for x in v] if k=='pools' else str(v) if isinstance(v,Path) else v for k,v in vars(args).items()}
    with concurrent.futures.ProcessPoolExecutor(max_workers=args.workers) as pool:
        for offset in range(0,len(jobs),args.workers):
            futures=[pool.submit(solve,c,args.output,args.target,args.timeout) for c in jobs[offset:offset+args.workers]]
            records.extend(f.result() for f in futures)
            report=dict(settings=settings,available_problems=len(unique),queries=records,
                        scope='Checked SAT mappings; UNSAT only concerns the fixed table and read masks, not all equivalent machines.')
            (args.output/'report.json').write_text(json.dumps(report,indent=2)+'\n')
            if any(c['status']=='sat' for c in records):break


if __name__=='__main__':main()
