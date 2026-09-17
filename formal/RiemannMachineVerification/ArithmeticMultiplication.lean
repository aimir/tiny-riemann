import RiemannMachineVerification.ArithmeticPaths

namespace RiemannMachineVerification

theorem multiply_loop_284 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨284, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨301, by decide⟩ s (a + n * s.num) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_284 s a capacity), (fun a n => mul_positive_284 s a n capacity)⟩ a n

theorem multiply_block_284 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨272, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨324, by decide⟩ ({s with num := s.i * s.num + s.denom}) 0 0 0 capacity) := by
  apply (mul_prefix_284 s 0 capacity).trans
  have h := multiply_loop_284 s 0 s.i capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_284 s (s.i * s.num) capacity)

theorem multiply_loop_340 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨340, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨357, by decide⟩ s (a + n * s.denom) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_340 s a capacity), (fun a n => mul_positive_340 s a n capacity)⟩ a n

theorem multiply_block_340 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨328, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨368, by decide⟩ ({s with denom := s.i * s.denom}) 0 0 0 capacity) := by
  apply (mul_prefix_340 s 0 capacity).trans
  have h := multiply_loop_340 s 0 s.i capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_340 s (s.i * s.denom) capacity)

theorem multiply_loop_436 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨436, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨453, by decide⟩ s (a + n * s.x) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_436 s a capacity), (fun a n => mul_positive_436 s a n capacity)⟩ a n

theorem multiply_block_436 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨424, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨453, by decide⟩ s (s.denom * s.x) 0 0 capacity) := by
  apply (mul_prefix_436 s 0 capacity).trans
  have h := multiply_loop_436 s 0 s.denom capacity
  simp only [Nat.zero_add] at h
  exact h

theorem multiply_loop_540 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨540, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨557, by decide⟩ s (a + n * s.num) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_540 s a capacity), (fun a n => mul_positive_540 s a n capacity)⟩ a n

theorem multiply_block_540 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨528, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨580, by decide⟩ ({s with num := s.i * s.num + s.denom}) 0 0 0 capacity) := by
  apply (mul_prefix_540 s 0 capacity).trans
  have h := multiply_loop_540 s 0 s.i capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_540 s (s.i * s.num) capacity)

theorem multiply_loop_596 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨596, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨613, by decide⟩ s (a + n * s.denom) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_596 s a capacity), (fun a n => mul_positive_596 s a n capacity)⟩ a n

theorem multiply_block_596 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨584, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨624, by decide⟩ ({s with denom := s.i * s.denom}) 0 0 0 capacity) := by
  apply (mul_prefix_596 s 0 capacity).trans
  have h := multiply_loop_596 s 0 s.i capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_596 s (s.i * s.denom) capacity)

theorem multiply_loop_652 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨652, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨669, by decide⟩ s (a + n * s.num) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_652 s a capacity), (fun a n => mul_positive_652 s a n capacity)⟩ a n

theorem multiply_block_652 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨640, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨680, by decide⟩ ({s with num := s.num * s.num}) 0 0 0 capacity) := by
  apply (mul_prefix_652 s 0 capacity).trans
  have h := multiply_loop_652 s 0 s.num capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_652 s (s.num * s.num) capacity)

theorem multiply_loop_692 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨692, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨709, by decide⟩ s (a + n * s.denom) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_692 s a capacity), (fun a n => mul_positive_692 s a n capacity)⟩ a n

theorem multiply_block_692 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨680, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨720, by decide⟩ ({s with denom := s.denom * s.denom}) 0 0 0 capacity) := by
  apply (mul_prefix_692 s 0 capacity).trans
  have h := multiply_loop_692 s 0 s.denom capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_692 s (s.denom * s.denom) capacity)

theorem multiply_loop_780 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨780, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨797, by decide⟩ s (a + n * s.num) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_780 s a capacity), (fun a n => mul_positive_780 s a n capacity)⟩ a n

theorem multiply_block_780 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨768, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨808, by decide⟩ ({s with num := s.c * s.num}) 0 0 0 capacity) := by
  apply (mul_prefix_780 s 0 capacity).trans
  have h := multiply_loop_780 s 0 s.c capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_780 s (s.c * s.num) capacity)

theorem multiply_loop_820 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨820, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨837, by decide⟩ s (a + n * s.denom) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_820 s a capacity), (fun a n => mul_positive_820 s a n capacity)⟩ a n

theorem multiply_block_820 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨808, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨848, by decide⟩ ({s with denom := s.lcm * s.denom}) 0 0 0 capacity) := by
  apply (mul_prefix_820 s 0 capacity).trans
  have h := multiply_loop_820 s 0 s.lcm capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_820 s (s.lcm * s.denom) capacity)

theorem multiply_loop_908 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨908, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨925, by decide⟩ s (a + n * s.num) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_908 s a capacity), (fun a n => mul_positive_908 s a n capacity)⟩ a n

theorem multiply_block_908 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨896, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨936, by decide⟩ ({s with num := s.num * s.num}) 0 0 0 capacity) := by
  apply (mul_prefix_908 s 0 capacity).trans
  have h := multiply_loop_908 s 0 s.num capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_908 s (s.num * s.num) capacity)

theorem multiply_loop_948 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨948, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨965, by decide⟩ s (a + n * s.denom) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_948 s a capacity), (fun a n => mul_positive_948 s a n capacity)⟩ a n

theorem multiply_block_948 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨936, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨976, by decide⟩ ({s with denom := s.denom * s.denom}) 0 0 0 capacity) := by
  apply (mul_prefix_948 s 0 capacity).trans
  have h := multiply_loop_948 s 0 s.denom capacity
  simp only [Nat.zero_add] at h
  exact h.trans (mul_suffix_948 s (s.denom * s.denom) capacity)

theorem multiply_loop_1036 (s : Registers) (a n capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1036, by decide⟩ s a n 0 capacity)
      (sourceConfiguration ⟨1053, by decide⟩ s (a + n * s.x) 0 0 capacity) :=
  AccumulatorLoop.correct ⟨(fun a => mul_zero_1036 s a capacity), (fun a n => mul_positive_1036 s a n capacity)⟩ a n

theorem multiply_block_1036 (s : Registers) (capacity : ℕ) :
    RExec macroProgram (sourceConfiguration ⟨1024, by decide⟩ s 0 0 0 capacity)
      (sourceConfiguration ⟨1053, by decide⟩ s (s.num * s.x) 0 0 capacity) := by
  apply (mul_prefix_1036 s 0 capacity).trans
  have h := multiply_loop_1036 s 0 s.num capacity
  simp only [Nat.zero_add] at h
  exact h

end RiemannMachineVerification
