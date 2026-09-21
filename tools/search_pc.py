"""Search actual compiled PC layouts, with checked control graphs and final counts."""
from pathlib import Path
import argparse
import hashlib
import json
import time

from compile import ROOT, table
from search_final import Evaluator, compile_candidate, graph_key
from macro_reduce import simplify
from tm_reduce import load, dump, abstract_reachable, fast_merge
from pc_layout import compile_layout, check_control_equivalence, check_dispatch


class PCEvaluator(Evaluator):
    def __init__(self, output, source, registers):
        super().__init__(output, [0, 1, 2, 3, 248, 715, 1181, 1235])
        self.source, self.registers = source, registers
        self.baseline, _ = compile_candidate(source, registers)
        output.mkdir(parents=True, exist_ok=True)
        (output / 'source.nql').write_text(source)
        (output / 'registers.json').write_text(json.dumps({'register_order': registers}, indent=2) + '\n')

    def screen_layout(self, layout):
        key = hashlib.sha256(json.dumps([self.source, self.registers, layout], sort_keys=True).encode()).hexdigest()
        if key in self.cache:
            return self.cache[key]
        start = time.monotonic()
        machine = compile_layout(self.source, self.registers, layout)
        checked = check_control_equivalence(self.baseline, machine)
        checked.update(check_dispatch(machine))
        directory = self.output / key[:16]
        directory.mkdir(parents=True, exist_ok=True)
        (directory / 'source.nql').write_text(self.source)
        (directory / 'compiled.tm').write_text(table(machine))
        original = load(directory / 'compiled.tm')
        rows, rounds = simplify(original)
        dump(rows, directory / 'macro.tm')
        (directory / 'macros.json').write_text(json.dumps({'rounds': rounds}) + '\n')
        possible, _ = abstract_reachable(rows, 3)
        cheap, _ = fast_merge(rows, possible, 0)
        result = dict(key=key, layout=layout, registers=self.registers, rows=rows, directory=directory,
                      compiled_states=len(original), macro_states=len(rows), graph=graph_key(rows),
                      pc_bits=machine.main.order, layout_stats=machine.builder.layout_stats,
                      jump_sites=machine.builder.jump_sites,
                      family='pc-layout', mutation=layout.get('jump', 'relative'),
                      proxy=sum(v > 0 for v in possible.values()) - .7 * sum(v in (1, 2) for v in possible.values()),
                      screen_states=len(cheap), screen_seconds=time.monotonic() - start, checks=checked)
        self.cache[key] = result
        self.save(result)
        print('screen', key[:16], machine.main.order, len(original), len(rows), len(cheap), layout, flush=True)
        return result


def configurations(random_count):
    for inline in ([], ['square()'], ['harmonic()'], ['harmonic()', 'square()']):
        for jump in ('relative', 'suffix', 'suffix-full'):
            yield {'inline': inline, 'jump': jump}
        for threshold in (0, 1, 2, 3, 4, 5, 6):
            yield {'inline': inline, 'jump': 'hybrid', 'threshold': threshold}
        for packed in (['main()'], ['main()', 'harmonic()', 'square()']):
            for placement in ('source', 'size'):
                yield {'inline': inline, 'pack': packed, 'placement': placement}
    for seed in range(random_count):
        yield {'jump': 'random', 'seed': seed}
        yield {'inline': ['square()'], 'jump': 'random', 'seed': seed}
        yield {'inline': ['square()'], 'pack': ['main()'], 'placement': 'random', 'seed': seed}


def focused_configurations():
    for name in ('square()', 'harmonic()'):
        for occurrence in (0, 1):
            for jump in ('relative', 'hybrid'):
                yield {'inline_calls': {name: [occurrence]}, 'jump': jump, 'threshold': 3}
    for inline in ([], ['square()']):
        for category in ('main()', 'harmonic()', 'square()', 'transfer'):
            for threshold in (1, 2, 3, 4):
                yield {'inline': inline, 'jump': 'relative',
                       'procedure_jumps': {category: 'hybrid'}, 'threshold': threshold}


def local_configurations(source, registers, base):
    yield base
    machine = compile_layout(source, registers, base)
    for site, info in sorted(machine.builder.jump_sites.items()):
        # The first sweep showed that long suffix overwrites are uncompetitive.
        for choice in info['choices']:
            if choice == info['chosen'] or (isinstance(choice, int) and choice > 4):
                continue
            config = json.loads(json.dumps(base))
            config.setdefault('jump_orders', {})[site] = choice
            yield config


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=ROOT / 'results/pc-layout')
    parser.add_argument('--random', type=int, default=16)
    parser.add_argument('--promote', type=int, default=12)
    parser.add_argument('--exact-finalists', type=int, default=3)
    parser.add_argument('--exact-seconds', type=int, default=60)
    parser.add_argument('--target', type=int, default=294)
    parser.add_argument('--suite', choices=('broad', 'focused', 'local'), default='broad')
    parser.add_argument('--base', type=Path, help='Saved candidate.json supplying the layout for the local suite')
    parser.add_argument('--keep-screened', action='store_true', help='Also retain full tables for candidates not promoted')
    args = parser.parse_args()
    source = (ROOT / 'machine/riemann295.nql').read_text()
    registers = json.loads((ROOT / 'machine/riemann295.layout.json').read_text())['register_order']
    args.output.mkdir(parents=True, exist_ok=True)
    evaluator = PCEvaluator(args.output, source, registers)
    screened = []
    if args.suite == 'broad':
        configs = configurations(args.random)
    elif args.suite == 'focused':
        configs = focused_configurations()
    else:
        assert args.base, '--suite local requires --base'
        configs = local_configurations(source, registers, json.loads(args.base.read_text())['layout'])
    for config in configs:
        screened.append(evaluator.screen_layout(config))
    unique = {}
    for c in sorted(screened, key=lambda c: (c['screen_states'], c['macro_states'], c['key'])):
        unique.setdefault(c['graph'], c)
    finalists = list(unique.values())[:args.promote]
    for candidate in finalists:
        evaluator.full(candidate)
    for candidate in sorted(finalists, key=lambda c: (c['final_states'], c['macro_states']))[:args.exact_finalists]:
        evaluator.exact(candidate, args.target, args.exact_seconds)
    best = min(finalists, key=lambda c: c['final_states'])
    report = {'suite': args.suite, 'screened': len(screened), 'unique_graphs': len(unique), 'fully_reduced':len(finalists),
              'exact_queries': min(args.exact_finalists, len(finalists)), 'best_candidate':best['key'],
              'best_states': best['final_states'], 'best_pc_bits':best['pc_bits'],
              'scope': 'Experimental candidates; control and dispatch checked in Python, not formally proved in Lean.'}
    (args.output / 'report.json').write_text(json.dumps(report, indent=2) + '\n')
    if not args.keep_screened:
        for candidate in screened:
            if 'final_states' not in candidate:
                for name in ('source.nql', 'compiled.tm', 'macro.tm', 'macros.json'):
                    (candidate['directory'] / name).unlink(missing_ok=True)
    print(json.dumps(report), flush=True)


if __name__ == '__main__':
    main()
