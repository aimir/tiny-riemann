"""Use certified reachable tape contexts to shorten additional three-step paths."""
from pathlib import Path
import argparse
import json
from tm_reduce import load,abstract_reachable,fast_merge,dump


def contextual_macros(rows,allowed):
    possible,seen=abstract_reachable(rows,0,3,3,allowed)
    names=list(rows);contexts={q:set() for q in rows}
    for config in seen:
        index,window=config>>7,config&127
        q=names[index]
        if allowed[q]&(1<<((window>>3)&1)):
            contexts[q].add((window>>1)&31)
    rewritten={q:list(row) for q,row in rows.items()};lengths={}
    for q,row in rows.items():
        for bit in (0,1):
            outcomes=set();valid=True
            windows=[w for w in contexts[q] if (w>>2)&1==bit]
            if not windows:continue
            for window in windows:
                tape={i-2:(window>>i)&1 for i in range(5)}
                initial=tape.copy();head=0;state=q
                for _ in range(3):
                    if state=='HALT':valid=False;break
                    w,d,state=rows[state][tape[head]]
                    tape[head]=w;head+=d
                if not valid:break
                if head not in (-1,1) or any(tape[p]!=initial[p] for p in initial if p):
                    valid=False;break
                outcomes.add((tape[0],head,state))
            if valid and len(outcomes)==1:
                edge=next(iter(outcomes))
                if edge!=tuple(row[bit]):
                    rewritten[q][bit]=edge;lengths[f'{q} {bit}']=3
    return rewritten,lengths


def main():
    p=argparse.ArgumentParser()
    p.add_argument('input',type=Path)
    p.add_argument('certificate',type=Path)
    p.add_argument('--output',required=True,type=Path)
    p.add_argument('--seeds',type=int,default=150)
    args=p.parse_args()
    rows=load(args.input);cert=json.loads(args.certificate.read_text())
    rewritten,lengths=contextual_macros(rows,cert['possible'])
    print('Context-sensitive rewrites:',len(lengths),flush=True)
    cert['context_macros']={'left':3,'right':3,'lengths':lengths}
    best=100000
    for seed in range(args.seeds):
        output,mapping=fast_merge(rewritten,cert['possible'],seed)
        if len(output)<best:
            best=len(output)
            print(seed,best,flush=True)
            cert['mapping']=mapping;cert['merge_seed']=seed
            dump(output,args.output)
            args.output.with_suffix('.certificate.json').write_text(json.dumps(cert,indent=2))


if __name__=='__main__':main()
