"""Experimental, opt-in whole-program liveness and arithmetic lowering.

The CFG expands calls for analysis, then unions liveness/intersects facts at
shared source nodes. Main fallthrough is a backedge; explicit return halts.
Only parameter-free, nonrecursive NQL programs in the supported subset are
accepted. Existing compiler entry points are unaffected.
"""
from contextlib import contextmanager
from dataclasses import dataclass
import copy

from compile import grammar, Machine
from pc_layout import LayoutBuilder
from framework import Register, memo
import nqlast as n
import optimized


def regs(expr):
    if isinstance(expr, n.Reg):
        return {expr.name}
    return set().union(*(regs(c) for c in expr.children))


class HarmonicStep(n.VoidExpr):
    """Simultaneous (num,denom) := (i*num+denom,i*denom), preserving i."""
    child_types = n.Reg

    def emit_stmt(self, state):
        with state.context(self):
            out, den, index = (state.resolve(s) for s in ('num', 'denom', 'i'))
            if state._machine_builder.lowering['harmonic']=='consume':
                count, save = state.get_temp(), state.get_temp()
                for source in (out, den):
                    state.emit_transfer(source,count)
                    again,done=state.gensym(),state.gensym()
                    state.emit_label(again)
                    state.emit_dec(count)
                    state.emit_goto(done)
                    if source is den: state.emit_inc(out)
                    state.emit_transfer(index,source,save)
                    state.emit_transfer(save,index)
                    state.emit_goto(again)
                    state.emit_label(done)
                state.put_temp(save)
                state.put_temp(count)
                return
            oldnum, oldden, count = (state.get_temp() for _ in range(3))
            state.emit_transfer(out, oldnum)
            state.emit_transfer(den, oldden)
            # Copy i once for both products, restoring it with the counter loop.
            state.emit_transfer(index, count)
            again, done = state.gensym(), state.gensym()
            state.emit_label(again)
            state.emit_dec(count)
            state.emit_goto(done)
            state.emit_inc(index)
            # Two copies share their restoration scratch register.
            save = state.get_temp()
            state.emit_transfer(oldnum, out, save)
            state.emit_transfer(save, oldnum)
            state.emit_transfer(oldden, den, save)
            state.emit_transfer(save, oldden)
            state.put_temp(save)
            state.emit_goto(again)
            state.emit_label(done)
            state.emit_transfer(oldden, out)
            state.emit_transfer(oldnum)
            for temp in (count, oldden, oldnum):
                state.put_temp(temp)


@dataclass
class Point:
    node: object
    successors: list
    uses: set
    defs: set
    test: bool = False


class Analysis:
    def __init__(self, ast, observable=(), clobbers=None):
        self.globals = [e.name for e in ast.children if isinstance(e, n.GlobalReg)]
        self.points = []
        self.ast = ast
        self.observable = set(observable)
        assert self.observable <= set(self.globals)
        def add(node, successors, uses=(), defs=(), test=False):
            index = len(self.points)
            self.points.append(Point(node, successors, set(uses), set(defs), test))
            return index
        halt = add(None, [], self.observable)
        entry = add(None, [])
        def build(e, nxt, ret, stack):
            if isinstance(e, n.Block):
                for child in reversed(e.children):
                    nxt = build(child, nxt, ret, stack)
                return nxt
            if isinstance(e, n.Assign):
                lhs, rhs = e.children
                return add(e, [nxt], regs(rhs), [lhs.name])
            if isinstance(e, HarmonicStep):
                return add(e, [nxt], ['num', 'denom', 'i'], ['num', 'denom'])
            if isinstance(e, n.Return):
                return add(e, [ret])
            if isinstance(e, n.Call):
                assert not e.children, 'Procedure arguments not supported'
                if e.func.startswith('noop_'):
                    return add(e, [nxt])
                assert e.func not in stack, 'Recursion not supported'
                proc = ast.by_name[e.func]
                assert not proc.parameters
                return build(proc.children[0], nxt, nxt, stack + (e.func,))
            if isinstance(e, n.IfThen):
                test, yes, no = e.children
                return add(test, [build(yes,nxt,ret,stack), build(no,nxt,ret,stack)], regs(test), test=True)
            if isinstance(e, n.WhileLoop):
                test, body = e.children
                head = add(test, [], regs(test), test=True)
                self.points[head].successors = [build(body,head,ret,stack), nxt]
                return head
            raise TypeError(f'Unsupported source node: {type(e).__name__}')
        self.points[entry].successors = [build(ast.by_name['main'].children[0], entry, halt, ('main',))]
        self.entry = entry
        livein = [set() for _ in self.points]
        liveout = [set() for _ in self.points]
        changed = True
        while changed:
            changed = False
            for j, p in enumerate(self.points):
                after = set().union(*(livein[k] for k in p.successors))
                before = p.uses | (after - p.defs)
                if before != livein[j] or after != liveout[j]:
                    changed = True
                    livein[j], liveout[j] = before, after
        # Abstract values: 1 = zero, 2 = positive, 3 = either. None = unreachable.
        facts = [None for _ in self.points]
        facts[entry] = dict.fromkeys(self.globals, 1)
        pending = [entry]
        while pending:
            j = pending.pop()
            p = self.points[j]
            before = facts[j]
            after = dict(before)
            if isinstance(p.node, n.Assign):
                lhs, rhs = p.node.children
                after[lhs.name] = self.value(rhs, before)
            elif isinstance(p.node, HarmonicStep):
                a, b, i = (before[s] for s in ('num','denom','i'))
                after['num'] = self.plus(self.times(a,i), b)
                after['denom'] = self.times(b,i)
            if clobbers and p.node is not None:
                for name in clobbers.get(id(p.node),()):
                    assert name not in liveout[j] and name not in p.defs
                    after[name]=1
            for branch, k in enumerate(p.successors):
                edge = self.refine(p.node, after, branch == 0) if p.test else after
                if edge is None:
                    continue
                joined = dict(edge) if facts[k] is None else {g: facts[k][g] | edge[g] for g in self.globals}
                if joined != facts[k]:
                    facts[k] = joined
                    pending.append(k)
        self.annotations = {}
        for j, p in enumerate(self.points):
            if p.node is None:
                continue
            record = self.annotations.setdefault(id(p.node), {'after':set(), 'before':set(), 'facts':None})
            record['after'] |= liveout[j]
            record['before'] |= livein[j]
            if facts[j] is not None:
                record['facts'] = dict(facts[j]) if record['facts'] is None else {
                    g: record['facts'][g] | facts[j][g] for g in self.globals}
        self.report = []
        for e in self.walk(ast):
            if id(e) in self.annotations:
                a = self.annotations[id(e)]
                self.report.append({'node':type(e).__name__, 'line':e.lineno,
                                    'live_before':sorted(a['before']), 'live_after':sorted(a['after']),
                                    'zero_before':sorted(g for g,v in (a['facts'] or {}).items() if v==1),
                                    'positive_before':sorted(g for g,v in (a['facts'] or {}).items() if v==2)})

    @staticmethod
    def walk(e):
        yield e
        for c in e.children:
            yield from Analysis.walk(c)

    @staticmethod
    def plus(a,b):
        return (1 if a&1 and b&1 else 0) | (2 if a&2 or b&2 else 0)

    @staticmethod
    def times(a,b):
        return (1 if a&1 or b&1 else 0) | (2 if a&2 and b&2 else 0)

    @classmethod
    def value(cls, e, facts):
        if isinstance(e,n.Reg): return facts[e.name]
        if isinstance(e,n.Lit): return 1 if e.value==0 else 2
        if isinstance(e,n.Add):
            result=1
            for c in e.children: result=cls.plus(result,cls.value(c,facts))
            return result
        if isinstance(e,n.Mul): return cls.times(*(cls.value(c,facts) for c in e.children))
        if isinstance(e,n.Monus):
            a,b=(cls.value(c,facts) for c in e.children)
            return 1 if a==1 else a if b==1 else 3
        raise TypeError(f'Unsupported arithmetic: {type(e).__name__}')

    @staticmethod
    def refine(e, facts, truth):
        result=dict(facts)
        if isinstance(e,(n.Greater,n.NotEqual,n.Equal)):
            a,b=e.children
            if isinstance(a,n.Reg) and isinstance(b,n.Lit) and b.value==0:
                positive = truth != isinstance(e,n.Equal)
                result[a.name] &= 2 if positive else 1
                if not result[a.name]: return None
        return result


class LiveEmitter(n.SubEmitter):
    def __init__(self, *args):
        super().__init__(*args)
        self.current = None
        self.borrowed = set()
        self.skip_clear = set()

    @contextmanager
    def context(self, node):
        previous = self.current, self.skip_clear
        assert not self._scratch_used, 'Scratch escapes statement boundary'
        self.current = node
        self.skip_clear = set()
        try:
            yield
            assert not self._scratch_used
        finally:
            self.current, self.skip_clear = previous

    def emit_transfer(self, *registers):
        if len(registers)==1 and registers[0] in self.skip_clear:
            self.skip_clear.remove(registers[0])
            self._machine_builder.stats['zero_clears_omitted'] += 1
            return
        super().emit_transfer(*registers)

    def get_temp(self):
        builder=self._machine_builder
        a=builder.analysis.annotations.get(id(self.current))
        if builder.lowering.get('borrow') and a is not None and len(self._scratch_used) >= builder.lowering.get('borrow_depth',0):
            forbidden = a['after'] | regs(self.current)
            if isinstance(self.current,HarmonicStep): forbidden |= {'num','denom','i'}
            candidates = [self.resolve(g) for g in builder.analysis.globals if g not in forbidden
                          and (builder.lowering['borrow']!='zero' or (a['facts'] or {}).get(g)==1)
                          and ('borrow_globals' not in builder.lowering or g in builder.lowering['borrow_globals'])]
            candidates.sort(key=lambda r:r.index, reverse=builder.lowering.get('borrow_order')=='reverse')
            for reg in candidates:
                if reg not in self._scratch_used:
                    # A static earlier allocation may lie in a skipped loop.
                    # Clear unless analysis proves zero; do not infer zero from
                    # the order in which the compiler emitted instructions.
                    if not (builder.lowering.get('borrow_zero') and (a['facts'] or {}).get(reg.name[2:])==1):
                        self.emit_transfer(reg)
                    self._scratch_used.append(reg)
                    self.borrowed.add(reg)
                    builder.stats['global_borrows'] += 1
                    return reg
        return super().get_temp()

    def put_temp(self, reg):
        if reg in self.borrowed:
            self._scratch_used.remove(reg)
        else:
            super().put_temp(reg)


def live_assign(self,state):
    if not isinstance(state,LiveEmitter):
        return optimized.assign(self,state)
    with state.context(self):
        builder=state._machine_builder
        config=builder.lowering
        a=builder.analysis.annotations[id(self)]
        lhs,rhs=self.children
        if config.get('square') and isinstance(rhs,n.Mul) and all(isinstance(e,n.Reg) and e.name==lhs.name for e in rhs.children):
            # n^2 = sum_{k=0}^{n-1} (2*k+1). Consume n, needing two
            # temporaries instead of the generic product's three.
            target=state.resolve(lhs.name)
            count,save=state.get_temp(),state.get_temp()
            state.emit_transfer(target,count)
            again,done=state.gensym(),state.gensym()
            state.emit_label(again)
            state.emit_dec(count)
            state.emit_goto(done)
            state.emit_inc(target)
            state.emit_transfer(count,target,target,save)
            state.emit_transfer(save,count)
            state.emit_goto(again)
            state.emit_label(done)
            state.put_temp(save)
            state.put_temp(count)
            builder.stats['specialized_squares'] += 1
            return
        if config.get('monus_product') and isinstance(rhs,n.Monus) and isinstance(rhs.children[0],n.Reg) and rhs.children[0].name==lhs.name and isinstance(rhs.children[1],n.Mul) and lhs.name not in regs(rhs.children[1]) and isinstance(rhs.children[1].children[1],n.Reg):
            # Saturating subtraction distributes over a sum of nonnegative
            # terms. Subtract repeatedly without materializing the product.
            left,right=rhs.children[1].children
            count=state.get_temp()
            left.emit_nat(state,count)
            again,done=state.gensym(),state.gensym()
            state.emit_label(again)
            state.emit_dec(count)
            state.emit_goto(done)
            inner=state.get_temp()
            saved=state.resolve(right.name)
            state.emit_transfer(saved,inner)
            repeat,exhausted=state.gensym(),state.gensym()
            state.emit_label(repeat)
            state.emit_dec(inner)
            state.emit_goto(exhausted)
            state.emit_inc(saved)
            state.emit_dec(state.resolve(lhs.name))
            state.emit_noop()
            state.emit_goto(repeat)
            state.emit_label(exhausted)
            state.put_temp(inner)
            state.emit_goto(again)
            state.emit_label(done)
            state.put_temp(count)
            builder.stats['specialized_subtractions'] += 1
            return
        marked=[]
        if config.get('consume') and ('consume_lines' not in config or self.lineno in config['consume_lines']):
            for name in sorted(regs(rhs)-a['after']):
                if isinstance(config['consume'],list) and name not in config['consume']: continue
                found=optimized.mark_consumable(rhs,state,state.resolve(name))
                # In-place multiplication may repeatedly evaluate its RHS
                # even when generic Mul.emit_nat would swap the operands.
                def repeated(e,repeat=False):
                    if e is found: return repeat
                    return any(repeated(c,repeat or (isinstance(e,(n.Mul,n.Div)) and k==1))
                               for k,c in enumerate(e.children))
                if found and repeated(rhs):
                    del found._consume
                    found=None
                if found:
                    marked.append(found)
                    builder.stats['destructive_reads'] += 1
        if config.get('zero') and (a['facts'] or {}).get(lhs.name)==1 and ('zero_lines' not in config or self.lineno in config['zero_lines']):
            # Only the initial clear of a direct assignment is eligible. A
            # final clear after evaluating a complex expression is not.
            if isinstance(rhs,n.Lit) or lhs.name not in regs(rhs):
                state.skip_clear.add(state.resolve(lhs.name))
        try:
            optimized.assign(self,state)
        finally:
            for e in marked:
                if hasattr(e,'_consume'): del e._consume


def live_compare(self,state,label,invert):
    if not isinstance(state,LiveEmitter):
        return original_compare(self,state,label,invert)
    with state.context(self):
        a=state._machine_builder.analysis.annotations[id(self)]
        if state._machine_builder.lowering.get('positive'):
            yes=Analysis.refine(self,a['facts'] or dict.fromkeys(state._machine_builder.analysis.globals,3),True)
            no=Analysis.refine(self,a['facts'] or dict.fromkeys(state._machine_builder.analysis.globals,3),False)
            if yes is None or no is None:
                truth=no is None
                if truth != invert: state.emit_goto(label)
                state._machine_builder.stats['constant_tests'] += 1
                return
        return original_compare(self,state,label,invert)


def live_read(self,state,target,args):
    if isinstance(state,LiveEmitter) and getattr(self,'_consume',False):
        node=state.current
        if isinstance(node,n.Assign) and self.name!=node.children[0].name:
            a=state._machine_builder.analysis.annotations[id(node)]
            assert self.name not in a['after']
            state._machine_builder.clobbers.setdefault(id(node),set()).add(self.name)
    return optimized.read(self,state,target,args)


original_compare=n.CompareBase.emit_test


@contextmanager
def hooks():
    old_assign,old_compare,old_read=n.Assign.emit_stmt,n.CompareBase.emit_test,n.Reg.emit_nat_op
    n.Assign.emit_stmt,n.CompareBase.emit_test,n.Reg.emit_nat_op=live_assign,live_compare,live_read
    try: yield
    finally: n.Assign.emit_stmt,n.CompareBase.emit_test,n.Reg.emit_nat_op=old_assign,old_compare,old_read


def prepare(source,config):
    ast,=grammar.parse_string(source,parse_all=True)
    if config.get('specialize_calls'):
        # Clone per call site to expose different live-outs without assuming
        # that a shared routine sees the same callers' preserved globals.
        def clone_calls(e,stack):
            if isinstance(e,n.Call) and not e.func.startswith('noop_'):
                assert not e.children and e.func not in stack
                proc=copy.deepcopy(ast.by_name[e.func])
                old=e.func
                proc.name=f'{old}_site{len(ast.by_name)}'
                ast.by_name[proc.name]=proc
                ast.children.append(proc)
                e.func=proc.name
                clone_calls(proc,stack+(old,))
            else:
                for child in e.children: clone_calls(child,stack)
        clone_calls(ast.by_name['main'],('main',))
    if config.get('commute'):
        for e in Analysis.walk(ast):
            if isinstance(e,n.Assign):
                lhs,rhs=e.children
                first=rhs.children[0] if isinstance(rhs,n.Add) else rhs
                if isinstance(first,n.Mul):
                    a,b=first.children
                    if isinstance(b,n.Reg) and b.name==lhs.name and lhs.name not in regs(a):
                        first.children.reverse()
    if config.get('harmonic'):
        assert not config.get('commute'), 'Coordinated step already handles both products'
        for proc in ast.by_name.values():
            if proc.name=='harmonic' or proc.name.startswith('harmonic_site'):
                body=proc.children[0].children[-1].children[1]
                # Reject a changed source instead of replacing a similar-looking
                # recurrence without checking its exact expression structure.
                from search_layout import show
                pair='\n'.join(show(e).strip() for e in body.children[:2])
                assert pair=='num = ((i * num) + denom);\ndenom = (i * denom);', pair
                body.children[:2]=[HarmonicStep(lineno=body.children[0].lineno, children=[n.Reg(name=g) for g in ('num','denom','i')])]
    return ast


class RegisterBuilder(LayoutBuilder):
    def __init__(self,ast,layout,lowering,clobbers=None):
        self.lowering=lowering
        self.clobbers={}
        self.analysis=Analysis(ast,lowering.get('observable',()),clobbers)
        self.stats=dict(global_borrows=0,destructive_reads=0,zero_clears_omitted=0,constant_tests=0,specialized_squares=0,specialized_subtractions=0)
        super().__init__(ast,layout)

    @memo
    def instantiate(self,name,args):
        assert not args
        defn=self._ast.by_name[name]
        assert not defn.parameters
        emit=LiveEmitter({},self,name)
        defn.children[0].emit_stmt(emit)
        emit.close_return()
        if name=='main' and self.options.implicit_halt: emit.emit_halt()
        return self.makesub(*emit._output,name=name+'()')


def compile_registers(source,registers,layout,lowering):
    with hooks():
        ast=prepare(source,lowering)
        sizing=RegisterBuilder(ast,layout,lowering)
        sizing.pc_bits=50
        for name in registers: sizing.register(name)
        bits=sizing.main().order
        clobbers=None
        if lowering.get('propagate_consumed'):
            # Discover actual destructive reads, not merely AST eligibility.
            # They are outside repeated operands, dead at the statement exit,
            # and not the assignment's new output. Their resulting zero values
            # can therefore refine the next forward analysis.
            clobbers=sizing.clobbers
            sizing=RegisterBuilder(ast,layout,lowering,clobbers)
            sizing.pc_bits=50
            for name in registers: sizing.register(name)
            bits=sizing.main().order
            assert sizing.clobbers==clobbers
        builder=RegisterBuilder(ast,layout,lowering,clobbers)
        builder.pc_bits=bits
        for name in registers: builder.register(name)
        machine=Machine(builder)
        machine.compress()
        if clobbers is not None: assert builder.clobbers==clobbers
    actual=sorted({v.name:v.index for v in builder._memos.values() if isinstance(v,Register)}.items(),key=lambda p:p[1])
    return machine,[name for name,index in actual]
