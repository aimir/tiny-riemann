import Validation.Table295.CounterData
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Reallocated

/-- [proof-guide] Counter value 1280: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1280_false : CounterCheck ⟨1280, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1280: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1280_true : CounterCheck ⟨1280, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1281: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1281_false : CounterCheck ⟨1281, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1281: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1281_true : CounterCheck ⟨1281, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1282: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1282_false : CounterCheck ⟨1282, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1282: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1282_true : CounterCheck ⟨1282, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1283: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1283_false : CounterCheck ⟨1283, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1283: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1283_true : CounterCheck ⟨1283, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1284: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1284_false : CounterCheck ⟨1284, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1284: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1284_true : CounterCheck ⟨1284, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1285: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1285_false : CounterCheck ⟨1285, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1285: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1285_true : CounterCheck ⟨1285, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1286: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1286_false : CounterCheck ⟨1286, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1286: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1286_true : CounterCheck ⟨1286, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1287: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1287_false : CounterCheck ⟨1287, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1287: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1287_true : CounterCheck ⟨1287, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1288: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1288_false : CounterCheck ⟨1288, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1288: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1288_true : CounterCheck ⟨1288, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1289: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1289_false : CounterCheck ⟨1289, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1289: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1289_true : CounterCheck ⟨1289, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1290: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1290_false : CounterCheck ⟨1290, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1290: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1290_true : CounterCheck ⟨1290, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1291: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1291_false : CounterCheck ⟨1291, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1291: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1291_true : CounterCheck ⟨1291, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1292: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1292_false : CounterCheck ⟨1292, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1292: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1292_true : CounterCheck ⟨1292, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1293: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1293_false : CounterCheck ⟨1293, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1293: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1293_true : CounterCheck ⟨1293, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1294: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1294_false : CounterCheck ⟨1294, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1294: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1294_true : CounterCheck ⟨1294, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1295: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1295_false : CounterCheck ⟨1295, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1295: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1295_true : CounterCheck ⟨1295, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1296: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1296_false : CounterCheck ⟨1296, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1296: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1296_true : CounterCheck ⟨1296, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1297: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1297_false : CounterCheck ⟨1297, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1297: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1297_true : CounterCheck ⟨1297, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1298: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1298_false : CounterCheck ⟨1298, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1298: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1298_true : CounterCheck ⟨1298, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1299: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1299_false : CounterCheck ⟨1299, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1299: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1299_true : CounterCheck ⟨1299, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1300: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1300_false : CounterCheck ⟨1300, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1300: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1300_true : CounterCheck ⟨1300, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1301: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1301_false : CounterCheck ⟨1301, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1301: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1301_true : CounterCheck ⟨1301, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1302: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1302_false : CounterCheck ⟨1302, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1302: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1302_true : CounterCheck ⟨1302, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1303: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1303_false : CounterCheck ⟨1303, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1303: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1303_true : CounterCheck ⟨1303, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1304: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1304_false : CounterCheck ⟨1304, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1304: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1304_true : CounterCheck ⟨1304, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1305: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1305_false : CounterCheck ⟨1305, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1305: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1305_true : CounterCheck ⟨1305, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1306: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1306_false : CounterCheck ⟨1306, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1306: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1306_true : CounterCheck ⟨1306, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1307: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1307_false : CounterCheck ⟨1307, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1307: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1307_true : CounterCheck ⟨1307, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1308: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1308_false : CounterCheck ⟨1308, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1308: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1308_true : CounterCheck ⟨1308, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1309: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1309_false : CounterCheck ⟨1309, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1309: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1309_true : CounterCheck ⟨1309, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1310: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1310_false : CounterCheck ⟨1310, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1310: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1310_true : CounterCheck ⟨1310, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1311: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1311_false : CounterCheck ⟨1311, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1311: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1311_true : CounterCheck ⟨1311, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1312: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1312_false : CounterCheck ⟨1312, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1312: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1312_true : CounterCheck ⟨1312, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1313: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1313_false : CounterCheck ⟨1313, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1313: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1313_true : CounterCheck ⟨1313, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1314: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1314_false : CounterCheck ⟨1314, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1314: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1314_true : CounterCheck ⟨1314, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1315: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1315_false : CounterCheck ⟨1315, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1315: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1315_true : CounterCheck ⟨1315, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1316: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1316_false : CounterCheck ⟨1316, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1316: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1316_true : CounterCheck ⟨1316, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1317: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1317_false : CounterCheck ⟨1317, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1317: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1317_true : CounterCheck ⟨1317, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1318: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1318_false : CounterCheck ⟨1318, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1318: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1318_true : CounterCheck ⟨1318, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1319: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1319_false : CounterCheck ⟨1319, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1319: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1319_true : CounterCheck ⟨1319, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1320: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1320_false : CounterCheck ⟨1320, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1320: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1320_true : CounterCheck ⟨1320, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1321: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1321_false : CounterCheck ⟨1321, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1321: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1321_true : CounterCheck ⟨1321, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1322: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1322_false : CounterCheck ⟨1322, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1322: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1322_true : CounterCheck ⟨1322, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1323: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1323_false : CounterCheck ⟨1323, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1323: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1323_true : CounterCheck ⟨1323, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1324: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1324_false : CounterCheck ⟨1324, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1324: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1324_true : CounterCheck ⟨1324, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1325: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1325_false : CounterCheck ⟨1325, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1325: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1325_true : CounterCheck ⟨1325, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1326: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1326_false : CounterCheck ⟨1326, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1326: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1326_true : CounterCheck ⟨1326, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1327: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1327_false : CounterCheck ⟨1327, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1327: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1327_true : CounterCheck ⟨1327, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1328: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1328_false : CounterCheck ⟨1328, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1328: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1328_true : CounterCheck ⟨1328, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1329: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1329_false : CounterCheck ⟨1329, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1329: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1329_true : CounterCheck ⟨1329, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1330: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1330_false : CounterCheck ⟨1330, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1330: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1330_true : CounterCheck ⟨1330, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1331: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1331_false : CounterCheck ⟨1331, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1331: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1331_true : CounterCheck ⟨1331, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1332: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1332_false : CounterCheck ⟨1332, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1332: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1332_true : CounterCheck ⟨1332, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1333: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1333_false : CounterCheck ⟨1333, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1333: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1333_true : CounterCheck ⟨1333, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1334: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1334_false : CounterCheck ⟨1334, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1334: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1334_true : CounterCheck ⟨1334, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1335: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1335_false : CounterCheck ⟨1335, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1335: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1335_true : CounterCheck ⟨1335, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1336: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1336_false : CounterCheck ⟨1336, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1336: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1336_true : CounterCheck ⟨1336, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1337: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1337_false : CounterCheck ⟨1337, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1337: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1337_true : CounterCheck ⟨1337, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1338: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1338_false : CounterCheck ⟨1338, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1338: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1338_true : CounterCheck ⟨1338, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1339: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1339_false : CounterCheck ⟨1339, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1339: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1339_true : CounterCheck ⟨1339, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1340: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1340_false : CounterCheck ⟨1340, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1340: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1340_true : CounterCheck ⟨1340, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1341: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1341_false : CounterCheck ⟨1341, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1341: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1341_true : CounterCheck ⟨1341, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1342: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1342_false : CounterCheck ⟨1342, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1342: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1342_true : CounterCheck ⟨1342, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1343: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1343_false : CounterCheck ⟨1343, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1343: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1343_true : CounterCheck ⟨1343, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

end RiemannMachineVerification.Reallocated
