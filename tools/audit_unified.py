"""Check a saved beam's identities, ancestry, feasible counts and certificates."""
from pathlib import Path
import argparse
import hashlib
import json
from compile import ROOT
from tm_reduce import load
from solve_quotient import check_mapping


def audit(directory):
    report_path=directory/'report.json'
    if not report_path.exists():report_path=directory/'checkpoint.json'
    report=json.loads(report_path.read_text());candidates={};certificates=0
    for path in directory.glob('*/candidate.json'):
        c=json.loads(path.read_text());candidates[c['key']]=c
        source=(path.parent/'source.nql').read_text()
        key=hashlib.sha256(json.dumps([source,c['register_order'],c['layout'],c['lowering'],c['fragments']],sort_keys=True).encode()).hexdigest()
        assert c['key']==key and path.parent.name==key[:16]
        if 'final_states' not in c:continue
        rows=load(path.parent/'macro.tm');final=load(path.parent/'final.tm')
        cert=json.loads((path.parent/'reduction.json').read_text())
        mapped=check_mapping(rows,cert['possible'],cert['mapping'])
        assert {q:tuple(edges) for q,edges in mapped.items()}==final
        assert c['final_states']==len(final)
        assert c['macro_states']==len(rows)
        assert c['compiled_states']==len(load(path.parent/'compiled.tm'))
        certificates+=1
        if 'inherited_from' in c:
            old=ROOT/c['inherited_from']
            assert (path.parent/'compiled.tm').read_bytes()==(old/'compiled.tm').read_bytes()
            assert (path.parent/'macro.tm').read_bytes()==(old/'macro.tm').read_bytes()
        for query in c.get('exact_history',[]):
            answer=(path.parent/f"quotient-{query['target']}.solver.txt").read_text()
            assert answer.splitlines()[0]==query['status']
    assert len(candidates)==report['screened']
    assert certificates==report['fully_reduced']
    best=min(c['final_states'] for c in candidates.values() if 'final_states' in c)
    assert report['best_states']==best==candidates[report['best_candidate']]['final_states']
    previous={k for k,c in candidates.items() if c['generation']==0}
    initial=directory/'initial-beam.json'
    if initial.exists():
        entries=json.loads(initial.read_text())
        assert all(e['key'] in previous and candidates[e['key']]['final_states']==e['states'] for e in entries)
        available=len({candidates[k]['graph'] for k in previous})
        assert len(entries)==min(report['settings']['beam'],available)
        previous={e['key'] for e in entries}
    counts=[]
    for record in report['generations']:
        generation=record['generation']
        children=[c for c in candidates.values() if c['generation']==generation]
        assert len(children)==record['screened']
        assert all(c['parent'] in previous for c in children)
        assert set(record['parents'])=={c['parent'] for c in children}
        for survivor in record['survivors']:
            c=candidates[survivor['key']]
            assert c['final_states']==survivor['states'] and c.get('parent')==survivor['parent']
        counts.append(min(c['states'] for c in record['survivors']))
        previous={c['key'] for c in record['survivors']}
    pending=report.get('pending_generation')
    if pending:
        assert report['status']=='stopped_after_supplemental_target'
        assert pending['generation']==len(report['generations'])+1
        children=[c for c in candidates.values() if c['generation']==pending['generation']]
        assert len(children)==pending['screened']
        assert sum('final_states' in c for c in children)==pending['fully_reduced']
        assert all(c['parent'] in previous for c in children)
        assert set(pending['parents'])=={c['parent'] for c in children}
    recorded={0}|{r['generation'] for r in report['generations']}
    if pending:recorded.add(pending['generation'])
    assert all(c['generation'] in recorded for c in candidates.values())
    assert all(b<=a for a,b in zip(counts,counts[1:]))
    features={key:len({json.dumps(c[key],sort_keys=True) for c in candidates.values()})
              for key in ('layout','lowering','fragments','register_order')}
    sources={hashlib.sha256((directory/c['key'][:16]/'source.nql').read_bytes()).hexdigest() for c in candidates.values()}
    return dict(status='passed',candidates=len(candidates),checked_quotient_mappings=certificates,
                source_variants=len(sources),configuration_variants=features,
                best_per_generation=counts,parents_per_generation=[len(r['parents']) for r in report['generations']],
                pending_generation=pending,
                best_states=best,scope='Artifact and search audit; not a whole-machine Lean proof.')


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('directory',type=Path);p.add_argument('--output',type=Path)
    args=p.parse_args();result=json.dumps(audit(args.directory),indent=2)+'\n'
    if args.output:args.output.write_text(result)
    print(result,end='')


if __name__=='__main__':main()
