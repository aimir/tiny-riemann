import RiemannMachineVerification.TapeWord

namespace RiemannMachineVerification

def unaryRegisters : List ℕ → List Bool
  | [] => []
  | v :: rest => List.replicate (v + 1) true ++ false :: unaryRegisters rest

theorem registerTailWord_cons_bits (v : ℕ) (rest : List ℕ) :
    (registerTailWord (v :: rest)).bits =
      false :: (List.replicate (v + 1) true ++ (registerTailWord rest).bits) := by
  simp [registerTailWord, TapeWord.bits, TapeWord.ones_bits, List.replicate_succ]

theorem registerWord_cons_bits (v : ℕ) (rest : List ℕ) :
    (registerWord (v :: rest)).bits =
      List.replicate (v + 1) true ++ (registerTailWord rest).bits := by
  simp [registerWord, TapeWord.ones_bits]

theorem registerTailWord_append_bits (a b : List ℕ) :
    (registerTailWord (a ++ b)).bits = (registerTailWord a).bits ++ (registerTailWord b).bits := by
  induction a with
  | nil => rfl
  | cons v a ih => simp [registerTailWord_cons_bits, ih, List.append_assoc]

theorem unaryRegisters_reverse (values : List ℕ) :
    (unaryRegisters values).reverse = (registerTailWord values.reverse).bits := by
  induction values with
  | nil => rfl
  | cons v rest ih =>
    simp [unaryRegisters, List.reverse_append, ih, registerTailWord_append_bits,
      registerTailWord_cons_bits, registerTailWord, TapeWord.bits, List.append_assoc]
    simp [TapeWord.ones_bits, TapeWord.bits, List.replicate_succ]

theorem registerTail_stream (values : List ℕ) :
    streamPrefix (registerTailWord values).bits zeros = streamCons false (registerStream values) := by
  cases values with
  | nil => exact streamCons_zero.symm
  | cons v rest =>
    simp only [registerTailWord_cons_bits, registerStream, registerWord_cons_bits, streamPrefix_cons]

theorem registerTailWord_reverse_bits (values : List ℕ) :
    (registerTailWord values.reverse).bits.reverse = unaryRegisters values := by
  rw [← unaryRegisters_reverse, List.reverse_reverse]

theorem registerStream_cons (v : ℕ) (rest : List ℕ) :
    registerStream (v :: rest) =
      streamPrefix (List.replicate (v + 1) true) (streamCons false (registerStream rest)) := by
  rw [registerStream, registerWord_cons_bits, streamPrefix_append, registerTail_stream]

theorem registerStream_append (a b : List ℕ) :
    registerStream (a ++ b) = streamPrefix (unaryRegisters a) (registerStream b) := by
  induction a with
  | nil => rfl
  | cons v a ih =>
    simp only [List.cons_append, registerStream_cons, ih, unaryRegisters,
      streamPrefix_append, streamPrefix_cons]

theorem registerStream_increment (v : ℕ) (rest : List ℕ) :
    registerStream ((v + 1) :: rest) = streamCons true (registerStream (v :: rest)) := by
  rw [registerStream_cons, List.replicate_succ, streamPrefix_cons, ← registerStream_cons]

end RiemannMachineVerification
