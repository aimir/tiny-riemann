"""Check the historical 299-state construction and save its validation report.

Use check_reallocated.py for the current 295-state tables and certificates.
"""
import json
from compile import ROOT, compile_source, table
from verify import (arithmetic_tests, comparison_tests, cutoff_certificate,
                    lowering_tests, run_register, reduction_certificate)
from verify_macros import verify as verify_macros


def main():
    folder=ROOT/'machine'
    source=(folder/'riemann.nql').read_text()
    baseline=compile_source((ROOT/'reference/riemann-744.nql').read_text())
    assert table(baseline)==(ROOT/'reference/riemann-744.tm').read_text()
    compiled=compile_source(source)
    assert table(compiled)==(folder/'riemann.compiled.tm').read_text()
    report={'baseline_states':len(baseline.reachable()),'baseline_byte_exact':True,
            'cutoff_cases':cutoff_certificate(),
            'arithmetic':arithmetic_tests(source,difference=True),
            'comparison_cases':comparison_tests(source),
            'lowering_cases':lowering_tests()}
    print('Arithmetic and compiler checks passed.',flush=True)
    registers,steps=run_register(compiled,iterations=2)
    assert registers['_Gx']==2 and registers['_Gnum']==324 and registers.get('_Gdenom',0)==0
    report['compiled_register_execution']={'completed_iterations':2,'instructions':steps}
    report['macros']=verify_macros(folder/'riemann.compiled.tm',folder/'riemann.macro.tm',folder/'macros.json')
    print('All-input transition replacement certificate passed.',flush=True)
    report['reduction']=reduction_certificate(folder/'riemann.macro.tm',folder/'riemann.tm',folder/'reduction.json')
    print('Unbounded blank-tape state reduction certificate passed.',flush=True)
    (folder/'validation.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2),flush=True)


if __name__=='__main__':main()
