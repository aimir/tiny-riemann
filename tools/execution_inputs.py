"""Export the certified state and step correspondence for the C++ executor."""
import json
from compile import ROOT


def main():
    folder=ROOT/'machine'
    macros=json.loads((folder/'macros.json').read_text())
    assert len(macros['rounds'])==1
    stage=macros['rounds'][0]
    # The delivered first stage has no nontrivial bisimulation classes.
    assert all(q==r for q,r in stage['mapping'].items())
    (folder/'macro_lengths.tsv').write_text(''.join(f'{key} {length}\n' for key,length in stage['lengths'].items()))
    cert=json.loads((folder/'reduction.json').read_text())
    (folder/'state_map.tsv').write_text(''.join(f'{q} {r}\n' for q,r in cert['mapping'].items()))


if __name__=='__main__':main()
