"""Exact all-input simplification of short Turing transition sequences."""
from tm_reduce import load,dump,fast_merge
from pathlib import Path
import argparse
import json


def macro(rows,q,read,length):
    # A path tracks original cell values separately from subsequent writes.
    paths=[(q,0,{0:read},{})]
    for step in range(length):
        following=[]
        for state,head,initial,written in paths:
            if state=='HALT':return None
            values=[written[head]] if head in written else ([initial[head]] if head in initial else [0,1])
            for bit in values:
                origin=initial.copy();origin.setdefault(head,bit)
                changed=written.copy()
                w,move,target=rows[state][bit]
                changed[head]=w
                newhead=head+move
                if abs(newhead)>length-step:return None
                following.append((target,newhead,origin,changed))
        paths=following
    outcomes=set()
    for state,head,initial,written in paths:
        if head not in (-1,1):return None
        if any(pos!=0 and value!=initial[pos] for pos,value in written.items()):return None
        outcomes.add((written.get(0,read),head,state))
    return next(iter(outcomes)) if len(outcomes)==1 else None


def reachable(rows):
    seen=set();todo=['!ENTRY']
    while todo:
        q=todo.pop()
        if q=='HALT' or q in seen:continue
        seen.add(q)
        todo.extend(edge[2] for edge in rows[q])
    return {s:row for s,row in rows.items() if s in seen}


def bisimulation(rows):
    blocks={q:0 for q in rows}
    while True:
        signatures={};next_blocks={}
        for q,row in rows.items():
            sig=tuple((w,m,blocks.get(r,-1)) for w,m,r in row)
            next_blocks[q]=signatures.setdefault(sig,len(signatures))
        if next_blocks==blocks:break
        blocks=next_blocks
    reps={}
    for q in ['!ENTRY']+list(rows):reps.setdefault(blocks[q],q)
    mapping={q:reps[blocks[q]] for q in rows};mapping['HALT']='HALT'
    output={q:[(w,m,mapping[r]) for w,m,r in rows[q]] for q in reps.values()}
    return output,mapping


def simplify(rows):
    rounds=[]
    for iteration in range(12):
        rewritten={s:list(row) for s,row in rows.items()};used={}
        for s,row in rows.items():
            for b in (0,1):
                for length in (3,5,7):
                    edge=macro(rows,s,b,length)
                    if edge is not None and edge!=tuple(row[b]):
                        rewritten[s][b]=edge;used[f'{s} {b}']=length
                        break
        if not used:break
        live=reachable(rewritten)
        minimized,mapping=bisimulation(live)
        if len(minimized)>=len(rows):break
        rounds.append({'input':rows,'lengths':used,'rewritten':live,'mapping':mapping,'output':minimized})
        rows=minimized
    return rows,rounds


def main():
    p=argparse.ArgumentParser()
    p.add_argument('machine',type=Path)
    p.add_argument('--output',type=Path,required=True)
    args=p.parse_args()
    rows,rounds=simplify(load(args.machine))
    for iteration,r in enumerate(rounds):
        print(iteration,len(r['input']),len(r['rewritten']),len(r['output']),'rewrites',len(r['lengths']),flush=True)
    dump(rows,args.output)
    args.output.with_suffix('.macros.json').write_text(json.dumps({'rounds':rounds},indent=2))


if __name__=='__main__':main()
