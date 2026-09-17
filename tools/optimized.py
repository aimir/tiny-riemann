"""Opt-in NQL lowering improvements. The upstream compiler stays unchanged.

`option inplace;` enables local algebraic assignment lowering. All decisions
use resolved register identities, including procedure arguments.
"""
import nqlast as n
from framework import MachineOptions

MachineOptions.boolean += ('inplace', 'consume', 'canonical_temps', 'fused_decrement', 'halt_on_positive',)
MachineOptions.inplace = False
MachineOptions.consume = False
MachineOptions.canonical_temps = False
MachineOptions.fused_decrement = False
MachineOptions.halt_on_positive = False

original_assign = n.Assign.emit_stmt
original_read = n.Reg.emit_nat_op
original_get_temp = n.SubEmitter.get_temp
original_while = n.WhileLoop.emit_stmt
original_if = n.IfThen.emit_stmt


def reads(expr, state):
    if isinstance(expr, n.Reg):
        return {state.resolve(expr.name)}
    return set().union(*(reads(c, state) for c in expr.children))


def mark_consumable(expr, state, target):
    """A read may be consumed only if it is unique and dynamically single-use."""
    found = []
    def visit(e, repeated=False):
        if isinstance(e, n.Reg) and state.resolve(e.name) == target:
            found.append((e, repeated))
        children = e.children
        # Match Mul.emit_nat's choice of the repeatedly evaluated operand.
        if isinstance(e, n.Mul) and children[0].is_additive() and not children[1].is_additive():
            children = list(reversed(children))
        for i, c in enumerate(children):
            visit(c, repeated or (isinstance(e, (n.Mul, n.Div)) and i == 1))
    visit(expr)
    if len(found) == 1 and not found[0][1]:
        found[0][0]._consume = True
        return found[0][0]


def read(self, state, target, args):
    if getattr(self, '_consume', False):
        state.emit_transfer(state.resolve(self.name), target)
    else:
        original_read(self, state, target, args)


def emit_inplace(expr, state, target):
    """If true, transform target directly, preserving all other registers."""
    if isinstance(expr, n.Reg) and state.resolve(expr.name) == target:
        return True
    if isinstance(expr, n.Add):
        first, *rest = expr.children
        if all(target not in reads(e, state) for e in rest):
            if emit_inplace(first, state, target):
                for e in rest:
                    e.emit_nat_add(state, target)
                return True
    if isinstance(expr, (n.Mul, n.Monus)):
        left, right = expr.children
        if not (isinstance(left, n.Reg) and state.resolve(left.name) == target
                and target not in reads(right, state)):
            return False
        count = state.get_temp()
        if isinstance(expr, n.Mul):
            state.emit_transfer(target, count)
        else:
            right.emit_nat(state, count)
        loop, done = state.gensym(), state.gensym()
        state.emit_label(loop)
        state.emit_dec(count)
        state.emit_goto(done)
        if isinstance(expr, n.Mul):
            right.emit_nat_add(state, target)
        else:
            state.emit_dec(target)
            state.emit_noop()
        state.emit_goto(loop)
        state.emit_label(done)
        state.put_temp(count)
        return True
    return False


def assign(self, state):
    options = state._machine_builder.options
    if not (options.inplace or options.consume):
        return original_assign(self, state)
    lhs, rhs = self.children
    target = state.resolve(lhs.name)
    if isinstance(rhs, n.Lit) or self.emit_aug_op(state, lhs, rhs):
        if isinstance(rhs, n.Lit):
            state.emit_transfer(target)
            rhs.emit_nat(state, target)
        return
    if options.inplace:
        if target not in reads(rhs, state):
            state.emit_transfer(target)
            rhs.emit_nat(state, target)
            return
        if emit_inplace(rhs, state, target):
            return
    consumed = mark_consumable(rhs, state, target) if options.consume else None
    temp = state.get_temp()
    rhs.emit_nat(state, temp)
    if consumed is None:
        state.emit_transfer(target)
    else:
        del consumed._consume
    state.emit_transfer(temp, target)
    state.put_temp(temp)


n.Assign.emit_stmt = assign
n.Reg.emit_nat_op = read


def get_temp(self):
    if self._machine_builder.options.canonical_temps and self._scratch_free:
        self._scratch_free.sort(key=lambda r: r.index, reverse=True)
    return original_get_temp(self)


n.SubEmitter.get_temp = get_temp


def while_loop(self, state):
    if not state._machine_builder.options.fused_decrement:
        return original_while(self,state)
    test,body=self.children
    if not (isinstance(test,(n.Greater,n.NotEqual)) and isinstance(test.children[0],n.Reg)
            and isinstance(test.children[1],n.Lit) and test.children[1].value==0
            and isinstance(body,n.Block)):
        return original_while(self,state)
    target=state.resolve(test.children[0].name)
    def safe_prefix(e):
        if isinstance(e,(n.Return,n.Break)):
            return False
        if isinstance(e,n.Call) and not e.func.startswith('noop_'):
            return False
        return all(safe_prefix(c) for c in e.children)
    for index,stmt in enumerate(body.children):
        if not safe_prefix(stmt):break
        if target not in reads(stmt,state):continue
        if not isinstance(stmt,n.Assign):break
        lhs,rhs=stmt.children
        if not (state.resolve(lhs.name)==target and isinstance(rhs,n.Monus)
                and isinstance(rhs.children[0],n.Reg) and state.resolve(rhs.children[0].name)==target
                and isinstance(rhs.children[1],n.Lit) and rhs.children[1].value==1):break
        again,done=state.gensym(),state.gensym()
        state.emit_label(again)
        state.emit_dec(target)
        state.emit_goto(done)
        for k,child in enumerate(body.children):
            if k!=index:child.emit_stmt(state)
        state.emit_goto(again)
        state.emit_label(done)
        return
    return original_while(self,state)


n.WhileLoop.emit_stmt=while_loop


def if_then(self,state):
    test,then_,else_=self.children
    if (state._machine_builder.options.halt_on_positive and state.name=='main'
            and not state._machine_builder.options.implicit_halt
            and isinstance(test,(n.Greater,n.NotEqual))
            and isinstance(test.children[0],n.Reg)
            and isinstance(test.children[1],n.Lit) and test.children[1].value==0
            and isinstance(then_,n.Block)):
        statements=[e for e in then_.children if not(isinstance(e,n.Call) and e.func.startswith('noop_'))]
        if len(statements)==1 and isinstance(statements[0],n.Return):
            done=state.gensym()
            state.emit_dec(state.resolve(test.children[0].name))
            state.emit_goto(done)
            state.emit_halt()
            state.emit_label(done)
            else_.emit_stmt(state)
            return
    return original_if(self,state)


n.IfThen.emit_stmt=if_then
