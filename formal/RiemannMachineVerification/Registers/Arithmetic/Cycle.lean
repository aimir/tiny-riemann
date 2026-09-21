import RiemannMachineVerification.Registers.Arithmetic.Harmonic
import RiemannMachineVerification.Registers.Arithmetic.LcmExecution
import RiemannMachineVerification.Registers.Arithmetic.Subtraction
import RiemannMachineVerification.Registers.Arithmetic.StructuredCorrectness
namespace RiemannMachineVerification

/-- [proof-guide] The register arithmetic tail computes the integer counterexample test.
Proof: Combines `arithmetic_subtract_last` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem compiled_arithmetic_tail (n a b c capacity : ℕ) :
    RExec macroProgram
      (sourceConfiguration ⟨147, by decide⟩ ⟨n, lcmUpto n, a, b, 0, c⟩ 0 0 0 capacity)
      (sourceConfiguration ⟨1058, by decide⟩ (afterMain n) 0 0 0 capacity) := by
  apply (after_lcm ⟨n, lcmUpto n, a, b, 0, c⟩ capacity).trans
  apply (compiled_harmonic_256 _ capacity).trans
  apply (after_harmonic_first _ capacity).trans
  apply (arithmetic_subtract_first _ capacity).trans
  apply (after_sub_first _ capacity).trans
  apply (compiled_harmonic_512 _ capacity).trans
  apply (multiply_block_652 _ capacity).trans
  apply (multiply_block_692 _ capacity).trans
  apply (after_square_first _ capacity).trans
  apply (multiply_block_780 _ capacity).trans
  apply (multiply_block_820 _ capacity).trans
  apply (after_scaled_products _ capacity).trans
  apply (multiply_block_908 _ capacity).trans
  apply (multiply_block_948 _ capacity).trans
  apply (after_square_second _ capacity).trans
  exact arithmetic_subtract_last _ capacity

/-- [proof-guide] The register main body reaches the test with the computed arithmetic values.
Proof: Combines `h.trans` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem compiled_main_pretest (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨0, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨1058, by decide⟩ (afterMain (s.x + 1)) 0 0 0 (capacity + 16)) := by
  apply (main_prefix s capacity).trans
  obtain ⟨a, b, h⟩ := compiled_lcm_initialized (s.x + 1) s.num s.denom s.c (capacity + 16)
  exact h.trans (compiled_arithmetic_tail (s.x + 1) a b s.c (capacity + 16))

/-- One complete search iteration of the literal macro register program.
Every iteration takes positive finite time, including when it finds a witness. -/
theorem compiled_cycle (s : Registers) (capacity : ℕ) :
    ∃ t, 0 < t ∧
      (if 0 < arithmeticTail (s.x + 1) then
        (trajectory (registerStep macroProgram) (sourceConfiguration ⟨0, by decide⟩ s 0 0 0 capacity) t).pc = none
      else trajectory (registerStep macroProgram) (sourceConfiguration ⟨0, by decide⟩ s 0 0 0 capacity) t =
        sourceConfiguration ⟨0, by decide⟩ (afterMain (s.x + 1)) 0 0 0 (capacity + 16)) := by
  obtain ⟨i, hi⟩ := compiled_main_pretest s capacity
  have hip : 0 < i := by
    by_contra h
    have he : i = 0 := by omega
    subst i
    have hp := congrArg (fun (r : RegisterConfiguration) => r.pc) hi
    simp [trajectory, sourceConfiguration, Fin.mk.injEq] at hp
  cases ht : arithmeticTail (s.x + 1) with
  | zero =>
    have tail : RExec macroProgram
        (sourceConfiguration ⟨1058, by decide⟩ (afterMain (s.x + 1)) 0 0 0 (capacity + 16))
        (sourceConfiguration ⟨0, by decide⟩ (afterMain (s.x + 1)) 0 0 0 (capacity + 16)) := by
      simpa only [afterMain, ht] using main_return (afterMain (s.x + 1)) (capacity + 16)
    obtain ⟨j, hj⟩ := tail
    refine ⟨i + j, by omega, ?_⟩
    simp only [ht, Nat.lt_irrefl, ↓reduceIte]
    rw [trajectory_add, hi, hj]
  | succ n =>
    obtain ⟨j, hj⟩ := main_halt (afterMain (s.x + 1)) n (capacity + 16)
    have he : {afterMain (s.x + 1) with denom := n + 1} = afterMain (s.x + 1) := by
      simp only [afterMain, ht]
    rw [he] at hj
    refine ⟨i + j, by omega, ?_⟩
    simp only [ht, Nat.zero_lt_succ, ↓reduceIte]
    rw [trajectory_add, hi, hj]

end RiemannMachineVerification
