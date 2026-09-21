import RiemannMachineVerification.RegisterProgram
import RiemannMachineVerification.Optimized278.RegisterProgram
import RiemannMachineVerification.ProgressingBisimulation
import RiemannMachineVerification.RegisterExecution
import RiemannMachineVerification.Optimized278.RegisterExecution

set_option maxRecDepth 8192
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
set_option linter.unusedVariables false

namespace RiemannMachineVerification.Optimized278

def values (a b c d e f g h i : ℕ) (r : Fin 9) : ℕ :=
  match r.val with
  | 0 => a
  | 1 => b
  | 2 => c
  | 3 => d
  | 4 => e
  | 5 => f
  | 6 => g
  | 7 => h
  | _ => i

inductive Boundary : RiemannMachineVerification.RegisterConfiguration → RegisterConfiguration → Prop
  | block0 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨0, by decide⟩, (values 0 0 0 0 0 0 0 0 0), a⟩
        ⟨some ⟨0, by decide⟩, (values 0 0 0 0 0 0 0 0 0), b⟩
  | block1 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨46, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨38, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), b⟩
  | block2 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨61, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), b⟩
  | block3 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨62, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), b⟩
  | block4 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), b⟩
  | block5 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨87, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨63, by decide⟩, (values (v 0) (v 1) (v 2) 0 (v 4) 0 0 0 0), b⟩
  | block6 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨145, by decide⟩, (values (v 0) (v 1) 0 0 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨111, by decide⟩, (values (v 0) (v 1) 0 0 0 0 0 0 0), b⟩
  | block7 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨146, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨112, by decide⟩, (values (v 0) (v 1) 0 0 (v 4) 0 0 0 0), b⟩
  | block8 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨109, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨85, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 0 0 0 0), b⟩
  | block9 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨110, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨86, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), b⟩
  | block10 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨45, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨37, by decide⟩, (values (v 0) (v 1) 0 (v 3) 0 0 0 0 0), b⟩
  | block11 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨269, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨134, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), b⟩
  | block12 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨113, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨89, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 4) 0 0 0 0), b⟩
  | block13 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨88, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨64, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) 0 0 0 0), b⟩
  | block14 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨437, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), a⟩
        ⟨some ⟨289, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), b⟩
  | block15 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨438, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) (v 7) 0), a⟩
        ⟨some ⟨290, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) (v 7) 0), b⟩
  | block16 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨454, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) 0 0 0), a⟩
        ⟨some ⟨310, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) 0 0 0), b⟩
  | block17 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨270, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨135, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), b⟩
  | block18 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨390, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), b⟩
  | block19 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨286, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨150, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), b⟩
  | block20 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨653, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨525, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), b⟩
  | block21 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨285, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨149, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), b⟩
  | block22 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨693, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨565, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), b⟩
  | block23 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨694, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨566, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), b⟩
  | block24 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨391, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), b⟩
  | block25 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨455, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), a⟩
        ⟨some ⟨311, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), b⟩
  | block26 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨341, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨205, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) 0 0), b⟩
  | block27 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨342, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨206, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 (v 6) (v 7) 0), b⟩
  | block28 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨781, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) 0 0), b⟩
  | block29 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨542, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨406, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), b⟩
  | block30 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨456, by decide⟩, (values (v 0) (v 1) 0 (v 3) (v 0) (v 3) (v 6) 0 0), a⟩
        ⟨some ⟨312, by decide⟩, (values (v 0) 0 0 0 (v 0) (v 3) (v 6) 0 0), b⟩
  | block31 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨369, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨233, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 0 0 0), b⟩
  | block32 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨821, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨629, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), b⟩
  | block33 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨782, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩
  | block34 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨541, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨405, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), b⟩
  | block35 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨370, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨234, by decide⟩, (values (v 0) 0 (v 2) (v 3) (v 4) 0 0 0 0), b⟩
  | block36 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨909, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨669, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), b⟩
  | block37 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨597, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨461, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) 0 0), b⟩
  | block38 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨598, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨462, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) (v 6) (v 7) 0), b⟩
  | block39 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨949, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨709, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) 0 0), b⟩
  | block40 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨625, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨489, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), b⟩
  | block41 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1037, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨741, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), b⟩
  | block42 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨626, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), a⟩
        ⟨some ⟨490, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 4) (v 5) 0 0 0), b⟩
  | block43 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨457, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) (v 0) (v 3) (v 6) 0 0), a⟩
        ⟨some ⟨313, by decide⟩, (values (v 0) 0 (v 2) 0 (v 0) (v 3) (v 6) 0 0), b⟩
  | block44 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1054, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨758, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), b⟩
  | block45 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨654, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨526, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), b⟩
  | block46 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1059, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨763, by decide⟩, (values (v 0) 0 0 0 0 0 0 0 0), b⟩
  | block47 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨822, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨630, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩
  | block48 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨950, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨710, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩
  | block49 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨910, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨670, by decide⟩, (values (v 0) 0 (v 2) (v 3) 0 0 (v 6) (v 7) 0), b⟩
  | block50 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1038, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) (v 7) 0), a⟩
        ⟨some ⟨742, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) (v 7) 0), b⟩
  | block51 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1060, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) 0 0 0), a⟩
        ⟨some ⟨764, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 0 0 0), b⟩
  | block52 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1055, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨759, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), b⟩
  | block53 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1056, by decide⟩, (values (v 0) (v 1) (v 2) 0 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨760, by decide⟩, (values (v 0) 0 0 0 0 0 (v 6) 0 0), b⟩
  | block54 (v : Fin 18 → ℕ) (a b : ℕ) :
      Boundary ⟨some ⟨1057, by decide⟩, (values (v 0) (v 1) (v 2) (v 3) 0 (v 5) (v 6) 0 0), a⟩
        ⟨some ⟨761, by decide⟩, (values (v 0) 0 0 (v 3) 0 0 (v 6) 0 0), b⟩
  | halted (a : RiemannMachineVerification.RegisterConfiguration) (b : RegisterConfiguration)
      (ha : a.pc = none) (hb : b.pc = none) : Boundary a b

theorem Boundary.congr_values
    {pa : Option RiemannMachineVerification.ProgramCounter} {pb : Option ProgramCounter}
    {va va' vb vb' : Fin 9 → ℕ} {a b : ℕ}
    (ha : va = va') (hb : vb = vb')
    (h : Boundary ⟨pa, va', a⟩ ⟨pb, vb', b⟩) :
    Boundary ⟨pa, va, a⟩ ⟨pb, vb, b⟩ := by
  cases ha; cases hb; exact h

theorem instruction0_0 : RiemannMachineVerification.macroProgram ⟨0, by decide⟩ =
    .initialize ⟨1, by decide⟩ := rfl

theorem instruction0_1 : RiemannMachineVerification.macroProgram ⟨1, by decide⟩ =
    .initialize ⟨2, by decide⟩ := rfl

theorem instruction0_2 : RiemannMachineVerification.macroProgram ⟨2, by decide⟩ =
    .initialize ⟨3, by decide⟩ := rfl

theorem instruction0_3 : RiemannMachineVerification.macroProgram ⟨3, by decide⟩ =
    .initialize ⟨4, by decide⟩ := rfl

theorem instruction0_4 : RiemannMachineVerification.macroProgram ⟨4, by decide⟩ =
    .initialize ⟨5, by decide⟩ := rfl

theorem instruction0_5 : RiemannMachineVerification.macroProgram ⟨5, by decide⟩ =
    .initialize ⟨6, by decide⟩ := rfl

theorem instruction0_6 : RiemannMachineVerification.macroProgram ⟨6, by decide⟩ =
    .initialize ⟨7, by decide⟩ := rfl

theorem instruction0_7 : RiemannMachineVerification.macroProgram ⟨7, by decide⟩ =
    .initialize ⟨8, by decide⟩ := rfl

theorem instruction0_8 : RiemannMachineVerification.macroProgram ⟨8, by decide⟩ =
    .initialize ⟨9, by decide⟩ := rfl

theorem instruction0_9 : RiemannMachineVerification.macroProgram ⟨9, by decide⟩ =
    .initialize ⟨10, by decide⟩ := rfl

theorem instruction0_10 : RiemannMachineVerification.macroProgram ⟨10, by decide⟩ =
    .initialize ⟨11, by decide⟩ := rfl

theorem instruction0_11 : RiemannMachineVerification.macroProgram ⟨11, by decide⟩ =
    .initialize ⟨12, by decide⟩ := rfl

theorem instruction0_12 : RiemannMachineVerification.macroProgram ⟨12, by decide⟩ =
    .initialize ⟨13, by decide⟩ := rfl

theorem instruction0_13 : RiemannMachineVerification.macroProgram ⟨13, by decide⟩ =
    .initialize ⟨14, by decide⟩ := rfl

theorem instruction0_14 : RiemannMachineVerification.macroProgram ⟨14, by decide⟩ =
    .initialize ⟨15, by decide⟩ := rfl

theorem instruction0_15 : RiemannMachineVerification.macroProgram ⟨15, by decide⟩ =
    .initialize ⟨16, by decide⟩ := rfl

theorem instruction0_16 : RiemannMachineVerification.macroProgram ⟨16, by decide⟩ =
    .transfer ⟨1, by decide⟩ [] ⟨20, by decide⟩ := rfl

theorem instruction0_20 : RiemannMachineVerification.macroProgram ⟨20, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨21, by decide⟩ := rfl

theorem instruction0_21 : RiemannMachineVerification.macroProgram ⟨21, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨22, by decide⟩ := rfl

theorem instruction0_22 : RiemannMachineVerification.macroProgram ⟨22, by decide⟩ =
    .jump ⟨24, by decide⟩ := rfl

theorem instruction0_24 : RiemannMachineVerification.macroProgram ⟨24, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨28, by decide⟩ := rfl

theorem instruction0_28 : RiemannMachineVerification.macroProgram ⟨28, by decide⟩ =
    .jump ⟨32, by decide⟩ := rfl

theorem instruction0_32 : RiemannMachineVerification.macroProgram ⟨32, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨40, by decide⟩ := rfl

theorem instruction0_40 : RiemannMachineVerification.macroProgram ⟨40, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨44, by decide⟩ := rfl

theorem instruction0_44 : RiemannMachineVerification.macroProgram ⟨44, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨45, by decide⟩ ⟨46, by decide⟩ := rfl

theorem instruction0_45 : RiemannMachineVerification.macroProgram ⟨45, by decide⟩ =
    .jump ⟨147, by decide⟩ := rfl

theorem instruction0_46 : RiemannMachineVerification.macroProgram ⟨46, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨47, by decide⟩ := rfl

theorem instruction0_47 : RiemannMachineVerification.macroProgram ⟨47, by decide⟩ =
    .jump ⟨48, by decide⟩ := rfl

theorem instruction0_48 : RiemannMachineVerification.macroProgram ⟨48, by decide⟩ =
    .jump ⟨56, by decide⟩ := rfl

theorem instruction0_56 : RiemannMachineVerification.macroProgram ⟨56, by decide⟩ =
    .jump ⟨64, by decide⟩ := rfl

theorem instruction0_64 : RiemannMachineVerification.macroProgram ⟨64, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨68, by decide⟩ := rfl

theorem instruction0_68 : RiemannMachineVerification.macroProgram ⟨68, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨72, by decide⟩ := rfl

theorem instruction0_72 : RiemannMachineVerification.macroProgram ⟨72, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨2, by decide⟩, ⟨6, by decide⟩] ⟨80, by decide⟩ := rfl

theorem instruction0_80 : RiemannMachineVerification.macroProgram ⟨80, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨1, by decide⟩] ⟨84, by decide⟩ := rfl

theorem instruction0_84 : RiemannMachineVerification.macroProgram ⟨84, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨85, by decide⟩ ⟨86, by decide⟩ := rfl

theorem instruction0_85 : RiemannMachineVerification.macroProgram ⟨85, by decide⟩ =
    .jump ⟨111, by decide⟩ := rfl

theorem instruction0_86 : RiemannMachineVerification.macroProgram ⟨86, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨87, by decide⟩ ⟨88, by decide⟩ := rfl

theorem instruction0_87 : RiemannMachineVerification.macroProgram ⟨87, by decide⟩ =
    .jump ⟨90, by decide⟩ := rfl

theorem instruction0_88 : RiemannMachineVerification.macroProgram ⟨88, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨89, by decide⟩ := rfl

theorem instruction0_89 : RiemannMachineVerification.macroProgram ⟨89, by decide⟩ =
    .jump ⟨108, by decide⟩ := rfl

theorem instruction0_90 : RiemannMachineVerification.macroProgram ⟨90, by decide⟩ =
    .jump ⟨92, by decide⟩ := rfl

theorem instruction0_92 : RiemannMachineVerification.macroProgram ⟨92, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨96, by decide⟩ := rfl

theorem instruction0_96 : RiemannMachineVerification.macroProgram ⟨96, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨3, by decide⟩, ⟨6, by decide⟩] ⟨104, by decide⟩ := rfl

theorem instruction0_104 : RiemannMachineVerification.macroProgram ⟨104, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨4, by decide⟩] ⟨108, by decide⟩ := rfl

theorem instruction0_108 : RiemannMachineVerification.macroProgram ⟨108, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨109, by decide⟩ ⟨110, by decide⟩ := rfl

theorem instruction0_109 : RiemannMachineVerification.macroProgram ⟨109, by decide⟩ =
    .jump ⟨110, by decide⟩ := rfl

theorem instruction0_110 : RiemannMachineVerification.macroProgram ⟨110, by decide⟩ =
    .jump ⟨84, by decide⟩ := rfl

theorem instruction0_111 : RiemannMachineVerification.macroProgram ⟨111, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨112, by decide⟩ ⟨113, by decide⟩ := rfl

theorem instruction0_112 : RiemannMachineVerification.macroProgram ⟨112, by decide⟩ =
    .jump ⟨134, by decide⟩ := rfl

theorem instruction0_113 : RiemannMachineVerification.macroProgram ⟨113, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨114, by decide⟩ := rfl

theorem instruction0_114 : RiemannMachineVerification.macroProgram ⟨114, by decide⟩ =
    .jump ⟨116, by decide⟩ := rfl

theorem instruction0_116 : RiemannMachineVerification.macroProgram ⟨116, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨120, by decide⟩ := rfl

theorem instruction0_120 : RiemannMachineVerification.macroProgram ⟨120, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨128, by decide⟩ := rfl

theorem instruction0_128 : RiemannMachineVerification.macroProgram ⟨128, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨132, by decide⟩ := rfl

theorem instruction0_132 : RiemannMachineVerification.macroProgram ⟨132, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨133, by decide⟩ := rfl

theorem instruction0_133 : RiemannMachineVerification.macroProgram ⟨133, by decide⟩ =
    .jump ⟨44, by decide⟩ := rfl

theorem instruction0_134 : RiemannMachineVerification.macroProgram ⟨134, by decide⟩ =
    .jump ⟨136, by decide⟩ := rfl

theorem instruction0_136 : RiemannMachineVerification.macroProgram ⟨136, by decide⟩ =
    .jump ⟨144, by decide⟩ := rfl

theorem instruction0_144 : RiemannMachineVerification.macroProgram ⟨144, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨145, by decide⟩ ⟨146, by decide⟩ := rfl

theorem instruction0_145 : RiemannMachineVerification.macroProgram ⟨145, by decide⟩ =
    .jump ⟨146, by decide⟩ := rfl

theorem instruction0_146 : RiemannMachineVerification.macroProgram ⟨146, by decide⟩ =
    .jump ⟨44, by decide⟩ := rfl

theorem instruction0_147 : RiemannMachineVerification.macroProgram ⟨147, by decide⟩ =
    .jump ⟨148, by decide⟩ := rfl

theorem instruction0_148 : RiemannMachineVerification.macroProgram ⟨148, by decide⟩ =
    .jump ⟨152, by decide⟩ := rfl

theorem instruction0_152 : RiemannMachineVerification.macroProgram ⟨152, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨156, by decide⟩ := rfl

theorem instruction0_156 : RiemannMachineVerification.macroProgram ⟨156, by decide⟩ =
    .jump ⟨160, by decide⟩ := rfl

theorem instruction0_160 : RiemannMachineVerification.macroProgram ⟨160, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨168, by decide⟩ := rfl

theorem instruction0_168 : RiemannMachineVerification.macroProgram ⟨168, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨1, by decide⟩] ⟨172, by decide⟩ := rfl

theorem instruction0_172 : RiemannMachineVerification.macroProgram ⟨172, by decide⟩ =
    .jump ⟨176, by decide⟩ := rfl

theorem instruction0_176 : RiemannMachineVerification.macroProgram ⟨176, by decide⟩ =
    .jump ⟨192, by decide⟩ := rfl

theorem instruction0_192 : RiemannMachineVerification.macroProgram ⟨192, by decide⟩ =
    .jump ⟨256, by decide⟩ := rfl

theorem instruction0_256 : RiemannMachineVerification.macroProgram ⟨256, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨260, by decide⟩ := rfl

theorem instruction0_260 : RiemannMachineVerification.macroProgram ⟨260, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨261, by decide⟩ := rfl

theorem instruction0_261 : RiemannMachineVerification.macroProgram ⟨261, by decide⟩ =
    .jump ⟨262, by decide⟩ := rfl

theorem instruction0_262 : RiemannMachineVerification.macroProgram ⟨262, by decide⟩ =
    .jump ⟨264, by decide⟩ := rfl

theorem instruction0_264 : RiemannMachineVerification.macroProgram ⟨264, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨268, by decide⟩ := rfl

theorem instruction0_268 : RiemannMachineVerification.macroProgram ⟨268, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨269, by decide⟩ ⟨270, by decide⟩ := rfl

theorem instruction0_269 : RiemannMachineVerification.macroProgram ⟨269, by decide⟩ =
    .jump ⟨371, by decide⟩ := rfl

theorem instruction0_270 : RiemannMachineVerification.macroProgram ⟨270, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨271, by decide⟩ := rfl

theorem instruction0_271 : RiemannMachineVerification.macroProgram ⟨271, by decide⟩ =
    .jump ⟨272, by decide⟩ := rfl

theorem instruction0_272 : RiemannMachineVerification.macroProgram ⟨272, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨280, by decide⟩ := rfl

theorem instruction0_280 : RiemannMachineVerification.macroProgram ⟨280, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨284, by decide⟩ := rfl

theorem instruction0_284 : RiemannMachineVerification.macroProgram ⟨284, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨285, by decide⟩ ⟨286, by decide⟩ := rfl

theorem instruction0_285 : RiemannMachineVerification.macroProgram ⟨285, by decide⟩ =
    .jump ⟨301, by decide⟩ := rfl

theorem instruction0_286 : RiemannMachineVerification.macroProgram ⟨286, by decide⟩ =
    .jump ⟨288, by decide⟩ := rfl

theorem instruction0_288 : RiemannMachineVerification.macroProgram ⟨288, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨296, by decide⟩ := rfl

theorem instruction0_296 : RiemannMachineVerification.macroProgram ⟨296, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨300, by decide⟩ := rfl

theorem instruction0_300 : RiemannMachineVerification.macroProgram ⟨300, by decide⟩ =
    .jump ⟨284, by decide⟩ := rfl

theorem instruction0_301 : RiemannMachineVerification.macroProgram ⟨301, by decide⟩ =
    .jump ⟨302, by decide⟩ := rfl

theorem instruction0_302 : RiemannMachineVerification.macroProgram ⟨302, by decide⟩ =
    .jump ⟨304, by decide⟩ := rfl

theorem instruction0_304 : RiemannMachineVerification.macroProgram ⟨304, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] ⟨312, by decide⟩ := rfl

theorem instruction0_312 : RiemannMachineVerification.macroProgram ⟨312, by decide⟩ =
    .transfer ⟨7, by decide⟩ [⟨3, by decide⟩] ⟨316, by decide⟩ := rfl

theorem instruction0_316 : RiemannMachineVerification.macroProgram ⟨316, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨320, by decide⟩ := rfl

theorem instruction0_320 : RiemannMachineVerification.macroProgram ⟨320, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨324, by decide⟩ := rfl

theorem instruction0_324 : RiemannMachineVerification.macroProgram ⟨324, by decide⟩ =
    .jump ⟨328, by decide⟩ := rfl

theorem instruction0_328 : RiemannMachineVerification.macroProgram ⟨328, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨336, by decide⟩ := rfl

theorem instruction0_336 : RiemannMachineVerification.macroProgram ⟨336, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨340, by decide⟩ := rfl

theorem instruction0_340 : RiemannMachineVerification.macroProgram ⟨340, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨341, by decide⟩ ⟨342, by decide⟩ := rfl

theorem instruction0_341 : RiemannMachineVerification.macroProgram ⟨341, by decide⟩ =
    .jump ⟨357, by decide⟩ := rfl

theorem instruction0_342 : RiemannMachineVerification.macroProgram ⟨342, by decide⟩ =
    .jump ⟨344, by decide⟩ := rfl

theorem instruction0_344 : RiemannMachineVerification.macroProgram ⟨344, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨352, by decide⟩ := rfl

theorem instruction0_352 : RiemannMachineVerification.macroProgram ⟨352, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨356, by decide⟩ := rfl

theorem instruction0_356 : RiemannMachineVerification.macroProgram ⟨356, by decide⟩ =
    .jump ⟨340, by decide⟩ := rfl

theorem instruction0_357 : RiemannMachineVerification.macroProgram ⟨357, by decide⟩ =
    .jump ⟨358, by decide⟩ := rfl

theorem instruction0_358 : RiemannMachineVerification.macroProgram ⟨358, by decide⟩ =
    .jump ⟨360, by decide⟩ := rfl

theorem instruction0_360 : RiemannMachineVerification.macroProgram ⟨360, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨364, by decide⟩ := rfl

theorem instruction0_364 : RiemannMachineVerification.macroProgram ⟨364, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨368, by decide⟩ := rfl

theorem instruction0_368 : RiemannMachineVerification.macroProgram ⟨368, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨369, by decide⟩ ⟨370, by decide⟩ := rfl

theorem instruction0_369 : RiemannMachineVerification.macroProgram ⟨369, by decide⟩ =
    .jump ⟨370, by decide⟩ := rfl

theorem instruction0_370 : RiemannMachineVerification.macroProgram ⟨370, by decide⟩ =
    .jump ⟨268, by decide⟩ := rfl

theorem instruction0_371 : RiemannMachineVerification.macroProgram ⟨371, by decide⟩ =
    .jump ⟨372, by decide⟩ := rfl

theorem instruction0_372 : RiemannMachineVerification.macroProgram ⟨372, by decide⟩ =
    .jump ⟨376, by decide⟩ := rfl

theorem instruction0_376 : RiemannMachineVerification.macroProgram ⟨376, by decide⟩ =
    .jump ⟨384, by decide⟩ := rfl

theorem instruction0_384 : RiemannMachineVerification.macroProgram ⟨384, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨388, by decide⟩ := rfl

theorem instruction0_388 : RiemannMachineVerification.macroProgram ⟨388, by decide⟩ =
    .jump ⟨392, by decide⟩ := rfl

theorem instruction0_392 : RiemannMachineVerification.macroProgram ⟨392, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨400, by decide⟩ := rfl

theorem instruction0_400 : RiemannMachineVerification.macroProgram ⟨400, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨404, by decide⟩ := rfl

theorem instruction0_404 : RiemannMachineVerification.macroProgram ⟨404, by decide⟩ =
    .transfer ⟨5, by decide⟩ [] ⟨408, by decide⟩ := rfl

theorem instruction0_408 : RiemannMachineVerification.macroProgram ⟨408, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨5, by decide⟩, ⟨6, by decide⟩] ⟨416, by decide⟩ := rfl

theorem instruction0_416 : RiemannMachineVerification.macroProgram ⟨416, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨420, by decide⟩ := rfl

theorem instruction0_420 : RiemannMachineVerification.macroProgram ⟨420, by decide⟩ =
    .jump ⟨424, by decide⟩ := rfl

theorem instruction0_424 : RiemannMachineVerification.macroProgram ⟨424, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨432, by decide⟩ := rfl

theorem instruction0_432 : RiemannMachineVerification.macroProgram ⟨432, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨436, by decide⟩ := rfl

theorem instruction0_436 : RiemannMachineVerification.macroProgram ⟨436, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨437, by decide⟩ ⟨438, by decide⟩ := rfl

theorem instruction0_437 : RiemannMachineVerification.macroProgram ⟨437, by decide⟩ =
    .jump ⟨453, by decide⟩ := rfl

theorem instruction0_438 : RiemannMachineVerification.macroProgram ⟨438, by decide⟩ =
    .jump ⟨440, by decide⟩ := rfl

theorem instruction0_440 : RiemannMachineVerification.macroProgram ⟨440, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨448, by decide⟩ := rfl

theorem instruction0_448 : RiemannMachineVerification.macroProgram ⟨448, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨0, by decide⟩] ⟨452, by decide⟩ := rfl

theorem instruction0_452 : RiemannMachineVerification.macroProgram ⟨452, by decide⟩ =
    .jump ⟨436, by decide⟩ := rfl

theorem instruction0_453 : RiemannMachineVerification.macroProgram ⟨453, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨454, by decide⟩ ⟨455, by decide⟩ := rfl

theorem instruction0_454 : RiemannMachineVerification.macroProgram ⟨454, by decide⟩ =
    .jump ⟨458, by decide⟩ := rfl

theorem instruction0_455 : RiemannMachineVerification.macroProgram ⟨455, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨456, by decide⟩ ⟨457, by decide⟩ := rfl

theorem instruction0_456 : RiemannMachineVerification.macroProgram ⟨456, by decide⟩ =
    .jump ⟨457, by decide⟩ := rfl

theorem instruction0_457 : RiemannMachineVerification.macroProgram ⟨457, by decide⟩ =
    .jump ⟨453, by decide⟩ := rfl

theorem instruction0_458 : RiemannMachineVerification.macroProgram ⟨458, by decide⟩ =
    .jump ⟨460, by decide⟩ := rfl

theorem instruction0_460 : RiemannMachineVerification.macroProgram ⟨460, by decide⟩ =
    .transfer ⟨1, by decide⟩ [] ⟨464, by decide⟩ := rfl

theorem instruction0_464 : RiemannMachineVerification.macroProgram ⟨464, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨1, by decide⟩, ⟨6, by decide⟩] ⟨472, by decide⟩ := rfl

theorem instruction0_472 : RiemannMachineVerification.macroProgram ⟨472, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨476, by decide⟩ := rfl

theorem instruction0_476 : RiemannMachineVerification.macroProgram ⟨476, by decide⟩ =
    .jump ⟨480, by decide⟩ := rfl

theorem instruction0_480 : RiemannMachineVerification.macroProgram ⟨480, by decide⟩ =
    .jump ⟨512, by decide⟩ := rfl

theorem instruction0_512 : RiemannMachineVerification.macroProgram ⟨512, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨516, by decide⟩ := rfl

theorem instruction0_516 : RiemannMachineVerification.macroProgram ⟨516, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨517, by decide⟩ := rfl

theorem instruction0_517 : RiemannMachineVerification.macroProgram ⟨517, by decide⟩ =
    .jump ⟨518, by decide⟩ := rfl

theorem instruction0_518 : RiemannMachineVerification.macroProgram ⟨518, by decide⟩ =
    .jump ⟨520, by decide⟩ := rfl

theorem instruction0_520 : RiemannMachineVerification.macroProgram ⟨520, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨524, by decide⟩ := rfl

theorem instruction0_524 : RiemannMachineVerification.macroProgram ⟨524, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨525, by decide⟩ ⟨526, by decide⟩ := rfl

theorem instruction0_525 : RiemannMachineVerification.macroProgram ⟨525, by decide⟩ =
    .jump ⟨627, by decide⟩ := rfl

theorem instruction0_526 : RiemannMachineVerification.macroProgram ⟨526, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨527, by decide⟩ := rfl

theorem instruction0_527 : RiemannMachineVerification.macroProgram ⟨527, by decide⟩ =
    .jump ⟨528, by decide⟩ := rfl

theorem instruction0_528 : RiemannMachineVerification.macroProgram ⟨528, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨536, by decide⟩ := rfl

theorem instruction0_536 : RiemannMachineVerification.macroProgram ⟨536, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨540, by decide⟩ := rfl

theorem instruction0_540 : RiemannMachineVerification.macroProgram ⟨540, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨541, by decide⟩ ⟨542, by decide⟩ := rfl

theorem instruction0_541 : RiemannMachineVerification.macroProgram ⟨541, by decide⟩ =
    .jump ⟨557, by decide⟩ := rfl

theorem instruction0_542 : RiemannMachineVerification.macroProgram ⟨542, by decide⟩ =
    .jump ⟨544, by decide⟩ := rfl

theorem instruction0_544 : RiemannMachineVerification.macroProgram ⟨544, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨552, by decide⟩ := rfl

theorem instruction0_552 : RiemannMachineVerification.macroProgram ⟨552, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨556, by decide⟩ := rfl

theorem instruction0_556 : RiemannMachineVerification.macroProgram ⟨556, by decide⟩ =
    .jump ⟨540, by decide⟩ := rfl

theorem instruction0_557 : RiemannMachineVerification.macroProgram ⟨557, by decide⟩ =
    .jump ⟨558, by decide⟩ := rfl

theorem instruction0_558 : RiemannMachineVerification.macroProgram ⟨558, by decide⟩ =
    .jump ⟨560, by decide⟩ := rfl

theorem instruction0_560 : RiemannMachineVerification.macroProgram ⟨560, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] ⟨568, by decide⟩ := rfl

theorem instruction0_568 : RiemannMachineVerification.macroProgram ⟨568, by decide⟩ =
    .transfer ⟨7, by decide⟩ [⟨3, by decide⟩] ⟨572, by decide⟩ := rfl

theorem instruction0_572 : RiemannMachineVerification.macroProgram ⟨572, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨576, by decide⟩ := rfl

theorem instruction0_576 : RiemannMachineVerification.macroProgram ⟨576, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨580, by decide⟩ := rfl

theorem instruction0_580 : RiemannMachineVerification.macroProgram ⟨580, by decide⟩ =
    .jump ⟨584, by decide⟩ := rfl

theorem instruction0_584 : RiemannMachineVerification.macroProgram ⟨584, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨592, by decide⟩ := rfl

theorem instruction0_592 : RiemannMachineVerification.macroProgram ⟨592, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨596, by decide⟩ := rfl

theorem instruction0_596 : RiemannMachineVerification.macroProgram ⟨596, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨597, by decide⟩ ⟨598, by decide⟩ := rfl

theorem instruction0_597 : RiemannMachineVerification.macroProgram ⟨597, by decide⟩ =
    .jump ⟨613, by decide⟩ := rfl

theorem instruction0_598 : RiemannMachineVerification.macroProgram ⟨598, by decide⟩ =
    .jump ⟨600, by decide⟩ := rfl

theorem instruction0_600 : RiemannMachineVerification.macroProgram ⟨600, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨608, by decide⟩ := rfl

theorem instruction0_608 : RiemannMachineVerification.macroProgram ⟨608, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨612, by decide⟩ := rfl

theorem instruction0_612 : RiemannMachineVerification.macroProgram ⟨612, by decide⟩ =
    .jump ⟨596, by decide⟩ := rfl

theorem instruction0_613 : RiemannMachineVerification.macroProgram ⟨613, by decide⟩ =
    .jump ⟨614, by decide⟩ := rfl

theorem instruction0_614 : RiemannMachineVerification.macroProgram ⟨614, by decide⟩ =
    .jump ⟨616, by decide⟩ := rfl

theorem instruction0_616 : RiemannMachineVerification.macroProgram ⟨616, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨620, by decide⟩ := rfl

theorem instruction0_620 : RiemannMachineVerification.macroProgram ⟨620, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨624, by decide⟩ := rfl

theorem instruction0_624 : RiemannMachineVerification.macroProgram ⟨624, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨625, by decide⟩ ⟨626, by decide⟩ := rfl

theorem instruction0_625 : RiemannMachineVerification.macroProgram ⟨625, by decide⟩ =
    .jump ⟨626, by decide⟩ := rfl

theorem instruction0_626 : RiemannMachineVerification.macroProgram ⟨626, by decide⟩ =
    .jump ⟨524, by decide⟩ := rfl

theorem instruction0_627 : RiemannMachineVerification.macroProgram ⟨627, by decide⟩ =
    .jump ⟨628, by decide⟩ := rfl

theorem instruction0_628 : RiemannMachineVerification.macroProgram ⟨628, by decide⟩ =
    .jump ⟨632, by decide⟩ := rfl

theorem instruction0_632 : RiemannMachineVerification.macroProgram ⟨632, by decide⟩ =
    .jump ⟨640, by decide⟩ := rfl

theorem instruction0_640 : RiemannMachineVerification.macroProgram ⟨640, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨648, by decide⟩ := rfl

theorem instruction0_648 : RiemannMachineVerification.macroProgram ⟨648, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨652, by decide⟩ := rfl

theorem instruction0_652 : RiemannMachineVerification.macroProgram ⟨652, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨653, by decide⟩ ⟨654, by decide⟩ := rfl

theorem instruction0_653 : RiemannMachineVerification.macroProgram ⟨653, by decide⟩ =
    .jump ⟨669, by decide⟩ := rfl

theorem instruction0_654 : RiemannMachineVerification.macroProgram ⟨654, by decide⟩ =
    .jump ⟨656, by decide⟩ := rfl

theorem instruction0_656 : RiemannMachineVerification.macroProgram ⟨656, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨664, by decide⟩ := rfl

theorem instruction0_664 : RiemannMachineVerification.macroProgram ⟨664, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨668, by decide⟩ := rfl

theorem instruction0_668 : RiemannMachineVerification.macroProgram ⟨668, by decide⟩ =
    .jump ⟨652, by decide⟩ := rfl

theorem instruction0_669 : RiemannMachineVerification.macroProgram ⟨669, by decide⟩ =
    .jump ⟨670, by decide⟩ := rfl

theorem instruction0_670 : RiemannMachineVerification.macroProgram ⟨670, by decide⟩ =
    .jump ⟨672, by decide⟩ := rfl

theorem instruction0_672 : RiemannMachineVerification.macroProgram ⟨672, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨676, by decide⟩ := rfl

theorem instruction0_676 : RiemannMachineVerification.macroProgram ⟨676, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨680, by decide⟩ := rfl

theorem instruction0_680 : RiemannMachineVerification.macroProgram ⟨680, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨688, by decide⟩ := rfl

theorem instruction0_688 : RiemannMachineVerification.macroProgram ⟨688, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨692, by decide⟩ := rfl

theorem instruction0_692 : RiemannMachineVerification.macroProgram ⟨692, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨693, by decide⟩ ⟨694, by decide⟩ := rfl

theorem instruction0_693 : RiemannMachineVerification.macroProgram ⟨693, by decide⟩ =
    .jump ⟨709, by decide⟩ := rfl

theorem instruction0_694 : RiemannMachineVerification.macroProgram ⟨694, by decide⟩ =
    .jump ⟨696, by decide⟩ := rfl

theorem instruction0_696 : RiemannMachineVerification.macroProgram ⟨696, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨704, by decide⟩ := rfl

theorem instruction0_704 : RiemannMachineVerification.macroProgram ⟨704, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨708, by decide⟩ := rfl

theorem instruction0_708 : RiemannMachineVerification.macroProgram ⟨708, by decide⟩ =
    .jump ⟨692, by decide⟩ := rfl

theorem instruction0_709 : RiemannMachineVerification.macroProgram ⟨709, by decide⟩ =
    .jump ⟨710, by decide⟩ := rfl

theorem instruction0_710 : RiemannMachineVerification.macroProgram ⟨710, by decide⟩ =
    .jump ⟨712, by decide⟩ := rfl

theorem instruction0_712 : RiemannMachineVerification.macroProgram ⟨712, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨716, by decide⟩ := rfl

theorem instruction0_716 : RiemannMachineVerification.macroProgram ⟨716, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨720, by decide⟩ := rfl

theorem instruction0_720 : RiemannMachineVerification.macroProgram ⟨720, by decide⟩ =
    .jump ⟨736, by decide⟩ := rfl

theorem instruction0_736 : RiemannMachineVerification.macroProgram ⟨736, by decide⟩ =
    .jump ⟨768, by decide⟩ := rfl

theorem instruction0_768 : RiemannMachineVerification.macroProgram ⟨768, by decide⟩ =
    .transfer ⟨5, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨776, by decide⟩ := rfl

theorem instruction0_776 : RiemannMachineVerification.macroProgram ⟨776, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨5, by decide⟩] ⟨780, by decide⟩ := rfl

theorem instruction0_780 : RiemannMachineVerification.macroProgram ⟨780, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨781, by decide⟩ ⟨782, by decide⟩ := rfl

theorem instruction0_781 : RiemannMachineVerification.macroProgram ⟨781, by decide⟩ =
    .jump ⟨797, by decide⟩ := rfl

theorem instruction0_782 : RiemannMachineVerification.macroProgram ⟨782, by decide⟩ =
    .jump ⟨784, by decide⟩ := rfl

theorem instruction0_784 : RiemannMachineVerification.macroProgram ⟨784, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨792, by decide⟩ := rfl

theorem instruction0_792 : RiemannMachineVerification.macroProgram ⟨792, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨796, by decide⟩ := rfl

theorem instruction0_796 : RiemannMachineVerification.macroProgram ⟨796, by decide⟩ =
    .jump ⟨780, by decide⟩ := rfl

theorem instruction0_797 : RiemannMachineVerification.macroProgram ⟨797, by decide⟩ =
    .jump ⟨798, by decide⟩ := rfl

theorem instruction0_798 : RiemannMachineVerification.macroProgram ⟨798, by decide⟩ =
    .jump ⟨800, by decide⟩ := rfl

theorem instruction0_800 : RiemannMachineVerification.macroProgram ⟨800, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨804, by decide⟩ := rfl

theorem instruction0_804 : RiemannMachineVerification.macroProgram ⟨804, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨808, by decide⟩ := rfl

theorem instruction0_808 : RiemannMachineVerification.macroProgram ⟨808, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨816, by decide⟩ := rfl

theorem instruction0_816 : RiemannMachineVerification.macroProgram ⟨816, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨1, by decide⟩] ⟨820, by decide⟩ := rfl

theorem instruction0_820 : RiemannMachineVerification.macroProgram ⟨820, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨821, by decide⟩ ⟨822, by decide⟩ := rfl

theorem instruction0_821 : RiemannMachineVerification.macroProgram ⟨821, by decide⟩ =
    .jump ⟨837, by decide⟩ := rfl

theorem instruction0_822 : RiemannMachineVerification.macroProgram ⟨822, by decide⟩ =
    .jump ⟨824, by decide⟩ := rfl

theorem instruction0_824 : RiemannMachineVerification.macroProgram ⟨824, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨832, by decide⟩ := rfl

theorem instruction0_832 : RiemannMachineVerification.macroProgram ⟨832, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨836, by decide⟩ := rfl

theorem instruction0_836 : RiemannMachineVerification.macroProgram ⟨836, by decide⟩ =
    .jump ⟨820, by decide⟩ := rfl

theorem instruction0_837 : RiemannMachineVerification.macroProgram ⟨837, by decide⟩ =
    .jump ⟨838, by decide⟩ := rfl

theorem instruction0_838 : RiemannMachineVerification.macroProgram ⟨838, by decide⟩ =
    .jump ⟨840, by decide⟩ := rfl

theorem instruction0_840 : RiemannMachineVerification.macroProgram ⟨840, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨844, by decide⟩ := rfl

theorem instruction0_844 : RiemannMachineVerification.macroProgram ⟨844, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨848, by decide⟩ := rfl

theorem instruction0_848 : RiemannMachineVerification.macroProgram ⟨848, by decide⟩ =
    .jump ⟨864, by decide⟩ := rfl

theorem instruction0_864 : RiemannMachineVerification.macroProgram ⟨864, by decide⟩ =
    .jump ⟨896, by decide⟩ := rfl

theorem instruction0_896 : RiemannMachineVerification.macroProgram ⟨896, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨904, by decide⟩ := rfl

theorem instruction0_904 : RiemannMachineVerification.macroProgram ⟨904, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨908, by decide⟩ := rfl

theorem instruction0_908 : RiemannMachineVerification.macroProgram ⟨908, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨909, by decide⟩ ⟨910, by decide⟩ := rfl

theorem instruction0_909 : RiemannMachineVerification.macroProgram ⟨909, by decide⟩ =
    .jump ⟨925, by decide⟩ := rfl

theorem instruction0_910 : RiemannMachineVerification.macroProgram ⟨910, by decide⟩ =
    .jump ⟨912, by decide⟩ := rfl

theorem instruction0_912 : RiemannMachineVerification.macroProgram ⟨912, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨920, by decide⟩ := rfl

theorem instruction0_920 : RiemannMachineVerification.macroProgram ⟨920, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨924, by decide⟩ := rfl

theorem instruction0_924 : RiemannMachineVerification.macroProgram ⟨924, by decide⟩ =
    .jump ⟨908, by decide⟩ := rfl

theorem instruction0_925 : RiemannMachineVerification.macroProgram ⟨925, by decide⟩ =
    .jump ⟨926, by decide⟩ := rfl

theorem instruction0_926 : RiemannMachineVerification.macroProgram ⟨926, by decide⟩ =
    .jump ⟨928, by decide⟩ := rfl

theorem instruction0_928 : RiemannMachineVerification.macroProgram ⟨928, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨932, by decide⟩ := rfl

theorem instruction0_932 : RiemannMachineVerification.macroProgram ⟨932, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨936, by decide⟩ := rfl

theorem instruction0_936 : RiemannMachineVerification.macroProgram ⟨936, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨944, by decide⟩ := rfl

theorem instruction0_944 : RiemannMachineVerification.macroProgram ⟨944, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨948, by decide⟩ := rfl

theorem instruction0_948 : RiemannMachineVerification.macroProgram ⟨948, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨949, by decide⟩ ⟨950, by decide⟩ := rfl

theorem instruction0_949 : RiemannMachineVerification.macroProgram ⟨949, by decide⟩ =
    .jump ⟨965, by decide⟩ := rfl

theorem instruction0_950 : RiemannMachineVerification.macroProgram ⟨950, by decide⟩ =
    .jump ⟨952, by decide⟩ := rfl

theorem instruction0_952 : RiemannMachineVerification.macroProgram ⟨952, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨960, by decide⟩ := rfl

theorem instruction0_960 : RiemannMachineVerification.macroProgram ⟨960, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨964, by decide⟩ := rfl

theorem instruction0_964 : RiemannMachineVerification.macroProgram ⟨964, by decide⟩ =
    .jump ⟨948, by decide⟩ := rfl

theorem instruction0_965 : RiemannMachineVerification.macroProgram ⟨965, by decide⟩ =
    .jump ⟨966, by decide⟩ := rfl

theorem instruction0_966 : RiemannMachineVerification.macroProgram ⟨966, by decide⟩ =
    .jump ⟨968, by decide⟩ := rfl

theorem instruction0_968 : RiemannMachineVerification.macroProgram ⟨968, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨972, by decide⟩ := rfl

theorem instruction0_972 : RiemannMachineVerification.macroProgram ⟨972, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨976, by decide⟩ := rfl

theorem instruction0_976 : RiemannMachineVerification.macroProgram ⟨976, by decide⟩ =
    .jump ⟨992, by decide⟩ := rfl

theorem instruction0_992 : RiemannMachineVerification.macroProgram ⟨992, by decide⟩ =
    .jump ⟨1024, by decide⟩ := rfl

theorem instruction0_1024 : RiemannMachineVerification.macroProgram ⟨1024, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨1032, by decide⟩ := rfl

theorem instruction0_1032 : RiemannMachineVerification.macroProgram ⟨1032, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨1036, by decide⟩ := rfl

theorem instruction0_1036 : RiemannMachineVerification.macroProgram ⟨1036, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨1037, by decide⟩ ⟨1038, by decide⟩ := rfl

theorem instruction0_1037 : RiemannMachineVerification.macroProgram ⟨1037, by decide⟩ =
    .jump ⟨1053, by decide⟩ := rfl

theorem instruction0_1038 : RiemannMachineVerification.macroProgram ⟨1038, by decide⟩ =
    .jump ⟨1040, by decide⟩ := rfl

theorem instruction0_1040 : RiemannMachineVerification.macroProgram ⟨1040, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨1048, by decide⟩ := rfl

theorem instruction0_1048 : RiemannMachineVerification.macroProgram ⟨1048, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨0, by decide⟩] ⟨1052, by decide⟩ := rfl

theorem instruction0_1052 : RiemannMachineVerification.macroProgram ⟨1052, by decide⟩ =
    .jump ⟨1036, by decide⟩ := rfl

theorem instruction0_1053 : RiemannMachineVerification.macroProgram ⟨1053, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨1054, by decide⟩ ⟨1055, by decide⟩ := rfl

theorem instruction0_1054 : RiemannMachineVerification.macroProgram ⟨1054, by decide⟩ =
    .jump ⟨1058, by decide⟩ := rfl

theorem instruction0_1055 : RiemannMachineVerification.macroProgram ⟨1055, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨1056, by decide⟩ ⟨1057, by decide⟩ := rfl

theorem instruction0_1056 : RiemannMachineVerification.macroProgram ⟨1056, by decide⟩ =
    .jump ⟨1057, by decide⟩ := rfl

theorem instruction0_1057 : RiemannMachineVerification.macroProgram ⟨1057, by decide⟩ =
    .jump ⟨1053, by decide⟩ := rfl

theorem instruction0_1058 : RiemannMachineVerification.macroProgram ⟨1058, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨1059, by decide⟩ ⟨1060, by decide⟩ := rfl

theorem instruction0_1059 : RiemannMachineVerification.macroProgram ⟨1059, by decide⟩ =
    .jump ⟨1061, by decide⟩ := rfl

theorem instruction0_1060 : RiemannMachineVerification.macroProgram ⟨1060, by decide⟩ =
    .halt := rfl

theorem instruction0_1061 : RiemannMachineVerification.macroProgram ⟨1061, by decide⟩ =
    .jump ⟨1062, by decide⟩ := rfl

theorem instruction0_1062 : RiemannMachineVerification.macroProgram ⟨1062, by decide⟩ =
    .jump ⟨1064, by decide⟩ := rfl

theorem instruction0_1064 : RiemannMachineVerification.macroProgram ⟨1064, by decide⟩ =
    .jump ⟨1072, by decide⟩ := rfl

theorem instruction0_1072 : RiemannMachineVerification.macroProgram ⟨1072, by decide⟩ =
    .jump ⟨1088, by decide⟩ := rfl

theorem instruction0_1088 : RiemannMachineVerification.macroProgram ⟨1088, by decide⟩ =
    .jump ⟨1152, by decide⟩ := rfl

theorem instruction0_1152 : RiemannMachineVerification.macroProgram ⟨1152, by decide⟩ =
    .jump ⟨1280, by decide⟩ := rfl

theorem instruction0_1280 : RiemannMachineVerification.macroProgram ⟨1280, by decide⟩ =
    .jump ⟨1536, by decide⟩ := rfl

theorem instruction0_1536 : RiemannMachineVerification.macroProgram ⟨1536, by decide⟩ =
    .jump ⟨0, by decide⟩ := rfl

theorem instruction1_0 : macroProgram ⟨0, by decide⟩ =
    .initialize ⟨1, by decide⟩ := rfl

theorem instruction1_1 : macroProgram ⟨1, by decide⟩ =
    .initialize ⟨2, by decide⟩ := rfl

theorem instruction1_2 : macroProgram ⟨2, by decide⟩ =
    .initialize ⟨3, by decide⟩ := rfl

theorem instruction1_3 : macroProgram ⟨3, by decide⟩ =
    .initialize ⟨4, by decide⟩ := rfl

theorem instruction1_4 : macroProgram ⟨4, by decide⟩ =
    .initialize ⟨5, by decide⟩ := rfl

theorem instruction1_5 : macroProgram ⟨5, by decide⟩ =
    .initialize ⟨6, by decide⟩ := rfl

theorem instruction1_6 : macroProgram ⟨6, by decide⟩ =
    .initialize ⟨7, by decide⟩ := rfl

theorem instruction1_7 : macroProgram ⟨7, by decide⟩ =
    .initialize ⟨8, by decide⟩ := rfl

theorem instruction1_8 : macroProgram ⟨8, by decide⟩ =
    .initialize ⟨9, by decide⟩ := rfl

theorem instruction1_9 : macroProgram ⟨9, by decide⟩ =
    .initialize ⟨10, by decide⟩ := rfl

theorem instruction1_10 : macroProgram ⟨10, by decide⟩ =
    .initialize ⟨11, by decide⟩ := rfl

theorem instruction1_11 : macroProgram ⟨11, by decide⟩ =
    .initialize ⟨12, by decide⟩ := rfl

theorem instruction1_12 : macroProgram ⟨12, by decide⟩ =
    .initialize ⟨13, by decide⟩ := rfl

theorem instruction1_13 : macroProgram ⟨13, by decide⟩ =
    .initialize ⟨14, by decide⟩ := rfl

theorem instruction1_14 : macroProgram ⟨14, by decide⟩ =
    .initialize ⟨15, by decide⟩ := rfl

theorem instruction1_15 : macroProgram ⟨15, by decide⟩ =
    .initialize ⟨16, by decide⟩ := rfl

theorem instruction1_16 : macroProgram ⟨16, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨17, by decide⟩ := rfl

theorem instruction1_17 : macroProgram ⟨17, by decide⟩ =
    .increment ⟨0, by decide⟩ ⟨18, by decide⟩ := rfl

theorem instruction1_18 : macroProgram ⟨18, by decide⟩ =
    .jump ⟨20, by decide⟩ := rfl

theorem instruction1_20 : macroProgram ⟨20, by decide⟩ =
    .jump ⟨24, by decide⟩ := rfl

theorem instruction1_24 : macroProgram ⟨24, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨32, by decide⟩ := rfl

theorem instruction1_32 : macroProgram ⟨32, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨36, by decide⟩ := rfl

theorem instruction1_36 : macroProgram ⟨36, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨37, by decide⟩ ⟨38, by decide⟩ := rfl

theorem instruction1_37 : macroProgram ⟨37, by decide⟩ =
    .jump ⟨113, by decide⟩ := rfl

theorem instruction1_38 : macroProgram ⟨38, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨39, by decide⟩ := rfl

theorem instruction1_39 : macroProgram ⟨39, by decide⟩ =
    .jump ⟨40, by decide⟩ := rfl

theorem instruction1_40 : macroProgram ⟨40, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨44, by decide⟩ := rfl

theorem instruction1_44 : macroProgram ⟨44, by decide⟩ =
    .jump ⟨48, by decide⟩ := rfl

theorem instruction1_48 : macroProgram ⟨48, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨2, by decide⟩, ⟨6, by decide⟩] ⟨56, by decide⟩ := rfl

theorem instruction1_56 : macroProgram ⟨56, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨1, by decide⟩] ⟨60, by decide⟩ := rfl

theorem instruction1_60 : macroProgram ⟨60, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨61, by decide⟩ ⟨62, by decide⟩ := rfl

theorem instruction1_61 : macroProgram ⟨61, by decide⟩ =
    .jump ⟨87, by decide⟩ := rfl

theorem instruction1_62 : macroProgram ⟨62, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨63, by decide⟩ ⟨64, by decide⟩ := rfl

theorem instruction1_63 : macroProgram ⟨63, by decide⟩ =
    .jump ⟨66, by decide⟩ := rfl

theorem instruction1_64 : macroProgram ⟨64, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨65, by decide⟩ := rfl

theorem instruction1_65 : macroProgram ⟨65, by decide⟩ =
    .jump ⟨84, by decide⟩ := rfl

theorem instruction1_66 : macroProgram ⟨66, by decide⟩ =
    .jump ⟨68, by decide⟩ := rfl

theorem instruction1_68 : macroProgram ⟨68, by decide⟩ =
    .jump ⟨72, by decide⟩ := rfl

theorem instruction1_72 : macroProgram ⟨72, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨3, by decide⟩, ⟨6, by decide⟩] ⟨80, by decide⟩ := rfl

theorem instruction1_80 : macroProgram ⟨80, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨4, by decide⟩] ⟨84, by decide⟩ := rfl

theorem instruction1_84 : macroProgram ⟨84, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨85, by decide⟩ ⟨86, by decide⟩ := rfl

theorem instruction1_85 : macroProgram ⟨85, by decide⟩ =
    .jump ⟨60, by decide⟩ := rfl

theorem instruction1_86 : macroProgram ⟨86, by decide⟩ =
    .jump ⟨60, by decide⟩ := rfl

theorem instruction1_87 : macroProgram ⟨87, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨88, by decide⟩ ⟨89, by decide⟩ := rfl

theorem instruction1_88 : macroProgram ⟨88, by decide⟩ =
    .jump ⟨110, by decide⟩ := rfl

theorem instruction1_89 : macroProgram ⟨89, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨90, by decide⟩ := rfl

theorem instruction1_90 : macroProgram ⟨90, by decide⟩ =
    .jump ⟨92, by decide⟩ := rfl

theorem instruction1_92 : macroProgram ⟨92, by decide⟩ =
    .transfer ⟨4, by decide⟩ [] ⟨96, by decide⟩ := rfl

theorem instruction1_96 : macroProgram ⟨96, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨104, by decide⟩ := rfl

theorem instruction1_104 : macroProgram ⟨104, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨108, by decide⟩ := rfl

theorem instruction1_108 : macroProgram ⟨108, by decide⟩ =
    .increment ⟨1, by decide⟩ ⟨109, by decide⟩ := rfl

theorem instruction1_109 : macroProgram ⟨109, by decide⟩ =
    .jump ⟨36, by decide⟩ := rfl

theorem instruction1_110 : macroProgram ⟨110, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨111, by decide⟩ ⟨112, by decide⟩ := rfl

theorem instruction1_111 : macroProgram ⟨111, by decide⟩ =
    .jump ⟨36, by decide⟩ := rfl

theorem instruction1_112 : macroProgram ⟨112, by decide⟩ =
    .jump ⟨36, by decide⟩ := rfl

theorem instruction1_113 : macroProgram ⟨113, by decide⟩ =
    .jump ⟨114, by decide⟩ := rfl

theorem instruction1_114 : macroProgram ⟨114, by decide⟩ =
    .jump ⟨116, by decide⟩ := rfl

theorem instruction1_116 : macroProgram ⟨116, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨4, by decide⟩] ⟨120, by decide⟩ := rfl

theorem instruction1_120 : macroProgram ⟨120, by decide⟩ =
    .jump ⟨128, by decide⟩ := rfl

theorem instruction1_128 : macroProgram ⟨128, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨132, by decide⟩ := rfl

theorem instruction1_132 : macroProgram ⟨132, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨133, by decide⟩ := rfl

theorem instruction1_133 : macroProgram ⟨133, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨134, by decide⟩ ⟨135, by decide⟩ := rfl

theorem instruction1_134 : macroProgram ⟨134, by decide⟩ =
    .jump ⟨235, by decide⟩ := rfl

theorem instruction1_135 : macroProgram ⟨135, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨136, by decide⟩ := rfl

theorem instruction1_136 : macroProgram ⟨136, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨144, by decide⟩ := rfl

theorem instruction1_144 : macroProgram ⟨144, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨148, by decide⟩ := rfl

theorem instruction1_148 : macroProgram ⟨148, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨149, by decide⟩ ⟨150, by decide⟩ := rfl

theorem instruction1_149 : macroProgram ⟨149, by decide⟩ =
    .jump ⟨165, by decide⟩ := rfl

theorem instruction1_150 : macroProgram ⟨150, by decide⟩ =
    .jump ⟨152, by decide⟩ := rfl

theorem instruction1_152 : macroProgram ⟨152, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨160, by decide⟩ := rfl

theorem instruction1_160 : macroProgram ⟨160, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨164, by decide⟩ := rfl

theorem instruction1_164 : macroProgram ⟨164, by decide⟩ =
    .jump ⟨148, by decide⟩ := rfl

theorem instruction1_165 : macroProgram ⟨165, by decide⟩ =
    .jump ⟨166, by decide⟩ := rfl

theorem instruction1_166 : macroProgram ⟨166, by decide⟩ =
    .jump ⟨168, by decide⟩ := rfl

theorem instruction1_168 : macroProgram ⟨168, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] ⟨176, by decide⟩ := rfl

theorem instruction1_176 : macroProgram ⟨176, by decide⟩ =
    .transfer ⟨7, by decide⟩ [⟨3, by decide⟩] ⟨180, by decide⟩ := rfl

theorem instruction1_180 : macroProgram ⟨180, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨184, by decide⟩ := rfl

theorem instruction1_184 : macroProgram ⟨184, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨188, by decide⟩ := rfl

theorem instruction1_188 : macroProgram ⟨188, by decide⟩ =
    .jump ⟨192, by decide⟩ := rfl

theorem instruction1_192 : macroProgram ⟨192, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨200, by decide⟩ := rfl

theorem instruction1_200 : macroProgram ⟨200, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨204, by decide⟩ := rfl

theorem instruction1_204 : macroProgram ⟨204, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨205, by decide⟩ ⟨206, by decide⟩ := rfl

theorem instruction1_205 : macroProgram ⟨205, by decide⟩ =
    .jump ⟨221, by decide⟩ := rfl

theorem instruction1_206 : macroProgram ⟨206, by decide⟩ =
    .jump ⟨208, by decide⟩ := rfl

theorem instruction1_208 : macroProgram ⟨208, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨216, by decide⟩ := rfl

theorem instruction1_216 : macroProgram ⟨216, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨220, by decide⟩ := rfl

theorem instruction1_220 : macroProgram ⟨220, by decide⟩ =
    .jump ⟨204, by decide⟩ := rfl

theorem instruction1_221 : macroProgram ⟨221, by decide⟩ =
    .jump ⟨222, by decide⟩ := rfl

theorem instruction1_222 : macroProgram ⟨222, by decide⟩ =
    .jump ⟨224, by decide⟩ := rfl

theorem instruction1_224 : macroProgram ⟨224, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨228, by decide⟩ := rfl

theorem instruction1_228 : macroProgram ⟨228, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨232, by decide⟩ := rfl

theorem instruction1_232 : macroProgram ⟨232, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨233, by decide⟩ ⟨234, by decide⟩ := rfl

theorem instruction1_233 : macroProgram ⟨233, by decide⟩ =
    .jump ⟨234, by decide⟩ := rfl

theorem instruction1_234 : macroProgram ⟨234, by decide⟩ =
    .jump ⟨133, by decide⟩ := rfl

theorem instruction1_235 : macroProgram ⟨235, by decide⟩ =
    .jump ⟨236, by decide⟩ := rfl

theorem instruction1_236 : macroProgram ⟨236, by decide⟩ =
    .jump ⟨240, by decide⟩ := rfl

theorem instruction1_240 : macroProgram ⟨240, by decide⟩ =
    .jump ⟨256, by decide⟩ := rfl

theorem instruction1_256 : macroProgram ⟨256, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨4, by decide⟩, ⟨6, by decide⟩] ⟨264, by decide⟩ := rfl

theorem instruction1_264 : macroProgram ⟨264, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨0, by decide⟩] ⟨268, by decide⟩ := rfl

theorem instruction1_268 : macroProgram ⟨268, by decide⟩ =
    .jump ⟨272, by decide⟩ := rfl

theorem instruction1_272 : macroProgram ⟨272, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨5, by decide⟩, ⟨6, by decide⟩] ⟨280, by decide⟩ := rfl

theorem instruction1_280 : macroProgram ⟨280, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨284, by decide⟩ := rfl

theorem instruction1_284 : macroProgram ⟨284, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩] ⟨288, by decide⟩ := rfl

theorem instruction1_288 : macroProgram ⟨288, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨289, by decide⟩ ⟨290, by decide⟩ := rfl

theorem instruction1_289 : macroProgram ⟨289, by decide⟩ =
    .jump ⟨309, by decide⟩ := rfl

theorem instruction1_290 : macroProgram ⟨290, by decide⟩ =
    .jump ⟨292, by decide⟩ := rfl

theorem instruction1_292 : macroProgram ⟨292, by decide⟩ =
    .jump ⟨296, by decide⟩ := rfl

theorem instruction1_296 : macroProgram ⟨296, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨304, by decide⟩ := rfl

theorem instruction1_304 : macroProgram ⟨304, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨0, by decide⟩] ⟨308, by decide⟩ := rfl

theorem instruction1_308 : macroProgram ⟨308, by decide⟩ =
    .jump ⟨288, by decide⟩ := rfl

theorem instruction1_309 : macroProgram ⟨309, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨310, by decide⟩ ⟨311, by decide⟩ := rfl

theorem instruction1_310 : macroProgram ⟨310, by decide⟩ =
    .jump ⟨314, by decide⟩ := rfl

theorem instruction1_311 : macroProgram ⟨311, by decide⟩ =
    .decrement ⟨2, by decide⟩ ⟨312, by decide⟩ ⟨313, by decide⟩ := rfl

theorem instruction1_312 : macroProgram ⟨312, by decide⟩ =
    .jump ⟨309, by decide⟩ := rfl

theorem instruction1_313 : macroProgram ⟨313, by decide⟩ =
    .jump ⟨309, by decide⟩ := rfl

theorem instruction1_314 : macroProgram ⟨314, by decide⟩ =
    .jump ⟨316, by decide⟩ := rfl

theorem instruction1_316 : macroProgram ⟨316, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨1, by decide⟩] ⟨320, by decide⟩ := rfl

theorem instruction1_320 : macroProgram ⟨320, by decide⟩ =
    .jump ⟨384, by decide⟩ := rfl

theorem instruction1_384 : macroProgram ⟨384, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨388, by decide⟩ := rfl

theorem instruction1_388 : macroProgram ⟨388, by decide⟩ =
    .increment ⟨3, by decide⟩ ⟨389, by decide⟩ := rfl

theorem instruction1_389 : macroProgram ⟨389, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨390, by decide⟩ ⟨391, by decide⟩ := rfl

theorem instruction1_390 : macroProgram ⟨390, by decide⟩ =
    .jump ⟨491, by decide⟩ := rfl

theorem instruction1_391 : macroProgram ⟨391, by decide⟩ =
    .increment ⟨4, by decide⟩ ⟨392, by decide⟩ := rfl

theorem instruction1_392 : macroProgram ⟨392, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨400, by decide⟩ := rfl

theorem instruction1_400 : macroProgram ⟨400, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨404, by decide⟩ := rfl

theorem instruction1_404 : macroProgram ⟨404, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨405, by decide⟩ ⟨406, by decide⟩ := rfl

theorem instruction1_405 : macroProgram ⟨405, by decide⟩ =
    .jump ⟨421, by decide⟩ := rfl

theorem instruction1_406 : macroProgram ⟨406, by decide⟩ =
    .jump ⟨408, by decide⟩ := rfl

theorem instruction1_408 : macroProgram ⟨408, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨416, by decide⟩ := rfl

theorem instruction1_416 : macroProgram ⟨416, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨420, by decide⟩ := rfl

theorem instruction1_420 : macroProgram ⟨420, by decide⟩ =
    .jump ⟨404, by decide⟩ := rfl

theorem instruction1_421 : macroProgram ⟨421, by decide⟩ =
    .jump ⟨422, by decide⟩ := rfl

theorem instruction1_422 : macroProgram ⟨422, by decide⟩ =
    .jump ⟨424, by decide⟩ := rfl

theorem instruction1_424 : macroProgram ⟨424, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨7, by decide⟩] ⟨432, by decide⟩ := rfl

theorem instruction1_432 : macroProgram ⟨432, by decide⟩ =
    .transfer ⟨7, by decide⟩ [⟨3, by decide⟩] ⟨436, by decide⟩ := rfl

theorem instruction1_436 : macroProgram ⟨436, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨440, by decide⟩ := rfl

theorem instruction1_440 : macroProgram ⟨440, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨444, by decide⟩ := rfl

theorem instruction1_444 : macroProgram ⟨444, by decide⟩ =
    .jump ⟨448, by decide⟩ := rfl

theorem instruction1_448 : macroProgram ⟨448, by decide⟩ =
    .transfer ⟨4, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨456, by decide⟩ := rfl

theorem instruction1_456 : macroProgram ⟨456, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨4, by decide⟩] ⟨460, by decide⟩ := rfl

theorem instruction1_460 : macroProgram ⟨460, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨461, by decide⟩ ⟨462, by decide⟩ := rfl

theorem instruction1_461 : macroProgram ⟨461, by decide⟩ =
    .jump ⟨477, by decide⟩ := rfl

theorem instruction1_462 : macroProgram ⟨462, by decide⟩ =
    .jump ⟨464, by decide⟩ := rfl

theorem instruction1_464 : macroProgram ⟨464, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨472, by decide⟩ := rfl

theorem instruction1_472 : macroProgram ⟨472, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨476, by decide⟩ := rfl

theorem instruction1_476 : macroProgram ⟨476, by decide⟩ =
    .jump ⟨460, by decide⟩ := rfl

theorem instruction1_477 : macroProgram ⟨477, by decide⟩ =
    .jump ⟨478, by decide⟩ := rfl

theorem instruction1_478 : macroProgram ⟨478, by decide⟩ =
    .jump ⟨480, by decide⟩ := rfl

theorem instruction1_480 : macroProgram ⟨480, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨484, by decide⟩ := rfl

theorem instruction1_484 : macroProgram ⟨484, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨488, by decide⟩ := rfl

theorem instruction1_488 : macroProgram ⟨488, by decide⟩ =
    .decrement ⟨4, by decide⟩ ⟨489, by decide⟩ ⟨490, by decide⟩ := rfl

theorem instruction1_489 : macroProgram ⟨489, by decide⟩ =
    .jump ⟨490, by decide⟩ := rfl

theorem instruction1_490 : macroProgram ⟨490, by decide⟩ =
    .jump ⟨389, by decide⟩ := rfl

theorem instruction1_491 : macroProgram ⟨491, by decide⟩ =
    .jump ⟨492, by decide⟩ := rfl

theorem instruction1_492 : macroProgram ⟨492, by decide⟩ =
    .jump ⟨496, by decide⟩ := rfl

theorem instruction1_496 : macroProgram ⟨496, by decide⟩ =
    .jump ⟨512, by decide⟩ := rfl

theorem instruction1_512 : macroProgram ⟨512, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨520, by decide⟩ := rfl

theorem instruction1_520 : macroProgram ⟨520, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨524, by decide⟩ := rfl

theorem instruction1_524 : macroProgram ⟨524, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨525, by decide⟩ ⟨526, by decide⟩ := rfl

theorem instruction1_525 : macroProgram ⟨525, by decide⟩ =
    .jump ⟨541, by decide⟩ := rfl

theorem instruction1_526 : macroProgram ⟨526, by decide⟩ =
    .jump ⟨528, by decide⟩ := rfl

theorem instruction1_528 : macroProgram ⟨528, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨536, by decide⟩ := rfl

theorem instruction1_536 : macroProgram ⟨536, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨540, by decide⟩ := rfl

theorem instruction1_540 : macroProgram ⟨540, by decide⟩ =
    .jump ⟨524, by decide⟩ := rfl

theorem instruction1_541 : macroProgram ⟨541, by decide⟩ =
    .jump ⟨542, by decide⟩ := rfl

theorem instruction1_542 : macroProgram ⟨542, by decide⟩ =
    .jump ⟨544, by decide⟩ := rfl

theorem instruction1_544 : macroProgram ⟨544, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨548, by decide⟩ := rfl

theorem instruction1_548 : macroProgram ⟨548, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨552, by decide⟩ := rfl

theorem instruction1_552 : macroProgram ⟨552, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨560, by decide⟩ := rfl

theorem instruction1_560 : macroProgram ⟨560, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨564, by decide⟩ := rfl

theorem instruction1_564 : macroProgram ⟨564, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨565, by decide⟩ ⟨566, by decide⟩ := rfl

theorem instruction1_565 : macroProgram ⟨565, by decide⟩ =
    .jump ⟨581, by decide⟩ := rfl

theorem instruction1_566 : macroProgram ⟨566, by decide⟩ =
    .jump ⟨568, by decide⟩ := rfl

theorem instruction1_568 : macroProgram ⟨568, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨576, by decide⟩ := rfl

theorem instruction1_576 : macroProgram ⟨576, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨580, by decide⟩ := rfl

theorem instruction1_580 : macroProgram ⟨580, by decide⟩ =
    .jump ⟨564, by decide⟩ := rfl

theorem instruction1_581 : macroProgram ⟨581, by decide⟩ =
    .jump ⟨582, by decide⟩ := rfl

theorem instruction1_582 : macroProgram ⟨582, by decide⟩ =
    .jump ⟨584, by decide⟩ := rfl

theorem instruction1_584 : macroProgram ⟨584, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨588, by decide⟩ := rfl

theorem instruction1_588 : macroProgram ⟨588, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨592, by decide⟩ := rfl

theorem instruction1_592 : macroProgram ⟨592, by decide⟩ =
    .transfer ⟨5, by decide⟩ [⟨7, by decide⟩] ⟨596, by decide⟩ := rfl

theorem instruction1_596 : macroProgram ⟨596, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨597, by decide⟩ ⟨598, by decide⟩ := rfl

theorem instruction1_597 : macroProgram ⟨597, by decide⟩ =
    .jump ⟨613, by decide⟩ := rfl

theorem instruction1_598 : macroProgram ⟨598, by decide⟩ =
    .jump ⟨600, by decide⟩ := rfl

theorem instruction1_600 : macroProgram ⟨600, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨608, by decide⟩ := rfl

theorem instruction1_608 : macroProgram ⟨608, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨612, by decide⟩ := rfl

theorem instruction1_612 : macroProgram ⟨612, by decide⟩ =
    .jump ⟨596, by decide⟩ := rfl

theorem instruction1_613 : macroProgram ⟨613, by decide⟩ =
    .jump ⟨614, by decide⟩ := rfl

theorem instruction1_614 : macroProgram ⟨614, by decide⟩ =
    .jump ⟨616, by decide⟩ := rfl

theorem instruction1_616 : macroProgram ⟨616, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨620, by decide⟩ := rfl

theorem instruction1_620 : macroProgram ⟨620, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨624, by decide⟩ := rfl

theorem instruction1_624 : macroProgram ⟨624, by decide⟩ =
    .transfer ⟨1, by decide⟩ [⟨7, by decide⟩] ⟨628, by decide⟩ := rfl

theorem instruction1_628 : macroProgram ⟨628, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨629, by decide⟩ ⟨630, by decide⟩ := rfl

theorem instruction1_629 : macroProgram ⟨629, by decide⟩ =
    .jump ⟨645, by decide⟩ := rfl

theorem instruction1_630 : macroProgram ⟨630, by decide⟩ =
    .jump ⟨632, by decide⟩ := rfl

theorem instruction1_632 : macroProgram ⟨632, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨640, by decide⟩ := rfl

theorem instruction1_640 : macroProgram ⟨640, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨644, by decide⟩ := rfl

theorem instruction1_644 : macroProgram ⟨644, by decide⟩ =
    .jump ⟨628, by decide⟩ := rfl

theorem instruction1_645 : macroProgram ⟨645, by decide⟩ =
    .jump ⟨646, by decide⟩ := rfl

theorem instruction1_646 : macroProgram ⟨646, by decide⟩ =
    .jump ⟨648, by decide⟩ := rfl

theorem instruction1_648 : macroProgram ⟨648, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨652, by decide⟩ := rfl

theorem instruction1_652 : macroProgram ⟨652, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨656, by decide⟩ := rfl

theorem instruction1_656 : macroProgram ⟨656, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨664, by decide⟩ := rfl

theorem instruction1_664 : macroProgram ⟨664, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨668, by decide⟩ := rfl

theorem instruction1_668 : macroProgram ⟨668, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨669, by decide⟩ ⟨670, by decide⟩ := rfl

theorem instruction1_669 : macroProgram ⟨669, by decide⟩ =
    .jump ⟨685, by decide⟩ := rfl

theorem instruction1_670 : macroProgram ⟨670, by decide⟩ =
    .jump ⟨672, by decide⟩ := rfl

theorem instruction1_672 : macroProgram ⟨672, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨680, by decide⟩ := rfl

theorem instruction1_680 : macroProgram ⟨680, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨2, by decide⟩] ⟨684, by decide⟩ := rfl

theorem instruction1_684 : macroProgram ⟨684, by decide⟩ =
    .jump ⟨668, by decide⟩ := rfl

theorem instruction1_685 : macroProgram ⟨685, by decide⟩ =
    .jump ⟨686, by decide⟩ := rfl

theorem instruction1_686 : macroProgram ⟨686, by decide⟩ =
    .jump ⟨688, by decide⟩ := rfl

theorem instruction1_688 : macroProgram ⟨688, by decide⟩ =
    .transfer ⟨2, by decide⟩ [] ⟨692, by decide⟩ := rfl

theorem instruction1_692 : macroProgram ⟨692, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨2, by decide⟩] ⟨696, by decide⟩ := rfl

theorem instruction1_696 : macroProgram ⟨696, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨7, by decide⟩, ⟨8, by decide⟩] ⟨704, by decide⟩ := rfl

theorem instruction1_704 : macroProgram ⟨704, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨708, by decide⟩ := rfl

theorem instruction1_708 : macroProgram ⟨708, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨709, by decide⟩ ⟨710, by decide⟩ := rfl

theorem instruction1_709 : macroProgram ⟨709, by decide⟩ =
    .jump ⟨725, by decide⟩ := rfl

theorem instruction1_710 : macroProgram ⟨710, by decide⟩ =
    .jump ⟨712, by decide⟩ := rfl

theorem instruction1_712 : macroProgram ⟨712, by decide⟩ =
    .transfer ⟨3, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨720, by decide⟩ := rfl

theorem instruction1_720 : macroProgram ⟨720, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨3, by decide⟩] ⟨724, by decide⟩ := rfl

theorem instruction1_724 : macroProgram ⟨724, by decide⟩ =
    .jump ⟨708, by decide⟩ := rfl

theorem instruction1_725 : macroProgram ⟨725, by decide⟩ =
    .jump ⟨726, by decide⟩ := rfl

theorem instruction1_726 : macroProgram ⟨726, by decide⟩ =
    .jump ⟨728, by decide⟩ := rfl

theorem instruction1_728 : macroProgram ⟨728, by decide⟩ =
    .transfer ⟨3, by decide⟩ [] ⟨732, by decide⟩ := rfl

theorem instruction1_732 : macroProgram ⟨732, by decide⟩ =
    .transfer ⟨6, by decide⟩ [⟨3, by decide⟩] ⟨736, by decide⟩ := rfl

theorem instruction1_736 : macroProgram ⟨736, by decide⟩ =
    .transfer ⟨2, by decide⟩ [⟨7, by decide⟩] ⟨740, by decide⟩ := rfl

theorem instruction1_740 : macroProgram ⟨740, by decide⟩ =
    .decrement ⟨7, by decide⟩ ⟨741, by decide⟩ ⟨742, by decide⟩ := rfl

theorem instruction1_741 : macroProgram ⟨741, by decide⟩ =
    .jump ⟨757, by decide⟩ := rfl

theorem instruction1_742 : macroProgram ⟨742, by decide⟩ =
    .jump ⟨744, by decide⟩ := rfl

theorem instruction1_744 : macroProgram ⟨744, by decide⟩ =
    .transfer ⟨0, by decide⟩ [⟨6, by decide⟩, ⟨8, by decide⟩] ⟨752, by decide⟩ := rfl

theorem instruction1_752 : macroProgram ⟨752, by decide⟩ =
    .transfer ⟨8, by decide⟩ [⟨0, by decide⟩] ⟨756, by decide⟩ := rfl

theorem instruction1_756 : macroProgram ⟨756, by decide⟩ =
    .jump ⟨740, by decide⟩ := rfl

theorem instruction1_757 : macroProgram ⟨757, by decide⟩ =
    .decrement ⟨6, by decide⟩ ⟨758, by decide⟩ ⟨759, by decide⟩ := rfl

theorem instruction1_758 : macroProgram ⟨758, by decide⟩ =
    .jump ⟨762, by decide⟩ := rfl

theorem instruction1_759 : macroProgram ⟨759, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨760, by decide⟩ ⟨761, by decide⟩ := rfl

theorem instruction1_760 : macroProgram ⟨760, by decide⟩ =
    .jump ⟨757, by decide⟩ := rfl

theorem instruction1_761 : macroProgram ⟨761, by decide⟩ =
    .jump ⟨757, by decide⟩ := rfl

theorem instruction1_762 : macroProgram ⟨762, by decide⟩ =
    .decrement ⟨3, by decide⟩ ⟨763, by decide⟩ ⟨764, by decide⟩ := rfl

theorem instruction1_763 : macroProgram ⟨763, by decide⟩ =
    .jump ⟨765, by decide⟩ := rfl

theorem instruction1_764 : macroProgram ⟨764, by decide⟩ =
    .halt := rfl

theorem instruction1_765 : macroProgram ⟨765, by decide⟩ =
    .jump ⟨766, by decide⟩ := rfl

theorem instruction1_766 : macroProgram ⟨766, by decide⟩ =
    .jump ⟨768, by decide⟩ := rfl

theorem instruction1_768 : macroProgram ⟨768, by decide⟩ =
    .jump ⟨0, by decide⟩ := rfl


end RiemannMachineVerification.Optimized278
