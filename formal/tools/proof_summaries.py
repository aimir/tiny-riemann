"""English statements for supporting lemmas; finite families live in document.py."""
SUMMARIES = dict(line.split('|', 1) for line in '''
registerStep_halted|A halted register configuration is a fixed point of execution.
macro_register_expansion|Every transfer-level instruction expands to a positive primitive execution with the same result.
registerConfiguration_ext|Register configurations agree when their counter, values and capacity agree.
addTargets_apply|Adding to a target list increments a register by its multiplicity in that list.
transferValues_apply|A transfer clears its source and adds the source value to each target, counting repeated targets.
transferRound_source|One primitive transfer round decrements the source when it is not among the targets.
transferValues_zero|Transferring a zero source leaves the register values unchanged.
transferValues_round|A primitive transfer round preserves the eventual transfer result.
boundary_advance|Every related pair of program boundaries reaches another related pair after positive numbers of steps.
implementation_iff_arithmetic|The 1024-address implementation and the 2048-address arithmetic program have equivalent halting behavior.
TransferSite.correct|A certified primitive loop implements its transfer instruction for every natural source value.
assemble_next|Assembling a finite-window step gives the corresponding step on the whole tape.
assemble_execute|Finite-window execution agrees with whole-tape execution while the checked window is adequate.
config_ext|Finite configurations agree when their state, head and cell values agree.
run_invariant|An invariant true initially and preserved by a step holds at every execution time.
rename_halts|Renaming ordinary states preserves whether a configuration is halted.
rename_step|A transition-preserving state map commutes with execution of one step.
step_halted|A halted tape configuration is a fixed point of execution.
run_halted_succ|Once a run halts, its next configuration is the same.
run_halted_later|A halted run stays halted at all later times.
run_add|Executing two consecutive time intervals equals executing their sum.
expansionClock_progress|Positive local expansion lengths produce a clock at least as large as elapsed source time.
trajectory_add|Executing a trajectory in two parts equals executing it for the sum of their lengths.
halted_later|A stable halting condition remains true at every later point of a trajectory.
assemble_step|A local tape step assembles to the corresponding infinite-tape step.
local_head_step_bounds|One local step moves the head by at most one cell.
local_head_bounds|After a bounded number of local steps, the head stays within the resulting distance bound.
assemble_advance|A bounded local execution assembles to the corresponding infinite-tape execution.
assemble_extract|Extracting and reassembling a local view recovers the original configuration.
assemble_rename|Assembling a local configuration commutes with renaming states.
bool_select_same|Testing a Boolean does not change two identical branches.
bool_unary_split|Two matching Boolean branches prove a unary decision-diagram equation.
bool_and_false_right|Conjunction with false is false.
bool_and_true_right|Conjunction with true preserves the other operand.
bool_and_self|Conjoining a Boolean with itself preserves it.
bool_and_not_self|A Boolean and its negation cannot both hold.
bool_and_not_true|Conjunction with the negation of true is false.
bool_and_not_false|Conjunction with the negation of false preserves the other operand.
bool_transfer_true|A certified decision-diagram transfer preserves truth of the successor predicate.
bool_empty_elim|An empty decision-diagram branch cannot satisfy its predecessor condition.
currentWindow_step|The tape window after a machine step is the shifted, updated current window.
macroLength_bounds|Every shortened transition expands to a positive path within the stated length bound.
macro_local_certificate|The complete local-window certificate relates each shortened step to its expanded execution.
localConfiguration_ext|Local configurations agree when all their fields agree.
localStep_rename|Renaming states commutes with a compatible local step.
macroCheck_one|A one-step expansion satisfies the local certificate when its literal transitions match.
initial_mask_trivial|The starting read mask permits every symbol at every ordinary state.
read_mask0_verified|The first certified read mask holds at every time of the shortened-machine run.
read_mask1_verified|The second certified read mask holds at every time of the shortened-machine run.
read_mask2_verified|The third certified read mask holds at every time of the shortened-machine run.
read_mask_verified|The final certified read mask holds at every time of the shortened-machine run.
quotient_transitions|Every transition permitted by the invariant agrees with its image in the quotient table.
harmonicLoop_correct|The harmonic loop produces its exact natural numerator and denominator for an arbitrary iteration count.
harmonicLoop_initialized|Initializing the harmonic loop yields the numerator and factorial denominator of the required harmonic number.
arithmeticTail_positive_iff|The natural arithmetic tail is positive exactly when the integer counterexample test succeeds.
harmonic_excess_numerator|Truncated rational harmonic excess equals the corresponding truncated numerator divided by its positive denominator.
integerTest_iff|The integer inequality is equivalent to the exact rational inequality after clearing positive denominators.
integerTest_search_iff|Existence of a positive integer-test witness is equivalent to existence of an approved counterexample.
lcmUpto_pos|The least common multiple of the initial segment is positive.
dvd_lcmUpto|Every positive integer in the initial segment divides its least common multiple.
lcmUpto_dvd|The initial-segment least common multiple divides every common multiple of that segment.
lcmSearch_initialized|The initialized divisibility search returns the initial-segment least common multiple.
trajectory_succ_start|Moving one initial step to the starting configuration preserves the rest of a trajectory.
naturalSearch_correct|The ascending natural-number search halts exactly when a later value satisfies its test.
countdownNext_spec|One countdown step agrees with the stated modular remainder update.
countdownLoop_spec|Repeated countdown computes the stated modular remainder.
countdownLoop_zero_iff|The countdown loop ends at zero exactly when its tested divisor divides the candidate.
harmonic_nonneg|Every rational harmonic number is nonnegative.
harmonic_mono|Rational harmonic numbers are monotone in their index.
harmonicNumerator_correct|The natural harmonic numerator divided by the factorial equals the rational harmonic number.
nat_sub_cast_eq_max|Natural subtraction becomes the maximum of rational subtraction and zero after casting.
harmonic_add_upper|A block of harmonic summands is bounded using its smallest denominator.
harmonic_pow_two_bound|Harmonic numbers at powers of two obey the stated linear upper bound.
harmonic_le_of_le_pow_two|An index below a power of two inherits the corresponding harmonic upper bound.
harmonic_sixteen_ge_three|The sixteenth harmonic number is at least three.
small_cutoff_checks|The finite positive cases below sixteen fail the counterexample inequality.
no_counterexample_below_cutoff|No positive index below 254 satisfies the counterexample inequality.
cutoff_removal|Adding the lower bound 254 does not change existence of a positive counterexample.
slotRegister_registerSlot|Converting a logical register to a physical slot and back is the identity.
registerSlot_slotRegister|Converting a physical slot to a logical register and back is the identity.
backendIncrement_slot|The increment entry selected by the logical register matches its physical slot.
backendDecrement_slot|The decrement entry selected by the logical register matches its physical slot.
physicalValue_slot|Reading an allocated physical slot returns the corresponding logical value.
slotRegister_eq_iff|Equality after inverse allocation is equivalent to equality with the allocated slot.
physicalValue_update|Updating a logical register updates exactly its allocated physical slot.
encodedStorage_get|Reading encoded storage returns the allocated register value or the specified padding value.
encodedStorage_update|Updating encoded storage agrees with updating the corresponding register value.
encodedStorage_append|Increasing storage capacity appends the required zero slot.
encodedStorage_split|Encoded storage splits around a selected physical register into its prefix, value and suffix.
pcParts_surjective|Every program counter decomposes into a high chunk and a low six-bit index.
registerValid_of_capacity|Sufficient storage capacity implies validity of the register layout.
initialRegisterValid|The initial register configuration satisfies the storage invariant.
registerValid_initialize|Initialization preserves validity while increasing capacity.
registerValid_step|Every primitive register step preserves storage validity.
registerValid_append_zero|Appending a zero slot agrees with the capacity increase under the storage invariant.
decrement_shift|The decrement entry shifts to the required position in the encoded word.
backend_decrement_zero|The tape decrement routine takes the zero branch and preserves the encoded zero value.
backend_decrement_positive|The tape decrement routine removes one unary mark and takes the positive branch.
initialize_scan|The initialization scan reaches the end of the encoded register area.
backend_register_area|The register portion of the full tape encoding has the required unary stream shape.
zipperOf_move_left|Moving the head left gives the corresponding change of zipper coordinates.
backend_counter_area|The counter portion of the full encoding has the required bit-stream shape.
incrementSelector_transition|Each increment-selector transition matches the register-selection pattern.
decrementSelector_transition|Each decrement-selector transition matches the register-selection pattern.
encodedRegister_initial|The initial tape encoding represents the initial register configuration.
registerRelation_initial|The blank machine and the initial register configuration satisfy the simulation relation.
registerRelation_halts|Related tape and register configurations agree on whether they are halted.
backend_primitive_advance|One primitive register instruction is implemented by a positive tape execution preserving the encoding.
registerRelation_advance|Every related configuration pair can advance through a positive tape execution to remain related.
backend_increment_encoded|Incrementing a logical register has the required effect on the complete tape encoding.
backend_decrement_encoded|Decrementing a logical register has the required value and branch effects on the complete tape encoding.
counter_execution|The certified counter routine updates the bit representation for either branch increment.
counter_return|After its counter update, the machine returns to the dispatcher with the required encoding.
Eval.deterministic|A terminating structured-program evaluation has a unique result.
lcmBody_eval|One structured LCM-search body implements the arithmetic search update.
lcmWhile_of_search|A terminating arithmetic LCM search induces evaluation of the structured while loop.
lcmWhile_initialized|The initialized structured LCM loop returns the least common multiple.
AccumulatorLoop.correct|The accumulator loop implements its arithmetic recurrence.
compiled_divisibility|The register-level divisibility loop computes the countdown test.
compiled_lcm_body|The register-level LCM body implements one arithmetic search step.
compiled_lcm_search|The register-level LCM loop implements the terminating arithmetic search.
compiled_lcm_initialized|The initialized register-level LCM search returns the required common multiple.
harmonicBody_eval|One structured harmonic body implements the numerator and denominator update.
harmonicWhile_eval|The structured harmonic while loop implements the arithmetic harmonic recurrence.
harmonicProgram_eval|The initialized structured harmonic program computes its exact numerator and denominator.
squareProgram_eval|The structured square program replaces its operand with its square.
divisibilityBody_eval|One structured divisibility body implements the countdown update.
divisibilityWhile_eval|The structured divisibility loop implements the full countdown test.
cycleRelation_initial|The initial arithmetic register configuration represents natural-search index zero.
cycleRelation_halts|The cycle relation equates register halting with search termination.
cycleRelation_advance|One natural-search step is implemented by a positive complete register cycle.
macro_iff_naturalSearch|The arithmetic register program halts exactly when the abstract natural-number search halts.
arithmetic_program_correct|The arithmetic register program halts exactly when the approved predicate has a witness.
sourceMain_eval|A structured main iteration computes the stated updated registers and halting decision.
sourceMain_halts_iff|The structured main iteration halts exactly when its arithmetic test succeeds.
sourceMain_continues_iff|The structured main iteration continues exactly when its arithmetic test fails.
source_repeated_iff|Repeated structured execution halts exactly when a searched arithmetic test succeeds.
arithmetic_subtract_first|The first subtraction block computes truncated subtraction on its designated registers.
arithmetic_subtract_last|The final subtraction block computes the positive part of the integer-test difference.
compiled_arithmetic_tail|The register arithmetic tail computes the integer counterexample test.
compiled_main_pretest|The register main body reaches the test with the computed arithmetic values.
'''.strip().splitlines())
SUMMARIES.update(dict(line.split('|', 1) for line in '''
TapeWord.carried_append|Carrying through an appended tape word equals appending its carried pieces.
TapeWord.append_bits|Encoding an appended tape word concatenates its bit encodings.
TapeWord.reverseCarried_bits|The reverse-carried word has the specified reversed bit encoding.
TapeWord.carried_prefix|The carried-word encoding has the required prefix form.
TapeWord.reverseCarried_carried|Reversing the carried representation recovers the stated original word representation.
TapeWord.reverse_prefix|Reversal converts the word prefix to the stated suffix representation.
TapeWord.ones_bits|A word of unary marks encodes as a list of true bits.
registerTailWord_cons_bits|Encoding a register tail exposes the leading unary value and separator.
registerWord_cons_bits|Encoding a register list exposes the first register and the encoded tail.
registerTailWord_append_bits|Appending register lists concatenates their tail encodings.
unaryRegisters_reverse|Reversing a unary register encoding gives the stated reversed representation.
registerTail_stream|The encoded register tail agrees with its stream representation.
registerTailWord_reverse_bits|The reversed register tail has the stated bit encoding.
registerStream_cons|A register stream decomposes into its first value, separator and tail.
registerStream_append|Appending register lists agrees with concatenating their stream encodings.
registerStream_increment|Incrementing a unary register adds one mark to its stream encoding.
carry_left_core|The left-moving carry routine traverses encoded data to its delimiter.
streamPrefix_append|Prefixing twice is equivalent to prefixing by the appended lists.
zipper_ext|Zippers agree when their state and two tape streams agree.
zipperOf_step|Converting a tape configuration to a zipper commutes with a machine step.
zipperOf_advance|Converting to a zipper commutes with a finite machine execution.
halts_iff_zipper|Blank-tape halting is equivalent in the absolute-coordinate and zipper representations.
mirrorMachine_twice|Mirroring the machine twice restores its transition function.
mirrorZipper_twice|Mirroring a zipper twice restores the original configuration.
mirror_step|Mirroring commutes with a step of the mirrored machine.
mirror_trajectory|Mirroring commutes with an entire machine trajectory.
ZExec.mirror|A finite zipper execution induces a finite execution of the mirrored machine.
insert_and_return|Insertion followed by the return routine restores the head position with the inserted data.
zipper_right|A right-moving transition has the stated effect on the two zipper streams.
zipper_left|A left-moving transition has the stated effect on the two zipper streams.
streamCons_tail|A stream is reconstructed from its leading cell and tail.
streamCons_zero|Reading a prefixed stream at zero returns the prefix cell.
streamTail_cons|Removing the first cell from a prefixed stream recovers its tail.
streamPrefix_nil|An empty prefix leaves a stream unchanged.
streamPrefix_cons|A nonempty prefix decomposes into its leading cell and remaining prefix.
scan_ones_right|The right-moving scan traverses a finite block of unary marks.
return_after_write|After the specified write, the return routine reaches its encoded return position.
return_after_separator|After crossing a separator, the return routine reaches its encoded return position.
select_registers|The selector traverses the preceding unary registers to reach the requested register.
select_fenced|The selector reaches the requested register in the fenced encoding.
'''.strip().splitlines()))
SUMMARIES.update(dict(line.split('|', 1) for line in '''
after_harmonic_first|The first harmonic block reaches the displayed exact numerator and denominator values.
after_lcm|The LCM block reaches the displayed least-common-multiple value.
after_scaled_products|The product blocks reach the displayed scaled integer-test terms.
after_square_first|The first square block reaches the displayed squared term.
after_square_second|The second square block reaches the displayed squared term.
after_sub_first|The first subtraction block reaches the displayed truncated difference.
all_macro_checks|Every shortened state satisfies its local expansion certificate for both symbols.
lcmUpto_small_bound|The finite initial segment satisfies the stated LCM bound used to exclude small counterexamples.
machine295_correct|The literal 295-state machine halts from the blank tape exactly when the approved predicate has a witness.
machine297_correct|The literal 297-state machine halts from the blank tape exactly when the approved predicate has a witness.
machine299_iff_macro|The literal 299-state machine and the arithmetic register program have equivalent initial halting behavior.
quotient297_transitions|Every invariant-permitted transition agrees with its image in the 297-state quotient.
window5_eta|A five-cell window is determined by its five displayed Boolean coordinates.
'''.strip().splitlines()))
SUMMARIES.update({
    'machine298_correct': 'The literal 298-state machine halts from the blank tape exactly when the approved predicate has a witness.',
    'quotient298_transitions': 'Every invariant-permitted transition agrees with its image in the 298-state quotient.',
})
