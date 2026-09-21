"""Checks for combined search selection, certificate reuse and joint mutation."""
import json
import random
import tempfile
from pathlib import Path
from unittest.mock import patch
from search_unified import BASE,configuration,source_at,select,UnifiedEvaluator,mutate
from compile import table
from fragments import compile_fragments
from test_fragments import run_registers


def run_tests():
    source=source_at(BASE);saved=json.loads((BASE/'candidate.json').read_text())
    saved.update(source=source,parent=None,mutation=['seed'])
    saved['lowering']={'consume':['lcm','num','c']}
    m,_=compile_fragments(source,saved['register_order'],saved['layout'],saved['lowering'],saved['fragments'])
    assert table(m)==(BASE/'compiled.tm').read_text()
    with tempfile.TemporaryDirectory(prefix='riemann-unified-test-') as tmp:
        ev=UnifiedEvaluator(Path(tmp),source);c=ev.screen(saved)
        assert ev.inherit(c,BASE) and c['final_states']==282
        # A duplicate from a different ancestry must not overwrite a survivor.
        duplicate=configuration(c);duplicate.update(parent=c['key'],mutation=['duplicate'])
        assert ev.screen(duplicate) is c and c['parent'] is None
        assert c['final_states']==282
        bad=configuration(c);bad['layout']['threshold']=2
        with patch('search_unified.zero_equivalence',side_effect=AssertionError('Invalid replacement')):
            try:ev.screen(bad)
            except AssertionError:pass
            else:raise AssertionError('Failed certificate was accepted')
        assert len(ev.cache)==1 and len(list(Path(tmp).glob('*/candidate.json')))==1
    a=dict(saved,key='a',graph='a',macro_states=400,final_states=282)
    b=dict(saved,key='b',graph='b',macro_states=200,final_states=290)
    assert select([b,a],1,'final_states')[0]['key']=='a'
    assert len(select([a,dict(a,key='duplicate')],6,'final_states'))==1
    rng=random.Random(282004);mutations={};rejected=0
    for kind in ['source','registers','pc','lowering','fragments']:
        count=0
        for _ in range(8):
            try:
                spec=mutate(saved,rng,kind)
                if spec is None:continue
                m,regs=compile_fragments(spec['source'],spec['register_order'],spec['layout'],spec['lowering'],spec['fragments'])
                values,_,halted=run_registers(m)
                assert values['_Gx']==2 and not halted
                count+=1
            except (AssertionError,ValueError,KeyError,StopIteration,NotImplementedError):rejected+=1
        assert count,kind
        mutations[kind]=count
    return dict(canonical_consumption_byte_identical=True,checked_282_inherited=True,
                final_count_overrides_macro_score=True,duplicate_preserves_ancestry=True,
                failed_certificate_removed_from_cache=True,
                mutations_exercised=mutations,rejected_mutations=rejected)


if __name__=='__main__':print(json.dumps(run_tests(),indent=2))
