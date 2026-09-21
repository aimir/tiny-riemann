"""Generate untrusted finite data for the kernel-checked macro certificate."""
from pathlib import Path
import json

ROOT = Path(__file__).resolve().parent
source = [line.split()[0] for line in (ROOT.parent/'machine/riemann.compiled.tm').read_text().splitlines()]
target = [line.split()[0] for line in (ROOT.parent/'machine/riemann.macro.tm').read_text().splitlines()]
cert, = json.loads((ROOT.parent/'machine/macros.json').read_text())['rounds']
assert all(k == v for k,v in cert['mapping'].items())
out = ['import RiemannMachineVerification.LocalWindow',
       'import RiemannMachineVerification.Machine381',
       'import RiemannMachineVerification.Machine342', '',
       'set_option maxRecDepth 4096',
       'set_option maxHeartbeats 0', '',
       'namespace RiemannMachineVerification', '',
       'def macroEmbeddingTable : Array (Fin 381) := #[']
out += [f'  ⟨{source.index(s)}, by decide⟩' + (',' if i < 341 else '') for i,s in enumerate(target)]
out += [']', '', 'def macroEmbedding (q : Fin 342) : Fin 381 :=',
        "  macroEmbeddingTable[q.val]'(by simpa only [show macroEmbeddingTable.size = 342 from rfl] using q.isLt)",
        '', 'def macroLengthTable : Array (ℕ × ℕ) := #[']
out += [f"  ({cert['lengths'].get(s+' 0',1)}, {cert['lengths'].get(s+' 1',1)})" + (',' if i<341 else '') for i,s in enumerate(target)]
out += [']', '', 'def macroLength : Option (Fin 342) → Bool → ℕ',
        '  | none, _ => 1',
        '  | some q, b =>',
        "      let row := macroLengthTable[q.val]'(by simpa only [show macroLengthTable.size = 342 from rfl] using q.isLt)",
        '      if b then row.2 else row.1', '',
        'def window5 (a b c d e : Bool) : Fin 5 → Bool := ![a, b, c, d, e]', '',
        'theorem window5_eta (tape : Fin 5 → Bool) :',
        '    window5 (tape 0) (tape 1) (tape 2) (tape 3) (tape 4) = tape := by',
        '  funext p',
        '  fin_cases p <;> rfl', '',
        'def MacroCheckFor (q : Fin 342) : Prop :=',
        '  ∀ a b c d e : Bool,',
        '    let c : LocalConfiguration 342 := ⟨some q, 2, window5 a b c d e⟩',
        '    localAdvance machine381 (renameLocal macroEmbedding c)',
        '        (macroLength c.state (localRead c)) =',
        '      renameLocal macroEmbedding (localStep machine342 c)', '',
        'instance (q : Fin 342) : Decidable (MacroCheckFor q) :=',
        '  inferInstanceAs (Decidable (∀ a b c d e : Bool,',
        '    let c : LocalConfiguration 342 := ⟨some q, 2, window5 a b c d e⟩',
        '    localAdvance machine381 (renameLocal macroEmbedding c)',
        '        (macroLength c.state (localRead c)) =',
        '      renameLocal macroEmbedding (localStep machine342 c)))', '',
        'end RiemannMachineVerification', '']
(ROOT/'RiemannMachineVerification/MacroData.lean').write_text('\n'.join(out))
