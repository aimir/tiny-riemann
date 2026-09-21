"""Generate a progressing register-program bisimulation, checked by Lean.

Partition analysis discovers zero/equality facts at paired branch boundaries.
It is only a proof search: explicit instruction equations, finite executions,
and all inductive cases are emitted as ordinary kernel-checkable Lean proofs.
"""
from collections import deque
from generate_optimized278 import *

ZERO = (0,)*19
ONE = ZERO[:-1]+(1,)
def add(x,y): return tuple(a+b for a,b in zip(x,y))
def scale(x,k): return tuple(a*k for a in x)
def vector(i): return ZERO if i == -1 else tuple(int(k==i) for k in range(19))
def canonical(exprs):
    seen={ZERO:-1}
    return tuple(seen.setdefault(x,i) for i,x in enumerate(exprs))
def join(a,b):
    return tuple(-1 if a[i]==b[i]==-1 else next(j for j in range(i+1)
        if a[j]==a[i] and b[j]==b[i]) for i in range(18))
def evaluate(g,pc,vs):
    path=[];vs=list(vs);cap=0
    while True:
        op,arg,ss=g[pc];path.append(pc)
        if op in ('decrement','halt'): return pc,vs,cap,path
        if op=='increment':vs[arg]=add(vs[arg],ONE)
        if op=='initialize':cap+=1
        if op=='transfer':
            s,*ts=arg;v=vs[s];vs[s]=ZERO
            for t in ts:vs[t]=add(vs[t],v)
        pc=ss[0];assert len(path)<200

def discover(graphs):
    inv={(0,0):(-1,)*18};todo=deque(inv)
    while todo:
        pair=todo.popleft();rel=inv[pair]
        res=[evaluate(g,p,[vector(i) for i in rel[9*k:9*k+9]]) for k,(g,p) in enumerate(zip(graphs,pair))]
        (a,va,ca,pa),(b,vb,cb,pb)=res
        opa,arga,sa=graphs[0][a];opb,argb,sb=graphs[1][b]
        assert opa==opb
        if opa=='halt':continue
        assert va[arga]==vb[argb],(pair,va[arga],vb[argb])
        for case in (0,1):
            vv=[va[:],vb[:]]
            if case==0:
                cond=va[arga]
                if cond[-1]>0 and min(cond)>=0:continue
                if cond!=ZERO and min(cond)>=0:
                    ids=[i for i,z in enumerate(cond[:-1]) if z>0]
                    vv=[[tuple(0 if k in ids else z for k,z in enumerate(x)) for x in v] for v in vv]
                vv[0][arga]=ZERO;vv[1][argb]=ZERO
            else:
                if va[arga]==ZERO:continue
                vv[0][arga]=add(va[arga],scale(ONE,-1));vv[1][argb]=add(vb[argb],scale(ONE,-1))
            nxt=sa[case],sb[case];nr=canonical(vv[0]+vv[1]);nr=join(inv[nxt],nr) if nxt in inv else nr
            if nr!=inv.get(nxt):inv[nxt]=nr;todo.append(nxt)
    return inv

OLD='RiemannMachineVerification'
def fv(i):return '0' if i==-1 else f'(v {i})'
def vals(vs):return '(values '+ ' '.join(vs)+')'
def config(pc,vs,cap):return f'⟨{"none" if pc is None else "some "+fin(pc)}, {vals(vs)}, {cap}⟩'
def plus(a,b):return b if a=='0' else a if b=='0' else f'({a} + {b})'
def symbolic(g,path,vs,case):
    vs=list(vs);cap=0;cond=None
    for p in path:
        op,arg,ss=g[p]
        if op=='increment':vs[arg]=plus(vs[arg],'1')
        if op=='initialize':cap+=1
        if op=='transfer':
            s,*ts=arg;v=vs[s];vs[s]='0'
            for t in ts:vs[t]=plus(vs[t],v)
        if op=='decrement':
            cond=vs[arg];vs[arg]=f'({vs[arg]} - 1)' if case else '0'
            pc=ss[case]
        elif op=='halt':pc=None
        else:pc=ss[0]
    return pc,vs,cap,cond

SIMPS='values, transferValues, List.foldl_cons, List.foldl_nil, Function.update_apply, Fin.mk.injEq, Nat.reduceEqDiff, Nat.zero_add, Nat.add_zero, Nat.zero_sub, ↓reduceIte'

def generate():
    old,new=machines();graphs=[graph(old),graph(new)];inv=discover(graphs);pairs=list(inv);ids={p:i for i,p in enumerate(pairs)}
    decl=header(OLD+'.RegisterProgram',PREFIX+'.RegisterProgram',OLD+'.ProgressingBisimulation',OLD+'.RegisterExecution',PREFIX+'.RegisterExecution')
    decl+='def values (a b c d e f g h i : ℕ) (r : Fin 9) : ℕ :=\n  match r.val with\n'
    decl+=''.join(f'  | {k if k<8 else "_"} => {v}\n' for k,v in enumerate('abcdefghi'))+'\n'
    decl+='inductive Boundary : '+OLD+'.RegisterConfiguration → RegisterConfiguration → Prop\n'
    for i,pair in enumerate(pairs):
        rel=inv[pair]
        decl+=f'  | block{i} (v : Fin 18 → ℕ) (a b : ℕ) :\n      Boundary {config(pair[0],list(map(fv,rel[:9])),"a")}\n        {config(pair[1],list(map(fv,rel[9:])),"b")}\n'
    decl+=f'  | halted (a : {OLD}.RegisterConfiguration) (b : RegisterConfiguration)\n      (ha : a.pc = none) (hb : b.pc = none) : Boundary a b\n\n'
    decl+="""theorem Boundary.congr_values
    {pa : Option RiemannMachineVerification.ProgramCounter} {pb : Option ProgramCounter}
    {va va' vb vb' : Fin 9 → ℕ} {a b : ℕ}
    (ha : va = va') (hb : vb = vb')
    (h : Boundary ⟨pa, va', a⟩ ⟨pb, vb', b⟩) :
    Boundary ⟨pa, va, a⟩ ⟨pb, vb, b⟩ := by
  cases ha; cases hb; exact h

"""
    used=[set(),set()];records=[]
    for pair in pairs:
        rel=inv[pair];paths=[evaluate(g,p,[vector(i) for i in rel[9*k:9*k+9]])[3] for k,(g,p) in enumerate(zip(graphs,pair))]
        for k in (0,1):used[k].update(paths[k])
        records.append((pair,paths))
    for k,g in enumerate(graphs):
        program=OLD+'.macroProgram' if k==0 else 'macroProgram'
        for pc in sorted(used[k]):decl+=f'theorem instruction{k}_{pc} : {program} {fin(pc)} =\n    {instruction(g[pc])} := rfl\n\n'
    write('RefinementData',decl)
    imports=[]
    for i,(pair,paths) in enumerate(records):
        rel=inv[pair];init=[list(map(fv,rel[:9])),list(map(fv,rel[9:]))]
        kind=graphs[0][paths[0][-1]][0]
        out=header(PREFIX+'.RefinementData')
        outs={}
        for case in ((0,1) if kind=='decrement' else (0,)):
            results=[]
            for k in (0,1):
                pc,vs,cap,cond=symbolic(graphs[k],paths[k],init[k],case)
                program=OLD+'.macroProgram' if k==0 else 'macroProgram'
                ns=OLD+'.' if k==0 else ''
                guard=f' (h : {cond} {"≠" if case else "="} 0)' if cond else ''
                out+=f'theorem path{i}_{case}_{k} (v : Fin 18 → ℕ) (c : ℕ){guard} :\n'
                out+=f'    trajectory ({ns}registerStep {program}) {config(pair[k],init[k],"c")} {len(paths[k])} =\n      {config(pc,vs,f"(c + {cap})")} := by\n'
                simplist=f'trajectory, {ns}registerStep, '+', '.join(f'instruction{k}_{p}' for p in sorted(set(paths[k])))+', '+SIMPS.replace('transferValues',ns+'transferValues')+(', h' if cond else '')
                out+='  first | omega | skip\n'
                out+='  all_goals\n    simp only ['+simplist+']\n'
                out+=f'    all_goals\n      apply {ns}registerConfiguration_ext\n      · rfl\n      · funext r; fin_cases r <;> simp [values, Function.update_apply'+(', h' if cond else '')+'] <;> omega\n      · dsimp only <;> omega\n\n'
                results.append((pc,vs,cap,cond))
            outs[case]=results
        out+=f'theorem advance{i} (v : Fin 18 → ℕ) (a b : ℕ) :\n    ∃ i j, 0 < i ∧ 0 < j ∧ Boundary\n      (trajectory ({OLD}.registerStep {OLD}.macroProgram) {config(pair[0],init[0],"a")} i)\n      (trajectory (registerStep macroProgram) {config(pair[1],init[1],"b")} j) := by\n'
        if kind=='decrement':
            c0,c1=outs[0][0][3],outs[0][1][3]
            out+=f'  have hc : {c0} = {c1} := by omega\n  by_cases h : {c0} = 0\n'
        for case,rs in outs.items():
            pad='    ' if kind=='decrement' else '  '
            if kind=='decrement':out+='  · have hnew : '+rs[1][3]+(' ≠' if case else ' =')+' 0 := by omega\n'
            nxt=(rs[0][0],rs[1][0])
            if kind=='decrement' and nxt not in ids:
                out+=pad+'exfalso; omega\n';continue
            out+=pad+f'refine ⟨{len(paths[0])}, {len(paths[1])}, by decide, by decide, ?_⟩\n'
            out+=pad+f'rw [path{i}_{case}_0 v a'+(' h' if kind=='decrement' else '')+f', path{i}_{case}_1 v b'+(' hnew' if kind=='decrement' else '')+']\n'
            if kind=='halt':out+=pad+'exact Boundary.halted _ _ rfl rfl\n';continue
            nr=inv[nxt];vsall=rs[0][1]+rs[1][1]
            out+=pad+'let w : Fin 18 → ℕ := !['+', '.join(vsall)+']\n'
            for k in (0,1):
                expected=[('0' if x==-1 else f'(w {x})') for x in nr[9*k:9*k+9]]
                out+=pad+f'have hv{k} : {vals(rs[k][1])} = {vals(expected)} := by\n'
                out+=pad+'  funext r; fin_cases r <;> simp [values, w] <;> omega\n'
            out+=pad+f'exact Boundary.congr_values hv0 hv1 (Boundary.block{ids[nxt]} w _ _)\n'
        write('RefinementBlock'+str(i),out)
        imports.append(PREFIX+'.RefinementBlock'+str(i))
    out=header(*imports)
    out+=f'theorem boundary_advance (a : {OLD}.RegisterConfiguration) (b : RegisterConfiguration)\n    (h : Boundary a b) : ∃ i j, 0 < i ∧ 0 < j ∧ Boundary\n      (trajectory ({OLD}.registerStep {OLD}.macroProgram) a i)\n      (trajectory (registerStep macroProgram) b j) := by\n  cases h with\n'
    for i in range(len(pairs)):out+=f'  | block{i} v a b => exact advance{i} v a b\n'
    out+='  | halted a b ha hb =>\n    refine ⟨1, 1, by decide, by decide, ?_⟩\n    simpa only [trajectory, '+OLD+'.registerStep_halted _ _ ha, registerStep_halted _ _ hb] using Boundary.halted a b ha hb\n\n'
    out+=f'theorem macro_iff_original : RegisterHalts macroProgram ↔ {OLD}.RegisterHalts {OLD}.macroProgram := by\n  symm\n  apply eventually_iff_of_progressing_bisimulation\n    ({OLD}.registerStep {OLD}.macroProgram) (registerStep macroProgram)\n    (fun s => s.pc = none) (fun s => s.pc = none)\n    {OLD}.initialRegisterConfiguration initialRegisterConfiguration Boundary\n  · have hv : values 0 0 0 0 0 0 0 0 0 = (fun _ => 0) := by\n      funext r; fin_cases r <;> rfl\n    change Boundary ⟨some ⟨0, by decide⟩, (fun _ => 0), 0⟩ ⟨some ⟨0, by decide⟩, (fun _ => 0), 0⟩\n    simpa only [hv] using Boundary.block0 (fun _ => 0) 0 0\n  · intro a h; simpa only [{OLD}.registerStep_halted _ _ h] using h\n  · intro b h; simpa only [registerStep_halted _ _ h] using h\n  · intro a b h; cases h <;> simp_all\n  · exact boundary_advance\n'
    write('RegisterRefinement',out)
    print('Generated',len(pairs),'progressing boundary proofs.')

if __name__=='__main__':generate()
