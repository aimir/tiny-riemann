import RiemannMachineVerification.ArithmeticPaths

namespace RiemannMachineVerification

theorem compiled_divisibility (x l i c n b capacity : ℕ) (hi : 0 < i) :
    RExec macroProgram (sourceConfiguration ⟨84, by decide⟩ ⟨x, l, n, b, i, c⟩ 0 0 0 capacity)
      (sourceConfiguration ⟨111, by decide⟩
        ⟨x, l, 0, countdownLoop n i b, i, c⟩ 0 0 0 capacity) := by
  induction n generalizing b with
  | zero => simpa only [countdownLoop] using div_exit ⟨x, l, 0, b, i, c⟩ capacity
  | succ n ih =>
    by_cases hb : b = 0
    · subst b
      apply (div_reset ⟨x, l, n + 1, 0, i, c⟩ n capacity (by simpa using Nat.ne_of_gt hi)).trans
      simpa only [countdownLoop, countdownNext, ↓reduceIte] using ih (i - 1)
    · have hstep := div_next ⟨x, l, n + 1, b, i, c⟩ n capacity hb (by simp)
      simp only [Nat.add_sub_cancel] at hstep
      apply hstep.trans
      simpa only [countdownLoop, countdownNext, hb, ↓reduceIte] using ih (b - 1)

theorem compiled_lcm_body (n candidate a b i c capacity : ℕ) (hi : 0 < i) :
    RExec macroProgram (sourceConfiguration ⟨44, by decide⟩ ⟨n, candidate, a, b, i, c⟩ 0 0 0 capacity)
      (sourceConfiguration ⟨44, by decide⟩
        (if 0 < countdownLoop candidate i 0 then
          ⟨n, candidate + 1, 0, countdownLoop candidate i 0, n, c⟩
        else ⟨n, candidate, 0, countdownLoop candidate i 0, i - 1, c⟩) 0 0 0 capacity) := by
  cases i with
  | zero => omega
  | succ i =>
    apply (lcm_enter ⟨n, candidate, a, b, i + 1, c⟩ i capacity).trans
    apply (compiled_divisibility n candidate (i + 1) c candidate 0 capacity (by omega)).trans
    cases hd : countdownLoop candidate (i + 1) 0 with
    | zero =>
      simpa only [hd, Nat.lt_irrefl, ↓reduceIte, Nat.add_sub_cancel] using
        lcm_pass ⟨n, candidate, 0, 0, i + 1, c⟩ i capacity
    | succ d =>
      simpa only [hd, Nat.zero_lt_succ, ↓reduceIte] using
        lcm_retry ⟨n, candidate, 0, d + 1, i + 1, c⟩ d capacity

theorem compiled_lcm_search {n candidate i result : ℕ}
    (h : LcmSearchEval n candidate i result) (a b c capacity : ℕ) :
    ∃ a' b', RExec macroProgram
      (sourceConfiguration ⟨44, by decide⟩ ⟨n, candidate, a, b, i, c⟩ 0 0 0 capacity)
      (sourceConfiguration ⟨147, by decide⟩ ⟨n, result, a', b', 0, c⟩ 0 0 0 capacity) := by
  induction h generalizing a b with
  | done candidate => exact ⟨a, b, lcm_exit ⟨n, candidate, a, b, 0, c⟩ capacity⟩
  | pass candidate i result hi hz tail ih =>
    obtain ⟨a', b', hh⟩ := ih 0 0
    refine ⟨a', b', ?_⟩
    apply RExec.trans (b := sourceConfiguration ⟨44, by decide⟩
      ⟨n, candidate, 0, 0, i - 1, c⟩ 0 0 0 capacity) _ hh
    simpa only [hz, Nat.lt_irrefl, if_false] using compiled_lcm_body n candidate a b i c capacity hi
  | retry candidate i result hi hz tail ih =>
    obtain ⟨a', b', hh⟩ := ih 0 (countdownLoop candidate i 0)
    refine ⟨a', b', ?_⟩
    apply RExec.trans (b := sourceConfiguration ⟨44, by decide⟩
      ⟨n, candidate + 1, 0, countdownLoop candidate i 0, n, c⟩ 0 0 0 capacity) _ hh
    simpa only [if_pos (Nat.pos_of_ne_zero hz)] using compiled_lcm_body n candidate a b i c capacity hi

theorem compiled_lcm_initialized (n a b c capacity : ℕ) :
    ∃ a' b', RExec macroProgram
      (sourceConfiguration ⟨44, by decide⟩ ⟨n, 1, a, b, n, c⟩ 0 0 0 capacity)
      (sourceConfiguration ⟨147, by decide⟩ ⟨n, lcmUpto n, a', b', 0, c⟩ 0 0 0 capacity) :=
  compiled_lcm_search (lcmSearch_initialized n) a b c capacity

end RiemannMachineVerification
