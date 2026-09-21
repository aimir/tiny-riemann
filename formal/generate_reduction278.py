"""Kernel-checkable finite rewrites, reachability and quotient to 278 states."""
import hashlib
import shutil
import tempfile
from generate_optimized278 import *
from generate_tables import generate as literal_table
from tm_reduce import load

FINAL = ROOT.parent/'results/clique-target278/fefaa549f250fd12/quotient-278.tm'
DIGEST = '268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306'


def generate():
    assert hashlib.sha256(FINAL.read_bytes()).hexdigest()==DIGEST
    cert=json.loads(FINAL.with_suffix('.certificate.json').read_text())
    originals=ROOT/'RiemannMachineVerification'
    with tempfile.TemporaryDirectory(prefix='riemann278-reduction-') as folder:
        temp=Path(folder);target=temp/'formal/RiemannMachineVerification';target.mkdir(parents=True)
        (temp/'machine').mkdir()
        for stage in ('compiled','macro'):shutil.copyfile(CANDIDATE/f'{stage}.tm',temp/f'machine/riemann.{stage}.tm')
        shutil.copyfile(CANDIDATE/'macros.json',temp/'machine/macros.json')
        shutil.copyfile(FINAL.with_suffix('.certificate.json'),temp/'machine/reduction.json')
        def sizes(text):
            return text.replace('381','389').replace('342','339').replace('341','338')
        for name in ('MacroProofSupport','MacroCorrectness'):
            (target/f'{name}.lean').write_text(sizes((originals/f'{name}.lean').read_text()))
        for script in ('generate_macro_data.py','generate_macro_proofs.py','generate_invariants.py'):
            code=sizes((ROOT/script).read_text())
            exec(compile(code,str(ROOT/script),'exec'),{'__file__':str(temp/'formal'/script),'__name__':'__main__'})
        count=len(list(target.glob('Invariant[0-9].lean')))
        out=''.join(f'import RiemannMachineVerification.Invariant{i}\n' for i in range(count))
        out+='import RiemannMachineVerification.WindowInvariant\n\nset_option maxRecDepth 8192\nset_option maxHeartbeats 0\n\nnamespace RiemannMachineVerification\n\n'
        out+='theorem initial_mask_trivial : ∀ q b, inv0_before q b = true := by\n  intro q b; fin_cases q <;> cases b <;> rfl\n\n'
        for i in range(count):
            name='read_mask_verified' if i==count-1 else f'read_mask{i}_verified'
            previous='(fun _ q _ => initial_mask_trivial q _)' if i==0 else f'read_mask{i-1}_verified'
            out+=f'theorem {name} : ∀ t, RespectsReadMask inv{i}_after (run machine339 t) :=\n'
            out+=f'  certify_read_mask machine339 inv{i}_before inv{i}_after inv{i}_predicate\n    inv{i}_initial (by\n      intro q t b hb ht hp\n      have h := inv{i}_closed q t b hb ht hp\n      cases he : (machine339.transition q b).next <;> simpa only [he] using h)\n    inv{i}_read_mask {previous}\n\n'
        (target/'Invariants.lean').write_text(out+'end RiemannMachineVerification\n')
        names={p.stem for p in target.glob('*.lean')}|{'Machine389','Machine339'}
        for file in target.glob('*.lean'):
            text=file.read_text()
            text=re.sub(r'^import RiemannMachineVerification\.(\w+)$',lambda m:'import '+PREFIX+'.'+m[1] if m[1] in names else m[0],text,flags=re.M)
            text=text.replace('namespace RiemannMachineVerification','namespace '+PREFIX).replace('end RiemannMachineVerification','end '+PREFIX)
            (DEST/file.name).write_text(text)
    path=CANDIDATE/'macro.tm'
    text=literal_table(339,str(path.relative_to(ROOT.parent)),hashlib.sha256(path.read_bytes()).hexdigest())
    text=text.replace('namespace RiemannMachineVerification','namespace '+PREFIX).replace('end RiemannMachineVerification','end '+PREFIX)
    (DEST/'Machine339.lean').write_text(text)
    (originals/'Machine278.lean').write_text(literal_table(278,str(FINAL.relative_to(ROOT.parent)),DIGEST))
    sources=list(load(path));targets=list(load(FINAL))
    out=header(PREFIX+'.Invariants','RiemannMachineVerification.Machine278')
    out+='def quotientMapTable : Array (Fin 278) := #[\n'
    out+=',\n'.join('  '+fin(targets.index(cert['mapping'][q] if cert['possible'][q] else '!ENTRY')) for q in sources)+'\n]\n\n'
    out+='def quotientMap (q : Fin 339) : Fin 278 :=\n  quotientMapTable[q.val]\'(by simpa only [show quotientMapTable.size = 339 from rfl] using q.isLt)\n\n'
    out+=f'theorem quotient_transitions : ∀ (q : Fin 339) (b : Bool),\n    inv{count-1}_after q b = true →\n    machine278.transition (quotientMap q) b =\n      renameInstruction quotientMap (machine339.transition q b) := by\n  intro q b h\n  fin_cases q <;> cases b\n'
    for q in sources:
        for b in (0,1):out+='  · rfl\n' if cert['possible'][q]&(1<<b) else '  · exact Bool.noConfusion (show false = true from h)\n'
    out+='''
theorem machine339_iff_machine278 : HaltsBlank machine339 ↔ HaltsBlank machine278 := by
  apply halts_iff_of_invariant_quotient machine339 machine278 quotientMap
    (fun c => ∃ t, run machine339 t = c)
  · exact ⟨0, rfl⟩
  · rintro c ⟨t, rfl⟩; exact ⟨t + 1, rfl⟩
  · rfl
  · rintro c ⟨t, rfl⟩ q hq
    exact quotient_transitions q _ (read_mask_verified t q hq)
'''
    write('Quotient278',out)
    out='''import RiemannMachineVerification.Optimized278.BackendCorrectness
import RiemannMachineVerification.Optimized278.MacroRegisterCorrectness
import RiemannMachineVerification.Optimized278.RegisterRefinement
import RiemannMachineVerification.Optimized278.MacroCorrectness
import RiemannMachineVerification.Optimized278.Quotient278
import RiemannMachineVerification.CompilerCorrectness

namespace RiemannMachineVerification

/-- The literal 278-state machine halts exactly on a counterexample to the
approved arithmetic formulation. Both the predicate and blank-tape semantics
are the unchanged accepted definitions. -/
theorem machine278_correct :
    HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n :=
  Optimized278.machine339_iff_machine278.symm.trans
    (Optimized278.machine389_iff_machine339.symm.trans
      (Optimized278.machine389_iff_primitive.trans
        (Optimized278.primitive_iff_macro.trans
          (Optimized278.macro_iff_original.trans macro_correct))))

end RiemannMachineVerification
'''
    (originals/'Correctness278.lean').write_text(out)
    print('Generated literal 278-state correctness target; not verified until Lean succeeds.')

if __name__=='__main__':generate()
