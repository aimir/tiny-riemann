import RiemannMachineVerification.Registers.Arithmetic.Multiplication
namespace RiemannMachineVerification

/-- [proof-guide] The harmonic loop at address 256 computes the exact harmonic numerator and denominator.
Proof: Induction on `i`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem compiled_harmonic_loop_256 (x l c i a b capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨268, by decide⟩ ⟨x, l, a, b, i, c⟩ 0 0 0 capacity)
      (sourceConfiguration ⟨384, by decide⟩
        ⟨x, l, (harmonicLoop i a b).1, (harmonicLoop i a b).2, 0, c⟩ 0 0 0 capacity) := by
  induction i generalizing a b with
  | zero => simpa only [harmonicLoop] using harmonic_exit_256 ⟨x, l, a, b, 0, c⟩ capacity
  | succ i ih =>
    apply (harmonic_enter_256 ⟨x, l, a, b, i + 1, c⟩ i capacity).trans
    apply (multiply_block_284 ⟨x, l, a, b, i + 1, c⟩ capacity).trans
    apply (harmonic_middle_256 ⟨x, l, (i + 1) * a + b, b, i + 1, c⟩ capacity).trans
    apply (multiply_block_340 ⟨x, l, (i + 1) * a + b, b, i + 1, c⟩ capacity).trans
    apply (harmonic_back_256 ⟨x, l, (i + 1) * a + b, (i + 1) * b, i + 1, c⟩ i capacity).trans
    simpa only [harmonicLoop] using ih ((i + 1) * a + b) ((i + 1) * b)

/-- [proof-guide] The harmonic initialization and loop at address 256 computes the exact harmonic numerator and denominator.
Proof: Combines `compiled_harmonic_loop_256` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem compiled_harmonic_256 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨256, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨384, by decide⟩
        {s with num := harmonicNumerator s.i, denom := s.i.factorial, i := 0} 0 0 0 capacity) := by
  apply (harmonic_init_256 s capacity).trans
  simpa only [harmonicLoop_initialized] using compiled_harmonic_loop_256 s.x s.lcm s.c s.i 0 1 capacity

/-- [proof-guide] The harmonic loop at address 512 computes the exact harmonic numerator and denominator.
Proof: Induction on `i`, using the displayed step equations and auxiliary lemmas.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem compiled_harmonic_loop_512 (x l c i a b capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨524, by decide⟩ ⟨x, l, a, b, i, c⟩ 0 0 0 capacity)
      (sourceConfiguration ⟨640, by decide⟩
        ⟨x, l, (harmonicLoop i a b).1, (harmonicLoop i a b).2, 0, c⟩ 0 0 0 capacity) := by
  induction i generalizing a b with
  | zero => simpa only [harmonicLoop] using harmonic_exit_512 ⟨x, l, a, b, 0, c⟩ capacity
  | succ i ih =>
    apply (harmonic_enter_512 ⟨x, l, a, b, i + 1, c⟩ i capacity).trans
    apply (multiply_block_540 ⟨x, l, a, b, i + 1, c⟩ capacity).trans
    apply (harmonic_middle_512 ⟨x, l, (i + 1) * a + b, b, i + 1, c⟩ capacity).trans
    apply (multiply_block_596 ⟨x, l, (i + 1) * a + b, b, i + 1, c⟩ capacity).trans
    apply (harmonic_back_512 ⟨x, l, (i + 1) * a + b, (i + 1) * b, i + 1, c⟩ i capacity).trans
    simpa only [harmonicLoop] using ih ((i + 1) * a + b) ((i + 1) * b)

/-- [proof-guide] The harmonic initialization and loop at address 512 computes the exact harmonic numerator and denominator.
Proof: Combines `compiled_harmonic_loop_512` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem compiled_harmonic_512 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨512, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨640, by decide⟩
        {s with num := harmonicNumerator s.i, denom := s.i.factorial, i := 0} 0 0 0 capacity) := by
  apply (harmonic_init_512 s capacity).trans
  simpa only [harmonicLoop_initialized] using compiled_harmonic_loop_512 s.x s.lcm s.c s.i 0 1 capacity

end RiemannMachineVerification
