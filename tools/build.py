"""Rebuild the historical 299-state baseline and its certificate.

Use check_reallocated.py to reproduce the current 295-state construction.
"""
from pathlib import Path
import argparse
import hashlib
import json
import tempfile
from compile import ROOT, compile_source, table
from tm_reduce import load, abstract_reachable, fast_merge, dump
from macro_reduce import simplify


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def rebuild(output):
    spec=json.loads((ROOT/'machine/manifest.json').read_text())
    machine=compile_source((ROOT/'machine/riemann.nql').read_text())
    raw=output/'riemann.compiled.tm'
    raw.write_text(table(machine))
    original_rows=load(raw)
    rows,macro_rounds=simplify(original_rows)
    dump(rows,output/'riemann.macro.tm')
    (output/'macros.json').write_text(json.dumps({'rounds':macro_rounds},indent=2)+'\n')
    allowed={s:3 for s in rows};trace=[]
    for left,right in spec['analysis_windows']:
        possible,_=abstract_reachable(rows,0,left,right,allowed)
        allowed={s:allowed[s]&possible[s] for s in rows}
        trace.append({'left':left,'right':right,'possible':allowed.copy()})
    reduced,mapping=fast_merge(rows,allowed,spec['merge_seed'])
    dump(reduced,output/'riemann.tm')
    certificate={'version':1,'trace':trace,'mapping':mapping,'possible':allowed,'merge_seed':spec['merge_seed']}
    (output/'reduction.json').write_text(json.dumps(certificate,indent=2)+'\n')
    assert len(original_rows)==spec['compiled_states']
    assert len(rows)==spec['macro_states']
    assert len(reduced)==spec['states']
    return {'compiled_states':len(original_rows),'macro_states':len(rows),'states':len(reduced),'pc_bits':machine.builder.pc_bits}


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--check',action='store_true',help='Build in a temporary directory and require identical artifacts')
    args=p.parse_args()
    if args.check:
        with tempfile.TemporaryDirectory() as temp:
            output=Path(temp)
            stats=rebuild(output)
            for name in ('riemann.compiled.tm','riemann.macro.tm','macros.json','riemann.tm','reduction.json'):
                assert (output/name).read_bytes()==(ROOT/'machine'/name).read_bytes(),name
        manifest=json.loads((ROOT/'machine/manifest.json').read_text())
        for path,expected in manifest['sha256'].items():
            assert digest(ROOT/path)==expected,path
        stats['reproducibility']='byte-for-byte match; hashes valid'
    else:
        stats=rebuild(ROOT/'machine')
    print(json.dumps(stats),flush=True)


if __name__=='__main__':main()
