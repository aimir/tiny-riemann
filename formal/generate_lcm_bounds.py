"""Emit finite LCM calculations with ordinary kernel-checked arithmetic proofs."""
from pathlib import Path
from math import lcm

ROOT = Path(__file__).resolve().parent
out = ['import RiemannMachineVerification.Arithmetic',
       'import Mathlib.Tactic', '',
       'set_option maxRecDepth 8192',
       'set_option maxHeartbeats 0', '',
       'namespace RiemannMachineVerification', '',
       'theorem lcm_value_0 : lcmUpto 0 = 1 := rfl', '']
value = 1
for n in range(1,254):
    value = lcm(value,n)
    out += [f'theorem lcm_value_{n} : lcmUpto {n} = {value} := by',
            f'  change Nat.lcm (lcmUpto {n-1}) {n} = {value}',
            f'  rw [lcm_value_{n-1}]', '  decide +kernel', '']
for n in range(254):
    out += [f'theorem lcm_bound_{n} : lcmUpto {n} ≤ 2 ^ ({n} + {n} / 2 + 1) := by',
            f'  rw [lcm_value_{n}]', '  decide +kernel', '']
out += ['theorem lcmUpto_small_bound :',
        '    ∀ n : Fin 254, lcmUpto n.val ≤ 2 ^ (n.val + n.val / 2 + 1) := by',
        '  intro n', '  fin_cases n']
out += [f'  · exact lcm_bound_{n}' for n in range(254)]
out += ['', 'end RiemannMachineVerification', '']
(ROOT/'RiemannMachineVerification/LcmBounds.lean').write_text('\n'.join(out))
