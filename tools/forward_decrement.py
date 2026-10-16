"""Opt-in local forward-gap decrement for the unary register backend.

The canonical compiled specialization retains the original unused zero-input
edge of dec.scan_done; the reachable cleanup input is one. Its unchanged state
ordering lets the existing dispatcher and counter certificates remain valid.
Lean's generic forward_gap_core and complete backend_decrement_positive prove
all natural register values, exact capacity preservation, and the full return.
"""


def apply_forward_decrement(machine):
    states = {state.name: state for state in machine.reachable()}
    changes = {
        ('dec.check', 1): (1, -1, 'dec.scan_1'),
        ('dec.scan_1', 0): (1, 1, 'dec.scan_0'),
        ('dec.scan_1', 1): (1, -1, 'dec.scan_1'),
        ('dec.scan_0', 0): (0, -1, 'dec.scan_done'),
        ('dec.scan_0', 1): (0, 1, 'dec.scan_1'),
        ('dec.scan_done', 1): (0, -1, 'return2.1'),
    }
    for (name, bit), (write, move, target) in changes.items():
        state = states[name]
        setattr(state, 'write' + str(bit), str(write))
        setattr(state, 'move' + str(bit), move)
        setattr(state, 'next' + str(bit), states[target])
    return machine
