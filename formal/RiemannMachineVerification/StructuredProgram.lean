import Mathlib.Tactic

namespace RiemannMachineVerification

/-- A small structured imperative language. State updates are total functions;
iteration and halting have explicit operational rules. -/
inductive Command (σ : Type) where
  | skip
  | modify (f : σ → σ)
  | seq (a b : Command σ)
  | branch (p : σ → Bool) (a b : Command σ)
  | loop (p : σ → Bool) (body : Command σ)
  | halt

inductive Outcome (σ : Type) where
  | normal (state : σ)
  | halted (state : σ)
  deriving DecidableEq

inductive Eval {σ : Type} : Command σ → σ → Outcome σ → Prop
  | skip (s) : Eval .skip s (.normal s)
  | modify (f s) : Eval (.modify f) s (.normal (f s))
  | seq_normal {a b s t out} : Eval a s (.normal t) → Eval b t out → Eval (.seq a b) s out
  | seq_halted {a b s t} : Eval a s (.halted t) → Eval (.seq a b) s (.halted t)
  | branch_true {p a b s out} : p s = true → Eval a s out → Eval (.branch p a b) s out
  | branch_false {p a b s out} : p s = false → Eval b s out → Eval (.branch p a b) s out
  | loop_false {p body s} : p s = false → Eval (.loop p body) s (.normal s)
  | loop_next {p body s t out} : p s = true → Eval body s (.normal t) →
      Eval (.loop p body) t out → Eval (.loop p body) s out
  | loop_halted {p body s t} : p s = true → Eval body s (.halted t) →
      Eval (.loop p body) s (.halted t)
  | halt (s) : Eval .halt s (.halted s)

theorem Eval.deterministic {σ : Type} {c : Command σ} {s : σ} {a b : Outcome σ}
    (ha : Eval c s a) (hb : Eval c s b) : a = b := by
  induction ha generalizing b with
  | skip => cases hb; rfl
  | modify => cases hb; rfl
  | halt => cases hb; rfl
  | seq_normal _ _ iha ihb =>
    cases hb with
    | seq_normal hc hd => cases iha hc; exact ihb hd
    | seq_halted hc => cases iha hc
  | seq_halted _ ih =>
    cases hb with
    | seq_normal hc hd => cases ih hc
    | seq_halted hc => exact ih hc
  | branch_true hp _ ih =>
    cases hb with
    | branch_true _ hc => exact ih hc
    | branch_false hn _ => simp_all
  | branch_false hp _ ih =>
    cases hb with
    | branch_false _ hc => exact ih hc
    | branch_true hn _ => simp_all
  | loop_false hp =>
    cases hb with
    | loop_false => rfl
    | loop_next hn _ _ => simp_all
    | loop_halted hn _ => simp_all
  | loop_next hp _ _ iha ihb =>
    cases hb with
    | loop_false hn => simp_all
    | loop_next _ hc hd => cases iha hc; exact ihb hd
    | loop_halted _ hc => cases iha hc
  | loop_halted hp _ ih =>
    cases hb with
    | loop_false hn => simp_all
    | loop_next _ hc _ => cases ih hc
    | loop_halted _ hc => exact ih hc

/-- The compiler repeats main after a normal return to its end. Explicit halt
is the only successful termination of this repeatedly executed program. -/
inductive RepeatedHalts {σ : Type} (main : Command σ) : σ → Prop
  | halt {s t} : Eval main s (.halted t) → RepeatedHalts main s
  | next {s t} : Eval main s (.normal t) → RepeatedHalts main t → RepeatedHalts main s

end RiemannMachineVerification
