import RiemannMachineVerification.RegisterProgram
import RiemannMachineVerification.Reallocated.Machine381
import RiemannMachineVerification.FiniteWindow

set_option maxRecDepth 8192

namespace RiemannMachineVerification.Reallocated

def pcPrefix (pc : ProgramCounter) (p : Fin 13) : Bool :=
  if p.val = 0 ∨ p.val = 12 then false else pc.val.testBit (11 - p.val)

def initialPrefix (pc : ProgramCounter) : FiniteWindow.Config 381 13 :=
  ⟨some machine381.entry, 0, pcPrefix pc⟩

def backendIncrementEntries : Array (Fin 381) := #[
  ⟨69, by decide⟩, ⟨194, by decide⟩, ⟨197, by decide⟩, ⟨198, by decide⟩, ⟨195, by decide⟩, ⟨199, by decide⟩, ⟨353, by decide⟩, ⟨196, by decide⟩, ⟨327, by decide⟩
]

def backendIncrement (r : RegisterIndex) : Fin 381 :=
  backendIncrementEntries[r.val]'(by simpa only [show backendIncrementEntries.size = 9 from rfl] using r.isLt)

def backendDecrementEntries : Array (Fin 381) := #[
  ⟨185, by decide⟩, ⟨184, by decide⟩, ⟨189, by decide⟩, ⟨190, by decide⟩, ⟨186, by decide⟩, ⟨192, by decide⟩, ⟨187, by decide⟩, ⟨188, by decide⟩, ⟨191, by decide⟩
]

def backendDecrement (r : RegisterIndex) : Fin 381 :=
  backendDecrementEntries[r.val]'(by simpa only [show backendDecrementEntries.size = 9 from rfl] using r.isLt)

def backendInitialize : Fin 381 := ⟨61, by decide⟩

def dispatcherTarget (pc : ProgramCounter) : FiniteWindow.Config 381 13 :=
  match primitiveProgram pc with
  | .increment r _ => ⟨some (backendIncrement r), 12, pcPrefix pc⟩
  | .decrement r _ _ => ⟨some (backendDecrement r), 12, pcPrefix pc⟩
  | .initialize _ => ⟨some backendInitialize, 12, pcPrefix pc⟩
  | .jump next => initialPrefix next
  | .halt => ⟨none, 12, pcPrefix pc⟩
  | .transfer _ _ _ => initialPrefix pc

def dispatcherLengthChunk0 : Array ℕ := #[
  12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 24, 24, 24, 12, 12, 22, 22, 12, 24, 24, 24, 20, 20, 20, 20, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 12, 24, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18
]

def dispatcherLengthChunk1 : Array ℕ := #[
  12, 24, 24, 24, 12, 24, 24, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 24, 12, 24, 12, 22, 22, 12, 24, 24, 24, 12, 24, 12, 12, 24, 24, 22, 22
]

def dispatcherLengthChunk2 : Array ℕ := #[
  12, 24, 12, 24, 12, 24, 22, 22, 18, 18, 18, 18, 18, 18, 18, 18, 12, 24, 24, 24, 20, 20, 20, 20, 12, 24, 24, 24, 20, 20, 20, 20, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 20, 20, 20, 20, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
]

def dispatcherLengthChunk3 : Array ℕ := #[
  12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12
]

def dispatcherLengthChunk4 : Array ℕ := #[
  12, 24, 24, 24, 12, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 24, 24
]

def dispatcherLengthChunk5 : Array ℕ := #[
  12, 24, 12, 24, 20, 20, 20, 20, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 12, 24, 24, 24, 20, 20, 20, 20, 18, 18, 18, 18, 18, 18, 18, 18
]

def dispatcherLengthChunk6 : Array ℕ := #[
  12, 24, 24, 24, 20, 20, 20, 20, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 24, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 20, 20, 20, 20, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22
]

def dispatcherLengthChunk7 : Array ℕ := #[
  12, 24, 12, 24, 24, 12, 24, 12, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 20, 20, 20, 20, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14
]

def dispatcherLengthChunk8 : Array ℕ := #[
  12, 24, 24, 24, 12, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 24, 24
]

def dispatcherLengthChunk9 : Array ℕ := #[
  12, 24, 12, 24, 20, 20, 20, 20, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 12, 24, 24, 24, 20, 20, 20, 20, 18, 18, 18, 18, 18, 18, 18, 18
]

def dispatcherLengthChunk10 : Array ℕ := #[
  12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22
]

def dispatcherLengthChunk11 : Array ℕ := #[
  12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14
]

def dispatcherLengthChunk12 : Array ℕ := #[
  12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22
]

def dispatcherLengthChunk13 : Array ℕ := #[
  12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14
]

def dispatcherLengthChunk14 : Array ℕ := #[
  12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22
]

def dispatcherLengthChunk15 : Array ℕ := #[
  12, 24, 12, 24, 24, 24, 22, 22, 12, 24, 24, 24, 12, 24, 12, 24, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14
]

def dispatcherLengthChunk16 : Array ℕ := #[
  12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 12, 24, 22, 22, 12, 24, 12, 12, 24, 24, 22, 22, 12, 24, 12, 24, 24, 12, 24, 12, 24, 24, 12, 24, 12, 24, 22, 22, 18, 18, 18, 18, 18, 18, 18, 18, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
]

def dispatcherLengthChunk17 : Array ℕ := #[
  12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12
]

def dispatcherLengthChunk18 : Array ℕ := #[
  10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
]

def dispatcherLengthChunk19 : Array ℕ := #[
  10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
]

def dispatcherLengthChunk20 : Array ℕ := #[
  8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
]

def dispatcherLengthChunk21 : Array ℕ := #[
  8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
]

def dispatcherLengthChunk22 : Array ℕ := #[
  8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
]

def dispatcherLengthChunk23 : Array ℕ := #[
  8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
]

def dispatcherLengthChunk24 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk25 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk26 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk27 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk28 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk29 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk30 : Array ℕ := #[
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
]

def dispatcherLengthChunk31 : Array ℕ := #[
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
  | 15 => dispatcherLengthChunk15[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 16 => dispatcherLengthChunk16[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 17 => dispatcherLengthChunk17[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 18 => dispatcherLengthChunk18[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 19 => dispatcherLengthChunk19[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 20 => dispatcherLengthChunk20[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 21 => dispatcherLengthChunk21[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 22 => dispatcherLengthChunk22[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 23 => dispatcherLengthChunk23[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 24 => dispatcherLengthChunk24[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 25 => dispatcherLengthChunk25[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 26 => dispatcherLengthChunk26[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 27 => dispatcherLengthChunk27[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 28 => dispatcherLengthChunk28[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 29 => dispatcherLengthChunk29[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | 30 => dispatcherLengthChunk30[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))
  | _ => dispatcherLengthChunk31[pc.val % 64]'(by exact Nat.mod_lt _ (by decide))

def DispatcherCheck (pc : ProgramCounter) : Prop :=
  FiniteWindow.safe machine381 (initialPrefix pc) (dispatcherLength pc) = true ∧
  FiniteWindow.execute machine381 (initialPrefix pc) (dispatcherLength pc) = dispatcherTarget pc

end RiemannMachineVerification.Reallocated
