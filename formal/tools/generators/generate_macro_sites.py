"""Connect every macro instruction to a checked primitive implementation."""
from pathlib import Path
from generate_register_program import compile_source, leaf

ROOT = Path(__file__).resolve().parent


def generate():
    machine = compile_source((ROOT.parent / 'machine/riemann.nql').read_text())
    out = ['import RiemannMachineVerification.TransferSites',
           'import RiemannMachineVerification.ProgramCounterParts', '',
           'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
           'namespace RiemannMachineVerification', '',
           'def MacroSite (pc : ProgramCounter) : Prop :=',
           '  match macroProgram pc with',
           '  | .transfer source targets next => TransferSite primitiveProgram pc next source targets',
           '  | _ => macroProgram pc = primitiveProgram pc', '']
    for k in range(32):
        out += [f'theorem macro_site_chunk_{k} (low : Fin 64) :',
                f'    MacroSite (pcParts ⟨{k}, by decide⟩ low) := by', '  fin_cases low']
        for pc in range(k*64, (k+1)*64):
            sub = leaf(machine.main, pc, True)
            out += [f'  · exact transfer_site_{pc}' if sub.name.startswith('transfer(') else '  · rfl']
        out += ['']
    out += ['theorem macro_site (pc : ProgramCounter) : MacroSite pc := by',
            '  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc', '  fin_cases high']
    out += [f'  · exact macro_site_chunk_{k} low' for k in range(32)]
    out += ['', 'end RiemannMachineVerification', '']
    return '\n'.join(out)


if __name__ == '__main__':
    (ROOT / 'RiemannMachineVerification/MacroSites.lean').write_text(generate())
