# Finite dispatch certificates

`Data.lean` defines the concrete certificate inputs. `CasesNN.lean` checks
instruction dispatch over consecutive blocks of 64 indices; `Coverage.lean` combines
all 1024 indices into one universally quantified theorem.

The files are intentionally bounded compilation units: each Lean process checks
a manageable set of reductions, while the aggregate proof excludes omissions.
The proofs quantify over arbitrary external tape contents where required;
these finite indices do not bound execution time or register values.

Generation is part of `python3 tools/regenerate.py --check` from `formal/`.
The [parent guide](../README.md) connects these certificates to the main proof.

`InstructionShape.lean` classifies every primitive instruction; `Progress.lean`
proves each dispatcher path takes a positive number of steps.

| File | Concrete index range |
| --- | --- |
| [Cases00.lean](Cases00.lean) | 0–63 |
| [Cases01.lean](Cases01.lean) | 64–127 |
| [Cases02.lean](Cases02.lean) | 128–191 |
| [Cases03.lean](Cases03.lean) | 192–255 |
| [Cases04.lean](Cases04.lean) | 256–319 |
| [Cases05.lean](Cases05.lean) | 320–383 |
| [Cases06.lean](Cases06.lean) | 384–447 |
| [Cases07.lean](Cases07.lean) | 448–511 |
| [Cases08.lean](Cases08.lean) | 512–575 |
| [Cases09.lean](Cases09.lean) | 576–639 |
| [Cases10.lean](Cases10.lean) | 640–703 |
| [Cases11.lean](Cases11.lean) | 704–767 |
| [Cases12.lean](Cases12.lean) | 768–831 |
| [Cases13.lean](Cases13.lean) | 832–895 |
| [Cases14.lean](Cases14.lean) | 896–959 |
| [Cases15.lean](Cases15.lean) | 960–1023 |
