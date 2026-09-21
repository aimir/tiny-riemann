import RiemannMachineVerification.Optimized278.RegisterProgram
import RiemannMachineVerification.Optimized278.Machine389
import RiemannMachineVerification.FiniteWindow

set_option maxRecDepth 8192

namespace RiemannMachineVerification.Optimized278

def pcPrefix (pc : ProgramCounter) (p : Fin 12) : Bool :=
  if p.val = 0 ∨ p.val = 11 then false else pc.val.testBit (10 - p.val)

def initialPrefix (pc : ProgramCounter) : FiniteWindow.Config 389 12 :=
  ⟨some machine389.entry, 0, pcPrefix pc⟩

def backendIncrementEntries : Array (Fin 389) := #[
  ⟨70, by decide⟩, ⟨193, by decide⟩, ⟨196, by decide⟩, ⟨197, by decide⟩, ⟨194, by decide⟩, ⟨198, by decide⟩, ⟨364, by decide⟩, ⟨195, by decide⟩, ⟨199, by decide⟩
]

def backendIncrement (r : RegisterIndex) : Fin 389 :=
  backendIncrementEntries[r.val]'(by simpa only [show backendIncrementEntries.size = 9 from rfl] using r.isLt)

def backendDecrementEntries : Array (Fin 389) := #[
  ⟨184, by decide⟩, ⟨183, by decide⟩, ⟨188, by decide⟩, ⟨189, by decide⟩, ⟨185, by decide⟩, ⟨190, by decide⟩, ⟨186, by decide⟩, ⟨187, by decide⟩, ⟨191, by decide⟩
]

def backendDecrement (r : RegisterIndex) : Fin 389 :=
  backendDecrementEntries[r.val]'(by simpa only [show backendDecrementEntries.size = 9 from rfl] using r.isLt)

def backendInitialize : Fin 389 := ⟨62, by decide⟩

def dispatcherTarget (pc : ProgramCounter) : FiniteWindow.Config 389 12 :=
  match primitiveProgram pc with
  | .increment r _ => ⟨some (backendIncrement r), 11, pcPrefix pc⟩
  | .decrement r _ _ => ⟨some (backendDecrement r), 11, pcPrefix pc⟩
  | .initialize _ => ⟨some backendInitialize, 11, pcPrefix pc⟩
  | .jump next => initialPrefix next
  | .halt => ⟨none, 11, pcPrefix pc⟩
  | .transfer _ _ _ => initialPrefix pc

def dispatcherLengthChunk0 : Array ℕ := #[
  11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 20, 20, 18, 18, 18, 18, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 11, 22, 11, 22, 22, 22, 18, 18, 18, 18, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 11, 22
]

def dispatcherLengthChunk1 : Array ℕ := #[
  11, 22, 20, 20, 18, 18, 18, 18, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 22, 11, 22, 11, 20, 20, 11, 22, 22, 22, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 11, 22, 16, 16, 16, 16, 16, 16, 16, 16
]

def dispatcherLengthChunk2 : Array ℕ := #[
  11, 22, 22, 22, 11, 11, 22, 11, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 22, 22, 11, 22, 11, 22, 18, 18, 18, 18
]

def dispatcherLengthChunk3 : Array ℕ := #[
  11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 22, 22, 18, 18, 18, 18, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14
]

def dispatcherLengthChunk4 : Array ℕ := #[
  11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 18, 18, 18, 18, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 11, 22, 11, 22, 20, 20, 18, 18, 18, 18, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 11, 22, 11, 22, 22, 20, 20, 11, 22, 11, 22
]

def dispatcherLengthChunk5 : Array ℕ := #[
  10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
]

def dispatcherLengthChunk6 : Array ℕ := #[
  11, 22, 22, 22, 11, 11, 22, 11, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 22, 22, 11, 22, 11, 22, 18, 18, 18, 18
]

def dispatcherLengthChunk7 : Array ℕ := #[
  11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 22, 22, 18, 18, 18, 18, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14
]

def dispatcherLengthChunk8 : Array ℕ := #[
  11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20
]

def dispatcherLengthChunk9 : Array ℕ := #[
  11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20
]

def dispatcherLengthChunk10 : Array ℕ := #[
  11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 11, 11, 22, 22, 20, 20
]

def dispatcherLengthChunk11 : Array ℕ := #[
  11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 22, 20, 20, 11, 22, 22, 22, 11, 22, 11, 22, 11, 22, 11, 22, 11, 22, 20, 20, 11, 22, 11, 11, 22, 22, 20, 20, 11, 22, 11, 22, 22, 11, 22, 11, 22, 22, 11, 22, 11, 22, 20, 20
]

def dispatcherLengthChunk12 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk13 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk14 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk15 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLength (pc : ProgramCounter) : ℕ :=
  match pc.val / 64 with
  | 0 => dispatcherLengthChunk0[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 1 => dispatcherLengthChunk1[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 2 => dispatcherLengthChunk2[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 3 => dispatcherLengthChunk3[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 4 => dispatcherLengthChunk4[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 5 => dispatcherLengthChunk5[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 6 => dispatcherLengthChunk6[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 7 => dispatcherLengthChunk7[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 8 => dispatcherLengthChunk8[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 9 => dispatcherLengthChunk9[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 10 => dispatcherLengthChunk10[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 11 => dispatcherLengthChunk11[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 12 => dispatcherLengthChunk12[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 13 => dispatcherLengthChunk13[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 14 => dispatcherLengthChunk14[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | _ => dispatcherLengthChunk15[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))

def DispatcherCheck (pc : ProgramCounter) : Prop :=
  FiniteWindow.safe machine389 (initialPrefix pc) (dispatcherLength pc) = true ∧
  FiniteWindow.execute machine389 (initialPrefix pc) (dispatcherLength pc) = dispatcherTarget pc

end RiemannMachineVerification.Optimized278
