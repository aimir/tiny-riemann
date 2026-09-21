import RiemannMachineVerification.Generated.Dispatch.Cases00
import RiemannMachineVerification.Generated.Dispatch.Cases01
import RiemannMachineVerification.Generated.Dispatch.Cases02
import RiemannMachineVerification.Generated.Dispatch.Cases03
import RiemannMachineVerification.Generated.Dispatch.Cases04
import RiemannMachineVerification.Generated.Dispatch.Cases05
import RiemannMachineVerification.Generated.Dispatch.Cases06
import RiemannMachineVerification.Generated.Dispatch.Cases07
import RiemannMachineVerification.Generated.Dispatch.Cases08
import RiemannMachineVerification.Generated.Dispatch.Cases09
import RiemannMachineVerification.Generated.Dispatch.Cases10
import RiemannMachineVerification.Generated.Dispatch.Cases11
import RiemannMachineVerification.Generated.Dispatch.Cases12
import RiemannMachineVerification.Generated.Dispatch.Cases13
import RiemannMachineVerification.Generated.Dispatch.Cases14
import RiemannMachineVerification.Generated.Dispatch.Cases15
import RiemannMachineVerification.Tape.CounterIndex
set_option maxRecDepth 8192
set_option maxHeartbeats 0

namespace RiemannMachineVerification.Implementation

/-- [proof-guide] Collects the dispatcher obligations for addresses 0 through 63.
Proof: Combines `dispatcher_check_0`, `dispatcher_check_1`, `dispatcher_check_2` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_0 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨0, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_0
  · exact dispatcher_check_1
  · exact dispatcher_check_2
  · exact dispatcher_check_3
  · exact dispatcher_check_4
  · exact dispatcher_check_5
  · exact dispatcher_check_6
  · exact dispatcher_check_7
  · exact dispatcher_check_8
  · exact dispatcher_check_9
  · exact dispatcher_check_10
  · exact dispatcher_check_11
  · exact dispatcher_check_12
  · exact dispatcher_check_13
  · exact dispatcher_check_14
  · exact dispatcher_check_15
  · exact dispatcher_check_16
  · exact dispatcher_check_17
  · exact dispatcher_check_18
  · exact dispatcher_check_19
  · exact dispatcher_check_20
  · exact dispatcher_check_21
  · exact dispatcher_check_22
  · exact dispatcher_check_23
  · exact dispatcher_check_24
  · exact dispatcher_check_25
  · exact dispatcher_check_26
  · exact dispatcher_check_27
  · exact dispatcher_check_28
  · exact dispatcher_check_29
  · exact dispatcher_check_30
  · exact dispatcher_check_31
  · exact dispatcher_check_32
  · exact dispatcher_check_33
  · exact dispatcher_check_34
  · exact dispatcher_check_35
  · exact dispatcher_check_36
  · exact dispatcher_check_37
  · exact dispatcher_check_38
  · exact dispatcher_check_39
  · exact dispatcher_check_40
  · exact dispatcher_check_41
  · exact dispatcher_check_42
  · exact dispatcher_check_43
  · exact dispatcher_check_44
  · exact dispatcher_check_45
  · exact dispatcher_check_46
  · exact dispatcher_check_47
  · exact dispatcher_check_48
  · exact dispatcher_check_49
  · exact dispatcher_check_50
  · exact dispatcher_check_51
  · exact dispatcher_check_52
  · exact dispatcher_check_53
  · exact dispatcher_check_54
  · exact dispatcher_check_55
  · exact dispatcher_check_56
  · exact dispatcher_check_57
  · exact dispatcher_check_58
  · exact dispatcher_check_59
  · exact dispatcher_check_60
  · exact dispatcher_check_61
  · exact dispatcher_check_62
  · exact dispatcher_check_63

/-- [proof-guide] Collects the dispatcher obligations for addresses 64 through 127.
Proof: Combines `dispatcher_check_64`, `dispatcher_check_65`, `dispatcher_check_66` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_1 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨1, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_64
  · exact dispatcher_check_65
  · exact dispatcher_check_66
  · exact dispatcher_check_67
  · exact dispatcher_check_68
  · exact dispatcher_check_69
  · exact dispatcher_check_70
  · exact dispatcher_check_71
  · exact dispatcher_check_72
  · exact dispatcher_check_73
  · exact dispatcher_check_74
  · exact dispatcher_check_75
  · exact dispatcher_check_76
  · exact dispatcher_check_77
  · exact dispatcher_check_78
  · exact dispatcher_check_79
  · exact dispatcher_check_80
  · exact dispatcher_check_81
  · exact dispatcher_check_82
  · exact dispatcher_check_83
  · exact dispatcher_check_84
  · exact dispatcher_check_85
  · exact dispatcher_check_86
  · exact dispatcher_check_87
  · exact dispatcher_check_88
  · exact dispatcher_check_89
  · exact dispatcher_check_90
  · exact dispatcher_check_91
  · exact dispatcher_check_92
  · exact dispatcher_check_93
  · exact dispatcher_check_94
  · exact dispatcher_check_95
  · exact dispatcher_check_96
  · exact dispatcher_check_97
  · exact dispatcher_check_98
  · exact dispatcher_check_99
  · exact dispatcher_check_100
  · exact dispatcher_check_101
  · exact dispatcher_check_102
  · exact dispatcher_check_103
  · exact dispatcher_check_104
  · exact dispatcher_check_105
  · exact dispatcher_check_106
  · exact dispatcher_check_107
  · exact dispatcher_check_108
  · exact dispatcher_check_109
  · exact dispatcher_check_110
  · exact dispatcher_check_111
  · exact dispatcher_check_112
  · exact dispatcher_check_113
  · exact dispatcher_check_114
  · exact dispatcher_check_115
  · exact dispatcher_check_116
  · exact dispatcher_check_117
  · exact dispatcher_check_118
  · exact dispatcher_check_119
  · exact dispatcher_check_120
  · exact dispatcher_check_121
  · exact dispatcher_check_122
  · exact dispatcher_check_123
  · exact dispatcher_check_124
  · exact dispatcher_check_125
  · exact dispatcher_check_126
  · exact dispatcher_check_127

/-- [proof-guide] Collects the dispatcher obligations for addresses 128 through 191.
Proof: Combines `dispatcher_check_128`, `dispatcher_check_129`, `dispatcher_check_130` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_2 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨2, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_128
  · exact dispatcher_check_129
  · exact dispatcher_check_130
  · exact dispatcher_check_131
  · exact dispatcher_check_132
  · exact dispatcher_check_133
  · exact dispatcher_check_134
  · exact dispatcher_check_135
  · exact dispatcher_check_136
  · exact dispatcher_check_137
  · exact dispatcher_check_138
  · exact dispatcher_check_139
  · exact dispatcher_check_140
  · exact dispatcher_check_141
  · exact dispatcher_check_142
  · exact dispatcher_check_143
  · exact dispatcher_check_144
  · exact dispatcher_check_145
  · exact dispatcher_check_146
  · exact dispatcher_check_147
  · exact dispatcher_check_148
  · exact dispatcher_check_149
  · exact dispatcher_check_150
  · exact dispatcher_check_151
  · exact dispatcher_check_152
  · exact dispatcher_check_153
  · exact dispatcher_check_154
  · exact dispatcher_check_155
  · exact dispatcher_check_156
  · exact dispatcher_check_157
  · exact dispatcher_check_158
  · exact dispatcher_check_159
  · exact dispatcher_check_160
  · exact dispatcher_check_161
  · exact dispatcher_check_162
  · exact dispatcher_check_163
  · exact dispatcher_check_164
  · exact dispatcher_check_165
  · exact dispatcher_check_166
  · exact dispatcher_check_167
  · exact dispatcher_check_168
  · exact dispatcher_check_169
  · exact dispatcher_check_170
  · exact dispatcher_check_171
  · exact dispatcher_check_172
  · exact dispatcher_check_173
  · exact dispatcher_check_174
  · exact dispatcher_check_175
  · exact dispatcher_check_176
  · exact dispatcher_check_177
  · exact dispatcher_check_178
  · exact dispatcher_check_179
  · exact dispatcher_check_180
  · exact dispatcher_check_181
  · exact dispatcher_check_182
  · exact dispatcher_check_183
  · exact dispatcher_check_184
  · exact dispatcher_check_185
  · exact dispatcher_check_186
  · exact dispatcher_check_187
  · exact dispatcher_check_188
  · exact dispatcher_check_189
  · exact dispatcher_check_190
  · exact dispatcher_check_191

/-- [proof-guide] Collects the dispatcher obligations for addresses 192 through 255.
Proof: Combines `dispatcher_check_192`, `dispatcher_check_193`, `dispatcher_check_194` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_3 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨3, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_192
  · exact dispatcher_check_193
  · exact dispatcher_check_194
  · exact dispatcher_check_195
  · exact dispatcher_check_196
  · exact dispatcher_check_197
  · exact dispatcher_check_198
  · exact dispatcher_check_199
  · exact dispatcher_check_200
  · exact dispatcher_check_201
  · exact dispatcher_check_202
  · exact dispatcher_check_203
  · exact dispatcher_check_204
  · exact dispatcher_check_205
  · exact dispatcher_check_206
  · exact dispatcher_check_207
  · exact dispatcher_check_208
  · exact dispatcher_check_209
  · exact dispatcher_check_210
  · exact dispatcher_check_211
  · exact dispatcher_check_212
  · exact dispatcher_check_213
  · exact dispatcher_check_214
  · exact dispatcher_check_215
  · exact dispatcher_check_216
  · exact dispatcher_check_217
  · exact dispatcher_check_218
  · exact dispatcher_check_219
  · exact dispatcher_check_220
  · exact dispatcher_check_221
  · exact dispatcher_check_222
  · exact dispatcher_check_223
  · exact dispatcher_check_224
  · exact dispatcher_check_225
  · exact dispatcher_check_226
  · exact dispatcher_check_227
  · exact dispatcher_check_228
  · exact dispatcher_check_229
  · exact dispatcher_check_230
  · exact dispatcher_check_231
  · exact dispatcher_check_232
  · exact dispatcher_check_233
  · exact dispatcher_check_234
  · exact dispatcher_check_235
  · exact dispatcher_check_236
  · exact dispatcher_check_237
  · exact dispatcher_check_238
  · exact dispatcher_check_239
  · exact dispatcher_check_240
  · exact dispatcher_check_241
  · exact dispatcher_check_242
  · exact dispatcher_check_243
  · exact dispatcher_check_244
  · exact dispatcher_check_245
  · exact dispatcher_check_246
  · exact dispatcher_check_247
  · exact dispatcher_check_248
  · exact dispatcher_check_249
  · exact dispatcher_check_250
  · exact dispatcher_check_251
  · exact dispatcher_check_252
  · exact dispatcher_check_253
  · exact dispatcher_check_254
  · exact dispatcher_check_255

/-- [proof-guide] Collects the dispatcher obligations for addresses 256 through 319.
Proof: Combines `dispatcher_check_256`, `dispatcher_check_257`, `dispatcher_check_258` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_4 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨4, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_256
  · exact dispatcher_check_257
  · exact dispatcher_check_258
  · exact dispatcher_check_259
  · exact dispatcher_check_260
  · exact dispatcher_check_261
  · exact dispatcher_check_262
  · exact dispatcher_check_263
  · exact dispatcher_check_264
  · exact dispatcher_check_265
  · exact dispatcher_check_266
  · exact dispatcher_check_267
  · exact dispatcher_check_268
  · exact dispatcher_check_269
  · exact dispatcher_check_270
  · exact dispatcher_check_271
  · exact dispatcher_check_272
  · exact dispatcher_check_273
  · exact dispatcher_check_274
  · exact dispatcher_check_275
  · exact dispatcher_check_276
  · exact dispatcher_check_277
  · exact dispatcher_check_278
  · exact dispatcher_check_279
  · exact dispatcher_check_280
  · exact dispatcher_check_281
  · exact dispatcher_check_282
  · exact dispatcher_check_283
  · exact dispatcher_check_284
  · exact dispatcher_check_285
  · exact dispatcher_check_286
  · exact dispatcher_check_287
  · exact dispatcher_check_288
  · exact dispatcher_check_289
  · exact dispatcher_check_290
  · exact dispatcher_check_291
  · exact dispatcher_check_292
  · exact dispatcher_check_293
  · exact dispatcher_check_294
  · exact dispatcher_check_295
  · exact dispatcher_check_296
  · exact dispatcher_check_297
  · exact dispatcher_check_298
  · exact dispatcher_check_299
  · exact dispatcher_check_300
  · exact dispatcher_check_301
  · exact dispatcher_check_302
  · exact dispatcher_check_303
  · exact dispatcher_check_304
  · exact dispatcher_check_305
  · exact dispatcher_check_306
  · exact dispatcher_check_307
  · exact dispatcher_check_308
  · exact dispatcher_check_309
  · exact dispatcher_check_310
  · exact dispatcher_check_311
  · exact dispatcher_check_312
  · exact dispatcher_check_313
  · exact dispatcher_check_314
  · exact dispatcher_check_315
  · exact dispatcher_check_316
  · exact dispatcher_check_317
  · exact dispatcher_check_318
  · exact dispatcher_check_319

/-- [proof-guide] Collects the dispatcher obligations for addresses 320 through 383.
Proof: Combines `dispatcher_check_320`, `dispatcher_check_321`, `dispatcher_check_322` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_5 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨5, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_320
  · exact dispatcher_check_321
  · exact dispatcher_check_322
  · exact dispatcher_check_323
  · exact dispatcher_check_324
  · exact dispatcher_check_325
  · exact dispatcher_check_326
  · exact dispatcher_check_327
  · exact dispatcher_check_328
  · exact dispatcher_check_329
  · exact dispatcher_check_330
  · exact dispatcher_check_331
  · exact dispatcher_check_332
  · exact dispatcher_check_333
  · exact dispatcher_check_334
  · exact dispatcher_check_335
  · exact dispatcher_check_336
  · exact dispatcher_check_337
  · exact dispatcher_check_338
  · exact dispatcher_check_339
  · exact dispatcher_check_340
  · exact dispatcher_check_341
  · exact dispatcher_check_342
  · exact dispatcher_check_343
  · exact dispatcher_check_344
  · exact dispatcher_check_345
  · exact dispatcher_check_346
  · exact dispatcher_check_347
  · exact dispatcher_check_348
  · exact dispatcher_check_349
  · exact dispatcher_check_350
  · exact dispatcher_check_351
  · exact dispatcher_check_352
  · exact dispatcher_check_353
  · exact dispatcher_check_354
  · exact dispatcher_check_355
  · exact dispatcher_check_356
  · exact dispatcher_check_357
  · exact dispatcher_check_358
  · exact dispatcher_check_359
  · exact dispatcher_check_360
  · exact dispatcher_check_361
  · exact dispatcher_check_362
  · exact dispatcher_check_363
  · exact dispatcher_check_364
  · exact dispatcher_check_365
  · exact dispatcher_check_366
  · exact dispatcher_check_367
  · exact dispatcher_check_368
  · exact dispatcher_check_369
  · exact dispatcher_check_370
  · exact dispatcher_check_371
  · exact dispatcher_check_372
  · exact dispatcher_check_373
  · exact dispatcher_check_374
  · exact dispatcher_check_375
  · exact dispatcher_check_376
  · exact dispatcher_check_377
  · exact dispatcher_check_378
  · exact dispatcher_check_379
  · exact dispatcher_check_380
  · exact dispatcher_check_381
  · exact dispatcher_check_382
  · exact dispatcher_check_383

/-- [proof-guide] Collects the dispatcher obligations for addresses 384 through 447.
Proof: Combines `dispatcher_check_384`, `dispatcher_check_385`, `dispatcher_check_386` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_6 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨6, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_384
  · exact dispatcher_check_385
  · exact dispatcher_check_386
  · exact dispatcher_check_387
  · exact dispatcher_check_388
  · exact dispatcher_check_389
  · exact dispatcher_check_390
  · exact dispatcher_check_391
  · exact dispatcher_check_392
  · exact dispatcher_check_393
  · exact dispatcher_check_394
  · exact dispatcher_check_395
  · exact dispatcher_check_396
  · exact dispatcher_check_397
  · exact dispatcher_check_398
  · exact dispatcher_check_399
  · exact dispatcher_check_400
  · exact dispatcher_check_401
  · exact dispatcher_check_402
  · exact dispatcher_check_403
  · exact dispatcher_check_404
  · exact dispatcher_check_405
  · exact dispatcher_check_406
  · exact dispatcher_check_407
  · exact dispatcher_check_408
  · exact dispatcher_check_409
  · exact dispatcher_check_410
  · exact dispatcher_check_411
  · exact dispatcher_check_412
  · exact dispatcher_check_413
  · exact dispatcher_check_414
  · exact dispatcher_check_415
  · exact dispatcher_check_416
  · exact dispatcher_check_417
  · exact dispatcher_check_418
  · exact dispatcher_check_419
  · exact dispatcher_check_420
  · exact dispatcher_check_421
  · exact dispatcher_check_422
  · exact dispatcher_check_423
  · exact dispatcher_check_424
  · exact dispatcher_check_425
  · exact dispatcher_check_426
  · exact dispatcher_check_427
  · exact dispatcher_check_428
  · exact dispatcher_check_429
  · exact dispatcher_check_430
  · exact dispatcher_check_431
  · exact dispatcher_check_432
  · exact dispatcher_check_433
  · exact dispatcher_check_434
  · exact dispatcher_check_435
  · exact dispatcher_check_436
  · exact dispatcher_check_437
  · exact dispatcher_check_438
  · exact dispatcher_check_439
  · exact dispatcher_check_440
  · exact dispatcher_check_441
  · exact dispatcher_check_442
  · exact dispatcher_check_443
  · exact dispatcher_check_444
  · exact dispatcher_check_445
  · exact dispatcher_check_446
  · exact dispatcher_check_447

/-- [proof-guide] Collects the dispatcher obligations for addresses 448 through 511.
Proof: Combines `dispatcher_check_448`, `dispatcher_check_449`, `dispatcher_check_450` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_7 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨7, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_448
  · exact dispatcher_check_449
  · exact dispatcher_check_450
  · exact dispatcher_check_451
  · exact dispatcher_check_452
  · exact dispatcher_check_453
  · exact dispatcher_check_454
  · exact dispatcher_check_455
  · exact dispatcher_check_456
  · exact dispatcher_check_457
  · exact dispatcher_check_458
  · exact dispatcher_check_459
  · exact dispatcher_check_460
  · exact dispatcher_check_461
  · exact dispatcher_check_462
  · exact dispatcher_check_463
  · exact dispatcher_check_464
  · exact dispatcher_check_465
  · exact dispatcher_check_466
  · exact dispatcher_check_467
  · exact dispatcher_check_468
  · exact dispatcher_check_469
  · exact dispatcher_check_470
  · exact dispatcher_check_471
  · exact dispatcher_check_472
  · exact dispatcher_check_473
  · exact dispatcher_check_474
  · exact dispatcher_check_475
  · exact dispatcher_check_476
  · exact dispatcher_check_477
  · exact dispatcher_check_478
  · exact dispatcher_check_479
  · exact dispatcher_check_480
  · exact dispatcher_check_481
  · exact dispatcher_check_482
  · exact dispatcher_check_483
  · exact dispatcher_check_484
  · exact dispatcher_check_485
  · exact dispatcher_check_486
  · exact dispatcher_check_487
  · exact dispatcher_check_488
  · exact dispatcher_check_489
  · exact dispatcher_check_490
  · exact dispatcher_check_491
  · exact dispatcher_check_492
  · exact dispatcher_check_493
  · exact dispatcher_check_494
  · exact dispatcher_check_495
  · exact dispatcher_check_496
  · exact dispatcher_check_497
  · exact dispatcher_check_498
  · exact dispatcher_check_499
  · exact dispatcher_check_500
  · exact dispatcher_check_501
  · exact dispatcher_check_502
  · exact dispatcher_check_503
  · exact dispatcher_check_504
  · exact dispatcher_check_505
  · exact dispatcher_check_506
  · exact dispatcher_check_507
  · exact dispatcher_check_508
  · exact dispatcher_check_509
  · exact dispatcher_check_510
  · exact dispatcher_check_511

/-- [proof-guide] Collects the dispatcher obligations for addresses 512 through 575.
Proof: Combines `dispatcher_check_512`, `dispatcher_check_513`, `dispatcher_check_514` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_8 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨8, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_512
  · exact dispatcher_check_513
  · exact dispatcher_check_514
  · exact dispatcher_check_515
  · exact dispatcher_check_516
  · exact dispatcher_check_517
  · exact dispatcher_check_518
  · exact dispatcher_check_519
  · exact dispatcher_check_520
  · exact dispatcher_check_521
  · exact dispatcher_check_522
  · exact dispatcher_check_523
  · exact dispatcher_check_524
  · exact dispatcher_check_525
  · exact dispatcher_check_526
  · exact dispatcher_check_527
  · exact dispatcher_check_528
  · exact dispatcher_check_529
  · exact dispatcher_check_530
  · exact dispatcher_check_531
  · exact dispatcher_check_532
  · exact dispatcher_check_533
  · exact dispatcher_check_534
  · exact dispatcher_check_535
  · exact dispatcher_check_536
  · exact dispatcher_check_537
  · exact dispatcher_check_538
  · exact dispatcher_check_539
  · exact dispatcher_check_540
  · exact dispatcher_check_541
  · exact dispatcher_check_542
  · exact dispatcher_check_543
  · exact dispatcher_check_544
  · exact dispatcher_check_545
  · exact dispatcher_check_546
  · exact dispatcher_check_547
  · exact dispatcher_check_548
  · exact dispatcher_check_549
  · exact dispatcher_check_550
  · exact dispatcher_check_551
  · exact dispatcher_check_552
  · exact dispatcher_check_553
  · exact dispatcher_check_554
  · exact dispatcher_check_555
  · exact dispatcher_check_556
  · exact dispatcher_check_557
  · exact dispatcher_check_558
  · exact dispatcher_check_559
  · exact dispatcher_check_560
  · exact dispatcher_check_561
  · exact dispatcher_check_562
  · exact dispatcher_check_563
  · exact dispatcher_check_564
  · exact dispatcher_check_565
  · exact dispatcher_check_566
  · exact dispatcher_check_567
  · exact dispatcher_check_568
  · exact dispatcher_check_569
  · exact dispatcher_check_570
  · exact dispatcher_check_571
  · exact dispatcher_check_572
  · exact dispatcher_check_573
  · exact dispatcher_check_574
  · exact dispatcher_check_575

/-- [proof-guide] Collects the dispatcher obligations for addresses 576 through 639.
Proof: Combines `dispatcher_check_576`, `dispatcher_check_577`, `dispatcher_check_578` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_9 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨9, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_576
  · exact dispatcher_check_577
  · exact dispatcher_check_578
  · exact dispatcher_check_579
  · exact dispatcher_check_580
  · exact dispatcher_check_581
  · exact dispatcher_check_582
  · exact dispatcher_check_583
  · exact dispatcher_check_584
  · exact dispatcher_check_585
  · exact dispatcher_check_586
  · exact dispatcher_check_587
  · exact dispatcher_check_588
  · exact dispatcher_check_589
  · exact dispatcher_check_590
  · exact dispatcher_check_591
  · exact dispatcher_check_592
  · exact dispatcher_check_593
  · exact dispatcher_check_594
  · exact dispatcher_check_595
  · exact dispatcher_check_596
  · exact dispatcher_check_597
  · exact dispatcher_check_598
  · exact dispatcher_check_599
  · exact dispatcher_check_600
  · exact dispatcher_check_601
  · exact dispatcher_check_602
  · exact dispatcher_check_603
  · exact dispatcher_check_604
  · exact dispatcher_check_605
  · exact dispatcher_check_606
  · exact dispatcher_check_607
  · exact dispatcher_check_608
  · exact dispatcher_check_609
  · exact dispatcher_check_610
  · exact dispatcher_check_611
  · exact dispatcher_check_612
  · exact dispatcher_check_613
  · exact dispatcher_check_614
  · exact dispatcher_check_615
  · exact dispatcher_check_616
  · exact dispatcher_check_617
  · exact dispatcher_check_618
  · exact dispatcher_check_619
  · exact dispatcher_check_620
  · exact dispatcher_check_621
  · exact dispatcher_check_622
  · exact dispatcher_check_623
  · exact dispatcher_check_624
  · exact dispatcher_check_625
  · exact dispatcher_check_626
  · exact dispatcher_check_627
  · exact dispatcher_check_628
  · exact dispatcher_check_629
  · exact dispatcher_check_630
  · exact dispatcher_check_631
  · exact dispatcher_check_632
  · exact dispatcher_check_633
  · exact dispatcher_check_634
  · exact dispatcher_check_635
  · exact dispatcher_check_636
  · exact dispatcher_check_637
  · exact dispatcher_check_638
  · exact dispatcher_check_639

/-- [proof-guide] Collects the dispatcher obligations for addresses 640 through 703.
Proof: Combines `dispatcher_check_640`, `dispatcher_check_641`, `dispatcher_check_642` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_10 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨10, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_640
  · exact dispatcher_check_641
  · exact dispatcher_check_642
  · exact dispatcher_check_643
  · exact dispatcher_check_644
  · exact dispatcher_check_645
  · exact dispatcher_check_646
  · exact dispatcher_check_647
  · exact dispatcher_check_648
  · exact dispatcher_check_649
  · exact dispatcher_check_650
  · exact dispatcher_check_651
  · exact dispatcher_check_652
  · exact dispatcher_check_653
  · exact dispatcher_check_654
  · exact dispatcher_check_655
  · exact dispatcher_check_656
  · exact dispatcher_check_657
  · exact dispatcher_check_658
  · exact dispatcher_check_659
  · exact dispatcher_check_660
  · exact dispatcher_check_661
  · exact dispatcher_check_662
  · exact dispatcher_check_663
  · exact dispatcher_check_664
  · exact dispatcher_check_665
  · exact dispatcher_check_666
  · exact dispatcher_check_667
  · exact dispatcher_check_668
  · exact dispatcher_check_669
  · exact dispatcher_check_670
  · exact dispatcher_check_671
  · exact dispatcher_check_672
  · exact dispatcher_check_673
  · exact dispatcher_check_674
  · exact dispatcher_check_675
  · exact dispatcher_check_676
  · exact dispatcher_check_677
  · exact dispatcher_check_678
  · exact dispatcher_check_679
  · exact dispatcher_check_680
  · exact dispatcher_check_681
  · exact dispatcher_check_682
  · exact dispatcher_check_683
  · exact dispatcher_check_684
  · exact dispatcher_check_685
  · exact dispatcher_check_686
  · exact dispatcher_check_687
  · exact dispatcher_check_688
  · exact dispatcher_check_689
  · exact dispatcher_check_690
  · exact dispatcher_check_691
  · exact dispatcher_check_692
  · exact dispatcher_check_693
  · exact dispatcher_check_694
  · exact dispatcher_check_695
  · exact dispatcher_check_696
  · exact dispatcher_check_697
  · exact dispatcher_check_698
  · exact dispatcher_check_699
  · exact dispatcher_check_700
  · exact dispatcher_check_701
  · exact dispatcher_check_702
  · exact dispatcher_check_703

/-- [proof-guide] Collects the dispatcher obligations for addresses 704 through 767.
Proof: Combines `dispatcher_check_704`, `dispatcher_check_705`, `dispatcher_check_706` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_11 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨11, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_704
  · exact dispatcher_check_705
  · exact dispatcher_check_706
  · exact dispatcher_check_707
  · exact dispatcher_check_708
  · exact dispatcher_check_709
  · exact dispatcher_check_710
  · exact dispatcher_check_711
  · exact dispatcher_check_712
  · exact dispatcher_check_713
  · exact dispatcher_check_714
  · exact dispatcher_check_715
  · exact dispatcher_check_716
  · exact dispatcher_check_717
  · exact dispatcher_check_718
  · exact dispatcher_check_719
  · exact dispatcher_check_720
  · exact dispatcher_check_721
  · exact dispatcher_check_722
  · exact dispatcher_check_723
  · exact dispatcher_check_724
  · exact dispatcher_check_725
  · exact dispatcher_check_726
  · exact dispatcher_check_727
  · exact dispatcher_check_728
  · exact dispatcher_check_729
  · exact dispatcher_check_730
  · exact dispatcher_check_731
  · exact dispatcher_check_732
  · exact dispatcher_check_733
  · exact dispatcher_check_734
  · exact dispatcher_check_735
  · exact dispatcher_check_736
  · exact dispatcher_check_737
  · exact dispatcher_check_738
  · exact dispatcher_check_739
  · exact dispatcher_check_740
  · exact dispatcher_check_741
  · exact dispatcher_check_742
  · exact dispatcher_check_743
  · exact dispatcher_check_744
  · exact dispatcher_check_745
  · exact dispatcher_check_746
  · exact dispatcher_check_747
  · exact dispatcher_check_748
  · exact dispatcher_check_749
  · exact dispatcher_check_750
  · exact dispatcher_check_751
  · exact dispatcher_check_752
  · exact dispatcher_check_753
  · exact dispatcher_check_754
  · exact dispatcher_check_755
  · exact dispatcher_check_756
  · exact dispatcher_check_757
  · exact dispatcher_check_758
  · exact dispatcher_check_759
  · exact dispatcher_check_760
  · exact dispatcher_check_761
  · exact dispatcher_check_762
  · exact dispatcher_check_763
  · exact dispatcher_check_764
  · exact dispatcher_check_765
  · exact dispatcher_check_766
  · exact dispatcher_check_767

/-- [proof-guide] Collects the dispatcher obligations for addresses 768 through 831.
Proof: Combines `dispatcher_check_768`, `dispatcher_check_769`, `dispatcher_check_770` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_12 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨12, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_768
  · exact dispatcher_check_769
  · exact dispatcher_check_770
  · exact dispatcher_check_771
  · exact dispatcher_check_772
  · exact dispatcher_check_773
  · exact dispatcher_check_774
  · exact dispatcher_check_775
  · exact dispatcher_check_776
  · exact dispatcher_check_777
  · exact dispatcher_check_778
  · exact dispatcher_check_779
  · exact dispatcher_check_780
  · exact dispatcher_check_781
  · exact dispatcher_check_782
  · exact dispatcher_check_783
  · exact dispatcher_check_784
  · exact dispatcher_check_785
  · exact dispatcher_check_786
  · exact dispatcher_check_787
  · exact dispatcher_check_788
  · exact dispatcher_check_789
  · exact dispatcher_check_790
  · exact dispatcher_check_791
  · exact dispatcher_check_792
  · exact dispatcher_check_793
  · exact dispatcher_check_794
  · exact dispatcher_check_795
  · exact dispatcher_check_796
  · exact dispatcher_check_797
  · exact dispatcher_check_798
  · exact dispatcher_check_799
  · exact dispatcher_check_800
  · exact dispatcher_check_801
  · exact dispatcher_check_802
  · exact dispatcher_check_803
  · exact dispatcher_check_804
  · exact dispatcher_check_805
  · exact dispatcher_check_806
  · exact dispatcher_check_807
  · exact dispatcher_check_808
  · exact dispatcher_check_809
  · exact dispatcher_check_810
  · exact dispatcher_check_811
  · exact dispatcher_check_812
  · exact dispatcher_check_813
  · exact dispatcher_check_814
  · exact dispatcher_check_815
  · exact dispatcher_check_816
  · exact dispatcher_check_817
  · exact dispatcher_check_818
  · exact dispatcher_check_819
  · exact dispatcher_check_820
  · exact dispatcher_check_821
  · exact dispatcher_check_822
  · exact dispatcher_check_823
  · exact dispatcher_check_824
  · exact dispatcher_check_825
  · exact dispatcher_check_826
  · exact dispatcher_check_827
  · exact dispatcher_check_828
  · exact dispatcher_check_829
  · exact dispatcher_check_830
  · exact dispatcher_check_831

/-- [proof-guide] Collects the dispatcher obligations for addresses 832 through 895.
Proof: Combines `dispatcher_check_832`, `dispatcher_check_833`, `dispatcher_check_834` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_13 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨13, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_832
  · exact dispatcher_check_833
  · exact dispatcher_check_834
  · exact dispatcher_check_835
  · exact dispatcher_check_836
  · exact dispatcher_check_837
  · exact dispatcher_check_838
  · exact dispatcher_check_839
  · exact dispatcher_check_840
  · exact dispatcher_check_841
  · exact dispatcher_check_842
  · exact dispatcher_check_843
  · exact dispatcher_check_844
  · exact dispatcher_check_845
  · exact dispatcher_check_846
  · exact dispatcher_check_847
  · exact dispatcher_check_848
  · exact dispatcher_check_849
  · exact dispatcher_check_850
  · exact dispatcher_check_851
  · exact dispatcher_check_852
  · exact dispatcher_check_853
  · exact dispatcher_check_854
  · exact dispatcher_check_855
  · exact dispatcher_check_856
  · exact dispatcher_check_857
  · exact dispatcher_check_858
  · exact dispatcher_check_859
  · exact dispatcher_check_860
  · exact dispatcher_check_861
  · exact dispatcher_check_862
  · exact dispatcher_check_863
  · exact dispatcher_check_864
  · exact dispatcher_check_865
  · exact dispatcher_check_866
  · exact dispatcher_check_867
  · exact dispatcher_check_868
  · exact dispatcher_check_869
  · exact dispatcher_check_870
  · exact dispatcher_check_871
  · exact dispatcher_check_872
  · exact dispatcher_check_873
  · exact dispatcher_check_874
  · exact dispatcher_check_875
  · exact dispatcher_check_876
  · exact dispatcher_check_877
  · exact dispatcher_check_878
  · exact dispatcher_check_879
  · exact dispatcher_check_880
  · exact dispatcher_check_881
  · exact dispatcher_check_882
  · exact dispatcher_check_883
  · exact dispatcher_check_884
  · exact dispatcher_check_885
  · exact dispatcher_check_886
  · exact dispatcher_check_887
  · exact dispatcher_check_888
  · exact dispatcher_check_889
  · exact dispatcher_check_890
  · exact dispatcher_check_891
  · exact dispatcher_check_892
  · exact dispatcher_check_893
  · exact dispatcher_check_894
  · exact dispatcher_check_895

/-- [proof-guide] Collects the dispatcher obligations for addresses 896 through 959.
Proof: Combines `dispatcher_check_896`, `dispatcher_check_897`, `dispatcher_check_898` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_14 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨14, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_896
  · exact dispatcher_check_897
  · exact dispatcher_check_898
  · exact dispatcher_check_899
  · exact dispatcher_check_900
  · exact dispatcher_check_901
  · exact dispatcher_check_902
  · exact dispatcher_check_903
  · exact dispatcher_check_904
  · exact dispatcher_check_905
  · exact dispatcher_check_906
  · exact dispatcher_check_907
  · exact dispatcher_check_908
  · exact dispatcher_check_909
  · exact dispatcher_check_910
  · exact dispatcher_check_911
  · exact dispatcher_check_912
  · exact dispatcher_check_913
  · exact dispatcher_check_914
  · exact dispatcher_check_915
  · exact dispatcher_check_916
  · exact dispatcher_check_917
  · exact dispatcher_check_918
  · exact dispatcher_check_919
  · exact dispatcher_check_920
  · exact dispatcher_check_921
  · exact dispatcher_check_922
  · exact dispatcher_check_923
  · exact dispatcher_check_924
  · exact dispatcher_check_925
  · exact dispatcher_check_926
  · exact dispatcher_check_927
  · exact dispatcher_check_928
  · exact dispatcher_check_929
  · exact dispatcher_check_930
  · exact dispatcher_check_931
  · exact dispatcher_check_932
  · exact dispatcher_check_933
  · exact dispatcher_check_934
  · exact dispatcher_check_935
  · exact dispatcher_check_936
  · exact dispatcher_check_937
  · exact dispatcher_check_938
  · exact dispatcher_check_939
  · exact dispatcher_check_940
  · exact dispatcher_check_941
  · exact dispatcher_check_942
  · exact dispatcher_check_943
  · exact dispatcher_check_944
  · exact dispatcher_check_945
  · exact dispatcher_check_946
  · exact dispatcher_check_947
  · exact dispatcher_check_948
  · exact dispatcher_check_949
  · exact dispatcher_check_950
  · exact dispatcher_check_951
  · exact dispatcher_check_952
  · exact dispatcher_check_953
  · exact dispatcher_check_954
  · exact dispatcher_check_955
  · exact dispatcher_check_956
  · exact dispatcher_check_957
  · exact dispatcher_check_958
  · exact dispatcher_check_959

/-- [proof-guide] Collects the dispatcher obligations for addresses 960 through 1023.
Proof: Combines `dispatcher_check_960`, `dispatcher_check_961`, `dispatcher_check_962` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_chunk_15 (low : Fin 64) :
    DispatcherCheck (pcParts ⟨15, by decide⟩ low) := by
  fin_cases low
  · exact dispatcher_check_960
  · exact dispatcher_check_961
  · exact dispatcher_check_962
  · exact dispatcher_check_963
  · exact dispatcher_check_964
  · exact dispatcher_check_965
  · exact dispatcher_check_966
  · exact dispatcher_check_967
  · exact dispatcher_check_968
  · exact dispatcher_check_969
  · exact dispatcher_check_970
  · exact dispatcher_check_971
  · exact dispatcher_check_972
  · exact dispatcher_check_973
  · exact dispatcher_check_974
  · exact dispatcher_check_975
  · exact dispatcher_check_976
  · exact dispatcher_check_977
  · exact dispatcher_check_978
  · exact dispatcher_check_979
  · exact dispatcher_check_980
  · exact dispatcher_check_981
  · exact dispatcher_check_982
  · exact dispatcher_check_983
  · exact dispatcher_check_984
  · exact dispatcher_check_985
  · exact dispatcher_check_986
  · exact dispatcher_check_987
  · exact dispatcher_check_988
  · exact dispatcher_check_989
  · exact dispatcher_check_990
  · exact dispatcher_check_991
  · exact dispatcher_check_992
  · exact dispatcher_check_993
  · exact dispatcher_check_994
  · exact dispatcher_check_995
  · exact dispatcher_check_996
  · exact dispatcher_check_997
  · exact dispatcher_check_998
  · exact dispatcher_check_999
  · exact dispatcher_check_1000
  · exact dispatcher_check_1001
  · exact dispatcher_check_1002
  · exact dispatcher_check_1003
  · exact dispatcher_check_1004
  · exact dispatcher_check_1005
  · exact dispatcher_check_1006
  · exact dispatcher_check_1007
  · exact dispatcher_check_1008
  · exact dispatcher_check_1009
  · exact dispatcher_check_1010
  · exact dispatcher_check_1011
  · exact dispatcher_check_1012
  · exact dispatcher_check_1013
  · exact dispatcher_check_1014
  · exact dispatcher_check_1015
  · exact dispatcher_check_1016
  · exact dispatcher_check_1017
  · exact dispatcher_check_1018
  · exact dispatcher_check_1019
  · exact dispatcher_check_1020
  · exact dispatcher_check_1021
  · exact dispatcher_check_1022
  · exact dispatcher_check_1023

/-- [proof-guide] Certifies the displayed instruction shape or finite execution case used by the compiler simulation.
Proof: Combines `dispatcher_chunk_0`, `dispatcher_chunk_1`, `dispatcher_chunk_2` with the displayed local equations.
Role: Discharges a finite compiler obligation used by the tape-to-register simulation. -/
theorem dispatcher_checks : ∀ pc : ProgramCounter, DispatcherCheck pc := by
  intro pc
  obtain ⟨high, low, rfl⟩ := pcParts_surjective pc
  fin_cases high
  · exact dispatcher_chunk_0 low
  · exact dispatcher_chunk_1 low
  · exact dispatcher_chunk_2 low
  · exact dispatcher_chunk_3 low
  · exact dispatcher_chunk_4 low
  · exact dispatcher_chunk_5 low
  · exact dispatcher_chunk_6 low
  · exact dispatcher_chunk_7 low
  · exact dispatcher_chunk_8 low
  · exact dispatcher_chunk_9 low
  · exact dispatcher_chunk_10 low
  · exact dispatcher_chunk_11 low
  · exact dispatcher_chunk_12 low
  · exact dispatcher_chunk_13 low
  · exact dispatcher_chunk_14 low
  · exact dispatcher_chunk_15 low

end RiemannMachineVerification.Implementation
