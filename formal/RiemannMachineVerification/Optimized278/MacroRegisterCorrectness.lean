import RiemannMachineVerification.Optimized278.MacroSites

namespace RiemannMachineVerification.Optimized278

theorem macro_register_expansion (s : RegisterConfiguration) :
    ∃ t, 0 < t ∧ trajectory (registerStep primitiveProgram) s t = registerStep macroProgram s := by
  cases hp : s.pc with
  | none =>
    refine ⟨1, by decide, ?_⟩
    simp only [trajectory, registerStep, hp]
  | some pc =>
    have hsite := macro_site pc
    cases hi : macroProgram pc
    case transfer source targets next =>
      have site : TransferSite primitiveProgram pc next source targets := by
        simpa only [MacroSite, hi] using hsite
      obtain ⟨t, ht, he⟩ := site.correct s.values s.capacity
      refine ⟨t, ht, ?_⟩
      have hs : s = ⟨some pc, s.values, s.capacity⟩ :=
        registerConfiguration_ext hp rfl rfl
      conv_lhs => rw [hs]
      rw [he]
      simp only [registerStep, hp, hi]
    all_goals
      have heq : macroProgram pc = primitiveProgram pc := by
        simpa only [MacroSite, hi] using hsite
      refine ⟨1, by decide, ?_⟩
      simp only [trajectory, registerStep, hp, ← heq, hi] <;> rfl

/-- Contracting all literal transfer loops preserves and reflects halting. -/
theorem primitive_iff_macro : RegisterHalts primitiveProgram ↔ RegisterHalts macroProgram := by
  apply eventually_iff_of_simulation (registerStep primitiveProgram) (registerStep macroProgram)
    (fun s => s.pc = none) (fun s => s.pc = none)
    initialRegisterConfiguration initialRegisterConfiguration Eq rfl
  · intro s hs; rw [registerStep_halted _ s hs]; exact hs
  · intro a b h; subst b; rfl
  · intro a b h; subst b; exact macro_register_expansion a

end RiemannMachineVerification.Optimized278
