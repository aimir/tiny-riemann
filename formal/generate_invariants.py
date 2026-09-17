"""Emit explicit Lean proofs of inductive tape invariants using decision diagrams.

Python proposes the diagrams and Boolean identities. Each identity is proved
using Shannon expansion and previously proved identities, without a native
evaluation oracle. Lean also checks every concrete transition against the table.
"""
from pathlib import Path
from functools import cache
import sys, json

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT.parent/'tools'))
from tm_reduce import load, abstract_reachable

def boolean(x): return 'true' if x else 'false'
def integer(x): return f'({x})' if x < 0 else str(x)

class Certificate:
    def __init__(self, number):
        self.prefix=f'inv{number}_'
        self.nodes=[None,None]; self.unique={}; self.claims={}; self.shifts={}
        self.lines=['import RiemannMachineVerification.BooleanCertificate',
                    'import RiemannMachineVerification.Machine342', '',
                    'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
                    'namespace RiemannMachineVerification', '',
                    f'def {self.node(0)} (_ : ℤ → Bool) : Bool := false',
                    f'def {self.node(1)} (_ : ℤ → Bool) : Bool := true', '']
    def node(self,i):return f'{self.prefix}node{i}'
    def term(self,i,t='t'):return f'({self.node(i)} {t})'
    def var(self,i):return self.nodes[i][0] if i>1 else -1000000
    def make(self,v,lo,hi):
        if lo==hi:return lo
        key=(v,lo,hi)
        if key in self.unique:return self.unique[key]
        i=len(self.nodes);self.nodes.append(key);self.unique[key]=i
        self.lines += [f'def {self.node(i)} (t : ℤ → Bool) : Bool :=',
                       f'  if t {integer(v)} then {self.node(hi)} t else {self.node(lo)} t', '']
        return i
    def parts(self,i,v):
        return self.nodes[i][1:] if self.var(i)==v else (i,i)
    def decomposition(self,i,v):
        if self.var(i)==v:return '(by rfl)'
        return f'(bool_select_same (t {integer(v)}) {self.term(i)})'
    def apply(self,op,a,b):
        key=(op,a,b)
        if key in self.claims:return self.claims[key]
        proof=None
        if a==0:r=0;proof='rfl'
        elif op=='and' and b==0:r=0;proof=f'exact bool_and_false_right {self.term(a)}'
        elif op=='and' and a==1:r=b;proof='rfl'
        elif op=='and' and b==1:r=a;proof=f'exact bool_and_true_right {self.term(a)}'
        elif op=='and' and a==b:r=a;proof=f'exact bool_and_self {self.term(a)}'
        elif op=='andNot' and b==0:r=a;proof=f'exact bool_and_not_false {self.term(a)}'
        elif op=='andNot' and b==1:r=0;proof=f'exact bool_and_not_true {self.term(a)}'
        elif op=='andNot' and a==b:r=0;proof=f'exact bool_and_not_self {self.term(a)}'
        if proof is None:
            v=max(self.var(a),self.var(b));al,ah=self.parts(a,v);bl,bh=self.parts(b,v)
            rl,pl=self.apply(op,al,bl);rh,ph=self.apply(op,ah,bh)
            r=self.make(v,rl,rh)
            operator='(fun a b => a && b)' if op=='and' else '(fun a b => a && !b)'
            terms=' '.join(self.term(i) for i in (a,b,r,al,ah,bl,bh,rl,rh))
            proof=f'exact bool_binary_split {operator} (t {integer(v)}) {terms}\n' + \
                  f'    {self.decomposition(a,v)} {self.decomposition(b,v)} {self.decomposition(r,v)}\n' + \
                  f'    ({pl} t) ({ph} t)'
        name=f'{self.prefix}claim{len(self.claims)}'
        operator='&&' if op=='and' else '&& !'
        self.lines += [f'theorem {name} (t : ℤ → Bool) :',
                       f'    {self.term(r)} = ({self.term(a)} {operator} {self.term(b)}) := by',
                       '  '+proof, '']
        self.claims[key]=(r,name)
        return r,name
    def shift(self,a,right,write):
        key=(a,right,write)
        if key in self.shifts:return self.shifts[key]
        d=1 if right else -1
        shifted=f'(shiftInput {boolean(right)} {boolean(write)} t)'
        if a<2:r=a;proof='rfl'
        else:
            v,lo,hi=self.nodes[a]
            if v+d==0:
                r,p=self.shift(hi if write else lo,right,write)
                proof=f'exact {p} t'
            else:
                rl,pl=self.shift(lo,right,write);rh,ph=self.shift(hi,right,write)
                r=self.make(v+d,rl,rh)
                proof=f'exact bool_unary_split (t {integer(v+d)}) '+ \
                    ' '.join([self.term(a,shifted),self.term(r),
                              self.term(lo,shifted),self.term(hi,shifted),self.term(rl),self.term(rh)])+'\n'+ \
                    f'    (by rfl) {self.decomposition(r,v+d)} ({pl} t) ({ph} t)'
        name=f'{self.prefix}shift{len(self.shifts)}'
        self.lines += [f'theorem {name} (t : ℤ → Bool) :',
                       f'    {self.term(r)} = {self.term(a,shifted)} := by', '  '+proof, '']
        self.shifts[key]=(r,name)
        return r,name
    def mask(self,tag,values):
        name=self.prefix+tag
        self.lines += [f'def {name}Table : Array (Bool × Bool) := #[']
        self.lines += [f'  ({boolean(v&1)}, {boolean(v&2)})'+(',' if i<341 else '') for i,v in enumerate(values)]
        self.lines += [']', '', f'def {name} (q : Fin 342) (b : Bool) : Bool :=',
                       f"  let row := {name}Table[q.val]'(by simpa only [show {name}Table.size = 342 from rfl] using q.isLt)",
                       '  if b then row.2 else row.1', '']
        return name
    def finish(self,rows,roots,before,after,number):
        names=list(rows); ids={name:i for i,name in enumerate(names)}
        literals=[self.make(0,1,0),self.make(0,0,1)]
        edges={}; forbidden={}
        for i,q in enumerate(names):
            for b in (0,1):
                if not (before[q] & (1<<b)):continue
                cond,pc=self.apply('and',roots[i],literals[b])
                w,d,nxt=rows[q][b]
                if not (after[q] & (1<<b)):
                    assert cond==0
                    forbidden[i,b]=pc
                if nxt=='HALT':continue
                shifted,ps=self.shift(roots[ids[nxt]],d==1,w==1)
                empty,pe=self.apply('andNot',cond,shifted)
                assert empty==0,(q,b)
                edges[i,b]=(cond,pc,shifted,ps,pe,ids[nxt])
        beforeName=self.mask('before',[before[q] for q in names])
        afterName=self.mask('after',[after[q] for q in names])
        pred=self.prefix+'predicate'
        self.lines += [f'def {pred}Table : Array ((ℤ → Bool) → Bool) := #[']
        self.lines += [f'  {self.node(root)}'+(',' if i<341 else '') for i,root in enumerate(roots)]
        self.lines += [']', '', f'def {pred} (q : Fin 342) (t : ℤ → Bool) : Bool :=',
                       f"  ({pred}Table[q.val]'(by simpa only [show {pred}Table.size = 342 from rfl] using q.isLt)) t", '',
                       f'theorem {self.prefix}initial : {pred} machine342.entry (fun _ => false) = true := by rfl', '',
                       f'theorem {self.prefix}closed : ∀ (q : Fin 342) (t : ℤ → Bool) (b : Bool),',
                       f'    {beforeName} q b = true → t 0 = b → {pred} q t = true →',
                       '    match (machine342.transition q b).next with',
                       '    | none => True',
                       f'    | some q\' => {pred} q\' (shiftInput (machine342.transition q b).right',
                       '        (machine342.transition q b).write t) = true := by',
                       '  intro q t b hp hb hq', '  fin_cases q <;> cases b']
        for i,q in enumerate(names):
            for b in (0,1):
                if not(before[q] & (1<<b)):
                    self.lines += ['  · exact Bool.noConfusion (show false = true from hp)']
                elif rows[q][b][2]=='HALT':self.lines += ['  · trivial']
                else:
                    cond,pc,shifted,ps,pe,nxt=edges[i,b]
                    w,d,_=rows[q][b]
                    target=self.term(roots[nxt],f'(shiftInput {boolean(d==1)} {boolean(w)} t)')
                    self.lines += ['  · exact bool_transfer_true '+ ' '.join(self.term(v) for v in (roots[i],literals[b],cond,shifted))+' '+target,
                                   '      hq (by simp ['+self.node(literals[b])+', '+self.node(0)+', '+self.node(1)+', hb])',
                                   f'      ({pc} t) ({pe} t) ({ps} t)']
        self.lines += ['',f'theorem {self.prefix}read_mask : ∀ (q : Fin 342) (t : ℤ → Bool) (b : Bool),',
                       f'    {beforeName} q b = true → t 0 = b → {pred} q t = true → {afterName} q b = true := by',
                       '  intro q t b hp hb hq', '  fin_cases q <;> cases b']
        for i,q in enumerate(names):
            for b in (0,1):
                if after[q] & (1<<b):self.lines += ['  · rfl']
                elif not(before[q] & (1<<b)):
                    self.lines += ['  · exact Bool.noConfusion (show false = true from hp)']
                else:
                    pc=forbidden[i,b]
                    self.lines += ['  · exact (bool_empty_elim '+ self.term(roots[i])+' '+self.term(literals[b])+' false',
                                   '      hq (by simp ['+self.node(literals[b])+', '+self.node(0)+', '+self.node(1)+', hb])',
                                   f'      ({pc} t) rfl).elim']
        self.lines += ['', 'end RiemannMachineVerification','']
        output=ROOT/'RiemannMachineVerification'/f'Invariant{number}.lean'
        output.write_text('\n'.join(self.lines))
        print(output.name,'nodes',len(self.nodes),'Boolean claims',len(self.claims),'shift claims',len(self.shifts),flush=True)

if __name__=='__main__':
    rows=load(ROOT.parent/'machine/riemann.macro.tm');before={q:3 for q in rows}
    trace=json.loads((ROOT.parent/'machine/reduction.json').read_text())['trace']
    number=0
    for stage in trace:
        if stage['possible']==before:continue
        left,right=stage['left'],stage['right'];width=left+right+1
        possible,seen=abstract_reachable(rows,0,left,right,before)
        after={q:before[q]&possible[q] for q in rows}
        assert after==stage['possible']
        masks=[0]*len(rows)
        for item in seen:masks[item>>width] |= 1<<(item&((1<<width)-1))
        cert=Certificate(number)
        @cache
        def build(depth,bits):
            if not bits:return 0
            size=1<<depth
            if bits==(1<<size)-1:return 1
            half=1<<(depth-1)
            return cert.make(depth-1-left,build(depth-1,bits&((1<<half)-1)),build(depth-1,bits>>half))
        roots=[build(width,bits) for bits in masks]
        cert.finish(rows,roots,before,after,number)
        before=after;number+=1
