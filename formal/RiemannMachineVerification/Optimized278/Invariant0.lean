import RiemannMachineVerification.BooleanCertificate
import RiemannMachineVerification.Optimized278.Machine339

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Optimized278

def inv0_node0 (_ : ℤ → Bool) : Bool := false
def inv0_node1 (_ : ℤ → Bool) : Bool := true

def inv0_node2 (t : ℤ → Bool) : Bool :=
  if t (-3) then inv0_node0 t else inv0_node1 t

def inv0_node3 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node0 t else inv0_node2 t

def inv0_node4 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node3 t

def inv0_node5 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node4 t

def inv0_node6 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node5 t

def inv0_node7 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node6 t

def inv0_node8 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node7 t

def inv0_node9 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node0 t else inv0_node1 t

def inv0_node10 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node9 t

def inv0_node11 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node1 t

def inv0_node12 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node11 t

def inv0_node13 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node12 t

def inv0_node14 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node1 t else inv0_node0 t

def inv0_node15 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node14 t

def inv0_node16 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node1 t else inv0_node0 t

def inv0_node17 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node16 t

def inv0_node18 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node17 t

def inv0_node19 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node1 t else inv0_node0 t

def inv0_node20 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node1 t else inv0_node19 t

def inv0_node21 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node1 t else inv0_node0 t

def inv0_node22 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node21 t else inv0_node20 t

def inv0_node23 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node1 t else inv0_node21 t

def inv0_node24 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node23 t else inv0_node1 t

def inv0_node25 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node1 t

def inv0_node26 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node25 t

def inv0_node27 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node26 t else inv0_node0 t

def inv0_node28 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node21 t

def inv0_node29 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node28 t

def inv0_node30 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node15 t else inv0_node1 t

def inv0_node31 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node30 t else inv0_node1 t

def inv0_node32 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node31 t else inv0_node1 t

def inv0_node33 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node31 t else inv0_node32 t

def inv0_node34 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node21 t else inv0_node1 t

def inv0_node35 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node34 t else inv0_node1 t

def inv0_node36 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node19 t else inv0_node1 t

def inv0_node37 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node25 t else inv0_node36 t

def inv0_node38 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node9 t else inv0_node1 t

def inv0_node39 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node14 t else inv0_node1 t

def inv0_node40 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node39 t else inv0_node38 t

def inv0_node41 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node40 t

def inv0_node42 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node41 t else inv0_node25 t

def inv0_node43 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node42 t else inv0_node25 t

def inv0_node44 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node1 t else inv0_node25 t

def inv0_node45 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node14 t else inv0_node0 t

def inv0_node46 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node45 t else inv0_node0 t

def inv0_node47 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node1 t else inv0_node46 t

def inv0_node48 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node47 t else inv0_node25 t

def inv0_node49 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node48 t else inv0_node44 t

def inv0_node50 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node46 t

def inv0_node51 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node50 t else inv0_node25 t

def inv0_node52 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node25 t else inv0_node1 t

def inv0_node53 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node52 t else inv0_node51 t

def inv0_node54 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node26 t else inv0_node25 t

def inv0_node55 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node20 t else inv0_node25 t

def inv0_node56 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node2 t else inv0_node0 t

def inv0_node57 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node56 t

def inv0_node58 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node56 t else inv0_node0 t

def inv0_node59 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node3 t else inv0_node0 t

def inv0_node60 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node3 t else inv0_node56 t

def inv0_node61 (t : ℤ → Bool) : Bool :=
  if t (-3) then inv0_node1 t else inv0_node0 t

def inv0_node62 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node0 t else inv0_node61 t

def inv0_node63 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node62 t

def inv0_node64 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node2 t else inv0_node61 t

def inv0_node65 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node64 t else inv0_node62 t

def inv0_node66 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node61 t else inv0_node0 t

def inv0_node67 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node66 t

def inv0_node68 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node66 t else inv0_node0 t

def inv0_node69 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node62 t else inv0_node0 t

def inv0_node70 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node56 t else inv0_node2 t

def inv0_node71 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node2 t else inv0_node62 t

def inv0_node72 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node2 t else inv0_node0 t

def inv0_node73 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node9 t else inv0_node0 t

def inv0_node74 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node62 t else inv0_node61 t

def inv0_node75 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node61 t else inv0_node2 t

def inv0_node76 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node75 t

def inv0_node77 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node56 t else inv0_node62 t

def inv0_node78 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node62 t else inv0_node9 t

def inv0_node79 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node16 t else inv0_node1 t

def inv0_node80 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node12 t else inv0_node79 t

def inv0_node81 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node1 t else inv0_node2 t

def inv0_node82 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node1 t else inv0_node81 t

def inv0_node83 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node81 t else inv0_node3 t

def inv0_node84 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node1 t else inv0_node61 t

def inv0_node85 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node84 t else inv0_node14 t

def inv0_node86 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node19 t

def inv0_node87 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node25 t else inv0_node86 t

def inv0_node88 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node25 t else inv0_node0 t

def inv0_node89 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node21 t else inv0_node0 t

def inv0_node90 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node21 t else inv0_node89 t

def inv0_node91 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node15 t else inv0_node0 t

def inv0_node92 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node91 t else inv0_node0 t

def inv0_node93 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node18 t else inv0_node0 t

def inv0_node94 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node19 t else inv0_node0 t

def inv0_node95 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node94 t

def inv0_node96 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node95 t else inv0_node0 t

def inv0_node97 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node88 t

def inv0_node98 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node86 t

def inv0_node99 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node1 t

def inv0_node100 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node1 t else inv0_node99 t

def inv0_node101 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node100 t

def inv0_node102 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node101 t

def inv0_node103 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node73 t

def inv0_node104 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node103 t

def inv0_node105 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node11 t else inv0_node0 t

def inv0_node106 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node105 t

def inv0_node107 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node106 t

def inv0_node108 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node73 t else inv0_node0 t

def inv0_node109 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node108 t

def inv0_node110 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node99 t else inv0_node0 t

def inv0_node111 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node110 t

def inv0_node112 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node111 t

def inv0_node113 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node89 t

def inv0_node114 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node15 t

def inv0_node115 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node114 t else inv0_node17 t

def inv0_node116 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node18 t else inv0_node86 t

def inv0_node117 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node44 t

def inv0_node118 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node23 t else inv0_node28 t

def inv0_node119 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node21 t else inv0_node1 t

def inv0_node120 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node45 t

def inv0_node121 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node120 t

def inv0_node122 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node13 t

def inv0_node123 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node16 t else inv0_node0 t

def inv0_node124 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node123 t

def inv0_node125 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node124 t

def inv0_node126 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node95 t

def inv0_node127 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node1 t

def inv0_node128 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node127 t else inv0_node0 t

def inv0_node129 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node21 t

def inv0_node130 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node10 t

def inv0_node131 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node130 t

def inv0_node132 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node108 t else inv0_node0 t

def inv0_node133 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node105 t else inv0_node0 t

def inv0_node134 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node133 t else inv0_node0 t

def inv0_node135 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node99 t

def inv0_node136 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node135 t else inv0_node0 t

def inv0_node137 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node136 t else inv0_node0 t

def inv0_node138 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node28 t else inv0_node0 t

def inv0_node139 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node17 t else inv0_node0 t

def inv0_node140 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node86 t else inv0_node0 t

def inv0_node141 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node17 t else inv0_node12 t

def inv0_node142 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node13 t else inv0_node141 t

def inv0_node143 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node94 t else inv0_node110 t

def inv0_node144 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node28 t else inv0_node143 t

def inv0_node145 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node114 t

def inv0_node146 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node120 t else inv0_node0 t

def inv0_node147 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node123 t else inv0_node0 t

def inv0_node148 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node147 t else inv0_node0 t

def inv0_node149 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node94 t else inv0_node0 t

def inv0_node150 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node149 t else inv0_node0 t

def inv0_node151 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node88 t else inv0_node0 t

def inv0_node152 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node103 t else inv0_node0 t

def inv0_node153 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node106 t else inv0_node0 t

def inv0_node154 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node135 t

def inv0_node155 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node154 t else inv0_node0 t

def inv0_node156 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node26 t

def inv0_node157 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node25 t else inv0_node26 t

def inv0_node158 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node81 t

def inv0_node159 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node84 t

def inv0_node160 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node75 t else inv0_node56 t

def inv0_node161 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node75 t else inv0_node0 t

def inv0_node162 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node61 t else inv0_node0 t

def inv0_node163 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node2 t

def inv0_node164 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node2 t else inv0_node1 t

def inv0_node165 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node164 t

def inv0_node166 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node62 t else inv0_node164 t

def inv0_node167 (t : ℤ → Bool) : Bool :=
  if t (-2) then inv0_node61 t else inv0_node1 t

def inv0_node168 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node167 t

def inv0_node169 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node56 t else inv0_node64 t

def inv0_node170 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node56 t else inv0_node9 t

def inv0_node171 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node81 t else inv0_node66 t

def inv0_node172 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node164 t else inv0_node0 t

def inv0_node173 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node164 t else inv0_node66 t

def inv0_node174 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node0 t else inv0_node64 t

theorem inv0_claim0 (t : ℤ → Bool) :
    (inv0_node4 t) = ((inv0_node4 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node4 t)

theorem inv0_claim1 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && (inv0_node0 t)) := by
  rfl

theorem inv0_claim2 (t : ℤ → Bool) :
    (inv0_node5 t) = ((inv0_node5 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node5 t) (inv0_node99 t) (inv0_node5 t) (inv0_node4 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim0 t) (inv0_claim1 t)

theorem inv0_claim3 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && (inv0_node99 t)) := by
  rfl

theorem inv0_claim4 (t : ℤ → Bool) :
    (inv0_node6 t) = ((inv0_node6 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node6 t) (inv0_node99 t) (inv0_node6 t) (inv0_node5 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node5 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim2 t) (inv0_claim3 t)

theorem inv0_claim5 (t : ℤ → Bool) :
    (inv0_node7 t) = ((inv0_node7 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node7 t) (inv0_node99 t) (inv0_node7 t) (inv0_node6 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node6 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim4 t) (inv0_claim3 t)

theorem inv0_claim6 (t : ℤ → Bool) :
    (inv0_node8 t) = ((inv0_node8 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node8 t) (inv0_node99 t) (inv0_node8 t) (inv0_node7 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node7 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim5 t) (inv0_claim3 t)

theorem inv0_shift0 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node1 (shiftInput true false t)) := by
  rfl

theorem inv0_claim7 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node8 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node8 t)

theorem inv0_claim8 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node4 t)

theorem inv0_claim9 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && (inv0_node1 t)) := by
  rfl

theorem inv0_claim10 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node5 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node5 t) (inv0_node19 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim8 t) (inv0_claim9 t)

theorem inv0_claim11 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && (inv0_node19 t)) := by
  rfl

theorem inv0_claim12 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node6 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node6 t) (inv0_node19 t) (inv0_node0 t) (inv0_node5 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim10 t) (inv0_claim11 t)

theorem inv0_claim13 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node7 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node7 t) (inv0_node19 t) (inv0_node0 t) (inv0_node6 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim12 t) (inv0_claim11 t)

theorem inv0_claim14 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node8 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node8 t) (inv0_node19 t) (inv0_node0 t) (inv0_node7 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim13 t) (inv0_claim11 t)

theorem inv0_shift1 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node1 (shiftInput true true t)) := by
  rfl

theorem inv0_claim15 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node1 t)) := by
  rfl

theorem inv0_claim16 (t : ℤ → Bool) :
    (inv0_node10 t) = ((inv0_node10 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node10 t)

theorem inv0_claim17 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node10 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node10 t)

theorem inv0_claim18 (t : ℤ → Bool) :
    (inv0_node130 t) = ((inv0_node10 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node10 t) (inv0_node10 t) (inv0_node1 t) (inv0_node0 t) (inv0_node10 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node10 t)) (by rfl) (by rfl)
    (inv0_claim16 t) (inv0_claim17 t)

theorem inv0_shift2 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node1 (shiftInput false false t)) := by
  rfl

theorem inv0_shift3 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node0 (shiftInput false false t)) := by
  rfl

theorem inv0_shift4 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node11 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node11 (shiftInput false false t)) (inv0_node9 t) (inv0_node1 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift3 t)

theorem inv0_shift5 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node12 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node12 (shiftInput false false t)) (inv0_node10 t) (inv0_node11 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node9 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift4 t) (inv0_shift3 t)

theorem inv0_shift6 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node13 (shiftInput false false t)) := by
  exact inv0_shift5 t

theorem inv0_claim19 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node10 t) && ! (inv0_node10 t)) := by
  exact bool_and_not_self (inv0_node10 t)

theorem inv0_claim20 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node10 t)) := by
  rfl

theorem inv0_claim21 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node130 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node130 t) (inv0_node10 t) (inv0_node0 t) (inv0_node10 t) (inv0_node0 t) (inv0_node10 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node10 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim19 t) (inv0_claim20 t)

def inv0_node175 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node10 t else inv0_node0 t

theorem inv0_claim22 (t : ℤ → Bool) :
    (inv0_node175 t) = ((inv0_node10 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node10 t) (inv0_node10 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node10 t)
    (bool_select_same (t 0) (inv0_node10 t)) (by rfl) (by rfl)
    (inv0_claim17 t) (inv0_claim16 t)

theorem inv0_shift7 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node16 (shiftInput true true t)) := by
  exact inv0_shift1 t

theorem inv0_claim23 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node175 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node175 t)

theorem inv0_claim24 (t : ℤ → Bool) :
    (inv0_node11 t) = ((inv0_node11 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node11 t)

theorem inv0_claim25 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node11 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node11 t)

theorem inv0_claim26 (t : ℤ → Bool) :
    (inv0_node12 t) = ((inv0_node11 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node11 t) (inv0_node99 t) (inv0_node12 t) (inv0_node11 t) (inv0_node11 t) (inv0_node1 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node11 t)) (by rfl) (by rfl)
    (inv0_claim24 t) (inv0_claim25 t)

theorem inv0_shift8 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node0 (shiftInput true false t)) := by
  rfl

theorem inv0_shift9 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node9 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node9 (shiftInput true false t)) (inv0_node11 t) (inv0_node1 (shiftInput true false t)) (inv0_node0 (shiftInput true false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift0 t) (inv0_shift8 t)

theorem inv0_shift10 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node10 (shiftInput true false t)) := by
  exact inv0_shift9 t

theorem inv0_claim27 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node11 t) && ! (inv0_node11 t)) := by
  exact bool_and_not_self (inv0_node11 t)

theorem inv0_claim28 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node11 t)) := by
  rfl

theorem inv0_claim29 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node12 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node12 t) (inv0_node11 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim27 t) (inv0_claim28 t)

theorem inv0_claim30 (t : ℤ → Bool) :
    (inv0_node105 t) = ((inv0_node11 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node11 t) (inv0_node19 t) (inv0_node105 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node11 t)
    (bool_select_same (t 0) (inv0_node11 t)) (by rfl) (by rfl)
    (inv0_claim25 t) (inv0_claim24 t)

theorem inv0_claim31 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node105 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node105 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim27 t)

theorem inv0_claim32 (t : ℤ → Bool) :
    (inv0_node12 t) = ((inv0_node12 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node12 t) (inv0_node99 t) (inv0_node12 t) (inv0_node11 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim24 t) (inv0_claim1 t)

theorem inv0_claim33 (t : ℤ → Bool) :
    (inv0_node13 t) = ((inv0_node13 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node13 t) (inv0_node99 t) (inv0_node13 t) (inv0_node12 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node12 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim32 t) (inv0_claim3 t)

theorem inv0_shift11 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node1 (shiftInput false true t)) := by
  rfl

theorem inv0_shift12 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node21 (shiftInput false true t)) := by
  exact inv0_shift11 t

theorem inv0_claim34 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node13 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node13 t)

theorem inv0_claim35 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node12 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node12 t) (inv0_node19 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim25 t) (inv0_claim9 t)

theorem inv0_claim36 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node13 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node13 t) (inv0_node19 t) (inv0_node0 t) (inv0_node12 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim35 t) (inv0_claim11 t)

theorem inv0_claim37 (t : ℤ → Bool) :
    (inv0_node15 t) = ((inv0_node15 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node15 t)

theorem inv0_claim38 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node15 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node15 t)

theorem inv0_claim39 (t : ℤ → Bool) :
    (inv0_node114 t) = ((inv0_node15 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node15 t) (inv0_node15 t) (inv0_node1 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node15 t)) (by rfl) (by rfl)
    (inv0_claim37 t) (inv0_claim38 t)

theorem inv0_shift13 (t : ℤ → Bool) :
    (inv0_node14 t) = (inv0_node16 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node16 (shiftInput false false t)) (inv0_node14 t) (inv0_node0 (shiftInput false false t)) (inv0_node1 (shiftInput false false t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift2 t)

theorem inv0_shift14 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node17 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node17 (shiftInput false false t)) (inv0_node15 t) (inv0_node16 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node14 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift13 t) (inv0_shift3 t)

theorem inv0_shift15 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node18 (shiftInput false false t)) := by
  exact inv0_shift14 t

theorem inv0_claim40 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node15 t) && ! (inv0_node15 t)) := by
  exact bool_and_not_self (inv0_node15 t)

theorem inv0_claim41 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node15 t)) := by
  rfl

theorem inv0_claim42 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node114 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node114 t) (inv0_node15 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t) (inv0_node15 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node15 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim40 t) (inv0_claim41 t)

theorem inv0_claim43 (t : ℤ → Bool) :
    (inv0_node91 t) = ((inv0_node15 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node15 t) (inv0_node15 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node15 t)
    (bool_select_same (t 0) (inv0_node15 t)) (by rfl) (by rfl)
    (inv0_claim38 t) (inv0_claim37 t)

theorem inv0_claim44 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node91 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node91 t)

theorem inv0_claim45 (t : ℤ → Bool) :
    (inv0_node16 t) = ((inv0_node16 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node16 t)

theorem inv0_claim46 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node16 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node16 t)

theorem inv0_claim47 (t : ℤ → Bool) :
    (inv0_node17 t) = ((inv0_node16 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node16 t) (inv0_node1 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node16 t)) (by rfl) (by rfl)
    (inv0_claim45 t) (inv0_claim46 t)

theorem inv0_shift16 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node14 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node14 (shiftInput true false t)) (inv0_node16 t) (inv0_node0 (shiftInput true false t)) (inv0_node1 (shiftInput true false t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift8 t) (inv0_shift0 t)

theorem inv0_shift17 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node15 (shiftInput true false t)) := by
  exact inv0_shift16 t

theorem inv0_claim48 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node16 t) && ! (inv0_node16 t)) := by
  exact bool_and_not_self (inv0_node16 t)

theorem inv0_claim49 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node16 t)) := by
  rfl

theorem inv0_claim50 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node17 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node17 t) (inv0_node16 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim48 t) (inv0_claim49 t)

theorem inv0_claim51 (t : ℤ → Bool) :
    (inv0_node123 t) = ((inv0_node16 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node16 t)
    (bool_select_same (t 0) (inv0_node16 t)) (by rfl) (by rfl)
    (inv0_claim46 t) (inv0_claim45 t)

theorem inv0_claim52 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node123 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node123 t)

theorem inv0_claim53 (t : ℤ → Bool) :
    (inv0_node17 t) = ((inv0_node17 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node17 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim45 t) (inv0_claim1 t)

theorem inv0_claim54 (t : ℤ → Bool) :
    (inv0_node18 t) = ((inv0_node18 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node18 t) (inv0_node99 t) (inv0_node18 t) (inv0_node17 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node17 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim53 t) (inv0_claim3 t)

theorem inv0_shift18 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node19 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node19 (shiftInput false false t)) (inv0_node16 t) (inv0_node0 (shiftInput false false t)) (inv0_node1 (shiftInput false false t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift2 t)

theorem inv0_shift19 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node20 (shiftInput false false t)) := by
  exact inv0_shift18 t

theorem inv0_shift20 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node21 (shiftInput false false t)) := by
  exact inv0_shift3 t

def inv0_node176 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node16 t

theorem inv0_shift21 (t : ℤ → Bool) :
    (inv0_node176 t) = (inv0_node22 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node22 (shiftInput false false t)) (inv0_node176 t) (inv0_node20 (shiftInput false false t)) (inv0_node21 (shiftInput false false t)) (inv0_node16 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift19 t) (inv0_shift20 t)

theorem inv0_claim55 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node0 t)) := by
  rfl

theorem inv0_claim56 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node18 t) && ! (inv0_node176 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node18 t) (inv0_node176 t) (inv0_node0 t) (inv0_node17 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim50 t) (inv0_claim55 t)

theorem inv0_claim57 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node17 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node17 t) (inv0_node19 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim46 t) (inv0_claim9 t)

theorem inv0_claim58 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node18 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node18 t) (inv0_node19 t) (inv0_node0 t) (inv0_node17 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim57 t) (inv0_claim11 t)

theorem inv0_shift22 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node20 (shiftInput false true t)) := by
  exact inv0_shift11 t

theorem inv0_shift23 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node22 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node22 (shiftInput false true t)) (inv0_node1 t) (inv0_node20 (shiftInput false true t)) (inv0_node21 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 1) (inv0_node1 t)) (inv0_shift22 t) (inv0_shift12 t)

theorem inv0_claim59 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node1 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node1 t)

theorem inv0_claim60 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node19 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node19 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim9 t) (inv0_claim59 t)

theorem inv0_claim61 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node1 t) && (inv0_node99 t)) := by
  rfl

theorem inv0_claim62 (t : ℤ → Bool) :
    (inv0_node110 t) = ((inv0_node20 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node20 t) (inv0_node99 t) (inv0_node110 t) (inv0_node19 t) (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim60 t) (inv0_claim61 t)

theorem inv0_claim63 (t : ℤ → Bool) :
    (inv0_node110 t) = ((inv0_node21 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node21 t) (inv0_node99 t) (inv0_node110 t) (inv0_node0 t) (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim61 t)

theorem inv0_claim64 (t : ℤ → Bool) :
    (inv0_node110 t) = ((inv0_node22 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node22 t) (inv0_node99 t) (inv0_node110 t) (inv0_node20 t) (inv0_node21 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t) (inv0_node110 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node110 t))
    (inv0_claim62 t) (inv0_claim63 t)

theorem inv0_shift24 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node25 (shiftInput false false t)) := by
  exact inv0_shift2 t

theorem inv0_shift25 (t : ℤ → Bool) :
    (inv0_node21 t) = (inv0_node88 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node88 (shiftInput false false t)) (inv0_node21 t) (inv0_node0 (shiftInput false false t)) (inv0_node25 (shiftInput false false t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift24 t)

theorem inv0_claim65 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node99 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node99 t)

theorem inv0_claim66 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node110 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node110 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim65 t)

theorem inv0_claim67 (t : ℤ → Bool) :
    (inv0_node19 t) = ((inv0_node19 t) && (inv0_node19 t)) := by
  exact bool_and_self (inv0_node19 t)

theorem inv0_claim68 (t : ℤ → Bool) :
    (inv0_node19 t) = ((inv0_node1 t) && (inv0_node19 t)) := by
  rfl

theorem inv0_claim69 (t : ℤ → Bool) :
    (inv0_node19 t) = ((inv0_node20 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node20 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node19 t))
    (inv0_claim67 t) (inv0_claim68 t)

theorem inv0_claim70 (t : ℤ → Bool) :
    (inv0_node94 t) = ((inv0_node21 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node21 t) (inv0_node19 t) (inv0_node94 t) (inv0_node0 t) (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim68 t)

def inv0_node177 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node94 t else inv0_node19 t

theorem inv0_claim71 (t : ℤ → Bool) :
    (inv0_node177 t) = ((inv0_node22 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node22 t) (inv0_node19 t) (inv0_node177 t) (inv0_node20 t) (inv0_node21 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim69 t) (inv0_claim70 t)

theorem inv0_shift26 (t : ℤ → Bool) :
    (inv0_node21 t) = (inv0_node23 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node23 (shiftInput false false t)) (inv0_node21 t) (inv0_node21 (shiftInput false false t)) (inv0_node1 (shiftInput false false t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift20 t) (inv0_shift2 t)

theorem inv0_shift27 (t : ℤ → Bool) :
    (inv0_node34 t) = (inv0_node24 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node24 (shiftInput false false t)) (inv0_node34 t) (inv0_node1 (shiftInput false false t)) (inv0_node23 (shiftInput false false t)) (inv0_node1 t) (inv0_node21 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift26 t)

theorem inv0_claim72 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node19 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node19 t)

theorem inv0_claim73 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node94 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node94 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim72 t)

theorem inv0_claim74 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node177 t) && ! (inv0_node34 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node177 t) (inv0_node34 t) (inv0_node0 t) (inv0_node19 t) (inv0_node94 t) (inv0_node1 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim73 t)

def inv0_node178 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node99 t else inv0_node110 t

theorem inv0_claim75 (t : ℤ → Bool) :
    (inv0_node178 t) = ((inv0_node23 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node23 t) (inv0_node99 t) (inv0_node178 t) (inv0_node21 t) (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim63 t) (inv0_claim61 t)

def inv0_node179 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node178 t else inv0_node99 t

theorem inv0_claim76 (t : ℤ → Bool) :
    (inv0_node179 t) = ((inv0_node24 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node24 t) (inv0_node99 t) (inv0_node179 t) (inv0_node1 t) (inv0_node23 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node178 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim75 t)

theorem inv0_claim77 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node179 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node179 t)

def inv0_node180 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node19 t else inv0_node94 t

theorem inv0_claim78 (t : ℤ → Bool) :
    (inv0_node180 t) = ((inv0_node23 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node23 t) (inv0_node19 t) (inv0_node180 t) (inv0_node21 t) (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim70 t) (inv0_claim68 t)

def inv0_node181 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node180 t else inv0_node19 t

theorem inv0_claim79 (t : ℤ → Bool) :
    (inv0_node181 t) = ((inv0_node24 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node24 t) (inv0_node19 t) (inv0_node181 t) (inv0_node1 t) (inv0_node23 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node180 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim78 t)

theorem inv0_shift28 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node23 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node23 (shiftInput false true t)) (inv0_node1 t) (inv0_node21 (shiftInput false true t)) (inv0_node1 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 1) (inv0_node1 t)) (inv0_shift12 t) (inv0_shift11 t)

theorem inv0_shift29 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node24 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node24 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 (shiftInput false true t)) (inv0_node23 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 2) (inv0_node1 t)) (inv0_shift11 t) (inv0_shift28 t)

theorem inv0_claim80 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node181 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node181 t)

theorem inv0_claim81 (t : ℤ → Bool) :
    (inv0_node135 t) = ((inv0_node25 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node25 t) (inv0_node99 t) (inv0_node135 t) (inv0_node1 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim3 t)

theorem inv0_claim82 (t : ℤ → Bool) :
    (inv0_node154 t) = ((inv0_node26 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node26 t) (inv0_node99 t) (inv0_node154 t) (inv0_node25 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim3 t)

theorem inv0_claim83 (t : ℤ → Bool) :
    (inv0_node155 t) = ((inv0_node27 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node27 t) (inv0_node99 t) (inv0_node155 t) (inv0_node0 t) (inv0_node26 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node154 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim82 t)

theorem inv0_shift30 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node0 (shiftInput false true t)) := by
  rfl

theorem inv0_shift31 (t : ℤ → Bool) :
    (inv0_node25 t) = (inv0_node28 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node28 (shiftInput false true t)) (inv0_node25 t) (inv0_node21 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift12 t) (inv0_shift30 t)

theorem inv0_shift32 (t : ℤ → Bool) :
    (inv0_node26 t) = (inv0_node29 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node29 (shiftInput false true t)) (inv0_node26 t) (inv0_node28 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node25 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift31 t) (inv0_shift30 t)

theorem inv0_claim84 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node26 t)) := by
  rfl

theorem inv0_claim85 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node135 t) && ! (inv0_node25 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node135 t) (inv0_node25 t) (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim65 t) (inv0_claim55 t)

theorem inv0_claim86 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node154 t) && ! (inv0_node26 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node154 t) (inv0_node26 t) (inv0_node0 t) (inv0_node135 t) (inv0_node0 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim85 t) (inv0_claim55 t)

theorem inv0_claim87 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node155 t) && ! (inv0_node26 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node155 t) (inv0_node26 t) (inv0_node0 t) (inv0_node0 t) (inv0_node154 t) (inv0_node26 t) (inv0_node26 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node26 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim84 t) (inv0_claim86 t)

theorem inv0_claim88 (t : ℤ → Bool) :
    (inv0_node86 t) = ((inv0_node25 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node25 t) (inv0_node19 t) (inv0_node86 t) (inv0_node1 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim11 t)

theorem inv0_claim89 (t : ℤ → Bool) :
    (inv0_node98 t) = ((inv0_node26 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node26 t) (inv0_node19 t) (inv0_node98 t) (inv0_node25 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim11 t)

def inv0_node182 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node98 t else inv0_node0 t

theorem inv0_claim90 (t : ℤ → Bool) :
    (inv0_node182 t) = ((inv0_node27 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node27 t) (inv0_node19 t) (inv0_node182 t) (inv0_node0 t) (inv0_node26 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node98 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim89 t)

theorem inv0_shift33 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node31 (shiftInput false false t)) := by
  exact inv0_shift2 t

theorem inv0_shift34 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node32 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node32 (shiftInput false false t)) (inv0_node1 t) (inv0_node1 (shiftInput false false t)) (inv0_node31 (shiftInput false false t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 1) (inv0_node1 t)) (inv0_shift2 t) (inv0_shift33 t)

theorem inv0_shift35 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node33 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node33 (shiftInput false false t)) (inv0_node1 t) (inv0_node32 (shiftInput false false t)) (inv0_node31 (shiftInput false false t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 2) (inv0_node1 t)) (inv0_shift34 t) (inv0_shift33 t)

theorem inv0_claim91 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node182 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node182 t)

theorem inv0_claim92 (t : ℤ → Bool) :
    (inv0_node111 t) = ((inv0_node28 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node28 t) (inv0_node99 t) (inv0_node111 t) (inv0_node21 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim63 t) (inv0_claim3 t)

theorem inv0_claim93 (t : ℤ → Bool) :
    (inv0_node112 t) = ((inv0_node29 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node29 t) (inv0_node99 t) (inv0_node112 t) (inv0_node28 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node111 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim92 t) (inv0_claim3 t)

theorem inv0_shift36 (t : ℤ → Bool) :
    (inv0_node25 t) = (inv0_node34 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node34 (shiftInput false false t)) (inv0_node25 t) (inv0_node1 (shiftInput false false t)) (inv0_node21 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift20 t)

theorem inv0_shift37 (t : ℤ → Bool) :
    (inv0_node52 t) = (inv0_node35 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node35 (shiftInput false false t)) (inv0_node52 t) (inv0_node1 (shiftInput false false t)) (inv0_node34 (shiftInput false false t)) (inv0_node1 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift36 t)

theorem inv0_claim94 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node110 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node110 t)

theorem inv0_claim95 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node25 t)) := by
  rfl

theorem inv0_claim96 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node111 t) && ! (inv0_node52 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node111 t) (inv0_node52 t) (inv0_node0 t) (inv0_node110 t) (inv0_node0 t) (inv0_node1 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim94 t) (inv0_claim95 t)

theorem inv0_claim97 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node52 t)) := by
  rfl

theorem inv0_claim98 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node112 t) && ! (inv0_node52 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node112 t) (inv0_node52 t) (inv0_node0 t) (inv0_node111 t) (inv0_node0 t) (inv0_node52 t) (inv0_node52 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node52 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim96 t) (inv0_claim97 t)

theorem inv0_claim99 (t : ℤ → Bool) :
    (inv0_node95 t) = ((inv0_node28 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node28 t) (inv0_node19 t) (inv0_node95 t) (inv0_node21 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim70 t) (inv0_claim11 t)

theorem inv0_claim100 (t : ℤ → Bool) :
    (inv0_node126 t) = ((inv0_node29 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node29 t) (inv0_node19 t) (inv0_node126 t) (inv0_node28 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node95 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim99 t) (inv0_claim11 t)

theorem inv0_shift38 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node34 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node34 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 (shiftInput false true t)) (inv0_node21 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 1) (inv0_node1 t)) (inv0_shift11 t) (inv0_shift12 t)

theorem inv0_shift39 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node35 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node35 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 (shiftInput false true t)) (inv0_node34 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 2) (inv0_node1 t)) (inv0_shift11 t) (inv0_shift38 t)

theorem inv0_claim101 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node126 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node126 t)

theorem inv0_claim102 (t : ℤ → Bool) :
    (inv0_node1 t) = ((inv0_node1 t) && (inv0_node1 t)) := by
  rfl

theorem inv0_claim103 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node30 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node30 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node15 t) (inv0_node1 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim102 t) (inv0_claim38 t)

theorem inv0_claim104 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node31 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node31 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node30 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node99 t))
    (inv0_claim61 t) (inv0_claim103 t)

theorem inv0_claim105 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node32 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node32 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node31 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node99 t))
    (inv0_claim61 t) (inv0_claim104 t)

theorem inv0_claim106 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node33 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node33 t) (inv0_node99 t) (inv0_node99 t) (inv0_node32 t) (inv0_node31 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (bool_select_same (t 3) (inv0_node99 t))
    (inv0_claim105 t) (inv0_claim104 t)

theorem inv0_claim107 (t : ℤ → Bool) :
    (inv0_node91 t) = ((inv0_node30 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node30 t) (inv0_node19 t) (inv0_node91 t) (inv0_node1 t) (inv0_node15 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node15 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim59 t) (inv0_claim37 t)

def inv0_node183 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node91 t else inv0_node19 t

theorem inv0_claim108 (t : ℤ → Bool) :
    (inv0_node183 t) = ((inv0_node31 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node31 t) (inv0_node19 t) (inv0_node183 t) (inv0_node1 t) (inv0_node30 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node91 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim107 t)

def inv0_node184 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node183 t else inv0_node19 t

theorem inv0_claim109 (t : ℤ → Bool) :
    (inv0_node184 t) = ((inv0_node32 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node32 t) (inv0_node19 t) (inv0_node184 t) (inv0_node1 t) (inv0_node31 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node183 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim108 t)

def inv0_node185 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node183 t else inv0_node184 t

theorem inv0_claim110 (t : ℤ → Bool) :
    (inv0_node185 t) = ((inv0_node33 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node33 t) (inv0_node19 t) (inv0_node185 t) (inv0_node32 t) (inv0_node31 t) (inv0_node19 t) (inv0_node19 t) (inv0_node184 t) (inv0_node183 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim109 t) (inv0_claim108 t)

theorem inv0_shift40 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node36 (shiftInput false false t)) := by
  exact inv0_shift2 t

theorem inv0_shift41 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node37 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node37 (shiftInput false false t)) (inv0_node1 t) (inv0_node36 (shiftInput false false t)) (inv0_node25 (shiftInput false false t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 1) (inv0_node1 t)) (inv0_shift40 t) (inv0_shift24 t)

theorem inv0_claim111 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node185 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node185 t)

def inv0_node186 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node110 t else inv0_node99 t

theorem inv0_claim112 (t : ℤ → Bool) :
    (inv0_node186 t) = ((inv0_node34 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node34 t) (inv0_node99 t) (inv0_node186 t) (inv0_node1 t) (inv0_node21 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim63 t)

def inv0_node187 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node186 t else inv0_node99 t

theorem inv0_claim113 (t : ℤ → Bool) :
    (inv0_node187 t) = ((inv0_node35 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node35 t) (inv0_node99 t) (inv0_node187 t) (inv0_node1 t) (inv0_node34 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node186 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim112 t)

theorem inv0_claim114 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node187 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node187 t)

theorem inv0_claim115 (t : ℤ → Bool) :
    (inv0_node177 t) = ((inv0_node34 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node34 t) (inv0_node19 t) (inv0_node177 t) (inv0_node1 t) (inv0_node21 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim70 t)

def inv0_node188 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node177 t else inv0_node19 t

theorem inv0_claim116 (t : ℤ → Bool) :
    (inv0_node188 t) = ((inv0_node35 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node35 t) (inv0_node19 t) (inv0_node188 t) (inv0_node1 t) (inv0_node34 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node177 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim115 t)

theorem inv0_claim117 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node188 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node188 t)

theorem inv0_claim118 (t : ℤ → Bool) :
    (inv0_node135 t) = ((inv0_node36 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node36 t) (inv0_node99 t) (inv0_node135 t) (inv0_node1 t) (inv0_node19 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim60 t)

theorem inv0_claim119 (t : ℤ → Bool) :
    (inv0_node135 t) = ((inv0_node37 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node37 t) (inv0_node99 t) (inv0_node135 t) (inv0_node36 t) (inv0_node25 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node135 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node135 t))
    (inv0_claim118 t) (inv0_claim81 t)

theorem inv0_claim120 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node135 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node135 t)

theorem inv0_claim121 (t : ℤ → Bool) :
    (inv0_node19 t) = ((inv0_node36 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node36 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node19 t))
    (inv0_claim68 t) (inv0_claim67 t)

def inv0_node189 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node86 t else inv0_node19 t

theorem inv0_claim122 (t : ℤ → Bool) :
    (inv0_node189 t) = ((inv0_node37 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node37 t) (inv0_node19 t) (inv0_node189 t) (inv0_node36 t) (inv0_node25 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim121 t) (inv0_claim88 t)

theorem inv0_shift42 (t : ℤ → Bool) :
    (inv0_node2 t) = (inv0_node9 (shiftInput false false t)) := by
  exact bool_unary_split (t (-3)) (inv0_node9 (shiftInput false false t)) (inv0_node2 t) (inv0_node1 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift3 t)

theorem inv0_shift43 (t : ℤ → Bool) :
    (inv0_node164 t) = (inv0_node38 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node38 (shiftInput false false t)) (inv0_node164 t) (inv0_node1 (shiftInput false false t)) (inv0_node9 (shiftInput false false t)) (inv0_node1 t) (inv0_node2 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift42 t)

theorem inv0_shift44 (t : ℤ → Bool) :
    (inv0_node61 t) = (inv0_node14 (shiftInput false false t)) := by
  exact bool_unary_split (t (-3)) (inv0_node14 (shiftInput false false t)) (inv0_node61 t) (inv0_node0 (shiftInput false false t)) (inv0_node1 (shiftInput false false t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift2 t)

theorem inv0_shift45 (t : ℤ → Bool) :
    (inv0_node167 t) = (inv0_node39 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node39 (shiftInput false false t)) (inv0_node167 t) (inv0_node1 (shiftInput false false t)) (inv0_node14 (shiftInput false false t)) (inv0_node1 t) (inv0_node61 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift44 t)

def inv0_node190 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node167 t else inv0_node164 t

theorem inv0_shift46 (t : ℤ → Bool) :
    (inv0_node190 t) = (inv0_node40 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node40 (shiftInput false false t)) (inv0_node190 t) (inv0_node38 (shiftInput false false t)) (inv0_node39 (shiftInput false false t)) (inv0_node164 t) (inv0_node167 t)
    (by rfl) (by rfl) (inv0_shift43 t) (inv0_shift45 t)

theorem inv0_shift47 (t : ℤ → Bool) :
    (inv0_node190 t) = (inv0_node41 (shiftInput false false t)) := by
  exact inv0_shift46 t

def inv0_node191 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node190 t else inv0_node1 t

theorem inv0_shift48 (t : ℤ → Bool) :
    (inv0_node191 t) = (inv0_node42 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node42 (shiftInput false false t)) (inv0_node191 t) (inv0_node25 (shiftInput false false t)) (inv0_node41 (shiftInput false false t)) (inv0_node1 t) (inv0_node190 t)
    (by rfl) (by rfl) (inv0_shift24 t) (inv0_shift47 t)

def inv0_node192 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node191 t else inv0_node1 t

theorem inv0_shift49 (t : ℤ → Bool) :
    (inv0_node192 t) = (inv0_node43 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node43 (shiftInput false false t)) (inv0_node192 t) (inv0_node25 (shiftInput false false t)) (inv0_node42 (shiftInput false false t)) (inv0_node1 t) (inv0_node191 t)
    (by rfl) (by rfl) (inv0_shift24 t) (inv0_shift48 t)

theorem inv0_claim123 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node190 t)) := by
  rfl

theorem inv0_claim124 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node191 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node86 t) (inv0_node191 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim123 t)

theorem inv0_claim125 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node189 t) && ! (inv0_node192 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node189 t) (inv0_node192 t) (inv0_node0 t) (inv0_node19 t) (inv0_node86 t) (inv0_node1 t) (inv0_node191 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim124 t)

theorem inv0_claim126 (t : ℤ → Bool) :
    (inv0_node38 t) = ((inv0_node38 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node38 t)

theorem inv0_claim127 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node39 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node39 t)

def inv0_node193 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node38 t

theorem inv0_claim128 (t : ℤ → Bool) :
    (inv0_node193 t) = ((inv0_node40 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node40 t) (inv0_node99 t) (inv0_node193 t) (inv0_node38 t) (inv0_node39 t) (inv0_node1 t) (inv0_node0 t) (inv0_node38 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim126 t) (inv0_claim127 t)

def inv0_node194 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node193 t

theorem inv0_claim129 (t : ℤ → Bool) :
    (inv0_node194 t) = ((inv0_node41 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node41 t) (inv0_node99 t) (inv0_node194 t) (inv0_node40 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node193 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim128 t) (inv0_claim3 t)

def inv0_node195 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node194 t else inv0_node135 t

theorem inv0_claim130 (t : ℤ → Bool) :
    (inv0_node195 t) = ((inv0_node42 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node42 t) (inv0_node99 t) (inv0_node195 t) (inv0_node25 t) (inv0_node41 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node194 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim129 t)

def inv0_node196 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node195 t else inv0_node135 t

theorem inv0_claim131 (t : ℤ → Bool) :
    (inv0_node196 t) = ((inv0_node43 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node43 t) (inv0_node99 t) (inv0_node196 t) (inv0_node25 t) (inv0_node42 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node195 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim130 t)

theorem inv0_claim132 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node196 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node196 t)

theorem inv0_claim133 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node38 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node38 t)

theorem inv0_claim134 (t : ℤ → Bool) :
    (inv0_node39 t) = ((inv0_node39 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node39 t)

def inv0_node197 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node39 t else inv0_node0 t

theorem inv0_claim135 (t : ℤ → Bool) :
    (inv0_node197 t) = ((inv0_node40 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node40 t) (inv0_node19 t) (inv0_node197 t) (inv0_node38 t) (inv0_node39 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node39 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim133 t) (inv0_claim134 t)

def inv0_node198 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node197 t

theorem inv0_claim136 (t : ℤ → Bool) :
    (inv0_node198 t) = ((inv0_node41 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node41 t) (inv0_node19 t) (inv0_node198 t) (inv0_node40 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node197 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim135 t) (inv0_claim11 t)

def inv0_node199 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node198 t else inv0_node86 t

theorem inv0_claim137 (t : ℤ → Bool) :
    (inv0_node199 t) = ((inv0_node42 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node42 t) (inv0_node19 t) (inv0_node199 t) (inv0_node25 t) (inv0_node41 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node198 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim136 t)

def inv0_node200 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node199 t else inv0_node86 t

theorem inv0_claim138 (t : ℤ → Bool) :
    (inv0_node200 t) = ((inv0_node43 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node43 t) (inv0_node19 t) (inv0_node200 t) (inv0_node25 t) (inv0_node42 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node199 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim137 t)

theorem inv0_shift50 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node44 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node44 (shiftInput false false t)) (inv0_node1 t) (inv0_node25 (shiftInput false false t)) (inv0_node1 (shiftInput false false t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 1) (inv0_node1 t)) (inv0_shift24 t) (inv0_shift2 t)

theorem inv0_shift51 (t : ℤ → Bool) :
    (inv0_node66 t) = (inv0_node45 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node45 (shiftInput false false t)) (inv0_node66 t) (inv0_node0 (shiftInput false false t)) (inv0_node14 (shiftInput false false t)) (inv0_node0 t) (inv0_node61 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift44 t)

theorem inv0_shift52 (t : ℤ → Bool) :
    (inv0_node68 t) = (inv0_node46 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node46 (shiftInput false false t)) (inv0_node68 t) (inv0_node0 (shiftInput false false t)) (inv0_node45 (shiftInput false false t)) (inv0_node0 t) (inv0_node66 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift51 t)

theorem inv0_shift53 (t : ℤ → Bool) :
    (inv0_node68 t) = (inv0_node47 (shiftInput false false t)) := by
  exact inv0_shift52 t

def inv0_node201 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node68 t else inv0_node1 t

theorem inv0_shift54 (t : ℤ → Bool) :
    (inv0_node201 t) = (inv0_node48 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node48 (shiftInput false false t)) (inv0_node201 t) (inv0_node25 (shiftInput false false t)) (inv0_node47 (shiftInput false false t)) (inv0_node1 t) (inv0_node68 t)
    (by rfl) (by rfl) (inv0_shift24 t) (inv0_shift53 t)

def inv0_node202 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node201 t else inv0_node1 t

theorem inv0_shift55 (t : ℤ → Bool) :
    (inv0_node202 t) = (inv0_node49 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node49 (shiftInput false false t)) (inv0_node202 t) (inv0_node44 (shiftInput false false t)) (inv0_node48 (shiftInput false false t)) (inv0_node1 t) (inv0_node201 t)
    (by rfl) (by rfl) (inv0_shift50 t) (inv0_shift54 t)

theorem inv0_claim139 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node86 t)

theorem inv0_claim140 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node68 t)) := by
  rfl

theorem inv0_claim141 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node201 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node86 t) (inv0_node201 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node68 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim140 t)

theorem inv0_claim142 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node202 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node86 t) (inv0_node202 t) (inv0_node0 t) (inv0_node86 t) (inv0_node86 t) (inv0_node1 t) (inv0_node201 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node86 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim139 t) (inv0_claim141 t)

theorem inv0_claim143 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node197 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node197 t)

theorem inv0_claim144 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node198 t) && ! (inv0_node201 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node198 t) (inv0_node201 t) (inv0_node0 t) (inv0_node197 t) (inv0_node0 t) (inv0_node1 t) (inv0_node68 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim143 t) (inv0_claim140 t)

theorem inv0_claim145 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node199 t) && ! (inv0_node202 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node199 t) (inv0_node202 t) (inv0_node0 t) (inv0_node86 t) (inv0_node198 t) (inv0_node1 t) (inv0_node201 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim139 t) (inv0_claim144 t)

theorem inv0_claim146 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node200 t) && ! (inv0_node202 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node200 t) (inv0_node202 t) (inv0_node0 t) (inv0_node86 t) (inv0_node199 t) (inv0_node202 t) (inv0_node202 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node202 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim142 t) (inv0_claim145 t)

def inv0_node203 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node99 t else inv0_node135 t

theorem inv0_claim147 (t : ℤ → Bool) :
    (inv0_node203 t) = ((inv0_node44 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node44 t) (inv0_node99 t) (inv0_node203 t) (inv0_node25 t) (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim61 t)

theorem inv0_claim148 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node45 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node45 t)

theorem inv0_claim149 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node46 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node46 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node45 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim9 t) (inv0_claim148 t)

theorem inv0_claim150 (t : ℤ → Bool) :
    (inv0_node110 t) = ((inv0_node47 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node47 t) (inv0_node99 t) (inv0_node110 t) (inv0_node46 t) (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim149 t) (inv0_claim61 t)

def inv0_node204 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node110 t else inv0_node135 t

theorem inv0_claim151 (t : ℤ → Bool) :
    (inv0_node204 t) = ((inv0_node48 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node48 t) (inv0_node99 t) (inv0_node204 t) (inv0_node25 t) (inv0_node47 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node110 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim150 t)

def inv0_node205 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node204 t else inv0_node203 t

theorem inv0_claim152 (t : ℤ → Bool) :
    (inv0_node205 t) = ((inv0_node49 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node49 t) (inv0_node99 t) (inv0_node205 t) (inv0_node44 t) (inv0_node48 t) (inv0_node99 t) (inv0_node99 t) (inv0_node203 t) (inv0_node204 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim147 t) (inv0_claim151 t)

theorem inv0_claim153 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node205 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node205 t)

def inv0_node206 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node19 t else inv0_node86 t

theorem inv0_claim154 (t : ℤ → Bool) :
    (inv0_node206 t) = ((inv0_node44 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node44 t) (inv0_node19 t) (inv0_node206 t) (inv0_node25 t) (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim68 t)

theorem inv0_claim155 (t : ℤ → Bool) :
    (inv0_node45 t) = ((inv0_node45 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node45 t)

theorem inv0_claim156 (t : ℤ → Bool) :
    (inv0_node46 t) = ((inv0_node46 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node46 t) (inv0_node19 t) (inv0_node46 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node45 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim1 t) (inv0_claim155 t)

def inv0_node207 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node19 t else inv0_node46 t

theorem inv0_claim157 (t : ℤ → Bool) :
    (inv0_node207 t) = ((inv0_node47 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node47 t) (inv0_node19 t) (inv0_node207 t) (inv0_node46 t) (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node46 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim156 t) (inv0_claim68 t)

def inv0_node208 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node207 t else inv0_node86 t

theorem inv0_claim158 (t : ℤ → Bool) :
    (inv0_node208 t) = ((inv0_node48 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node48 t) (inv0_node19 t) (inv0_node208 t) (inv0_node25 t) (inv0_node47 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node207 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim157 t)

def inv0_node209 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node208 t else inv0_node206 t

theorem inv0_claim159 (t : ℤ → Bool) :
    (inv0_node209 t) = ((inv0_node49 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node49 t) (inv0_node19 t) (inv0_node209 t) (inv0_node44 t) (inv0_node48 t) (inv0_node19 t) (inv0_node19 t) (inv0_node206 t) (inv0_node208 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim154 t) (inv0_claim158 t)

theorem inv0_shift56 (t : ℤ → Bool) :
    (inv0_node68 t) = (inv0_node50 (shiftInput false false t)) := by
  exact inv0_shift52 t

theorem inv0_shift57 (t : ℤ → Bool) :
    (inv0_node201 t) = (inv0_node51 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node51 (shiftInput false false t)) (inv0_node201 t) (inv0_node25 (shiftInput false false t)) (inv0_node50 (shiftInput false false t)) (inv0_node1 t) (inv0_node68 t)
    (by rfl) (by rfl) (inv0_shift24 t) (inv0_shift56 t)

theorem inv0_shift58 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node52 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node52 (shiftInput false false t)) (inv0_node1 t) (inv0_node1 (shiftInput false false t)) (inv0_node25 (shiftInput false false t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 1) (inv0_node1 t)) (inv0_shift2 t) (inv0_shift24 t)

def inv0_node210 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node1 t else inv0_node201 t

theorem inv0_shift59 (t : ℤ → Bool) :
    (inv0_node210 t) = (inv0_node53 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node53 (shiftInput false false t)) (inv0_node210 t) (inv0_node51 (shiftInput false false t)) (inv0_node52 (shiftInput false false t)) (inv0_node201 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift57 t) (inv0_shift58 t)

theorem inv0_claim160 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node206 t) && ! (inv0_node210 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node206 t) (inv0_node210 t) (inv0_node0 t) (inv0_node86 t) (inv0_node19 t) (inv0_node201 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim141 t) (inv0_claim72 t)

theorem inv0_claim161 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node207 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node207 t)

theorem inv0_claim162 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node208 t) && ! (inv0_node210 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node208 t) (inv0_node210 t) (inv0_node0 t) (inv0_node86 t) (inv0_node207 t) (inv0_node201 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim141 t) (inv0_claim161 t)

theorem inv0_claim163 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node209 t) && ! (inv0_node210 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node209 t) (inv0_node210 t) (inv0_node0 t) (inv0_node206 t) (inv0_node208 t) (inv0_node210 t) (inv0_node210 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node210 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim160 t) (inv0_claim162 t)

theorem inv0_claim164 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node50 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node50 t) (inv0_node99 t) (inv0_node0 t) (inv0_node46 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim149 t) (inv0_claim3 t)

theorem inv0_claim165 (t : ℤ → Bool) :
    (inv0_node154 t) = ((inv0_node51 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node51 t) (inv0_node99 t) (inv0_node154 t) (inv0_node25 t) (inv0_node50 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim164 t)

def inv0_node211 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node135 t else inv0_node99 t

theorem inv0_claim166 (t : ℤ → Bool) :
    (inv0_node211 t) = ((inv0_node52 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node52 t) (inv0_node99 t) (inv0_node211 t) (inv0_node1 t) (inv0_node25 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim81 t)

def inv0_node212 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node211 t else inv0_node154 t

theorem inv0_claim167 (t : ℤ → Bool) :
    (inv0_node212 t) = ((inv0_node53 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node53 t) (inv0_node99 t) (inv0_node212 t) (inv0_node51 t) (inv0_node52 t) (inv0_node99 t) (inv0_node99 t) (inv0_node154 t) (inv0_node211 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim165 t) (inv0_claim166 t)

theorem inv0_claim168 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node212 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node212 t)

theorem inv0_claim169 (t : ℤ → Bool) :
    (inv0_node50 t) = ((inv0_node50 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node50 t) (inv0_node19 t) (inv0_node50 t) (inv0_node46 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node46 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim156 t) (inv0_claim11 t)

def inv0_node213 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node50 t else inv0_node86 t

theorem inv0_claim170 (t : ℤ → Bool) :
    (inv0_node213 t) = ((inv0_node51 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node51 t) (inv0_node19 t) (inv0_node213 t) (inv0_node25 t) (inv0_node50 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node50 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim169 t)

theorem inv0_claim171 (t : ℤ → Bool) :
    (inv0_node189 t) = ((inv0_node52 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node52 t) (inv0_node19 t) (inv0_node189 t) (inv0_node1 t) (inv0_node25 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim88 t)

def inv0_node214 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node189 t else inv0_node213 t

theorem inv0_claim172 (t : ℤ → Bool) :
    (inv0_node214 t) = ((inv0_node53 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node53 t) (inv0_node19 t) (inv0_node214 t) (inv0_node51 t) (inv0_node52 t) (inv0_node19 t) (inv0_node19 t) (inv0_node213 t) (inv0_node189 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim170 t) (inv0_claim171 t)

theorem inv0_claim173 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node46 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node46 t)

theorem inv0_claim174 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node50 t) && ! (inv0_node25 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node50 t) (inv0_node25 t) (inv0_node0 t) (inv0_node46 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim173 t) (inv0_claim55 t)

theorem inv0_claim175 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node213 t) && ! (inv0_node52 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node213 t) (inv0_node52 t) (inv0_node0 t) (inv0_node86 t) (inv0_node50 t) (inv0_node1 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim139 t) (inv0_claim174 t)

theorem inv0_claim176 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node25 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node86 t) (inv0_node25 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim55 t)

theorem inv0_claim177 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node189 t) && ! (inv0_node52 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node189 t) (inv0_node52 t) (inv0_node0 t) (inv0_node19 t) (inv0_node86 t) (inv0_node1 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim176 t)

theorem inv0_claim178 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node214 t) && ! (inv0_node52 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node214 t) (inv0_node52 t) (inv0_node0 t) (inv0_node213 t) (inv0_node189 t) (inv0_node52 t) (inv0_node52 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node52 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim175 t) (inv0_claim177 t)

theorem inv0_claim179 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node211 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node211 t)

theorem inv0_shift60 (t : ℤ → Bool) :
    (inv0_node25 t) = (inv0_node26 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node26 (shiftInput false false t)) (inv0_node25 t) (inv0_node25 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift24 t) (inv0_shift3 t)

theorem inv0_shift61 (t : ℤ → Bool) :
    (inv0_node52 t) = (inv0_node54 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node54 (shiftInput false false t)) (inv0_node52 t) (inv0_node25 (shiftInput false false t)) (inv0_node26 (shiftInput false false t)) (inv0_node1 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift24 t) (inv0_shift60 t)

def inv0_node215 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node154 t else inv0_node135 t

theorem inv0_claim180 (t : ℤ → Bool) :
    (inv0_node215 t) = ((inv0_node54 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node54 t) (inv0_node99 t) (inv0_node215 t) (inv0_node25 t) (inv0_node26 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node154 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim82 t)

theorem inv0_claim181 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node215 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node215 t)

def inv0_node216 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node98 t else inv0_node86 t

theorem inv0_claim182 (t : ℤ → Bool) :
    (inv0_node216 t) = ((inv0_node54 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node54 t) (inv0_node19 t) (inv0_node216 t) (inv0_node25 t) (inv0_node26 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node98 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim89 t)

def inv0_node217 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node16 t else inv0_node1 t

theorem inv0_shift62 (t : ℤ → Bool) :
    (inv0_node217 t) = (inv0_node55 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node55 (shiftInput false false t)) (inv0_node217 t) (inv0_node25 (shiftInput false false t)) (inv0_node20 (shiftInput false false t)) (inv0_node1 t) (inv0_node16 t)
    (by rfl) (by rfl) (inv0_shift24 t) (inv0_shift19 t)

theorem inv0_claim183 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node217 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node86 t) (inv0_node217 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim49 t)

theorem inv0_claim184 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node217 t)) := by
  rfl

theorem inv0_claim185 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node98 t) && ! (inv0_node217 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node98 t) (inv0_node217 t) (inv0_node0 t) (inv0_node86 t) (inv0_node0 t) (inv0_node217 t) (inv0_node217 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node217 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim183 t) (inv0_claim184 t)

theorem inv0_claim186 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node216 t) && ! (inv0_node217 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node216 t) (inv0_node217 t) (inv0_node0 t) (inv0_node86 t) (inv0_node98 t) (inv0_node217 t) (inv0_node217 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node217 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim183 t) (inv0_claim185 t)

theorem inv0_claim187 (t : ℤ → Bool) :
    (inv0_node204 t) = ((inv0_node55 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node55 t) (inv0_node99 t) (inv0_node204 t) (inv0_node25 t) (inv0_node20 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node110 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim81 t) (inv0_claim62 t)

theorem inv0_claim188 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node204 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node204 t)

theorem inv0_claim189 (t : ℤ → Bool) :
    (inv0_node206 t) = ((inv0_node55 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node55 t) (inv0_node19 t) (inv0_node206 t) (inv0_node25 t) (inv0_node20 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim88 t) (inv0_claim69 t)

theorem inv0_shift63 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node11 (shiftInput true false t)) := by
  exact inv0_shift0 t

theorem inv0_claim190 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node206 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node206 t)

theorem inv0_claim191 (t : ℤ → Bool) :
    (inv0_node57 t) = ((inv0_node57 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node57 t)

theorem inv0_claim192 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node57 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node57 t)

def inv0_node218 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node57 t

theorem inv0_claim193 (t : ℤ → Bool) :
    (inv0_node218 t) = ((inv0_node57 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node57 t) (inv0_node57 t) (inv0_node1 t) (inv0_node0 t) (inv0_node57 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node57 t)) (by rfl) (by rfl)
    (inv0_claim191 t) (inv0_claim192 t)

theorem inv0_claim194 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node218 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node218 t)

def inv0_node219 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node57 t else inv0_node0 t

theorem inv0_claim195 (t : ℤ → Bool) :
    (inv0_node219 t) = ((inv0_node57 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node57 t) (inv0_node57 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node57 t)
    (bool_select_same (t 0) (inv0_node57 t)) (by rfl) (by rfl)
    (inv0_claim192 t) (inv0_claim191 t)

theorem inv0_claim196 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node219 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node219 t)

theorem inv0_claim197 (t : ℤ → Bool) :
    (inv0_node58 t) = ((inv0_node58 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node58 t)

theorem inv0_claim198 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node58 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node58 t)

def inv0_node220 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node58 t

theorem inv0_claim199 (t : ℤ → Bool) :
    (inv0_node220 t) = ((inv0_node58 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node58 t) (inv0_node58 t) (inv0_node1 t) (inv0_node0 t) (inv0_node58 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node58 t)) (by rfl) (by rfl)
    (inv0_claim197 t) (inv0_claim198 t)

theorem inv0_shift64 (t : ℤ → Bool) :
    (inv0_node2 t) = (inv0_node9 (shiftInput false true t)) := by
  exact bool_unary_split (t (-3)) (inv0_node9 (shiftInput false true t)) (inv0_node2 t) (inv0_node1 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift11 t) (inv0_shift30 t)

theorem inv0_shift65 (t : ℤ → Bool) :
    (inv0_node56 t) = (inv0_node73 (shiftInput false true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node73 (shiftInput false true t)) (inv0_node56 t) (inv0_node0 (shiftInput false true t)) (inv0_node9 (shiftInput false true t)) (inv0_node0 t) (inv0_node2 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift64 t)

theorem inv0_shift66 (t : ℤ → Bool) :
    (inv0_node58 t) = (inv0_node108 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node108 (shiftInput false true t)) (inv0_node58 t) (inv0_node0 (shiftInput false true t)) (inv0_node73 (shiftInput false true t)) (inv0_node0 t) (inv0_node56 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift65 t)

theorem inv0_shift67 (t : ℤ → Bool) :
    (inv0_node58 t) = (inv0_node132 (shiftInput false true t)) := by
  exact inv0_shift66 t

theorem inv0_claim200 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node58 t) && ! (inv0_node58 t)) := by
  exact bool_and_not_self (inv0_node58 t)

theorem inv0_claim201 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node58 t)) := by
  rfl

theorem inv0_claim202 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node220 t) && ! (inv0_node58 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node220 t) (inv0_node58 t) (inv0_node0 t) (inv0_node58 t) (inv0_node0 t) (inv0_node58 t) (inv0_node58 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node58 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim200 t) (inv0_claim201 t)

def inv0_node221 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node58 t else inv0_node0 t

theorem inv0_claim203 (t : ℤ → Bool) :
    (inv0_node221 t) = ((inv0_node58 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node58 t) (inv0_node58 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node58 t)
    (bool_select_same (t 0) (inv0_node58 t)) (by rfl) (by rfl)
    (inv0_claim198 t) (inv0_claim197 t)

theorem inv0_claim204 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node221 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node221 t)

theorem inv0_claim205 (t : ℤ → Bool) :
    (inv0_node59 t) = ((inv0_node59 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node59 t)

theorem inv0_claim206 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node59 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node59 t)

def inv0_node222 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node59 t

theorem inv0_claim207 (t : ℤ → Bool) :
    (inv0_node222 t) = ((inv0_node59 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node59 t) (inv0_node59 t) (inv0_node1 t) (inv0_node0 t) (inv0_node59 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node59 t)) (by rfl) (by rfl)
    (inv0_claim205 t) (inv0_claim206 t)

theorem inv0_shift68 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node2 (shiftInput true false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node2 (shiftInput true false t)) (inv0_node9 t) (inv0_node1 (shiftInput true false t)) (inv0_node0 (shiftInput true false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift0 t) (inv0_shift8 t)

theorem inv0_shift69 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node56 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node56 (shiftInput true false t)) (inv0_node73 t) (inv0_node0 (shiftInput true false t)) (inv0_node2 (shiftInput true false t)) (inv0_node0 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift8 t) (inv0_shift68 t)

theorem inv0_shift70 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node57 (shiftInput true false t)) := by
  exact inv0_shift69 t

theorem inv0_claim208 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node2 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node2 t)

theorem inv0_claim209 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node3 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node3 t) (inv0_node9 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim208 t) (inv0_claim55 t)

theorem inv0_claim210 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node59 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node59 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim209 t)

theorem inv0_claim211 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node73 t)) := by
  rfl

theorem inv0_claim212 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node222 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node222 t) (inv0_node73 t) (inv0_node0 t) (inv0_node59 t) (inv0_node0 t) (inv0_node73 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node73 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim210 t) (inv0_claim211 t)

def inv0_node223 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node59 t else inv0_node0 t

theorem inv0_claim213 (t : ℤ → Bool) :
    (inv0_node223 t) = ((inv0_node59 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node59 t) (inv0_node59 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node59 t)
    (bool_select_same (t 0) (inv0_node59 t)) (by rfl) (by rfl)
    (inv0_claim206 t) (inv0_claim205 t)

theorem inv0_shift71 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node0 (shiftInput true true t)) := by
  rfl

theorem inv0_shift72 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node2 (shiftInput true true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node2 (shiftInput true true t)) (inv0_node9 t) (inv0_node1 (shiftInput true true t)) (inv0_node0 (shiftInput true true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift1 t) (inv0_shift71 t)

theorem inv0_shift73 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node56 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node56 (shiftInput true true t)) (inv0_node73 t) (inv0_node0 (shiftInput true true t)) (inv0_node2 (shiftInput true true t)) (inv0_node0 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift71 t) (inv0_shift72 t)

theorem inv0_shift74 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node58 (shiftInput true true t)) := by
  exact inv0_shift73 t

theorem inv0_claim214 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node223 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node223 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node59 t) (inv0_node73 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node73 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim211 t) (inv0_claim210 t)

theorem inv0_claim215 (t : ℤ → Bool) :
    (inv0_node5 t) = ((inv0_node4 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node4 t) (inv0_node4 t) (inv0_node1 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node4 t)) (by rfl) (by rfl)
    (inv0_claim0 t) (inv0_claim8 t)

def inv0_node224 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node1 t else inv0_node9 t

theorem inv0_shift75 (t : ℤ → Bool) :
    (inv0_node224 t) = (inv0_node81 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node81 (shiftInput true false t)) (inv0_node224 t) (inv0_node2 (shiftInput true false t)) (inv0_node1 (shiftInput true false t)) (inv0_node9 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift68 t) (inv0_shift0 t)

theorem inv0_shift76 (t : ℤ → Bool) :
    (inv0_node224 t) = (inv0_node158 (shiftInput true false t)) := by
  exact inv0_shift75 t

theorem inv0_claim216 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node4 t) (inv0_node224 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node9 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim209 t) (inv0_claim15 t)

theorem inv0_claim217 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node224 t)) := by
  rfl

theorem inv0_claim218 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node5 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node5 t) (inv0_node224 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim216 t) (inv0_claim217 t)

def inv0_node225 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node4 t else inv0_node0 t

theorem inv0_claim219 (t : ℤ → Bool) :
    (inv0_node225 t) = ((inv0_node4 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node4 t) (inv0_node4 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node4 t)
    (bool_select_same (t 0) (inv0_node4 t)) (by rfl) (by rfl)
    (inv0_claim8 t) (inv0_claim0 t)

theorem inv0_shift77 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node3 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node3 (shiftInput true true t)) (inv0_node10 t) (inv0_node2 (shiftInput true true t)) (inv0_node0 (shiftInput true true t)) (inv0_node9 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift72 t) (inv0_shift71 t)

theorem inv0_shift78 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node59 (shiftInput true true t)) := by
  exact inv0_shift77 t

theorem inv0_claim220 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node4 t) (inv0_node10 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim209 t) (inv0_claim55 t)

theorem inv0_claim221 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node225 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t) (inv0_node4 t) (inv0_node10 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node10 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim20 t) (inv0_claim220 t)

theorem inv0_shift79 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node3 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node3 (shiftInput true false t)) (inv0_node10 t) (inv0_node2 (shiftInput true false t)) (inv0_node0 (shiftInput true false t)) (inv0_node9 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift68 t) (inv0_shift8 t)

theorem inv0_shift80 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node4 (shiftInput true false t)) := by
  exact inv0_shift79 t

theorem inv0_claim222 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node5 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node5 t) (inv0_node10 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t) (inv0_node10 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node10 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim220 t) (inv0_claim20 t)

theorem inv0_claim223 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node114 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node114 t)

theorem inv0_shift81 (t : ℤ → Bool) :
    (inv0_node14 t) = (inv0_node16 (shiftInput false true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node16 (shiftInput false true t)) (inv0_node14 t) (inv0_node0 (shiftInput false true t)) (inv0_node1 (shiftInput false true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift11 t)

theorem inv0_shift82 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node17 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node17 (shiftInput false true t)) (inv0_node15 t) (inv0_node16 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node14 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift81 t) (inv0_shift30 t)

theorem inv0_shift83 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node139 (shiftInput false true t)) := by
  exact inv0_shift82 t

theorem inv0_claim224 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node91 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node91 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t) (inv0_node15 t) (inv0_node15 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node15 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim41 t) (inv0_claim40 t)

theorem inv0_claim225 (t : ℤ → Bool) :
    (inv0_node60 t) = ((inv0_node60 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node60 t)

theorem inv0_claim226 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node60 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node60 t)

def inv0_node226 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node60 t

theorem inv0_claim227 (t : ℤ → Bool) :
    (inv0_node226 t) = ((inv0_node60 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node60 t) (inv0_node99 t) (inv0_node226 t) (inv0_node60 t) (inv0_node60 t) (inv0_node1 t) (inv0_node0 t) (inv0_node60 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node60 t)) (by rfl) (by rfl)
    (inv0_claim225 t) (inv0_claim226 t)

theorem inv0_shift84 (t : ℤ → Bool) :
    (inv0_node14 t) = (inv0_node61 (shiftInput true false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node61 (shiftInput true false t)) (inv0_node14 t) (inv0_node0 (shiftInput true false t)) (inv0_node1 (shiftInput true false t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift8 t) (inv0_shift0 t)

def inv0_node227 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node9 t else inv0_node14 t

theorem inv0_shift85 (t : ℤ → Bool) :
    (inv0_node227 t) = (inv0_node64 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node64 (shiftInput true false t)) (inv0_node227 t) (inv0_node61 (shiftInput true false t)) (inv0_node2 (shiftInput true false t)) (inv0_node14 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift84 t) (inv0_shift68 t)

theorem inv0_shift86 (t : ℤ → Bool) :
    (inv0_node227 t) = (inv0_node174 (shiftInput true false t)) := by
  exact inv0_shift85 t

theorem inv0_claim228 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node56 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node56 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim208 t)

theorem inv0_claim229 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node60 t) && ! (inv0_node227 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node60 t) (inv0_node227 t) (inv0_node0 t) (inv0_node56 t) (inv0_node3 t) (inv0_node14 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim228 t) (inv0_claim209 t)

theorem inv0_claim230 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node227 t)) := by
  rfl

theorem inv0_claim231 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node226 t) && ! (inv0_node227 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node226 t) (inv0_node227 t) (inv0_node0 t) (inv0_node60 t) (inv0_node0 t) (inv0_node227 t) (inv0_node227 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node227 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim229 t) (inv0_claim230 t)

def inv0_node228 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node60 t else inv0_node0 t

theorem inv0_claim232 (t : ℤ → Bool) :
    (inv0_node228 t) = ((inv0_node60 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node60 t) (inv0_node19 t) (inv0_node228 t) (inv0_node60 t) (inv0_node60 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node60 t)
    (bool_select_same (t 0) (inv0_node60 t)) (by rfl) (by rfl)
    (inv0_claim226 t) (inv0_claim225 t)

theorem inv0_claim233 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node228 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node228 t)

theorem inv0_shift87 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node60 (shiftInput true false t)) := by
  exact inv0_shift69 t

theorem inv0_shift88 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node169 (shiftInput true true t)) := by
  exact inv0_shift73 t

theorem inv0_claim234 (t : ℤ → Bool) :
    (inv0_node63 t) = ((inv0_node63 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node63 t)

theorem inv0_claim235 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node63 t)

def inv0_node229 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node63 t

theorem inv0_claim236 (t : ℤ → Bool) :
    (inv0_node229 t) = ((inv0_node63 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node63 t) (inv0_node63 t) (inv0_node1 t) (inv0_node0 t) (inv0_node63 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node63 t)) (by rfl) (by rfl)
    (inv0_claim234 t) (inv0_claim235 t)

theorem inv0_claim237 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node61 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node61 t)

theorem inv0_claim238 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node62 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node62 t) (inv0_node9 t) (inv0_node0 t) (inv0_node61 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim237 t) (inv0_claim55 t)

theorem inv0_claim239 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node63 t) (inv0_node10 t) (inv0_node0 t) (inv0_node62 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim238 t) (inv0_claim55 t)

theorem inv0_claim240 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node229 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node229 t) (inv0_node10 t) (inv0_node0 t) (inv0_node63 t) (inv0_node0 t) (inv0_node10 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node10 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim239 t) (inv0_claim20 t)

def inv0_node230 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node63 t else inv0_node0 t

theorem inv0_claim241 (t : ℤ → Bool) :
    (inv0_node230 t) = ((inv0_node63 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node63 t) (inv0_node63 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node63 t)
    (bool_select_same (t 0) (inv0_node63 t)) (by rfl) (by rfl)
    (inv0_claim235 t) (inv0_claim234 t)

theorem inv0_claim242 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node230 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t) (inv0_node63 t) (inv0_node10 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node10 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim20 t) (inv0_claim239 t)

theorem inv0_claim243 (t : ℤ → Bool) :
    (inv0_node65 t) = ((inv0_node65 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node65 t)

theorem inv0_claim244 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node65 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node65 t)

def inv0_node231 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node65 t

theorem inv0_claim245 (t : ℤ → Bool) :
    (inv0_node231 t) = ((inv0_node65 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node65 t) (inv0_node99 t) (inv0_node231 t) (inv0_node65 t) (inv0_node65 t) (inv0_node1 t) (inv0_node0 t) (inv0_node65 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node65 t)) (by rfl) (by rfl)
    (inv0_claim243 t) (inv0_claim244 t)

theorem inv0_claim246 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node64 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node64 t)

theorem inv0_claim247 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node65 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node65 t) (inv0_node224 t) (inv0_node0 t) (inv0_node62 t) (inv0_node64 t) (inv0_node9 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim238 t) (inv0_claim246 t)

theorem inv0_claim248 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node231 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node231 t) (inv0_node224 t) (inv0_node0 t) (inv0_node65 t) (inv0_node0 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim247 t) (inv0_claim217 t)

def inv0_node232 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node65 t else inv0_node0 t

theorem inv0_claim249 (t : ℤ → Bool) :
    (inv0_node232 t) = ((inv0_node65 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node65 t) (inv0_node19 t) (inv0_node232 t) (inv0_node65 t) (inv0_node65 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node65 t)
    (bool_select_same (t 0) (inv0_node65 t)) (by rfl) (by rfl)
    (inv0_claim244 t) (inv0_claim243 t)

theorem inv0_claim250 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node232 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node232 t)

theorem inv0_shift89 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node62 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node62 (shiftInput true false t)) (inv0_node15 t) (inv0_node61 (shiftInput true false t)) (inv0_node0 (shiftInput true false t)) (inv0_node14 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift84 t) (inv0_shift8 t)

theorem inv0_shift90 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node65 (shiftInput true false t)) := by
  exact inv0_shift89 t

theorem inv0_claim251 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node57 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node57 t) (inv0_node15 t) (inv0_node0 t) (inv0_node56 t) (inv0_node0 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim228 t) (inv0_claim55 t)

theorem inv0_claim252 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node218 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node218 t) (inv0_node15 t) (inv0_node0 t) (inv0_node57 t) (inv0_node0 t) (inv0_node15 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node15 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim251 t) (inv0_claim41 t)

theorem inv0_shift91 (t : ℤ → Bool) :
    (inv0_node14 t) = (inv0_node61 (shiftInput true true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node61 (shiftInput true true t)) (inv0_node14 t) (inv0_node0 (shiftInput true true t)) (inv0_node1 (shiftInput true true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift71 t) (inv0_shift1 t)

theorem inv0_shift92 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node62 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node62 (shiftInput true true t)) (inv0_node15 t) (inv0_node61 (shiftInput true true t)) (inv0_node0 (shiftInput true true t)) (inv0_node14 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift91 t) (inv0_shift71 t)

theorem inv0_shift93 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node69 (shiftInput true true t)) := by
  exact inv0_shift92 t

theorem inv0_claim253 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node219 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node219 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t) (inv0_node57 t) (inv0_node15 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node15 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim41 t) (inv0_claim251 t)

theorem inv0_claim254 (t : ℤ → Bool) :
    (inv0_node67 t) = ((inv0_node67 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node67 t)

theorem inv0_claim255 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node67 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node67 t)

def inv0_node233 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node67 t

theorem inv0_claim256 (t : ℤ → Bool) :
    (inv0_node233 t) = ((inv0_node67 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node67 t) (inv0_node67 t) (inv0_node1 t) (inv0_node0 t) (inv0_node67 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node67 t)) (by rfl) (by rfl)
    (inv0_claim254 t) (inv0_claim255 t)

theorem inv0_shift94 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node63 (shiftInput true false t)) := by
  exact inv0_shift89 t

theorem inv0_claim257 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node66 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node66 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node61 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim237 t)

theorem inv0_claim258 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node67 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node67 t) (inv0_node15 t) (inv0_node0 t) (inv0_node66 t) (inv0_node0 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim257 t) (inv0_claim55 t)

theorem inv0_claim259 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node233 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node233 t) (inv0_node15 t) (inv0_node0 t) (inv0_node67 t) (inv0_node0 t) (inv0_node15 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node15 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim258 t) (inv0_claim41 t)

def inv0_node234 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node67 t else inv0_node0 t

theorem inv0_claim260 (t : ℤ → Bool) :
    (inv0_node234 t) = ((inv0_node67 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node67 t) (inv0_node67 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node67 t)
    (bool_select_same (t 0) (inv0_node67 t)) (by rfl) (by rfl)
    (inv0_claim255 t) (inv0_claim254 t)

theorem inv0_shift95 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node166 (shiftInput true true t)) := by
  exact inv0_shift92 t

theorem inv0_claim261 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node234 t) && ! (inv0_node15 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node234 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t) (inv0_node67 t) (inv0_node15 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node15 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim41 t) (inv0_claim258 t)

theorem inv0_claim262 (t : ℤ → Bool) :
    (inv0_node68 t) = ((inv0_node68 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node68 t)

theorem inv0_claim263 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node68 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node68 t)

def inv0_node235 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node68 t

theorem inv0_claim264 (t : ℤ → Bool) :
    (inv0_node235 t) = ((inv0_node68 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node68 t) (inv0_node68 t) (inv0_node1 t) (inv0_node0 t) (inv0_node68 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node68 t)) (by rfl) (by rfl)
    (inv0_claim262 t) (inv0_claim263 t)

theorem inv0_shift96 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node66 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node66 (shiftInput true false t)) (inv0_node45 t) (inv0_node0 (shiftInput true false t)) (inv0_node61 (shiftInput true false t)) (inv0_node0 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift8 t) (inv0_shift84 t)

theorem inv0_shift97 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node173 (shiftInput true false t)) := by
  exact inv0_shift96 t

theorem inv0_claim265 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node68 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node68 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node66 t) (inv0_node0 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim257 t)

theorem inv0_claim266 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node45 t)) := by
  rfl

theorem inv0_claim267 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node235 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node235 t) (inv0_node45 t) (inv0_node0 t) (inv0_node68 t) (inv0_node0 t) (inv0_node45 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node45 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim265 t) (inv0_claim266 t)

def inv0_node236 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node68 t else inv0_node0 t

theorem inv0_claim268 (t : ℤ → Bool) :
    (inv0_node236 t) = ((inv0_node68 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node68 t) (inv0_node68 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node68 t)
    (bool_select_same (t 0) (inv0_node68 t)) (by rfl) (by rfl)
    (inv0_claim263 t) (inv0_claim262 t)

theorem inv0_claim269 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node236 t)

theorem inv0_claim270 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node164 t)) := by
  rfl

theorem inv0_claim271 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node61 t) && ! (inv0_node61 t)) := by
  exact bool_and_not_self (inv0_node61 t)

theorem inv0_claim272 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node66 t) && ! (inv0_node167 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node66 t) (inv0_node167 t) (inv0_node0 t) (inv0_node0 t) (inv0_node61 t) (inv0_node1 t) (inv0_node61 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim15 t) (inv0_claim271 t)

theorem inv0_claim273 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node68 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node68 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node66 t) (inv0_node164 t) (inv0_node167 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim270 t) (inv0_claim272 t)

theorem inv0_claim274 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node236 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node68 t) (inv0_node190 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node190 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim123 t) (inv0_claim273 t)

theorem inv0_claim275 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node191 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node236 t) (inv0_node191 t) (inv0_node0 t) (inv0_node236 t) (inv0_node236 t) (inv0_node1 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node236 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim269 t) (inv0_claim274 t)

theorem inv0_claim276 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node192 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node236 t) (inv0_node192 t) (inv0_node0 t) (inv0_node236 t) (inv0_node236 t) (inv0_node1 t) (inv0_node191 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node236 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim269 t) (inv0_claim275 t)

theorem inv0_shift98 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node67 (shiftInput true false t)) := by
  exact inv0_shift96 t

theorem inv0_claim277 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node58 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node58 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node56 t) (inv0_node0 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim228 t)

theorem inv0_claim278 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node220 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node220 t) (inv0_node45 t) (inv0_node0 t) (inv0_node58 t) (inv0_node0 t) (inv0_node45 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node45 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim277 t) (inv0_claim266 t)

theorem inv0_shift99 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node66 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node66 (shiftInput true true t)) (inv0_node45 t) (inv0_node0 (shiftInput true true t)) (inv0_node61 (shiftInput true true t)) (inv0_node0 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift71 t) (inv0_shift91 t)

theorem inv0_shift100 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node68 (shiftInput true true t)) := by
  exact inv0_shift99 t

theorem inv0_claim279 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node221 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node221 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node58 t) (inv0_node45 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node45 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim266 t) (inv0_claim277 t)

theorem inv0_claim280 (t : ℤ → Bool) :
    (inv0_node69 t) = ((inv0_node69 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node69 t)

theorem inv0_claim281 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node69 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node69 t)

def inv0_node237 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node69 t

theorem inv0_claim282 (t : ℤ → Bool) :
    (inv0_node237 t) = ((inv0_node69 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node69 t) (inv0_node69 t) (inv0_node1 t) (inv0_node0 t) (inv0_node69 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node69 t)) (by rfl) (by rfl)
    (inv0_claim280 t) (inv0_claim281 t)

theorem inv0_claim283 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node69 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node69 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node62 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim238 t)

theorem inv0_claim284 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node237 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node237 t) (inv0_node73 t) (inv0_node0 t) (inv0_node69 t) (inv0_node0 t) (inv0_node73 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node73 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim283 t) (inv0_claim211 t)

def inv0_node238 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node69 t else inv0_node0 t

theorem inv0_claim285 (t : ℤ → Bool) :
    (inv0_node238 t) = ((inv0_node69 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node69 t) (inv0_node69 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node69 t)
    (bool_select_same (t 0) (inv0_node69 t)) (by rfl) (by rfl)
    (inv0_claim281 t) (inv0_claim280 t)

theorem inv0_claim286 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node238 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node238 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node69 t) (inv0_node73 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node73 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim211 t) (inv0_claim283 t)

theorem inv0_shift101 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node60 (shiftInput true true t)) := by
  exact inv0_shift77 t

theorem inv0_claim287 (t : ℤ → Bool) :
    (inv0_node70 t) = ((inv0_node70 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node70 t)

theorem inv0_claim288 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node70 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node70 t)

def inv0_node239 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node70 t

theorem inv0_claim289 (t : ℤ → Bool) :
    (inv0_node239 t) = ((inv0_node70 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node70 t) (inv0_node99 t) (inv0_node239 t) (inv0_node70 t) (inv0_node70 t) (inv0_node1 t) (inv0_node0 t) (inv0_node70 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node70 t)) (by rfl) (by rfl)
    (inv0_claim287 t) (inv0_claim288 t)

theorem inv0_shift102 (t : ℤ → Bool) :
    (inv0_node39 t) = (inv0_node167 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node167 (shiftInput true false t)) (inv0_node39 t) (inv0_node1 (shiftInput true false t)) (inv0_node61 (shiftInput true false t)) (inv0_node1 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift0 t) (inv0_shift84 t)

theorem inv0_shift103 (t : ℤ → Bool) :
    (inv0_node39 t) = (inv0_node168 (shiftInput true false t)) := by
  exact inv0_shift102 t

theorem inv0_claim290 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node70 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node70 t) (inv0_node39 t) (inv0_node0 t) (inv0_node2 t) (inv0_node56 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim208 t) (inv0_claim228 t)

theorem inv0_claim291 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node39 t)) := by
  rfl

theorem inv0_claim292 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node239 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node239 t) (inv0_node39 t) (inv0_node0 t) (inv0_node70 t) (inv0_node0 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim290 t) (inv0_claim291 t)

def inv0_node240 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node70 t else inv0_node0 t

theorem inv0_claim293 (t : ℤ → Bool) :
    (inv0_node240 t) = ((inv0_node70 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node70 t) (inv0_node19 t) (inv0_node240 t) (inv0_node70 t) (inv0_node70 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node70 t)
    (bool_select_same (t 0) (inv0_node70 t)) (by rfl) (by rfl)
    (inv0_claim288 t) (inv0_claim287 t)

theorem inv0_claim294 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node240 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node240 t)

theorem inv0_shift104 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node160 (shiftInput true false t)) := by
  exact inv0_shift69 t

theorem inv0_shift105 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node70 (shiftInput true true t)) := by
  exact inv0_shift73 t

theorem inv0_claim295 (t : ℤ → Bool) :
    (inv0_node71 t) = ((inv0_node71 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node71 t)

theorem inv0_claim296 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node71 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node71 t)

def inv0_node241 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node71 t

theorem inv0_claim297 (t : ℤ → Bool) :
    (inv0_node241 t) = ((inv0_node71 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node71 t) (inv0_node99 t) (inv0_node241 t) (inv0_node71 t) (inv0_node71 t) (inv0_node1 t) (inv0_node0 t) (inv0_node71 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node71 t)) (by rfl) (by rfl)
    (inv0_claim295 t) (inv0_claim296 t)

theorem inv0_claim298 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node71 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node71 t) (inv0_node224 t) (inv0_node0 t) (inv0_node62 t) (inv0_node2 t) (inv0_node9 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim238 t) (inv0_claim208 t)

theorem inv0_claim299 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node241 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node241 t) (inv0_node224 t) (inv0_node0 t) (inv0_node71 t) (inv0_node0 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim298 t) (inv0_claim217 t)

def inv0_node242 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node71 t else inv0_node0 t

theorem inv0_claim300 (t : ℤ → Bool) :
    (inv0_node242 t) = ((inv0_node71 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node71 t) (inv0_node19 t) (inv0_node242 t) (inv0_node71 t) (inv0_node71 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node71 t)
    (bool_select_same (t 0) (inv0_node71 t)) (by rfl) (by rfl)
    (inv0_claim296 t) (inv0_claim295 t)

theorem inv0_shift106 (t : ℤ → Bool) :
    (inv0_node224 t) = (inv0_node81 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node81 (shiftInput true true t)) (inv0_node224 t) (inv0_node2 (shiftInput true true t)) (inv0_node1 (shiftInput true true t)) (inv0_node9 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift72 t) (inv0_shift1 t)

theorem inv0_shift107 (t : ℤ → Bool) :
    (inv0_node224 t) = (inv0_node171 (shiftInput true true t)) := by
  exact inv0_shift106 t

theorem inv0_claim301 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node242 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node242 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t) (inv0_node71 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim217 t) (inv0_claim298 t)

theorem inv0_claim302 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node229 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node229 t)

theorem inv0_claim303 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node230 t)

theorem inv0_shift108 (t : ℤ → Bool) :
    (inv0_node61 t) = (inv0_node14 (shiftInput false true t)) := by
  exact bool_unary_split (t (-3)) (inv0_node14 (shiftInput false true t)) (inv0_node61 t) (inv0_node0 (shiftInput false true t)) (inv0_node1 (shiftInput false true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift11 t)

theorem inv0_shift109 (t : ℤ → Bool) :
    (inv0_node62 t) = (inv0_node15 (shiftInput false true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node15 (shiftInput false true t)) (inv0_node62 t) (inv0_node14 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node61 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift108 t) (inv0_shift30 t)

theorem inv0_shift110 (t : ℤ → Bool) :
    (inv0_node69 t) = (inv0_node91 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node91 (shiftInput false true t)) (inv0_node69 t) (inv0_node0 (shiftInput false true t)) (inv0_node15 (shiftInput false true t)) (inv0_node0 t) (inv0_node62 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift109 t)

theorem inv0_shift111 (t : ℤ → Bool) :
    (inv0_node69 t) = (inv0_node92 (shiftInput false true t)) := by
  exact inv0_shift110 t

theorem inv0_claim304 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node69 t) && ! (inv0_node69 t)) := by
  exact bool_and_not_self (inv0_node69 t)

theorem inv0_claim305 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node69 t)) := by
  rfl

theorem inv0_claim306 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node237 t) && ! (inv0_node69 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node237 t) (inv0_node69 t) (inv0_node0 t) (inv0_node69 t) (inv0_node0 t) (inv0_node69 t) (inv0_node69 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node69 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim304 t) (inv0_claim305 t)

theorem inv0_claim307 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node238 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node238 t)

theorem inv0_claim308 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node61 t)) := by
  rfl

theorem inv0_claim309 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node62 t) && ! (inv0_node167 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node62 t) (inv0_node167 t) (inv0_node0 t) (inv0_node61 t) (inv0_node0 t) (inv0_node1 t) (inv0_node61 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim237 t) (inv0_claim308 t)

theorem inv0_claim310 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node69 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node69 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node62 t) (inv0_node164 t) (inv0_node167 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim270 t) (inv0_claim309 t)

theorem inv0_claim311 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node238 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node238 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node69 t) (inv0_node190 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node190 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim123 t) (inv0_claim310 t)

theorem inv0_claim312 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node238 t) && ! (inv0_node191 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node238 t) (inv0_node191 t) (inv0_node0 t) (inv0_node238 t) (inv0_node238 t) (inv0_node1 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node238 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim307 t) (inv0_claim311 t)

theorem inv0_claim313 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node238 t) && ! (inv0_node192 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node238 t) (inv0_node192 t) (inv0_node0 t) (inv0_node238 t) (inv0_node238 t) (inv0_node1 t) (inv0_node191 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node238 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim307 t) (inv0_claim312 t)

theorem inv0_shift112 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node71 (shiftInput true false t)) := by
  exact inv0_shift89 t

theorem inv0_claim314 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node68 t) && ! (inv0_node68 t)) := by
  exact bool_and_not_self (inv0_node68 t)

theorem inv0_claim315 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node68 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node236 t) (inv0_node68 t) (inv0_node0 t) (inv0_node0 t) (inv0_node68 t) (inv0_node68 t) (inv0_node68 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node68 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim140 t) (inv0_claim314 t)

theorem inv0_claim316 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node201 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node236 t) (inv0_node201 t) (inv0_node0 t) (inv0_node236 t) (inv0_node236 t) (inv0_node1 t) (inv0_node68 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node236 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim269 t) (inv0_claim315 t)

theorem inv0_claim317 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node210 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node236 t) (inv0_node210 t) (inv0_node0 t) (inv0_node236 t) (inv0_node236 t) (inv0_node201 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node236 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim316 t) (inv0_claim269 t)

theorem inv0_claim318 (t : ℤ → Bool) :
    (inv0_node120 t) = ((inv0_node45 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node45 t) (inv0_node99 t) (inv0_node120 t) (inv0_node45 t) (inv0_node45 t) (inv0_node1 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node45 t)) (by rfl) (by rfl)
    (inv0_claim155 t) (inv0_claim148 t)

theorem inv0_claim319 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node45 t) && ! (inv0_node45 t)) := by
  exact bool_and_not_self (inv0_node45 t)

theorem inv0_claim320 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node120 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node120 t) (inv0_node45 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t) (inv0_node45 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node45 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim319 t) (inv0_claim266 t)

theorem inv0_claim321 (t : ℤ → Bool) :
    (inv0_node46 t) = ((inv0_node45 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node45 t) (inv0_node19 t) (inv0_node46 t) (inv0_node45 t) (inv0_node45 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node45 t)
    (bool_select_same (t 0) (inv0_node45 t)) (by rfl) (by rfl)
    (inv0_claim148 t) (inv0_claim155 t)

theorem inv0_claim322 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node46 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node46 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node45 t) (inv0_node45 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node45 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim266 t) (inv0_claim319 t)

theorem inv0_claim323 (t : ℤ → Bool) :
    (inv0_node72 t) = ((inv0_node72 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node72 t)

theorem inv0_claim324 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node72 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node72 t)

def inv0_node243 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node72 t

theorem inv0_claim325 (t : ℤ → Bool) :
    (inv0_node243 t) = ((inv0_node72 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node72 t) (inv0_node99 t) (inv0_node243 t) (inv0_node72 t) (inv0_node72 t) (inv0_node1 t) (inv0_node0 t) (inv0_node72 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node72 t)) (by rfl) (by rfl)
    (inv0_claim323 t) (inv0_claim324 t)

theorem inv0_claim326 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node72 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node72 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim208 t)

theorem inv0_claim327 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node243 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node243 t) (inv0_node16 t) (inv0_node0 t) (inv0_node72 t) (inv0_node0 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim326 t) (inv0_claim49 t)

def inv0_node244 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node72 t else inv0_node0 t

theorem inv0_claim328 (t : ℤ → Bool) :
    (inv0_node244 t) = ((inv0_node72 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node72 t) (inv0_node19 t) (inv0_node244 t) (inv0_node72 t) (inv0_node72 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node72 t)
    (bool_select_same (t 0) (inv0_node72 t)) (by rfl) (by rfl)
    (inv0_claim324 t) (inv0_claim323 t)

theorem inv0_shift113 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node14 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node14 (shiftInput true true t)) (inv0_node16 t) (inv0_node0 (shiftInput true true t)) (inv0_node1 (shiftInput true true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift71 t) (inv0_shift1 t)

theorem inv0_shift114 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node45 (shiftInput true true t)) := by
  exact inv0_shift113 t

theorem inv0_claim329 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node244 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node244 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node72 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim326 t)

theorem inv0_shift115 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node86 (shiftInput false false t)) := by
  exact inv0_shift18 t

def inv0_node245 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node1 t else inv0_node16 t

theorem inv0_shift116 (t : ℤ → Bool) :
    (inv0_node245 t) = (inv0_node87 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node87 (shiftInput false false t)) (inv0_node245 t) (inv0_node86 (shiftInput false false t)) (inv0_node25 (shiftInput false false t)) (inv0_node16 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift115 t) (inv0_shift24 t)

theorem inv0_claim330 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node17 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node17 t)

theorem inv0_claim331 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node17 t) && ! (inv0_node245 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node17 t) (inv0_node245 t) (inv0_node0 t) (inv0_node17 t) (inv0_node17 t) (inv0_node16 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node17 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim50 t) (inv0_claim330 t)

theorem inv0_claim332 (t : ℤ → Bool) :
    (inv0_node2 t) = ((inv0_node2 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node2 t)

theorem inv0_claim333 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node2 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node2 t)

def inv0_node246 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node2 t

theorem inv0_claim334 (t : ℤ → Bool) :
    (inv0_node246 t) = ((inv0_node2 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node2 t) (inv0_node99 t) (inv0_node246 t) (inv0_node2 t) (inv0_node2 t) (inv0_node1 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node2 t)) (by rfl) (by rfl)
    (inv0_claim332 t) (inv0_claim333 t)

theorem inv0_claim335 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node246 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node246 t)

def inv0_node247 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node2 t else inv0_node0 t

theorem inv0_claim336 (t : ℤ → Bool) :
    (inv0_node247 t) = ((inv0_node2 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node2 t) (inv0_node19 t) (inv0_node247 t) (inv0_node2 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node2 t)
    (bool_select_same (t 0) (inv0_node2 t)) (by rfl) (by rfl)
    (inv0_claim333 t) (inv0_claim332 t)

theorem inv0_claim337 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node247 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node247 t)

theorem inv0_claim338 (t : ℤ → Bool) :
    (inv0_node3 t) = ((inv0_node3 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node3 t)

theorem inv0_claim339 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node3 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node3 t)

def inv0_node248 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node3 t

theorem inv0_claim340 (t : ℤ → Bool) :
    (inv0_node248 t) = ((inv0_node3 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node3 t) (inv0_node99 t) (inv0_node248 t) (inv0_node3 t) (inv0_node3 t) (inv0_node1 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node3 t)) (by rfl) (by rfl)
    (inv0_claim338 t) (inv0_claim339 t)

theorem inv0_claim341 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node9 t)) := by
  rfl

theorem inv0_claim342 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node248 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node248 t) (inv0_node9 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim209 t) (inv0_claim341 t)

def inv0_node249 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node3 t else inv0_node0 t

theorem inv0_claim343 (t : ℤ → Bool) :
    (inv0_node249 t) = ((inv0_node3 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node3 t) (inv0_node19 t) (inv0_node249 t) (inv0_node3 t) (inv0_node3 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node3 t)
    (bool_select_same (t 0) (inv0_node3 t)) (by rfl) (by rfl)
    (inv0_claim339 t) (inv0_claim338 t)

theorem inv0_claim344 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node249 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node249 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node3 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim209 t)

theorem inv0_claim345 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node2 t) && ! (inv0_node2 t)) := by
  exact bool_and_not_self (inv0_node2 t)

theorem inv0_claim346 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node56 t) && ! (inv0_node164 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node56 t) (inv0_node164 t) (inv0_node0 t) (inv0_node0 t) (inv0_node2 t) (inv0_node1 t) (inv0_node2 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim15 t) (inv0_claim345 t)

theorem inv0_claim347 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node167 t)) := by
  rfl

theorem inv0_claim348 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node57 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node57 t) (inv0_node190 t) (inv0_node0 t) (inv0_node56 t) (inv0_node0 t) (inv0_node164 t) (inv0_node167 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim346 t) (inv0_claim347 t)

theorem inv0_claim349 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node219 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node219 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node57 t) (inv0_node190 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node190 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim123 t) (inv0_claim348 t)

theorem inv0_claim350 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node219 t) && ! (inv0_node191 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node219 t) (inv0_node191 t) (inv0_node0 t) (inv0_node219 t) (inv0_node219 t) (inv0_node1 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node219 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim196 t) (inv0_claim349 t)

theorem inv0_claim351 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node219 t) && ! (inv0_node192 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node219 t) (inv0_node192 t) (inv0_node0 t) (inv0_node219 t) (inv0_node219 t) (inv0_node1 t) (inv0_node191 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node219 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim196 t) (inv0_claim350 t)

theorem inv0_shift117 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node170 (shiftInput true true t)) := by
  exact inv0_shift73 t

theorem inv0_shift118 (t : ℤ → Bool) :
    (inv0_node57 t) = (inv0_node103 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node103 (shiftInput false true t)) (inv0_node57 t) (inv0_node73 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node56 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift65 t) (inv0_shift30 t)

theorem inv0_shift119 (t : ℤ → Bool) :
    (inv0_node57 t) = (inv0_node152 (shiftInput false true t)) := by
  exact inv0_shift118 t

theorem inv0_claim352 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node57 t)) := by
  rfl

theorem inv0_claim353 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node57 t) && ! (inv0_node57 t)) := by
  exact bool_and_not_self (inv0_node57 t)

theorem inv0_claim354 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node219 t) && ! (inv0_node57 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node219 t) (inv0_node57 t) (inv0_node0 t) (inv0_node0 t) (inv0_node57 t) (inv0_node57 t) (inv0_node57 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node57 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim352 t) (inv0_claim353 t)

theorem inv0_claim355 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node220 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node220 t)

theorem inv0_shift120 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node163 (shiftInput true false t)) := by
  exact inv0_shift68 t

theorem inv0_claim356 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node63 t) (inv0_node9 t) (inv0_node0 t) (inv0_node62 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node9 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim238 t) (inv0_claim341 t)

theorem inv0_claim357 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node229 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node229 t) (inv0_node9 t) (inv0_node0 t) (inv0_node63 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim356 t) (inv0_claim341 t)

theorem inv0_claim358 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node62 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node62 t)

theorem inv0_claim359 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node69 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node69 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t) (inv0_node62 t) (inv0_node9 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim358 t)

theorem inv0_claim360 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node237 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node237 t) (inv0_node224 t) (inv0_node0 t) (inv0_node69 t) (inv0_node0 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim359 t) (inv0_claim217 t)

theorem inv0_claim361 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node233 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node233 t)

theorem inv0_shift121 (t : ℤ → Bool) :
    (inv0_node66 t) = (inv0_node45 (shiftInput false true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node45 (shiftInput false true t)) (inv0_node66 t) (inv0_node0 (shiftInput false true t)) (inv0_node14 (shiftInput false true t)) (inv0_node0 t) (inv0_node61 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift108 t)

theorem inv0_shift122 (t : ℤ → Bool) :
    (inv0_node67 t) = (inv0_node120 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node120 (shiftInput false true t)) (inv0_node67 t) (inv0_node45 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node66 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift121 t) (inv0_shift30 t)

theorem inv0_shift123 (t : ℤ → Bool) :
    (inv0_node67 t) = (inv0_node146 (shiftInput false true t)) := by
  exact inv0_shift122 t

theorem inv0_claim362 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node67 t)) := by
  rfl

theorem inv0_claim363 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node67 t) && ! (inv0_node67 t)) := by
  exact bool_and_not_self (inv0_node67 t)

theorem inv0_claim364 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node234 t) && ! (inv0_node67 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node234 t) (inv0_node67 t) (inv0_node0 t) (inv0_node0 t) (inv0_node67 t) (inv0_node67 t) (inv0_node67 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node67 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim362 t) (inv0_claim363 t)

theorem inv0_claim365 (t : ℤ → Bool) :
    (inv0_node66 t) = ((inv0_node66 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node66 t)

theorem inv0_claim366 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node66 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node66 t)

def inv0_node250 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node66 t

theorem inv0_claim367 (t : ℤ → Bool) :
    (inv0_node250 t) = ((inv0_node66 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node66 t) (inv0_node99 t) (inv0_node250 t) (inv0_node66 t) (inv0_node66 t) (inv0_node1 t) (inv0_node0 t) (inv0_node66 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node66 t)) (by rfl) (by rfl)
    (inv0_claim365 t) (inv0_claim366 t)

theorem inv0_claim368 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node250 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node250 t)

def inv0_node251 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node66 t else inv0_node0 t

theorem inv0_claim369 (t : ℤ → Bool) :
    (inv0_node251 t) = ((inv0_node66 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node66 t) (inv0_node19 t) (inv0_node251 t) (inv0_node66 t) (inv0_node66 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node66 t)
    (bool_select_same (t 0) (inv0_node66 t)) (by rfl) (by rfl)
    (inv0_claim366 t) (inv0_claim365 t)

theorem inv0_shift124 (t : ℤ → Bool) :
    (inv0_node39 t) = (inv0_node79 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node79 (shiftInput false false t)) (inv0_node39 t) (inv0_node1 (shiftInput false false t)) (inv0_node16 (shiftInput false false t)) (inv0_node1 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift13 t)

theorem inv0_shift125 (t : ℤ → Bool) :
    (inv0_node39 t) = (inv0_node80 (shiftInput false false t)) := by
  exact inv0_shift124 t

theorem inv0_claim370 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node66 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node66 t)

theorem inv0_claim371 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node66 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node66 t) (inv0_node39 t) (inv0_node0 t) (inv0_node66 t) (inv0_node66 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t (-1)) (inv0_node66 t)) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim370 t) (inv0_claim257 t)

theorem inv0_claim372 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node251 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node251 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t) (inv0_node66 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim291 t) (inv0_claim371 t)

theorem inv0_claim373 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node45 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node236 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node68 t) (inv0_node45 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node45 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim266 t) (inv0_claim265 t)

theorem inv0_claim374 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node5 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node5 t)

theorem inv0_shift126 (t : ℤ → Bool) :
    (inv0_node3 t) = (inv0_node10 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node10 (shiftInput false false t)) (inv0_node3 t) (inv0_node9 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node2 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift42 t) (inv0_shift3 t)

theorem inv0_shift127 (t : ℤ → Bool) :
    (inv0_node4 t) = (inv0_node130 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node130 (shiftInput false false t)) (inv0_node4 t) (inv0_node10 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node3 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift126 t) (inv0_shift3 t)

theorem inv0_claim375 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node4 t)) := by
  rfl

theorem inv0_claim376 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && ! (inv0_node4 t)) := by
  exact bool_and_not_self (inv0_node4 t)

theorem inv0_claim377 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node4 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node225 t) (inv0_node4 t) (inv0_node0 t) (inv0_node0 t) (inv0_node4 t) (inv0_node4 t) (inv0_node4 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node4 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim375 t) (inv0_claim376 t)

theorem inv0_claim378 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node225 t)

theorem inv0_claim379 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node2 t)) := by
  rfl

theorem inv0_claim380 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node3 t) && ! (inv0_node164 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node3 t) (inv0_node164 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node2 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim208 t) (inv0_claim379 t)

theorem inv0_claim381 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node4 t) (inv0_node190 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node164 t) (inv0_node167 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim380 t) (inv0_claim347 t)

theorem inv0_claim382 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node225 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node4 t) (inv0_node190 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node190 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim123 t) (inv0_claim381 t)

theorem inv0_claim383 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node191 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node225 t) (inv0_node191 t) (inv0_node0 t) (inv0_node225 t) (inv0_node225 t) (inv0_node1 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node225 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim378 t) (inv0_claim382 t)

theorem inv0_claim384 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node192 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node225 t) (inv0_node192 t) (inv0_node0 t) (inv0_node225 t) (inv0_node225 t) (inv0_node1 t) (inv0_node191 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node225 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim378 t) (inv0_claim383 t)

theorem inv0_shift128 (t : ℤ → Bool) :
    (inv0_node56 t) = (inv0_node73 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node73 (shiftInput false false t)) (inv0_node56 t) (inv0_node0 (shiftInput false false t)) (inv0_node9 (shiftInput false false t)) (inv0_node0 t) (inv0_node2 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift42 t)

theorem inv0_shift129 (t : ℤ → Bool) :
    (inv0_node57 t) = (inv0_node103 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node103 (shiftInput false false t)) (inv0_node57 t) (inv0_node73 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node56 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift128 t) (inv0_shift3 t)

theorem inv0_shift130 (t : ℤ → Bool) :
    (inv0_node57 t) = (inv0_node104 (shiftInput false false t)) := by
  exact inv0_shift129 t

theorem inv0_shift131 (t : ℤ → Bool) :
    (inv0_node58 t) = (inv0_node108 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node108 (shiftInput false false t)) (inv0_node58 t) (inv0_node0 (shiftInput false false t)) (inv0_node73 (shiftInput false false t)) (inv0_node0 t) (inv0_node56 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift128 t)

theorem inv0_shift132 (t : ℤ → Bool) :
    (inv0_node58 t) = (inv0_node109 (shiftInput false false t)) := by
  exact inv0_shift131 t

theorem inv0_shift133 (t : ℤ → Bool) :
    (inv0_node62 t) = (inv0_node15 (shiftInput false false t)) := by
  exact bool_unary_split (t (-2)) (inv0_node15 (shiftInput false false t)) (inv0_node62 t) (inv0_node14 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node61 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift44 t) (inv0_shift3 t)

theorem inv0_shift134 (t : ℤ → Bool) :
    (inv0_node63 t) = (inv0_node114 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node114 (shiftInput false false t)) (inv0_node63 t) (inv0_node15 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node62 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift133 t) (inv0_shift3 t)

theorem inv0_shift135 (t : ℤ → Bool) :
    (inv0_node63 t) = (inv0_node145 (shiftInput false false t)) := by
  exact inv0_shift134 t

theorem inv0_claim385 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && ! (inv0_node63 t)) := by
  exact bool_and_not_self (inv0_node63 t)

theorem inv0_claim386 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node63 t)) := by
  rfl

theorem inv0_claim387 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node229 t) && ! (inv0_node63 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node229 t) (inv0_node63 t) (inv0_node0 t) (inv0_node63 t) (inv0_node0 t) (inv0_node63 t) (inv0_node63 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node63 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim385 t) (inv0_claim386 t)

theorem inv0_claim388 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node234 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node234 t)

theorem inv0_shift136 (t : ℤ → Bool) :
    (inv0_node67 t) = (inv0_node120 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node120 (shiftInput false false t)) (inv0_node67 t) (inv0_node45 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node66 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift51 t) (inv0_shift3 t)

theorem inv0_shift137 (t : ℤ → Bool) :
    (inv0_node67 t) = (inv0_node121 (shiftInput false false t)) := by
  exact inv0_shift136 t

theorem inv0_claim389 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node235 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node235 t)

theorem inv0_claim390 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node69 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node69 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node62 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node9 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim238 t)

theorem inv0_claim391 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node237 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node237 t) (inv0_node9 t) (inv0_node0 t) (inv0_node69 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim390 t) (inv0_claim341 t)

theorem inv0_shift138 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node170 (shiftInput true false t)) := by
  exact inv0_shift9 t

theorem inv0_claim392 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node67 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node67 t) (inv0_node11 t) (inv0_node0 t) (inv0_node66 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim370 t) (inv0_claim55 t)

theorem inv0_claim393 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node233 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node233 t) (inv0_node11 t) (inv0_node0 t) (inv0_node67 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim392 t) (inv0_claim28 t)

theorem inv0_shift139 (t : ℤ → Bool) :
    (inv0_node4 t) = (inv0_node131 (shiftInput false false t)) := by
  exact inv0_shift127 t

theorem inv0_claim394 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node5 t) && ! (inv0_node4 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node5 t) (inv0_node4 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t) (inv0_node4 t) (inv0_node4 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node4 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim376 t) (inv0_claim375 t)

theorem inv0_claim395 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node202 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node236 t) (inv0_node202 t) (inv0_node0 t) (inv0_node236 t) (inv0_node236 t) (inv0_node1 t) (inv0_node201 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node236 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim269 t) (inv0_claim316 t)

theorem inv0_shift140 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node72 (shiftInput true true t)) := by
  exact inv0_shift72 t

theorem inv0_claim396 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node9 t) && ! (inv0_node9 t)) := by
  exact bool_and_not_self (inv0_node9 t)

theorem inv0_claim397 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node10 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node10 t) (inv0_node9 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node9 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim396 t) (inv0_claim341 t)

theorem inv0_claim398 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node175 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node175 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node10 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim397 t)

theorem inv0_claim399 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node59 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node59 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node3 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node9 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim209 t)

theorem inv0_claim400 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node222 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node222 t) (inv0_node9 t) (inv0_node0 t) (inv0_node59 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim399 t) (inv0_claim341 t)

theorem inv0_claim401 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node223 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node223 t)

theorem inv0_claim402 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node3 t) && ! (inv0_node167 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node3 t) (inv0_node167 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node61 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim208 t) (inv0_claim308 t)

theorem inv0_claim403 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node59 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node59 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node3 t) (inv0_node164 t) (inv0_node167 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim270 t) (inv0_claim402 t)

theorem inv0_claim404 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node223 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node223 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node59 t) (inv0_node190 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node190 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim123 t) (inv0_claim403 t)

theorem inv0_claim405 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node223 t) && ! (inv0_node191 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node223 t) (inv0_node191 t) (inv0_node0 t) (inv0_node223 t) (inv0_node223 t) (inv0_node1 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node223 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim401 t) (inv0_claim404 t)

theorem inv0_claim406 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node223 t) && ! (inv0_node192 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node223 t) (inv0_node192 t) (inv0_node0 t) (inv0_node223 t) (inv0_node223 t) (inv0_node1 t) (inv0_node191 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node223 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim401 t) (inv0_claim405 t)

theorem inv0_claim407 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node3 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node3 t)

theorem inv0_claim408 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node4 t) (inv0_node11 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim407 t) (inv0_claim55 t)

theorem inv0_claim409 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node5 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node5 t) (inv0_node11 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim408 t) (inv0_claim28 t)

theorem inv0_shift141 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node171 (shiftInput true false t)) := by
  exact inv0_shift96 t

theorem inv0_shift142 (t : ℤ → Bool) :
    (inv0_node3 t) = (inv0_node10 (shiftInput false true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node10 (shiftInput false true t)) (inv0_node3 t) (inv0_node9 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node2 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift64 t) (inv0_shift30 t)

theorem inv0_shift143 (t : ℤ → Bool) :
    (inv0_node4 t) = (inv0_node130 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node130 (shiftInput false true t)) (inv0_node4 t) (inv0_node10 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node3 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift142 t) (inv0_shift30 t)

theorem inv0_claim410 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node62 t) && ! (inv0_node164 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-2)) (inv0_node62 t) (inv0_node164 t) (inv0_node0 t) (inv0_node61 t) (inv0_node0 t) (inv0_node1 t) (inv0_node2 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-2)) (inv0_node0 t))
    (inv0_claim237 t) (inv0_claim379 t)

theorem inv0_claim411 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node63 t) (inv0_node190 t) (inv0_node0 t) (inv0_node62 t) (inv0_node0 t) (inv0_node164 t) (inv0_node167 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim410 t) (inv0_claim347 t)

theorem inv0_claim412 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node190 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node230 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t) (inv0_node63 t) (inv0_node190 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node190 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim123 t) (inv0_claim411 t)

theorem inv0_claim413 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node191 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node230 t) (inv0_node191 t) (inv0_node0 t) (inv0_node230 t) (inv0_node230 t) (inv0_node1 t) (inv0_node190 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node230 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim303 t) (inv0_claim412 t)

theorem inv0_claim414 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node192 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node230 t) (inv0_node192 t) (inv0_node0 t) (inv0_node230 t) (inv0_node230 t) (inv0_node1 t) (inv0_node191 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node230 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim303 t) (inv0_claim413 t)

theorem inv0_claim415 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node218 t) && ! (inv0_node57 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node218 t) (inv0_node57 t) (inv0_node0 t) (inv0_node57 t) (inv0_node0 t) (inv0_node57 t) (inv0_node57 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node57 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim353 t) (inv0_claim352 t)

theorem inv0_claim416 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node58 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node58 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t) (inv0_node56 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim15 t) (inv0_claim228 t)

theorem inv0_claim417 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node220 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node220 t) (inv0_node39 t) (inv0_node0 t) (inv0_node58 t) (inv0_node0 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim416 t) (inv0_claim291 t)

theorem inv0_shift144 (t : ℤ → Bool) :
    (inv0_node63 t) = (inv0_node114 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node114 (shiftInput false true t)) (inv0_node63 t) (inv0_node15 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node62 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift109 t) (inv0_shift30 t)

theorem inv0_shift145 (t : ℤ → Bool) :
    (inv0_node63 t) = (inv0_node115 (shiftInput false true t)) := by
  exact inv0_shift144 t

theorem inv0_claim418 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node63 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node230 t) (inv0_node63 t) (inv0_node0 t) (inv0_node0 t) (inv0_node63 t) (inv0_node63 t) (inv0_node63 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node63 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim386 t) (inv0_claim385 t)

theorem inv0_claim419 (t : ℤ → Bool) :
    (inv0_node73 t) = ((inv0_node73 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node73 t)

theorem inv0_claim420 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node73 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node73 t)

theorem inv0_claim421 (t : ℤ → Bool) :
    (inv0_node103 t) = ((inv0_node73 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node73 t) (inv0_node99 t) (inv0_node103 t) (inv0_node73 t) (inv0_node73 t) (inv0_node1 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node73 t)) (by rfl) (by rfl)
    (inv0_claim419 t) (inv0_claim420 t)

theorem inv0_claim422 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node73 t) && ! (inv0_node73 t)) := by
  exact bool_and_not_self (inv0_node73 t)

theorem inv0_claim423 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node103 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node103 t) (inv0_node73 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t) (inv0_node73 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node73 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim422 t) (inv0_claim211 t)

theorem inv0_claim424 (t : ℤ → Bool) :
    (inv0_node108 t) = ((inv0_node73 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node73 t) (inv0_node19 t) (inv0_node108 t) (inv0_node73 t) (inv0_node73 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node73 t)
    (bool_select_same (t 0) (inv0_node73 t)) (by rfl) (by rfl)
    (inv0_claim420 t) (inv0_claim419 t)

theorem inv0_claim425 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node73 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node73 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node9 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim396 t)

theorem inv0_claim426 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node108 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node108 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node73 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim425 t)

theorem inv0_shift146 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node9 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node9 (shiftInput true true t)) (inv0_node11 t) (inv0_node1 (shiftInput true true t)) (inv0_node0 (shiftInput true true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift1 t) (inv0_shift71 t)

theorem inv0_shift147 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node73 (shiftInput true true t)) := by
  exact inv0_shift146 t

theorem inv0_claim427 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node72 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node72 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t) (inv0_node2 t) (inv0_node9 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim208 t)

theorem inv0_claim428 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node243 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node243 t) (inv0_node224 t) (inv0_node0 t) (inv0_node72 t) (inv0_node0 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim427 t) (inv0_claim217 t)

theorem inv0_claim429 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node244 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node244 t)

theorem inv0_shift148 (t : ℤ → Bool) :
    (inv0_node227 t) = (inv0_node169 (shiftInput true false t)) := by
  exact inv0_shift85 t

theorem inv0_shift149 (t : ℤ → Bool) :
    (inv0_node227 t) = (inv0_node64 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node64 (shiftInput true true t)) (inv0_node227 t) (inv0_node61 (shiftInput true true t)) (inv0_node2 (shiftInput true true t)) (inv0_node14 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift91 t) (inv0_shift72 t)

theorem inv0_shift150 (t : ℤ → Bool) :
    (inv0_node227 t) = (inv0_node65 (shiftInput true true t)) := by
  exact inv0_shift149 t

theorem inv0_claim430 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node228 t) && ! (inv0_node227 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node228 t) (inv0_node227 t) (inv0_node0 t) (inv0_node0 t) (inv0_node60 t) (inv0_node227 t) (inv0_node227 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node227 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim230 t) (inv0_claim229 t)

theorem inv0_claim431 (t : ℤ → Bool) :
    (inv0_node74 t) = ((inv0_node74 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node74 t)

theorem inv0_claim432 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node74 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node74 t)

def inv0_node252 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node74 t

theorem inv0_claim433 (t : ℤ → Bool) :
    (inv0_node252 t) = ((inv0_node74 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node74 t) (inv0_node99 t) (inv0_node252 t) (inv0_node74 t) (inv0_node74 t) (inv0_node1 t) (inv0_node0 t) (inv0_node74 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node74 t)) (by rfl) (by rfl)
    (inv0_claim431 t) (inv0_claim432 t)

theorem inv0_shift151 (t : ℤ → Bool) :
    (inv0_node38 t) = (inv0_node164 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node164 (shiftInput true false t)) (inv0_node38 t) (inv0_node1 (shiftInput true false t)) (inv0_node2 (shiftInput true false t)) (inv0_node1 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift0 t) (inv0_shift68 t)

theorem inv0_shift152 (t : ℤ → Bool) :
    (inv0_node38 t) = (inv0_node166 (shiftInput true false t)) := by
  exact inv0_shift151 t

theorem inv0_claim434 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node74 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node74 t) (inv0_node38 t) (inv0_node0 t) (inv0_node61 t) (inv0_node62 t) (inv0_node1 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim237 t) (inv0_claim238 t)

theorem inv0_claim435 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node38 t)) := by
  rfl

theorem inv0_claim436 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node252 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node252 t) (inv0_node38 t) (inv0_node0 t) (inv0_node74 t) (inv0_node0 t) (inv0_node38 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node38 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim434 t) (inv0_claim435 t)

def inv0_node253 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node74 t else inv0_node0 t

theorem inv0_claim437 (t : ℤ → Bool) :
    (inv0_node253 t) = ((inv0_node74 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node74 t) (inv0_node19 t) (inv0_node253 t) (inv0_node74 t) (inv0_node74 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node74 t)
    (bool_select_same (t 0) (inv0_node74 t)) (by rfl) (by rfl)
    (inv0_claim432 t) (inv0_claim431 t)

theorem inv0_shift153 (t : ℤ → Bool) :
    (inv0_node38 t) = (inv0_node164 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node164 (shiftInput true true t)) (inv0_node38 t) (inv0_node1 (shiftInput true true t)) (inv0_node2 (shiftInput true true t)) (inv0_node1 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift1 t) (inv0_shift72 t)

theorem inv0_shift154 (t : ℤ → Bool) :
    (inv0_node38 t) = (inv0_node173 (shiftInput true true t)) := by
  exact inv0_shift153 t

theorem inv0_claim438 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node253 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node253 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t) (inv0_node74 t) (inv0_node38 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node38 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim435 t) (inv0_claim434 t)

theorem inv0_claim439 (t : ℤ → Bool) :
    (inv0_node56 t) = ((inv0_node56 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node56 t)

theorem inv0_claim440 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node56 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node56 t)

def inv0_node254 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node56 t

theorem inv0_claim441 (t : ℤ → Bool) :
    (inv0_node254 t) = ((inv0_node56 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node56 t) (inv0_node99 t) (inv0_node254 t) (inv0_node56 t) (inv0_node56 t) (inv0_node1 t) (inv0_node0 t) (inv0_node56 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node56 t)) (by rfl) (by rfl)
    (inv0_claim439 t) (inv0_claim440 t)

theorem inv0_shift155 (t : ℤ → Bool) :
    (inv0_node14 t) = (inv0_node74 (shiftInput true false t)) := by
  exact inv0_shift84 t

theorem inv0_claim442 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node14 t)) := by
  rfl

theorem inv0_claim443 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node254 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node254 t) (inv0_node14 t) (inv0_node0 t) (inv0_node56 t) (inv0_node0 t) (inv0_node14 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node14 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim228 t) (inv0_claim442 t)

def inv0_node255 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node56 t else inv0_node0 t

theorem inv0_claim444 (t : ℤ → Bool) :
    (inv0_node255 t) = ((inv0_node56 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node56 t) (inv0_node19 t) (inv0_node255 t) (inv0_node56 t) (inv0_node56 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node56 t)
    (bool_select_same (t 0) (inv0_node56 t)) (by rfl) (by rfl)
    (inv0_claim440 t) (inv0_claim439 t)

theorem inv0_shift156 (t : ℤ → Bool) :
    (inv0_node14 t) = (inv0_node162 (shiftInput true true t)) := by
  exact inv0_shift91 t

theorem inv0_claim445 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node255 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node255 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node56 t) (inv0_node14 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node14 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim442 t) (inv0_claim228 t)

theorem inv0_claim446 (t : ℤ → Bool) :
    (inv0_node76 t) = ((inv0_node76 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node76 t)

theorem inv0_claim447 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node76 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node76 t)

def inv0_node256 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node76 t

theorem inv0_claim448 (t : ℤ → Bool) :
    (inv0_node256 t) = ((inv0_node76 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node76 t) (inv0_node99 t) (inv0_node256 t) (inv0_node76 t) (inv0_node76 t) (inv0_node1 t) (inv0_node0 t) (inv0_node76 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node76 t)) (by rfl) (by rfl)
    (inv0_claim446 t) (inv0_claim447 t)

theorem inv0_claim449 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node75 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node75 t)

theorem inv0_claim450 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node76 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node76 t) (inv0_node39 t) (inv0_node0 t) (inv0_node75 t) (inv0_node0 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim449 t) (inv0_claim442 t)

theorem inv0_claim451 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node256 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node256 t) (inv0_node39 t) (inv0_node0 t) (inv0_node76 t) (inv0_node0 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim450 t) (inv0_claim291 t)

def inv0_node257 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node76 t else inv0_node0 t

theorem inv0_claim452 (t : ℤ → Bool) :
    (inv0_node257 t) = ((inv0_node76 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node76 t) (inv0_node19 t) (inv0_node257 t) (inv0_node76 t) (inv0_node76 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node76 t)
    (bool_select_same (t 0) (inv0_node76 t)) (by rfl) (by rfl)
    (inv0_claim447 t) (inv0_claim446 t)

theorem inv0_claim453 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node257 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node257 t)

theorem inv0_claim454 (t : ℤ → Bool) :
    (inv0_node77 t) = ((inv0_node77 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node77 t)

theorem inv0_claim455 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node77 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node77 t)

def inv0_node258 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node77 t

theorem inv0_claim456 (t : ℤ → Bool) :
    (inv0_node258 t) = ((inv0_node77 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node77 t) (inv0_node99 t) (inv0_node258 t) (inv0_node77 t) (inv0_node77 t) (inv0_node1 t) (inv0_node0 t) (inv0_node77 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node77 t)) (by rfl) (by rfl)
    (inv0_claim454 t) (inv0_claim455 t)

def inv0_node259 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node14 t else inv0_node9 t

theorem inv0_shift157 (t : ℤ → Bool) :
    (inv0_node259 t) = (inv0_node75 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node75 (shiftInput true false t)) (inv0_node259 t) (inv0_node2 (shiftInput true false t)) (inv0_node61 (shiftInput true false t)) (inv0_node9 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift68 t) (inv0_shift84 t)

theorem inv0_shift158 (t : ℤ → Bool) :
    (inv0_node259 t) = (inv0_node76 (shiftInput true false t)) := by
  exact inv0_shift157 t

theorem inv0_claim457 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node77 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node77 t) (inv0_node259 t) (inv0_node0 t) (inv0_node62 t) (inv0_node56 t) (inv0_node9 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim238 t) (inv0_claim228 t)

theorem inv0_claim458 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node259 t)) := by
  rfl

theorem inv0_claim459 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node258 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node258 t) (inv0_node259 t) (inv0_node0 t) (inv0_node77 t) (inv0_node0 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim457 t) (inv0_claim458 t)

def inv0_node260 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node77 t else inv0_node0 t

theorem inv0_claim460 (t : ℤ → Bool) :
    (inv0_node260 t) = ((inv0_node77 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node77 t) (inv0_node19 t) (inv0_node260 t) (inv0_node77 t) (inv0_node77 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node77 t)
    (bool_select_same (t 0) (inv0_node77 t)) (by rfl) (by rfl)
    (inv0_claim455 t) (inv0_claim454 t)

theorem inv0_shift159 (t : ℤ → Bool) :
    (inv0_node259 t) = (inv0_node75 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node75 (shiftInput true true t)) (inv0_node259 t) (inv0_node2 (shiftInput true true t)) (inv0_node61 (shiftInput true true t)) (inv0_node9 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift72 t) (inv0_shift91 t)

theorem inv0_shift160 (t : ℤ → Bool) :
    (inv0_node259 t) = (inv0_node160 (shiftInput true true t)) := by
  exact inv0_shift159 t

theorem inv0_claim461 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node260 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node260 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t) (inv0_node77 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim458 t) (inv0_claim457 t)

theorem inv0_shift161 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node77 (shiftInput true true t)) := by
  exact inv0_shift73 t

theorem inv0_claim462 (t : ℤ → Bool) :
    (inv0_node78 t) = ((inv0_node78 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node78 t)

theorem inv0_claim463 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node78 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node78 t)

def inv0_node261 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node78 t

theorem inv0_claim464 (t : ℤ → Bool) :
    (inv0_node261 t) = ((inv0_node78 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node78 t) (inv0_node99 t) (inv0_node261 t) (inv0_node78 t) (inv0_node78 t) (inv0_node1 t) (inv0_node0 t) (inv0_node78 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node78 t)) (by rfl) (by rfl)
    (inv0_claim462 t) (inv0_claim463 t)

theorem inv0_shift162 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node70 (shiftInput true false t)) := by
  exact inv0_shift68 t

theorem inv0_claim465 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node78 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node78 t) (inv0_node9 t) (inv0_node0 t) (inv0_node9 t) (inv0_node62 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node9 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim396 t) (inv0_claim238 t)

theorem inv0_claim466 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node261 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node261 t) (inv0_node9 t) (inv0_node0 t) (inv0_node78 t) (inv0_node0 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim465 t) (inv0_claim341 t)

def inv0_node262 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node78 t else inv0_node0 t

theorem inv0_claim467 (t : ℤ → Bool) :
    (inv0_node262 t) = ((inv0_node78 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node78 t) (inv0_node19 t) (inv0_node262 t) (inv0_node78 t) (inv0_node78 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node78 t)
    (bool_select_same (t 0) (inv0_node78 t)) (by rfl) (by rfl)
    (inv0_claim463 t) (inv0_claim462 t)

theorem inv0_shift163 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node71 (shiftInput true true t)) := by
  exact inv0_shift72 t

theorem inv0_claim468 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node262 t) && ! (inv0_node9 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node262 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t) (inv0_node78 t) (inv0_node9 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node9 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim465 t)

theorem inv0_shift164 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node78 (shiftInput true false t)) := by
  exact inv0_shift9 t

theorem inv0_claim469 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node56 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node56 t)

theorem inv0_claim470 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node57 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node57 t) (inv0_node11 t) (inv0_node0 t) (inv0_node56 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim469 t) (inv0_claim55 t)

theorem inv0_claim471 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node218 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node218 t) (inv0_node11 t) (inv0_node0 t) (inv0_node57 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim470 t) (inv0_claim28 t)

theorem inv0_shift165 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node74 (shiftInput true true t)) := by
  exact inv0_shift92 t

theorem inv0_claim472 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node68 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node68 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t) (inv0_node66 t) (inv0_node9 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim341 t) (inv0_claim257 t)

theorem inv0_claim473 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node236 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t) (inv0_node68 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim458 t) (inv0_claim472 t)

theorem inv0_claim474 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node63 t) (inv0_node11 t) (inv0_node0 t) (inv0_node62 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim358 t) (inv0_claim55 t)

theorem inv0_claim475 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node229 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node229 t) (inv0_node11 t) (inv0_node0 t) (inv0_node63 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim474 t) (inv0_claim28 t)

theorem inv0_shift166 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node77 (shiftInput true false t)) := by
  exact inv0_shift89 t

theorem inv0_shift167 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node78 (shiftInput true true t)) := by
  exact inv0_shift92 t

theorem inv0_claim476 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node123 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node123 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node16 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim48 t)

theorem inv0_claim477 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node123 t) && ! (inv0_node217 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node123 t) (inv0_node217 t) (inv0_node0 t) (inv0_node123 t) (inv0_node123 t) (inv0_node1 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node123 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim52 t) (inv0_claim476 t)

theorem inv0_claim478 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node155 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node155 t)

def inv0_node263 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node62 t else inv0_node1 t

theorem inv0_shift168 (t : ℤ → Bool) :
    (inv0_node263 t) = (inv0_node30 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node30 (shiftInput false true t)) (inv0_node263 t) (inv0_node1 (shiftInput false true t)) (inv0_node15 (shiftInput false true t)) (inv0_node1 t) (inv0_node62 t)
    (by rfl) (by rfl) (inv0_shift11 t) (inv0_shift109 t)

theorem inv0_shift169 (t : ℤ → Bool) :
    (inv0_node263 t) = (inv0_node31 (shiftInput false true t)) := by
  exact inv0_shift168 t

def inv0_node264 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node263 t else inv0_node1 t

theorem inv0_shift170 (t : ℤ → Bool) :
    (inv0_node264 t) = (inv0_node32 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node32 (shiftInput false true t)) (inv0_node264 t) (inv0_node1 (shiftInput false true t)) (inv0_node31 (shiftInput false true t)) (inv0_node1 t) (inv0_node263 t)
    (by rfl) (by rfl) (inv0_shift11 t) (inv0_shift169 t)

def inv0_node265 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node263 t else inv0_node264 t

theorem inv0_shift171 (t : ℤ → Bool) :
    (inv0_node265 t) = (inv0_node33 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node33 (shiftInput false true t)) (inv0_node265 t) (inv0_node32 (shiftInput false true t)) (inv0_node31 (shiftInput false true t)) (inv0_node264 t) (inv0_node263 t)
    (by rfl) (by rfl) (inv0_shift170 t) (inv0_shift169 t)

theorem inv0_claim479 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node265 t)) := by
  rfl

theorem inv0_claim480 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node263 t)) := by
  rfl

theorem inv0_claim481 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node264 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node86 t) (inv0_node264 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim480 t)

theorem inv0_claim482 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node98 t) && ! (inv0_node265 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node98 t) (inv0_node265 t) (inv0_node0 t) (inv0_node86 t) (inv0_node0 t) (inv0_node264 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim481 t) (inv0_claim480 t)

theorem inv0_claim483 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node182 t) && ! (inv0_node265 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node182 t) (inv0_node265 t) (inv0_node0 t) (inv0_node0 t) (inv0_node98 t) (inv0_node265 t) (inv0_node265 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node265 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim479 t) (inv0_claim482 t)

theorem inv0_claim484 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node79 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node79 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node16 t) (inv0_node1 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim102 t) (inv0_claim46 t)

def inv0_node266 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node12 t else inv0_node99 t

theorem inv0_claim485 (t : ℤ → Bool) :
    (inv0_node266 t) = ((inv0_node80 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node80 t) (inv0_node99 t) (inv0_node266 t) (inv0_node79 t) (inv0_node12 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node12 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim484 t) (inv0_claim32 t)

theorem inv0_claim486 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node266 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node266 t)

theorem inv0_claim487 (t : ℤ → Bool) :
    (inv0_node123 t) = ((inv0_node79 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node79 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node16 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node16 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim59 t) (inv0_claim45 t)

theorem inv0_claim488 (t : ℤ → Bool) :
    (inv0_node124 t) = ((inv0_node80 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node80 t) (inv0_node19 t) (inv0_node124 t) (inv0_node79 t) (inv0_node12 t) (inv0_node19 t) (inv0_node19 t) (inv0_node123 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim487 t) (inv0_claim35 t)

theorem inv0_shift172 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node19 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node19 (shiftInput false true t)) (inv0_node16 t) (inv0_node0 (shiftInput false true t)) (inv0_node1 (shiftInput false true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift11 t)

theorem inv0_shift173 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node36 (shiftInput false true t)) := by
  exact inv0_shift172 t

theorem inv0_shift174 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node25 (shiftInput false true t)) := by
  exact inv0_shift30 t

theorem inv0_shift175 (t : ℤ → Bool) :
    (inv0_node176 t) = (inv0_node37 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node37 (shiftInput false true t)) (inv0_node176 t) (inv0_node36 (shiftInput false true t)) (inv0_node25 (shiftInput false true t)) (inv0_node16 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift173 t) (inv0_shift174 t)

theorem inv0_claim489 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node124 t) && ! (inv0_node176 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node124 t) (inv0_node176 t) (inv0_node0 t) (inv0_node123 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim476 t) (inv0_claim55 t)

theorem inv0_claim490 (t : ℤ → Bool) :
    (inv0_node82 t) = ((inv0_node82 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node82 t)

theorem inv0_claim491 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node82 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node82 t)

def inv0_node267 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node82 t

theorem inv0_claim492 (t : ℤ → Bool) :
    (inv0_node267 t) = ((inv0_node82 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node82 t) (inv0_node99 t) (inv0_node267 t) (inv0_node82 t) (inv0_node82 t) (inv0_node1 t) (inv0_node0 t) (inv0_node82 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node82 t)) (by rfl) (by rfl)
    (inv0_claim490 t) (inv0_claim491 t)

theorem inv0_claim493 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node267 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node267 t)

def inv0_node268 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node82 t else inv0_node0 t

theorem inv0_claim494 (t : ℤ → Bool) :
    (inv0_node268 t) = ((inv0_node82 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node82 t) (inv0_node19 t) (inv0_node268 t) (inv0_node82 t) (inv0_node82 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node82 t)
    (bool_select_same (t 0) (inv0_node82 t)) (by rfl) (by rfl)
    (inv0_claim491 t) (inv0_claim490 t)

theorem inv0_shift176 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node82 (shiftInput true true t)) := by
  exact inv0_shift1 t

theorem inv0_claim495 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node268 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node268 t)

theorem inv0_claim496 (t : ℤ → Bool) :
    (inv0_node83 t) = ((inv0_node83 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node83 t)

theorem inv0_claim497 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node83 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node83 t)

def inv0_node269 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node83 t

theorem inv0_claim498 (t : ℤ → Bool) :
    (inv0_node269 t) = ((inv0_node83 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node83 t) (inv0_node99 t) (inv0_node269 t) (inv0_node83 t) (inv0_node83 t) (inv0_node1 t) (inv0_node0 t) (inv0_node83 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node83 t)) (by rfl) (by rfl)
    (inv0_claim496 t) (inv0_claim497 t)

theorem inv0_shift177 (t : ℤ → Bool) :
    (inv0_node224 t) = (inv0_node82 (shiftInput true false t)) := by
  exact inv0_shift75 t

theorem inv0_claim499 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node81 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node81 t)

theorem inv0_claim500 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node83 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node83 t) (inv0_node224 t) (inv0_node0 t) (inv0_node3 t) (inv0_node81 t) (inv0_node9 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim209 t) (inv0_claim499 t)

theorem inv0_claim501 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node269 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node269 t) (inv0_node224 t) (inv0_node0 t) (inv0_node83 t) (inv0_node0 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim500 t) (inv0_claim217 t)

def inv0_node270 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node83 t else inv0_node0 t

theorem inv0_claim502 (t : ℤ → Bool) :
    (inv0_node270 t) = ((inv0_node83 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node83 t) (inv0_node19 t) (inv0_node270 t) (inv0_node83 t) (inv0_node83 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node83 t)
    (bool_select_same (t 0) (inv0_node83 t)) (by rfl) (by rfl)
    (inv0_claim497 t) (inv0_claim496 t)

theorem inv0_shift178 (t : ℤ → Bool) :
    (inv0_node224 t) = (inv0_node83 (shiftInput true true t)) := by
  exact inv0_shift106 t

theorem inv0_claim503 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node270 t) && ! (inv0_node224 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node270 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t) (inv0_node83 t) (inv0_node224 t) (inv0_node224 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node224 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim217 t) (inv0_claim500 t)

theorem inv0_claim504 (t : ℤ → Bool) :
    (inv0_node85 t) = ((inv0_node85 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node85 t)

theorem inv0_claim505 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node85 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node85 t)

def inv0_node271 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node85 t

theorem inv0_claim506 (t : ℤ → Bool) :
    (inv0_node271 t) = ((inv0_node85 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node85 t) (inv0_node99 t) (inv0_node271 t) (inv0_node85 t) (inv0_node85 t) (inv0_node1 t) (inv0_node0 t) (inv0_node85 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node85 t)) (by rfl) (by rfl)
    (inv0_claim504 t) (inv0_claim505 t)

theorem inv0_claim507 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node271 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node271 t)

def inv0_node272 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node85 t else inv0_node0 t

theorem inv0_claim508 (t : ℤ → Bool) :
    (inv0_node272 t) = ((inv0_node85 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node85 t) (inv0_node19 t) (inv0_node272 t) (inv0_node85 t) (inv0_node85 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node85 t)
    (bool_select_same (t 0) (inv0_node85 t)) (by rfl) (by rfl)
    (inv0_claim505 t) (inv0_claim504 t)

def inv0_node273 (t : ℤ → Bool) : Bool :=
  if t (-1) then inv0_node1 t else inv0_node14 t

theorem inv0_shift179 (t : ℤ → Bool) :
    (inv0_node273 t) = (inv0_node84 (shiftInput true true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node84 (shiftInput true true t)) (inv0_node273 t) (inv0_node61 (shiftInput true true t)) (inv0_node1 (shiftInput true true t)) (inv0_node14 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift91 t) (inv0_shift1 t)

theorem inv0_shift180 (t : ℤ → Bool) :
    (inv0_node273 t) = (inv0_node85 (shiftInput true true t)) := by
  exact inv0_shift179 t

theorem inv0_claim509 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node273 t)) := by
  rfl

theorem inv0_claim510 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node14 t) && ! (inv0_node14 t)) := by
  exact bool_and_not_self (inv0_node14 t)

theorem inv0_claim511 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node84 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node84 t)

theorem inv0_claim512 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node85 t) && ! (inv0_node273 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node85 t) (inv0_node273 t) (inv0_node0 t) (inv0_node14 t) (inv0_node84 t) (inv0_node14 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim510 t) (inv0_claim511 t)

theorem inv0_claim513 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node272 t) && ! (inv0_node273 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node272 t) (inv0_node273 t) (inv0_node0 t) (inv0_node0 t) (inv0_node85 t) (inv0_node273 t) (inv0_node273 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node273 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim509 t) (inv0_claim512 t)

theorem inv0_shift181 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node85 (shiftInput true false t)) := by
  exact inv0_shift16 t

theorem inv0_claim514 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node14 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node14 t)

theorem inv0_claim515 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node45 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node45 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node14 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim514 t)

theorem inv0_claim516 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node120 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node120 t) (inv0_node16 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim515 t) (inv0_claim49 t)

theorem inv0_claim517 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node46 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node46 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node45 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim515 t)

theorem inv0_claim518 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node86 t) (inv0_node99 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim60 t) (inv0_claim3 t)

theorem inv0_claim519 (t : ℤ → Bool) :
    (inv0_node136 t) = ((inv0_node87 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node87 t) (inv0_node99 t) (inv0_node136 t) (inv0_node86 t) (inv0_node25 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node135 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim518 t) (inv0_claim81 t)

theorem inv0_shift182 (t : ℤ → Bool) :
    (inv0_node88 t) = (inv0_node27 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node27 (shiftInput false false t)) (inv0_node88 t) (inv0_node0 (shiftInput false false t)) (inv0_node26 (shiftInput false false t)) (inv0_node0 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift60 t)

theorem inv0_claim520 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node136 t) && ! (inv0_node88 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node136 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t) (inv0_node135 t) (inv0_node0 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim85 t)

theorem inv0_claim521 (t : ℤ → Bool) :
    (inv0_node86 t) = ((inv0_node86 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node86 t) (inv0_node19 t) (inv0_node86 t) (inv0_node19 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim67 t) (inv0_claim11 t)

theorem inv0_claim522 (t : ℤ → Bool) :
    (inv0_node86 t) = ((inv0_node87 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node87 t) (inv0_node19 t) (inv0_node86 t) (inv0_node86 t) (inv0_node25 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node86 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node86 t))
    (inv0_claim521 t) (inv0_claim88 t)

theorem inv0_claim523 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node110 t) && ! (inv0_node245 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node110 t) (inv0_node245 t) (inv0_node0 t) (inv0_node0 t) (inv0_node99 t) (inv0_node16 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim65 t)

theorem inv0_claim524 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node94 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node94 t)

theorem inv0_claim525 (t : ℤ → Bool) :
    (inv0_node136 t) = ((inv0_node88 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node88 t) (inv0_node99 t) (inv0_node136 t) (inv0_node0 t) (inv0_node25 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node135 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim81 t)

theorem inv0_claim526 (t : ℤ → Bool) :
    (inv0_node140 t) = ((inv0_node88 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node88 t) (inv0_node19 t) (inv0_node140 t) (inv0_node0 t) (inv0_node25 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node86 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim88 t)

theorem inv0_shift183 (t : ℤ → Bool) :
    (inv0_node21 t) = (inv0_node89 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node89 (shiftInput false true t)) (inv0_node21 t) (inv0_node0 (shiftInput false true t)) (inv0_node21 (shiftInput false true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift12 t)

theorem inv0_shift184 (t : ℤ → Bool) :
    (inv0_node23 t) = (inv0_node90 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node90 (shiftInput false true t)) (inv0_node23 t) (inv0_node89 (shiftInput false true t)) (inv0_node21 (shiftInput false true t)) (inv0_node21 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift183 t) (inv0_shift12 t)

theorem inv0_claim527 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node21 t)) := by
  rfl

theorem inv0_claim528 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node140 t) && ! (inv0_node23 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node140 t) (inv0_node23 t) (inv0_node0 t) (inv0_node0 t) (inv0_node86 t) (inv0_node21 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim527 t) (inv0_claim139 t)

def inv0_node274 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node110 t else inv0_node0 t

theorem inv0_claim529 (t : ℤ → Bool) :
    (inv0_node274 t) = ((inv0_node89 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node89 t) (inv0_node99 t) (inv0_node274 t) (inv0_node0 t) (inv0_node21 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node110 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim63 t)

def inv0_node275 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node110 t else inv0_node274 t

theorem inv0_claim530 (t : ℤ → Bool) :
    (inv0_node275 t) = ((inv0_node90 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node90 t) (inv0_node99 t) (inv0_node275 t) (inv0_node89 t) (inv0_node21 t) (inv0_node99 t) (inv0_node99 t) (inv0_node274 t) (inv0_node110 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim529 t) (inv0_claim63 t)

theorem inv0_claim531 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node274 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node274 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t) (inv0_node110 t) (inv0_node21 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node21 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim527 t) (inv0_claim66 t)

theorem inv0_claim532 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node275 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node275 t) (inv0_node21 t) (inv0_node0 t) (inv0_node274 t) (inv0_node110 t) (inv0_node21 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node21 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim531 t) (inv0_claim66 t)

theorem inv0_claim533 (t : ℤ → Bool) :
    (inv0_node149 t) = ((inv0_node89 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node89 t) (inv0_node19 t) (inv0_node149 t) (inv0_node0 t) (inv0_node21 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node94 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim70 t)

def inv0_node276 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node94 t else inv0_node149 t

theorem inv0_claim534 (t : ℤ → Bool) :
    (inv0_node276 t) = ((inv0_node90 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node90 t) (inv0_node19 t) (inv0_node276 t) (inv0_node89 t) (inv0_node21 t) (inv0_node19 t) (inv0_node19 t) (inv0_node149 t) (inv0_node94 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim533 t) (inv0_claim70 t)

theorem inv0_claim535 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node149 t) && ! (inv0_node23 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node149 t) (inv0_node23 t) (inv0_node0 t) (inv0_node0 t) (inv0_node94 t) (inv0_node21 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim527 t) (inv0_claim524 t)

theorem inv0_claim536 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node94 t) && ! (inv0_node23 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node94 t) (inv0_node23 t) (inv0_node0 t) (inv0_node94 t) (inv0_node94 t) (inv0_node21 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node94 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim73 t) (inv0_claim524 t)

theorem inv0_claim537 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node276 t) && ! (inv0_node23 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node276 t) (inv0_node23 t) (inv0_node0 t) (inv0_node149 t) (inv0_node94 t) (inv0_node23 t) (inv0_node23 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node23 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim535 t) (inv0_claim536 t)

theorem inv0_claim538 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node91 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node91 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node15 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim9 t) (inv0_claim38 t)

theorem inv0_claim539 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node92 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node92 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node91 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim538 t)

theorem inv0_claim540 (t : ℤ → Bool) :
    (inv0_node91 t) = ((inv0_node91 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node91 t) (inv0_node19 t) (inv0_node91 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node15 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim1 t) (inv0_claim37 t)

theorem inv0_claim541 (t : ℤ → Bool) :
    (inv0_node92 t) = ((inv0_node92 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node92 t) (inv0_node19 t) (inv0_node92 t) (inv0_node0 t) (inv0_node91 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node91 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim540 t)

def inv0_node277 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node15 t else inv0_node0 t

theorem inv0_shift185 (t : ℤ → Bool) :
    (inv0_node277 t) = (inv0_node93 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node93 (shiftInput false false t)) (inv0_node277 t) (inv0_node0 (shiftInput false false t)) (inv0_node18 (shiftInput false false t)) (inv0_node0 t) (inv0_node15 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift15 t)

theorem inv0_claim542 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node92 t) && ! (inv0_node277 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node92 t) (inv0_node277 t) (inv0_node0 t) (inv0_node0 t) (inv0_node91 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim224 t)

theorem inv0_shift186 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node94 (shiftInput false false t)) := by
  exact inv0_shift3 t

theorem inv0_shift187 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node95 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node95 (shiftInput false false t)) (inv0_node0 t) (inv0_node94 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift186 t) (inv0_shift3 t)

theorem inv0_shift188 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node96 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node96 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 (shiftInput false false t)) (inv0_node95 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift3 t) (inv0_shift187 t)

theorem inv0_shift189 (t : ℤ → Bool) :
    (inv0_node16 t) = (inv0_node94 (shiftInput false true t)) := by
  exact inv0_shift172 t

theorem inv0_shift190 (t : ℤ → Bool) :
    (inv0_node176 t) = (inv0_node95 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node95 (shiftInput false true t)) (inv0_node176 t) (inv0_node94 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node16 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift189 t) (inv0_shift30 t)

def inv0_node278 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node176 t else inv0_node0 t

theorem inv0_shift191 (t : ℤ → Bool) :
    (inv0_node278 t) = (inv0_node96 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node96 (shiftInput false true t)) (inv0_node278 t) (inv0_node0 (shiftInput false true t)) (inv0_node95 (shiftInput false true t)) (inv0_node0 t) (inv0_node176 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift190 t)

theorem inv0_claim543 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node278 t)) := by
  rfl

theorem inv0_claim544 (t : ℤ → Bool) :
    (inv0_node93 t) = ((inv0_node93 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node93 t) (inv0_node99 t) (inv0_node93 t) (inv0_node0 t) (inv0_node18 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node18 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim54 t)

theorem inv0_claim545 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node93 t) && ! (inv0_node278 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node93 t) (inv0_node278 t) (inv0_node0 t) (inv0_node0 t) (inv0_node18 t) (inv0_node0 t) (inv0_node176 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim56 t)

theorem inv0_claim546 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node93 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node93 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node18 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim58 t)

theorem inv0_claim547 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node94 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node94 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node19 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim60 t)

theorem inv0_claim548 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node95 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node95 t) (inv0_node99 t) (inv0_node0 t) (inv0_node94 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim547 t) (inv0_claim3 t)

theorem inv0_claim549 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node96 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node96 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node95 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim548 t)

theorem inv0_claim550 (t : ℤ → Bool) :
    (inv0_node94 t) = ((inv0_node94 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node94 t) (inv0_node19 t) (inv0_node94 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim67 t)

theorem inv0_claim551 (t : ℤ → Bool) :
    (inv0_node95 t) = ((inv0_node95 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node95 t) (inv0_node19 t) (inv0_node95 t) (inv0_node94 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim550 t) (inv0_claim11 t)

theorem inv0_claim552 (t : ℤ → Bool) :
    (inv0_node96 t) = ((inv0_node96 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node96 t) (inv0_node19 t) (inv0_node96 t) (inv0_node0 t) (inv0_node95 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node95 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim551 t)

theorem inv0_shift192 (t : ℤ → Bool) :
    (inv0_node28 t) = (inv0_node97 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node97 (shiftInput false false t)) (inv0_node28 t) (inv0_node88 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node21 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift25 t) (inv0_shift3 t)

theorem inv0_claim553 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node28 t)) := by
  rfl

theorem inv0_claim554 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node95 t) && ! (inv0_node28 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node95 t) (inv0_node28 t) (inv0_node0 t) (inv0_node94 t) (inv0_node0 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim73 t) (inv0_claim55 t)

theorem inv0_claim555 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node96 t) && ! (inv0_node28 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node96 t) (inv0_node28 t) (inv0_node0 t) (inv0_node0 t) (inv0_node95 t) (inv0_node28 t) (inv0_node28 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node28 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim553 t) (inv0_claim554 t)

theorem inv0_shift193 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node88 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node88 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 (shiftInput false true t)) (inv0_node25 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift30 t) (inv0_shift174 t)

theorem inv0_shift194 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node97 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node97 (shiftInput false true t)) (inv0_node0 t) (inv0_node88 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift193 t) (inv0_shift30 t)

theorem inv0_shift195 (t : ℤ → Bool) :
    (inv0_node25 t) = (inv0_node127 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node127 (shiftInput false false t)) (inv0_node25 t) (inv0_node1 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift3 t)

theorem inv0_shift196 (t : ℤ → Bool) :
    (inv0_node88 t) = (inv0_node128 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node128 (shiftInput false false t)) (inv0_node88 t) (inv0_node0 (shiftInput false false t)) (inv0_node127 (shiftInput false false t)) (inv0_node0 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift195 t)

theorem inv0_claim556 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node88 t)) := by
  rfl

def inv0_node279 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node136 t

theorem inv0_claim557 (t : ℤ → Bool) :
    (inv0_node279 t) = ((inv0_node97 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node97 t) (inv0_node99 t) (inv0_node279 t) (inv0_node88 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node136 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim525 t) (inv0_claim3 t)

theorem inv0_claim558 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node279 t) && ! (inv0_node88 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node279 t) (inv0_node88 t) (inv0_node0 t) (inv0_node136 t) (inv0_node0 t) (inv0_node88 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node88 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim520 t) (inv0_claim556 t)

def inv0_node280 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node140 t

theorem inv0_claim559 (t : ℤ → Bool) :
    (inv0_node280 t) = ((inv0_node97 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node97 t) (inv0_node19 t) (inv0_node280 t) (inv0_node88 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node140 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim526 t) (inv0_claim11 t)

theorem inv0_shift197 (t : ℤ → Bool) :
    (inv0_node25 t) = (inv0_node127 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node127 (shiftInput false true t)) (inv0_node25 t) (inv0_node1 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift11 t) (inv0_shift30 t)

theorem inv0_shift198 (t : ℤ → Bool) :
    (inv0_node88 t) = (inv0_node128 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node128 (shiftInput false true t)) (inv0_node88 t) (inv0_node0 (shiftInput false true t)) (inv0_node127 (shiftInput false true t)) (inv0_node0 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift197 t)

theorem inv0_claim560 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node140 t) && ! (inv0_node88 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node140 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t) (inv0_node86 t) (inv0_node0 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim176 t)

theorem inv0_claim561 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node280 t) && ! (inv0_node88 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node280 t) (inv0_node88 t) (inv0_node0 t) (inv0_node140 t) (inv0_node0 t) (inv0_node88 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node88 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim560 t) (inv0_claim556 t)

theorem inv0_shift199 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node129 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node129 (shiftInput false false t)) (inv0_node0 t) (inv0_node21 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift20 t) (inv0_shift3 t)

theorem inv0_shift200 (t : ℤ → Bool) :
    (inv0_node127 t) = (inv0_node129 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node129 (shiftInput false true t)) (inv0_node127 t) (inv0_node21 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift12 t) (inv0_shift30 t)

theorem inv0_claim562 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node127 t)) := by
  rfl

theorem inv0_shift201 (t : ℤ → Bool) :
    (inv0_node176 t) = (inv0_node98 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node98 (shiftInput false false t)) (inv0_node176 t) (inv0_node86 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node16 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift115 t) (inv0_shift3 t)

theorem inv0_shift202 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node86 (shiftInput false true t)) := by
  exact inv0_shift30 t

theorem inv0_shift203 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node98 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node98 (shiftInput false true t)) (inv0_node0 t) (inv0_node86 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift202 t) (inv0_shift30 t)

theorem inv0_claim563 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node98 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node98 t) (inv0_node99 t) (inv0_node0 t) (inv0_node86 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim518 t) (inv0_claim3 t)

theorem inv0_shift204 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node99 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node99 (shiftInput false false t)) (inv0_node11 t) (inv0_node1 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift3 t)

theorem inv0_shift205 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node100 (shiftInput false false t)) := by
  exact inv0_shift204 t

def inv0_node281 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node11 t

theorem inv0_shift206 (t : ℤ → Bool) :
    (inv0_node281 t) = (inv0_node101 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node101 (shiftInput false false t)) (inv0_node281 t) (inv0_node100 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node11 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift205 t) (inv0_shift3 t)

def inv0_node282 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node281 t

theorem inv0_shift207 (t : ℤ → Bool) :
    (inv0_node282 t) = (inv0_node102 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node102 (shiftInput false false t)) (inv0_node282 t) (inv0_node101 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node281 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift206 t) (inv0_shift3 t)

theorem inv0_claim564 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node282 t)) := by
  rfl

theorem inv0_claim565 (t : ℤ → Bool) :
    (inv0_node98 t) = ((inv0_node98 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node98 t) (inv0_node19 t) (inv0_node98 t) (inv0_node86 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim521 t) (inv0_claim11 t)

theorem inv0_shift208 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node100 (shiftInput false true t)) := by
  exact inv0_shift11 t

theorem inv0_shift209 (t : ℤ → Bool) :
    (inv0_node25 t) = (inv0_node101 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node101 (shiftInput false true t)) (inv0_node25 t) (inv0_node100 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift208 t) (inv0_shift30 t)

theorem inv0_shift210 (t : ℤ → Bool) :
    (inv0_node26 t) = (inv0_node102 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node102 (shiftInput false true t)) (inv0_node26 t) (inv0_node101 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node25 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift209 t) (inv0_shift30 t)

theorem inv0_claim566 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node98 t) && ! (inv0_node26 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node98 t) (inv0_node26 t) (inv0_node0 t) (inv0_node86 t) (inv0_node0 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim176 t) (inv0_claim55 t)

theorem inv0_claim567 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node99 t) && (inv0_node99 t)) := by
  exact bool_and_self (inv0_node99 t)

theorem inv0_claim568 (t : ℤ → Bool) :
    (inv0_node99 t) = ((inv0_node100 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node100 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node99 t))
    (inv0_claim567 t) (inv0_claim61 t)

def inv0_node283 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node99 t

theorem inv0_claim569 (t : ℤ → Bool) :
    (inv0_node283 t) = ((inv0_node101 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node101 t) (inv0_node99 t) (inv0_node283 t) (inv0_node100 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim568 t) (inv0_claim3 t)

def inv0_node284 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node283 t

theorem inv0_claim570 (t : ℤ → Bool) :
    (inv0_node284 t) = ((inv0_node102 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node102 t) (inv0_node99 t) (inv0_node284 t) (inv0_node101 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node283 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim569 t) (inv0_claim3 t)

theorem inv0_shift211 (t : ℤ → Bool) :
    (inv0_node127 t) = (inv0_node117 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node117 (shiftInput false false t)) (inv0_node127 t) (inv0_node44 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift50 t) (inv0_shift3 t)

theorem inv0_claim571 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node283 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node283 t) (inv0_node127 t) (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim65 t) (inv0_claim55 t)

theorem inv0_claim572 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node284 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node284 t) (inv0_node127 t) (inv0_node0 t) (inv0_node283 t) (inv0_node0 t) (inv0_node127 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node127 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim571 t) (inv0_claim562 t)

theorem inv0_claim573 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node99 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node99 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim59 t) (inv0_claim9 t)

theorem inv0_claim574 (t : ℤ → Bool) :
    (inv0_node94 t) = ((inv0_node100 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node100 t) (inv0_node19 t) (inv0_node94 t) (inv0_node99 t) (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node19 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim573 t) (inv0_claim68 t)

theorem inv0_claim575 (t : ℤ → Bool) :
    (inv0_node95 t) = ((inv0_node101 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node101 t) (inv0_node19 t) (inv0_node95 t) (inv0_node100 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim574 t) (inv0_claim11 t)

theorem inv0_claim576 (t : ℤ → Bool) :
    (inv0_node126 t) = ((inv0_node102 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node102 t) (inv0_node19 t) (inv0_node126 t) (inv0_node101 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node95 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim575 t) (inv0_claim11 t)

theorem inv0_shift212 (t : ℤ → Bool) :
    (inv0_node21 t) = (inv0_node44 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node44 (shiftInput false true t)) (inv0_node21 t) (inv0_node25 (shiftInput false true t)) (inv0_node1 (shiftInput false true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift174 t) (inv0_shift11 t)

theorem inv0_shift213 (t : ℤ → Bool) :
    (inv0_node28 t) = (inv0_node117 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node117 (shiftInput false true t)) (inv0_node28 t) (inv0_node44 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node21 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift212 t) (inv0_shift30 t)

theorem inv0_claim577 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node126 t) && ! (inv0_node28 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node126 t) (inv0_node28 t) (inv0_node0 t) (inv0_node95 t) (inv0_node0 t) (inv0_node28 t) (inv0_node28 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node28 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim554 t) (inv0_claim553 t)

theorem inv0_claim578 (t : ℤ → Bool) :
    (inv0_node103 t) = ((inv0_node103 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node103 t) (inv0_node99 t) (inv0_node103 t) (inv0_node73 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim419 t) (inv0_claim1 t)

theorem inv0_claim579 (t : ℤ → Bool) :
    (inv0_node104 t) = ((inv0_node104 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node104 t) (inv0_node99 t) (inv0_node104 t) (inv0_node103 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node103 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim578 t) (inv0_claim3 t)

theorem inv0_shift214 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node105 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node105 (shiftInput false false t)) (inv0_node73 t) (inv0_node0 (shiftInput false false t)) (inv0_node11 (shiftInput false false t)) (inv0_node0 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift4 t)

theorem inv0_shift215 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node106 (shiftInput false false t)) := by
  exact inv0_shift214 t

def inv0_node285 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node73 t

theorem inv0_shift216 (t : ℤ → Bool) :
    (inv0_node285 t) = (inv0_node107 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node107 (shiftInput false false t)) (inv0_node285 t) (inv0_node106 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node73 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift215 t) (inv0_shift3 t)

theorem inv0_claim580 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node104 t) && ! (inv0_node285 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node104 t) (inv0_node285 t) (inv0_node0 t) (inv0_node103 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim423 t) (inv0_claim55 t)

theorem inv0_claim581 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node103 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node103 t) (inv0_node19 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim420 t) (inv0_claim9 t)

theorem inv0_claim582 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node104 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node104 t) (inv0_node19 t) (inv0_node0 t) (inv0_node103 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim581 t) (inv0_claim11 t)

theorem inv0_shift217 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node106 (shiftInput false true t)) := by
  exact inv0_shift30 t

theorem inv0_shift218 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node107 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node107 (shiftInput false true t)) (inv0_node0 t) (inv0_node106 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift217 t) (inv0_shift30 t)

theorem inv0_claim583 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node105 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node105 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node11 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim9 t) (inv0_claim25 t)

theorem inv0_claim584 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node106 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node106 t) (inv0_node99 t) (inv0_node0 t) (inv0_node105 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim583 t) (inv0_claim3 t)

theorem inv0_claim585 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node107 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node107 t) (inv0_node99 t) (inv0_node0 t) (inv0_node106 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim584 t) (inv0_claim3 t)

theorem inv0_shift219 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node99 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node99 (shiftInput false true t)) (inv0_node11 t) (inv0_node1 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift11 t) (inv0_shift30 t)

theorem inv0_shift220 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node110 (shiftInput false true t)) := by
  exact inv0_shift219 t

theorem inv0_shift221 (t : ℤ → Bool) :
    (inv0_node281 t) = (inv0_node111 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node111 (shiftInput false true t)) (inv0_node281 t) (inv0_node110 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node11 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift220 t) (inv0_shift30 t)

theorem inv0_shift222 (t : ℤ → Bool) :
    (inv0_node282 t) = (inv0_node112 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node112 (shiftInput false true t)) (inv0_node282 t) (inv0_node111 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node281 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift221 t) (inv0_shift30 t)

theorem inv0_claim586 (t : ℤ → Bool) :
    (inv0_node105 t) = ((inv0_node105 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node105 t) (inv0_node19 t) (inv0_node105 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node11 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim1 t) (inv0_claim24 t)

theorem inv0_claim587 (t : ℤ → Bool) :
    (inv0_node106 t) = ((inv0_node106 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node106 t) (inv0_node19 t) (inv0_node106 t) (inv0_node105 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node105 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim586 t) (inv0_claim11 t)

theorem inv0_claim588 (t : ℤ → Bool) :
    (inv0_node107 t) = ((inv0_node107 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node107 t) (inv0_node19 t) (inv0_node107 t) (inv0_node106 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node106 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim587 t) (inv0_claim11 t)

theorem inv0_claim589 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node106 t) && ! (inv0_node281 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node106 t) (inv0_node281 t) (inv0_node0 t) (inv0_node105 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim31 t) (inv0_claim55 t)

theorem inv0_claim590 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node107 t) && ! (inv0_node282 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node107 t) (inv0_node282 t) (inv0_node0 t) (inv0_node106 t) (inv0_node0 t) (inv0_node281 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim589 t) (inv0_claim55 t)

theorem inv0_claim591 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node108 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node108 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node73 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim9 t) (inv0_claim420 t)

theorem inv0_claim592 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node109 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node109 t) (inv0_node99 t) (inv0_node0 t) (inv0_node108 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim591 t) (inv0_claim3 t)

theorem inv0_claim593 (t : ℤ → Bool) :
    (inv0_node108 t) = ((inv0_node108 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node108 t) (inv0_node19 t) (inv0_node108 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node73 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim1 t) (inv0_claim419 t)

theorem inv0_claim594 (t : ℤ → Bool) :
    (inv0_node109 t) = ((inv0_node109 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node109 t) (inv0_node19 t) (inv0_node109 t) (inv0_node108 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node108 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim593 t) (inv0_claim11 t)

theorem inv0_claim595 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node108 t) && ! (inv0_node73 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node108 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node73 t) (inv0_node73 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node73 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim211 t) (inv0_claim422 t)

theorem inv0_claim596 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node109 t) && ! (inv0_node285 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node109 t) (inv0_node285 t) (inv0_node0 t) (inv0_node108 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim595 t) (inv0_claim55 t)

theorem inv0_shift223 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node110 (shiftInput false false t)) := by
  exact inv0_shift3 t

theorem inv0_shift224 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node111 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node111 (shiftInput false false t)) (inv0_node0 t) (inv0_node110 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift223 t) (inv0_shift3 t)

theorem inv0_shift225 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node112 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node112 (shiftInput false false t)) (inv0_node0 t) (inv0_node111 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift224 t) (inv0_shift3 t)

theorem inv0_shift226 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node89 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node89 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 (shiftInput false false t)) (inv0_node21 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift3 t) (inv0_shift20 t)

theorem inv0_shift227 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node113 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node113 (shiftInput false false t)) (inv0_node0 t) (inv0_node89 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift226 t) (inv0_shift3 t)

theorem inv0_shift228 (t : ℤ → Bool) :
    (inv0_node28 t) = (inv0_node113 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node113 (shiftInput false true t)) (inv0_node28 t) (inv0_node89 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node21 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift183 t) (inv0_shift30 t)

theorem inv0_claim597 (t : ℤ → Bool) :
    (inv0_node110 t) = ((inv0_node110 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node110 t) (inv0_node99 t) (inv0_node110 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node99 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim567 t)

theorem inv0_claim598 (t : ℤ → Bool) :
    (inv0_node111 t) = ((inv0_node111 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node111 t) (inv0_node99 t) (inv0_node111 t) (inv0_node110 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim597 t) (inv0_claim3 t)

theorem inv0_claim599 (t : ℤ → Bool) :
    (inv0_node112 t) = ((inv0_node112 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node112 t) (inv0_node99 t) (inv0_node112 t) (inv0_node111 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node111 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim598 t) (inv0_claim3 t)

theorem inv0_claim600 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node111 t) && ! (inv0_node28 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node111 t) (inv0_node28 t) (inv0_node0 t) (inv0_node110 t) (inv0_node0 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim66 t) (inv0_claim55 t)

theorem inv0_claim601 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node112 t) && ! (inv0_node28 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node112 t) (inv0_node28 t) (inv0_node0 t) (inv0_node111 t) (inv0_node0 t) (inv0_node28 t) (inv0_node28 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node28 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim600 t) (inv0_claim553 t)

theorem inv0_claim602 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node110 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node110 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node99 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim573 t)

theorem inv0_claim603 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node111 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node111 t) (inv0_node19 t) (inv0_node0 t) (inv0_node110 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim602 t) (inv0_claim11 t)

theorem inv0_claim604 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node112 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node112 t) (inv0_node19 t) (inv0_node0 t) (inv0_node111 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim603 t) (inv0_claim11 t)

def inv0_node286 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node274 t

theorem inv0_claim605 (t : ℤ → Bool) :
    (inv0_node286 t) = ((inv0_node113 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node113 t) (inv0_node99 t) (inv0_node286 t) (inv0_node89 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node274 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim529 t) (inv0_claim3 t)

theorem inv0_shift229 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node28 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node28 (shiftInput false false t)) (inv0_node0 t) (inv0_node21 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift20 t) (inv0_shift3 t)

theorem inv0_shift230 (t : ℤ → Bool) :
    (inv0_node89 t) = (inv0_node118 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node118 (shiftInput false false t)) (inv0_node89 t) (inv0_node28 (shiftInput false false t)) (inv0_node23 (shiftInput false false t)) (inv0_node0 t) (inv0_node21 t)
    (by rfl) (by rfl) (inv0_shift229 t) (inv0_shift26 t)

theorem inv0_claim606 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node274 t) && ! (inv0_node89 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node274 t) (inv0_node89 t) (inv0_node0 t) (inv0_node0 t) (inv0_node110 t) (inv0_node0 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim66 t)

theorem inv0_claim607 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node89 t)) := by
  rfl

theorem inv0_claim608 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node286 t) && ! (inv0_node89 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node286 t) (inv0_node89 t) (inv0_node0 t) (inv0_node274 t) (inv0_node0 t) (inv0_node89 t) (inv0_node89 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node89 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim606 t) (inv0_claim607 t)

def inv0_node287 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node149 t

theorem inv0_claim609 (t : ℤ → Bool) :
    (inv0_node287 t) = ((inv0_node113 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node113 t) (inv0_node19 t) (inv0_node287 t) (inv0_node89 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node149 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim533 t) (inv0_claim11 t)

theorem inv0_shift231 (t : ℤ → Bool) :
    (inv0_node44 t) = (inv0_node118 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node118 (shiftInput false true t)) (inv0_node44 t) (inv0_node28 (shiftInput false true t)) (inv0_node23 (shiftInput false true t)) (inv0_node25 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift31 t) (inv0_shift28 t)

theorem inv0_claim610 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node149 t) && ! (inv0_node44 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node149 t) (inv0_node44 t) (inv0_node0 t) (inv0_node0 t) (inv0_node94 t) (inv0_node25 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim95 t) (inv0_claim524 t)

theorem inv0_claim611 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node44 t)) := by
  rfl

theorem inv0_claim612 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node287 t) && ! (inv0_node44 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node287 t) (inv0_node44 t) (inv0_node0 t) (inv0_node149 t) (inv0_node0 t) (inv0_node44 t) (inv0_node44 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node44 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim610 t) (inv0_claim611 t)

theorem inv0_shift232 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node18 (shiftInput false true t)) := by
  exact inv0_shift30 t

theorem inv0_shift233 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node116 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node116 (shiftInput false true t)) (inv0_node0 t) (inv0_node86 (shiftInput false true t)) (inv0_node18 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift202 t) (inv0_shift232 t)

theorem inv0_claim613 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node86 t) && ! (inv0_node52 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node86 t) (inv0_node52 t) (inv0_node0 t) (inv0_node86 t) (inv0_node86 t) (inv0_node1 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node86 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim139 t) (inv0_claim176 t)

theorem inv0_claim614 (t : ℤ → Bool) :
    (inv0_node114 t) = ((inv0_node114 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node114 t) (inv0_node99 t) (inv0_node114 t) (inv0_node15 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim37 t) (inv0_claim1 t)

theorem inv0_claim615 (t : ℤ → Bool) :
    (inv0_node115 t) = ((inv0_node115 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node115 t) (inv0_node99 t) (inv0_node115 t) (inv0_node17 t) (inv0_node114 t) (inv0_node99 t) (inv0_node99 t) (inv0_node17 t) (inv0_node114 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim53 t) (inv0_claim614 t)

def inv0_node288 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node15 t else inv0_node16 t

theorem inv0_shift234 (t : ℤ → Bool) :
    (inv0_node288 t) = (inv0_node116 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node116 (shiftInput false false t)) (inv0_node288 t) (inv0_node86 (shiftInput false false t)) (inv0_node18 (shiftInput false false t)) (inv0_node16 t) (inv0_node15 t)
    (by rfl) (by rfl) (inv0_shift115 t) (inv0_shift15 t)

theorem inv0_claim616 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node115 t) && ! (inv0_node288 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node115 t) (inv0_node288 t) (inv0_node0 t) (inv0_node17 t) (inv0_node114 t) (inv0_node16 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim50 t) (inv0_claim42 t)

theorem inv0_claim617 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node114 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node114 t) (inv0_node19 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim38 t) (inv0_claim9 t)

theorem inv0_claim618 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node115 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node115 t) (inv0_node19 t) (inv0_node0 t) (inv0_node17 t) (inv0_node114 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim57 t) (inv0_claim617 t)

theorem inv0_claim619 (t : ℤ → Bool) :
    (inv0_node93 t) = ((inv0_node116 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node116 t) (inv0_node99 t) (inv0_node93 t) (inv0_node86 t) (inv0_node18 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node18 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim518 t) (inv0_claim54 t)

theorem inv0_claim620 (t : ℤ → Bool) :
    (inv0_node98 t) = ((inv0_node116 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node116 t) (inv0_node19 t) (inv0_node98 t) (inv0_node86 t) (inv0_node18 t) (inv0_node19 t) (inv0_node19 t) (inv0_node86 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim521 t) (inv0_claim58 t)

theorem inv0_claim621 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node98 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node98 t)

theorem inv0_claim622 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node96 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node96 t)

def inv0_node289 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node203 t

theorem inv0_claim623 (t : ℤ → Bool) :
    (inv0_node289 t) = ((inv0_node117 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node117 t) (inv0_node99 t) (inv0_node289 t) (inv0_node44 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node203 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim147 t) (inv0_claim3 t)

theorem inv0_claim624 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node203 t) && ! (inv0_node44 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node203 t) (inv0_node44 t) (inv0_node0 t) (inv0_node135 t) (inv0_node99 t) (inv0_node25 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim85 t) (inv0_claim65 t)

theorem inv0_claim625 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node289 t) && ! (inv0_node44 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node289 t) (inv0_node44 t) (inv0_node0 t) (inv0_node203 t) (inv0_node0 t) (inv0_node44 t) (inv0_node44 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node44 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim624 t) (inv0_claim611 t)

def inv0_node290 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node206 t

theorem inv0_claim626 (t : ℤ → Bool) :
    (inv0_node290 t) = ((inv0_node117 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node117 t) (inv0_node19 t) (inv0_node290 t) (inv0_node44 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node206 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim154 t) (inv0_claim11 t)

theorem inv0_claim627 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node290 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node290 t)

def inv0_node291 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node178 t else inv0_node111 t

theorem inv0_claim628 (t : ℤ → Bool) :
    (inv0_node291 t) = ((inv0_node118 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node118 t) (inv0_node99 t) (inv0_node291 t) (inv0_node28 t) (inv0_node23 t) (inv0_node99 t) (inv0_node99 t) (inv0_node111 t) (inv0_node178 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim92 t) (inv0_claim75 t)

theorem inv0_shift235 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node119 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node119 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 (shiftInput false true t)) (inv0_node21 (shiftInput false true t)) (inv0_node1 t) (inv0_node1 t)
    (by rfl) (bool_select_same (t 2) (inv0_node1 t)) (inv0_shift11 t) (inv0_shift12 t)

theorem inv0_claim629 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node291 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node291 t)

def inv0_node292 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node180 t else inv0_node95 t

theorem inv0_claim630 (t : ℤ → Bool) :
    (inv0_node292 t) = ((inv0_node118 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node118 t) (inv0_node19 t) (inv0_node292 t) (inv0_node28 t) (inv0_node23 t) (inv0_node19 t) (inv0_node19 t) (inv0_node95 t) (inv0_node180 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim99 t) (inv0_claim78 t)

theorem inv0_claim631 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node292 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node292 t)

def inv0_node293 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node110 t else inv0_node99 t

theorem inv0_claim632 (t : ℤ → Bool) :
    (inv0_node293 t) = ((inv0_node119 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node119 t) (inv0_node99 t) (inv0_node293 t) (inv0_node1 t) (inv0_node21 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim63 t)

theorem inv0_claim633 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node293 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node293 t)

def inv0_node294 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node94 t else inv0_node19 t

theorem inv0_claim634 (t : ℤ → Bool) :
    (inv0_node294 t) = ((inv0_node119 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node119 t) (inv0_node19 t) (inv0_node294 t) (inv0_node1 t) (inv0_node21 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim70 t)

theorem inv0_claim635 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node294 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node294 t)

theorem inv0_claim636 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node178 t) && ! (inv0_node23 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node178 t) (inv0_node23 t) (inv0_node0 t) (inv0_node110 t) (inv0_node99 t) (inv0_node21 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim66 t) (inv0_claim65 t)

theorem inv0_claim637 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node180 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node180 t)

theorem inv0_shift236 (t : ℤ → Bool) :
    (inv0_node21 t) = (inv0_node55 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node55 (shiftInput false true t)) (inv0_node21 t) (inv0_node25 (shiftInput false true t)) (inv0_node20 (shiftInput false true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift174 t) (inv0_shift22 t)

theorem inv0_claim638 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node276 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node276 t)

theorem inv0_shift237 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node13 (shiftInput false true t)) := by
  exact inv0_shift30 t

theorem inv0_shift238 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node122 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node122 (shiftInput false true t)) (inv0_node0 t) (inv0_node13 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift237 t) (inv0_shift30 t)

theorem inv0_shift239 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node123 (shiftInput false false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node123 (shiftInput false false t)) (inv0_node45 t) (inv0_node0 (shiftInput false false t)) (inv0_node16 (shiftInput false false t)) (inv0_node0 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift13 t)

theorem inv0_shift240 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node124 (shiftInput false false t)) := by
  exact inv0_shift239 t

def inv0_node295 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node45 t

theorem inv0_shift241 (t : ℤ → Bool) :
    (inv0_node295 t) = (inv0_node125 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node125 (shiftInput false false t)) (inv0_node295 t) (inv0_node124 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node45 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift240 t) (inv0_shift3 t)

theorem inv0_claim639 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node50 t) && ! (inv0_node295 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node50 t) (inv0_node295 t) (inv0_node0 t) (inv0_node46 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim322 t) (inv0_claim55 t)

theorem inv0_claim640 (t : ℤ → Bool) :
    (inv0_node120 t) = ((inv0_node120 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node120 t) (inv0_node99 t) (inv0_node120 t) (inv0_node45 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim155 t) (inv0_claim1 t)

theorem inv0_claim641 (t : ℤ → Bool) :
    (inv0_node121 t) = ((inv0_node121 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node121 t) (inv0_node99 t) (inv0_node121 t) (inv0_node120 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node120 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim640 t) (inv0_claim3 t)

theorem inv0_claim642 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node121 t) && ! (inv0_node295 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node121 t) (inv0_node295 t) (inv0_node0 t) (inv0_node120 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim320 t) (inv0_claim55 t)

theorem inv0_claim643 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node120 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node120 t) (inv0_node19 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim148 t) (inv0_claim9 t)

theorem inv0_claim644 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node121 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node121 t) (inv0_node19 t) (inv0_node0 t) (inv0_node120 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim643 t) (inv0_claim11 t)

theorem inv0_shift242 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node124 (shiftInput false true t)) := by
  exact inv0_shift30 t

theorem inv0_shift243 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node125 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node125 (shiftInput false true t)) (inv0_node0 t) (inv0_node124 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift242 t) (inv0_shift30 t)

theorem inv0_claim645 (t : ℤ → Bool) :
    (inv0_node122 t) = ((inv0_node122 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node122 t) (inv0_node99 t) (inv0_node122 t) (inv0_node13 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node13 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim33 t) (inv0_claim3 t)

theorem inv0_claim646 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node13 t) && ! (inv0_node281 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node13 t) (inv0_node281 t) (inv0_node0 t) (inv0_node12 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim29 t) (inv0_claim55 t)

theorem inv0_claim647 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node122 t) && ! (inv0_node282 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node122 t) (inv0_node282 t) (inv0_node0 t) (inv0_node13 t) (inv0_node0 t) (inv0_node281 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim646 t) (inv0_claim55 t)

theorem inv0_claim648 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node122 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node122 t) (inv0_node19 t) (inv0_node0 t) (inv0_node13 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim36 t) (inv0_claim11 t)

theorem inv0_shift244 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node126 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node126 (shiftInput false false t)) (inv0_node0 t) (inv0_node95 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift187 t) (inv0_shift3 t)

theorem inv0_claim649 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node123 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node123 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node16 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim9 t) (inv0_claim46 t)

theorem inv0_claim650 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node124 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node124 t) (inv0_node99 t) (inv0_node0 t) (inv0_node123 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim649 t) (inv0_claim3 t)

theorem inv0_claim651 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node125 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node125 t) (inv0_node99 t) (inv0_node0 t) (inv0_node124 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim650 t) (inv0_claim3 t)

theorem inv0_claim652 (t : ℤ → Bool) :
    (inv0_node123 t) = ((inv0_node123 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node123 t) (inv0_node19 t) (inv0_node123 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node16 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim1 t) (inv0_claim45 t)

theorem inv0_claim653 (t : ℤ → Bool) :
    (inv0_node124 t) = ((inv0_node124 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node124 t) (inv0_node19 t) (inv0_node124 t) (inv0_node123 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node123 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim652 t) (inv0_claim11 t)

theorem inv0_claim654 (t : ℤ → Bool) :
    (inv0_node125 t) = ((inv0_node125 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node125 t) (inv0_node19 t) (inv0_node125 t) (inv0_node124 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node124 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim653 t) (inv0_claim11 t)

def inv0_node296 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node176 t

theorem inv0_shift245 (t : ℤ → Bool) :
    (inv0_node296 t) = (inv0_node126 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node126 (shiftInput false true t)) (inv0_node296 t) (inv0_node95 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node176 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift190 t) (inv0_shift30 t)

theorem inv0_claim655 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node125 t) && ! (inv0_node296 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node125 t) (inv0_node296 t) (inv0_node0 t) (inv0_node124 t) (inv0_node0 t) (inv0_node176 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim489 t) (inv0_claim55 t)

theorem inv0_claim656 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node126 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node126 t) (inv0_node99 t) (inv0_node0 t) (inv0_node95 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim548 t) (inv0_claim3 t)

theorem inv0_claim657 (t : ℤ → Bool) :
    (inv0_node126 t) = ((inv0_node126 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node126 t) (inv0_node19 t) (inv0_node126 t) (inv0_node95 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node95 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim551 t) (inv0_claim11 t)

theorem inv0_claim658 (t : ℤ → Bool) :
    (inv0_node283 t) = ((inv0_node127 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node127 t) (inv0_node99 t) (inv0_node283 t) (inv0_node1 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim61 t) (inv0_claim3 t)

def inv0_node297 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node283 t else inv0_node0 t

theorem inv0_claim659 (t : ℤ → Bool) :
    (inv0_node297 t) = ((inv0_node128 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node128 t) (inv0_node99 t) (inv0_node297 t) (inv0_node0 t) (inv0_node127 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node283 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim658 t)

theorem inv0_claim660 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node297 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node297 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t) (inv0_node283 t) (inv0_node127 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node127 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim562 t) (inv0_claim571 t)

def inv0_node298 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node0 t else inv0_node19 t

theorem inv0_claim661 (t : ℤ → Bool) :
    (inv0_node298 t) = ((inv0_node127 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node127 t) (inv0_node19 t) (inv0_node298 t) (inv0_node1 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim68 t) (inv0_claim11 t)

def inv0_node299 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node298 t else inv0_node0 t

theorem inv0_claim662 (t : ℤ → Bool) :
    (inv0_node299 t) = ((inv0_node128 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node128 t) (inv0_node19 t) (inv0_node299 t) (inv0_node0 t) (inv0_node127 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node298 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim661 t)

theorem inv0_shift246 (t : ℤ → Bool) :
    (inv0_node127 t) = (inv0_node119 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node119 (shiftInput false false t)) (inv0_node127 t) (inv0_node1 (shiftInput false false t)) (inv0_node21 (shiftInput false false t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift2 t) (inv0_shift20 t)

theorem inv0_claim663 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node298 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node298 t) (inv0_node127 t) (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim72 t) (inv0_claim55 t)

theorem inv0_claim664 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node299 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node299 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t) (inv0_node298 t) (inv0_node127 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node127 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim562 t) (inv0_claim663 t)

theorem inv0_claim665 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node299 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node299 t)

def inv0_node300 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node110 t

theorem inv0_claim666 (t : ℤ → Bool) :
    (inv0_node300 t) = ((inv0_node129 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node129 t) (inv0_node99 t) (inv0_node300 t) (inv0_node21 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim63 t) (inv0_claim3 t)

theorem inv0_claim667 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node300 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node300 t) (inv0_node21 t) (inv0_node0 t) (inv0_node110 t) (inv0_node0 t) (inv0_node21 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node21 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim66 t) (inv0_claim527 t)

def inv0_node301 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node94 t

theorem inv0_claim668 (t : ℤ → Bool) :
    (inv0_node301 t) = ((inv0_node129 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node129 t) (inv0_node19 t) (inv0_node301 t) (inv0_node21 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node94 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim70 t) (inv0_claim11 t)

theorem inv0_claim669 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node301 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node301 t)

theorem inv0_claim670 (t : ℤ → Bool) :
    (inv0_node130 t) = ((inv0_node130 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node130 t) (inv0_node99 t) (inv0_node130 t) (inv0_node10 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node10 t) (inv0_node0 t)
    (by rfl) (by rfl) (by rfl)
    (inv0_claim16 t) (inv0_claim1 t)

theorem inv0_claim671 (t : ℤ → Bool) :
    (inv0_node131 t) = ((inv0_node131 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node131 t) (inv0_node99 t) (inv0_node131 t) (inv0_node130 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node130 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim670 t) (inv0_claim3 t)

def inv0_node302 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node10 t

theorem inv0_shift247 (t : ℤ → Bool) :
    (inv0_node302 t) = (inv0_node122 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node122 (shiftInput false false t)) (inv0_node302 t) (inv0_node13 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node10 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift6 t) (inv0_shift3 t)

theorem inv0_claim672 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node131 t) && ! (inv0_node302 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node131 t) (inv0_node302 t) (inv0_node0 t) (inv0_node130 t) (inv0_node0 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim21 t) (inv0_claim55 t)

theorem inv0_claim673 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node130 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node130 t) (inv0_node19 t) (inv0_node0 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim17 t) (inv0_claim9 t)

theorem inv0_claim674 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node131 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node131 t) (inv0_node19 t) (inv0_node0 t) (inv0_node130 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim673 t) (inv0_claim11 t)

theorem inv0_claim675 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node132 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node132 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node108 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim591 t)

theorem inv0_shift248 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node133 (shiftInput false false t)) := by
  exact inv0_shift3 t

theorem inv0_shift249 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node134 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node134 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 (shiftInput false false t)) (inv0_node133 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift3 t) (inv0_shift248 t)

theorem inv0_claim676 (t : ℤ → Bool) :
    (inv0_node132 t) = ((inv0_node132 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node132 t) (inv0_node19 t) (inv0_node132 t) (inv0_node0 t) (inv0_node108 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node108 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim593 t)

theorem inv0_shift250 (t : ℤ → Bool) :
    (inv0_node9 t) = (inv0_node11 (shiftInput false true t)) := by
  exact bool_unary_split (t (-2)) (inv0_node11 (shiftInput false true t)) (inv0_node9 t) (inv0_node1 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift11 t) (inv0_shift30 t)

theorem inv0_shift251 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node105 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node105 (shiftInput false true t)) (inv0_node73 t) (inv0_node0 (shiftInput false true t)) (inv0_node11 (shiftInput false true t)) (inv0_node0 t) (inv0_node9 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift250 t)

theorem inv0_shift252 (t : ℤ → Bool) :
    (inv0_node73 t) = (inv0_node133 (shiftInput false true t)) := by
  exact inv0_shift251 t

def inv0_node303 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node73 t else inv0_node0 t

theorem inv0_shift253 (t : ℤ → Bool) :
    (inv0_node303 t) = (inv0_node134 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node134 (shiftInput false true t)) (inv0_node303 t) (inv0_node0 (shiftInput false true t)) (inv0_node133 (shiftInput false true t)) (inv0_node0 t) (inv0_node73 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift252 t)

theorem inv0_claim677 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node132 t) && ! (inv0_node303 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node132 t) (inv0_node303 t) (inv0_node0 t) (inv0_node0 t) (inv0_node108 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim595 t)

theorem inv0_claim678 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node133 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node133 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node105 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim583 t)

theorem inv0_claim679 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node134 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node134 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node133 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim678 t)

theorem inv0_claim680 (t : ℤ → Bool) :
    (inv0_node133 t) = ((inv0_node133 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node133 t) (inv0_node19 t) (inv0_node133 t) (inv0_node0 t) (inv0_node105 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node105 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim586 t)

theorem inv0_claim681 (t : ℤ → Bool) :
    (inv0_node134 t) = ((inv0_node134 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node134 t) (inv0_node19 t) (inv0_node134 t) (inv0_node0 t) (inv0_node133 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node133 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim680 t)

theorem inv0_shift254 (t : ℤ → Bool) :
    (inv0_node11 t) = (inv0_node135 (shiftInput false false t)) := by
  exact inv0_shift204 t

def inv0_node304 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node11 t else inv0_node0 t

theorem inv0_shift255 (t : ℤ → Bool) :
    (inv0_node304 t) = (inv0_node136 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node136 (shiftInput false false t)) (inv0_node304 t) (inv0_node0 (shiftInput false false t)) (inv0_node135 (shiftInput false false t)) (inv0_node0 t) (inv0_node11 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift254 t)

def inv0_node305 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node304 t else inv0_node0 t

theorem inv0_shift256 (t : ℤ → Bool) :
    (inv0_node305 t) = (inv0_node137 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node137 (shiftInput false false t)) (inv0_node305 t) (inv0_node0 (shiftInput false false t)) (inv0_node136 (shiftInput false false t)) (inv0_node0 t) (inv0_node304 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift255 t)

theorem inv0_claim682 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node133 t) && ! (inv0_node304 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node133 t) (inv0_node304 t) (inv0_node0 t) (inv0_node0 t) (inv0_node105 t) (inv0_node0 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim31 t)

theorem inv0_claim683 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node134 t) && ! (inv0_node305 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node134 t) (inv0_node305 t) (inv0_node0 t) (inv0_node0 t) (inv0_node133 t) (inv0_node0 t) (inv0_node304 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim682 t)

theorem inv0_shift257 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node138 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node138 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 (shiftInput false false t)) (inv0_node28 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift3 t) (inv0_shift229 t)

theorem inv0_shift258 (t : ℤ → Bool) :
    (inv0_node88 t) = (inv0_node138 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node138 (shiftInput false true t)) (inv0_node88 t) (inv0_node0 (shiftInput false true t)) (inv0_node28 (shiftInput false true t)) (inv0_node0 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift31 t)

theorem inv0_claim684 (t : ℤ → Bool) :
    (inv0_node135 t) = ((inv0_node135 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node135 t) (inv0_node99 t) (inv0_node135 t) (inv0_node99 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim567 t) (inv0_claim3 t)

theorem inv0_claim685 (t : ℤ → Bool) :
    (inv0_node136 t) = ((inv0_node136 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node136 t) (inv0_node99 t) (inv0_node136 t) (inv0_node0 t) (inv0_node135 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node135 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim684 t)

theorem inv0_claim686 (t : ℤ → Bool) :
    (inv0_node137 t) = ((inv0_node137 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node137 t) (inv0_node99 t) (inv0_node137 t) (inv0_node0 t) (inv0_node136 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node136 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim685 t)

theorem inv0_claim687 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node137 t) && ! (inv0_node88 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node137 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t) (inv0_node136 t) (inv0_node88 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node88 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim556 t) (inv0_claim520 t)

theorem inv0_claim688 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node135 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node135 t) (inv0_node19 t) (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim573 t) (inv0_claim11 t)

theorem inv0_claim689 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node136 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node136 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node135 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim688 t)

theorem inv0_claim690 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node137 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node137 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node136 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim689 t)

def inv0_node306 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node111 t else inv0_node0 t

theorem inv0_claim691 (t : ℤ → Bool) :
    (inv0_node306 t) = ((inv0_node138 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node138 t) (inv0_node99 t) (inv0_node306 t) (inv0_node0 t) (inv0_node28 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node111 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim92 t)

theorem inv0_claim692 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node111 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node111 t) (inv0_node127 t) (inv0_node0 t) (inv0_node110 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim94 t) (inv0_claim55 t)

theorem inv0_claim693 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node306 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node306 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t) (inv0_node111 t) (inv0_node127 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node127 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim562 t) (inv0_claim692 t)

theorem inv0_claim694 (t : ℤ → Bool) :
    (inv0_node96 t) = ((inv0_node138 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node138 t) (inv0_node19 t) (inv0_node96 t) (inv0_node0 t) (inv0_node28 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node95 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim99 t)

theorem inv0_shift259 (t : ℤ → Bool) :
    (inv0_node44 t) = (inv0_node157 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node157 (shiftInput false false t)) (inv0_node44 t) (inv0_node26 (shiftInput false false t)) (inv0_node25 (shiftInput false false t)) (inv0_node25 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift60 t) (inv0_shift24 t)

theorem inv0_shift260 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node26 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node26 (shiftInput false true t)) (inv0_node0 t) (inv0_node25 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift174 t) (inv0_shift30 t)

theorem inv0_shift261 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node157 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node157 (shiftInput false true t)) (inv0_node0 t) (inv0_node26 (shiftInput false true t)) (inv0_node25 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift260 t) (inv0_shift174 t)

theorem inv0_claim695 (t : ℤ → Bool) :
    (inv0_node139 t) = ((inv0_node139 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node139 t) (inv0_node99 t) (inv0_node139 t) (inv0_node0 t) (inv0_node17 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node17 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim53 t)

def inv0_node307 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node16 t else inv0_node0 t

theorem inv0_shift262 (t : ℤ → Bool) :
    (inv0_node307 t) = (inv0_node140 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node140 (shiftInput false false t)) (inv0_node307 t) (inv0_node0 (shiftInput false false t)) (inv0_node86 (shiftInput false false t)) (inv0_node0 t) (inv0_node16 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift115 t)

theorem inv0_claim696 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node139 t) && ! (inv0_node307 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node139 t) (inv0_node307 t) (inv0_node0 t) (inv0_node0 t) (inv0_node17 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim50 t)

theorem inv0_claim697 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node139 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node139 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node17 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim57 t)

theorem inv0_shift263 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node140 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node140 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 (shiftInput false true t)) (inv0_node86 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift30 t) (inv0_shift202 t)

theorem inv0_shift264 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node141 (shiftInput false false t)) := by
  exact inv0_shift5 t

theorem inv0_shift265 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node142 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node142 (shiftInput false false t)) (inv0_node10 t) (inv0_node141 (shiftInput false false t)) (inv0_node13 (shiftInput false false t)) (inv0_node10 t) (inv0_node10 t)
    (by rfl) (bool_select_same (t 1) (inv0_node10 t)) (inv0_shift264 t) (inv0_shift6 t)

theorem inv0_shift266 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node141 (shiftInput false true t)) := by
  exact inv0_shift82 t

def inv0_node308 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node0 t else inv0_node15 t

theorem inv0_shift267 (t : ℤ → Bool) :
    (inv0_node308 t) = (inv0_node142 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node142 (shiftInput false true t)) (inv0_node308 t) (inv0_node141 (shiftInput false true t)) (inv0_node13 (shiftInput false true t)) (inv0_node15 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift266 t) (inv0_shift237 t)

theorem inv0_claim698 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node308 t)) := by
  rfl

theorem inv0_claim699 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node140 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node140 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node86 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim518 t)

theorem inv0_shift268 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node143 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node143 (shiftInput false false t)) (inv0_node0 t) (inv0_node110 (shiftInput false false t)) (inv0_node94 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift223 t) (inv0_shift186 t)

theorem inv0_shift269 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node144 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node144 (shiftInput false false t)) (inv0_node0 t) (inv0_node143 (shiftInput false false t)) (inv0_node28 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift268 t) (inv0_shift229 t)

theorem inv0_claim700 (t : ℤ → Bool) :
    (inv0_node140 t) = ((inv0_node140 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node140 t) (inv0_node19 t) (inv0_node140 t) (inv0_node0 t) (inv0_node86 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node86 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim521 t)

def inv0_node309 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node16 t else inv0_node11 t

theorem inv0_shift270 (t : ℤ → Bool) :
    (inv0_node309 t) = (inv0_node143 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node143 (shiftInput false true t)) (inv0_node309 t) (inv0_node110 (shiftInput false true t)) (inv0_node94 (shiftInput false true t)) (inv0_node11 t) (inv0_node16 t)
    (by rfl) (by rfl) (inv0_shift220 t) (inv0_shift189 t)

def inv0_node310 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node25 t else inv0_node309 t

theorem inv0_shift271 (t : ℤ → Bool) :
    (inv0_node310 t) = (inv0_node144 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node144 (shiftInput false true t)) (inv0_node310 t) (inv0_node143 (shiftInput false true t)) (inv0_node28 (shiftInput false true t)) (inv0_node309 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift270 t) (inv0_shift31 t)

theorem inv0_claim701 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node309 t)) := by
  rfl

theorem inv0_claim702 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node140 t) && ! (inv0_node310 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node140 t) (inv0_node310 t) (inv0_node0 t) (inv0_node0 t) (inv0_node86 t) (inv0_node309 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim701 t) (inv0_claim176 t)

theorem inv0_claim703 (t : ℤ → Bool) :
    (inv0_node141 t) = ((inv0_node141 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node141 t) (inv0_node99 t) (inv0_node141 t) (inv0_node12 t) (inv0_node17 t) (inv0_node99 t) (inv0_node99 t) (inv0_node12 t) (inv0_node17 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim32 t) (inv0_claim53 t)

theorem inv0_claim704 (t : ℤ → Bool) :
    (inv0_node142 t) = ((inv0_node142 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node142 t) (inv0_node99 t) (inv0_node142 t) (inv0_node141 t) (inv0_node13 t) (inv0_node99 t) (inv0_node99 t) (inv0_node141 t) (inv0_node13 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim703 t) (inv0_claim33 t)

theorem inv0_claim705 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node141 t) && ! (inv0_node309 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node141 t) (inv0_node309 t) (inv0_node0 t) (inv0_node12 t) (inv0_node17 t) (inv0_node11 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim29 t) (inv0_claim50 t)

theorem inv0_claim706 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node12 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node12 t)

theorem inv0_claim707 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node13 t) && ! (inv0_node25 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node13 t) (inv0_node25 t) (inv0_node0 t) (inv0_node12 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim706 t) (inv0_claim55 t)

theorem inv0_claim708 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node142 t) && ! (inv0_node310 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node142 t) (inv0_node310 t) (inv0_node0 t) (inv0_node141 t) (inv0_node13 t) (inv0_node309 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim705 t) (inv0_claim707 t)

theorem inv0_claim709 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node141 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node141 t) (inv0_node19 t) (inv0_node0 t) (inv0_node12 t) (inv0_node17 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim35 t) (inv0_claim57 t)

theorem inv0_claim710 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node142 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node142 t) (inv0_node19 t) (inv0_node0 t) (inv0_node141 t) (inv0_node13 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim709 t) (inv0_claim36 t)

theorem inv0_shift272 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node149 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node149 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 (shiftInput false false t)) (inv0_node94 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift3 t) (inv0_shift186 t)

theorem inv0_shift273 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node150 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node150 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 (shiftInput false false t)) (inv0_node149 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift3 t) (inv0_shift272 t)

theorem inv0_claim711 (t : ℤ → Bool) :
    (inv0_node111 t) = ((inv0_node143 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node143 t) (inv0_node99 t) (inv0_node111 t) (inv0_node110 t) (inv0_node94 t) (inv0_node99 t) (inv0_node99 t) (inv0_node110 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim597 t) (inv0_claim547 t)

theorem inv0_claim712 (t : ℤ → Bool) :
    (inv0_node111 t) = ((inv0_node144 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node144 t) (inv0_node99 t) (inv0_node111 t) (inv0_node143 t) (inv0_node28 t) (inv0_node99 t) (inv0_node99 t) (inv0_node111 t) (inv0_node111 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (bool_select_same (t 3) (inv0_node111 t))
    (inv0_claim711 t) (inv0_claim92 t)

theorem inv0_claim713 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node201 t)) := by
  rfl

theorem inv0_claim714 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node111 t) && ! (inv0_node202 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node111 t) (inv0_node202 t) (inv0_node0 t) (inv0_node110 t) (inv0_node0 t) (inv0_node1 t) (inv0_node201 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim94 t) (inv0_claim713 t)

theorem inv0_claim715 (t : ℤ → Bool) :
    (inv0_node149 t) = ((inv0_node143 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node143 t) (inv0_node19 t) (inv0_node149 t) (inv0_node110 t) (inv0_node94 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node94 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim602 t) (inv0_claim550 t)

def inv0_node311 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node95 t else inv0_node149 t

theorem inv0_claim716 (t : ℤ → Bool) :
    (inv0_node311 t) = ((inv0_node144 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node144 t) (inv0_node19 t) (inv0_node311 t) (inv0_node143 t) (inv0_node28 t) (inv0_node19 t) (inv0_node19 t) (inv0_node149 t) (inv0_node95 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim715 t) (inv0_claim99 t)

theorem inv0_shift274 (t : ℤ → Bool) :
    (inv0_node1 t) = (inv0_node47 (shiftInput false true t)) := by
  exact inv0_shift11 t

theorem inv0_shift275 (t : ℤ → Bool) :
    (inv0_node21 t) = (inv0_node48 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node48 (shiftInput false true t)) (inv0_node21 t) (inv0_node25 (shiftInput false true t)) (inv0_node47 (shiftInput false true t)) (inv0_node0 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift174 t) (inv0_shift274 t)

theorem inv0_shift276 (t : ℤ → Bool) :
    (inv0_node21 t) = (inv0_node49 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node49 (shiftInput false true t)) (inv0_node21 t) (inv0_node44 (shiftInput false true t)) (inv0_node48 (shiftInput false true t)) (inv0_node21 t) (inv0_node21 t)
    (by rfl) (bool_select_same (t 2) (inv0_node21 t)) (inv0_shift212 t) (inv0_shift275 t)

theorem inv0_claim717 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node149 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node149 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t) (inv0_node94 t) (inv0_node21 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node21 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim527 t) (inv0_claim73 t)

theorem inv0_claim718 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node95 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node95 t) (inv0_node21 t) (inv0_node0 t) (inv0_node94 t) (inv0_node0 t) (inv0_node21 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node21 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim73 t) (inv0_claim527 t)

theorem inv0_claim719 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node311 t) && ! (inv0_node21 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node311 t) (inv0_node21 t) (inv0_node0 t) (inv0_node149 t) (inv0_node95 t) (inv0_node21 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node21 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim717 t) (inv0_claim718 t)

theorem inv0_claim720 (t : ℤ → Bool) :
    (inv0_node145 t) = ((inv0_node145 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node145 t) (inv0_node99 t) (inv0_node145 t) (inv0_node114 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node114 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim614 t) (inv0_claim3 t)

theorem inv0_claim721 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node145 t) && ! (inv0_node308 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node145 t) (inv0_node308 t) (inv0_node0 t) (inv0_node114 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim42 t) (inv0_claim55 t)

theorem inv0_claim722 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node145 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node145 t) (inv0_node19 t) (inv0_node0 t) (inv0_node114 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim617 t) (inv0_claim11 t)

theorem inv0_shift277 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node147 (shiftInput false false t)) := by
  exact inv0_shift3 t

theorem inv0_shift278 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node148 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node148 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 (shiftInput false false t)) (inv0_node147 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift3 t) (inv0_shift277 t)

theorem inv0_claim723 (t : ℤ → Bool) :
    (inv0_node146 t) = ((inv0_node146 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node146 t) (inv0_node99 t) (inv0_node146 t) (inv0_node0 t) (inv0_node120 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node120 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim640 t)

theorem inv0_shift279 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node123 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node123 (shiftInput false true t)) (inv0_node45 t) (inv0_node0 (shiftInput false true t)) (inv0_node16 (shiftInput false true t)) (inv0_node0 t) (inv0_node14 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift81 t)

theorem inv0_shift280 (t : ℤ → Bool) :
    (inv0_node45 t) = (inv0_node147 (shiftInput false true t)) := by
  exact inv0_shift279 t

def inv0_node312 (t : ℤ → Bool) : Bool :=
  if t 1 then inv0_node45 t else inv0_node0 t

theorem inv0_shift281 (t : ℤ → Bool) :
    (inv0_node312 t) = (inv0_node148 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node148 (shiftInput false true t)) (inv0_node312 t) (inv0_node0 (shiftInput false true t)) (inv0_node147 (shiftInput false true t)) (inv0_node0 t) (inv0_node45 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift280 t)

theorem inv0_claim724 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node146 t) && ! (inv0_node312 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node146 t) (inv0_node312 t) (inv0_node0 t) (inv0_node0 t) (inv0_node120 t) (inv0_node0 t) (inv0_node45 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim320 t)

theorem inv0_claim725 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node146 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node146 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node120 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim643 t)

theorem inv0_claim726 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node147 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node147 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node123 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim649 t)

theorem inv0_claim727 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node148 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node148 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node147 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim726 t)

theorem inv0_claim728 (t : ℤ → Bool) :
    (inv0_node147 t) = ((inv0_node147 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node147 t) (inv0_node19 t) (inv0_node147 t) (inv0_node0 t) (inv0_node123 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node123 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim652 t)

theorem inv0_claim729 (t : ℤ → Bool) :
    (inv0_node148 t) = ((inv0_node148 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node148 t) (inv0_node19 t) (inv0_node148 t) (inv0_node0 t) (inv0_node147 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node147 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim728 t)

theorem inv0_shift282 (t : ℤ → Bool) :
    (inv0_node307 t) = (inv0_node149 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node149 (shiftInput false true t)) (inv0_node307 t) (inv0_node0 (shiftInput false true t)) (inv0_node94 (shiftInput false true t)) (inv0_node0 t) (inv0_node16 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift189 t)

def inv0_node313 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node307 t else inv0_node0 t

theorem inv0_shift283 (t : ℤ → Bool) :
    (inv0_node313 t) = (inv0_node150 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node150 (shiftInput false true t)) (inv0_node313 t) (inv0_node0 (shiftInput false true t)) (inv0_node149 (shiftInput false true t)) (inv0_node0 t) (inv0_node307 t)
    (by rfl) (by rfl) (inv0_shift30 t) (inv0_shift282 t)

theorem inv0_claim730 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node147 t) && ! (inv0_node307 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node147 t) (inv0_node307 t) (inv0_node0 t) (inv0_node0 t) (inv0_node123 t) (inv0_node0 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim476 t)

theorem inv0_claim731 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node148 t) && ! (inv0_node313 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node148 t) (inv0_node313 t) (inv0_node0 t) (inv0_node0 t) (inv0_node147 t) (inv0_node0 t) (inv0_node307 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim730 t)

theorem inv0_claim732 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node313 t)) := by
  rfl

theorem inv0_claim733 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node149 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node149 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node94 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim547 t)

theorem inv0_claim734 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node150 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node150 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node149 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim733 t)

theorem inv0_claim735 (t : ℤ → Bool) :
    (inv0_node149 t) = ((inv0_node149 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node149 t) (inv0_node19 t) (inv0_node149 t) (inv0_node0 t) (inv0_node94 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node94 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim550 t)

theorem inv0_claim736 (t : ℤ → Bool) :
    (inv0_node150 t) = ((inv0_node150 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node150 t) (inv0_node19 t) (inv0_node150 t) (inv0_node0 t) (inv0_node149 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node149 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim735 t)

theorem inv0_shift284 (t : ℤ → Bool) :
    (inv0_node89 t) = (inv0_node151 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node151 (shiftInput false false t)) (inv0_node89 t) (inv0_node0 (shiftInput false false t)) (inv0_node88 (shiftInput false false t)) (inv0_node0 t) (inv0_node21 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift25 t)

theorem inv0_claim737 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node149 t) && ! (inv0_node89 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node149 t) (inv0_node89 t) (inv0_node0 t) (inv0_node0 t) (inv0_node94 t) (inv0_node0 t) (inv0_node21 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim73 t)

theorem inv0_claim738 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node150 t) && ! (inv0_node89 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node150 t) (inv0_node89 t) (inv0_node0 t) (inv0_node0 t) (inv0_node149 t) (inv0_node89 t) (inv0_node89 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node89 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim607 t) (inv0_claim737 t)

theorem inv0_shift285 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node151 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node151 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 (shiftInput false true t)) (inv0_node88 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift30 t) (inv0_shift193 t)

theorem inv0_claim739 (t : ℤ → Bool) :
    (inv0_node137 t) = ((inv0_node151 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node151 t) (inv0_node99 t) (inv0_node137 t) (inv0_node0 t) (inv0_node88 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node136 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim525 t)

theorem inv0_claim740 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node210 t)) := by
  rfl

theorem inv0_claim741 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node136 t) && ! (inv0_node210 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node136 t) (inv0_node210 t) (inv0_node0 t) (inv0_node0 t) (inv0_node135 t) (inv0_node201 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim713 t) (inv0_claim120 t)

theorem inv0_claim742 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node137 t) && ! (inv0_node210 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node137 t) (inv0_node210 t) (inv0_node0 t) (inv0_node0 t) (inv0_node136 t) (inv0_node210 t) (inv0_node210 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node210 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim740 t) (inv0_claim741 t)

def inv0_node314 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node140 t else inv0_node0 t

theorem inv0_claim743 (t : ℤ → Bool) :
    (inv0_node314 t) = ((inv0_node151 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node151 t) (inv0_node19 t) (inv0_node314 t) (inv0_node0 t) (inv0_node88 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node140 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim526 t)

theorem inv0_shift286 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node50 (shiftInput false true t)) := by
  exact inv0_shift30 t

theorem inv0_shift287 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node51 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node51 (shiftInput false true t)) (inv0_node0 t) (inv0_node25 (shiftInput false true t)) (inv0_node50 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift174 t) (inv0_shift286 t)

theorem inv0_shift288 (t : ℤ → Bool) :
    (inv0_node25 t) = (inv0_node52 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node52 (shiftInput false true t)) (inv0_node25 t) (inv0_node1 (shiftInput false true t)) (inv0_node25 (shiftInput false true t)) (inv0_node1 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift11 t) (inv0_shift174 t)

theorem inv0_shift289 (t : ℤ → Bool) :
    (inv0_node88 t) = (inv0_node53 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node53 (shiftInput false true t)) (inv0_node88 t) (inv0_node51 (shiftInput false true t)) (inv0_node52 (shiftInput false true t)) (inv0_node0 t) (inv0_node25 t)
    (by rfl) (by rfl) (inv0_shift287 t) (inv0_shift288 t)

theorem inv0_claim744 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node314 t) && ! (inv0_node88 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node314 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t) (inv0_node140 t) (inv0_node88 t) (inv0_node88 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node88 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim556 t) (inv0_claim560 t)

theorem inv0_claim745 (t : ℤ → Bool) :
    (inv0_node152 t) = ((inv0_node152 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node152 t) (inv0_node99 t) (inv0_node152 t) (inv0_node0 t) (inv0_node103 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node103 t)
    (by rfl) (bool_select_same (t 1) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim578 t)

theorem inv0_shift290 (t : ℤ → Bool) :
    (inv0_node303 t) = (inv0_node153 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node153 (shiftInput false false t)) (inv0_node303 t) (inv0_node0 (shiftInput false false t)) (inv0_node106 (shiftInput false false t)) (inv0_node0 t) (inv0_node73 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift215 t)

theorem inv0_claim746 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node152 t) && ! (inv0_node303 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node152 t) (inv0_node303 t) (inv0_node0 t) (inv0_node0 t) (inv0_node103 t) (inv0_node0 t) (inv0_node73 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim423 t)

theorem inv0_claim747 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node152 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 1) (inv0_node152 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node103 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node19 t)) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim581 t)

theorem inv0_shift291 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node153 (shiftInput false true t)) := by
  exact bool_unary_split (t 1) (inv0_node153 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 (shiftInput false true t)) (inv0_node106 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 1) (inv0_node0 t)) (inv0_shift30 t) (inv0_shift217 t)

theorem inv0_claim748 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node153 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node153 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node106 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim3 t) (inv0_claim584 t)

theorem inv0_claim749 (t : ℤ → Bool) :
    (inv0_node153 t) = ((inv0_node153 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node153 t) (inv0_node19 t) (inv0_node153 t) (inv0_node0 t) (inv0_node106 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node106 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (by rfl)
    (inv0_claim11 t) (inv0_claim587 t)

theorem inv0_shift292 (t : ℤ → Bool) :
    (inv0_node281 t) = (inv0_node154 (shiftInput false false t)) := by
  exact bool_unary_split (t 1) (inv0_node154 (shiftInput false false t)) (inv0_node281 t) (inv0_node135 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node11 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift254 t) (inv0_shift3 t)

def inv0_node315 (t : ℤ → Bool) : Bool :=
  if t 2 then inv0_node281 t else inv0_node0 t

theorem inv0_shift293 (t : ℤ → Bool) :
    (inv0_node315 t) = (inv0_node155 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node155 (shiftInput false false t)) (inv0_node315 t) (inv0_node0 (shiftInput false false t)) (inv0_node154 (shiftInput false false t)) (inv0_node0 t) (inv0_node281 t)
    (by rfl) (by rfl) (inv0_shift3 t) (inv0_shift292 t)

theorem inv0_claim750 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node153 t) && ! (inv0_node315 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node153 t) (inv0_node315 t) (inv0_node0 t) (inv0_node0 t) (inv0_node106 t) (inv0_node0 t) (inv0_node281 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim589 t)

theorem inv0_shift294 (t : ℤ → Bool) :
    (inv0_node26 t) = (inv0_node156 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node156 (shiftInput false false t)) (inv0_node26 t) (inv0_node26 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node25 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift60 t) (inv0_shift3 t)

theorem inv0_claim751 (t : ℤ → Bool) :
    (inv0_node154 t) = ((inv0_node154 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node154 t) (inv0_node99 t) (inv0_node154 t) (inv0_node135 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node135 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node99 t)) (by rfl)
    (inv0_claim684 t) (inv0_claim3 t)

theorem inv0_claim752 (t : ℤ → Bool) :
    (inv0_node155 t) = ((inv0_node155 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node155 t) (inv0_node99 t) (inv0_node155 t) (inv0_node0 t) (inv0_node154 t) (inv0_node99 t) (inv0_node99 t) (inv0_node0 t) (inv0_node154 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim3 t) (inv0_claim751 t)

theorem inv0_claim753 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node154 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 2) (inv0_node154 t) (inv0_node19 t) (inv0_node0 t) (inv0_node135 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node19 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim688 t) (inv0_claim11 t)

theorem inv0_claim754 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node155 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node155 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node154 t) (inv0_node19 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim11 t) (inv0_claim753 t)

theorem inv0_shift295 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node156 (shiftInput false true t)) := by
  exact bool_unary_split (t 2) (inv0_node156 (shiftInput false true t)) (inv0_node0 t) (inv0_node26 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift260 t) (inv0_shift30 t)

theorem inv0_shift296 (t : ℤ → Bool) :
    (inv0_node0 t) = (inv0_node29 (shiftInput false false t)) := by
  exact bool_unary_split (t 2) (inv0_node29 (shiftInput false false t)) (inv0_node0 t) (inv0_node28 (shiftInput false false t)) (inv0_node0 (shiftInput false false t)) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node0 t)) (inv0_shift229 t) (inv0_shift3 t)

def inv0_node316 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node154 t

theorem inv0_claim755 (t : ℤ → Bool) :
    (inv0_node316 t) = ((inv0_node156 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node156 t) (inv0_node99 t) (inv0_node316 t) (inv0_node26 t) (inv0_node0 t) (inv0_node99 t) (inv0_node99 t) (inv0_node154 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim82 t) (inv0_claim3 t)

theorem inv0_claim756 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node316 t) && ! (inv0_node26 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node316 t) (inv0_node26 t) (inv0_node0 t) (inv0_node154 t) (inv0_node0 t) (inv0_node26 t) (inv0_node26 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node26 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim86 t) (inv0_claim84 t)

def inv0_node317 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node0 t else inv0_node98 t

theorem inv0_claim757 (t : ℤ → Bool) :
    (inv0_node317 t) = ((inv0_node156 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node156 t) (inv0_node19 t) (inv0_node317 t) (inv0_node26 t) (inv0_node0 t) (inv0_node19 t) (inv0_node19 t) (inv0_node98 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim89 t) (inv0_claim11 t)

theorem inv0_claim758 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node98 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node98 t) (inv0_node127 t) (inv0_node0 t) (inv0_node86 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim139 t) (inv0_claim55 t)

theorem inv0_claim759 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node317 t) && ! (inv0_node127 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node317 t) (inv0_node127 t) (inv0_node0 t) (inv0_node98 t) (inv0_node0 t) (inv0_node127 t) (inv0_node127 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node127 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim758 t) (inv0_claim562 t)

theorem inv0_claim760 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node289 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node289 t)

theorem inv0_claim761 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node206 t) && ! (inv0_node44 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node206 t) (inv0_node44 t) (inv0_node0 t) (inv0_node86 t) (inv0_node19 t) (inv0_node25 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim176 t) (inv0_claim72 t)

theorem inv0_claim762 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node290 t) && ! (inv0_node44 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node290 t) (inv0_node44 t) (inv0_node0 t) (inv0_node206 t) (inv0_node0 t) (inv0_node44 t) (inv0_node44 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node44 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim761 t) (inv0_claim611 t)

def inv0_node318 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node135 t else inv0_node154 t

theorem inv0_claim763 (t : ℤ → Bool) :
    (inv0_node318 t) = ((inv0_node157 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node157 t) (inv0_node99 t) (inv0_node318 t) (inv0_node26 t) (inv0_node25 t) (inv0_node99 t) (inv0_node99 t) (inv0_node154 t) (inv0_node135 t)
    (by rfl) (bool_select_same (t 3) (inv0_node99 t)) (by rfl)
    (inv0_claim82 t) (inv0_claim81 t)

theorem inv0_claim764 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node318 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node318 t)

def inv0_node319 (t : ℤ → Bool) : Bool :=
  if t 3 then inv0_node86 t else inv0_node98 t

theorem inv0_claim765 (t : ℤ → Bool) :
    (inv0_node319 t) = ((inv0_node157 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 3) (inv0_node157 t) (inv0_node19 t) (inv0_node319 t) (inv0_node26 t) (inv0_node25 t) (inv0_node19 t) (inv0_node19 t) (inv0_node98 t) (inv0_node86 t)
    (by rfl) (bool_select_same (t 3) (inv0_node19 t)) (by rfl)
    (inv0_claim89 t) (inv0_claim88 t)

theorem inv0_claim766 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node98 t) && ! (inv0_node25 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node98 t) (inv0_node25 t) (inv0_node0 t) (inv0_node86 t) (inv0_node0 t) (inv0_node25 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 2) (inv0_node25 t)) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim176 t) (inv0_claim95 t)

theorem inv0_claim767 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node319 t) && ! (inv0_node25 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 3) (inv0_node319 t) (inv0_node25 t) (inv0_node0 t) (inv0_node98 t) (inv0_node86 t) (inv0_node25 t) (inv0_node25 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 3) (inv0_node25 t)) (bool_select_same (t 3) (inv0_node0 t))
    (inv0_claim766 t) (inv0_claim176 t)

theorem inv0_claim768 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node4 t) (inv0_node39 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim407 t) (inv0_claim442 t)

theorem inv0_claim769 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node225 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t) (inv0_node4 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim291 t) (inv0_claim768 t)

theorem inv0_shift297 (t : ℤ → Bool) :
    (inv0_node259 t) = (inv0_node161 (shiftInput true true t)) := by
  exact inv0_shift159 t

theorem inv0_claim770 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node63 t) (inv0_node259 t) (inv0_node0 t) (inv0_node62 t) (inv0_node0 t) (inv0_node9 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim238 t) (inv0_claim442 t)

theorem inv0_claim771 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node230 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t) (inv0_node63 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim458 t) (inv0_claim770 t)

theorem inv0_claim772 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node261 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node261 t)

theorem inv0_claim773 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node262 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node262 t)

theorem inv0_claim774 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node9 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node9 t)

theorem inv0_claim775 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node62 t) && ! (inv0_node62 t)) := by
  exact bool_and_not_self (inv0_node62 t)

theorem inv0_claim776 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node78 t) && ! (inv0_node263 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node78 t) (inv0_node263 t) (inv0_node0 t) (inv0_node9 t) (inv0_node62 t) (inv0_node1 t) (inv0_node62 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim774 t) (inv0_claim775 t)

theorem inv0_claim777 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node262 t) && ! (inv0_node263 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node262 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t) (inv0_node78 t) (inv0_node263 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node263 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim480 t) (inv0_claim776 t)

theorem inv0_claim778 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node262 t) && ! (inv0_node264 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node262 t) (inv0_node264 t) (inv0_node0 t) (inv0_node262 t) (inv0_node262 t) (inv0_node1 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node262 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim773 t) (inv0_claim777 t)

theorem inv0_claim779 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node262 t) && ! (inv0_node265 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node262 t) (inv0_node265 t) (inv0_node0 t) (inv0_node262 t) (inv0_node262 t) (inv0_node264 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node262 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim778 t) (inv0_claim777 t)

theorem inv0_claim780 (t : ℤ → Bool) :
    (inv0_node158 t) = ((inv0_node158 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node158 t)

theorem inv0_claim781 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node158 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node158 t)

def inv0_node320 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node158 t

theorem inv0_claim782 (t : ℤ → Bool) :
    (inv0_node320 t) = ((inv0_node158 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node158 t) (inv0_node99 t) (inv0_node320 t) (inv0_node158 t) (inv0_node158 t) (inv0_node1 t) (inv0_node0 t) (inv0_node158 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node158 t)) (by rfl) (by rfl)
    (inv0_claim780 t) (inv0_claim781 t)

theorem inv0_claim783 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node158 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node158 t) (inv0_node11 t) (inv0_node0 t) (inv0_node81 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim499 t) (inv0_claim55 t)

theorem inv0_claim784 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node320 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node320 t) (inv0_node11 t) (inv0_node0 t) (inv0_node158 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim783 t) (inv0_claim28 t)

def inv0_node321 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node158 t else inv0_node0 t

theorem inv0_claim785 (t : ℤ → Bool) :
    (inv0_node321 t) = ((inv0_node158 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node158 t) (inv0_node19 t) (inv0_node321 t) (inv0_node158 t) (inv0_node158 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node158 t)
    (bool_select_same (t 0) (inv0_node158 t)) (by rfl) (by rfl)
    (inv0_claim781 t) (inv0_claim780 t)

theorem inv0_claim786 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node321 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node321 t)

theorem inv0_claim787 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node59 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node59 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim407 t)

theorem inv0_claim788 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node222 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node222 t) (inv0_node16 t) (inv0_node0 t) (inv0_node59 t) (inv0_node0 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim787 t) (inv0_claim49 t)

theorem inv0_claim789 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node130 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node130 t)

theorem inv0_shift298 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node12 (shiftInput false true t)) := by
  exact bool_unary_split (t (-1)) (inv0_node12 (shiftInput false true t)) (inv0_node10 t) (inv0_node11 (shiftInput false true t)) (inv0_node0 (shiftInput false true t)) (inv0_node9 t) (inv0_node0 t)
    (by rfl) (by rfl) (inv0_shift250 t) (inv0_shift30 t)

theorem inv0_shift299 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node80 (shiftInput false true t)) := by
  exact inv0_shift298 t

theorem inv0_claim790 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node175 t) && ! (inv0_node10 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node175 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t) (inv0_node10 t) (inv0_node10 t) (inv0_node10 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node10 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim20 t) (inv0_claim19 t)

theorem inv0_claim791 (t : ℤ → Bool) :
    (inv0_node159 t) = ((inv0_node159 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node159 t)

theorem inv0_claim792 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node159 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node159 t)

def inv0_node322 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node159 t

theorem inv0_claim793 (t : ℤ → Bool) :
    (inv0_node322 t) = ((inv0_node159 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node159 t) (inv0_node99 t) (inv0_node322 t) (inv0_node159 t) (inv0_node159 t) (inv0_node1 t) (inv0_node0 t) (inv0_node159 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node159 t)) (by rfl) (by rfl)
    (inv0_claim791 t) (inv0_claim792 t)

theorem inv0_claim794 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node159 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node159 t) (inv0_node11 t) (inv0_node0 t) (inv0_node84 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim511 t) (inv0_claim55 t)

theorem inv0_claim795 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node322 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node322 t) (inv0_node11 t) (inv0_node0 t) (inv0_node159 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim794 t) (inv0_claim28 t)

def inv0_node323 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node159 t else inv0_node0 t

theorem inv0_claim796 (t : ℤ → Bool) :
    (inv0_node323 t) = ((inv0_node159 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node159 t) (inv0_node19 t) (inv0_node323 t) (inv0_node159 t) (inv0_node159 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node159 t)
    (bool_select_same (t 0) (inv0_node159 t)) (by rfl) (by rfl)
    (inv0_claim792 t) (inv0_claim791 t)

theorem inv0_claim797 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node323 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node323 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node159 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim794 t)

theorem inv0_claim798 (t : ℤ → Bool) :
    (inv0_node160 t) = ((inv0_node160 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node160 t)

theorem inv0_claim799 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node160 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node160 t)

def inv0_node324 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node160 t

theorem inv0_claim800 (t : ℤ → Bool) :
    (inv0_node324 t) = ((inv0_node160 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node160 t) (inv0_node99 t) (inv0_node324 t) (inv0_node160 t) (inv0_node160 t) (inv0_node1 t) (inv0_node0 t) (inv0_node160 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node160 t)) (by rfl) (by rfl)
    (inv0_claim798 t) (inv0_claim799 t)

theorem inv0_shift300 (t : ℤ → Bool) :
    (inv0_node273 t) = (inv0_node84 (shiftInput true false t)) := by
  exact bool_unary_split (t (-1)) (inv0_node84 (shiftInput true false t)) (inv0_node273 t) (inv0_node61 (shiftInput true false t)) (inv0_node1 (shiftInput true false t)) (inv0_node14 t) (inv0_node1 t)
    (by rfl) (by rfl) (inv0_shift84 t) (inv0_shift0 t)

theorem inv0_shift301 (t : ℤ → Bool) :
    (inv0_node273 t) = (inv0_node159 (shiftInput true false t)) := by
  exact inv0_shift300 t

theorem inv0_claim801 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node160 t) && ! (inv0_node273 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node160 t) (inv0_node273 t) (inv0_node0 t) (inv0_node56 t) (inv0_node75 t) (inv0_node14 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim228 t) (inv0_claim449 t)

theorem inv0_claim802 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node324 t) && ! (inv0_node273 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node324 t) (inv0_node273 t) (inv0_node0 t) (inv0_node160 t) (inv0_node0 t) (inv0_node273 t) (inv0_node273 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node273 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim801 t) (inv0_claim509 t)

def inv0_node325 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node160 t else inv0_node0 t

theorem inv0_claim803 (t : ℤ → Bool) :
    (inv0_node325 t) = ((inv0_node160 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node160 t) (inv0_node19 t) (inv0_node325 t) (inv0_node160 t) (inv0_node160 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node160 t)
    (bool_select_same (t 0) (inv0_node160 t)) (by rfl) (by rfl)
    (inv0_claim799 t) (inv0_claim798 t)

theorem inv0_claim804 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node325 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node325 t)

theorem inv0_claim805 (t : ℤ → Bool) :
    (inv0_node161 t) = ((inv0_node161 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node161 t)

theorem inv0_claim806 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node161 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node161 t)

def inv0_node326 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node161 t

theorem inv0_claim807 (t : ℤ → Bool) :
    (inv0_node326 t) = ((inv0_node161 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node161 t) (inv0_node99 t) (inv0_node326 t) (inv0_node161 t) (inv0_node161 t) (inv0_node1 t) (inv0_node0 t) (inv0_node161 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node161 t)) (by rfl) (by rfl)
    (inv0_claim805 t) (inv0_claim806 t)

theorem inv0_claim808 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node326 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node326 t)

def inv0_node327 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node161 t else inv0_node0 t

theorem inv0_claim809 (t : ℤ → Bool) :
    (inv0_node327 t) = ((inv0_node161 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node161 t) (inv0_node19 t) (inv0_node327 t) (inv0_node161 t) (inv0_node161 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node161 t)
    (bool_select_same (t 0) (inv0_node161 t)) (by rfl) (by rfl)
    (inv0_claim806 t) (inv0_claim805 t)

theorem inv0_claim810 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node161 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node161 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node75 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim449 t)

theorem inv0_claim811 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node327 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node327 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node161 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim810 t)

theorem inv0_claim812 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node15 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node15 t) (inv0_node11 t) (inv0_node0 t) (inv0_node14 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim514 t) (inv0_claim55 t)

theorem inv0_claim813 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node114 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node114 t) (inv0_node11 t) (inv0_node0 t) (inv0_node15 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim812 t) (inv0_claim28 t)

theorem inv0_claim814 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node91 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node91 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node15 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim812 t)

theorem inv0_claim815 (t : ℤ → Bool) :
    (inv0_node162 t) = ((inv0_node162 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node162 t)

theorem inv0_claim816 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node162 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node162 t)

def inv0_node328 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node162 t

theorem inv0_claim817 (t : ℤ → Bool) :
    (inv0_node328 t) = ((inv0_node162 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node162 t) (inv0_node99 t) (inv0_node328 t) (inv0_node162 t) (inv0_node162 t) (inv0_node1 t) (inv0_node0 t) (inv0_node162 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node162 t)) (by rfl) (by rfl)
    (inv0_claim815 t) (inv0_claim816 t)

theorem inv0_claim818 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node162 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node162 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node61 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim237 t)

theorem inv0_claim819 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node328 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node328 t) (inv0_node16 t) (inv0_node0 t) (inv0_node162 t) (inv0_node0 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim818 t) (inv0_claim49 t)

def inv0_node329 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node162 t else inv0_node0 t

theorem inv0_claim820 (t : ℤ → Bool) :
    (inv0_node329 t) = ((inv0_node162 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node162 t) (inv0_node19 t) (inv0_node329 t) (inv0_node162 t) (inv0_node162 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node162 t)
    (bool_select_same (t 0) (inv0_node162 t)) (by rfl) (by rfl)
    (inv0_claim816 t) (inv0_claim815 t)

theorem inv0_claim821 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node329 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node329 t)

theorem inv0_claim822 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node0 t) && ! (inv0_node62 t)) := by
  rfl

theorem inv0_claim823 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node67 t) && ! (inv0_node263 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node67 t) (inv0_node263 t) (inv0_node0 t) (inv0_node66 t) (inv0_node0 t) (inv0_node1 t) (inv0_node62 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim370 t) (inv0_claim822 t)

theorem inv0_claim824 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node234 t) && ! (inv0_node263 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node234 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t) (inv0_node67 t) (inv0_node263 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node263 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim480 t) (inv0_claim823 t)

theorem inv0_claim825 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node234 t) && ! (inv0_node264 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node234 t) (inv0_node264 t) (inv0_node0 t) (inv0_node234 t) (inv0_node234 t) (inv0_node1 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node234 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim388 t) (inv0_claim824 t)

theorem inv0_claim826 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node234 t) && ! (inv0_node265 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node234 t) (inv0_node265 t) (inv0_node0 t) (inv0_node234 t) (inv0_node234 t) (inv0_node264 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node234 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim825 t) (inv0_claim824 t)

theorem inv0_claim827 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node237 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node237 t)

theorem inv0_claim828 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node103 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node103 t)

theorem inv0_claim829 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node73 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node73 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim774 t)

theorem inv0_claim830 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node108 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node108 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node73 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim829 t)

theorem inv0_claim831 (t : ℤ → Bool) :
    (inv0_node163 t) = ((inv0_node163 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node163 t)

theorem inv0_claim832 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node163 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node163 t)

def inv0_node330 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node163 t

theorem inv0_claim833 (t : ℤ → Bool) :
    (inv0_node330 t) = ((inv0_node163 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node163 t) (inv0_node99 t) (inv0_node330 t) (inv0_node163 t) (inv0_node163 t) (inv0_node1 t) (inv0_node0 t) (inv0_node163 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node163 t)) (by rfl) (by rfl)
    (inv0_claim831 t) (inv0_claim832 t)

theorem inv0_claim834 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node163 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node163 t) (inv0_node11 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim208 t) (inv0_claim55 t)

theorem inv0_claim835 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node330 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node330 t) (inv0_node11 t) (inv0_node0 t) (inv0_node163 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim834 t) (inv0_claim28 t)

def inv0_node331 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node163 t else inv0_node0 t

theorem inv0_claim836 (t : ℤ → Bool) :
    (inv0_node331 t) = ((inv0_node163 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node163 t) (inv0_node19 t) (inv0_node331 t) (inv0_node163 t) (inv0_node163 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node163 t)
    (bool_select_same (t 0) (inv0_node163 t)) (by rfl) (by rfl)
    (inv0_claim832 t) (inv0_claim831 t)

theorem inv0_claim837 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node331 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node331 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node163 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim834 t)

theorem inv0_claim838 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node249 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node249 t)

theorem inv0_claim839 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node330 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node330 t)

theorem inv0_claim840 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node163 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node163 t) (inv0_node39 t) (inv0_node0 t) (inv0_node2 t) (inv0_node0 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim208 t) (inv0_claim442 t)

theorem inv0_claim841 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node331 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node331 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t) (inv0_node163 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim291 t) (inv0_claim840 t)

theorem inv0_shift302 (t : ℤ → Bool) :
    (inv0_node38 t) = (inv0_node172 (shiftInput true true t)) := by
  exact inv0_shift153 t

theorem inv0_claim842 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node69 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node69 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t) (inv0_node62 t) (inv0_node1 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim15 t) (inv0_claim238 t)

theorem inv0_claim843 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node238 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node238 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t) (inv0_node69 t) (inv0_node38 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node38 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim435 t) (inv0_claim842 t)

theorem inv0_claim844 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node222 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node222 t)

theorem inv0_claim845 (t : ℤ → Bool) :
    (inv0_node165 t) = ((inv0_node165 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node165 t)

theorem inv0_claim846 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node165 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node165 t)

def inv0_node332 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node165 t

theorem inv0_claim847 (t : ℤ → Bool) :
    (inv0_node332 t) = ((inv0_node165 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node165 t) (inv0_node99 t) (inv0_node332 t) (inv0_node165 t) (inv0_node165 t) (inv0_node1 t) (inv0_node0 t) (inv0_node165 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node165 t)) (by rfl) (by rfl)
    (inv0_claim845 t) (inv0_claim846 t)

theorem inv0_claim848 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node332 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node332 t)

def inv0_node333 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node165 t else inv0_node0 t

theorem inv0_claim849 (t : ℤ → Bool) :
    (inv0_node333 t) = ((inv0_node165 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node165 t) (inv0_node19 t) (inv0_node333 t) (inv0_node165 t) (inv0_node165 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node165 t)
    (bool_select_same (t 0) (inv0_node165 t)) (by rfl) (by rfl)
    (inv0_claim846 t) (inv0_claim845 t)

theorem inv0_claim850 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node333 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node333 t)

theorem inv0_claim851 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node164 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node164 t)

theorem inv0_claim852 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node165 t) && ! (inv0_node263 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node165 t) (inv0_node263 t) (inv0_node0 t) (inv0_node164 t) (inv0_node0 t) (inv0_node1 t) (inv0_node62 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim851 t) (inv0_claim822 t)

theorem inv0_claim853 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node333 t) && ! (inv0_node263 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node333 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t) (inv0_node165 t) (inv0_node263 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node263 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim480 t) (inv0_claim852 t)

theorem inv0_claim854 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node333 t) && ! (inv0_node264 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 1) (inv0_node333 t) (inv0_node264 t) (inv0_node0 t) (inv0_node333 t) (inv0_node333 t) (inv0_node1 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 1) (inv0_node333 t)) (by rfl) (bool_select_same (t 1) (inv0_node0 t))
    (inv0_claim850 t) (inv0_claim853 t)

theorem inv0_claim855 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node333 t) && ! (inv0_node265 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 2) (inv0_node333 t) (inv0_node265 t) (inv0_node0 t) (inv0_node333 t) (inv0_node333 t) (inv0_node264 t) (inv0_node263 t) (inv0_node0 t) (inv0_node0 t)
    (bool_select_same (t 2) (inv0_node333 t)) (by rfl) (bool_select_same (t 2) (inv0_node0 t))
    (inv0_claim854 t) (inv0_claim853 t)

theorem inv0_claim856 (t : ℤ → Bool) :
    (inv0_node166 t) = ((inv0_node166 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node166 t)

theorem inv0_claim857 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node166 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node166 t)

def inv0_node334 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node166 t

theorem inv0_claim858 (t : ℤ → Bool) :
    (inv0_node334 t) = ((inv0_node166 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node166 t) (inv0_node99 t) (inv0_node334 t) (inv0_node166 t) (inv0_node166 t) (inv0_node1 t) (inv0_node0 t) (inv0_node166 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node166 t)) (by rfl) (by rfl)
    (inv0_claim856 t) (inv0_claim857 t)

theorem inv0_shift303 (t : ℤ → Bool) :
    (inv0_node38 t) = (inv0_node165 (shiftInput true false t)) := by
  exact inv0_shift151 t

theorem inv0_claim859 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node166 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node166 t) (inv0_node38 t) (inv0_node0 t) (inv0_node164 t) (inv0_node62 t) (inv0_node1 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim851 t) (inv0_claim238 t)

theorem inv0_claim860 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node334 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node334 t) (inv0_node38 t) (inv0_node0 t) (inv0_node166 t) (inv0_node0 t) (inv0_node38 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node38 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim859 t) (inv0_claim435 t)

def inv0_node335 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node166 t else inv0_node0 t

theorem inv0_claim861 (t : ℤ → Bool) :
    (inv0_node335 t) = ((inv0_node166 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node166 t) (inv0_node19 t) (inv0_node335 t) (inv0_node166 t) (inv0_node166 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node166 t)
    (bool_select_same (t 0) (inv0_node166 t)) (by rfl) (by rfl)
    (inv0_claim857 t) (inv0_claim856 t)

theorem inv0_claim862 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node335 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node335 t)

theorem inv0_claim863 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node256 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node256 t)

theorem inv0_claim864 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node257 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node257 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t) (inv0_node76 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim291 t) (inv0_claim450 t)

theorem inv0_claim865 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node235 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node235 t) (inv0_node259 t) (inv0_node0 t) (inv0_node68 t) (inv0_node0 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim472 t) (inv0_claim458 t)

theorem inv0_claim866 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node68 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node68 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node66 t) (inv0_node14 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node14 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim442 t) (inv0_claim257 t)

theorem inv0_claim867 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node236 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node236 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node68 t) (inv0_node14 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node14 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim442 t) (inv0_claim866 t)

theorem inv0_claim868 (t : ℤ → Bool) :
    (inv0_node168 t) = ((inv0_node168 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node168 t)

theorem inv0_claim869 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node168 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node168 t)

def inv0_node336 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node168 t

theorem inv0_claim870 (t : ℤ → Bool) :
    (inv0_node336 t) = ((inv0_node168 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node168 t) (inv0_node99 t) (inv0_node336 t) (inv0_node168 t) (inv0_node168 t) (inv0_node1 t) (inv0_node0 t) (inv0_node168 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node168 t)) (by rfl) (by rfl)
    (inv0_claim868 t) (inv0_claim869 t)

theorem inv0_claim871 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node167 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node167 t)

theorem inv0_claim872 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node168 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node168 t) (inv0_node11 t) (inv0_node0 t) (inv0_node167 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim871 t) (inv0_claim55 t)

theorem inv0_claim873 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node336 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node336 t) (inv0_node11 t) (inv0_node0 t) (inv0_node168 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim872 t) (inv0_claim28 t)

def inv0_node337 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node168 t else inv0_node0 t

theorem inv0_claim874 (t : ℤ → Bool) :
    (inv0_node337 t) = ((inv0_node168 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node168 t) (inv0_node19 t) (inv0_node337 t) (inv0_node168 t) (inv0_node168 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node168 t)
    (bool_select_same (t 0) (inv0_node168 t)) (by rfl) (by rfl)
    (inv0_claim869 t) (inv0_claim868 t)

theorem inv0_claim875 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node337 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node337 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node168 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim872 t)

theorem inv0_claim876 (t : ℤ → Bool) :
    (inv0_node169 t) = ((inv0_node169 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node169 t)

theorem inv0_claim877 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node169 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node169 t)

def inv0_node338 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node169 t

theorem inv0_claim878 (t : ℤ → Bool) :
    (inv0_node338 t) = ((inv0_node169 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node169 t) (inv0_node99 t) (inv0_node338 t) (inv0_node169 t) (inv0_node169 t) (inv0_node1 t) (inv0_node0 t) (inv0_node169 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node169 t)) (by rfl) (by rfl)
    (inv0_claim876 t) (inv0_claim877 t)

theorem inv0_claim879 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node169 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node169 t) (inv0_node39 t) (inv0_node0 t) (inv0_node64 t) (inv0_node56 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim246 t) (inv0_claim228 t)

theorem inv0_claim880 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node338 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node338 t) (inv0_node39 t) (inv0_node0 t) (inv0_node169 t) (inv0_node0 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim879 t) (inv0_claim291 t)

def inv0_node339 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node169 t else inv0_node0 t

theorem inv0_claim881 (t : ℤ → Bool) :
    (inv0_node339 t) = ((inv0_node169 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node169 t) (inv0_node19 t) (inv0_node339 t) (inv0_node169 t) (inv0_node169 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node169 t)
    (bool_select_same (t 0) (inv0_node169 t)) (by rfl) (by rfl)
    (inv0_claim877 t) (inv0_claim876 t)

theorem inv0_claim882 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node339 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node339 t)

theorem inv0_claim883 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node4 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node4 t) (inv0_node259 t) (inv0_node0 t) (inv0_node3 t) (inv0_node0 t) (inv0_node9 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim209 t) (inv0_claim442 t)

theorem inv0_claim884 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node5 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node5 t) (inv0_node259 t) (inv0_node0 t) (inv0_node4 t) (inv0_node0 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim883 t) (inv0_claim458 t)

theorem inv0_claim885 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node225 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node225 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t) (inv0_node4 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim458 t) (inv0_claim883 t)

theorem inv0_claim886 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node10 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node10 t) (inv0_node11 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim774 t) (inv0_claim55 t)

theorem inv0_claim887 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node130 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node130 t) (inv0_node11 t) (inv0_node0 t) (inv0_node10 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim886 t) (inv0_claim28 t)

theorem inv0_claim888 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node175 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node175 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node10 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim886 t)

theorem inv0_claim889 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node331 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node331 t)

theorem inv0_claim890 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node76 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node76 t) (inv0_node11 t) (inv0_node0 t) (inv0_node75 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim449 t) (inv0_claim55 t)

theorem inv0_claim891 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node256 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node256 t) (inv0_node11 t) (inv0_node0 t) (inv0_node76 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim890 t) (inv0_claim28 t)

theorem inv0_shift304 (t : ℤ → Bool) :
    (inv0_node15 t) = (inv0_node115 (shiftInput false false t)) := by
  exact inv0_shift14 t

theorem inv0_claim892 (t : ℤ → Bool) :
    (inv0_node170 t) = ((inv0_node170 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node170 t)

theorem inv0_claim893 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node170 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node170 t)

def inv0_node340 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node170 t

theorem inv0_claim894 (t : ℤ → Bool) :
    (inv0_node340 t) = ((inv0_node170 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node170 t) (inv0_node99 t) (inv0_node340 t) (inv0_node170 t) (inv0_node170 t) (inv0_node1 t) (inv0_node0 t) (inv0_node170 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node170 t)) (by rfl) (by rfl)
    (inv0_claim892 t) (inv0_claim893 t)

theorem inv0_claim895 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node170 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node170 t) (inv0_node259 t) (inv0_node0 t) (inv0_node9 t) (inv0_node56 t) (inv0_node9 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim396 t) (inv0_claim228 t)

theorem inv0_claim896 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node340 t) && ! (inv0_node259 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node340 t) (inv0_node259 t) (inv0_node0 t) (inv0_node170 t) (inv0_node0 t) (inv0_node259 t) (inv0_node259 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node259 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim895 t) (inv0_claim458 t)

def inv0_node341 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node170 t else inv0_node0 t

theorem inv0_claim897 (t : ℤ → Bool) :
    (inv0_node341 t) = ((inv0_node170 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node170 t) (inv0_node19 t) (inv0_node341 t) (inv0_node170 t) (inv0_node170 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node170 t)
    (bool_select_same (t 0) (inv0_node170 t)) (by rfl) (by rfl)
    (inv0_claim893 t) (inv0_claim892 t)

theorem inv0_claim898 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node341 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node341 t)

theorem inv0_claim899 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node219 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node219 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node57 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim470 t)

theorem inv0_claim900 (t : ℤ → Bool) :
    (inv0_node171 t) = ((inv0_node171 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node171 t)

theorem inv0_claim901 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node171 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node171 t)

def inv0_node342 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node171 t

theorem inv0_claim902 (t : ℤ → Bool) :
    (inv0_node342 t) = ((inv0_node171 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node171 t) (inv0_node99 t) (inv0_node342 t) (inv0_node171 t) (inv0_node171 t) (inv0_node1 t) (inv0_node0 t) (inv0_node171 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node171 t)) (by rfl) (by rfl)
    (inv0_claim900 t) (inv0_claim901 t)

theorem inv0_claim903 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node342 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node342 t)

def inv0_node343 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node171 t else inv0_node0 t

theorem inv0_claim904 (t : ℤ → Bool) :
    (inv0_node343 t) = ((inv0_node171 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node171 t) (inv0_node19 t) (inv0_node343 t) (inv0_node171 t) (inv0_node171 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node171 t)
    (bool_select_same (t 0) (inv0_node171 t)) (by rfl) (by rfl)
    (inv0_claim901 t) (inv0_claim900 t)

theorem inv0_claim905 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node343 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node343 t)

theorem inv0_claim906 (t : ℤ → Bool) :
    (inv0_node172 t) = ((inv0_node172 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node172 t)

theorem inv0_claim907 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node172 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node172 t)

def inv0_node344 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node172 t

theorem inv0_claim908 (t : ℤ → Bool) :
    (inv0_node344 t) = ((inv0_node172 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node172 t) (inv0_node99 t) (inv0_node344 t) (inv0_node172 t) (inv0_node172 t) (inv0_node1 t) (inv0_node0 t) (inv0_node172 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node172 t)) (by rfl) (by rfl)
    (inv0_claim906 t) (inv0_claim907 t)

theorem inv0_claim909 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node344 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node344 t)

def inv0_node345 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node172 t else inv0_node0 t

theorem inv0_claim910 (t : ℤ → Bool) :
    (inv0_node345 t) = ((inv0_node172 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node172 t) (inv0_node19 t) (inv0_node345 t) (inv0_node172 t) (inv0_node172 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node172 t)
    (bool_select_same (t 0) (inv0_node172 t)) (by rfl) (by rfl)
    (inv0_claim907 t) (inv0_claim906 t)

theorem inv0_claim911 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node172 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node172 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node164 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim55 t) (inv0_claim851 t)

theorem inv0_claim912 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node345 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node345 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node172 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim911 t)

theorem inv0_claim913 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node63 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node63 t) (inv0_node38 t) (inv0_node0 t) (inv0_node62 t) (inv0_node0 t) (inv0_node1 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim358 t) (inv0_claim341 t)

theorem inv0_claim914 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node230 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t) (inv0_node63 t) (inv0_node38 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node38 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim435 t) (inv0_claim913 t)

theorem inv0_claim915 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node328 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node328 t)

theorem inv0_claim916 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node329 t) && ! (inv0_node16 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node329 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t) (inv0_node162 t) (inv0_node16 t) (inv0_node16 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node16 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim49 t) (inv0_claim818 t)

theorem inv0_claim917 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node67 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node67 t) (inv0_node14 t) (inv0_node0 t) (inv0_node66 t) (inv0_node0 t) (inv0_node14 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t (-1)) (inv0_node14 t)) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim257 t) (inv0_claim442 t)

theorem inv0_claim918 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node234 t) && ! (inv0_node14 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node234 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t) (inv0_node67 t) (inv0_node14 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node14 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim442 t) (inv0_claim917 t)

theorem inv0_claim919 (t : ℤ → Bool) :
    (inv0_node173 t) = ((inv0_node173 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node173 t)

theorem inv0_claim920 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node173 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node173 t)

def inv0_node346 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node173 t

theorem inv0_claim921 (t : ℤ → Bool) :
    (inv0_node346 t) = ((inv0_node173 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node173 t) (inv0_node99 t) (inv0_node346 t) (inv0_node173 t) (inv0_node173 t) (inv0_node1 t) (inv0_node0 t) (inv0_node173 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node173 t)) (by rfl) (by rfl)
    (inv0_claim919 t) (inv0_claim920 t)

theorem inv0_claim922 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node346 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node346 t)

def inv0_node347 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node173 t else inv0_node0 t

theorem inv0_claim923 (t : ℤ → Bool) :
    (inv0_node347 t) = ((inv0_node173 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node173 t) (inv0_node19 t) (inv0_node347 t) (inv0_node173 t) (inv0_node173 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node173 t)
    (bool_select_same (t 0) (inv0_node173 t)) (by rfl) (by rfl)
    (inv0_claim920 t) (inv0_claim919 t)

theorem inv0_claim924 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node347 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node347 t)

theorem inv0_claim925 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node1 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node1 t)

theorem inv0_claim926 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node11 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node11 t) (inv0_node39 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim925 t) (inv0_claim442 t)

theorem inv0_claim927 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node105 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node105 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t) (inv0_node11 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim291 t) (inv0_claim926 t)

theorem inv0_claim928 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node337 t) && ! (inv0_node1 t)) := by
  exact bool_and_not_true (inv0_node337 t)

theorem inv0_shift305 (t : ℤ → Bool) :
    (inv0_node10 t) = (inv0_node83 (shiftInput true false t)) := by
  exact inv0_shift79 t

theorem inv0_claim929 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node10 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node10 t) (inv0_node39 t) (inv0_node0 t) (inv0_node9 t) (inv0_node0 t) (inv0_node1 t) (inv0_node14 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim774 t) (inv0_claim442 t)

theorem inv0_claim930 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node175 t) && ! (inv0_node39 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node175 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t) (inv0_node10 t) (inv0_node39 t) (inv0_node39 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node39 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim291 t) (inv0_claim929 t)

theorem inv0_claim931 (t : ℤ → Bool) :
    (inv0_node174 t) = ((inv0_node174 t) && (inv0_node1 t)) := by
  exact bool_and_true_right (inv0_node174 t)

theorem inv0_claim932 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node174 t) && (inv0_node0 t)) := by
  exact bool_and_false_right (inv0_node174 t)

def inv0_node348 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node0 t else inv0_node174 t

theorem inv0_claim933 (t : ℤ → Bool) :
    (inv0_node348 t) = ((inv0_node174 t) && (inv0_node99 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node174 t) (inv0_node99 t) (inv0_node348 t) (inv0_node174 t) (inv0_node174 t) (inv0_node1 t) (inv0_node0 t) (inv0_node174 t) (inv0_node0 t)
    (bool_select_same (t 0) (inv0_node174 t)) (by rfl) (by rfl)
    (inv0_claim931 t) (inv0_claim932 t)

theorem inv0_claim934 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node174 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node174 t) (inv0_node11 t) (inv0_node0 t) (inv0_node64 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim246 t) (inv0_claim55 t)

theorem inv0_claim935 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node348 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node348 t) (inv0_node11 t) (inv0_node0 t) (inv0_node174 t) (inv0_node0 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim934 t) (inv0_claim28 t)

def inv0_node349 (t : ℤ → Bool) : Bool :=
  if t 0 then inv0_node174 t else inv0_node0 t

theorem inv0_claim936 (t : ℤ → Bool) :
    (inv0_node349 t) = ((inv0_node174 t) && (inv0_node19 t)) := by
  exact bool_binary_split (fun a b => a && b) (t 0) (inv0_node174 t) (inv0_node19 t) (inv0_node349 t) (inv0_node174 t) (inv0_node174 t) (inv0_node0 t) (inv0_node1 t) (inv0_node0 t) (inv0_node174 t)
    (bool_select_same (t 0) (inv0_node174 t)) (by rfl) (by rfl)
    (inv0_claim932 t) (inv0_claim931 t)

theorem inv0_claim937 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node174 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t (-1)) (inv0_node174 t) (inv0_node38 t) (inv0_node0 t) (inv0_node64 t) (inv0_node0 t) (inv0_node1 t) (inv0_node9 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (by rfl) (bool_select_same (t (-1)) (inv0_node0 t))
    (inv0_claim246 t) (inv0_claim341 t)

theorem inv0_claim938 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node349 t) && ! (inv0_node38 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node349 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t) (inv0_node174 t) (inv0_node38 t) (inv0_node38 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node38 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim435 t) (inv0_claim937 t)

theorem inv0_claim939 (t : ℤ → Bool) :
    (inv0_node0 t) = ((inv0_node230 t) && ! (inv0_node11 t)) := by
  exact bool_binary_split (fun a b => a && !b) (t 0) (inv0_node230 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t) (inv0_node63 t) (inv0_node11 t) (inv0_node11 t) (inv0_node0 t) (inv0_node0 t)
    (by rfl) (bool_select_same (t 0) (inv0_node11 t)) (bool_select_same (t 0) (inv0_node0 t))
    (inv0_claim28 t) (inv0_claim474 t)

def inv0_beforeTable : Array (Bool × Bool) := #[
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true)
]

def inv0_before (q : Fin 339) (b : Bool) : Bool :=
  let row := inv0_beforeTable[q.val]'(by simpa only [show inv0_beforeTable.size = 339 from rfl] using q.isLt)
  if b then row.2 else row.1

def inv0_afterTable : Array (Bool × Bool) := #[
  (true, false),
  (true, true),
  (true, true),
  (true, false),
  (true, true),
  (true, true),
  (true, false),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (false, true),
  (false, false),
  (true, false),
  (false, true),
  (false, false),
  (false, false),
  (true, true),
  (false, false),
  (true, false),
  (false, true),
  (true, true),
  (true, false),
  (false, true),
  (false, true),
  (true, false),
  (false, false),
  (false, true),
  (false, false),
  (true, false),
  (true, true),
  (false, true),
  (true, false),
  (true, true),
  (false, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (false, true),
  (true, false),
  (true, false),
  (false, true),
  (true, false),
  (false, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, false),
  (false, true),
  (false, true),
  (false, false),
  (true, false),
  (true, true),
  (false, false),
  (false, false),
  (true, false),
  (true, false),
  (false, true),
  (true, false),
  (true, true),
  (true, false),
  (true, false),
  (false, true),
  (false, false),
  (false, true),
  (false, false),
  (true, true),
  (true, false),
  (false, true),
  (false, false),
  (true, false),
  (false, false),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true),
  (true, true)
]

def inv0_after (q : Fin 339) (b : Bool) : Bool :=
  let row := inv0_afterTable[q.val]'(by simpa only [show inv0_afterTable.size = 339 from rfl] using q.isLt)
  if b then row.2 else row.1

def inv0_predicateTable : Array ((ℤ → Bool) → Bool) := #[
  inv0_node8,
  inv0_node10,
  inv0_node11,
  inv0_node13,
  inv0_node15,
  inv0_node16,
  inv0_node18,
  inv0_node22,
  inv0_node24,
  inv0_node27,
  inv0_node29,
  inv0_node33,
  inv0_node35,
  inv0_node37,
  inv0_node1,
  inv0_node43,
  inv0_node1,
  inv0_node49,
  inv0_node1,
  inv0_node53,
  inv0_node1,
  inv0_node35,
  inv0_node1,
  inv0_node52,
  inv0_node1,
  inv0_node54,
  inv0_node55,
  inv0_node57,
  inv0_node58,
  inv0_node59,
  inv0_node4,
  inv0_node4,
  inv0_node15,
  inv0_node16,
  inv0_node60,
  inv0_node59,
  inv0_node63,
  inv0_node15,
  inv0_node16,
  inv0_node65,
  inv0_node57,
  inv0_node67,
  inv0_node68,
  inv0_node58,
  inv0_node69,
  inv0_node15,
  inv0_node63,
  inv0_node70,
  inv0_node69,
  inv0_node67,
  inv0_node71,
  inv0_node63,
  inv0_node69,
  inv0_node57,
  inv0_node69,
  inv0_node67,
  inv0_node68,
  inv0_node45,
  inv0_node72,
  inv0_node16,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node16,
  inv0_node1,
  inv0_node2,
  inv0_node3,
  inv0_node4,
  inv0_node1,
  inv0_node63,
  inv0_node57,
  inv0_node59,
  inv0_node4,
  inv0_node57,
  inv0_node58,
  inv0_node59,
  inv0_node63,
  inv0_node69,
  inv0_node57,
  inv0_node67,
  inv0_node66,
  inv0_node68,
  inv0_node68,
  inv0_node58,
  inv0_node59,
  inv0_node4,
  inv0_node4,
  inv0_node4,
  inv0_node4,
  inv0_node63,
  inv0_node57,
  inv0_node58,
  inv0_node69,
  inv0_node57,
  inv0_node63,
  inv0_node67,
  inv0_node58,
  inv0_node69,
  inv0_node57,
  inv0_node67,
  inv0_node68,
  inv0_node58,
  inv0_node69,
  inv0_node67,
  inv0_node4,
  inv0_node63,
  inv0_node67,
  inv0_node68,
  inv0_node58,
  inv0_node59,
  inv0_node4,
  inv0_node10,
  inv0_node59,
  inv0_node4,
  inv0_node58,
  inv0_node59,
  inv0_node4,
  inv0_node4,
  inv0_node4,
  inv0_node63,
  inv0_node57,
  inv0_node57,
  inv0_node58,
  inv0_node69,
  inv0_node67,
  inv0_node63,
  inv0_node67,
  inv0_node68,
  inv0_node58,
  inv0_node59,
  inv0_node63,
  inv0_node57,
  inv0_node73,
  inv0_node11,
  inv0_node72,
  inv0_node3,
  inv0_node60,
  inv0_node4,
  inv0_node74,
  inv0_node56,
  inv0_node76,
  inv0_node77,
  inv0_node59,
  inv0_node4,
  inv0_node78,
  inv0_node57,
  inv0_node69,
  inv0_node57,
  inv0_node67,
  inv0_node67,
  inv0_node68,
  inv0_node58,
  inv0_node59,
  inv0_node63,
  inv0_node63,
  inv0_node69,
  inv0_node57,
  inv0_node67,
  inv0_node63,
  inv0_node67,
  inv0_node57,
  inv0_node58,
  inv0_node69,
  inv0_node67,
  inv0_node67,
  inv0_node67,
  inv0_node68,
  inv0_node68,
  inv0_node68,
  inv0_node68,
  inv0_node58,
  inv0_node69,
  inv0_node15,
  inv0_node16,
  inv0_node1,
  inv0_node27,
  inv0_node80,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node82,
  inv0_node83,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node1,
  inv0_node85,
  inv0_node45,
  inv0_node87,
  inv0_node21,
  inv0_node88,
  inv0_node90,
  inv0_node92,
  inv0_node0,
  inv0_node93,
  inv0_node96,
  inv0_node0,
  inv0_node0,
  inv0_node97,
  inv0_node0,
  inv0_node18,
  inv0_node98,
  inv0_node102,
  inv0_node104,
  inv0_node107,
  inv0_node109,
  inv0_node104,
  inv0_node0,
  inv0_node107,
  inv0_node0,
  inv0_node112,
  inv0_node113,
  inv0_node86,
  inv0_node115,
  inv0_node116,
  inv0_node96,
  inv0_node117,
  inv0_node118,
  inv0_node119,
  inv0_node23,
  inv0_node90,
  inv0_node50,
  inv0_node121,
  inv0_node122,
  inv0_node125,
  inv0_node112,
  inv0_node126,
  inv0_node97,
  inv0_node97,
  inv0_node128,
  inv0_node128,
  inv0_node129,
  inv0_node131,
  inv0_node132,
  inv0_node134,
  inv0_node0,
  inv0_node137,
  inv0_node138,
  inv0_node0,
  inv0_node0,
  inv0_node139,
  inv0_node130,
  inv0_node140,
  inv0_node142,
  inv0_node144,
  inv0_node145,
  inv0_node146,
  inv0_node148,
  inv0_node0,
  inv0_node150,
  inv0_node0,
  inv0_node151,
  inv0_node152,
  inv0_node153,
  inv0_node0,
  inv0_node155,
  inv0_node0,
  inv0_node156,
  inv0_node29,
  inv0_node117,
  inv0_node157,
  inv0_node4,
  inv0_node63,
  inv0_node78,
  inv0_node16,
  inv0_node158,
  inv0_node59,
  inv0_node63,
  inv0_node57,
  inv0_node10,
  inv0_node57,
  inv0_node69,
  inv0_node159,
  inv0_node160,
  inv0_node161,
  inv0_node68,
  inv0_node15,
  inv0_node162,
  inv0_node67,
  inv0_node68,
  inv0_node10,
  inv0_node69,
  inv0_node57,
  inv0_node59,
  inv0_node73,
  inv0_node163,
  inv0_node3,
  inv0_node163,
  inv0_node69,
  inv0_node4,
  inv0_node59,
  inv0_node63,
  inv0_node67,
  inv0_node63,
  inv0_node165,
  inv0_node166,
  inv0_node76,
  inv0_node68,
  inv0_node10,
  inv0_node73,
  inv0_node168,
  inv0_node169,
  inv0_node4,
  inv0_node10,
  inv0_node163,
  inv0_node10,
  inv0_node1,
  inv0_node76,
  inv0_node15,
  inv0_node16,
  inv0_node170,
  inv0_node57,
  inv0_node69,
  inv0_node171,
  inv0_node172,
  inv0_node63,
  inv0_node162,
  inv0_node67,
  inv0_node173,
  inv0_node11,
  inv0_node73,
  inv0_node163,
  inv0_node4,
  inv0_node16,
  inv0_node63,
  inv0_node168,
  inv0_node10,
  inv0_node174,
  inv0_node16,
  inv0_node158,
  inv0_node63
]

def inv0_predicate (q : Fin 339) (t : ℤ → Bool) : Bool :=
  (inv0_predicateTable[q.val]'(by simpa only [show inv0_predicateTable.size = 339 from rfl] using q.isLt)) t

theorem inv0_initial : inv0_predicate machine339.entry (fun _ => false) = true := by rfl

theorem inv0_closed : ∀ (q : Fin 339) (t : ℤ → Bool) (b : Bool),
    inv0_before q b = true → t 0 = b → inv0_predicate q t = true →
    match (machine339.transition q b).next with
    | none => True
    | some q' => inv0_predicate q' (shiftInput (machine339.transition q b).right
        (machine339.transition q b).write t) = true := by
  intro q t b hp hb hq
  fin_cases q <;> cases b
  · exact bool_transfer_true (inv0_node8 t) (inv0_node99 t) (inv0_node8 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim6 t) (inv0_claim7 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node8 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim14 t) (inv0_claim15 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node10 t) (inv0_node13 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim21 t) (inv0_shift6 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim23 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node11 t) (inv0_node99 t) (inv0_node12 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim26 t) (inv0_claim29 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node11 t) (inv0_node19 t) (inv0_node105 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim30 t) (inv0_claim31 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node13 t) (inv0_node99 t) (inv0_node13 t) (inv0_node1 t) (inv0_node21 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim33 t) (inv0_claim34 t) (inv0_shift12 t)
  · exact bool_transfer_true (inv0_node13 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node21 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim36 t) (inv0_claim15 t) (inv0_shift12 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node15 t) (inv0_node18 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim39 t) (inv0_claim42 t) (inv0_shift15 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim43 t) (inv0_claim44 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node15 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim50 t) (inv0_shift17 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim52 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node18 t) (inv0_node99 t) (inv0_node18 t) (inv0_node176 t) (inv0_node22 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim54 t) (inv0_claim56 t) (inv0_shift21 t)
  · exact bool_transfer_true (inv0_node18 t) (inv0_node19 t) (inv0_node0 t) (inv0_node1 t) (inv0_node22 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim58 t) (inv0_claim15 t) (inv0_shift23 t)
  · exact bool_transfer_true (inv0_node22 t) (inv0_node99 t) (inv0_node110 t) (inv0_node21 t) (inv0_node88 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim64 t) (inv0_claim66 t) (inv0_shift25 t)
  · exact bool_transfer_true (inv0_node22 t) (inv0_node19 t) (inv0_node177 t) (inv0_node34 t) (inv0_node24 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim71 t) (inv0_claim74 t) (inv0_shift27 t)
  · exact bool_transfer_true (inv0_node24 t) (inv0_node99 t) (inv0_node179 t) (inv0_node1 t) (inv0_node22 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim76 t) (inv0_claim77 t) (inv0_shift23 t)
  · exact bool_transfer_true (inv0_node24 t) (inv0_node19 t) (inv0_node181 t) (inv0_node1 t) (inv0_node24 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim79 t) (inv0_claim80 t) (inv0_shift29 t)
  · exact bool_transfer_true (inv0_node27 t) (inv0_node99 t) (inv0_node155 t) (inv0_node26 t) (inv0_node29 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim83 t) (inv0_claim87 t) (inv0_shift32 t)
  · exact bool_transfer_true (inv0_node27 t) (inv0_node19 t) (inv0_node182 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim90 t) (inv0_claim91 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node29 t) (inv0_node99 t) (inv0_node112 t) (inv0_node52 t) (inv0_node35 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim93 t) (inv0_claim98 t) (inv0_shift37 t)
  · exact bool_transfer_true (inv0_node29 t) (inv0_node19 t) (inv0_node126 t) (inv0_node1 t) (inv0_node35 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim100 t) (inv0_claim101 t) (inv0_shift39 t)
  · exact bool_transfer_true (inv0_node33 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node35 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim106 t) (inv0_claim65 t) (inv0_shift39 t)
  · exact bool_transfer_true (inv0_node33 t) (inv0_node19 t) (inv0_node185 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim110 t) (inv0_claim111 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node35 t) (inv0_node99 t) (inv0_node187 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim113 t) (inv0_claim114 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node35 t) (inv0_node19 t) (inv0_node188 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim116 t) (inv0_claim117 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node37 t) (inv0_node99 t) (inv0_node135 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim119 t) (inv0_claim120 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node37 t) (inv0_node19 t) (inv0_node189 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim122 t) (inv0_claim125 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node43 t) (inv0_node99 t) (inv0_node196 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim131 t) (inv0_claim132 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node43 t) (inv0_node19 t) (inv0_node200 t) (inv0_node202 t) (inv0_node49 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim138 t) (inv0_claim146 t) (inv0_shift55 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node49 t) (inv0_node99 t) (inv0_node205 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim152 t) (inv0_claim153 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node49 t) (inv0_node19 t) (inv0_node209 t) (inv0_node210 t) (inv0_node53 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim159 t) (inv0_claim163 t) (inv0_shift59 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node53 t) (inv0_node99 t) (inv0_node212 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim167 t) (inv0_claim168 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node53 t) (inv0_node19 t) (inv0_node214 t) (inv0_node52 t) (inv0_node35 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim172 t) (inv0_claim178 t) (inv0_shift37 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node35 t) (inv0_node99 t) (inv0_node187 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim113 t) (inv0_claim114 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node35 t) (inv0_node19 t) (inv0_node188 t) (inv0_node1 t) (inv0_node52 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim116 t) (inv0_claim117 t) (inv0_shift58 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node52 t) (inv0_node99 t) (inv0_node211 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim166 t) (inv0_claim179 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node52 t) (inv0_node19 t) (inv0_node189 t) (inv0_node52 t) (inv0_node54 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim171 t) (inv0_claim177 t) (inv0_shift61 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node54 t) (inv0_node99 t) (inv0_node215 t) (inv0_node1 t) (inv0_node1 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim180 t) (inv0_claim181 t) (inv0_shift11 t)
  · exact bool_transfer_true (inv0_node54 t) (inv0_node19 t) (inv0_node216 t) (inv0_node217 t) (inv0_node55 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim182 t) (inv0_claim186 t) (inv0_shift62 t)
  · exact bool_transfer_true (inv0_node55 t) (inv0_node99 t) (inv0_node204 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim187 t) (inv0_claim188 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node55 t) (inv0_node19 t) (inv0_node206 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim189 t) (inv0_claim190 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim194 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim196 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node58 t) (inv0_node132 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim202 t) (inv0_shift67 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim204 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node224 t) (inv0_node158 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim218 t) (inv0_shift76 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node3 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift77 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim39 t) (inv0_claim223 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node15 t) (inv0_node139 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim43 t) (inv0_claim224 t) (inv0_shift83 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node15 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim50 t) (inv0_shift17 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim52 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node60 t) (inv0_node99 t) (inv0_node226 t) (inv0_node227 t) (inv0_node174 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim227 t) (inv0_claim231 t) (inv0_shift86 t)
  · exact bool_transfer_true (inv0_node60 t) (inv0_node19 t) (inv0_node228 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim232 t) (inv0_claim233 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node60 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift87 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node169 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift88 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node15 t) (inv0_node18 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim39 t) (inv0_claim42 t) (inv0_shift15 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim43 t) (inv0_claim44 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node15 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim50 t) (inv0_shift17 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim52 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node65 t) (inv0_node99 t) (inv0_node231 t) (inv0_node224 t) (inv0_node158 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim245 t) (inv0_claim248 t) (inv0_shift76 t)
  · exact bool_transfer_true (inv0_node65 t) (inv0_node19 t) (inv0_node232 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim249 t) (inv0_claim250 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node65 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift90 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node166 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift95 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node173 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift97 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim276 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim39 t) (inv0_claim42 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim43 t) (inv0_claim224 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node3 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift79 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node60 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift101 t)
  · exact bool_transfer_true (inv0_node70 t) (inv0_node99 t) (inv0_node239 t) (inv0_node39 t) (inv0_node168 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim289 t) (inv0_claim292 t) (inv0_shift103 t)
  · exact bool_transfer_true (inv0_node70 t) (inv0_node19 t) (inv0_node240 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim293 t) (inv0_claim294 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node160 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift104 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node70 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift105 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node71 t) (inv0_node99 t) (inv0_node241 t) (inv0_node224 t) (inv0_node158 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim297 t) (inv0_claim299 t) (inv0_shift76 t)
  · exact bool_transfer_true (inv0_node71 t) (inv0_node19 t) (inv0_node242 t) (inv0_node224 t) (inv0_node171 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim300 t) (inv0_claim301 t) (inv0_shift107 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim302 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim303 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node69 t) (inv0_node92 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim306 t) (inv0_shift111 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim307 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim313 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node71 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift112 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node210 t) (inv0_node53 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim317 t) (inv0_shift59 t)
  · exact bool_transfer_true (inv0_node45 t) (inv0_node99 t) (inv0_node120 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim318 t) (inv0_claim320 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node45 t) (inv0_node19 t) (inv0_node46 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim321 t) (inv0_claim322 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node72 t) (inv0_node99 t) (inv0_node243 t) (inv0_node16 t) (inv0_node15 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim325 t) (inv0_claim327 t) (inv0_shift17 t)
  · exact bool_transfer_true (inv0_node72 t) (inv0_node19 t) (inv0_node244 t) (inv0_node16 t) (inv0_node45 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim328 t) (inv0_claim329 t) (inv0_shift114 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node245 t) (inv0_node87 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim331 t) (inv0_shift116 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim52 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node21 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift12 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim330 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim52 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node2 t) (inv0_node99 t) (inv0_node246 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim334 t) (inv0_claim335 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node2 t) (inv0_node19 t) (inv0_node247 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim336 t) (inv0_claim337 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node3 t) (inv0_node99 t) (inv0_node248 t) (inv0_node9 t) (inv0_node2 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim340 t) (inv0_claim342 t) (inv0_shift68 t)
  · exact bool_transfer_true (inv0_node3 t) (inv0_node19 t) (inv0_node249 t) (inv0_node9 t) (inv0_node2 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim343 t) (inv0_claim344 t) (inv0_shift72 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node3 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift79 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node3 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift77 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim302 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim303 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim351 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node170 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift117 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim194 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node57 t) (inv0_node152 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim354 t) (inv0_shift119 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim355 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim204 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node9 t) (inv0_node163 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim357 t) (inv0_shift120 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node224 t) (inv0_node158 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim360 t) (inv0_shift76 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim313 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim361 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node67 t) (inv0_node146 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim364 t) (inv0_shift123 t)
  · exact bool_transfer_true (inv0_node66 t) (inv0_node99 t) (inv0_node250 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim367 t) (inv0_claim368 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node66 t) (inv0_node19 t) (inv0_node251 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim369 t) (inv0_claim372 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node45 t) (inv0_node66 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim373 t) (inv0_shift99 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim373 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim374 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node4 t) (inv0_node130 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim377 t) (inv0_shift127 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim378 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim384 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim194 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node57 t) (inv0_node104 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim354 t) (inv0_shift130 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node58 t) (inv0_node109 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim202 t) (inv0_shift132 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim204 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node63 t) (inv0_node145 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim387 t) (inv0_shift135 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim303 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim388 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim361 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node67 t) (inv0_node121 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim364 t) (inv0_shift137 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim389 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node68 t) (inv0_node50 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim315 t) (inv0_shift56 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node9 t) (inv0_node163 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim391 t) (inv0_shift120 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node11 t) (inv0_node170 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim393 t) (inv0_shift138 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node4 t) (inv0_node131 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim394 t) (inv0_shift139 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim378 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim303 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node202 t) (inv0_node49 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim395 t) (inv0_shift55 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim21 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node9 t) (inv0_node72 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim398 t) (inv0_shift140 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node9 t) (inv0_node163 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim400 t) (inv0_shift120 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim406 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node11 t) (inv0_node170 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim409 t) (inv0_shift138 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node171 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift141 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim374 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node4 t) (inv0_node130 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim377 t) (inv0_shift143 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim378 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node192 t) (inv0_node43 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim414 t) (inv0_shift49 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node57 t) (inv0_node104 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim415 t) (inv0_shift130 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim196 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim417 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim204 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node63 t) (inv0_node115 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim387 t) (inv0_shift145 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node63 t) (inv0_node115 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim418 t) (inv0_shift145 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim388 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim373 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node1 t) (inv0_node52 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim196 t) (inv0_shift58 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node99 t) (inv0_node103 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim421 t) (inv0_claim423 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node19 t) (inv0_node108 t) (inv0_node9 t) (inv0_node72 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim424 t) (inv0_claim426 t) (inv0_shift140 t)
  · exact bool_transfer_true (inv0_node11 t) (inv0_node99 t) (inv0_node12 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim26 t) (inv0_claim29 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node11 t) (inv0_node19 t) (inv0_node105 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim30 t) (inv0_claim31 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node72 t) (inv0_node99 t) (inv0_node243 t) (inv0_node224 t) (inv0_node158 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim325 t) (inv0_claim428 t) (inv0_shift76 t)
  · exact bool_transfer_true (inv0_node72 t) (inv0_node19 t) (inv0_node244 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim328 t) (inv0_claim429 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node3 t) (inv0_node99 t) (inv0_node248 t) (inv0_node9 t) (inv0_node163 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim340 t) (inv0_claim342 t) (inv0_shift120 t)
  · exact bool_transfer_true (inv0_node3 t) (inv0_node19 t) (inv0_node249 t) (inv0_node9 t) (inv0_node72 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim343 t) (inv0_claim344 t) (inv0_shift140 t)
  · exact bool_transfer_true (inv0_node60 t) (inv0_node99 t) (inv0_node226 t) (inv0_node227 t) (inv0_node169 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim227 t) (inv0_claim231 t) (inv0_shift148 t)
  · exact bool_transfer_true (inv0_node60 t) (inv0_node19 t) (inv0_node228 t) (inv0_node227 t) (inv0_node65 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim232 t) (inv0_claim430 t) (inv0_shift150 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node3 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift79 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node60 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift101 t)
  · exact bool_transfer_true (inv0_node74 t) (inv0_node99 t) (inv0_node252 t) (inv0_node38 t) (inv0_node166 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim433 t) (inv0_claim436 t) (inv0_shift152 t)
  · exact bool_transfer_true (inv0_node74 t) (inv0_node19 t) (inv0_node253 t) (inv0_node38 t) (inv0_node173 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim437 t) (inv0_claim438 t) (inv0_shift154 t)
  · exact bool_transfer_true (inv0_node56 t) (inv0_node99 t) (inv0_node254 t) (inv0_node14 t) (inv0_node74 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim441 t) (inv0_claim443 t) (inv0_shift155 t)
  · exact bool_transfer_true (inv0_node56 t) (inv0_node19 t) (inv0_node255 t) (inv0_node14 t) (inv0_node162 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim444 t) (inv0_claim445 t) (inv0_shift156 t)
  · exact bool_transfer_true (inv0_node76 t) (inv0_node99 t) (inv0_node256 t) (inv0_node39 t) (inv0_node168 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim448 t) (inv0_claim451 t) (inv0_shift103 t)
  · exact bool_transfer_true (inv0_node76 t) (inv0_node19 t) (inv0_node257 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim452 t) (inv0_claim453 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node77 t) (inv0_node99 t) (inv0_node258 t) (inv0_node259 t) (inv0_node76 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim456 t) (inv0_claim459 t) (inv0_shift158 t)
  · exact bool_transfer_true (inv0_node77 t) (inv0_node19 t) (inv0_node260 t) (inv0_node259 t) (inv0_node160 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim460 t) (inv0_claim461 t) (inv0_shift160 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node56 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift69 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node77 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift161 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim222 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node78 t) (inv0_node99 t) (inv0_node261 t) (inv0_node9 t) (inv0_node70 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim464 t) (inv0_claim466 t) (inv0_shift162 t)
  · exact bool_transfer_true (inv0_node78 t) (inv0_node19 t) (inv0_node262 t) (inv0_node9 t) (inv0_node71 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim467 t) (inv0_claim468 t) (inv0_shift163 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim196 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node169 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift88 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node11 t) (inv0_node78 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim471 t) (inv0_shift164 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node65 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift90 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node74 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift165 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim388 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node259 t) (inv0_node160 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim473 t) (inv0_shift160 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim214 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node11 t) (inv0_node78 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim475 t) (inv0_shift164 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node3 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift77 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node60 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift87 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node56 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift73 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node77 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift166 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node78 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift167 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim303 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node18 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift15 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim196 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim417 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim204 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node15 t) (inv0_node78 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim261 t) (inv0_shift167 t)
  · trivial
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim388 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim269 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim373 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim373 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim373 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node99 t) (inv0_node220 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim199 t) (inv0_claim278 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node58 t) (inv0_node19 t) (inv0_node221 t) (inv0_node45 t) (inv0_node68 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim203 t) (inv0_claim279 t) (inv0_shift100 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node73 t) (inv0_node58 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim286 t) (inv0_shift74 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim39 t) (inv0_claim42 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim43 t) (inv0_claim224 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node15 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim50 t) (inv0_shift17 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node217 t) (inv0_node55 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim477 t) (inv0_shift62 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node27 t) (inv0_node99 t) (inv0_node155 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim83 t) (inv0_claim478 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node27 t) (inv0_node19 t) (inv0_node182 t) (inv0_node265 t) (inv0_node33 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim90 t) (inv0_claim483 t) (inv0_shift171 t)
  · exact bool_transfer_true (inv0_node80 t) (inv0_node99 t) (inv0_node266 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim485 t) (inv0_claim486 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node80 t) (inv0_node19 t) (inv0_node124 t) (inv0_node176 t) (inv0_node37 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim488 t) (inv0_claim489 t) (inv0_shift175 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node82 t) (inv0_node99 t) (inv0_node267 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim492 t) (inv0_claim493 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node82 t) (inv0_node19 t) (inv0_node268 t) (inv0_node1 t) (inv0_node82 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim494 t) (inv0_claim495 t) (inv0_shift176 t)
  · exact bool_transfer_true (inv0_node83 t) (inv0_node99 t) (inv0_node269 t) (inv0_node224 t) (inv0_node82 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim498 t) (inv0_claim501 t) (inv0_shift177 t)
  · exact bool_transfer_true (inv0_node83 t) (inv0_node19 t) (inv0_node270 t) (inv0_node224 t) (inv0_node83 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim502 t) (inv0_claim503 t) (inv0_shift178 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node85 t) (inv0_node99 t) (inv0_node271 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim506 t) (inv0_claim507 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node85 t) (inv0_node19 t) (inv0_node272 t) (inv0_node273 t) (inv0_node85 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim508 t) (inv0_claim513 t) (inv0_shift180 t)
  · exact bool_transfer_true (inv0_node45 t) (inv0_node99 t) (inv0_node120 t) (inv0_node16 t) (inv0_node85 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim318 t) (inv0_claim516 t) (inv0_shift181 t)
  · exact bool_transfer_true (inv0_node45 t) (inv0_node19 t) (inv0_node46 t) (inv0_node16 t) (inv0_node45 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim321 t) (inv0_claim517 t) (inv0_shift114 t)
  · exact bool_transfer_true (inv0_node87 t) (inv0_node99 t) (inv0_node136 t) (inv0_node88 t) (inv0_node27 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim519 t) (inv0_claim520 t) (inv0_shift182 t)
  · exact bool_transfer_true (inv0_node87 t) (inv0_node19 t) (inv0_node86 t) (inv0_node1 t) (inv0_node21 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim522 t) (inv0_claim139 t) (inv0_shift12 t)
  · exact bool_transfer_true (inv0_node21 t) (inv0_node99 t) (inv0_node110 t) (inv0_node245 t) (inv0_node87 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim63 t) (inv0_claim523 t) (inv0_shift116 t)
  · exact bool_transfer_true (inv0_node21 t) (inv0_node19 t) (inv0_node94 t) (inv0_node1 t) (inv0_node21 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim70 t) (inv0_claim524 t) (inv0_shift12 t)
  · exact bool_transfer_true (inv0_node88 t) (inv0_node99 t) (inv0_node136 t) (inv0_node88 t) (inv0_node27 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim525 t) (inv0_claim520 t) (inv0_shift182 t)
  · exact bool_transfer_true (inv0_node88 t) (inv0_node19 t) (inv0_node140 t) (inv0_node23 t) (inv0_node90 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim526 t) (inv0_claim528 t) (inv0_shift184 t)
  · exact bool_transfer_true (inv0_node90 t) (inv0_node99 t) (inv0_node275 t) (inv0_node21 t) (inv0_node88 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim530 t) (inv0_claim532 t) (inv0_shift25 t)
  · exact bool_transfer_true (inv0_node90 t) (inv0_node19 t) (inv0_node276 t) (inv0_node23 t) (inv0_node90 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim534 t) (inv0_claim537 t) (inv0_shift184 t)
  · exact bool_transfer_true (inv0_node92 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim539 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node92 t) (inv0_node19 t) (inv0_node92 t) (inv0_node277 t) (inv0_node93 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim541 t) (inv0_claim542 t) (inv0_shift185 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node96 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift188 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node278 t) (inv0_node96 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim543 t) (inv0_shift191 t)
  · exact bool_transfer_true (inv0_node93 t) (inv0_node99 t) (inv0_node93 t) (inv0_node278 t) (inv0_node96 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim544 t) (inv0_claim545 t) (inv0_shift191 t)
  · exact bool_transfer_true (inv0_node93 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim546 t) (inv0_claim55 t) (inv0_shift3 t)
  · exact bool_transfer_true (inv0_node96 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim549 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node96 t) (inv0_node19 t) (inv0_node96 t) (inv0_node28 t) (inv0_node97 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim552 t) (inv0_claim555 t) (inv0_shift192 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node28 t) (inv0_node97 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim553 t) (inv0_shift192 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node97 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim55 t) (inv0_shift194 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node88 t) (inv0_node128 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim556 t) (inv0_shift196 t)
  · exact bool_transfer_true (inv0_node97 t) (inv0_node99 t) (inv0_node279 t) (inv0_node88 t) (inv0_node128 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim557 t) (inv0_claim558 t) (inv0_shift196 t)
  · exact bool_transfer_true (inv0_node97 t) (inv0_node19 t) (inv0_node280 t) (inv0_node88 t) (inv0_node128 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim559 t) (inv0_claim561 t) (inv0_shift198 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node129 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift199 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node127 t) (inv0_node129 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim562 t) (inv0_shift200 t)
  · exact bool_transfer_true (inv0_node18 t) (inv0_node99 t) (inv0_node18 t) (inv0_node176 t) (inv0_node98 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim54 t) (inv0_claim56 t) (inv0_shift201 t)
  · exact bool_transfer_true (inv0_node18 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node98 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim58 t) (inv0_claim55 t) (inv0_shift203 t)
  · exact bool_transfer_true (inv0_node98 t) (inv0_node99 t) (inv0_node0 t) (inv0_node282 t) (inv0_node102 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim563 t) (inv0_claim564 t) (inv0_shift207 t)
  · exact bool_transfer_true (inv0_node98 t) (inv0_node19 t) (inv0_node98 t) (inv0_node26 t) (inv0_node102 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim565 t) (inv0_claim566 t) (inv0_shift210 t)
  · exact bool_transfer_true (inv0_node102 t) (inv0_node99 t) (inv0_node284 t) (inv0_node127 t) (inv0_node117 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim570 t) (inv0_claim572 t) (inv0_shift211 t)
  · exact bool_transfer_true (inv0_node102 t) (inv0_node19 t) (inv0_node126 t) (inv0_node28 t) (inv0_node117 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim576 t) (inv0_claim577 t) (inv0_shift213 t)
  · exact bool_transfer_true (inv0_node104 t) (inv0_node99 t) (inv0_node104 t) (inv0_node285 t) (inv0_node107 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim579 t) (inv0_claim580 t) (inv0_shift216 t)
  · exact bool_transfer_true (inv0_node104 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node107 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim582 t) (inv0_claim55 t) (inv0_shift218 t)
  · exact bool_transfer_true (inv0_node107 t) (inv0_node99 t) (inv0_node0 t) (inv0_node282 t) (inv0_node112 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim585 t) (inv0_claim564 t) (inv0_shift222 t)
  · exact bool_transfer_true (inv0_node107 t) (inv0_node19 t) (inv0_node107 t) (inv0_node282 t) (inv0_node102 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim588 t) (inv0_claim590 t) (inv0_shift207 t)
  · exact bool_transfer_true (inv0_node109 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim592 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node109 t) (inv0_node19 t) (inv0_node109 t) (inv0_node285 t) (inv0_node107 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim594 t) (inv0_claim596 t) (inv0_shift216 t)
  · exact bool_transfer_true (inv0_node104 t) (inv0_node99 t) (inv0_node104 t) (inv0_node285 t) (inv0_node107 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim579 t) (inv0_claim580 t) (inv0_shift216 t)
  · exact bool_transfer_true (inv0_node104 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node107 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim582 t) (inv0_claim55 t) (inv0_shift218 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node112 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim55 t) (inv0_shift225 t)
  · exact bool_transfer_true (inv0_node107 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node112 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim585 t) (inv0_claim55 t) (inv0_shift225 t)
  · exact bool_transfer_true (inv0_node107 t) (inv0_node19 t) (inv0_node107 t) (inv0_node282 t) (inv0_node112 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim588 t) (inv0_claim590 t) (inv0_shift222 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node113 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift227 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node28 t) (inv0_node113 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim553 t) (inv0_shift228 t)
  · exact bool_transfer_true (inv0_node112 t) (inv0_node99 t) (inv0_node112 t) (inv0_node28 t) (inv0_node113 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim599 t) (inv0_claim601 t) (inv0_shift228 t)
  · exact bool_transfer_true (inv0_node112 t) (inv0_node19 t) (inv0_node0 t) (inv0_node127 t) (inv0_node117 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim604 t) (inv0_claim562 t) (inv0_shift211 t)
  · exact bool_transfer_true (inv0_node113 t) (inv0_node99 t) (inv0_node286 t) (inv0_node89 t) (inv0_node118 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim605 t) (inv0_claim608 t) (inv0_shift230 t)
  · exact bool_transfer_true (inv0_node113 t) (inv0_node19 t) (inv0_node287 t) (inv0_node44 t) (inv0_node118 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim609 t) (inv0_claim612 t) (inv0_shift231 t)
  · exact bool_transfer_true (inv0_node86 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node116 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim518 t) (inv0_claim55 t) (inv0_shift233 t)
  · exact bool_transfer_true (inv0_node86 t) (inv0_node19 t) (inv0_node86 t) (inv0_node52 t) (inv0_node35 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim521 t) (inv0_claim613 t) (inv0_shift37 t)
  · exact bool_transfer_true (inv0_node115 t) (inv0_node99 t) (inv0_node115 t) (inv0_node288 t) (inv0_node116 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim615 t) (inv0_claim616 t) (inv0_shift234 t)
  · exact bool_transfer_true (inv0_node115 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node116 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim618 t) (inv0_claim55 t) (inv0_shift233 t)
  · exact bool_transfer_true (inv0_node116 t) (inv0_node99 t) (inv0_node93 t) (inv0_node278 t) (inv0_node96 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim619 t) (inv0_claim545 t) (inv0_shift191 t)
  · exact bool_transfer_true (inv0_node116 t) (inv0_node19 t) (inv0_node98 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim620 t) (inv0_claim621 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node96 t) (inv0_node99 t) (inv0_node0 t) (inv0_node28 t) (inv0_node117 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim549 t) (inv0_claim553 t) (inv0_shift213 t)
  · exact bool_transfer_true (inv0_node96 t) (inv0_node19 t) (inv0_node96 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim552 t) (inv0_claim622 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node117 t) (inv0_node99 t) (inv0_node289 t) (inv0_node44 t) (inv0_node118 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim623 t) (inv0_claim625 t) (inv0_shift231 t)
  · exact bool_transfer_true (inv0_node117 t) (inv0_node19 t) (inv0_node290 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim626 t) (inv0_claim627 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node118 t) (inv0_node99 t) (inv0_node291 t) (inv0_node1 t) (inv0_node119 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim628 t) (inv0_claim629 t) (inv0_shift235 t)
  · exact bool_transfer_true (inv0_node118 t) (inv0_node19 t) (inv0_node292 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim630 t) (inv0_claim631 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node119 t) (inv0_node99 t) (inv0_node293 t) (inv0_node1 t) (inv0_node23 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim632 t) (inv0_claim633 t) (inv0_shift28 t)
  · exact bool_transfer_true (inv0_node119 t) (inv0_node19 t) (inv0_node294 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim634 t) (inv0_claim635 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node23 t) (inv0_node99 t) (inv0_node178 t) (inv0_node23 t) (inv0_node90 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim75 t) (inv0_claim636 t) (inv0_shift184 t)
  · exact bool_transfer_true (inv0_node23 t) (inv0_node19 t) (inv0_node180 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim78 t) (inv0_claim637 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node90 t) (inv0_node99 t) (inv0_node275 t) (inv0_node21 t) (inv0_node55 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim530 t) (inv0_claim532 t) (inv0_shift236 t)
  · exact bool_transfer_true (inv0_node90 t) (inv0_node19 t) (inv0_node276 t) (inv0_node1 t) (inv0_node1 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim534 t) (inv0_claim638 t) (inv0_shift2 t)
  · exact bool_transfer_true (inv0_node50 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node122 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim164 t) (inv0_claim55 t) (inv0_shift238 t)
  · exact bool_transfer_true (inv0_node50 t) (inv0_node19 t) (inv0_node50 t) (inv0_node295 t) (inv0_node125 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim169 t) (inv0_claim639 t) (inv0_shift241 t)
  · exact bool_transfer_true (inv0_node121 t) (inv0_node99 t) (inv0_node121 t) (inv0_node295 t) (inv0_node125 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim641 t) (inv0_claim642 t) (inv0_shift241 t)
  · exact bool_transfer_true (inv0_node121 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node125 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim644 t) (inv0_claim55 t) (inv0_shift243 t)
  · exact bool_transfer_true (inv0_node122 t) (inv0_node99 t) (inv0_node122 t) (inv0_node282 t) (inv0_node112 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim645 t) (inv0_claim647 t) (inv0_shift222 t)
  · exact bool_transfer_true (inv0_node122 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node126 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim648 t) (inv0_claim55 t) (inv0_shift244 t)
  · exact bool_transfer_true (inv0_node125 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node126 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim651 t) (inv0_claim55 t) (inv0_shift244 t)
  · exact bool_transfer_true (inv0_node125 t) (inv0_node19 t) (inv0_node125 t) (inv0_node296 t) (inv0_node126 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim654 t) (inv0_claim655 t) (inv0_shift245 t)
  · exact bool_transfer_true (inv0_node112 t) (inv0_node99 t) (inv0_node112 t) (inv0_node28 t) (inv0_node97 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim599 t) (inv0_claim601 t) (inv0_shift192 t)
  · exact bool_transfer_true (inv0_node112 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node97 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim604 t) (inv0_claim55 t) (inv0_shift194 t)
  · exact bool_transfer_true (inv0_node126 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node97 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim656 t) (inv0_claim55 t) (inv0_shift194 t)
  · exact bool_transfer_true (inv0_node126 t) (inv0_node19 t) (inv0_node126 t) (inv0_node28 t) (inv0_node97 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim657 t) (inv0_claim577 t) (inv0_shift192 t)
  · exact bool_transfer_true (inv0_node97 t) (inv0_node99 t) (inv0_node279 t) (inv0_node88 t) (inv0_node128 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim557 t) (inv0_claim558 t) (inv0_shift198 t)
  · exact bool_transfer_true (inv0_node97 t) (inv0_node19 t) (inv0_node280 t) (inv0_node88 t) (inv0_node128 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim559 t) (inv0_claim561 t) (inv0_shift196 t)
  · exact bool_transfer_true (inv0_node97 t) (inv0_node99 t) (inv0_node279 t) (inv0_node88 t) (inv0_node128 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim557 t) (inv0_claim558 t) (inv0_shift196 t)
  · exact bool_transfer_true (inv0_node97 t) (inv0_node19 t) (inv0_node280 t) (inv0_node88 t) (inv0_node128 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim559 t) (inv0_claim561 t) (inv0_shift198 t)
  · exact bool_transfer_true (inv0_node128 t) (inv0_node99 t) (inv0_node297 t) (inv0_node127 t) (inv0_node129 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim659 t) (inv0_claim660 t) (inv0_shift200 t)
  · exact bool_transfer_true (inv0_node128 t) (inv0_node19 t) (inv0_node299 t) (inv0_node127 t) (inv0_node119 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim662 t) (inv0_claim664 t) (inv0_shift246 t)
  · exact bool_transfer_true (inv0_node128 t) (inv0_node99 t) (inv0_node297 t) (inv0_node127 t) (inv0_node119 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim659 t) (inv0_claim660 t) (inv0_shift246 t)
  · exact bool_transfer_true (inv0_node128 t) (inv0_node19 t) (inv0_node299 t) (inv0_node1 t) (inv0_node119 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim662 t) (inv0_claim665 t) (inv0_shift235 t)
  · exact bool_transfer_true (inv0_node129 t) (inv0_node99 t) (inv0_node300 t) (inv0_node21 t) (inv0_node23 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim666 t) (inv0_claim667 t) (inv0_shift26 t)
  · exact bool_transfer_true (inv0_node129 t) (inv0_node19 t) (inv0_node301 t) (inv0_node1 t) (inv0_node23 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim668 t) (inv0_claim669 t) (inv0_shift28 t)
  · exact bool_transfer_true (inv0_node131 t) (inv0_node99 t) (inv0_node131 t) (inv0_node302 t) (inv0_node122 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim671 t) (inv0_claim672 t) (inv0_shift247 t)
  · exact bool_transfer_true (inv0_node131 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node122 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim674 t) (inv0_claim55 t) (inv0_shift238 t)
  · exact bool_transfer_true (inv0_node132 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node134 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim675 t) (inv0_claim55 t) (inv0_shift249 t)
  · exact bool_transfer_true (inv0_node132 t) (inv0_node19 t) (inv0_node132 t) (inv0_node303 t) (inv0_node134 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim676 t) (inv0_claim677 t) (inv0_shift253 t)
  · exact bool_transfer_true (inv0_node134 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim679 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node134 t) (inv0_node19 t) (inv0_node134 t) (inv0_node305 t) (inv0_node137 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim681 t) (inv0_claim683 t) (inv0_shift256 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node138 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift257 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node88 t) (inv0_node138 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim556 t) (inv0_shift258 t)
  · exact bool_transfer_true (inv0_node137 t) (inv0_node99 t) (inv0_node137 t) (inv0_node88 t) (inv0_node138 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim686 t) (inv0_claim687 t) (inv0_shift258 t)
  · exact bool_transfer_true (inv0_node137 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim690 t) (inv0_claim55 t) (inv0_shift3 t)
  · exact bool_transfer_true (inv0_node138 t) (inv0_node99 t) (inv0_node306 t) (inv0_node127 t) (inv0_node117 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim691 t) (inv0_claim693 t) (inv0_shift211 t)
  · exact bool_transfer_true (inv0_node138 t) (inv0_node19 t) (inv0_node96 t) (inv0_node28 t) (inv0_node117 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim694 t) (inv0_claim555 t) (inv0_shift213 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node28 t) (inv0_node117 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim553 t) (inv0_shift213 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim55 t) (inv0_shift3 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node44 t) (inv0_node157 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim611 t) (inv0_shift259 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node157 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim55 t) (inv0_shift261 t)
  · exact bool_transfer_true (inv0_node139 t) (inv0_node99 t) (inv0_node139 t) (inv0_node307 t) (inv0_node140 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim695 t) (inv0_claim696 t) (inv0_shift262 t)
  · exact bool_transfer_true (inv0_node139 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node140 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim697 t) (inv0_claim55 t) (inv0_shift263 t)
  · exact bool_transfer_true (inv0_node130 t) (inv0_node99 t) (inv0_node130 t) (inv0_node10 t) (inv0_node142 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim670 t) (inv0_claim21 t) (inv0_shift265 t)
  · exact bool_transfer_true (inv0_node130 t) (inv0_node19 t) (inv0_node0 t) (inv0_node308 t) (inv0_node142 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim673 t) (inv0_claim698 t) (inv0_shift267 t)
  · exact bool_transfer_true (inv0_node140 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node144 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim699 t) (inv0_claim55 t) (inv0_shift269 t)
  · exact bool_transfer_true (inv0_node140 t) (inv0_node19 t) (inv0_node140 t) (inv0_node310 t) (inv0_node144 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim700 t) (inv0_claim702 t) (inv0_shift271 t)
  · exact bool_transfer_true (inv0_node142 t) (inv0_node99 t) (inv0_node142 t) (inv0_node310 t) (inv0_node144 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim704 t) (inv0_claim708 t) (inv0_shift271 t)
  · exact bool_transfer_true (inv0_node142 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node150 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim710 t) (inv0_claim55 t) (inv0_shift273 t)
  · exact bool_transfer_true (inv0_node144 t) (inv0_node99 t) (inv0_node111 t) (inv0_node202 t) (inv0_node49 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim712 t) (inv0_claim714 t) (inv0_shift55 t)
  · exact bool_transfer_true (inv0_node144 t) (inv0_node19 t) (inv0_node311 t) (inv0_node21 t) (inv0_node49 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim716 t) (inv0_claim719 t) (inv0_shift276 t)
  · exact bool_transfer_true (inv0_node145 t) (inv0_node99 t) (inv0_node145 t) (inv0_node308 t) (inv0_node142 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim720 t) (inv0_claim721 t) (inv0_shift267 t)
  · exact bool_transfer_true (inv0_node145 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node148 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim722 t) (inv0_claim55 t) (inv0_shift278 t)
  · exact bool_transfer_true (inv0_node146 t) (inv0_node99 t) (inv0_node146 t) (inv0_node312 t) (inv0_node148 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim723 t) (inv0_claim724 t) (inv0_shift281 t)
  · exact bool_transfer_true (inv0_node146 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim725 t) (inv0_claim55 t) (inv0_shift3 t)
  · exact bool_transfer_true (inv0_node148 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node150 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim727 t) (inv0_claim55 t) (inv0_shift273 t)
  · exact bool_transfer_true (inv0_node148 t) (inv0_node19 t) (inv0_node148 t) (inv0_node313 t) (inv0_node150 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim729 t) (inv0_claim731 t) (inv0_shift283 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node313 t) (inv0_node150 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim732 t) (inv0_shift283 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim55 t) (inv0_shift3 t)
  · exact bool_transfer_true (inv0_node150 t) (inv0_node99 t) (inv0_node0 t) (inv0_node21 t) (inv0_node49 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim734 t) (inv0_claim527 t) (inv0_shift276 t)
  · exact bool_transfer_true (inv0_node150 t) (inv0_node19 t) (inv0_node150 t) (inv0_node89 t) (inv0_node151 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim736 t) (inv0_claim738 t) (inv0_shift284 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node89 t) (inv0_node151 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim607 t) (inv0_shift284 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node151 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim55 t) (inv0_shift285 t)
  · exact bool_transfer_true (inv0_node151 t) (inv0_node99 t) (inv0_node137 t) (inv0_node210 t) (inv0_node53 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim739 t) (inv0_claim742 t) (inv0_shift59 t)
  · exact bool_transfer_true (inv0_node151 t) (inv0_node19 t) (inv0_node314 t) (inv0_node88 t) (inv0_node53 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim743 t) (inv0_claim744 t) (inv0_shift289 t)
  · exact bool_transfer_true (inv0_node152 t) (inv0_node99 t) (inv0_node152 t) (inv0_node303 t) (inv0_node153 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim745 t) (inv0_claim746 t) (inv0_shift290 t)
  · exact bool_transfer_true (inv0_node152 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node153 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim747 t) (inv0_claim55 t) (inv0_shift291 t)
  · exact bool_transfer_true (inv0_node153 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim748 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node153 t) (inv0_node19 t) (inv0_node153 t) (inv0_node315 t) (inv0_node155 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim749 t) (inv0_claim750 t) (inv0_shift293 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node0 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift30 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node26 t) (inv0_node156 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim84 t) (inv0_shift294 t)
  · exact bool_transfer_true (inv0_node155 t) (inv0_node99 t) (inv0_node155 t) (inv0_node26 t) (inv0_node156 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim752 t) (inv0_claim87 t) (inv0_shift294 t)
  · exact bool_transfer_true (inv0_node155 t) (inv0_node19 t) (inv0_node0 t) (inv0_node0 t) (inv0_node156 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim754 t) (inv0_claim55 t) (inv0_shift295 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node99 t) (inv0_node0 t) (inv0_node0 t) (inv0_node29 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) (inv0_claim55 t) (inv0_shift296 t)
  · exact bool_transfer_true (inv0_node0 t) (inv0_node19 t) (inv0_node0 t) (inv0_node26 t) (inv0_node29 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) (inv0_claim84 t) (inv0_shift32 t)
  · exact bool_transfer_true (inv0_node156 t) (inv0_node99 t) (inv0_node316 t) (inv0_node26 t) (inv0_node29 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim755 t) (inv0_claim756 t) (inv0_shift32 t)
  · exact bool_transfer_true (inv0_node156 t) (inv0_node19 t) (inv0_node317 t) (inv0_node127 t) (inv0_node117 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim757 t) (inv0_claim759 t) (inv0_shift211 t)
  · exact bool_transfer_true (inv0_node29 t) (inv0_node99 t) (inv0_node112 t) (inv0_node52 t) (inv0_node35 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim93 t) (inv0_claim98 t) (inv0_shift37 t)
  · exact bool_transfer_true (inv0_node29 t) (inv0_node19 t) (inv0_node126 t) (inv0_node1 t) (inv0_node35 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim100 t) (inv0_claim101 t) (inv0_shift39 t)
  · exact bool_transfer_true (inv0_node117 t) (inv0_node99 t) (inv0_node289 t) (inv0_node1 t) (inv0_node35 (shiftInput false true t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim623 t) (inv0_claim760 t) (inv0_shift39 t)
  · exact bool_transfer_true (inv0_node117 t) (inv0_node19 t) (inv0_node290 t) (inv0_node44 t) (inv0_node157 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim626 t) (inv0_claim762 t) (inv0_shift259 t)
  · exact bool_transfer_true (inv0_node157 t) (inv0_node99 t) (inv0_node318 t) (inv0_node1 t) (inv0_node52 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim763 t) (inv0_claim764 t) (inv0_shift58 t)
  · exact bool_transfer_true (inv0_node157 t) (inv0_node19 t) (inv0_node319 t) (inv0_node25 t) (inv0_node52 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim765 t) (inv0_claim767 t) (inv0_shift288 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node224 t) (inv0_node82 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim218 t) (inv0_shift177 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim769 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node259 t) (inv0_node161 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim771 t) (inv0_shift297 t)
  · exact bool_transfer_true (inv0_node78 t) (inv0_node99 t) (inv0_node261 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim464 t) (inv0_claim772 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node78 t) (inv0_node19 t) (inv0_node262 t) (inv0_node265 t) (inv0_node33 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim467 t) (inv0_claim779 t) (inv0_shift171 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node86 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim50 t) (inv0_shift115 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim52 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node158 t) (inv0_node99 t) (inv0_node320 t) (inv0_node11 t) (inv0_node78 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim782 t) (inv0_claim784 t) (inv0_shift164 t)
  · exact bool_transfer_true (inv0_node158 t) (inv0_node19 t) (inv0_node321 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim785 t) (inv0_claim786 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node16 t) (inv0_node85 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim788 t) (inv0_shift181 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim401 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim475 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim252 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim196 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim789 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node10 t) (inv0_node80 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim790 t) (inv0_shift299 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim471 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim196 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim307 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node159 t) (inv0_node99 t) (inv0_node322 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim793 t) (inv0_claim795 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node159 t) (inv0_node19 t) (inv0_node323 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim796 t) (inv0_claim797 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node160 t) (inv0_node99 t) (inv0_node324 t) (inv0_node273 t) (inv0_node159 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim800 t) (inv0_claim802 t) (inv0_shift301 t)
  · exact bool_transfer_true (inv0_node160 t) (inv0_node19 t) (inv0_node325 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim803 t) (inv0_claim804 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node161 t) (inv0_node99 t) (inv0_node326 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim807 t) (inv0_claim808 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node161 t) (inv0_node19 t) (inv0_node327 t) (inv0_node16 t) (inv0_node86 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim809 t) (inv0_claim811 t) (inv0_shift115 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node66 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift96 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node259 t) (inv0_node161 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim473 t) (inv0_shift297 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim39 t) (inv0_claim813 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim43 t) (inv0_claim814 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node162 t) (inv0_node99 t) (inv0_node328 t) (inv0_node16 t) (inv0_node15 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim817 t) (inv0_claim819 t) (inv0_shift17 t)
  · exact bool_transfer_true (inv0_node162 t) (inv0_node19 t) (inv0_node329 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim820 t) (inv0_claim821 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim361 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node265 t) (inv0_node33 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim826 t) (inv0_shift171 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node45 t) (inv0_node67 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim267 t) (inv0_shift98 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim269 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim789 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node10 t) (inv0_node80 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim790 t) (inv0_shift299 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim827 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim307 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim471 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node15 t) (inv0_node69 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim253 t) (inv0_shift93 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim212 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim401 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node99 t) (inv0_node103 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim421 t) (inv0_claim828 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node19 t) (inv0_node108 t) (inv0_node16 t) (inv0_node45 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim424 t) (inv0_claim830 t) (inv0_shift114 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node99 t) (inv0_node330 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim833 t) (inv0_claim835 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node19 t) (inv0_node331 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim836 t) (inv0_claim837 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node3 t) (inv0_node99 t) (inv0_node248 t) (inv0_node9 t) (inv0_node163 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim340 t) (inv0_claim342 t) (inv0_shift120 t)
  · exact bool_transfer_true (inv0_node3 t) (inv0_node19 t) (inv0_node249 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim343 t) (inv0_claim838 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node99 t) (inv0_node330 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim833 t) (inv0_claim839 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node19 t) (inv0_node331 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim836 t) (inv0_claim841 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node9 t) (inv0_node163 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim391 t) (inv0_shift120 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node38 t) (inv0_node172 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim843 t) (inv0_shift302 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim374 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node10 t) (inv0_node80 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim221 t) (inv0_shift299 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node99 t) (inv0_node222 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim207 t) (inv0_claim844 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node59 t) (inv0_node19 t) (inv0_node223 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim213 t) (inv0_claim401 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node10 t) (inv0_node59 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim242 t) (inv0_shift78 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node15 t) (inv0_node63 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim259 t) (inv0_shift94 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim388 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node9 t) (inv0_node163 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim357 t) (inv0_shift120 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node259 t) (inv0_node161 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim771 t) (inv0_shift297 t)
  · exact bool_transfer_true (inv0_node165 t) (inv0_node99 t) (inv0_node332 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim847 t) (inv0_claim848 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node165 t) (inv0_node19 t) (inv0_node333 t) (inv0_node265 t) (inv0_node33 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim849 t) (inv0_claim855 t) (inv0_shift171 t)
  · exact bool_transfer_true (inv0_node166 t) (inv0_node99 t) (inv0_node334 t) (inv0_node38 t) (inv0_node165 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim858 t) (inv0_claim860 t) (inv0_shift303 t)
  · exact bool_transfer_true (inv0_node166 t) (inv0_node19 t) (inv0_node335 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim861 t) (inv0_claim862 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node76 t) (inv0_node99 t) (inv0_node256 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim448 t) (inv0_claim863 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node76 t) (inv0_node19 t) (inv0_node257 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim452 t) (inv0_claim864 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node99 t) (inv0_node235 t) (inv0_node259 t) (inv0_node76 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim264 t) (inv0_claim865 t) (inv0_shift158 t)
  · exact bool_transfer_true (inv0_node68 t) (inv0_node19 t) (inv0_node236 t) (inv0_node14 t) (inv0_node162 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim268 t) (inv0_claim867 t) (inv0_shift156 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim789 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node10 t) (inv0_node80 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim790 t) (inv0_shift299 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node99 t) (inv0_node103 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim421 t) (inv0_claim828 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node19 t) (inv0_node108 t) (inv0_node16 t) (inv0_node45 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim424 t) (inv0_claim830 t) (inv0_shift114 t)
  · exact bool_transfer_true (inv0_node168 t) (inv0_node99 t) (inv0_node336 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim870 t) (inv0_claim873 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node168 t) (inv0_node19 t) (inv0_node337 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim874 t) (inv0_claim875 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node169 t) (inv0_node99 t) (inv0_node338 t) (inv0_node39 t) (inv0_node168 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim878 t) (inv0_claim880 t) (inv0_shift103 t)
  · exact bool_transfer_true (inv0_node169 t) (inv0_node19 t) (inv0_node339 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim881 t) (inv0_claim882 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node259 t) (inv0_node76 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim884 t) (inv0_shift158 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node259 t) (inv0_node161 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim885 t) (inv0_shift297 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim887 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim888 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node99 t) (inv0_node330 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim833 t) (inv0_claim835 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node19 t) (inv0_node331 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim836 t) (inv0_claim889 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim789 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node10 t) (inv0_node80 (shiftInput false true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim790 t) (inv0_shift299 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node99 t) (inv0_node99 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim61 t) (inv0_claim65 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node1 t) (inv0_node19 t) (inv0_node19 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim68 t) (inv0_claim72 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node76 t) (inv0_node99 t) (inv0_node256 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim448 t) (inv0_claim891 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node76 t) (inv0_node19 t) (inv0_node257 t) (inv0_node1 t) (inv0_node1 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim452 t) (inv0_claim453 t) (inv0_shift1 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node99 t) (inv0_node114 t) (inv0_node15 t) (inv0_node115 (shiftInput false false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim39 t) (inv0_claim42 t) (inv0_shift304 t)
  · exact bool_transfer_true (inv0_node15 t) (inv0_node19 t) (inv0_node91 t) (inv0_node1 t) (inv0_node33 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim43 t) (inv0_claim44 t) (inv0_shift35 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node16 t) (inv0_node15 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim50 t) (inv0_shift17 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node1 t) (inv0_node37 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim52 t) (inv0_shift41 t)
  · exact bool_transfer_true (inv0_node170 t) (inv0_node99 t) (inv0_node340 t) (inv0_node259 t) (inv0_node76 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim894 t) (inv0_claim896 t) (inv0_shift158 t)
  · exact bool_transfer_true (inv0_node170 t) (inv0_node19 t) (inv0_node341 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim897 t) (inv0_claim898 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node99 t) (inv0_node218 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim193 t) (inv0_claim471 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node57 t) (inv0_node19 t) (inv0_node219 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim195 t) (inv0_claim899 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node99 t) (inv0_node237 t) (inv0_node73 t) (inv0_node57 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim282 t) (inv0_claim284 t) (inv0_shift70 t)
  · exact bool_transfer_true (inv0_node69 t) (inv0_node19 t) (inv0_node238 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim285 t) (inv0_claim307 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node171 t) (inv0_node99 t) (inv0_node342 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim902 t) (inv0_claim903 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node171 t) (inv0_node19 t) (inv0_node343 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim904 t) (inv0_claim905 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node172 t) (inv0_node99 t) (inv0_node344 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim908 t) (inv0_claim909 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node172 t) (inv0_node19 t) (inv0_node345 t) (inv0_node16 t) (inv0_node86 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim910 t) (inv0_claim912 t) (inv0_shift115 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim302 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node38 t) (inv0_node172 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim914 t) (inv0_shift302 t)
  · exact bool_transfer_true (inv0_node162 t) (inv0_node99 t) (inv0_node328 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim817 t) (inv0_claim915 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node162 t) (inv0_node19 t) (inv0_node329 t) (inv0_node16 t) (inv0_node86 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim820 t) (inv0_claim916 t) (inv0_shift115 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node99 t) (inv0_node233 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim256 t) (inv0_claim361 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node67 t) (inv0_node19 t) (inv0_node234 t) (inv0_node14 t) (inv0_node162 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim260 t) (inv0_claim918 t) (inv0_shift156 t)
  · exact bool_transfer_true (inv0_node173 t) (inv0_node99 t) (inv0_node346 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim921 t) (inv0_claim922 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node173 t) (inv0_node19 t) (inv0_node347 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim923 t) (inv0_claim924 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node11 t) (inv0_node99 t) (inv0_node12 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim26 t) (inv0_claim706 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node11 t) (inv0_node19 t) (inv0_node105 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim30 t) (inv0_claim927 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node99 t) (inv0_node103 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim421 t) (inv0_claim828 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node73 t) (inv0_node19 t) (inv0_node108 t) (inv0_node16 t) (inv0_node86 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim424 t) (inv0_claim830 t) (inv0_shift115 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node99 t) (inv0_node330 t) (inv0_node1 t) (inv0_node11 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim833 t) (inv0_claim839 t) (inv0_shift63 t)
  · exact bool_transfer_true (inv0_node163 t) (inv0_node19 t) (inv0_node331 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim836 t) (inv0_claim837 t) (inv0_shift147 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node99 t) (inv0_node5 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim215 t) (inv0_claim374 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node4 t) (inv0_node19 t) (inv0_node225 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim219 t) (inv0_claim769 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim330 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node16 t) (inv0_node86 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim476 t) (inv0_shift115 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node10 t) (inv0_node4 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim240 t) (inv0_shift80 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim303 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node168 t) (inv0_node99 t) (inv0_node336 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim870 t) (inv0_claim873 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node168 t) (inv0_node19 t) (inv0_node337 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim874 t) (inv0_claim928 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node99 t) (inv0_node130 t) (inv0_node10 t) (inv0_node83 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim18 t) (inv0_claim21 t) (inv0_shift305 t)
  · exact bool_transfer_true (inv0_node10 t) (inv0_node19 t) (inv0_node175 t) (inv0_node39 t) (inv0_node80 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim22 t) (inv0_claim930 t) (inv0_shift125 t)
  · exact bool_transfer_true (inv0_node174 t) (inv0_node99 t) (inv0_node348 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim933 t) (inv0_claim935 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node174 t) (inv0_node19 t) (inv0_node349 t) (inv0_node38 t) (inv0_node172 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim936 t) (inv0_claim938 t) (inv0_shift302 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node99 t) (inv0_node17 t) (inv0_node1 t) (inv0_node1 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim47 t) (inv0_claim330 t) (inv0_shift0 t)
  · exact bool_transfer_true (inv0_node16 t) (inv0_node19 t) (inv0_node123 t) (inv0_node16 t) (inv0_node86 (shiftInput false false t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim51 t) (inv0_claim476 t) (inv0_shift115 t)
  · exact bool_transfer_true (inv0_node158 t) (inv0_node99 t) (inv0_node320 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim782 t) (inv0_claim784 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node158 t) (inv0_node19 t) (inv0_node321 t) (inv0_node1 t) (inv0_node16 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim785 t) (inv0_claim786 t) (inv0_shift7 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node99 t) (inv0_node229 t) (inv0_node11 t) (inv0_node10 (shiftInput true false t))
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim236 t) (inv0_claim475 t) (inv0_shift10 t)
  · exact bool_transfer_true (inv0_node63 t) (inv0_node19 t) (inv0_node230 t) (inv0_node11 t) (inv0_node73 (shiftInput true true t))
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim241 t) (inv0_claim939 t) (inv0_shift147 t)

theorem inv0_read_mask : ∀ (q : Fin 339) (t : ℤ → Bool) (b : Bool),
    inv0_before q b = true → t 0 = b → inv0_predicate q t = true → inv0_after q b = true := by
  intro q t b hp hb hq
  fin_cases q <;> cases b
  · rfl
  · exact (bool_empty_elim (inv0_node8 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim14 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node13 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim36 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node18 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim58 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node92 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim539 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node93 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim546 t) rfl).elim
  · exact (bool_empty_elim (inv0_node96 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim549 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node18 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim58 t) rfl).elim
  · exact (bool_empty_elim (inv0_node98 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim563 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node104 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim582 t) rfl).elim
  · exact (bool_empty_elim (inv0_node107 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim585 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node109 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim592 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node104 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim582 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · exact (bool_empty_elim (inv0_node107 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim585 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node112 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim604 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node86 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim518 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node115 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim618 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node96 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim549 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node50 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim164 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node121 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim644 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node122 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim648 t) rfl).elim
  · exact (bool_empty_elim (inv0_node125 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim651 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node112 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim604 t) rfl).elim
  · exact (bool_empty_elim (inv0_node126 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim656 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node131 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim674 t) rfl).elim
  · exact (bool_empty_elim (inv0_node132 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim675 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node134 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim679 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node137 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim690 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node139 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim697 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node130 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim673 t) rfl).elim
  · exact (bool_empty_elim (inv0_node140 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim699 t) rfl).elim
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node142 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim710 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node145 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim722 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node146 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim725 t) rfl).elim
  · exact (bool_empty_elim (inv0_node148 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim727 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · exact (bool_empty_elim (inv0_node150 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim734 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · exact (bool_empty_elim (inv0_node152 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim747 t) rfl).elim
  · exact (bool_empty_elim (inv0_node153 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim748 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · exact (bool_empty_elim (inv0_node155 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim754 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node99 t) false
      hq (by simp [inv0_node99, inv0_node0, inv0_node1, hb])
      (inv0_claim3 t) rfl).elim
  · exact (bool_empty_elim (inv0_node0 t) (inv0_node19 t) false
      hq (by simp [inv0_node19, inv0_node0, inv0_node1, hb])
      (inv0_claim11 t) rfl).elim
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl
  · rfl

end RiemannMachineVerification.Optimized278
