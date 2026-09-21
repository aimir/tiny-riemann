import RiemannMachineVerification.Registers.Arithmetic.Multiplication
namespace RiemannMachineVerification

/-- [proof-guide] The countdown loop at address 453 computes truncated natural subtraction.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem subtraction_loop_453 (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨453, by decide⟩ s n 0 0 capacity)
      (sourceConfiguration ⟨458, by decide⟩ {s with num := s.num - n} 0 0 0 capacity) := by
  induction n generalizing s with
  | zero => simpa only [Nat.sub_zero] using sub_zero_453 s capacity
  | succ n ih =>
    have h : RExec macroProgram (sourceConfiguration ⟨453, by decide⟩ s (n + 1) 0 0 capacity)
        (sourceConfiguration ⟨453, by decide⟩ {s with num := s.num - 1} n 0 0 capacity) := by
      by_cases hz : s.num = 0
      · simpa only [hz, Nat.zero_sub] using sub_positive_zero_453 s n capacity hz
      · exact sub_positive_positive_453 s n capacity hz
    apply h.trans
    simpa only [Nat.sub_sub, Nat.add_comm] using ih {s with num := s.num - 1}

/-- [proof-guide] The countdown loop at address 1053 computes truncated natural subtraction.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem subtraction_loop_1053 (s : Registers) (n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1053, by decide⟩ s n 0 0 capacity)
      (sourceConfiguration ⟨1058, by decide⟩ {s with denom := s.denom - n} 0 0 0 capacity) := by
  induction n generalizing s with
  | zero => simpa only [Nat.sub_zero] using sub_zero_1053 s capacity
  | succ n ih =>
    have h : RExec macroProgram (sourceConfiguration ⟨1053, by decide⟩ s (n + 1) 0 0 capacity)
        (sourceConfiguration ⟨1053, by decide⟩ {s with denom := s.denom - 1} n 0 0 capacity) := by
      by_cases hz : s.denom = 0
      · simpa only [hz, Nat.zero_sub] using sub_positive_zero_1053 s n capacity hz
      · exact sub_positive_positive_1053 s n capacity hz
    apply h.trans
    simpa only [Nat.sub_sub, Nat.add_comm] using ih {s with denom := s.denom - 1}

/-- [proof-guide] The first subtraction block computes truncated subtraction on its designated registers.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_subtract_first (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨424, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨458, by decide⟩ {s with num := s.num - s.denom * s.x} 0 0 0 capacity) :=
  (multiply_block_436 s capacity).trans (subtraction_loop_453 s (s.denom * s.x) capacity)

/-- [proof-guide] The final subtraction block computes the positive part of the integer-test difference.
Proof: Composes the displayed previously proved facts by ordinary Lean inference.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem arithmetic_subtract_last (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1024, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨1058, by decide⟩ {s with denom := s.denom - s.num * s.x} 0 0 0 capacity) :=
  (multiply_block_1036 s capacity).trans (subtraction_loop_1053 s (s.num * s.x) capacity)

end RiemannMachineVerification
