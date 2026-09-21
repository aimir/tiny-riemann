"""Check that exhaustive local edits preserve source operations and parents."""
import json
from compile import ROOT, grammar
from search_layout import show, walk
from search_neighborhood import neighbors
from search_unified import source_at
import nqlast as n


def without_padding(source):
    ast,=grammar.parse_string(source,parse_all=True)
    for block in list(walk(ast)):
        if isinstance(block,n.Block):
            block.children=[e for e in block.children if not
                            (isinstance(e,n.Call) and e.func.startswith('noop_'))]
    return show(ast)


def main():
    counts={}
    for key in ('fe4def10034af93f','46067991bb65ded1'):
        d=ROOT/'results/unified-wide'/key
        base=json.loads((d/'candidate.json').read_text());base['source']=source_at(d)
        snapshot=json.dumps(base,sort_keys=True)
        generated=list(neighbors(base));counts[key]=len(generated)
        assert json.dumps(base,sort_keys=True)==snapshot,'Mutated parent'
        source=without_padding(base['source'])
        swaps=0
        for c in generated:
            assert c['parent']==base['key']
            assert without_padding(c['source'])==source,'Changed non-padding source'
            if c['mutation']==['register-transposition']:
                order=c['register_order'];original=base['register_order'] if len(order)==len(base['register_order']) else base['registers']
                assert sorted(order)==sorted(original)
                assert sum(x!=y for x,y in zip(order,original))==2
                swaps+=1
        sizes={len(base['register_order']),len(base['registers'])}
        assert swaps==sum(n*(n-1)//2 for n in sizes)
    print(json.dumps(dict(status='passed',neighbors=counts),indent=2))


if __name__=='__main__':main()
