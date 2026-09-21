import RiemannMachineVerification.Specification.Arithmetic
import Mathlib.Tactic

set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification

/-- [proof-guide] The initial-segment LCM at index 0 equals the displayed exact natural number.
Proof: Definitional reduction in the Lean kernel.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_0 : lcmUpto 0 = 1 := rfl

/-- [proof-guide] The initial-segment LCM at index 1 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_1 : lcmUpto 1 = 1 := by
  change Nat.lcm (lcmUpto 0) 1 = 1
  rw [lcm_value_0]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 2 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_2 : lcmUpto 2 = 2 := by
  change Nat.lcm (lcmUpto 1) 2 = 2
  rw [lcm_value_1]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 3 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_3 : lcmUpto 3 = 6 := by
  change Nat.lcm (lcmUpto 2) 3 = 6
  rw [lcm_value_2]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 4 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_4 : lcmUpto 4 = 12 := by
  change Nat.lcm (lcmUpto 3) 4 = 12
  rw [lcm_value_3]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 5 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_5 : lcmUpto 5 = 60 := by
  change Nat.lcm (lcmUpto 4) 5 = 60
  rw [lcm_value_4]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 6 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_6 : lcmUpto 6 = 60 := by
  change Nat.lcm (lcmUpto 5) 6 = 60
  rw [lcm_value_5]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 7 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_7 : lcmUpto 7 = 420 := by
  change Nat.lcm (lcmUpto 6) 7 = 420
  rw [lcm_value_6]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 8 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_8 : lcmUpto 8 = 840 := by
  change Nat.lcm (lcmUpto 7) 8 = 840
  rw [lcm_value_7]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 9 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_9 : lcmUpto 9 = 2520 := by
  change Nat.lcm (lcmUpto 8) 9 = 2520
  rw [lcm_value_8]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 10 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_10 : lcmUpto 10 = 2520 := by
  change Nat.lcm (lcmUpto 9) 10 = 2520
  rw [lcm_value_9]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 11 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_11 : lcmUpto 11 = 27720 := by
  change Nat.lcm (lcmUpto 10) 11 = 27720
  rw [lcm_value_10]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 12 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_12 : lcmUpto 12 = 27720 := by
  change Nat.lcm (lcmUpto 11) 12 = 27720
  rw [lcm_value_11]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 13 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_13 : lcmUpto 13 = 360360 := by
  change Nat.lcm (lcmUpto 12) 13 = 360360
  rw [lcm_value_12]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 14 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_14 : lcmUpto 14 = 360360 := by
  change Nat.lcm (lcmUpto 13) 14 = 360360
  rw [lcm_value_13]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 15 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_15 : lcmUpto 15 = 360360 := by
  change Nat.lcm (lcmUpto 14) 15 = 360360
  rw [lcm_value_14]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 16 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_16 : lcmUpto 16 = 720720 := by
  change Nat.lcm (lcmUpto 15) 16 = 720720
  rw [lcm_value_15]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 17 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_17 : lcmUpto 17 = 12252240 := by
  change Nat.lcm (lcmUpto 16) 17 = 12252240
  rw [lcm_value_16]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 18 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_18 : lcmUpto 18 = 12252240 := by
  change Nat.lcm (lcmUpto 17) 18 = 12252240
  rw [lcm_value_17]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 19 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_19 : lcmUpto 19 = 232792560 := by
  change Nat.lcm (lcmUpto 18) 19 = 232792560
  rw [lcm_value_18]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 20 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_20 : lcmUpto 20 = 232792560 := by
  change Nat.lcm (lcmUpto 19) 20 = 232792560
  rw [lcm_value_19]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 21 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_21 : lcmUpto 21 = 232792560 := by
  change Nat.lcm (lcmUpto 20) 21 = 232792560
  rw [lcm_value_20]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 22 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_22 : lcmUpto 22 = 232792560 := by
  change Nat.lcm (lcmUpto 21) 22 = 232792560
  rw [lcm_value_21]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 23 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_23 : lcmUpto 23 = 5354228880 := by
  change Nat.lcm (lcmUpto 22) 23 = 5354228880
  rw [lcm_value_22]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 24 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_24 : lcmUpto 24 = 5354228880 := by
  change Nat.lcm (lcmUpto 23) 24 = 5354228880
  rw [lcm_value_23]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 25 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_25 : lcmUpto 25 = 26771144400 := by
  change Nat.lcm (lcmUpto 24) 25 = 26771144400
  rw [lcm_value_24]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 26 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_26 : lcmUpto 26 = 26771144400 := by
  change Nat.lcm (lcmUpto 25) 26 = 26771144400
  rw [lcm_value_25]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 27 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_27 : lcmUpto 27 = 80313433200 := by
  change Nat.lcm (lcmUpto 26) 27 = 80313433200
  rw [lcm_value_26]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 28 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_28 : lcmUpto 28 = 80313433200 := by
  change Nat.lcm (lcmUpto 27) 28 = 80313433200
  rw [lcm_value_27]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 29 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_29 : lcmUpto 29 = 2329089562800 := by
  change Nat.lcm (lcmUpto 28) 29 = 2329089562800
  rw [lcm_value_28]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 30 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_30 : lcmUpto 30 = 2329089562800 := by
  change Nat.lcm (lcmUpto 29) 30 = 2329089562800
  rw [lcm_value_29]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 31 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_31 : lcmUpto 31 = 72201776446800 := by
  change Nat.lcm (lcmUpto 30) 31 = 72201776446800
  rw [lcm_value_30]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 32 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_32 : lcmUpto 32 = 144403552893600 := by
  change Nat.lcm (lcmUpto 31) 32 = 144403552893600
  rw [lcm_value_31]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 33 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_33 : lcmUpto 33 = 144403552893600 := by
  change Nat.lcm (lcmUpto 32) 33 = 144403552893600
  rw [lcm_value_32]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 34 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_34 : lcmUpto 34 = 144403552893600 := by
  change Nat.lcm (lcmUpto 33) 34 = 144403552893600
  rw [lcm_value_33]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 35 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_35 : lcmUpto 35 = 144403552893600 := by
  change Nat.lcm (lcmUpto 34) 35 = 144403552893600
  rw [lcm_value_34]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 36 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_36 : lcmUpto 36 = 144403552893600 := by
  change Nat.lcm (lcmUpto 35) 36 = 144403552893600
  rw [lcm_value_35]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 37 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_37 : lcmUpto 37 = 5342931457063200 := by
  change Nat.lcm (lcmUpto 36) 37 = 5342931457063200
  rw [lcm_value_36]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 38 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_38 : lcmUpto 38 = 5342931457063200 := by
  change Nat.lcm (lcmUpto 37) 38 = 5342931457063200
  rw [lcm_value_37]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 39 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_39 : lcmUpto 39 = 5342931457063200 := by
  change Nat.lcm (lcmUpto 38) 39 = 5342931457063200
  rw [lcm_value_38]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 40 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_40 : lcmUpto 40 = 5342931457063200 := by
  change Nat.lcm (lcmUpto 39) 40 = 5342931457063200
  rw [lcm_value_39]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 41 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_41 : lcmUpto 41 = 219060189739591200 := by
  change Nat.lcm (lcmUpto 40) 41 = 219060189739591200
  rw [lcm_value_40]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 42 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_42 : lcmUpto 42 = 219060189739591200 := by
  change Nat.lcm (lcmUpto 41) 42 = 219060189739591200
  rw [lcm_value_41]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 43 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_43 : lcmUpto 43 = 9419588158802421600 := by
  change Nat.lcm (lcmUpto 42) 43 = 9419588158802421600
  rw [lcm_value_42]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 44 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_44 : lcmUpto 44 = 9419588158802421600 := by
  change Nat.lcm (lcmUpto 43) 44 = 9419588158802421600
  rw [lcm_value_43]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 45 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_45 : lcmUpto 45 = 9419588158802421600 := by
  change Nat.lcm (lcmUpto 44) 45 = 9419588158802421600
  rw [lcm_value_44]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 46 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_46 : lcmUpto 46 = 9419588158802421600 := by
  change Nat.lcm (lcmUpto 45) 46 = 9419588158802421600
  rw [lcm_value_45]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 47 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_47 : lcmUpto 47 = 442720643463713815200 := by
  change Nat.lcm (lcmUpto 46) 47 = 442720643463713815200
  rw [lcm_value_46]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 48 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_48 : lcmUpto 48 = 442720643463713815200 := by
  change Nat.lcm (lcmUpto 47) 48 = 442720643463713815200
  rw [lcm_value_47]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 49 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_49 : lcmUpto 49 = 3099044504245996706400 := by
  change Nat.lcm (lcmUpto 48) 49 = 3099044504245996706400
  rw [lcm_value_48]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 50 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_50 : lcmUpto 50 = 3099044504245996706400 := by
  change Nat.lcm (lcmUpto 49) 50 = 3099044504245996706400
  rw [lcm_value_49]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 51 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_51 : lcmUpto 51 = 3099044504245996706400 := by
  change Nat.lcm (lcmUpto 50) 51 = 3099044504245996706400
  rw [lcm_value_50]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 52 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_52 : lcmUpto 52 = 3099044504245996706400 := by
  change Nat.lcm (lcmUpto 51) 52 = 3099044504245996706400
  rw [lcm_value_51]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 53 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_53 : lcmUpto 53 = 164249358725037825439200 := by
  change Nat.lcm (lcmUpto 52) 53 = 164249358725037825439200
  rw [lcm_value_52]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 54 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_54 : lcmUpto 54 = 164249358725037825439200 := by
  change Nat.lcm (lcmUpto 53) 54 = 164249358725037825439200
  rw [lcm_value_53]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 55 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_55 : lcmUpto 55 = 164249358725037825439200 := by
  change Nat.lcm (lcmUpto 54) 55 = 164249358725037825439200
  rw [lcm_value_54]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 56 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_56 : lcmUpto 56 = 164249358725037825439200 := by
  change Nat.lcm (lcmUpto 55) 56 = 164249358725037825439200
  rw [lcm_value_55]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 57 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_57 : lcmUpto 57 = 164249358725037825439200 := by
  change Nat.lcm (lcmUpto 56) 57 = 164249358725037825439200
  rw [lcm_value_56]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 58 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_58 : lcmUpto 58 = 164249358725037825439200 := by
  change Nat.lcm (lcmUpto 57) 58 = 164249358725037825439200
  rw [lcm_value_57]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 59 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_59 : lcmUpto 59 = 9690712164777231700912800 := by
  change Nat.lcm (lcmUpto 58) 59 = 9690712164777231700912800
  rw [lcm_value_58]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 60 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_60 : lcmUpto 60 = 9690712164777231700912800 := by
  change Nat.lcm (lcmUpto 59) 60 = 9690712164777231700912800
  rw [lcm_value_59]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 61 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_61 : lcmUpto 61 = 591133442051411133755680800 := by
  change Nat.lcm (lcmUpto 60) 61 = 591133442051411133755680800
  rw [lcm_value_60]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 62 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_62 : lcmUpto 62 = 591133442051411133755680800 := by
  change Nat.lcm (lcmUpto 61) 62 = 591133442051411133755680800
  rw [lcm_value_61]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 63 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_63 : lcmUpto 63 = 591133442051411133755680800 := by
  change Nat.lcm (lcmUpto 62) 63 = 591133442051411133755680800
  rw [lcm_value_62]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 64 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_64 : lcmUpto 64 = 1182266884102822267511361600 := by
  change Nat.lcm (lcmUpto 63) 64 = 1182266884102822267511361600
  rw [lcm_value_63]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 65 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_65 : lcmUpto 65 = 1182266884102822267511361600 := by
  change Nat.lcm (lcmUpto 64) 65 = 1182266884102822267511361600
  rw [lcm_value_64]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 66 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_66 : lcmUpto 66 = 1182266884102822267511361600 := by
  change Nat.lcm (lcmUpto 65) 66 = 1182266884102822267511361600
  rw [lcm_value_65]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 67 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_67 : lcmUpto 67 = 79211881234889091923261227200 := by
  change Nat.lcm (lcmUpto 66) 67 = 79211881234889091923261227200
  rw [lcm_value_66]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 68 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_68 : lcmUpto 68 = 79211881234889091923261227200 := by
  change Nat.lcm (lcmUpto 67) 68 = 79211881234889091923261227200
  rw [lcm_value_67]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 69 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_69 : lcmUpto 69 = 79211881234889091923261227200 := by
  change Nat.lcm (lcmUpto 68) 69 = 79211881234889091923261227200
  rw [lcm_value_68]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 70 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_70 : lcmUpto 70 = 79211881234889091923261227200 := by
  change Nat.lcm (lcmUpto 69) 70 = 79211881234889091923261227200
  rw [lcm_value_69]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 71 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_71 : lcmUpto 71 = 5624043567677125526551547131200 := by
  change Nat.lcm (lcmUpto 70) 71 = 5624043567677125526551547131200
  rw [lcm_value_70]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 72 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_72 : lcmUpto 72 = 5624043567677125526551547131200 := by
  change Nat.lcm (lcmUpto 71) 72 = 5624043567677125526551547131200
  rw [lcm_value_71]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 73 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_73 : lcmUpto 73 = 410555180440430163438262940577600 := by
  change Nat.lcm (lcmUpto 72) 73 = 410555180440430163438262940577600
  rw [lcm_value_72]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 74 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_74 : lcmUpto 74 = 410555180440430163438262940577600 := by
  change Nat.lcm (lcmUpto 73) 74 = 410555180440430163438262940577600
  rw [lcm_value_73]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 75 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_75 : lcmUpto 75 = 410555180440430163438262940577600 := by
  change Nat.lcm (lcmUpto 74) 75 = 410555180440430163438262940577600
  rw [lcm_value_74]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 76 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_76 : lcmUpto 76 = 410555180440430163438262940577600 := by
  change Nat.lcm (lcmUpto 75) 76 = 410555180440430163438262940577600
  rw [lcm_value_75]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 77 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_77 : lcmUpto 77 = 410555180440430163438262940577600 := by
  change Nat.lcm (lcmUpto 76) 77 = 410555180440430163438262940577600
  rw [lcm_value_76]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 78 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_78 : lcmUpto 78 = 410555180440430163438262940577600 := by
  change Nat.lcm (lcmUpto 77) 78 = 410555180440430163438262940577600
  rw [lcm_value_77]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 79 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_79 : lcmUpto 79 = 32433859254793982911622772305630400 := by
  change Nat.lcm (lcmUpto 78) 79 = 32433859254793982911622772305630400
  rw [lcm_value_78]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 80 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_80 : lcmUpto 80 = 32433859254793982911622772305630400 := by
  change Nat.lcm (lcmUpto 79) 80 = 32433859254793982911622772305630400
  rw [lcm_value_79]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 81 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_81 : lcmUpto 81 = 97301577764381948734868316916891200 := by
  change Nat.lcm (lcmUpto 80) 81 = 97301577764381948734868316916891200
  rw [lcm_value_80]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 82 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_82 : lcmUpto 82 = 97301577764381948734868316916891200 := by
  change Nat.lcm (lcmUpto 81) 82 = 97301577764381948734868316916891200
  rw [lcm_value_81]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 83 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_83 : lcmUpto 83 = 8076030954443701744994070304101969600 := by
  change Nat.lcm (lcmUpto 82) 83 = 8076030954443701744994070304101969600
  rw [lcm_value_82]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 84 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_84 : lcmUpto 84 = 8076030954443701744994070304101969600 := by
  change Nat.lcm (lcmUpto 83) 84 = 8076030954443701744994070304101969600
  rw [lcm_value_83]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 85 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_85 : lcmUpto 85 = 8076030954443701744994070304101969600 := by
  change Nat.lcm (lcmUpto 84) 85 = 8076030954443701744994070304101969600
  rw [lcm_value_84]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 86 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_86 : lcmUpto 86 = 8076030954443701744994070304101969600 := by
  change Nat.lcm (lcmUpto 85) 86 = 8076030954443701744994070304101969600
  rw [lcm_value_85]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 87 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_87 : lcmUpto 87 = 8076030954443701744994070304101969600 := by
  change Nat.lcm (lcmUpto 86) 87 = 8076030954443701744994070304101969600
  rw [lcm_value_86]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 88 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_88 : lcmUpto 88 = 8076030954443701744994070304101969600 := by
  change Nat.lcm (lcmUpto 87) 88 = 8076030954443701744994070304101969600
  rw [lcm_value_87]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 89 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_89 : lcmUpto 89 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 88) 89 = 718766754945489455304472257065075294400
  rw [lcm_value_88]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 90 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_90 : lcmUpto 90 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 89) 90 = 718766754945489455304472257065075294400
  rw [lcm_value_89]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 91 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_91 : lcmUpto 91 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 90) 91 = 718766754945489455304472257065075294400
  rw [lcm_value_90]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 92 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_92 : lcmUpto 92 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 91) 92 = 718766754945489455304472257065075294400
  rw [lcm_value_91]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 93 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_93 : lcmUpto 93 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 92) 93 = 718766754945489455304472257065075294400
  rw [lcm_value_92]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 94 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_94 : lcmUpto 94 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 93) 94 = 718766754945489455304472257065075294400
  rw [lcm_value_93]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 95 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_95 : lcmUpto 95 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 94) 95 = 718766754945489455304472257065075294400
  rw [lcm_value_94]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 96 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_96 : lcmUpto 96 = 718766754945489455304472257065075294400 := by
  change Nat.lcm (lcmUpto 95) 96 = 718766754945489455304472257065075294400
  rw [lcm_value_95]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 97 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_97 : lcmUpto 97 = 69720375229712477164533808935312303556800 := by
  change Nat.lcm (lcmUpto 96) 97 = 69720375229712477164533808935312303556800
  rw [lcm_value_96]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 98 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_98 : lcmUpto 98 = 69720375229712477164533808935312303556800 := by
  change Nat.lcm (lcmUpto 97) 98 = 69720375229712477164533808935312303556800
  rw [lcm_value_97]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 99 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_99 : lcmUpto 99 = 69720375229712477164533808935312303556800 := by
  change Nat.lcm (lcmUpto 98) 99 = 69720375229712477164533808935312303556800
  rw [lcm_value_98]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 100 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_100 : lcmUpto 100 = 69720375229712477164533808935312303556800 := by
  change Nat.lcm (lcmUpto 99) 100 = 69720375229712477164533808935312303556800
  rw [lcm_value_99]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 101 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_101 : lcmUpto 101 = 7041757898200960193617914702466542659236800 := by
  change Nat.lcm (lcmUpto 100) 101 = 7041757898200960193617914702466542659236800
  rw [lcm_value_100]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 102 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_102 : lcmUpto 102 = 7041757898200960193617914702466542659236800 := by
  change Nat.lcm (lcmUpto 101) 102 = 7041757898200960193617914702466542659236800
  rw [lcm_value_101]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 103 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_103 : lcmUpto 103 = 725301063514698899942645214354053893901390400 := by
  change Nat.lcm (lcmUpto 102) 103 = 725301063514698899942645214354053893901390400
  rw [lcm_value_102]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 104 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_104 : lcmUpto 104 = 725301063514698899942645214354053893901390400 := by
  change Nat.lcm (lcmUpto 103) 104 = 725301063514698899942645214354053893901390400
  rw [lcm_value_103]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 105 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_105 : lcmUpto 105 = 725301063514698899942645214354053893901390400 := by
  change Nat.lcm (lcmUpto 104) 105 = 725301063514698899942645214354053893901390400
  rw [lcm_value_104]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 106 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_106 : lcmUpto 106 = 725301063514698899942645214354053893901390400 := by
  change Nat.lcm (lcmUpto 105) 106 = 725301063514698899942645214354053893901390400
  rw [lcm_value_105]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 107 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_107 : lcmUpto 107 = 77607213796072782293863037935883766647448772800 := by
  change Nat.lcm (lcmUpto 106) 107 = 77607213796072782293863037935883766647448772800
  rw [lcm_value_106]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 108 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_108 : lcmUpto 108 = 77607213796072782293863037935883766647448772800 := by
  change Nat.lcm (lcmUpto 107) 108 = 77607213796072782293863037935883766647448772800
  rw [lcm_value_107]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 109 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_109 : lcmUpto 109 = 8459186303771933270031071135011330564571916235200 := by
  change Nat.lcm (lcmUpto 108) 109 = 8459186303771933270031071135011330564571916235200
  rw [lcm_value_108]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 110 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_110 : lcmUpto 110 = 8459186303771933270031071135011330564571916235200 := by
  change Nat.lcm (lcmUpto 109) 110 = 8459186303771933270031071135011330564571916235200
  rw [lcm_value_109]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 111 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_111 : lcmUpto 111 = 8459186303771933270031071135011330564571916235200 := by
  change Nat.lcm (lcmUpto 110) 111 = 8459186303771933270031071135011330564571916235200
  rw [lcm_value_110]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 112 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_112 : lcmUpto 112 = 8459186303771933270031071135011330564571916235200 := by
  change Nat.lcm (lcmUpto 111) 112 = 8459186303771933270031071135011330564571916235200
  rw [lcm_value_111]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 113 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_113 : lcmUpto 113 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 112) 113 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_112]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 114 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_114 : lcmUpto 114 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 113) 114 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_113]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 115 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_115 : lcmUpto 115 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 114) 115 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_114]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 116 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_116 : lcmUpto 116 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 115) 116 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_115]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 117 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_117 : lcmUpto 117 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 116) 117 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_116]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 118 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_118 : lcmUpto 118 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 117) 118 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_117]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 119 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_119 : lcmUpto 119 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 118) 119 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_118]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 120 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_120 : lcmUpto 120 = 955888052326228459513511038256280353796626534577600 := by
  change Nat.lcm (lcmUpto 119) 120 = 955888052326228459513511038256280353796626534577600
  rw [lcm_value_119]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 121 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_121 : lcmUpto 121 = 10514768575588513054648621420819083891762891880353600 := by
  change Nat.lcm (lcmUpto 120) 121 = 10514768575588513054648621420819083891762891880353600
  rw [lcm_value_120]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 122 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_122 : lcmUpto 122 = 10514768575588513054648621420819083891762891880353600 := by
  change Nat.lcm (lcmUpto 121) 122 = 10514768575588513054648621420819083891762891880353600
  rw [lcm_value_121]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 123 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_123 : lcmUpto 123 = 10514768575588513054648621420819083891762891880353600 := by
  change Nat.lcm (lcmUpto 122) 123 = 10514768575588513054648621420819083891762891880353600
  rw [lcm_value_122]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 124 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_124 : lcmUpto 124 = 10514768575588513054648621420819083891762891880353600 := by
  change Nat.lcm (lcmUpto 123) 124 = 10514768575588513054648621420819083891762891880353600
  rw [lcm_value_123]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 125 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_125 : lcmUpto 125 = 52573842877942565273243107104095419458814459401768000 := by
  change Nat.lcm (lcmUpto 124) 125 = 52573842877942565273243107104095419458814459401768000
  rw [lcm_value_124]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 126 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_126 : lcmUpto 126 = 52573842877942565273243107104095419458814459401768000 := by
  change Nat.lcm (lcmUpto 125) 126 = 52573842877942565273243107104095419458814459401768000
  rw [lcm_value_125]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 127 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_127 : lcmUpto 127 = 6676878045498705789701874602220118271269436344024536000 := by
  change Nat.lcm (lcmUpto 126) 127 = 6676878045498705789701874602220118271269436344024536000
  rw [lcm_value_126]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 128 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_128 : lcmUpto 128 = 13353756090997411579403749204440236542538872688049072000 := by
  change Nat.lcm (lcmUpto 127) 128 = 13353756090997411579403749204440236542538872688049072000
  rw [lcm_value_127]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 129 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_129 : lcmUpto 129 = 13353756090997411579403749204440236542538872688049072000 := by
  change Nat.lcm (lcmUpto 128) 129 = 13353756090997411579403749204440236542538872688049072000
  rw [lcm_value_128]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 130 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_130 : lcmUpto 130 = 13353756090997411579403749204440236542538872688049072000 := by
  change Nat.lcm (lcmUpto 129) 130 = 13353756090997411579403749204440236542538872688049072000
  rw [lcm_value_129]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 131 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_131 : lcmUpto 131 = 1749342047920660916901891145781670987072592322134428432000 := by
  change Nat.lcm (lcmUpto 130) 131 = 1749342047920660916901891145781670987072592322134428432000
  rw [lcm_value_130]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 132 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_132 : lcmUpto 132 = 1749342047920660916901891145781670987072592322134428432000 := by
  change Nat.lcm (lcmUpto 131) 132 = 1749342047920660916901891145781670987072592322134428432000
  rw [lcm_value_131]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 133 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_133 : lcmUpto 133 = 1749342047920660916901891145781670987072592322134428432000 := by
  change Nat.lcm (lcmUpto 132) 133 = 1749342047920660916901891145781670987072592322134428432000
  rw [lcm_value_132]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 134 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_134 : lcmUpto 134 = 1749342047920660916901891145781670987072592322134428432000 := by
  change Nat.lcm (lcmUpto 133) 134 = 1749342047920660916901891145781670987072592322134428432000
  rw [lcm_value_133]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 135 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_135 : lcmUpto 135 = 1749342047920660916901891145781670987072592322134428432000 := by
  change Nat.lcm (lcmUpto 134) 135 = 1749342047920660916901891145781670987072592322134428432000
  rw [lcm_value_134]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 136 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_136 : lcmUpto 136 = 1749342047920660916901891145781670987072592322134428432000 := by
  change Nat.lcm (lcmUpto 135) 136 = 1749342047920660916901891145781670987072592322134428432000
  rw [lcm_value_135]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 137 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_137 : lcmUpto 137 = 239659860565130545615559086972088925228945148132416695184000 := by
  change Nat.lcm (lcmUpto 136) 137 = 239659860565130545615559086972088925228945148132416695184000
  rw [lcm_value_136]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 138 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_138 : lcmUpto 138 = 239659860565130545615559086972088925228945148132416695184000 := by
  change Nat.lcm (lcmUpto 137) 138 = 239659860565130545615559086972088925228945148132416695184000
  rw [lcm_value_137]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 139 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_139 : lcmUpto 139 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 138) 139 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_138]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 140 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_140 : lcmUpto 140 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 139) 140 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_139]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 141 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_141 : lcmUpto 141 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 140) 141 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_140]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 142 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_142 : lcmUpto 142 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 141) 142 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_141]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 143 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_143 : lcmUpto 143 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 142) 143 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_142]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 144 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_144 : lcmUpto 144 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 143) 144 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_143]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 145 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_145 : lcmUpto 145 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 144) 145 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_144]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 146 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_146 : lcmUpto 146 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 145) 146 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_145]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 147 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_147 : lcmUpto 147 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 146) 147 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_146]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 148 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_148 : lcmUpto 148 = 33312720618553145840562713089120360606823375590405920630576000 := by
  change Nat.lcm (lcmUpto 147) 148 = 33312720618553145840562713089120360606823375590405920630576000
  rw [lcm_value_147]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 149 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_149 : lcmUpto 149 = 4963595372164418730243844250278933730416682962970482173955824000 := by
  change Nat.lcm (lcmUpto 148) 149 = 4963595372164418730243844250278933730416682962970482173955824000
  rw [lcm_value_148]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 150 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_150 : lcmUpto 150 = 4963595372164418730243844250278933730416682962970482173955824000 := by
  change Nat.lcm (lcmUpto 149) 150 = 4963595372164418730243844250278933730416682962970482173955824000
  rw [lcm_value_149]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 151 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_151 : lcmUpto 151 = 749502901196827228266820481792118993292919127408542808267329424000 := by
  change Nat.lcm (lcmUpto 150) 151 = 749502901196827228266820481792118993292919127408542808267329424000
  rw [lcm_value_150]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 152 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_152 : lcmUpto 152 = 749502901196827228266820481792118993292919127408542808267329424000 := by
  change Nat.lcm (lcmUpto 151) 152 = 749502901196827228266820481792118993292919127408542808267329424000
  rw [lcm_value_151]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 153 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_153 : lcmUpto 153 = 749502901196827228266820481792118993292919127408542808267329424000 := by
  change Nat.lcm (lcmUpto 152) 153 = 749502901196827228266820481792118993292919127408542808267329424000
  rw [lcm_value_152]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 154 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_154 : lcmUpto 154 = 749502901196827228266820481792118993292919127408542808267329424000 := by
  change Nat.lcm (lcmUpto 153) 154 = 749502901196827228266820481792118993292919127408542808267329424000
  rw [lcm_value_153]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 155 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_155 : lcmUpto 155 = 749502901196827228266820481792118993292919127408542808267329424000 := by
  change Nat.lcm (lcmUpto 154) 155 = 749502901196827228266820481792118993292919127408542808267329424000
  rw [lcm_value_154]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 156 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_156 : lcmUpto 156 = 749502901196827228266820481792118993292919127408542808267329424000 := by
  change Nat.lcm (lcmUpto 155) 156 = 749502901196827228266820481792118993292919127408542808267329424000
  rw [lcm_value_155]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 157 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_157 : lcmUpto 157 = 117671955487901874837890815641362681946988303003141220897970719568000 := by
  change Nat.lcm (lcmUpto 156) 157 = 117671955487901874837890815641362681946988303003141220897970719568000
  rw [lcm_value_156]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 158 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_158 : lcmUpto 158 = 117671955487901874837890815641362681946988303003141220897970719568000 := by
  change Nat.lcm (lcmUpto 157) 158 = 117671955487901874837890815641362681946988303003141220897970719568000
  rw [lcm_value_157]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 159 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_159 : lcmUpto 159 = 117671955487901874837890815641362681946988303003141220897970719568000 := by
  change Nat.lcm (lcmUpto 158) 159 = 117671955487901874837890815641362681946988303003141220897970719568000
  rw [lcm_value_158]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 160 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_160 : lcmUpto 160 = 117671955487901874837890815641362681946988303003141220897970719568000 := by
  change Nat.lcm (lcmUpto 159) 160 = 117671955487901874837890815641362681946988303003141220897970719568000
  rw [lcm_value_159]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 161 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_161 : lcmUpto 161 = 117671955487901874837890815641362681946988303003141220897970719568000 := by
  change Nat.lcm (lcmUpto 160) 161 = 117671955487901874837890815641362681946988303003141220897970719568000
  rw [lcm_value_160]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 162 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_162 : lcmUpto 162 = 117671955487901874837890815641362681946988303003141220897970719568000 := by
  change Nat.lcm (lcmUpto 161) 162 = 117671955487901874837890815641362681946988303003141220897970719568000
  rw [lcm_value_161]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 163 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_163 : lcmUpto 163 = 19180528744528005598576202949542117157359093389512019006369227289584000 := by
  change Nat.lcm (lcmUpto 162) 163 = 19180528744528005598576202949542117157359093389512019006369227289584000
  rw [lcm_value_162]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 164 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_164 : lcmUpto 164 = 19180528744528005598576202949542117157359093389512019006369227289584000 := by
  change Nat.lcm (lcmUpto 163) 164 = 19180528744528005598576202949542117157359093389512019006369227289584000
  rw [lcm_value_163]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 165 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_165 : lcmUpto 165 = 19180528744528005598576202949542117157359093389512019006369227289584000 := by
  change Nat.lcm (lcmUpto 164) 165 = 19180528744528005598576202949542117157359093389512019006369227289584000
  rw [lcm_value_164]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 166 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_166 : lcmUpto 166 = 19180528744528005598576202949542117157359093389512019006369227289584000 := by
  change Nat.lcm (lcmUpto 165) 166 = 19180528744528005598576202949542117157359093389512019006369227289584000
  rw [lcm_value_165]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 167 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_167 : lcmUpto 167 = 3203148300336176934962225892573533565278968596048507174063660957360528000 := by
  change Nat.lcm (lcmUpto 166) 167 = 3203148300336176934962225892573533565278968596048507174063660957360528000
  rw [lcm_value_166]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 168 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_168 : lcmUpto 168 = 3203148300336176934962225892573533565278968596048507174063660957360528000 := by
  change Nat.lcm (lcmUpto 167) 168 = 3203148300336176934962225892573533565278968596048507174063660957360528000
  rw [lcm_value_167]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 169 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_169 : lcmUpto 169 = 41640927904370300154508936603455936348626591748630593262827592445686864000 := by
  change Nat.lcm (lcmUpto 168) 169 = 41640927904370300154508936603455936348626591748630593262827592445686864000
  rw [lcm_value_168]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 170 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_170 : lcmUpto 170 = 41640927904370300154508936603455936348626591748630593262827592445686864000 := by
  change Nat.lcm (lcmUpto 169) 170 = 41640927904370300154508936603455936348626591748630593262827592445686864000
  rw [lcm_value_169]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 171 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_171 : lcmUpto 171 = 41640927904370300154508936603455936348626591748630593262827592445686864000 := by
  change Nat.lcm (lcmUpto 170) 171 = 41640927904370300154508936603455936348626591748630593262827592445686864000
  rw [lcm_value_170]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 172 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_172 : lcmUpto 172 = 41640927904370300154508936603455936348626591748630593262827592445686864000 := by
  change Nat.lcm (lcmUpto 171) 172 = 41640927904370300154508936603455936348626591748630593262827592445686864000
  rw [lcm_value_171]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 173 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_173 : lcmUpto 173 = 7203880527456061926730046032397876988312400372513092634469173493103827472000 := by
  change Nat.lcm (lcmUpto 172) 173 = 7203880527456061926730046032397876988312400372513092634469173493103827472000
  rw [lcm_value_172]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 174 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_174 : lcmUpto 174 = 7203880527456061926730046032397876988312400372513092634469173493103827472000 := by
  change Nat.lcm (lcmUpto 173) 174 = 7203880527456061926730046032397876988312400372513092634469173493103827472000
  rw [lcm_value_173]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 175 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_175 : lcmUpto 175 = 7203880527456061926730046032397876988312400372513092634469173493103827472000 := by
  change Nat.lcm (lcmUpto 174) 175 = 7203880527456061926730046032397876988312400372513092634469173493103827472000
  rw [lcm_value_174]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 176 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_176 : lcmUpto 176 = 7203880527456061926730046032397876988312400372513092634469173493103827472000 := by
  change Nat.lcm (lcmUpto 175) 176 = 7203880527456061926730046032397876988312400372513092634469173493103827472000
  rw [lcm_value_175]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 177 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_177 : lcmUpto 177 = 7203880527456061926730046032397876988312400372513092634469173493103827472000 := by
  change Nat.lcm (lcmUpto 176) 177 = 7203880527456061926730046032397876988312400372513092634469173493103827472000
  rw [lcm_value_176]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 178 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_178 : lcmUpto 178 = 7203880527456061926730046032397876988312400372513092634469173493103827472000 := by
  change Nat.lcm (lcmUpto 177) 178 = 7203880527456061926730046032397876988312400372513092634469173493103827472000
  rw [lcm_value_177]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 179 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_179 : lcmUpto 179 = 1289494614414635084884678239799219980907919666679843581569982055265585117488000 := by
  change Nat.lcm (lcmUpto 178) 179 = 1289494614414635084884678239799219980907919666679843581569982055265585117488000
  rw [lcm_value_178]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 180 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_180 : lcmUpto 180 = 1289494614414635084884678239799219980907919666679843581569982055265585117488000 := by
  change Nat.lcm (lcmUpto 179) 180 = 1289494614414635084884678239799219980907919666679843581569982055265585117488000
  rw [lcm_value_179]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 181 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_181 : lcmUpto 181 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 180) 181 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_180]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 182 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_182 : lcmUpto 182 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 181) 182 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_181]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 183 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_183 : lcmUpto 183 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 182) 183 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_182]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 184 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_184 : lcmUpto 184 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 183) 184 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_183]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 185 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_185 : lcmUpto 185 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 184) 185 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_184]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 186 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_186 : lcmUpto 186 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 185) 186 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_185]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 187 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_187 : lcmUpto 187 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 186) 187 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_186]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 188 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_188 : lcmUpto 188 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 187) 188 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_187]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 189 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_189 : lcmUpto 189 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 188) 189 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_188]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 190 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_190 : lcmUpto 190 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000 := by
  change Nat.lcm (lcmUpto 189) 190 = 233398525209048950364126761403658816544333459669051688264166752003070906265328000
  rw [lcm_value_189]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 191 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_191 : lcmUpto 191 = 44579118314928349519548211428098833959967690796788872458455849632586543096677648000 := by
  change Nat.lcm (lcmUpto 190) 191 = 44579118314928349519548211428098833959967690796788872458455849632586543096677648000
  rw [lcm_value_190]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 192 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_192 : lcmUpto 192 = 44579118314928349519548211428098833959967690796788872458455849632586543096677648000 := by
  change Nat.lcm (lcmUpto 191) 192 = 44579118314928349519548211428098833959967690796788872458455849632586543096677648000
  rw [lcm_value_191]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 193 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_193 : lcmUpto 193 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000 := by
  change Nat.lcm (lcmUpto 192) 193 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000
  rw [lcm_value_192]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 194 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_194 : lcmUpto 194 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000 := by
  change Nat.lcm (lcmUpto 193) 194 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000
  rw [lcm_value_193]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 195 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_195 : lcmUpto 195 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000 := by
  change Nat.lcm (lcmUpto 194) 195 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000
  rw [lcm_value_194]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 196 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_196 : lcmUpto 196 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000 := by
  change Nat.lcm (lcmUpto 195) 196 = 8603769834781171457272804805623074954273764323780252384481978979089202817658786064000
  rw [lcm_value_195]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 197 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_197 : lcmUpto 197 = 1694942657451890777082742546707745765991931571784709719742949858880572955078780854608000 := by
  change Nat.lcm (lcmUpto 196) 197 = 1694942657451890777082742546707745765991931571784709719742949858880572955078780854608000
  rw [lcm_value_196]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 198 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_198 : lcmUpto 198 = 1694942657451890777082742546707745765991931571784709719742949858880572955078780854608000 := by
  change Nat.lcm (lcmUpto 197) 198 = 1694942657451890777082742546707745765991931571784709719742949858880572955078780854608000
  rw [lcm_value_197]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 199 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_199 : lcmUpto 199 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 198) 199 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_198]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 200 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_200 : lcmUpto 200 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 199) 200 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_199]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 201 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_201 : lcmUpto 201 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 200) 201 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_200]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 202 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_202 : lcmUpto 202 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 201) 202 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_201]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 203 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_203 : lcmUpto 203 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 202) 203 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_202]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 204 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_204 : lcmUpto 204 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 203) 204 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_203]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 205 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_205 : lcmUpto 205 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 204) 205 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_204]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 206 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_206 : lcmUpto 206 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 205) 206 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_205]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 207 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_207 : lcmUpto 207 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 206) 207 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_206]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 208 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_208 : lcmUpto 208 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 207) 208 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_207]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 209 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_209 : lcmUpto 209 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 208) 209 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_208]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 210 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_210 : lcmUpto 210 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000 := by
  change Nat.lcm (lcmUpto 209) 210 = 337293588832926264639465766794841407432394382785157234228847021917234018060677390066992000
  rw [lcm_value_209]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 211 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_211 : lcmUpto 211 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 210) 211 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_210]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 212 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_212 : lcmUpto 212 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 211) 212 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_211]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 213 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_213 : lcmUpto 213 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 212) 213 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_212]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 214 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_214 : lcmUpto 214 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 213) 214 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_213]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 215 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_215 : lcmUpto 215 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 214) 215 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_214]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 216 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_216 : lcmUpto 216 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 215) 216 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_215]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 217 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_217 : lcmUpto 217 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 216) 217 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_216]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 218 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_218 : lcmUpto 218 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 217) 218 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_217]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 219 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_219 : lcmUpto 219 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 218) 219 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_218]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 220 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_220 : lcmUpto 220 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 219) 220 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_219]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 221 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_221 : lcmUpto 221 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 220) 221 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_220]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 222 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_222 : lcmUpto 222 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000 := by
  change Nat.lcm (lcmUpto 221) 222 = 71168947243747441838927276793711536968235214767668176422286721624536377810802929304135312000
  rw [lcm_value_221]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 223 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_223 : lcmUpto 223 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000 := by
  change Nat.lcm (lcmUpto 222) 223 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000
  rw [lcm_value_222]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 224 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_224 : lcmUpto 224 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000 := by
  change Nat.lcm (lcmUpto 223) 224 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000
  rw [lcm_value_223]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 225 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_225 : lcmUpto 225 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000 := by
  change Nat.lcm (lcmUpto 224) 225 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000
  rw [lcm_value_224]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 226 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_226 : lcmUpto 226 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000 := by
  change Nat.lcm (lcmUpto 225) 226 = 15870675235355679530080782724997672743916452893190003342169938922271612251809053234822174576000
  rw [lcm_value_225]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 227 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_227 : lcmUpto 227 = 3602643278425739253328337678574471712869034806754130758672576135355655981160655084304633628752000 := by
  change Nat.lcm (lcmUpto 226) 227 = 3602643278425739253328337678574471712869034806754130758672576135355655981160655084304633628752000
  rw [lcm_value_226]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 228 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_228 : lcmUpto 228 = 3602643278425739253328337678574471712869034806754130758672576135355655981160655084304633628752000 := by
  change Nat.lcm (lcmUpto 227) 228 = 3602643278425739253328337678574471712869034806754130758672576135355655981160655084304633628752000
  rw [lcm_value_227]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 229 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_229 : lcmUpto 229 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000 := by
  change Nat.lcm (lcmUpto 228) 229 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000
  rw [lcm_value_228]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 230 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_230 : lcmUpto 230 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000 := by
  change Nat.lcm (lcmUpto 229) 230 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000
  rw [lcm_value_229]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 231 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_231 : lcmUpto 231 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000 := by
  change Nat.lcm (lcmUpto 230) 231 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000
  rw [lcm_value_230]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 232 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_232 : lcmUpto 232 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000 := by
  change Nat.lcm (lcmUpto 231) 232 = 825005310759494289012189328393554022247008970746695943736019934996445219685790014305761100984208000
  rw [lcm_value_231]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 233 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_233 : lcmUpto 233 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000 := by
  change Nat.lcm (lcmUpto 232) 233 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000
  rw [lcm_value_232]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 234 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_234 : lcmUpto 234 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000 := by
  change Nat.lcm (lcmUpto 233) 234 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000
  rw [lcm_value_233]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 235 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_235 : lcmUpto 235 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000 := by
  change Nat.lcm (lcmUpto 234) 235 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000
  rw [lcm_value_234]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 236 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_236 : lcmUpto 236 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000 := by
  change Nat.lcm (lcmUpto 235) 236 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000
  rw [lcm_value_235]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 237 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_237 : lcmUpto 237 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000 := by
  change Nat.lcm (lcmUpto 236) 237 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000
  rw [lcm_value_236]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 238 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_238 : lcmUpto 238 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000 := by
  change Nat.lcm (lcmUpto 237) 238 = 192226237406962169339840113515698087183553090183980154890492644854171736186789073333242336529320464000
  rw [lcm_value_237]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 239 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_239 : lcmUpto 239 = 45942070740263958472221787130251842836869188553971257018827742120147044948642588526644918430507590896000 := by
  change Nat.lcm (lcmUpto 238) 239 = 45942070740263958472221787130251842836869188553971257018827742120147044948642588526644918430507590896000
  rw [lcm_value_238]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 240 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_240 : lcmUpto 240 = 45942070740263958472221787130251842836869188553971257018827742120147044948642588526644918430507590896000 := by
  change Nat.lcm (lcmUpto 239) 240 = 45942070740263958472221787130251842836869188553971257018827742120147044948642588526644918430507590896000
  rw [lcm_value_239]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 241 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_241 : lcmUpto 241 = 11072039048403613991805450698390694123685474441507072941537485850955437832622863834921425341752329405936000 := by
  change Nat.lcm (lcmUpto 240) 241 = 11072039048403613991805450698390694123685474441507072941537485850955437832622863834921425341752329405936000
  rw [lcm_value_240]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 242 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_242 : lcmUpto 242 = 11072039048403613991805450698390694123685474441507072941537485850955437832622863834921425341752329405936000 := by
  change Nat.lcm (lcmUpto 241) 242 = 11072039048403613991805450698390694123685474441507072941537485850955437832622863834921425341752329405936000
  rw [lcm_value_241]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 243 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_243 : lcmUpto 243 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 242) 243 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_242]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 244 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_244 : lcmUpto 244 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 243) 244 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_243]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 245 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_245 : lcmUpto 245 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 244) 245 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_244]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 246 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_246 : lcmUpto 246 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 245) 246 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_245]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 247 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_247 : lcmUpto 247 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 246) 247 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_246]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 248 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_248 : lcmUpto 248 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 247) 248 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_247]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 249 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_249 : lcmUpto 249 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 248) 249 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_248]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 250 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_250 : lcmUpto 250 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000 := by
  change Nat.lcm (lcmUpto 249) 250 = 33216117145210841975416352095172082371056423324521218824612457552866313497868591504764276025256988217808000
  rw [lcm_value_249]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 251 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_251 : lcmUpto 251 = 8337245403447921335829504375888192675135162254454825924977726845769444687965016467695833282339504042669808000 := by
  change Nat.lcm (lcmUpto 250) 251 = 8337245403447921335829504375888192675135162254454825924977726845769444687965016467695833282339504042669808000
  rw [lcm_value_250]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 252 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_252 : lcmUpto 252 = 8337245403447921335829504375888192675135162254454825924977726845769444687965016467695833282339504042669808000 := by
  change Nat.lcm (lcmUpto 251) 252 = 8337245403447921335829504375888192675135162254454825924977726845769444687965016467695833282339504042669808000
  rw [lcm_value_251]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 253 equals the displayed exact natural number.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_value_253 : lcmUpto 253 = 8337245403447921335829504375888192675135162254454825924977726845769444687965016467695833282339504042669808000 := by
  change Nat.lcm (lcmUpto 252) 253 = 8337245403447921335829504375888192675135162254454825924977726845769444687965016467695833282339504042669808000
  rw [lcm_value_252]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 0 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_0 : lcmUpto 0 ≤ 2 ^ (0 + 0 / 2 + 1) := by
  rw [lcm_value_0]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 1 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_1 : lcmUpto 1 ≤ 2 ^ (1 + 1 / 2 + 1) := by
  rw [lcm_value_1]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 2 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_2 : lcmUpto 2 ≤ 2 ^ (2 + 2 / 2 + 1) := by
  rw [lcm_value_2]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 3 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_3 : lcmUpto 3 ≤ 2 ^ (3 + 3 / 2 + 1) := by
  rw [lcm_value_3]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 4 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_4 : lcmUpto 4 ≤ 2 ^ (4 + 4 / 2 + 1) := by
  rw [lcm_value_4]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 5 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_5 : lcmUpto 5 ≤ 2 ^ (5 + 5 / 2 + 1) := by
  rw [lcm_value_5]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 6 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_6 : lcmUpto 6 ≤ 2 ^ (6 + 6 / 2 + 1) := by
  rw [lcm_value_6]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 7 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_7 : lcmUpto 7 ≤ 2 ^ (7 + 7 / 2 + 1) := by
  rw [lcm_value_7]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 8 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_8 : lcmUpto 8 ≤ 2 ^ (8 + 8 / 2 + 1) := by
  rw [lcm_value_8]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 9 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_9 : lcmUpto 9 ≤ 2 ^ (9 + 9 / 2 + 1) := by
  rw [lcm_value_9]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 10 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_10 : lcmUpto 10 ≤ 2 ^ (10 + 10 / 2 + 1) := by
  rw [lcm_value_10]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 11 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_11 : lcmUpto 11 ≤ 2 ^ (11 + 11 / 2 + 1) := by
  rw [lcm_value_11]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 12 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_12 : lcmUpto 12 ≤ 2 ^ (12 + 12 / 2 + 1) := by
  rw [lcm_value_12]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 13 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_13 : lcmUpto 13 ≤ 2 ^ (13 + 13 / 2 + 1) := by
  rw [lcm_value_13]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 14 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_14 : lcmUpto 14 ≤ 2 ^ (14 + 14 / 2 + 1) := by
  rw [lcm_value_14]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 15 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_15 : lcmUpto 15 ≤ 2 ^ (15 + 15 / 2 + 1) := by
  rw [lcm_value_15]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 16 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_16 : lcmUpto 16 ≤ 2 ^ (16 + 16 / 2 + 1) := by
  rw [lcm_value_16]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 17 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_17 : lcmUpto 17 ≤ 2 ^ (17 + 17 / 2 + 1) := by
  rw [lcm_value_17]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 18 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_18 : lcmUpto 18 ≤ 2 ^ (18 + 18 / 2 + 1) := by
  rw [lcm_value_18]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 19 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_19 : lcmUpto 19 ≤ 2 ^ (19 + 19 / 2 + 1) := by
  rw [lcm_value_19]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 20 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_20 : lcmUpto 20 ≤ 2 ^ (20 + 20 / 2 + 1) := by
  rw [lcm_value_20]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 21 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_21 : lcmUpto 21 ≤ 2 ^ (21 + 21 / 2 + 1) := by
  rw [lcm_value_21]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 22 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_22 : lcmUpto 22 ≤ 2 ^ (22 + 22 / 2 + 1) := by
  rw [lcm_value_22]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 23 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_23 : lcmUpto 23 ≤ 2 ^ (23 + 23 / 2 + 1) := by
  rw [lcm_value_23]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 24 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_24 : lcmUpto 24 ≤ 2 ^ (24 + 24 / 2 + 1) := by
  rw [lcm_value_24]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 25 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_25 : lcmUpto 25 ≤ 2 ^ (25 + 25 / 2 + 1) := by
  rw [lcm_value_25]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 26 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_26 : lcmUpto 26 ≤ 2 ^ (26 + 26 / 2 + 1) := by
  rw [lcm_value_26]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 27 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_27 : lcmUpto 27 ≤ 2 ^ (27 + 27 / 2 + 1) := by
  rw [lcm_value_27]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 28 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_28 : lcmUpto 28 ≤ 2 ^ (28 + 28 / 2 + 1) := by
  rw [lcm_value_28]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 29 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_29 : lcmUpto 29 ≤ 2 ^ (29 + 29 / 2 + 1) := by
  rw [lcm_value_29]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 30 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_30 : lcmUpto 30 ≤ 2 ^ (30 + 30 / 2 + 1) := by
  rw [lcm_value_30]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 31 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_31 : lcmUpto 31 ≤ 2 ^ (31 + 31 / 2 + 1) := by
  rw [lcm_value_31]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 32 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_32 : lcmUpto 32 ≤ 2 ^ (32 + 32 / 2 + 1) := by
  rw [lcm_value_32]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 33 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_33 : lcmUpto 33 ≤ 2 ^ (33 + 33 / 2 + 1) := by
  rw [lcm_value_33]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 34 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_34 : lcmUpto 34 ≤ 2 ^ (34 + 34 / 2 + 1) := by
  rw [lcm_value_34]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 35 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_35 : lcmUpto 35 ≤ 2 ^ (35 + 35 / 2 + 1) := by
  rw [lcm_value_35]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 36 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_36 : lcmUpto 36 ≤ 2 ^ (36 + 36 / 2 + 1) := by
  rw [lcm_value_36]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 37 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_37 : lcmUpto 37 ≤ 2 ^ (37 + 37 / 2 + 1) := by
  rw [lcm_value_37]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 38 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_38 : lcmUpto 38 ≤ 2 ^ (38 + 38 / 2 + 1) := by
  rw [lcm_value_38]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 39 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_39 : lcmUpto 39 ≤ 2 ^ (39 + 39 / 2 + 1) := by
  rw [lcm_value_39]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 40 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_40 : lcmUpto 40 ≤ 2 ^ (40 + 40 / 2 + 1) := by
  rw [lcm_value_40]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 41 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_41 : lcmUpto 41 ≤ 2 ^ (41 + 41 / 2 + 1) := by
  rw [lcm_value_41]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 42 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_42 : lcmUpto 42 ≤ 2 ^ (42 + 42 / 2 + 1) := by
  rw [lcm_value_42]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 43 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_43 : lcmUpto 43 ≤ 2 ^ (43 + 43 / 2 + 1) := by
  rw [lcm_value_43]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 44 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_44 : lcmUpto 44 ≤ 2 ^ (44 + 44 / 2 + 1) := by
  rw [lcm_value_44]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 45 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_45 : lcmUpto 45 ≤ 2 ^ (45 + 45 / 2 + 1) := by
  rw [lcm_value_45]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 46 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_46 : lcmUpto 46 ≤ 2 ^ (46 + 46 / 2 + 1) := by
  rw [lcm_value_46]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 47 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_47 : lcmUpto 47 ≤ 2 ^ (47 + 47 / 2 + 1) := by
  rw [lcm_value_47]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 48 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_48 : lcmUpto 48 ≤ 2 ^ (48 + 48 / 2 + 1) := by
  rw [lcm_value_48]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 49 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_49 : lcmUpto 49 ≤ 2 ^ (49 + 49 / 2 + 1) := by
  rw [lcm_value_49]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 50 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_50 : lcmUpto 50 ≤ 2 ^ (50 + 50 / 2 + 1) := by
  rw [lcm_value_50]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 51 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_51 : lcmUpto 51 ≤ 2 ^ (51 + 51 / 2 + 1) := by
  rw [lcm_value_51]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 52 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_52 : lcmUpto 52 ≤ 2 ^ (52 + 52 / 2 + 1) := by
  rw [lcm_value_52]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 53 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_53 : lcmUpto 53 ≤ 2 ^ (53 + 53 / 2 + 1) := by
  rw [lcm_value_53]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 54 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_54 : lcmUpto 54 ≤ 2 ^ (54 + 54 / 2 + 1) := by
  rw [lcm_value_54]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 55 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_55 : lcmUpto 55 ≤ 2 ^ (55 + 55 / 2 + 1) := by
  rw [lcm_value_55]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 56 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_56 : lcmUpto 56 ≤ 2 ^ (56 + 56 / 2 + 1) := by
  rw [lcm_value_56]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 57 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_57 : lcmUpto 57 ≤ 2 ^ (57 + 57 / 2 + 1) := by
  rw [lcm_value_57]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 58 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_58 : lcmUpto 58 ≤ 2 ^ (58 + 58 / 2 + 1) := by
  rw [lcm_value_58]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 59 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_59 : lcmUpto 59 ≤ 2 ^ (59 + 59 / 2 + 1) := by
  rw [lcm_value_59]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 60 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_60 : lcmUpto 60 ≤ 2 ^ (60 + 60 / 2 + 1) := by
  rw [lcm_value_60]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 61 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_61 : lcmUpto 61 ≤ 2 ^ (61 + 61 / 2 + 1) := by
  rw [lcm_value_61]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 62 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_62 : lcmUpto 62 ≤ 2 ^ (62 + 62 / 2 + 1) := by
  rw [lcm_value_62]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 63 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_63 : lcmUpto 63 ≤ 2 ^ (63 + 63 / 2 + 1) := by
  rw [lcm_value_63]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 64 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_64 : lcmUpto 64 ≤ 2 ^ (64 + 64 / 2 + 1) := by
  rw [lcm_value_64]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 65 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_65 : lcmUpto 65 ≤ 2 ^ (65 + 65 / 2 + 1) := by
  rw [lcm_value_65]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 66 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_66 : lcmUpto 66 ≤ 2 ^ (66 + 66 / 2 + 1) := by
  rw [lcm_value_66]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 67 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_67 : lcmUpto 67 ≤ 2 ^ (67 + 67 / 2 + 1) := by
  rw [lcm_value_67]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 68 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_68 : lcmUpto 68 ≤ 2 ^ (68 + 68 / 2 + 1) := by
  rw [lcm_value_68]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 69 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_69 : lcmUpto 69 ≤ 2 ^ (69 + 69 / 2 + 1) := by
  rw [lcm_value_69]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 70 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_70 : lcmUpto 70 ≤ 2 ^ (70 + 70 / 2 + 1) := by
  rw [lcm_value_70]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 71 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_71 : lcmUpto 71 ≤ 2 ^ (71 + 71 / 2 + 1) := by
  rw [lcm_value_71]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 72 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_72 : lcmUpto 72 ≤ 2 ^ (72 + 72 / 2 + 1) := by
  rw [lcm_value_72]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 73 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_73 : lcmUpto 73 ≤ 2 ^ (73 + 73 / 2 + 1) := by
  rw [lcm_value_73]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 74 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_74 : lcmUpto 74 ≤ 2 ^ (74 + 74 / 2 + 1) := by
  rw [lcm_value_74]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 75 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_75 : lcmUpto 75 ≤ 2 ^ (75 + 75 / 2 + 1) := by
  rw [lcm_value_75]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 76 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_76 : lcmUpto 76 ≤ 2 ^ (76 + 76 / 2 + 1) := by
  rw [lcm_value_76]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 77 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_77 : lcmUpto 77 ≤ 2 ^ (77 + 77 / 2 + 1) := by
  rw [lcm_value_77]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 78 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_78 : lcmUpto 78 ≤ 2 ^ (78 + 78 / 2 + 1) := by
  rw [lcm_value_78]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 79 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_79 : lcmUpto 79 ≤ 2 ^ (79 + 79 / 2 + 1) := by
  rw [lcm_value_79]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 80 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_80 : lcmUpto 80 ≤ 2 ^ (80 + 80 / 2 + 1) := by
  rw [lcm_value_80]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 81 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_81 : lcmUpto 81 ≤ 2 ^ (81 + 81 / 2 + 1) := by
  rw [lcm_value_81]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 82 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_82 : lcmUpto 82 ≤ 2 ^ (82 + 82 / 2 + 1) := by
  rw [lcm_value_82]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 83 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_83 : lcmUpto 83 ≤ 2 ^ (83 + 83 / 2 + 1) := by
  rw [lcm_value_83]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 84 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_84 : lcmUpto 84 ≤ 2 ^ (84 + 84 / 2 + 1) := by
  rw [lcm_value_84]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 85 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_85 : lcmUpto 85 ≤ 2 ^ (85 + 85 / 2 + 1) := by
  rw [lcm_value_85]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 86 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_86 : lcmUpto 86 ≤ 2 ^ (86 + 86 / 2 + 1) := by
  rw [lcm_value_86]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 87 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_87 : lcmUpto 87 ≤ 2 ^ (87 + 87 / 2 + 1) := by
  rw [lcm_value_87]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 88 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_88 : lcmUpto 88 ≤ 2 ^ (88 + 88 / 2 + 1) := by
  rw [lcm_value_88]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 89 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_89 : lcmUpto 89 ≤ 2 ^ (89 + 89 / 2 + 1) := by
  rw [lcm_value_89]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 90 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_90 : lcmUpto 90 ≤ 2 ^ (90 + 90 / 2 + 1) := by
  rw [lcm_value_90]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 91 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_91 : lcmUpto 91 ≤ 2 ^ (91 + 91 / 2 + 1) := by
  rw [lcm_value_91]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 92 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_92 : lcmUpto 92 ≤ 2 ^ (92 + 92 / 2 + 1) := by
  rw [lcm_value_92]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 93 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_93 : lcmUpto 93 ≤ 2 ^ (93 + 93 / 2 + 1) := by
  rw [lcm_value_93]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 94 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_94 : lcmUpto 94 ≤ 2 ^ (94 + 94 / 2 + 1) := by
  rw [lcm_value_94]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 95 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_95 : lcmUpto 95 ≤ 2 ^ (95 + 95 / 2 + 1) := by
  rw [lcm_value_95]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 96 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_96 : lcmUpto 96 ≤ 2 ^ (96 + 96 / 2 + 1) := by
  rw [lcm_value_96]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 97 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_97 : lcmUpto 97 ≤ 2 ^ (97 + 97 / 2 + 1) := by
  rw [lcm_value_97]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 98 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_98 : lcmUpto 98 ≤ 2 ^ (98 + 98 / 2 + 1) := by
  rw [lcm_value_98]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 99 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_99 : lcmUpto 99 ≤ 2 ^ (99 + 99 / 2 + 1) := by
  rw [lcm_value_99]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 100 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_100 : lcmUpto 100 ≤ 2 ^ (100 + 100 / 2 + 1) := by
  rw [lcm_value_100]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 101 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_101 : lcmUpto 101 ≤ 2 ^ (101 + 101 / 2 + 1) := by
  rw [lcm_value_101]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 102 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_102 : lcmUpto 102 ≤ 2 ^ (102 + 102 / 2 + 1) := by
  rw [lcm_value_102]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 103 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_103 : lcmUpto 103 ≤ 2 ^ (103 + 103 / 2 + 1) := by
  rw [lcm_value_103]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 104 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_104 : lcmUpto 104 ≤ 2 ^ (104 + 104 / 2 + 1) := by
  rw [lcm_value_104]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 105 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_105 : lcmUpto 105 ≤ 2 ^ (105 + 105 / 2 + 1) := by
  rw [lcm_value_105]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 106 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_106 : lcmUpto 106 ≤ 2 ^ (106 + 106 / 2 + 1) := by
  rw [lcm_value_106]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 107 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_107 : lcmUpto 107 ≤ 2 ^ (107 + 107 / 2 + 1) := by
  rw [lcm_value_107]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 108 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_108 : lcmUpto 108 ≤ 2 ^ (108 + 108 / 2 + 1) := by
  rw [lcm_value_108]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 109 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_109 : lcmUpto 109 ≤ 2 ^ (109 + 109 / 2 + 1) := by
  rw [lcm_value_109]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 110 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_110 : lcmUpto 110 ≤ 2 ^ (110 + 110 / 2 + 1) := by
  rw [lcm_value_110]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 111 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_111 : lcmUpto 111 ≤ 2 ^ (111 + 111 / 2 + 1) := by
  rw [lcm_value_111]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 112 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_112 : lcmUpto 112 ≤ 2 ^ (112 + 112 / 2 + 1) := by
  rw [lcm_value_112]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 113 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_113 : lcmUpto 113 ≤ 2 ^ (113 + 113 / 2 + 1) := by
  rw [lcm_value_113]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 114 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_114 : lcmUpto 114 ≤ 2 ^ (114 + 114 / 2 + 1) := by
  rw [lcm_value_114]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 115 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_115 : lcmUpto 115 ≤ 2 ^ (115 + 115 / 2 + 1) := by
  rw [lcm_value_115]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 116 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_116 : lcmUpto 116 ≤ 2 ^ (116 + 116 / 2 + 1) := by
  rw [lcm_value_116]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 117 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_117 : lcmUpto 117 ≤ 2 ^ (117 + 117 / 2 + 1) := by
  rw [lcm_value_117]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 118 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_118 : lcmUpto 118 ≤ 2 ^ (118 + 118 / 2 + 1) := by
  rw [lcm_value_118]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 119 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_119 : lcmUpto 119 ≤ 2 ^ (119 + 119 / 2 + 1) := by
  rw [lcm_value_119]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 120 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_120 : lcmUpto 120 ≤ 2 ^ (120 + 120 / 2 + 1) := by
  rw [lcm_value_120]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 121 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_121 : lcmUpto 121 ≤ 2 ^ (121 + 121 / 2 + 1) := by
  rw [lcm_value_121]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 122 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_122 : lcmUpto 122 ≤ 2 ^ (122 + 122 / 2 + 1) := by
  rw [lcm_value_122]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 123 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_123 : lcmUpto 123 ≤ 2 ^ (123 + 123 / 2 + 1) := by
  rw [lcm_value_123]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 124 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_124 : lcmUpto 124 ≤ 2 ^ (124 + 124 / 2 + 1) := by
  rw [lcm_value_124]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 125 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_125 : lcmUpto 125 ≤ 2 ^ (125 + 125 / 2 + 1) := by
  rw [lcm_value_125]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 126 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_126 : lcmUpto 126 ≤ 2 ^ (126 + 126 / 2 + 1) := by
  rw [lcm_value_126]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 127 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_127 : lcmUpto 127 ≤ 2 ^ (127 + 127 / 2 + 1) := by
  rw [lcm_value_127]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 128 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_128 : lcmUpto 128 ≤ 2 ^ (128 + 128 / 2 + 1) := by
  rw [lcm_value_128]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 129 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_129 : lcmUpto 129 ≤ 2 ^ (129 + 129 / 2 + 1) := by
  rw [lcm_value_129]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 130 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_130 : lcmUpto 130 ≤ 2 ^ (130 + 130 / 2 + 1) := by
  rw [lcm_value_130]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 131 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_131 : lcmUpto 131 ≤ 2 ^ (131 + 131 / 2 + 1) := by
  rw [lcm_value_131]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 132 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_132 : lcmUpto 132 ≤ 2 ^ (132 + 132 / 2 + 1) := by
  rw [lcm_value_132]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 133 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_133 : lcmUpto 133 ≤ 2 ^ (133 + 133 / 2 + 1) := by
  rw [lcm_value_133]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 134 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_134 : lcmUpto 134 ≤ 2 ^ (134 + 134 / 2 + 1) := by
  rw [lcm_value_134]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 135 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_135 : lcmUpto 135 ≤ 2 ^ (135 + 135 / 2 + 1) := by
  rw [lcm_value_135]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 136 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_136 : lcmUpto 136 ≤ 2 ^ (136 + 136 / 2 + 1) := by
  rw [lcm_value_136]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 137 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_137 : lcmUpto 137 ≤ 2 ^ (137 + 137 / 2 + 1) := by
  rw [lcm_value_137]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 138 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_138 : lcmUpto 138 ≤ 2 ^ (138 + 138 / 2 + 1) := by
  rw [lcm_value_138]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 139 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_139 : lcmUpto 139 ≤ 2 ^ (139 + 139 / 2 + 1) := by
  rw [lcm_value_139]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 140 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_140 : lcmUpto 140 ≤ 2 ^ (140 + 140 / 2 + 1) := by
  rw [lcm_value_140]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 141 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_141 : lcmUpto 141 ≤ 2 ^ (141 + 141 / 2 + 1) := by
  rw [lcm_value_141]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 142 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_142 : lcmUpto 142 ≤ 2 ^ (142 + 142 / 2 + 1) := by
  rw [lcm_value_142]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 143 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_143 : lcmUpto 143 ≤ 2 ^ (143 + 143 / 2 + 1) := by
  rw [lcm_value_143]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 144 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_144 : lcmUpto 144 ≤ 2 ^ (144 + 144 / 2 + 1) := by
  rw [lcm_value_144]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 145 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_145 : lcmUpto 145 ≤ 2 ^ (145 + 145 / 2 + 1) := by
  rw [lcm_value_145]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 146 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_146 : lcmUpto 146 ≤ 2 ^ (146 + 146 / 2 + 1) := by
  rw [lcm_value_146]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 147 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_147 : lcmUpto 147 ≤ 2 ^ (147 + 147 / 2 + 1) := by
  rw [lcm_value_147]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 148 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_148 : lcmUpto 148 ≤ 2 ^ (148 + 148 / 2 + 1) := by
  rw [lcm_value_148]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 149 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_149 : lcmUpto 149 ≤ 2 ^ (149 + 149 / 2 + 1) := by
  rw [lcm_value_149]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 150 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_150 : lcmUpto 150 ≤ 2 ^ (150 + 150 / 2 + 1) := by
  rw [lcm_value_150]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 151 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_151 : lcmUpto 151 ≤ 2 ^ (151 + 151 / 2 + 1) := by
  rw [lcm_value_151]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 152 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_152 : lcmUpto 152 ≤ 2 ^ (152 + 152 / 2 + 1) := by
  rw [lcm_value_152]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 153 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_153 : lcmUpto 153 ≤ 2 ^ (153 + 153 / 2 + 1) := by
  rw [lcm_value_153]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 154 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_154 : lcmUpto 154 ≤ 2 ^ (154 + 154 / 2 + 1) := by
  rw [lcm_value_154]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 155 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_155 : lcmUpto 155 ≤ 2 ^ (155 + 155 / 2 + 1) := by
  rw [lcm_value_155]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 156 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_156 : lcmUpto 156 ≤ 2 ^ (156 + 156 / 2 + 1) := by
  rw [lcm_value_156]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 157 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_157 : lcmUpto 157 ≤ 2 ^ (157 + 157 / 2 + 1) := by
  rw [lcm_value_157]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 158 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_158 : lcmUpto 158 ≤ 2 ^ (158 + 158 / 2 + 1) := by
  rw [lcm_value_158]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 159 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_159 : lcmUpto 159 ≤ 2 ^ (159 + 159 / 2 + 1) := by
  rw [lcm_value_159]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 160 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_160 : lcmUpto 160 ≤ 2 ^ (160 + 160 / 2 + 1) := by
  rw [lcm_value_160]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 161 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_161 : lcmUpto 161 ≤ 2 ^ (161 + 161 / 2 + 1) := by
  rw [lcm_value_161]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 162 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_162 : lcmUpto 162 ≤ 2 ^ (162 + 162 / 2 + 1) := by
  rw [lcm_value_162]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 163 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_163 : lcmUpto 163 ≤ 2 ^ (163 + 163 / 2 + 1) := by
  rw [lcm_value_163]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 164 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_164 : lcmUpto 164 ≤ 2 ^ (164 + 164 / 2 + 1) := by
  rw [lcm_value_164]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 165 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_165 : lcmUpto 165 ≤ 2 ^ (165 + 165 / 2 + 1) := by
  rw [lcm_value_165]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 166 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_166 : lcmUpto 166 ≤ 2 ^ (166 + 166 / 2 + 1) := by
  rw [lcm_value_166]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 167 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_167 : lcmUpto 167 ≤ 2 ^ (167 + 167 / 2 + 1) := by
  rw [lcm_value_167]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 168 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_168 : lcmUpto 168 ≤ 2 ^ (168 + 168 / 2 + 1) := by
  rw [lcm_value_168]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 169 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_169 : lcmUpto 169 ≤ 2 ^ (169 + 169 / 2 + 1) := by
  rw [lcm_value_169]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 170 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_170 : lcmUpto 170 ≤ 2 ^ (170 + 170 / 2 + 1) := by
  rw [lcm_value_170]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 171 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_171 : lcmUpto 171 ≤ 2 ^ (171 + 171 / 2 + 1) := by
  rw [lcm_value_171]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 172 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_172 : lcmUpto 172 ≤ 2 ^ (172 + 172 / 2 + 1) := by
  rw [lcm_value_172]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 173 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_173 : lcmUpto 173 ≤ 2 ^ (173 + 173 / 2 + 1) := by
  rw [lcm_value_173]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 174 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_174 : lcmUpto 174 ≤ 2 ^ (174 + 174 / 2 + 1) := by
  rw [lcm_value_174]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 175 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_175 : lcmUpto 175 ≤ 2 ^ (175 + 175 / 2 + 1) := by
  rw [lcm_value_175]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 176 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_176 : lcmUpto 176 ≤ 2 ^ (176 + 176 / 2 + 1) := by
  rw [lcm_value_176]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 177 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_177 : lcmUpto 177 ≤ 2 ^ (177 + 177 / 2 + 1) := by
  rw [lcm_value_177]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 178 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_178 : lcmUpto 178 ≤ 2 ^ (178 + 178 / 2 + 1) := by
  rw [lcm_value_178]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 179 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_179 : lcmUpto 179 ≤ 2 ^ (179 + 179 / 2 + 1) := by
  rw [lcm_value_179]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 180 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_180 : lcmUpto 180 ≤ 2 ^ (180 + 180 / 2 + 1) := by
  rw [lcm_value_180]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 181 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_181 : lcmUpto 181 ≤ 2 ^ (181 + 181 / 2 + 1) := by
  rw [lcm_value_181]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 182 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_182 : lcmUpto 182 ≤ 2 ^ (182 + 182 / 2 + 1) := by
  rw [lcm_value_182]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 183 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_183 : lcmUpto 183 ≤ 2 ^ (183 + 183 / 2 + 1) := by
  rw [lcm_value_183]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 184 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_184 : lcmUpto 184 ≤ 2 ^ (184 + 184 / 2 + 1) := by
  rw [lcm_value_184]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 185 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_185 : lcmUpto 185 ≤ 2 ^ (185 + 185 / 2 + 1) := by
  rw [lcm_value_185]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 186 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_186 : lcmUpto 186 ≤ 2 ^ (186 + 186 / 2 + 1) := by
  rw [lcm_value_186]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 187 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_187 : lcmUpto 187 ≤ 2 ^ (187 + 187 / 2 + 1) := by
  rw [lcm_value_187]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 188 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_188 : lcmUpto 188 ≤ 2 ^ (188 + 188 / 2 + 1) := by
  rw [lcm_value_188]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 189 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_189 : lcmUpto 189 ≤ 2 ^ (189 + 189 / 2 + 1) := by
  rw [lcm_value_189]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 190 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_190 : lcmUpto 190 ≤ 2 ^ (190 + 190 / 2 + 1) := by
  rw [lcm_value_190]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 191 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_191 : lcmUpto 191 ≤ 2 ^ (191 + 191 / 2 + 1) := by
  rw [lcm_value_191]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 192 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_192 : lcmUpto 192 ≤ 2 ^ (192 + 192 / 2 + 1) := by
  rw [lcm_value_192]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 193 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_193 : lcmUpto 193 ≤ 2 ^ (193 + 193 / 2 + 1) := by
  rw [lcm_value_193]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 194 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_194 : lcmUpto 194 ≤ 2 ^ (194 + 194 / 2 + 1) := by
  rw [lcm_value_194]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 195 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_195 : lcmUpto 195 ≤ 2 ^ (195 + 195 / 2 + 1) := by
  rw [lcm_value_195]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 196 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_196 : lcmUpto 196 ≤ 2 ^ (196 + 196 / 2 + 1) := by
  rw [lcm_value_196]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 197 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_197 : lcmUpto 197 ≤ 2 ^ (197 + 197 / 2 + 1) := by
  rw [lcm_value_197]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 198 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_198 : lcmUpto 198 ≤ 2 ^ (198 + 198 / 2 + 1) := by
  rw [lcm_value_198]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 199 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_199 : lcmUpto 199 ≤ 2 ^ (199 + 199 / 2 + 1) := by
  rw [lcm_value_199]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 200 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_200 : lcmUpto 200 ≤ 2 ^ (200 + 200 / 2 + 1) := by
  rw [lcm_value_200]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 201 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_201 : lcmUpto 201 ≤ 2 ^ (201 + 201 / 2 + 1) := by
  rw [lcm_value_201]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 202 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_202 : lcmUpto 202 ≤ 2 ^ (202 + 202 / 2 + 1) := by
  rw [lcm_value_202]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 203 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_203 : lcmUpto 203 ≤ 2 ^ (203 + 203 / 2 + 1) := by
  rw [lcm_value_203]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 204 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_204 : lcmUpto 204 ≤ 2 ^ (204 + 204 / 2 + 1) := by
  rw [lcm_value_204]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 205 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_205 : lcmUpto 205 ≤ 2 ^ (205 + 205 / 2 + 1) := by
  rw [lcm_value_205]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 206 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_206 : lcmUpto 206 ≤ 2 ^ (206 + 206 / 2 + 1) := by
  rw [lcm_value_206]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 207 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_207 : lcmUpto 207 ≤ 2 ^ (207 + 207 / 2 + 1) := by
  rw [lcm_value_207]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 208 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_208 : lcmUpto 208 ≤ 2 ^ (208 + 208 / 2 + 1) := by
  rw [lcm_value_208]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 209 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_209 : lcmUpto 209 ≤ 2 ^ (209 + 209 / 2 + 1) := by
  rw [lcm_value_209]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 210 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_210 : lcmUpto 210 ≤ 2 ^ (210 + 210 / 2 + 1) := by
  rw [lcm_value_210]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 211 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_211 : lcmUpto 211 ≤ 2 ^ (211 + 211 / 2 + 1) := by
  rw [lcm_value_211]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 212 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_212 : lcmUpto 212 ≤ 2 ^ (212 + 212 / 2 + 1) := by
  rw [lcm_value_212]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 213 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_213 : lcmUpto 213 ≤ 2 ^ (213 + 213 / 2 + 1) := by
  rw [lcm_value_213]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 214 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_214 : lcmUpto 214 ≤ 2 ^ (214 + 214 / 2 + 1) := by
  rw [lcm_value_214]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 215 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_215 : lcmUpto 215 ≤ 2 ^ (215 + 215 / 2 + 1) := by
  rw [lcm_value_215]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 216 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_216 : lcmUpto 216 ≤ 2 ^ (216 + 216 / 2 + 1) := by
  rw [lcm_value_216]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 217 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_217 : lcmUpto 217 ≤ 2 ^ (217 + 217 / 2 + 1) := by
  rw [lcm_value_217]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 218 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_218 : lcmUpto 218 ≤ 2 ^ (218 + 218 / 2 + 1) := by
  rw [lcm_value_218]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 219 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_219 : lcmUpto 219 ≤ 2 ^ (219 + 219 / 2 + 1) := by
  rw [lcm_value_219]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 220 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_220 : lcmUpto 220 ≤ 2 ^ (220 + 220 / 2 + 1) := by
  rw [lcm_value_220]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 221 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_221 : lcmUpto 221 ≤ 2 ^ (221 + 221 / 2 + 1) := by
  rw [lcm_value_221]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 222 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_222 : lcmUpto 222 ≤ 2 ^ (222 + 222 / 2 + 1) := by
  rw [lcm_value_222]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 223 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_223 : lcmUpto 223 ≤ 2 ^ (223 + 223 / 2 + 1) := by
  rw [lcm_value_223]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 224 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_224 : lcmUpto 224 ≤ 2 ^ (224 + 224 / 2 + 1) := by
  rw [lcm_value_224]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 225 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_225 : lcmUpto 225 ≤ 2 ^ (225 + 225 / 2 + 1) := by
  rw [lcm_value_225]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 226 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_226 : lcmUpto 226 ≤ 2 ^ (226 + 226 / 2 + 1) := by
  rw [lcm_value_226]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 227 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_227 : lcmUpto 227 ≤ 2 ^ (227 + 227 / 2 + 1) := by
  rw [lcm_value_227]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 228 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_228 : lcmUpto 228 ≤ 2 ^ (228 + 228 / 2 + 1) := by
  rw [lcm_value_228]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 229 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_229 : lcmUpto 229 ≤ 2 ^ (229 + 229 / 2 + 1) := by
  rw [lcm_value_229]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 230 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_230 : lcmUpto 230 ≤ 2 ^ (230 + 230 / 2 + 1) := by
  rw [lcm_value_230]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 231 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_231 : lcmUpto 231 ≤ 2 ^ (231 + 231 / 2 + 1) := by
  rw [lcm_value_231]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 232 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_232 : lcmUpto 232 ≤ 2 ^ (232 + 232 / 2 + 1) := by
  rw [lcm_value_232]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 233 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_233 : lcmUpto 233 ≤ 2 ^ (233 + 233 / 2 + 1) := by
  rw [lcm_value_233]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 234 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_234 : lcmUpto 234 ≤ 2 ^ (234 + 234 / 2 + 1) := by
  rw [lcm_value_234]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 235 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_235 : lcmUpto 235 ≤ 2 ^ (235 + 235 / 2 + 1) := by
  rw [lcm_value_235]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 236 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_236 : lcmUpto 236 ≤ 2 ^ (236 + 236 / 2 + 1) := by
  rw [lcm_value_236]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 237 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_237 : lcmUpto 237 ≤ 2 ^ (237 + 237 / 2 + 1) := by
  rw [lcm_value_237]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 238 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_238 : lcmUpto 238 ≤ 2 ^ (238 + 238 / 2 + 1) := by
  rw [lcm_value_238]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 239 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_239 : lcmUpto 239 ≤ 2 ^ (239 + 239 / 2 + 1) := by
  rw [lcm_value_239]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 240 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_240 : lcmUpto 240 ≤ 2 ^ (240 + 240 / 2 + 1) := by
  rw [lcm_value_240]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 241 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_241 : lcmUpto 241 ≤ 2 ^ (241 + 241 / 2 + 1) := by
  rw [lcm_value_241]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 242 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_242 : lcmUpto 242 ≤ 2 ^ (242 + 242 / 2 + 1) := by
  rw [lcm_value_242]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 243 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_243 : lcmUpto 243 ≤ 2 ^ (243 + 243 / 2 + 1) := by
  rw [lcm_value_243]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 244 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_244 : lcmUpto 244 ≤ 2 ^ (244 + 244 / 2 + 1) := by
  rw [lcm_value_244]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 245 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_245 : lcmUpto 245 ≤ 2 ^ (245 + 245 / 2 + 1) := by
  rw [lcm_value_245]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 246 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_246 : lcmUpto 246 ≤ 2 ^ (246 + 246 / 2 + 1) := by
  rw [lcm_value_246]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 247 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_247 : lcmUpto 247 ≤ 2 ^ (247 + 247 / 2 + 1) := by
  rw [lcm_value_247]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 248 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_248 : lcmUpto 248 ≤ 2 ^ (248 + 248 / 2 + 1) := by
  rw [lcm_value_248]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 249 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_249 : lcmUpto 249 ≤ 2 ^ (249 + 249 / 2 + 1) := by
  rw [lcm_value_249]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 250 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_250 : lcmUpto 250 ≤ 2 ^ (250 + 250 / 2 + 1) := by
  rw [lcm_value_250]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 251 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_251 : lcmUpto 251 ≤ 2 ^ (251 + 251 / 2 + 1) := by
  rw [lcm_value_251]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 252 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_252 : lcmUpto 252 ≤ 2 ^ (252 + 252 / 2 + 1) := by
  rw [lcm_value_252]
  decide +kernel

/-- [proof-guide] The initial-segment LCM at index 253 is at most the displayed power of two.
Proof: Enumerates the stated finite cases and checks their reductions in Lean.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcm_bound_253 : lcmUpto 253 ≤ 2 ^ (253 + 253 / 2 + 1) := by
  rw [lcm_value_253]
  decide +kernel

/-- [proof-guide] The finite initial segment satisfies the stated LCM bound used to exclude small counterexamples.
Proof: Combines `lcm_bound_0`, `lcm_bound_1`, `lcm_bound_2` with the displayed local equations.
Role: Connects the arithmetic computation and its search to the exact Counterexample predicate. -/
theorem lcmUpto_small_bound :
    ∀ n : Fin 254, lcmUpto n.val ≤ 2 ^ (n.val + n.val / 2 + 1) := by
  intro n
  fin_cases n
  · exact lcm_bound_0
  · exact lcm_bound_1
  · exact lcm_bound_2
  · exact lcm_bound_3
  · exact lcm_bound_4
  · exact lcm_bound_5
  · exact lcm_bound_6
  · exact lcm_bound_7
  · exact lcm_bound_8
  · exact lcm_bound_9
  · exact lcm_bound_10
  · exact lcm_bound_11
  · exact lcm_bound_12
  · exact lcm_bound_13
  · exact lcm_bound_14
  · exact lcm_bound_15
  · exact lcm_bound_16
  · exact lcm_bound_17
  · exact lcm_bound_18
  · exact lcm_bound_19
  · exact lcm_bound_20
  · exact lcm_bound_21
  · exact lcm_bound_22
  · exact lcm_bound_23
  · exact lcm_bound_24
  · exact lcm_bound_25
  · exact lcm_bound_26
  · exact lcm_bound_27
  · exact lcm_bound_28
  · exact lcm_bound_29
  · exact lcm_bound_30
  · exact lcm_bound_31
  · exact lcm_bound_32
  · exact lcm_bound_33
  · exact lcm_bound_34
  · exact lcm_bound_35
  · exact lcm_bound_36
  · exact lcm_bound_37
  · exact lcm_bound_38
  · exact lcm_bound_39
  · exact lcm_bound_40
  · exact lcm_bound_41
  · exact lcm_bound_42
  · exact lcm_bound_43
  · exact lcm_bound_44
  · exact lcm_bound_45
  · exact lcm_bound_46
  · exact lcm_bound_47
  · exact lcm_bound_48
  · exact lcm_bound_49
  · exact lcm_bound_50
  · exact lcm_bound_51
  · exact lcm_bound_52
  · exact lcm_bound_53
  · exact lcm_bound_54
  · exact lcm_bound_55
  · exact lcm_bound_56
  · exact lcm_bound_57
  · exact lcm_bound_58
  · exact lcm_bound_59
  · exact lcm_bound_60
  · exact lcm_bound_61
  · exact lcm_bound_62
  · exact lcm_bound_63
  · exact lcm_bound_64
  · exact lcm_bound_65
  · exact lcm_bound_66
  · exact lcm_bound_67
  · exact lcm_bound_68
  · exact lcm_bound_69
  · exact lcm_bound_70
  · exact lcm_bound_71
  · exact lcm_bound_72
  · exact lcm_bound_73
  · exact lcm_bound_74
  · exact lcm_bound_75
  · exact lcm_bound_76
  · exact lcm_bound_77
  · exact lcm_bound_78
  · exact lcm_bound_79
  · exact lcm_bound_80
  · exact lcm_bound_81
  · exact lcm_bound_82
  · exact lcm_bound_83
  · exact lcm_bound_84
  · exact lcm_bound_85
  · exact lcm_bound_86
  · exact lcm_bound_87
  · exact lcm_bound_88
  · exact lcm_bound_89
  · exact lcm_bound_90
  · exact lcm_bound_91
  · exact lcm_bound_92
  · exact lcm_bound_93
  · exact lcm_bound_94
  · exact lcm_bound_95
  · exact lcm_bound_96
  · exact lcm_bound_97
  · exact lcm_bound_98
  · exact lcm_bound_99
  · exact lcm_bound_100
  · exact lcm_bound_101
  · exact lcm_bound_102
  · exact lcm_bound_103
  · exact lcm_bound_104
  · exact lcm_bound_105
  · exact lcm_bound_106
  · exact lcm_bound_107
  · exact lcm_bound_108
  · exact lcm_bound_109
  · exact lcm_bound_110
  · exact lcm_bound_111
  · exact lcm_bound_112
  · exact lcm_bound_113
  · exact lcm_bound_114
  · exact lcm_bound_115
  · exact lcm_bound_116
  · exact lcm_bound_117
  · exact lcm_bound_118
  · exact lcm_bound_119
  · exact lcm_bound_120
  · exact lcm_bound_121
  · exact lcm_bound_122
  · exact lcm_bound_123
  · exact lcm_bound_124
  · exact lcm_bound_125
  · exact lcm_bound_126
  · exact lcm_bound_127
  · exact lcm_bound_128
  · exact lcm_bound_129
  · exact lcm_bound_130
  · exact lcm_bound_131
  · exact lcm_bound_132
  · exact lcm_bound_133
  · exact lcm_bound_134
  · exact lcm_bound_135
  · exact lcm_bound_136
  · exact lcm_bound_137
  · exact lcm_bound_138
  · exact lcm_bound_139
  · exact lcm_bound_140
  · exact lcm_bound_141
  · exact lcm_bound_142
  · exact lcm_bound_143
  · exact lcm_bound_144
  · exact lcm_bound_145
  · exact lcm_bound_146
  · exact lcm_bound_147
  · exact lcm_bound_148
  · exact lcm_bound_149
  · exact lcm_bound_150
  · exact lcm_bound_151
  · exact lcm_bound_152
  · exact lcm_bound_153
  · exact lcm_bound_154
  · exact lcm_bound_155
  · exact lcm_bound_156
  · exact lcm_bound_157
  · exact lcm_bound_158
  · exact lcm_bound_159
  · exact lcm_bound_160
  · exact lcm_bound_161
  · exact lcm_bound_162
  · exact lcm_bound_163
  · exact lcm_bound_164
  · exact lcm_bound_165
  · exact lcm_bound_166
  · exact lcm_bound_167
  · exact lcm_bound_168
  · exact lcm_bound_169
  · exact lcm_bound_170
  · exact lcm_bound_171
  · exact lcm_bound_172
  · exact lcm_bound_173
  · exact lcm_bound_174
  · exact lcm_bound_175
  · exact lcm_bound_176
  · exact lcm_bound_177
  · exact lcm_bound_178
  · exact lcm_bound_179
  · exact lcm_bound_180
  · exact lcm_bound_181
  · exact lcm_bound_182
  · exact lcm_bound_183
  · exact lcm_bound_184
  · exact lcm_bound_185
  · exact lcm_bound_186
  · exact lcm_bound_187
  · exact lcm_bound_188
  · exact lcm_bound_189
  · exact lcm_bound_190
  · exact lcm_bound_191
  · exact lcm_bound_192
  · exact lcm_bound_193
  · exact lcm_bound_194
  · exact lcm_bound_195
  · exact lcm_bound_196
  · exact lcm_bound_197
  · exact lcm_bound_198
  · exact lcm_bound_199
  · exact lcm_bound_200
  · exact lcm_bound_201
  · exact lcm_bound_202
  · exact lcm_bound_203
  · exact lcm_bound_204
  · exact lcm_bound_205
  · exact lcm_bound_206
  · exact lcm_bound_207
  · exact lcm_bound_208
  · exact lcm_bound_209
  · exact lcm_bound_210
  · exact lcm_bound_211
  · exact lcm_bound_212
  · exact lcm_bound_213
  · exact lcm_bound_214
  · exact lcm_bound_215
  · exact lcm_bound_216
  · exact lcm_bound_217
  · exact lcm_bound_218
  · exact lcm_bound_219
  · exact lcm_bound_220
  · exact lcm_bound_221
  · exact lcm_bound_222
  · exact lcm_bound_223
  · exact lcm_bound_224
  · exact lcm_bound_225
  · exact lcm_bound_226
  · exact lcm_bound_227
  · exact lcm_bound_228
  · exact lcm_bound_229
  · exact lcm_bound_230
  · exact lcm_bound_231
  · exact lcm_bound_232
  · exact lcm_bound_233
  · exact lcm_bound_234
  · exact lcm_bound_235
  · exact lcm_bound_236
  · exact lcm_bound_237
  · exact lcm_bound_238
  · exact lcm_bound_239
  · exact lcm_bound_240
  · exact lcm_bound_241
  · exact lcm_bound_242
  · exact lcm_bound_243
  · exact lcm_bound_244
  · exact lcm_bound_245
  · exact lcm_bound_246
  · exact lcm_bound_247
  · exact lcm_bound_248
  · exact lcm_bound_249
  · exact lcm_bound_250
  · exact lcm_bound_251
  · exact lcm_bound_252
  · exact lcm_bound_253

end RiemannMachineVerification
