# Formally verified 278-state Riemann machine

**Start with [RiemannMachineVerification.lean](RiemannMachineVerification.lean):
the headline theorem comes first, immediately followed by the exact definitions
used in its statement.**

```lean
theorem machine278_correct :
    HaltsBlank machine278 ↔ ∃ n : ℕ, Counterexample n
```

The machine is the [literal primary 278-state table](../results/clique-target278/fefaa549f250fd12/quotient-278.tm),
SHA-256 `268a2315b01ecb07341c4da5f765b26c461ca6f435511a090f863d3a92761306`.
It has 278 ordinary states and a separate halting state. Its binary tape is
indexed by all integers, initially zero, with head position zero and state
`!ENTRY`. The theorem covers unbounded execution and tape usage.

`Counterexample n` means `254 ≤ n` and the exact rational inequality

```text
(max (harmonic (lcmUpto n) - (n : ℚ)) 0)^2 > (n : ℚ) * (harmonic n)^4
```

`harmonic` is the harmonic-number recurrence and `lcmUpto` the least common
multiple of the initial segment. Their canonical definitions and machine
semantics are in [Specification](RiemannMachineVerification/Specification/README.md).
Lean imports definitions before a theorem can use them; the entry file then
displays checked excerpts immediately after the theorem for reading order.
The complete 278-row transition array is linked separately.

The result has no extra hypotheses, `sorry`, assumed compiler correctness, or
axiom trusting native computation. Its axiom dependencies are `propext`,
`Classical.choice`, and `Quot.sound`. The mathematical equivalence of the
predicate to RH, literal equivalence to the original 744-state table, and global
minimality are outside this theorem. Other 278-state candidates are not covered.

## Read the proof

| Stage | Main result and purpose | Read next |
| --- | --- | --- |
| Arithmetic | Exact integer computation and the rational predicate have the same witnesses; indices below 254 are excluded. | [Arithmetic](RiemannMachineVerification/Arithmetic/README.md) |
| Arithmetic register program | `arithmetic_program_correct` connects a complete register cycle and natural-number search to the predicate. | [Registers/Arithmetic](RiemannMachineVerification/Registers/Arithmetic/README.md) |
| Register refinement | `implementation_iff_arithmetic` relates 55 paired boundaries, preserving live values and known zeros with positive progress on both sides. | [Registers](RiemannMachineVerification/Registers/README.md) |
| Primitive lowering | `primitive_iff_macro` expands all 86 transfer sites by induction on arbitrary natural source values. | [TransferExpansion.lean](RiemannMachineVerification/Registers/TransferExpansion.lean) |
| Binary tape | `machine389_iff_primitive` verifies dispatch, counter updates, allocation and unbounded unary storage. | [Tape](RiemannMachineVerification/Tape/README.md) |
| Local paths | `machine389_iff_machine339` lifts finite path certificates to the infinite tape. | [Reduction](RiemannMachineVerification/Reduction/README.md) |
| Quotient | `machine339_iff_machine278` checks the literal state map under three inductive read-mask stages. | [Quotient.lean](RiemannMachineVerification/Reduction/Quotient.lean) |

The entry theorem composes those equivalences. [Common](RiemannMachineVerification/Common/README.md)
contains the generic execution and simulation arguments.
[Generated](RiemannMachineVerification/Generated/README.md) separates literal
arrays and finite certificates from the conceptual proofs. Its READMEs explain
case ranges, generators, and the bounded chunks retained for Lean elaboration.
Every supporting theorem has an explanatory local guide.

The register semantics and transfer theory use a single counter-size-parameterized
model. The arithmetic and implementation specializations choose 2048 and 1024
addresses. The 55 register-boundary checks are grouped into initialization,
LCM, harmonic, products, and decision phases.

## Run verification

On macOS or Linux, use Python 3 and `elan`; the toolchain is pinned to Lean 4.32.2 and mathlib to
`905b95818eb32af7874a58b427f50c1711a5e96c`. From `formal/`:

```sh
lake exe cache get                  # Fetch external dependencies on a fresh checkout.
python3 tools/build.py               # Serial, memory-limited headline build.
python3 tools/check_current.py       # Full acceptance, literal tables and axiom checks.
lake env lean --memory=16384 --threads=2 Audit.lean  # Print the principal axiom dependencies.
```

The checker builds only the headline and its dependencies. It preserves the
[two byte-pinned specification files and the exact machine identity](ACCEPTANCE.md),
compares all three literal machine imports (389, 339 and 278 states), checks
exact theorem types and permitted axioms, and checks proof navigation and
definition excerpts. It also runs [Audit.lean](Audit.lean), which prints and
checks the principal proof stages' axiom dependencies. Only after success does
it refresh [verification.json](verification.json), with hashes of all 154 Lean
source files: the 153 headline modules and the separate audit.

Successful output ends with:

```text
ACCEPTED: the exact 278-state headline is proved with the fixed specification and only permitted axioms.
```

The verification commands use `tools/build.py`: one project compiler at a time,
two worker threads, and Lean’s 16384 MiB allocation limit per compiler. The Lake
configuration applies those per-compiler limits without invalidating completed
proof caches. The serial driver requires cached external dependencies; on a
fresh checkout, fetch them with `lake exe cache get`. The default Lake target
remains the 278-state headline. Plain `lake build` can schedule several compilers;
use the serial driver for a low-memory run. Build logs are written as the checks
run, under ignored `.logs/serial-build/`.

A fresh build checks many concrete cases and can take substantially longer than
an incremental build. Neither Z3 nor proof-source regeneration is needed to
check the committed Lean proof.

## Reproduce generated sources

From the repository root, with the project Python environment installed:

```sh
.venv/bin/python formal/tools/regenerate.py --check
```

The driver reconstructs generator inputs from the checked modules, runs the
four current-machine generation stages in a temporary directory, groups the
boundary proofs by phase, and compares all 92 output modules byte for byte.
Use `--write` to refresh them, then repeat the full acceptance check.
Python proposes proofs; Lean checks them. See [tools](tools/README.md) for
annotation, navigation, packaging, and internal-generator details.

All tables, sources and certificates are linked from the
[repository artifact guide](../README.md#repository-artifacts-and-local-logs).
After acceptance, `python3 tools/package_verified.py` creates a local release
ZIP from versioned inputs. ZIPs, binaries and raw logs are not committed.
Ignored `.logs/` files are optional local diagnostics; the theorem, source
hashes, tables and certificates are the durable verification evidence.

## Earlier verified results

The active proof tree contains only the current headline and its dependencies.
The complete proofs for the 299-, 298-, 297- and 295-state machines are preserved
in Git at commit `b5a869e`. They are not built by current acceptance.
[The contract](ACCEPTANCE.md#earlier-verified-results) explains how to recover
and recheck them and records why removing those targets leaves the mathematical
specification unchanged.
