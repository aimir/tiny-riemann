import RiemannMachineVerification.Generated.Counter.Data
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Counter value 512: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_512_false : CounterCheck ⟨512, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 512: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_512_true : CounterCheck ⟨512, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 513: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_513_false : CounterCheck ⟨513, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 513: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_513_true : CounterCheck ⟨513, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 514: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_514_false : CounterCheck ⟨514, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 514: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_514_true : CounterCheck ⟨514, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 515: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_515_false : CounterCheck ⟨515, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 515: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_515_true : CounterCheck ⟨515, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 516: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_516_false : CounterCheck ⟨516, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 516: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_516_true : CounterCheck ⟨516, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 517: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_517_false : CounterCheck ⟨517, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 517: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_517_true : CounterCheck ⟨517, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 518: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_518_false : CounterCheck ⟨518, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 518: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_518_true : CounterCheck ⟨518, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 519: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_519_false : CounterCheck ⟨519, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 519: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_519_true : CounterCheck ⟨519, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 520: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_520_false : CounterCheck ⟨520, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 520: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_520_true : CounterCheck ⟨520, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 521: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_521_false : CounterCheck ⟨521, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 521: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_521_true : CounterCheck ⟨521, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 522: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_522_false : CounterCheck ⟨522, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 522: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_522_true : CounterCheck ⟨522, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 523: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_523_false : CounterCheck ⟨523, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 523: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_523_true : CounterCheck ⟨523, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 524: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_524_false : CounterCheck ⟨524, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 524: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_524_true : CounterCheck ⟨524, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 525: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_525_false : CounterCheck ⟨525, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 525: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_525_true : CounterCheck ⟨525, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 526: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_526_false : CounterCheck ⟨526, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 526: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_526_true : CounterCheck ⟨526, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 527: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_527_false : CounterCheck ⟨527, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 527: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_527_true : CounterCheck ⟨527, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 528: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_528_false : CounterCheck ⟨528, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 528: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_528_true : CounterCheck ⟨528, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 529: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_529_false : CounterCheck ⟨529, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 529: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_529_true : CounterCheck ⟨529, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 530: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_530_false : CounterCheck ⟨530, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 530: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_530_true : CounterCheck ⟨530, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 531: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_531_false : CounterCheck ⟨531, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 531: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_531_true : CounterCheck ⟨531, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 532: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_532_false : CounterCheck ⟨532, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 532: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_532_true : CounterCheck ⟨532, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 533: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_533_false : CounterCheck ⟨533, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 533: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_533_true : CounterCheck ⟨533, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 534: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_534_false : CounterCheck ⟨534, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 534: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_534_true : CounterCheck ⟨534, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 535: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_535_false : CounterCheck ⟨535, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 535: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_535_true : CounterCheck ⟨535, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 536: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_536_false : CounterCheck ⟨536, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 536: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_536_true : CounterCheck ⟨536, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 537: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_537_false : CounterCheck ⟨537, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 537: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_537_true : CounterCheck ⟨537, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 538: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_538_false : CounterCheck ⟨538, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 538: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_538_true : CounterCheck ⟨538, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 539: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_539_false : CounterCheck ⟨539, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 539: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_539_true : CounterCheck ⟨539, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 540: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_540_false : CounterCheck ⟨540, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 540: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_540_true : CounterCheck ⟨540, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 541: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_541_false : CounterCheck ⟨541, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 541: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_541_true : CounterCheck ⟨541, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 542: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_542_false : CounterCheck ⟨542, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 542: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_542_true : CounterCheck ⟨542, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 543: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_543_false : CounterCheck ⟨543, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 543: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_543_true : CounterCheck ⟨543, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 544: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_544_false : CounterCheck ⟨544, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 544: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_544_true : CounterCheck ⟨544, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 545: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_545_false : CounterCheck ⟨545, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 545: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_545_true : CounterCheck ⟨545, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 546: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_546_false : CounterCheck ⟨546, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 546: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_546_true : CounterCheck ⟨546, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 547: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_547_false : CounterCheck ⟨547, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 547: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_547_true : CounterCheck ⟨547, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 548: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_548_false : CounterCheck ⟨548, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 548: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_548_true : CounterCheck ⟨548, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 549: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_549_false : CounterCheck ⟨549, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 549: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_549_true : CounterCheck ⟨549, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 550: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_550_false : CounterCheck ⟨550, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 550: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_550_true : CounterCheck ⟨550, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 551: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_551_false : CounterCheck ⟨551, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 551: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_551_true : CounterCheck ⟨551, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 552: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_552_false : CounterCheck ⟨552, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 552: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_552_true : CounterCheck ⟨552, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 553: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_553_false : CounterCheck ⟨553, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 553: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_553_true : CounterCheck ⟨553, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 554: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_554_false : CounterCheck ⟨554, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 554: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_554_true : CounterCheck ⟨554, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 555: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_555_false : CounterCheck ⟨555, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 555: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_555_true : CounterCheck ⟨555, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 556: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_556_false : CounterCheck ⟨556, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 556: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_556_true : CounterCheck ⟨556, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 557: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_557_false : CounterCheck ⟨557, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 557: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_557_true : CounterCheck ⟨557, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 558: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_558_false : CounterCheck ⟨558, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 558: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_558_true : CounterCheck ⟨558, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 559: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_559_false : CounterCheck ⟨559, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 559: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_559_true : CounterCheck ⟨559, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 560: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_560_false : CounterCheck ⟨560, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 560: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_560_true : CounterCheck ⟨560, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 561: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_561_false : CounterCheck ⟨561, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 561: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_561_true : CounterCheck ⟨561, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 562: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_562_false : CounterCheck ⟨562, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 562: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_562_true : CounterCheck ⟨562, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 563: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_563_false : CounterCheck ⟨563, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 563: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_563_true : CounterCheck ⟨563, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 564: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_564_false : CounterCheck ⟨564, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 564: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_564_true : CounterCheck ⟨564, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 565: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_565_false : CounterCheck ⟨565, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 565: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_565_true : CounterCheck ⟨565, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 566: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_566_false : CounterCheck ⟨566, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 566: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_566_true : CounterCheck ⟨566, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 567: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_567_false : CounterCheck ⟨567, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 567: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_567_true : CounterCheck ⟨567, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 568: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_568_false : CounterCheck ⟨568, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 568: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_568_true : CounterCheck ⟨568, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 569: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_569_false : CounterCheck ⟨569, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 569: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_569_true : CounterCheck ⟨569, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 570: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_570_false : CounterCheck ⟨570, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 570: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_570_true : CounterCheck ⟨570, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 571: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_571_false : CounterCheck ⟨571, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 571: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_571_true : CounterCheck ⟨571, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 572: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_572_false : CounterCheck ⟨572, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 572: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_572_true : CounterCheck ⟨572, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 573: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_573_false : CounterCheck ⟨573, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 573: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_573_true : CounterCheck ⟨573, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 574: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_574_false : CounterCheck ⟨574, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 574: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_574_true : CounterCheck ⟨574, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 575: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_575_false : CounterCheck ⟨575, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 575: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_575_true : CounterCheck ⟨575, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

end RiemannMachineVerification.Implementation
