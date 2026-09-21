import RiemannMachineVerification.Registers.Execution
namespace RiemannMachineVerification.RegisterModel

variable {pcSize : ℕ}

structure TransferSite (program : (Fin pcSize) → (RegisterInstruction pcSize))
    (entry exit : (Fin pcSize)) (source : RegisterIndex) (targets : List RegisterIndex) : Prop where
  fresh : source ∉ targets
  zero : ∀ (values : RegisterIndex → ℕ) (capacity : ℕ), values source = 0 →
    ∃ t, 0 < t ∧ trajectory (registerStep program) ⟨some entry, values, capacity⟩ t =
      ⟨some exit, values, capacity⟩
  positive : ∀ (values : RegisterIndex → ℕ) (capacity : ℕ), 0 < values source →
    ∃ t, 0 < t ∧ trajectory (registerStep program) ⟨some entry, values, capacity⟩ t =
      ⟨some entry, transferRound values source targets, capacity⟩

/-- [proof-guide] A certified primitive loop implements its transfer instruction for every natural source value.
Proof: Induction on `n`, using the displayed step equations and auxiliary lemmas.
Role: Supplies the shared register execution theory used in compiler correctness and transfer expansion. -/
theorem TransferSite.correct {program : (Fin pcSize) → (RegisterInstruction pcSize)}
    {entry exit : (Fin pcSize)} {source : RegisterIndex} {targets : List RegisterIndex}
    (site : TransferSite program entry exit source targets)
    (values : RegisterIndex → ℕ) (capacity : ℕ) :
    ∃ t, 0 < t ∧ trajectory (registerStep program) ⟨some entry, values, capacity⟩ t =
      ⟨some exit, transferValues values source targets, capacity⟩ := by
  suffices ∀ n (v : RegisterIndex → ℕ), v source = n →
      ∃ t, 0 < t ∧ trajectory (registerStep program) ⟨some entry, v, capacity⟩ t =
        ⟨some exit, transferValues v source targets, capacity⟩ from this _ values rfl
  intro n
  induction n with
  | zero =>
    intro v hv
    simpa only [transferValues_zero v source targets hv] using site.zero v capacity hv
  | succ n ih =>
    intro v hv
    have hn : 0 < v source := by omega
    obtain ⟨i, hi, hfirst⟩ := site.positive v capacity hn
    obtain ⟨j, hj, hrest⟩ := ih (transferRound v source targets)
      (by rw [transferRound_source v source targets site.fresh, hv]; omega)
    refine ⟨i + j, by omega, ?_⟩
    rw [trajectory_add, hfirst, hrest, transferValues_round v source targets site.fresh hn]

end RiemannMachineVerification.RegisterModel
