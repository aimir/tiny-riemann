"""Experimental PC placement and jump lowering; arithmetic and registers unchanged.

Each configuration is explicit and leaves the vendored compiler untouched.
The independent control-graph checker compares primitive register operations
for all possible decrement outcomes, not just a finite arithmetic run.
"""
from collections import deque
import random

from compile import AstMachine, Machine, grammar
from framework import (Goto, Label, Subroutine, InsnInfo, make_bits,
                       make_dispatcher, cfg_optimizer)


class LayoutBuilder(AstMachine):
    def __init__(self, ast, layout):
        self.layout = layout
        self.layout_stats = {}
        self.jump_sites = {}
        super().__init__(ast)

    def inline_parts(self, parts):
        output = []
        serial = 0
        occurrences = {}
        selected = set(self.layout.get('inline', []))
        for part in parts:
            occurrence = occurrences.get(part.name, 0)
            occurrences[part.name] = occurrence + 1
            chosen_call = occurrence in self.layout.get('inline_calls', {}).get(part.name, [])
            if isinstance(part, Subroutine) and (part.name in selected or chosen_call):
                prefix = f'inline{serial}:'
                serial += 1
                for nested in part.source_parts:
                    if isinstance(nested, (Label, Goto)):
                        nested = type(nested)(prefix + nested.name)
                    output.append(nested)
            else:
                output.append(part)
        return tuple(output)

    def reorder(self, parts, name):
        """Reorder basic blocks, explicitly preserving both decrement successors."""
        labels, ops = {}, []
        for part in parts:
            if isinstance(part, Label):
                labels[part.name] = len(ops)
            else:
                ops.append(part)
        end = len(ops)

        def follow(index):
            seen = set()
            while index != end:
                if index in seen:
                    raise ValueError('Silent source loop cannot be packed')
                seen.add(index)
                op = ops[index]
                if isinstance(op, Goto):
                    index = labels[op.name]
                elif op.name.startswith('noop.'):
                    index += 1
                else:
                    break
            return index

        start = follow(0)
        edges, incoming = {}, {}
        queue = [start]
        for index in queue:
            if index == end or index in edges:
                continue
            op = ops[index]
            if op.name == 'halt':
                successors = []
            elif op.is_decrement:
                assert index + 1 < end and ops[index + 1].size == 1
                successors = [follow(index + 1), follow(index + 2)]
            else:
                successors = [follow(index + 1)]
            edges[index] = successors
            for nxt in successors:
                incoming[nxt] = incoming.get(nxt, 0) + 1
                if nxt not in queue:
                    queue.append(nxt)
        if start == end:
            return parts
        leaders = {start}
        for index, successors in edges.items():
            if len(successors) != 1:
                leaders.update(successors)
        leaders.update(i for i, degree in incoming.items() if degree > 1)
        leaders.discard(end)
        blocks = {}
        for leader in sorted(leaders):
            block, current = [], leader
            while True:
                block.append(current)
                succ = edges[current]
                if len(succ) != 1 or succ[0] in leaders or succ[0] == end:
                    break
                current = succ[0]
            blocks[leader] = block
        assert {i for b in blocks.values() for i in b} == set(edges)
        rest = sorted(leaders - {start})
        strategy = self.layout.get('placement', 'source')
        if strategy == 'size':
            rest.sort(key=lambda i: (-sum(ops[j].size for j in blocks[i]), i))
        elif strategy == 'random':
            random.Random(str(self.layout.get('seed', 0)) + ':' + name).shuffle(rest)
        elif strategy != 'source':
            raise ValueError(strategy)
        order = [start] + rest
        label = lambda i: f'packed:{i}'
        result = []
        for position, leader in enumerate(order):
            next_block = order[position + 1] if position + 1 < len(order) else end
            result.append(Label(label(leader)))
            block = blocks[leader]
            result.extend(ops[i] for i in block)
            successors = edges[block[-1]]
            if len(successors) == 2:
                result.append(Goto(label(successors[0])))
                if successors[1] != next_block:
                    result.append(Goto(label(successors[1])))
            elif len(successors) == 1 and successors[0] != next_block:
                result.append(Goto(label(successors[0])))
        result.append(Label(label(end)))
        return tuple(result)

    def makesub(self, *parts, name):
        if not self.options.no_cfg_optimize:
            parts = cfg_optimizer(parts)
        parts = self.inline_parts(parts)
        source_parts = parts
        if name == 'main()':
            count = 1 << (self._nextreg - 1).bit_length() if self._nextreg else 0
            parts = (self.reg_init(),) * count + parts
        if name in self.layout.get('pack', []):
            parts = self.reorder(parts, name)

        offsets, labels, gotos = {}, {}, {}
        real = []
        offset = 0
        for part in parts:
            if isinstance(part, Label):
                offsets[part.name] = offset
                labels.setdefault(offset, []).append(part.name)
                continue
            if isinstance(part, Goto):
                gotos[offset] = part.name
            while offset % part.size:
                power = (offset & -offset).bit_length() - 1
                real.append(self.noop(power))
                offset += 1 << power
            real.append(part)
            offset += part.size
        assert offset
        occupied = offset
        order = (offset - 1).bit_length()
        while offset < 1 << order:
            power = (offset & -offset).bit_length() - 1
            real.append(self.noop(power))
            offset += 1 << power
        self.layout_stats[name] = {'order': order, 'occupied': occupied,
                                  'raw_slots': sum(p.size for p in parts)}
        child_map = {}
        offset = 0
        for part in real:
            if isinstance(part, Goto):
                target = offsets[part.name]
                options = []
                for power in range(order + 1):
                    relative = target - ((offset >> power) << power)
                    if 0 <= relative < (1 << (power + 1)):
                        options.append((power, relative))
                assert options
                mode = self.layout.get('jump', 'relative')
                category = 'transfer' if name.startswith('transfer(') else name
                mode = self.layout.get('procedure_jumps', {}).get(category, mode)
                minimum = options[0]
                chosen = None
                if mode == 'suffix':
                    chosen = minimum
                elif mode == 'suffix-full':
                    chosen = options[-1]
                elif mode == 'hybrid':
                    if minimum[0] <= self.layout.get('threshold', 3):
                        chosen = minimum
                elif mode == 'random':
                    key = f'{self.layout.get("seed", 0)}:{name}:{offset}:{target}'
                    rng = random.Random(key)
                    chosen = rng.choice([None] + options)
                elif mode != 'relative':
                    raise ValueError(mode)
                site = f'{name}:{offset}'
                override = self.layout.get('jump_orders', {}).get(site, 'default')
                if override != 'default':
                    chosen = None if override == 'relative' else next(o for o in options if o[0] == override)
                self.jump_sites[site] = {'target': target, 'choices': ['relative'] + [o[0] for o in options],
                                         'chosen': chosen[0] if chosen is not None else 'relative'}
                if chosen is None:
                    part = self.rjump(target - offset)
                else:
                    part = self.jump(*chosen, name)
            prefix = make_bits(offset >> part.order, order - part.order)
            child_map[prefix] = InsnInfo(part, labels.get(offset), gotos.get(offset))
            offset += part.size
        result = Subroutine(make_dispatcher(child_map, name, order), order, name,
                            child_map=child_map)
        result.source_parts = source_parts
        return result


def compile_layout(source, registers, layout):
    ast, = grammar.parse_string(source, parse_all=True)
    sizing = LayoutBuilder(ast, layout)
    sizing.pc_bits = 50
    for name in registers:
        sizing.register(name)
    bits = sizing.main().order
    builder = LayoutBuilder(ast, layout)
    builder.pc_bits = bits
    for name in registers:
        builder.register(name)
    machine = Machine(builder)
    machine.compress()
    assert set(layout.get('jump_orders', {})) <= builder.jump_sites.keys(), 'Unknown jump-site override'
    return machine


def primitive_graph(machine):
    """Read the emitted hierarchy independently, retaining every primitive action."""
    slots = {}
    def flatten(sub, base):
        if not sub.child_map:
            for i in range(sub.size):
                slots[base+i] = sub
        else:
            for prefix, info in sub.child_map.items():
                at = int(prefix or '0', 2) << (sub.order - len(prefix))
                flatten(info.sub, base + at)
    flatten(machine.main, 0)
    modulus = 1 << machine.main.order
    graph = {}
    for pc, sub in slots.items():
        name = sub.name
        if name == 'halt':
            graph[pc] = ('halt', ())
        elif name.startswith('reg_decr('):
            graph[pc] = (name, ((pc + 1) % modulus, (pc + 2) % modulus))
        elif name.startswith('reg_incr(') or name == 'reg_init':
            graph[pc] = (name, ((pc + 1) % modulus,))
        else:
            if name.startswith('noop.'):
                target = pc + sub.size
            elif name.startswith('rjump('):
                target = pc + int(name[6:-1])
            elif '.jump(' in name:
                value, power = map(int, name.rsplit('.jump(', 1)[1][:-1].split(','))
                target = ((pc >> power) << power) + value
            else:
                raise ValueError(name)
            graph[pc] = ('silent', (target % modulus,))
    return graph


def check_control_equivalence(original, candidate):
    graphs = [primitive_graph(original), primitive_graph(candidate)]
    def normalize(graph, pc):
        seen = set()
        while graph[pc][0] == 'silent':
            if pc in seen:
                return None
            seen.add(pc)
            pc = graph[pc][1][0]
        return pc
    queue = deque([(0, 0)])
    checked = set()
    while queue:
        pair = tuple(normalize(g, p) for g, p in zip(graphs, queue.popleft()))
        if pair in checked:
            continue
        checked.add(pair)
        if None in pair:
            assert pair == (None, None), ('silent divergence mismatch', pair)
            continue
        (a, sa), (b, sb) = (g[p] for g, p in zip(graphs, pair))
        assert a == b and len(sa) == len(sb), (pair, a, b)
        queue.extend(zip(sa, sb))
    return {'relation_pairs': len(checked), 'control_equivalence': 'passed',
            'scope': 'All reachable primitive control paths, with arbitrary decrement outcomes; Python check, not Lean proof.'}


def check_dispatch(machine):
    """Execute every PC prefix, stopping before any register contents are read."""
    graph = primitive_graph(machine)
    width = machine.main.order
    equivalent = set()

    def same_machine(a, b):
        pending, seen = [(a, b)], set()
        while pending:
            x, y = pending.pop()
            if x is y or (x, y) in seen or (x, y) in equivalent:
                continue
            seen.add((x, y))
            assert type(x) is type(y), ('different halting behavior', x.name, y.name)
            if not hasattr(x, 'move0'):
                continue
            for bit in '01':
                assert getattr(x, 'write' + bit) == getattr(y, 'write' + bit)
                assert getattr(x, 'move' + bit) == getattr(y, 'move' + bit)
                pending.append((getattr(x, 'next' + bit), getattr(y, 'next' + bit)))
        equivalent.update(seen)

    longest = 0
    for pc, (action, successors) in graph.items():
        initial = [0] + [int(c) for c in f'{pc:0{width}b}'] + [0]
        bits, q, head, steps = initial[:], machine.entry, 0, 0
        register = action.startswith('reg_')
        while steps == 0 or (hasattr(q, 'move0') and q is not machine.entry and
                              not (register and head == width + 1)):
            assert 0 <= head < len(bits), (pc, action, head)
            bit = str(bits[head])
            bits[head] = int(getattr(q, 'write' + bit))
            head += getattr(q, 'move' + bit)
            q = getattr(q, 'next' + bit)
            steps += 1
            assert steps <= 4 * width + 10, (pc, action, 'nonterminating dispatch')
        longest = max(longest, steps)
        if register:
            assert head == width + 1 and bits == initial
            if action == 'reg_init':
                expected = machine.builder.reg_init().entry
            else:
                reg = machine.builder.register(action[9:-1])
                expected = reg.dec.entry if action.startswith('reg_decr') else reg.inc.entry
            same_machine(q, expected)
        elif action == 'halt':
            assert not hasattr(q, 'move0') and head == width + 1 and bits == initial
        else:
            expected = [0] + [int(c) for c in f'{successors[0]:0{width}b}'] + [0]
            assert q is machine.entry and head == 0 and bits == expected, (pc, action, bits, expected)
    return {'pc_prefixes_checked': len(graph), 'maximum_dispatch_steps': longest,
            'dispatch_check': 'passed'}


def check_backend(original, candidate):
    """Compare register routines to the reference, stopping at PC-update entries.

    The bisimulation covers both reads at every paired state, so it applies to
    unbounded register storage. PC-update routines are exhausted separately.
    This is an independent Python certificate check, not a Lean theorem.
    """
    def all_states(machine):
        roots = [machine.entry, machine.builder.nextstate(), machine.builder.nextstate_2(),
                 machine.builder.reg_init().entry]
        for register in range(machine.builder._nextreg):
            roots.extend((machine.builder.reg_incr(register), machine.builder.reg_decr(register)))
        states, seen = [], set()
        for root in roots:
            queue = [root]
            for q in queue:
                if q in seen or not hasattr(q, 'move0'):
                    continue
                seen.add(q); states.append(q)
                queue.extend((q.next0, q.next1))
        # Greatest transition bisimulation, including memoized aliases removed
        # by the compiler's compression. Names do not affect this relation.
        groups = {q: 0 for q in states}
        while True:
            signatures, next_groups = {}, {}
            for q in states:
                signature = tuple((getattr(q, 'write'+b), getattr(q, 'move'+b),
                                   groups.get(getattr(q, 'next'+b), -1)) for b in '01')
                next_groups[q] = signatures.setdefault(signature, len(signatures))
            if next_groups == groups:
                break
            groups = next_groups
        return groups

    maps = [all_states(m) for m in (original, candidate)]
    boundaries = [{groups[m.builder.nextstate()]: 1, groups[m.builder.nextstate_2()]: 2}
                  for m, groups in zip((original, candidate), maps)]
    registers = sorted({name[9:-1] for name, _ in primitive_graph(original).values()
                        if name.startswith(('reg_incr(', 'reg_decr('))})
    pending = [(original.builder.reg_init().entry, candidate.builder.reg_init().entry)]
    for name in registers:
        a, b = original.builder.register(name), candidate.builder.register(name)
        pending.extend(((a.inc.entry, b.inc.entry), (a.dec.entry, b.dec.entry)))
    seen = set()
    while pending:
        a, b = pending.pop()
        if (a, b) in seen:
            continue
        seen.add((a, b))
        exits = [boundary.get(groups[q]) for q, groups, boundary in zip((a, b), maps, boundaries)]
        if any(x is not None for x in exits):
            assert exits[0] == exits[1], ('different counter exit', a.name, b.name, exits)
            continue
        assert hasattr(a, 'move0') and hasattr(b, 'move0')
        for bit in '01':
            assert getattr(a, 'write'+bit) == getattr(b, 'write'+bit), (a.name, b.name, bit)
            assert getattr(a, 'move'+bit) == getattr(b, 'move'+bit), (a.name, b.name, bit)
            pending.append((getattr(a, 'next'+bit), getattr(b, 'next'+bit)))
    width = candidate.main.order
    checks = 0
    for pc in range(1 << width):
        for increment, entry in ((1, candidate.builder.nextstate()), (2, candidate.builder.nextstate_2())):
            tape = [0] + [int(c) for c in f'{pc:0{width}b}'] + [0]
            state, head = entry, width
            for _ in range(width):
                bit = str(tape[head])
                tape[head] = int(getattr(state, 'write'+bit))
                head += getattr(state, 'move'+bit)
                state = getattr(state, 'next'+bit)
            expected = (pc + increment) % (1 << width)
            assert head == 0 and maps[1][state] == maps[1][candidate.entry]
            assert tape == [0] + [int(c) for c in f'{expected:0{width}b}'] + [0]
            checks += 1
    return {'backend_relation_pairs': len(seen), 'counter_cases_checked': checks,
            'backend_check': 'passed'}
