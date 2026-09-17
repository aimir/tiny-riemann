"""Exhaustive, independent validation of short transition replacements."""
from itertools import product
from pathlib import Path
import argparse
import json
from verify import parse_table


def normalized(rows):
    return {q:[(int(w),'R' if m==1 else 'L',r) for w,m,r in row] for q,row in rows.items()}


def verify(input_path,output_path,certificate_path):
    current=parse_table(input_path)
    cert=json.loads(Path(certificate_path).read_text())
    cases=0;rewrites=0
    for stage in cert['rounds']:
        assert current==normalized(stage['input'])
        rewritten={q:list(row) for q,row in current.items()}
        for key,length in stage['lengths'].items():
            q,bit=key.rsplit(' ',1);bit=int(bit)
            assert 1<length<=7 and length%2==1
            radius=length-1
            positions=[p for p in range(-radius,radius+1) if p!=0]
            expected=None
            for values in product((0,1),repeat=len(positions)):
                initial=dict(zip(positions,values));initial[0]=bit
                tape=initial.copy();head=0;state=q
                for _ in range(length):
                    assert state!='HALT'
                    w,d,state=current[state][tape[head]]
                    tape[head]=w;head+=1 if d=='R' else -1
                assert head in (-1,1)
                assert all(tape[p]==initial[p] for p in positions)
                result=(tape[0],'R' if head==1 else 'L',state)
                if expected is None:expected=result
                assert result==expected
                cases+=1
            rewritten[q][bit]=expected;rewrites+=1
        reached=set();pending=['!ENTRY']
        while pending:
            q=pending.pop()
            if q=='HALT' or q in reached:continue
            reached.add(q);pending.extend(e[2] for e in rewritten[q])
        live={q:row for q,row in rewritten.items() if q in reached}
        assert live==normalized(stage['rewritten'])
        mapping=stage['mapping'];next_rows=normalized(stage['output'])
        assert mapping['!ENTRY']=='!ENTRY' and mapping['HALT']=='HALT'
        for q,row in live.items():
            for b,(w,d,r) in enumerate(row):
                assert next_rows[mapping[q]][b]==(w,d,mapping[r])
        assert set(next_rows)=={mapping[q] for q in live}
        current=next_rows
    assert current==parse_table(output_path)
    return {'macro_rewrites':rewrites,'exhaustive_tape_windows':cases,'states':len(current),'certificate':'valid'}


def main():
    p=argparse.ArgumentParser()
    p.add_argument('input',type=Path);p.add_argument('output',type=Path);p.add_argument('certificate',type=Path)
    args=p.parse_args()
    print(verify(args.input,args.output,args.certificate))


if __name__=='__main__':main()
