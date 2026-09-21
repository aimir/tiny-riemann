import Validation.Table299.CounterData
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

/-- [proof-guide] Counter value 1984: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1984_false : CounterCheck ⟨1984, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1984: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1984_true : CounterCheck ⟨1984, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1985: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1985_false : CounterCheck ⟨1985, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1985: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1985_true : CounterCheck ⟨1985, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1986: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1986_false : CounterCheck ⟨1986, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1986: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1986_true : CounterCheck ⟨1986, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1987: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1987_false : CounterCheck ⟨1987, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1987: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1987_true : CounterCheck ⟨1987, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1988: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1988_false : CounterCheck ⟨1988, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1988: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1988_true : CounterCheck ⟨1988, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1989: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1989_false : CounterCheck ⟨1989, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1989: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1989_true : CounterCheck ⟨1989, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1990: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1990_false : CounterCheck ⟨1990, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1990: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1990_true : CounterCheck ⟨1990, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1991: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1991_false : CounterCheck ⟨1991, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1991: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1991_true : CounterCheck ⟨1991, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1992: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1992_false : CounterCheck ⟨1992, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1992: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1992_true : CounterCheck ⟨1992, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1993: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1993_false : CounterCheck ⟨1993, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1993: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1993_true : CounterCheck ⟨1993, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1994: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1994_false : CounterCheck ⟨1994, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1994: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1994_true : CounterCheck ⟨1994, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1995: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1995_false : CounterCheck ⟨1995, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1995: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1995_true : CounterCheck ⟨1995, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1996: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1996_false : CounterCheck ⟨1996, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1996: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1996_true : CounterCheck ⟨1996, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1997: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1997_false : CounterCheck ⟨1997, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1997: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1997_true : CounterCheck ⟨1997, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1998: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1998_false : CounterCheck ⟨1998, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1998: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1998_true : CounterCheck ⟨1998, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1999: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1999_false : CounterCheck ⟨1999, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 1999: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_1999_true : CounterCheck ⟨1999, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2000: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2000_false : CounterCheck ⟨2000, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2000: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2000_true : CounterCheck ⟨2000, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2001: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2001_false : CounterCheck ⟨2001, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2001: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2001_true : CounterCheck ⟨2001, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2002: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2002_false : CounterCheck ⟨2002, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2002: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2002_true : CounterCheck ⟨2002, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2003: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2003_false : CounterCheck ⟨2003, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2003: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2003_true : CounterCheck ⟨2003, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2004: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2004_false : CounterCheck ⟨2004, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2004: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2004_true : CounterCheck ⟨2004, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2005: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2005_false : CounterCheck ⟨2005, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2005: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2005_true : CounterCheck ⟨2005, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2006: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2006_false : CounterCheck ⟨2006, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2006: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2006_true : CounterCheck ⟨2006, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2007: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2007_false : CounterCheck ⟨2007, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2007: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2007_true : CounterCheck ⟨2007, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2008: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2008_false : CounterCheck ⟨2008, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2008: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2008_true : CounterCheck ⟨2008, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2009: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2009_false : CounterCheck ⟨2009, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2009: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2009_true : CounterCheck ⟨2009, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2010: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2010_false : CounterCheck ⟨2010, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2010: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2010_true : CounterCheck ⟨2010, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2011: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2011_false : CounterCheck ⟨2011, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2011: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2011_true : CounterCheck ⟨2011, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2012: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2012_false : CounterCheck ⟨2012, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2012: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2012_true : CounterCheck ⟨2012, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2013: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2013_false : CounterCheck ⟨2013, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2013: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2013_true : CounterCheck ⟨2013, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2014: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2014_false : CounterCheck ⟨2014, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2014: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2014_true : CounterCheck ⟨2014, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2015: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2015_false : CounterCheck ⟨2015, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2015: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2015_true : CounterCheck ⟨2015, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2016: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2016_false : CounterCheck ⟨2016, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2016: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2016_true : CounterCheck ⟨2016, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2017: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2017_false : CounterCheck ⟨2017, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2017: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2017_true : CounterCheck ⟨2017, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2018: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2018_false : CounterCheck ⟨2018, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2018: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2018_true : CounterCheck ⟨2018, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2019: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2019_false : CounterCheck ⟨2019, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2019: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2019_true : CounterCheck ⟨2019, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2020: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2020_false : CounterCheck ⟨2020, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2020: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2020_true : CounterCheck ⟨2020, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2021: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2021_false : CounterCheck ⟨2021, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2021: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2021_true : CounterCheck ⟨2021, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2022: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2022_false : CounterCheck ⟨2022, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2022: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2022_true : CounterCheck ⟨2022, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2023: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2023_false : CounterCheck ⟨2023, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2023: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2023_true : CounterCheck ⟨2023, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2024: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2024_false : CounterCheck ⟨2024, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2024: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2024_true : CounterCheck ⟨2024, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2025: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2025_false : CounterCheck ⟨2025, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2025: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2025_true : CounterCheck ⟨2025, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2026: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2026_false : CounterCheck ⟨2026, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2026: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2026_true : CounterCheck ⟨2026, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2027: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2027_false : CounterCheck ⟨2027, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2027: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2027_true : CounterCheck ⟨2027, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2028: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2028_false : CounterCheck ⟨2028, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2028: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2028_true : CounterCheck ⟨2028, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2029: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2029_false : CounterCheck ⟨2029, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2029: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2029_true : CounterCheck ⟨2029, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2030: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2030_false : CounterCheck ⟨2030, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2030: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2030_true : CounterCheck ⟨2030, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2031: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2031_false : CounterCheck ⟨2031, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2031: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2031_true : CounterCheck ⟨2031, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2032: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2032_false : CounterCheck ⟨2032, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2032: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2032_true : CounterCheck ⟨2032, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2033: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2033_false : CounterCheck ⟨2033, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2033: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2033_true : CounterCheck ⟨2033, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2034: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2034_false : CounterCheck ⟨2034, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2034: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2034_true : CounterCheck ⟨2034, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2035: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2035_false : CounterCheck ⟨2035, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2035: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2035_true : CounterCheck ⟨2035, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2036: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2036_false : CounterCheck ⟨2036, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2036: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2036_true : CounterCheck ⟨2036, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2037: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2037_false : CounterCheck ⟨2037, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2037: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2037_true : CounterCheck ⟨2037, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2038: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2038_false : CounterCheck ⟨2038, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2038: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2038_true : CounterCheck ⟨2038, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2039: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2039_false : CounterCheck ⟨2039, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2039: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2039_true : CounterCheck ⟨2039, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2040: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2040_false : CounterCheck ⟨2040, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2040: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2040_true : CounterCheck ⟨2040, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2041: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2041_false : CounterCheck ⟨2041, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2041: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2041_true : CounterCheck ⟨2041, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2042: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2042_false : CounterCheck ⟨2042, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2042: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2042_true : CounterCheck ⟨2042, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2043: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2043_false : CounterCheck ⟨2043, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2043: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2043_true : CounterCheck ⟨2043, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2044: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2044_false : CounterCheck ⟨2044, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2044: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2044_true : CounterCheck ⟨2044, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2045: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2045_false : CounterCheck ⟨2045, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2045: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2045_true : CounterCheck ⟨2045, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2046: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2046_false : CounterCheck ⟨2046, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2046: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2046_true : CounterCheck ⟨2046, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2047: the finite tape routine implements addition of 1 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2047_false : CounterCheck ⟨2047, by decide⟩ false := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

/-- [proof-guide] Counter value 2047: the finite tape routine implements addition of 2 modulo the counter size.
Proof: Combines `FiniteWindow.config_ext` with the displayed local equations.
Role: Supports the separate acceptance checks; this module is outside the 278-state headline dependency chain. -/
theorem counter_check_2047_true : CounterCheck ⟨2047, by decide⟩ true := by
  constructor
  · rfl
  · apply FiniteWindow.config_ext
    · rfl
    · rfl
    · funext p; fin_cases p <;> rfl

end RiemannMachineVerification
