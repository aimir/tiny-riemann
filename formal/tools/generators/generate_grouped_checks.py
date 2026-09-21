"""Combine finite certificates using small independently checked case splits."""


def aggregate(kind):
    assert kind in ('dispatcher', 'counter')
    title = kind.capitalize()
    out = [f'import RiemannMachineVerification.{title}Checks{k:02}' for k in range(32)]
    out += ['import RiemannMachineVerification.ProgramCounterParts', '',
            'set_option maxRecDepth 8192', 'set_option maxHeartbeats 0', '',
            'namespace RiemannMachineVerification', '']
    for chunk in range(32):
        if kind == 'dispatcher':
            out += [f'theorem dispatcher_chunk_{chunk} (low : Fin 64) :',
                    f'    DispatcherCheck (pcParts ⟨{chunk}, by decide⟩ low) := by',
                    '  fin_cases low']
            out += [f'  · exact dispatcher_check_{pc}' for pc in range(chunk*64,(chunk+1)*64)]
        else:
            out += [f'theorem counter_chunk_{chunk} (low : Fin 64) (two : Bool) :',
                    f'    CounterCheck (pcParts ⟨{chunk}, by decide⟩ low) two := by',
                    '  fin_cases low <;> cases two']
            for pc in range(chunk*64,(chunk+1)*64):
                out += [f'  · exact counter_check_{pc}_{b}' for b in ('false','true')]
        out += ['']
    if kind == 'dispatcher':
        out += ['theorem dispatcher_checks : ∀ pc : ProgramCounter, DispatcherCheck pc := by',
                '  intro pc', '  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc', '  fin_cases high']
        out += [f'  · exact dispatcher_chunk_{chunk} low' for chunk in range(32)]
    else:
        out += ['theorem counter_checks : ∀ (pc : ProgramCounter) (two : Bool), CounterCheck pc two := by',
                '  intro pc two', '  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc', '  fin_cases high']
        out += [f'  · exact counter_chunk_{chunk} low two' for chunk in range(32)]
    out += ['', 'end RiemannMachineVerification', '']
    return '\n'.join(out)
