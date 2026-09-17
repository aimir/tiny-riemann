import RiemannMachineVerification.ZipperExecution

namespace RiemannMachineVerification

/-- Finite data with no adjacent zeroes and no final zero. These are the
possible register contents before the blank suffix (or in reverse order). -/
inductive TapeWord where
  | empty
  | one (rest : TapeWord)
  | zeroOne (rest : TapeWord)

def TapeWord.bits : TapeWord → List Bool
  | .empty => []
  | .one rest => true :: rest.bits
  | .zeroOne rest => false :: true :: rest.bits

/-- The prefix produced by carrying a one through a word; the final carried
one is excluded. This is used to verify insertion into the unary registers. -/
def TapeWord.carried : TapeWord → List Bool
  | .empty => []
  | .one rest => true :: rest.carried
  | .zeroOne rest => true :: false :: rest.carried

theorem TapeWord.carried_append (w : TapeWord) :
    w.carried ++ [true] = true :: w.bits := by
  induction w with
  | empty => rfl
  | one w ih => simpa only [carried, bits, List.cons_append, List.cons.injEq, true_and] using ih
  | zeroOne w ih => simpa only [carried, bits, List.cons_append, List.cons.injEq, true_and] using ih

def TapeWord.append : TapeWord → TapeWord → TapeWord
  | .empty, b => b
  | .one a, b => .one (append a b)
  | .zeroOne a, b => .zeroOne (append a b)

theorem TapeWord.append_bits (a b : TapeWord) : (a.append b).bits = a.bits ++ b.bits := by
  induction a <;> simp_all [append, bits]

def TapeWord.reverseCarried : TapeWord → TapeWord
  | .empty => .empty
  | .one w => w.reverseCarried.append (.one .empty)
  | .zeroOne w => w.reverseCarried.append (.zeroOne .empty)

theorem TapeWord.reverseCarried_bits (w : TapeWord) :
    w.reverseCarried.bits = w.carried.reverse := by
  induction w <;> simp_all [reverseCarried, carried, bits, append_bits, List.reverse_cons]

theorem TapeWord.carried_prefix (w : TapeWord) (tail : BitStream) :
    streamPrefix w.carried (streamCons true tail) = streamCons true (streamPrefix w.bits tail) := by
  calc
    _ = streamPrefix (w.carried ++ [true]) tail := (streamPrefix_append _ _ _).symm
    _ = _ := by rw [carried_append]; rfl

theorem TapeWord.reverseCarried_carried (w : TapeWord) :
    w.reverseCarried.carried.reverse = w.bits := by
  have h := congrArg List.reverse (carried_append w.reverseCarried)
  simp only [List.reverse_append, List.reverse_singleton, List.singleton_append,
    List.reverse_cons, List.reverse_nil, List.nil_append, reverseCarried_bits,
    List.reverse_reverse] at h
  rw [carried_append] at h
  exact (List.cons.inj h).2

theorem TapeWord.reverse_prefix (w : TapeWord) (tail : BitStream) :
    streamPrefix w.bits.reverse (streamCons true tail) =
      streamCons true (streamPrefix w.reverseCarried.bits tail) := by
  have h := congrArg List.reverse w.carried_append
  simp only [List.reverse_append, List.reverse_singleton, List.reverse_cons,
    List.reverse_nil, List.nil_append, List.singleton_append] at h
  change streamPrefix w.bits.reverse (streamPrefix [true] tail) = _
  rw [← streamPrefix_append]
  rw [← h, streamPrefix_cons, reverseCarried_bits]


def TapeWord.ones : ℕ → TapeWord → TapeWord
  | 0, w => w
  | n + 1, w => .one (ones n w)

theorem TapeWord.ones_bits (n : ℕ) (w : TapeWord) :
    (ones n w).bits = List.replicate n true ++ w.bits := by
  induction n with
  | zero => rfl
  | succ n ih => simp [ones, bits, ih, List.replicate_succ]

def registerTailWord : List ℕ → TapeWord
  | [] => .empty
  | v :: rest => .zeroOne (.ones v (registerTailWord rest))

def registerWord : List ℕ → TapeWord
  | [] => .empty
  | v :: rest => .ones (v + 1) (registerTailWord rest)

def registerStream (values : List ℕ) : BitStream :=
  streamPrefix (registerWord values).bits zeros

end RiemannMachineVerification
