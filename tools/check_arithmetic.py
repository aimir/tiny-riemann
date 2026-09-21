"""Reproduce experimental arithmetic lowering and check its TM certificates.

Source-to-register correctness has differential regression evidence only.
Backend and reduction checks do not close that unbounded correctness gap.
"""
from pathlib import Path
import argparse
import hashlib
import json
import tempfile

from compile import ROOT, table
from search_final import compile_candidate
from register_lowering import compile_registers
from pc_layout import check_dispatch, check_backend
from tm_reduce import load, dump
from macro_reduce import simplify
from verify import reduction_certificate, run_register
from verify_macros import verify
from test_register_lowering import run_tests


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--candidate',type=Path,required=True)
    p.add_argument('--output',type=Path)
    p.add_argument('--machine',type=Path,help='Defaults to the candidate final.tm')
    p.add_argument('--certificate',type=Path,help='Defaults to the candidate reduction.json')
    args=p.parse_args()
    directory=args.candidate
    final=args.machine or directory/'final.tm'
    certificate=args.certificate or directory/'reduction.json'
    metadata=json.loads((directory/'candidate.json').read_text())
    source=(directory.parent/'source.nql').read_text()
    order=json.loads((ROOT/'machine/riemann295.layout.json').read_text())['register_order']
    reference,_=compile_candidate((ROOT/'machine/riemann295.nql').read_text(),order)
    machine,actual=compile_registers(source,metadata['register_order'],metadata['layout'],metadata['lowering'])
    assert actual==metadata['registers']
    assert table(machine)==(directory/'compiled.tm').read_text()
    with tempfile.TemporaryDirectory(prefix='riemann-register-check-') as temp:
        temp=Path(temp)
        raw=temp/'reference.tm';raw.write_text(table(reference))
        rename=json.loads((ROOT/'machine/riemann295.proof-inputs.json').read_text())['state_renaming']
        normalized={rename.get(q,q):[(w,d,rename.get(t,t)) for w,d,t in edges] for q,edges in load(raw).items()}
        dump(normalized,temp/'normalized.tm')
        assert (temp/'normalized.tm').read_bytes()==(ROOT/'machine/riemann295.compiled.tm').read_bytes()
        shortened,_=simplify(load(directory/'compiled.tm'))
        dump(shortened,temp/'macro.tm')
        assert (temp/'macro.tm').read_bytes()==(directory/'macro.tm').read_bytes()
    checks={'arithmetic_regressions':run_tests()}
    checks.update(check_dispatch(machine))
    assert len(actual)<=len(order),'No verified reference for extra physical registers'
    checks.update(check_backend(reference,machine,list(zip(order,actual))))
    for n in (1,2):
        values,steps=run_register(machine,iterations=n,limit=20000000)
        assert values['_Gx']==n and values.get('_Gdenom',0)==0
    checks['candidate_main_iterations']=2
    checks['macros']=verify(directory/'compiled.tm',directory/'macro.tm',directory/'macros.json')
    checks['quotient']=reduction_certificate(directory/'macro.tm',final,certificate)
    report={'status':'experimental; differential arithmetic tests and independent backend/reduction checks passed; not Lean verified',
            'machine_states':len(load(final)),'machine_file':str(final),'certificate_file':str(certificate),'registers':actual,'pc_bits':machine.main.order,
            'lowering':metadata['lowering'],'layout':metadata['layout'],'checks':checks,
            'source_analysis':machine.builder.analysis.report,
            'reference_compilation':'byte-for-byte match with verified riemann295.compiled.tm',
            'candidate_reproduction':'compiled and macro tables match byte for byte',
            'sha256':{str(path):hashlib.sha256(path.read_bytes()).hexdigest() for path in [final,certificate,directory.parent/'source.nql']+[directory/name for name in ('compiled.tm','macro.tm','macros.json','candidate.json')]},
            'implementation_sha256':{str(path.relative_to(ROOT)):hashlib.sha256(path.read_bytes()).hexdigest() for path in sorted((ROOT/'tools').glob('*.py'))},
            'formal_status':'Source-to-register refinement is not proved. The default Lean headline remains machine295_correct.'}
    text=json.dumps(report,indent=2)+'\n'
    if args.output: args.output.write_text(text)
    print(text,end='')


if __name__=='__main__': main()
