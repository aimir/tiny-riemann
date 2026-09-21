import RiemannMachineVerification.Generated.Counter.Data
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Counter value 192: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_192_false : CounterCheck ⟨192, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 192: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_192_true : CounterCheck ⟨192, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 193: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_193_false : CounterCheck ⟨193, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 193: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_193_true : CounterCheck ⟨193, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 194: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_194_false : CounterCheck ⟨194, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 194: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_194_true : CounterCheck ⟨194, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 195: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_195_false : CounterCheck ⟨195, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 195: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_195_true : CounterCheck ⟨195, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 196: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_196_false : CounterCheck ⟨196, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 196: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_196_true : CounterCheck ⟨196, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 197: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_197_false : CounterCheck ⟨197, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 197: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_197_true : CounterCheck ⟨197, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 198: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_198_false : CounterCheck ⟨198, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 198: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_198_true : CounterCheck ⟨198, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 199: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_199_false : CounterCheck ⟨199, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 199: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_199_true : CounterCheck ⟨199, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 200: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_200_false : CounterCheck ⟨200, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 200: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_200_true : CounterCheck ⟨200, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 201: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_201_false : CounterCheck ⟨201, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 201: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_201_true : CounterCheck ⟨201, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 202: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_202_false : CounterCheck ⟨202, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 202: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_202_true : CounterCheck ⟨202, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 203: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_203_false : CounterCheck ⟨203, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 203: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_203_true : CounterCheck ⟨203, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 204: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_204_false : CounterCheck ⟨204, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 204: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_204_true : CounterCheck ⟨204, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 205: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_205_false : CounterCheck ⟨205, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 205: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_205_true : CounterCheck ⟨205, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 206: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_206_false : CounterCheck ⟨206, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 206: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_206_true : CounterCheck ⟨206, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 207: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_207_false : CounterCheck ⟨207, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 207: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_207_true : CounterCheck ⟨207, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 208: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_208_false : CounterCheck ⟨208, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 208: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_208_true : CounterCheck ⟨208, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 209: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_209_false : CounterCheck ⟨209, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 209: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_209_true : CounterCheck ⟨209, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 210: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_210_false : CounterCheck ⟨210, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 210: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_210_true : CounterCheck ⟨210, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 211: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_211_false : CounterCheck ⟨211, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 211: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_211_true : CounterCheck ⟨211, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 212: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_212_false : CounterCheck ⟨212, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 212: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_212_true : CounterCheck ⟨212, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 213: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_213_false : CounterCheck ⟨213, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 213: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_213_true : CounterCheck ⟨213, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 214: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_214_false : CounterCheck ⟨214, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 214: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_214_true : CounterCheck ⟨214, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 215: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_215_false : CounterCheck ⟨215, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 215: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_215_true : CounterCheck ⟨215, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 216: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_216_false : CounterCheck ⟨216, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 216: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_216_true : CounterCheck ⟨216, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 217: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_217_false : CounterCheck ⟨217, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 217: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_217_true : CounterCheck ⟨217, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 218: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_218_false : CounterCheck ⟨218, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 218: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_218_true : CounterCheck ⟨218, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 219: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_219_false : CounterCheck ⟨219, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 219: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_219_true : CounterCheck ⟨219, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 220: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_220_false : CounterCheck ⟨220, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 220: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_220_true : CounterCheck ⟨220, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 221: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_221_false : CounterCheck ⟨221, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 221: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_221_true : CounterCheck ⟨221, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 222: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_222_false : CounterCheck ⟨222, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 222: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_222_true : CounterCheck ⟨222, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 223: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_223_false : CounterCheck ⟨223, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 223: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_223_true : CounterCheck ⟨223, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 224: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_224_false : CounterCheck ⟨224, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 224: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_224_true : CounterCheck ⟨224, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 225: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_225_false : CounterCheck ⟨225, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 225: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_225_true : CounterCheck ⟨225, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 226: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_226_false : CounterCheck ⟨226, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 226: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_226_true : CounterCheck ⟨226, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 227: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_227_false : CounterCheck ⟨227, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 227: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_227_true : CounterCheck ⟨227, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 228: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_228_false : CounterCheck ⟨228, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 228: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_228_true : CounterCheck ⟨228, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 229: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_229_false : CounterCheck ⟨229, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 229: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_229_true : CounterCheck ⟨229, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 230: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_230_false : CounterCheck ⟨230, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 230: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_230_true : CounterCheck ⟨230, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 231: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_231_false : CounterCheck ⟨231, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 231: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_231_true : CounterCheck ⟨231, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 232: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_232_false : CounterCheck ⟨232, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 232: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_232_true : CounterCheck ⟨232, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 233: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_233_false : CounterCheck ⟨233, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 233: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_233_true : CounterCheck ⟨233, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 234: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_234_false : CounterCheck ⟨234, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 234: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_234_true : CounterCheck ⟨234, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 235: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_235_false : CounterCheck ⟨235, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 235: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_235_true : CounterCheck ⟨235, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 236: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_236_false : CounterCheck ⟨236, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 236: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_236_true : CounterCheck ⟨236, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 237: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_237_false : CounterCheck ⟨237, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 237: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_237_true : CounterCheck ⟨237, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 238: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_238_false : CounterCheck ⟨238, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 238: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_238_true : CounterCheck ⟨238, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 239: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_239_false : CounterCheck ⟨239, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 239: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_239_true : CounterCheck ⟨239, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 240: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_240_false : CounterCheck ⟨240, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 240: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_240_true : CounterCheck ⟨240, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 241: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_241_false : CounterCheck ⟨241, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 241: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_241_true : CounterCheck ⟨241, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 242: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_242_false : CounterCheck ⟨242, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 242: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_242_true : CounterCheck ⟨242, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 243: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_243_false : CounterCheck ⟨243, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 243: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_243_true : CounterCheck ⟨243, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 244: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_244_false : CounterCheck ⟨244, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 244: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_244_true : CounterCheck ⟨244, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 245: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_245_false : CounterCheck ⟨245, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 245: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_245_true : CounterCheck ⟨245, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 246: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_246_false : CounterCheck ⟨246, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 246: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_246_true : CounterCheck ⟨246, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 247: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_247_false : CounterCheck ⟨247, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 247: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_247_true : CounterCheck ⟨247, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 248: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_248_false : CounterCheck ⟨248, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 248: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_248_true : CounterCheck ⟨248, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 249: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_249_false : CounterCheck ⟨249, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 249: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_249_true : CounterCheck ⟨249, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 250: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_250_false : CounterCheck ⟨250, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 250: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_250_true : CounterCheck ⟨250, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 251: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_251_false : CounterCheck ⟨251, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 251: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_251_true : CounterCheck ⟨251, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 252: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_252_false : CounterCheck ⟨252, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 252: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_252_true : CounterCheck ⟨252, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 253: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_253_false : CounterCheck ⟨253, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 253: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_253_true : CounterCheck ⟨253, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 254: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_254_false : CounterCheck ⟨254, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 254: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_254_true : CounterCheck ⟨254, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 255: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_255_false : CounterCheck ⟨255, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 255: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem counter_check_255_true : CounterCheck ⟨255, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

end RiemannMachineVerification.Implementation
