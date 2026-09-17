"""Sound blank-tape reachability abstraction and compatible-state merging.

The abstraction remembers a finite tape window centered on the head. When
the head moves, either bit is permitted at the newly exposed boundary. This
overapproximates the real tape, so an absent (state, read-bit) is unreachable.
"""
from collections import deque
from pathlib import Path
import argparse
import json


def load(path):
    rows = {}
    for line in Path(path).read_text().splitlines():
        name, eq, w0, m0, q0, w1, m1, q1 = line.split()
        assert eq == '=' and name not in rows
        rows[name] = ((int(w0), 1 if m0=='R' else -1, q0),
                      (int(w1), 1 if m1=='R' else -1, q1))
    assert '!ENTRY' in rows
    assert all(q in rows or q=='HALT' for r in rows.values() for w,m,q in r)
    return rows


def abstract_reachable(rows, radius, left=None, right=None, allowed=None):
    names = list(rows)
    index = {s:i for i,s in enumerate(names)}
    left = radius if left is None else left
    right = radius if right is None else right
    bits = left+right+1
    mask = (1<<bits)-1
    center = 1<<left
    transitions = [[(w,m,index.get(q,-1)) for w,m,q in rows[s]] for s in names]
    allowed_bits = [allowed[s] if allowed is not None else 3 for s in names]
    queue = deque([(index['!ENTRY']<<bits)])
    seen = {queue[0]}
    possible = [0]*len(names)
    while queue:
        cfg = queue.popleft()
        state, window = cfg>>bits, cfg&mask
        bit = (window>>left)&1
        if not (allowed_bits[state] & (1<<bit)):continue
        possible[state] |= 1<<bit
        w,m,q = transitions[state][bit]
        if q<0:continue
        window = (window&~center)|(w<<left)
        if m==1:
            window >>= 1
            a = (q<<bits)|window
            b = a|(1<<(bits-1))
        else:
            window = (window<<1)&mask
            a = (q<<bits)|window
            b = a|1
        for successor in (a,b):
            if successor not in seen:
                seen.add(successor);queue.append(successor)
    return dict(zip(names,possible)),seen


def combined_reachable(rows, windows):
    allowed={s:3 for s in rows}
    trace=[]
    while True:
        before=allowed.copy()
        for left,right in windows:
            possible,_=abstract_reachable(rows,0,left,right,allowed)
            allowed={s:allowed[s]&possible[s] for s in rows}
            trace.append({'left':left,'right':right,'possible':allowed.copy()})
        if allowed==before:break
    return allowed,trace


def merge(rows, possible):
    """Greedy congruence closure, rejecting every incompatible trial merge."""
    names = list(rows)
    parent = {s:s for s in names+['HALT']}
    def root(s, p):
        while p[s]!=s:s=p[s]
        return s
    def attempt(a,b):
        trial=parent.copy()
        pending=[(a,b)]
        while pending:
            x,y=pending.pop();x=root(x,trial);y=root(y,trial)
            if x==y:continue
            if 'HALT' in (x,y):return None
            trial[y]=x
            # All specified transitions of the merged equivalence class
            # must agree on write/move and lead into the same next class.
            members=[s for s in names if root(s,trial)==x]
            for bit in (0,1):
                edges=[rows[s][bit] for s in members if possible[s]&(1<<bit)]
                if not edges:continue
                w,m,q=edges[0]
                for w2,m2,q2 in edges[1:]:
                    if (w,m)!=(w2,m2):return None
                    pending.append((q,q2))
        return trial
    for i,a in enumerate(names):
        if possible[a]==0:continue
        for b in names[:i]:
            if possible[b]==0 or root(a,parent)==root(b,parent):continue
            trial=attempt(a,b)
            if trial is not None:parent=trial
    mapping={s:root(s,parent) for s in names}
    entry=mapping['!ENTRY']
    mapping={s:('!ENTRY' if q==entry else q) for s,q in mapping.items()}
    mapping['HALT']='HALT'
    output={}
    for s in names:
        if not possible[s]:continue
        out=output.setdefault(mapping[s],[None,None])
        for bit in (0,1):
            if possible[s]&(1<<bit):
                w,m,q=rows[s][bit]
                edge=(w,m,mapping[q])
                assert out[bit] is None or out[bit]==edge
                out[bit]=edge
    # Arbitrary completion of unreachable inputs. No new states needed.
    for s,row in output.items():
        for bit in (0,1):
            if row[bit] is None:row[bit]=row[1-bit] or (0,1,s)
    return output,mapping


def fast_merge(rows, possible, seed=0):
    """Same certificate-producing merge using per-class transition constraints."""
    import random
    names=[s for s in rows if possible[s]]
    if seed:random.Random(seed).shuffle(names)
    parent={s:s for s in names+['HALT']}
    constraints={s:tuple(rows[s][b] if possible[s]&(1<<b) else None for b in (0,1)) for s in names}
    def root(s,p):
        while p[s]!=s:s=p[s]
        return s
    for i,a in enumerate(names):
        for b in names[:i]:
            if root(a,parent)==root(b,parent):continue
            trial=parent.copy();edges=constraints.copy();pending=[(a,b)]
            valid=True
            while pending and valid:
                x,y=pending.pop();x=root(x,trial);y=root(y,trial)
                if x==y:continue
                if 'HALT' in (x,y):valid=False;break
                combined=[]
                for ex,ey in zip(edges[x],edges[y]):
                    if ex is None:combined.append(ey)
                    elif ey is None:combined.append(ex)
                    elif ex[:2]!=ey[:2]:valid=False;break
                    else:combined.append(ex);pending.append((ex[2],ey[2]))
                if valid:
                    trial[y]=x;edges[x]=tuple(combined);del edges[y]
            if valid:parent,constraints=trial,edges
    mapping={s:root(s,parent) for s in names}
    entry=mapping['!ENTRY']
    mapping={s:('!ENTRY' if q==entry else q) for s,q in mapping.items()}
    mapping.update({s:'HALT' for s in rows if not possible[s]})
    mapping['HALT']='HALT'
    output={}
    for q,edges in constraints.items():
        name=mapping[q]
        result=[(e[0],e[1],mapping[e[2]]) if e else None for e in edges]
        for b in (0,1):
            if result[b] is None:result[b]=result[1-b] or (0,1,name)
        output[name]=result
    return output,mapping


def dump(rows,path):
    def fmt(e):
        w,m,q=e
        return f'{w} {"R" if m==1 else "L"} {q}'
    Path(path).write_text(''.join(f'{s} = {fmt(row[0])} {fmt(row[1])}\n' for s,row in sorted(rows.items())))


def main():
    p=argparse.ArgumentParser()
    p.add_argument('machine',type=Path)
    p.add_argument('--radius',type=int,default=3)
    p.add_argument('--left',type=int)
    p.add_argument('--right',type=int)
    p.add_argument('--combined',action='store_true')
    p.add_argument('--merge-seed',type=int,default=0)
    p.add_argument('--output',type=Path)
    args=p.parse_args()
    rows=load(args.machine)
    if args.combined:
        possible,trace=combined_reachable(rows,[(3,3),(12,2),(2,12),(7,7)])
        abstract=[]
    else:
        possible,abstract=abstract_reachable(rows,args.radius,args.left,args.right)
        trace=None
    print(json.dumps({'states':len(rows),'abstract_configurations':len(abstract),
                      'unreachable_states':sum(v==0 for v in possible.values()),
                      'single_symbol_states':sum(v in (1,2) for v in possible.values())}),flush=True)
    output,mapping=fast_merge(rows,possible,args.merge_seed)
    print('Reduced:',len(output),flush=True)
    if args.output:
        dump(output,args.output)
        args.output.with_suffix('.certificate.json').write_text(json.dumps({'radius':args.radius,'left':args.left,'right':args.right,'trace':trace,'mapping':mapping,'possible':possible},indent=2))


if __name__=='__main__':main()
