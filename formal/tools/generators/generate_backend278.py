"""Specialize the existing register backend proof to the ten-bit candidate.

All transition equations, counter cases and instruction dispatches remain Lean
obligations. State matching below only proposes names for those equations.
"""
from functools import cache
import hashlib
import shutil
import tempfile
from generate_optimized278 import *
from generate_tables import generate as literal_table


def state_mapping(old,new):
    rows=[[l.split() for l in table(m).splitlines()] for m in (old,new)]
    ids=[{r[0]:i for i,r in enumerate(rr)} for rr in rows]
    c2=ids[1][rows[1][ids[1]['return2.0']][4]]
    mapping={0:0,9:ids[1]['dispatch.0.carry'],176:c2}
    todo=[(199,ids[1]['reg_incr.8']),(192,ids[1]['reg_decr.8']),(61,ids[1]['init.f1'])]
    while todo:
        a,b=todo.pop()
        if a in mapping:
            assert mapping[a]==b,(a,b,mapping[a]);continue
        mapping[a]=b
        for k in (2,5):
            assert rows[0][a][k:k+2]==rows[1][b][k:k+2],(a,b)
            todo.append((ids[0][rows[0][a][k+2]],ids[1][rows[1][b][k+2]]))
    return mapping


def generate():
    old,new=machines();mapping=state_mapping(old,new)
    originals=ROOT/'RiemannMachineVerification'
    modules={p.stem:p.read_text() for p in originals.glob('*.lean')}
    @cache
    def dependencies(name):
        result={name}
        for dep in re.findall(r'^import RiemannMachineVerification\.(\w+)$',modules[name],re.M):result |= dependencies(dep)
        return result
    selected={name for name in dependencies('BackendCorrectness')
        if dependencies(name)&{'Machine381','RegisterMachine'}}
    for name in list(selected):
        m=re.fullmatch(r'(CounterChecks|DispatcherChecks)(\d+)',name)
        if m and int(m[2])>=16:selected.remove(name)
    selected |= {'TransferSites','MacroSites','MacroRegisterCorrectness','RegisterExecution','TransferSite'}
    with tempfile.TemporaryDirectory(prefix='riemann278-backend-') as folder:
        temp=Path(folder);target=temp/'formal/RiemannMachineVerification';target.mkdir(parents=True)
        (temp/'machine').mkdir()
        (temp/'machine/riemann.nql').write_text((CANDIDATE/'source.nql').read_text())
        (temp/'machine/riemann.compiled.tm').write_text(table(new))
        for name in selected:
            if name not in modules:continue
            text=modules[name]
            if name.startswith('Backend') or name=='CounterCorrectness':
                text=re.sub(r'⟨(\d+), by decide⟩',lambda m:f'⟨STATE{mapping[int(m[1])]}STATE, by decide⟩',text)
                text=re.sub(r'\b(11|12|13|14)\b',lambda m:str(int(m[1])-1),text)
                text=re.sub(r'STATE(\d+)STATE',r'\1',text)
            text=text.replace('Machine381','Machine389').replace('machine381','machine389')
            text=re.sub(r'\b381\b','389',text)
            (target/f'{name.replace("Machine381","Machine389")}.lean').write_text(text)
        def script(name, changes=(), additions=None):
            code=(ROOT/name).read_text()
            for a,b in changes:code=code.replace(a,b)
            ns={'__file__':str(temp/'formal'/name),'__name__':'proof_generator'}
            exec(compile(code,str(ROOT/name),'exec'),ns)
            ns.update(additions or {})
            return ns
        agg=script('generate_grouped_checks.py',[('range(32)','range(16)')])['aggregate']
        changes=[('range(2048)','range(1024)'),('range(32)','range(16)'),('chunk < 31','chunk < 15'),('011b','010b'),('381','389'),('% 2048','% 1024'),('2048 prefix certificates','1024 prefix certificates')]
        code=(ROOT/'generate_dispatcher_proofs.py').read_text()
        code=re.sub(r'\b(11|12|13|14)\b',lambda m:str(int(m[1])-1),code)
        for a,b in changes:code=code.replace(a,b)
        code=code.replace("expected = (pc + (int(name[6:-1]) if name.startswith('rjump(') else sub.size)) % 1024", "expected = primitive_graph[pc][2][0]")
        ns={'__file__':str(temp/'formal/generate_dispatcher_proofs.py'),'__name__':'proof_generator'}
        exec(compile(code,'dispatcher278','exec'),ns)
        ns.update(compile_source=lambda _:new,aggregate=agg,primitive_graph=graph(new,False));ns['generate']()
        # Executable finite proof generators: adapt only their fixed dimensions.
        code=(ROOT/'generate_counter_proofs.py').read_text().replace('from generate_grouped_checks import aggregate','')
        code=re.sub(r'\b(11|12|13|14)\b',lambda m:str(int(m[1])-1),code)
        code=code.replace('381','389').replace('2048','1024').replace('range(32)','range(16)').replace('176',str(mapping[176])).replace('4096 counter-update','2048 counter-update')
        exec(compile(code,'counter278','exec'),{'__file__':str(temp/'formal/generate_counter_proofs.py'),'aggregate':agg})
        ns=script('generate_program_shape.py',[('range(32)','range(16)')])
        (target/'PrimitiveShape.lean').write_text(ns['generate']())
        # Positivity of every dispatcher path, split into sixteen bounded chunks.
        text=modules['DispatcherPositive']
        text=re.sub(r'theorem dispatcher_positive_chunk_(\d+).*?(?=theorem|end RiemannMachineVerification)',
            lambda m:'' if int(m[1])>=16 else m[0],text,flags=re.S)
        text=re.sub(r'^  · exact dispatcher_positive_chunk_(\d+) low\n',
            lambda m:'' if int(m[1])>=16 else m[0],text,flags=re.M)
        (target/'DispatcherPositive.lean').write_text(text)
        pgraph=graph(new,False)
        changes=[('range(2048)','range(1024)'),('% 2048','% 1024'),('2048 prefix certificates','1024 prefix certificates')]
        code=(ROOT/'generate_transfer_sites.py').read_text()
        for a,b in changes:code=code.replace(a,b)
        code=code.replace("if not sub.name.startswith('transfer('):", "if not sub.name.startswith('transfer(') or '.jump(' in sub.name:")
        code=code.replace("if inst.name.startswith('rjump('):", "if '.jump(' in inst.name:\n                    at = primitive_graph[at][2][0]\n                elif inst.name.startswith('rjump('):")
        ns={'__file__':str(temp/'formal/generate_transfer_sites.py'),'__name__':'proof_generator'}
        exec(compile(code,'transfer278','exec'),ns)
        ns.update(compile_source=lambda _:new,primitive_graph=pgraph,instruction=lambda sub,pc:instruction(pgraph[pc]))
        ns['generate']()
        ns=script('generate_macro_sites.py',[('range(32)','range(16)'), ("if sub.name.startswith('transfer(')", "if sub.name.startswith('transfer(') and '.jump(' not in sub.name")],{'compile_source':lambda _:new})
        (target/'MacroSites.lean').write_text(ns['generate']())
        order=json.loads((CANDIDATE/'candidate.json').read_text())['register_order']
        physical=(target/'PhysicalRegisters.lean').read_text()
        start,end=physical.index('def registerSlot'),physical.index('theorem slotRegister_registerSlot')
        allocation='def registerSlot (r : RegisterIndex) : Fin 9 :=\n  match r.val with\n'
        allocation+=''.join(f'  | {i if i<8 else "_"} => {fin(order.index(reg))}\n' for i,reg in enumerate(REGISTERS))
        allocation+='\ndef slotRegister (r : Fin 9) : RegisterIndex :=\n  match r.val with\n'
        allocation+=''.join(f'  | {i if i<8 else "_"} => {fin(REGISTERS.index(reg))}\n' for i,reg in enumerate(order))
        (target/'PhysicalRegisters.lean').write_text(physical[:start]+allocation+'\n'+physical[end:])
        selected={p.stem for p in target.glob('*.lean')}|{'RegisterProgram','RegisterMachine','RegisterExecution','ProgramCounterParts','TransferSite'}
        for file in target.glob('*.lean'):
            if file.stem in {'RegisterMachine','RegisterProgram','RegisterExecution','ProgramCounterParts','TransferSite','Machine389'}:continue
            text=file.read_text()
            text=re.sub(r'^import RiemannMachineVerification\.(\w+)$',lambda m:'import '+PREFIX+'.'+m[1] if m[1] in selected else m[0],text,flags=re.M)
            text=text.replace('namespace RiemannMachineVerification','namespace '+PREFIX).replace('end RiemannMachineVerification','end '+PREFIX)
            (DEST/file.name).write_text(text)
    path=CANDIDATE/'compiled.tm'
    text=literal_table(389,str(path.relative_to(ROOT.parent)),hashlib.sha256(path.read_bytes()).hexdigest())
    text=text.replace('namespace RiemannMachineVerification','namespace '+PREFIX).replace('end RiemannMachineVerification','end '+PREFIX)
    (DEST/'Machine389.lean').write_text(text)
    print('Generated ten-bit backend and transfer expansion proofs.')

if __name__=='__main__':generate()
