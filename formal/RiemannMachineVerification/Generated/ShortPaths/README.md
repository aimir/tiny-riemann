# Finite short-path certificates

`Data.lean` defines the concrete certificate inputs. `CasesNN.lean` checks
local transition expansion over consecutive blocks of 20 indices; `Coverage.lean` combines
all 339 indices into one universally quantified theorem.

The files are intentionally bounded compilation units: each Lean process checks
a manageable set of reductions, while the aggregate proof excludes omissions.
The proofs quantify over arbitrary external tape contents where required;
these finite indices do not bound execution time or register values.

Generation is part of `python3 tools/regenerate.py --check` from `formal/`.
The [parent guide](../README.md) connects these certificates to the main proof.

| File | Concrete index range |
| --- | --- |
| [Cases00.lean](Cases00.lean) | 0–19 |
| [Cases01.lean](Cases01.lean) | 20–39 |
| [Cases02.lean](Cases02.lean) | 40–59 |
| [Cases03.lean](Cases03.lean) | 60–79 |
| [Cases04.lean](Cases04.lean) | 80–99 |
| [Cases05.lean](Cases05.lean) | 100–119 |
| [Cases06.lean](Cases06.lean) | 120–139 |
| [Cases07.lean](Cases07.lean) | 140–159 |
| [Cases08.lean](Cases08.lean) | 160–179 |
| [Cases09.lean](Cases09.lean) | 180–199 |
| [Cases10.lean](Cases10.lean) | 200–219 |
| [Cases11.lean](Cases11.lean) | 220–239 |
| [Cases12.lean](Cases12.lean) | 240–259 |
| [Cases13.lean](Cases13.lean) | 260–279 |
| [Cases14.lean](Cases14.lean) | 280–299 |
| [Cases15.lean](Cases15.lean) | 300–319 |
| [Cases16.lean](Cases16.lean) | 320–338 |
