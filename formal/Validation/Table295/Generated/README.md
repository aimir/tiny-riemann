# Finite certificates for the 295-state target

Counter and dispatcher cases cover all 2048 instruction-counter values in
64-address chunks, including both counter increments. Macro cases cover the
342 shortened states in 20-state chunks. `Invariant0` through `Invariant3`
prove the successive read masks used by this target's quotient.

The parent folder's aggregate proofs cover all cases. The repeated certificates
refer to different literal indices and are split to bound elaboration jobs.
Local proof guides explain each case; `python3 tools/build.py Validation` checks this instance.

| File | Concrete index range |
| --- | --- |
| [CounterCases00.lean](CounterCases00.lean) | 0–63 |
| [CounterCases01.lean](CounterCases01.lean) | 64–127 |
| [CounterCases02.lean](CounterCases02.lean) | 128–191 |
| [CounterCases03.lean](CounterCases03.lean) | 192–255 |
| [CounterCases04.lean](CounterCases04.lean) | 256–319 |
| [CounterCases05.lean](CounterCases05.lean) | 320–383 |
| [CounterCases06.lean](CounterCases06.lean) | 384–447 |
| [CounterCases07.lean](CounterCases07.lean) | 448–511 |
| [CounterCases08.lean](CounterCases08.lean) | 512–575 |
| [CounterCases09.lean](CounterCases09.lean) | 576–639 |
| [CounterCases10.lean](CounterCases10.lean) | 640–703 |
| [CounterCases11.lean](CounterCases11.lean) | 704–767 |
| [CounterCases12.lean](CounterCases12.lean) | 768–831 |
| [CounterCases13.lean](CounterCases13.lean) | 832–895 |
| [CounterCases14.lean](CounterCases14.lean) | 896–959 |
| [CounterCases15.lean](CounterCases15.lean) | 960–1023 |
| [CounterCases16.lean](CounterCases16.lean) | 1024–1087 |
| [CounterCases17.lean](CounterCases17.lean) | 1088–1151 |
| [CounterCases18.lean](CounterCases18.lean) | 1152–1215 |
| [CounterCases19.lean](CounterCases19.lean) | 1216–1279 |
| [CounterCases20.lean](CounterCases20.lean) | 1280–1343 |
| [CounterCases21.lean](CounterCases21.lean) | 1344–1407 |
| [CounterCases22.lean](CounterCases22.lean) | 1408–1471 |
| [CounterCases23.lean](CounterCases23.lean) | 1472–1535 |
| [CounterCases24.lean](CounterCases24.lean) | 1536–1599 |
| [CounterCases25.lean](CounterCases25.lean) | 1600–1663 |
| [CounterCases26.lean](CounterCases26.lean) | 1664–1727 |
| [CounterCases27.lean](CounterCases27.lean) | 1728–1791 |
| [CounterCases28.lean](CounterCases28.lean) | 1792–1855 |
| [CounterCases29.lean](CounterCases29.lean) | 1856–1919 |
| [CounterCases30.lean](CounterCases30.lean) | 1920–1983 |
| [CounterCases31.lean](CounterCases31.lean) | 1984–2047 |
| [DispatcherCases00.lean](DispatcherCases00.lean) | 0–63 |
| [DispatcherCases01.lean](DispatcherCases01.lean) | 64–127 |
| [DispatcherCases02.lean](DispatcherCases02.lean) | 128–191 |
| [DispatcherCases03.lean](DispatcherCases03.lean) | 192–255 |
| [DispatcherCases04.lean](DispatcherCases04.lean) | 256–319 |
| [DispatcherCases05.lean](DispatcherCases05.lean) | 320–383 |
| [DispatcherCases06.lean](DispatcherCases06.lean) | 384–447 |
| [DispatcherCases07.lean](DispatcherCases07.lean) | 448–511 |
| [DispatcherCases08.lean](DispatcherCases08.lean) | 512–575 |
| [DispatcherCases09.lean](DispatcherCases09.lean) | 576–639 |
| [DispatcherCases10.lean](DispatcherCases10.lean) | 640–703 |
| [DispatcherCases11.lean](DispatcherCases11.lean) | 704–767 |
| [DispatcherCases12.lean](DispatcherCases12.lean) | 768–831 |
| [DispatcherCases13.lean](DispatcherCases13.lean) | 832–895 |
| [DispatcherCases14.lean](DispatcherCases14.lean) | 896–959 |
| [DispatcherCases15.lean](DispatcherCases15.lean) | 960–1023 |
| [DispatcherCases16.lean](DispatcherCases16.lean) | 1024–1087 |
| [DispatcherCases17.lean](DispatcherCases17.lean) | 1088–1151 |
| [DispatcherCases18.lean](DispatcherCases18.lean) | 1152–1215 |
| [DispatcherCases19.lean](DispatcherCases19.lean) | 1216–1279 |
| [DispatcherCases20.lean](DispatcherCases20.lean) | 1280–1343 |
| [DispatcherCases21.lean](DispatcherCases21.lean) | 1344–1407 |
| [DispatcherCases22.lean](DispatcherCases22.lean) | 1408–1471 |
| [DispatcherCases23.lean](DispatcherCases23.lean) | 1472–1535 |
| [DispatcherCases24.lean](DispatcherCases24.lean) | 1536–1599 |
| [DispatcherCases25.lean](DispatcherCases25.lean) | 1600–1663 |
| [DispatcherCases26.lean](DispatcherCases26.lean) | 1664–1727 |
| [DispatcherCases27.lean](DispatcherCases27.lean) | 1728–1791 |
| [DispatcherCases28.lean](DispatcherCases28.lean) | 1792–1855 |
| [DispatcherCases29.lean](DispatcherCases29.lean) | 1856–1919 |
| [DispatcherCases30.lean](DispatcherCases30.lean) | 1920–1983 |
| [DispatcherCases31.lean](DispatcherCases31.lean) | 1984–2047 |
| [MacroCases00.lean](MacroCases00.lean) | 0–19 |
| [MacroCases01.lean](MacroCases01.lean) | 20–39 |
| [MacroCases02.lean](MacroCases02.lean) | 40–59 |
| [MacroCases03.lean](MacroCases03.lean) | 60–79 |
| [MacroCases04.lean](MacroCases04.lean) | 80–99 |
| [MacroCases05.lean](MacroCases05.lean) | 100–119 |
| [MacroCases06.lean](MacroCases06.lean) | 120–139 |
| [MacroCases07.lean](MacroCases07.lean) | 140–159 |
| [MacroCases08.lean](MacroCases08.lean) | 160–179 |
| [MacroCases09.lean](MacroCases09.lean) | 180–199 |
| [MacroCases10.lean](MacroCases10.lean) | 200–219 |
| [MacroCases11.lean](MacroCases11.lean) | 220–239 |
| [MacroCases12.lean](MacroCases12.lean) | 240–259 |
| [MacroCases13.lean](MacroCases13.lean) | 260–279 |
| [MacroCases14.lean](MacroCases14.lean) | 280–299 |
| [MacroCases15.lean](MacroCases15.lean) | 300–319 |
| [MacroCases16.lean](MacroCases16.lean) | 320–339 |
| [MacroCases17.lean](MacroCases17.lean) | 340–341 |
