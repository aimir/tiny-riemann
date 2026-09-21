import RiemannMachineVerification.Generated.Counter.Data
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Counter value 640: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_640_false : CounterCheck ⟨640, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 640: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_640_true : CounterCheck ⟨640, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 641: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_641_false : CounterCheck ⟨641, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 641: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_641_true : CounterCheck ⟨641, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 642: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_642_false : CounterCheck ⟨642, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 642: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_642_true : CounterCheck ⟨642, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 643: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_643_false : CounterCheck ⟨643, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 643: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_643_true : CounterCheck ⟨643, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 644: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_644_false : CounterCheck ⟨644, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 644: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_644_true : CounterCheck ⟨644, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 645: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_645_false : CounterCheck ⟨645, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 645: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_645_true : CounterCheck ⟨645, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 646: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_646_false : CounterCheck ⟨646, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 646: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_646_true : CounterCheck ⟨646, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 647: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_647_false : CounterCheck ⟨647, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 647: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_647_true : CounterCheck ⟨647, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 648: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_648_false : CounterCheck ⟨648, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 648: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_648_true : CounterCheck ⟨648, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 649: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_649_false : CounterCheck ⟨649, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 649: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_649_true : CounterCheck ⟨649, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 650: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_650_false : CounterCheck ⟨650, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 650: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_650_true : CounterCheck ⟨650, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 651: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_651_false : CounterCheck ⟨651, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 651: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_651_true : CounterCheck ⟨651, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 652: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_652_false : CounterCheck ⟨652, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 652: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_652_true : CounterCheck ⟨652, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 653: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_653_false : CounterCheck ⟨653, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 653: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_653_true : CounterCheck ⟨653, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 654: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_654_false : CounterCheck ⟨654, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 654: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_654_true : CounterCheck ⟨654, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 655: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_655_false : CounterCheck ⟨655, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 655: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_655_true : CounterCheck ⟨655, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 656: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_656_false : CounterCheck ⟨656, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 656: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_656_true : CounterCheck ⟨656, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 657: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_657_false : CounterCheck ⟨657, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 657: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_657_true : CounterCheck ⟨657, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 658: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_658_false : CounterCheck ⟨658, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 658: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_658_true : CounterCheck ⟨658, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 659: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_659_false : CounterCheck ⟨659, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 659: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_659_true : CounterCheck ⟨659, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 660: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_660_false : CounterCheck ⟨660, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 660: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_660_true : CounterCheck ⟨660, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 661: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_661_false : CounterCheck ⟨661, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 661: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_661_true : CounterCheck ⟨661, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 662: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_662_false : CounterCheck ⟨662, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 662: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_662_true : CounterCheck ⟨662, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 663: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_663_false : CounterCheck ⟨663, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 663: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_663_true : CounterCheck ⟨663, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 664: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_664_false : CounterCheck ⟨664, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 664: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_664_true : CounterCheck ⟨664, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 665: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_665_false : CounterCheck ⟨665, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 665: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_665_true : CounterCheck ⟨665, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 666: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_666_false : CounterCheck ⟨666, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 666: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_666_true : CounterCheck ⟨666, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 667: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_667_false : CounterCheck ⟨667, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 667: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_667_true : CounterCheck ⟨667, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 668: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_668_false : CounterCheck ⟨668, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 668: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_668_true : CounterCheck ⟨668, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 669: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_669_false : CounterCheck ⟨669, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 669: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_669_true : CounterCheck ⟨669, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 670: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_670_false : CounterCheck ⟨670, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 670: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_670_true : CounterCheck ⟨670, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 671: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_671_false : CounterCheck ⟨671, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 671: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_671_true : CounterCheck ⟨671, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 672: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_672_false : CounterCheck ⟨672, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 672: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_672_true : CounterCheck ⟨672, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 673: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_673_false : CounterCheck ⟨673, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 673: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_673_true : CounterCheck ⟨673, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 674: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_674_false : CounterCheck ⟨674, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 674: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_674_true : CounterCheck ⟨674, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 675: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_675_false : CounterCheck ⟨675, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 675: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_675_true : CounterCheck ⟨675, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 676: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_676_false : CounterCheck ⟨676, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 676: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_676_true : CounterCheck ⟨676, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 677: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_677_false : CounterCheck ⟨677, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 677: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_677_true : CounterCheck ⟨677, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 678: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_678_false : CounterCheck ⟨678, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 678: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_678_true : CounterCheck ⟨678, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 679: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_679_false : CounterCheck ⟨679, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 679: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_679_true : CounterCheck ⟨679, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 680: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_680_false : CounterCheck ⟨680, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 680: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_680_true : CounterCheck ⟨680, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 681: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_681_false : CounterCheck ⟨681, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 681: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_681_true : CounterCheck ⟨681, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 682: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_682_false : CounterCheck ⟨682, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 682: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_682_true : CounterCheck ⟨682, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 683: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_683_false : CounterCheck ⟨683, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 683: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_683_true : CounterCheck ⟨683, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 684: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_684_false : CounterCheck ⟨684, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 684: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_684_true : CounterCheck ⟨684, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 685: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_685_false : CounterCheck ⟨685, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 685: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_685_true : CounterCheck ⟨685, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 686: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_686_false : CounterCheck ⟨686, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 686: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_686_true : CounterCheck ⟨686, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 687: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_687_false : CounterCheck ⟨687, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 687: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_687_true : CounterCheck ⟨687, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 688: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_688_false : CounterCheck ⟨688, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 688: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_688_true : CounterCheck ⟨688, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 689: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_689_false : CounterCheck ⟨689, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 689: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_689_true : CounterCheck ⟨689, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 690: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_690_false : CounterCheck ⟨690, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 690: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_690_true : CounterCheck ⟨690, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 691: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_691_false : CounterCheck ⟨691, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 691: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_691_true : CounterCheck ⟨691, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 692: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_692_false : CounterCheck ⟨692, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 692: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_692_true : CounterCheck ⟨692, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 693: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_693_false : CounterCheck ⟨693, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 693: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_693_true : CounterCheck ⟨693, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 694: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_694_false : CounterCheck ⟨694, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 694: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_694_true : CounterCheck ⟨694, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 695: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_695_false : CounterCheck ⟨695, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 695: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_695_true : CounterCheck ⟨695, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 696: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_696_false : CounterCheck ⟨696, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 696: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_696_true : CounterCheck ⟨696, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 697: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_697_false : CounterCheck ⟨697, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 697: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_697_true : CounterCheck ⟨697, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 698: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_698_false : CounterCheck ⟨698, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 698: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_698_true : CounterCheck ⟨698, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 699: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_699_false : CounterCheck ⟨699, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 699: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_699_true : CounterCheck ⟨699, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 700: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_700_false : CounterCheck ⟨700, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 700: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_700_true : CounterCheck ⟨700, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 701: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_701_false : CounterCheck ⟨701, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 701: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_701_true : CounterCheck ⟨701, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 702: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_702_false : CounterCheck ⟨702, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 702: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_702_true : CounterCheck ⟨702, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 703: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_703_false : CounterCheck ⟨703, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 703: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_703_true : CounterCheck ⟨703, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

end RiemannMachineVerification.Implementation
