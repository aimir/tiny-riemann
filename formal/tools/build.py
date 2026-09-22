"""Build local proof modules serially, retaining Lake's dependency and cache checks.

Only one uncached project module is submitted at a time. Pinned external
libraries must already be built (use the mathlib cache on a fresh checkout).
The package's weakLeanArgs cap each Lean compiler at 16384 MiB and two threads.
"""
import argparse
import re
import subprocess

from layout import FORMAL, P, proof_sources

MEMORY_MB = 16384
THREADS = 2


def lean_command(file):
    return ['lake', 'env', 'lean', f'--memory={MEMORY_MB}', f'--threads={THREADS}', str(file)]


def build(target=P):
    sources = proof_sources()
    modules = {'.'.join(p.relative_to(FORMAL).with_suffix('').parts): p for p in sources}
    if target not in modules:
        raise SystemExit(f'Unknown local proof module: {target}')
    imports = {m: re.findall(r'^import ([\w.]+)', p.read_text(), re.M) for m, p in modules.items()}
    closure, visiting = set(), set()

    def collect(module):
        if module in visiting:
            raise SystemExit(f'Import cycle at {module}')
        if module in closure:
            return
        visiting.add(module)
        for dep in imports[module]:
            if dep in modules:
                collect(dep)
        visiting.remove(module)
        closure.add(module)

    collect(target)
    logs = FORMAL / '.logs' / 'serial-build'
    logs.mkdir(parents=True, exist_ok=True)
    # Do not let two invocations of this driver overlap on the same checkout.
    import fcntl
    with (logs / 'build.lock').open('w') as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            raise SystemExit('Another serial proof build is already running in this checkout.')

        def invoke(args, log):
            with log.open('w') as output:
                return subprocess.run(['lake', *args], cwd=FORMAL,
                                      stdout=output, stderr=subprocess.STDOUT).returncode

        def ready(module):
            return invoke(['--no-build', 'build', module], logs / 'cache-check.log') == 0

        if ready(target):
            print(f'Cached and up to date: {target}', flush=True)
            return
        external = sorted({dep for m in closure for dep in imports[m] if dep not in modules})
        if external and invoke(['--no-build', 'build', *external], logs / 'dependencies.log'):
            raise SystemExit('External Lean dependencies are not cached. Run `lake exe cache get` from formal/ first. '
                             'See .logs/serial-build/dependencies.log.')
        print(f'Serial build: {target}; at most one local compiler, {THREADS} threads, '
              f'{MEMORY_MB} MiB Lean allocation limit. Reusing checked caches.', flush=True)
        done = set()
        rebuilt = 0

        def mark(module):
            if module in done:
                return
            done.add(module)
            for dep in imports[module]:
                if dep in modules:
                    mark(dep)

        def visit(module):
            nonlocal rebuilt
            if module in done:
                return
            if ready(module):
                mark(module)
                return
            for dep in imports[module]:
                if dep in modules:
                    visit(dep)
            log = logs / (module + '.log')
            print(f'[{len(done)+1}/{len(closure)}] Checking {module}', flush=True)
            if invoke(['build', module], log):
                print('\n'.join(log.read_text().splitlines()[-35:]), flush=True)
                raise SystemExit(f'Build failed: {module}. Full output: {log.relative_to(FORMAL)}')
            done.add(module)
            rebuilt += 1

        visit(target)
        print(f'Serial build passed: {rebuilt} modules rebuilt; {len(done)-rebuilt} reused.', flush=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('target', nargs='?', default=P)
    args = parser.parse_args()
    build(args.target)


if __name__ == '__main__':
    main()
