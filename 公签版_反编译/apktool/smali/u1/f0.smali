.class public abstract Lu1/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[B

.field public static final c:Ljava/util/regex/Pattern;

.field public static d:Ljava/util/HashMap;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    new-array v1, v0, [B

    .line 45
    .line 46
    sput-object v1, Lu1/f0;->b:[B

    .line 47
    .line 48
    const-string v1, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt ](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)?))?"

    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 51
    .line 52
    .line 53
    const-string v1, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    .line 54
    .line 55
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 56
    .line 57
    .line 58
    const-string v1, "%([A-Fa-f0-9]{2})"

    .line 59
    .line 60
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 61
    .line 62
    .line 63
    const-string v1, "(?:.*\\.)?isml?(?:/(manifest(.*))?)?"

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sput-object v1, Lu1/f0;->c:Ljava/util/regex/Pattern;

    .line 71
    .line 72
    const/16 v1, 0x58

    .line 73
    .line 74
    new-array v1, v1, [Ljava/lang/String;

    .line 75
    .line 76
    const-string v3, "alb"

    .line 77
    .line 78
    aput-object v3, v1, v0

    .line 79
    .line 80
    const-string v3, "sq"

    .line 81
    .line 82
    const/4 v4, 0x1

    .line 83
    aput-object v3, v1, v4

    .line 84
    .line 85
    const-string v3, "arm"

    .line 86
    .line 87
    aput-object v3, v1, v2

    .line 88
    .line 89
    const-string v3, "hy"

    .line 90
    .line 91
    const/4 v5, 0x3

    .line 92
    aput-object v3, v1, v5

    .line 93
    .line 94
    const-string v3, "baq"

    .line 95
    .line 96
    const/4 v6, 0x4

    .line 97
    aput-object v3, v1, v6

    .line 98
    .line 99
    const-string v3, "eu"

    .line 100
    .line 101
    const/4 v7, 0x5

    .line 102
    aput-object v3, v1, v7

    .line 103
    .line 104
    const-string v3, "bur"

    .line 105
    .line 106
    const/4 v8, 0x6

    .line 107
    aput-object v3, v1, v8

    .line 108
    .line 109
    const-string v3, "my"

    .line 110
    .line 111
    const/4 v9, 0x7

    .line 112
    aput-object v3, v1, v9

    .line 113
    .line 114
    const-string v3, "tib"

    .line 115
    .line 116
    const/16 v10, 0x8

    .line 117
    .line 118
    aput-object v3, v1, v10

    .line 119
    .line 120
    const-string v3, "bo"

    .line 121
    .line 122
    const/16 v11, 0x9

    .line 123
    .line 124
    aput-object v3, v1, v11

    .line 125
    .line 126
    const-string v3, "chi"

    .line 127
    .line 128
    const/16 v12, 0xa

    .line 129
    .line 130
    aput-object v3, v1, v12

    .line 131
    .line 132
    const-string v3, "zh"

    .line 133
    .line 134
    const/16 v13, 0xb

    .line 135
    .line 136
    aput-object v3, v1, v13

    .line 137
    .line 138
    const-string v3, "cze"

    .line 139
    .line 140
    const/16 v14, 0xc

    .line 141
    .line 142
    aput-object v3, v1, v14

    .line 143
    .line 144
    const-string v3, "cs"

    .line 145
    .line 146
    const/16 v15, 0xd

    .line 147
    .line 148
    aput-object v3, v1, v15

    .line 149
    .line 150
    const-string v3, "dut"

    .line 151
    .line 152
    const/16 v16, 0xe

    .line 153
    .line 154
    aput-object v3, v1, v16

    .line 155
    .line 156
    const-string v3, "nl"

    .line 157
    .line 158
    const/16 v17, 0xf

    .line 159
    .line 160
    aput-object v3, v1, v17

    .line 161
    .line 162
    const-string v3, "ger"

    .line 163
    .line 164
    const/16 v15, 0x10

    .line 165
    .line 166
    aput-object v3, v1, v15

    .line 167
    .line 168
    const-string v3, "de"

    .line 169
    .line 170
    const/16 v18, 0x11

    .line 171
    .line 172
    aput-object v3, v1, v18

    .line 173
    .line 174
    const-string v3, "gre"

    .line 175
    .line 176
    const/16 v15, 0x12

    .line 177
    .line 178
    aput-object v3, v1, v15

    .line 179
    .line 180
    const-string v3, "el"

    .line 181
    .line 182
    const/16 v19, 0x13

    .line 183
    .line 184
    aput-object v3, v1, v19

    .line 185
    .line 186
    const-string v3, "fre"

    .line 187
    .line 188
    const/16 v19, 0x14

    .line 189
    .line 190
    aput-object v3, v1, v19

    .line 191
    .line 192
    const-string v3, "fr"

    .line 193
    .line 194
    const/16 v19, 0x15

    .line 195
    .line 196
    aput-object v3, v1, v19

    .line 197
    .line 198
    const-string v3, "geo"

    .line 199
    .line 200
    const/16 v19, 0x16

    .line 201
    .line 202
    aput-object v3, v1, v19

    .line 203
    .line 204
    const-string v3, "ka"

    .line 205
    .line 206
    const/16 v19, 0x17

    .line 207
    .line 208
    aput-object v3, v1, v19

    .line 209
    .line 210
    const-string v3, "ice"

    .line 211
    .line 212
    const/16 v19, 0x18

    .line 213
    .line 214
    aput-object v3, v1, v19

    .line 215
    .line 216
    const-string v3, "is"

    .line 217
    .line 218
    const/16 v19, 0x19

    .line 219
    .line 220
    aput-object v3, v1, v19

    .line 221
    .line 222
    const-string v3, "mac"

    .line 223
    .line 224
    const/16 v19, 0x1a

    .line 225
    .line 226
    aput-object v3, v1, v19

    .line 227
    .line 228
    const-string v3, "mk"

    .line 229
    .line 230
    const/16 v19, 0x1b

    .line 231
    .line 232
    aput-object v3, v1, v19

    .line 233
    .line 234
    const-string v3, "mao"

    .line 235
    .line 236
    const/16 v19, 0x1c

    .line 237
    .line 238
    aput-object v3, v1, v19

    .line 239
    .line 240
    const-string v3, "mi"

    .line 241
    .line 242
    const/16 v19, 0x1d

    .line 243
    .line 244
    aput-object v3, v1, v19

    .line 245
    .line 246
    const-string v3, "may"

    .line 247
    .line 248
    const/16 v19, 0x1e

    .line 249
    .line 250
    aput-object v3, v1, v19

    .line 251
    .line 252
    const-string v3, "ms"

    .line 253
    .line 254
    const/16 v19, 0x1f

    .line 255
    .line 256
    aput-object v3, v1, v19

    .line 257
    .line 258
    const-string v3, "per"

    .line 259
    .line 260
    const/16 v19, 0x20

    .line 261
    .line 262
    aput-object v3, v1, v19

    .line 263
    .line 264
    const-string v3, "fa"

    .line 265
    .line 266
    const/16 v19, 0x21

    .line 267
    .line 268
    aput-object v3, v1, v19

    .line 269
    .line 270
    const-string v3, "rum"

    .line 271
    .line 272
    const/16 v19, 0x22

    .line 273
    .line 274
    aput-object v3, v1, v19

    .line 275
    .line 276
    const-string v3, "ro"

    .line 277
    .line 278
    const/16 v19, 0x23

    .line 279
    .line 280
    aput-object v3, v1, v19

    .line 281
    .line 282
    const-string v3, "scc"

    .line 283
    .line 284
    const/16 v19, 0x24

    .line 285
    .line 286
    aput-object v3, v1, v19

    .line 287
    .line 288
    const-string v3, "hbs-srp"

    .line 289
    .line 290
    const/16 v19, 0x25

    .line 291
    .line 292
    aput-object v3, v1, v19

    .line 293
    .line 294
    const-string v19, "slo"

    .line 295
    .line 296
    const/16 v20, 0x26

    .line 297
    .line 298
    aput-object v19, v1, v20

    .line 299
    .line 300
    const-string v19, "sk"

    .line 301
    .line 302
    const/16 v20, 0x27

    .line 303
    .line 304
    aput-object v19, v1, v20

    .line 305
    .line 306
    const-string v19, "wel"

    .line 307
    .line 308
    const/16 v20, 0x28

    .line 309
    .line 310
    aput-object v19, v1, v20

    .line 311
    .line 312
    const-string v19, "cy"

    .line 313
    .line 314
    const/16 v20, 0x29

    .line 315
    .line 316
    aput-object v19, v1, v20

    .line 317
    .line 318
    const-string v19, "id"

    .line 319
    .line 320
    const/16 v20, 0x2a

    .line 321
    .line 322
    aput-object v19, v1, v20

    .line 323
    .line 324
    const-string v19, "ms-ind"

    .line 325
    .line 326
    const/16 v20, 0x2b

    .line 327
    .line 328
    aput-object v19, v1, v20

    .line 329
    .line 330
    const-string v20, "iw"

    .line 331
    .line 332
    const/16 v21, 0x2c

    .line 333
    .line 334
    aput-object v20, v1, v21

    .line 335
    .line 336
    const-string v20, "he"

    .line 337
    .line 338
    const/16 v21, 0x2d

    .line 339
    .line 340
    aput-object v20, v1, v21

    .line 341
    .line 342
    const-string v21, "heb"

    .line 343
    .line 344
    const/16 v22, 0x2e

    .line 345
    .line 346
    aput-object v21, v1, v22

    .line 347
    .line 348
    const/16 v21, 0x2f

    .line 349
    .line 350
    aput-object v20, v1, v21

    .line 351
    .line 352
    const-string v20, "ji"

    .line 353
    .line 354
    const/16 v21, 0x30

    .line 355
    .line 356
    aput-object v20, v1, v21

    .line 357
    .line 358
    const-string v20, "yi"

    .line 359
    .line 360
    const/16 v21, 0x31

    .line 361
    .line 362
    aput-object v20, v1, v21

    .line 363
    .line 364
    const-string v20, "arb"

    .line 365
    .line 366
    const/16 v21, 0x32

    .line 367
    .line 368
    aput-object v20, v1, v21

    .line 369
    .line 370
    const-string v20, "ar-arb"

    .line 371
    .line 372
    const/16 v21, 0x33

    .line 373
    .line 374
    aput-object v20, v1, v21

    .line 375
    .line 376
    const-string v20, "in"

    .line 377
    .line 378
    const/16 v21, 0x34

    .line 379
    .line 380
    aput-object v20, v1, v21

    .line 381
    .line 382
    const/16 v20, 0x35

    .line 383
    .line 384
    aput-object v19, v1, v20

    .line 385
    .line 386
    const-string v20, "ind"

    .line 387
    .line 388
    const/16 v21, 0x36

    .line 389
    .line 390
    aput-object v20, v1, v21

    .line 391
    .line 392
    const/16 v20, 0x37

    .line 393
    .line 394
    aput-object v19, v1, v20

    .line 395
    .line 396
    const-string v19, "nb"

    .line 397
    .line 398
    const/16 v20, 0x38

    .line 399
    .line 400
    aput-object v19, v1, v20

    .line 401
    .line 402
    const-string v19, "no-nob"

    .line 403
    .line 404
    const/16 v20, 0x39

    .line 405
    .line 406
    aput-object v19, v1, v20

    .line 407
    .line 408
    const-string v20, "nob"

    .line 409
    .line 410
    const/16 v21, 0x3a

    .line 411
    .line 412
    aput-object v20, v1, v21

    .line 413
    .line 414
    const/16 v20, 0x3b

    .line 415
    .line 416
    aput-object v19, v1, v20

    .line 417
    .line 418
    const-string v19, "nn"

    .line 419
    .line 420
    const/16 v20, 0x3c

    .line 421
    .line 422
    aput-object v19, v1, v20

    .line 423
    .line 424
    const-string v19, "no-nno"

    .line 425
    .line 426
    const/16 v20, 0x3d

    .line 427
    .line 428
    aput-object v19, v1, v20

    .line 429
    .line 430
    const-string v20, "nno"

    .line 431
    .line 432
    const/16 v21, 0x3e

    .line 433
    .line 434
    aput-object v20, v1, v21

    .line 435
    .line 436
    const/16 v20, 0x3f

    .line 437
    .line 438
    aput-object v19, v1, v20

    .line 439
    .line 440
    const-string v19, "tw"

    .line 441
    .line 442
    const/16 v20, 0x40

    .line 443
    .line 444
    aput-object v19, v1, v20

    .line 445
    .line 446
    const-string v19, "ak-twi"

    .line 447
    .line 448
    const/16 v20, 0x41

    .line 449
    .line 450
    aput-object v19, v1, v20

    .line 451
    .line 452
    const-string v20, "twi"

    .line 453
    .line 454
    const/16 v21, 0x42

    .line 455
    .line 456
    aput-object v20, v1, v21

    .line 457
    .line 458
    const/16 v20, 0x43

    .line 459
    .line 460
    aput-object v19, v1, v20

    .line 461
    .line 462
    const-string v19, "bs"

    .line 463
    .line 464
    const/16 v20, 0x44

    .line 465
    .line 466
    aput-object v19, v1, v20

    .line 467
    .line 468
    const-string v19, "hbs-bos"

    .line 469
    .line 470
    const/16 v20, 0x45

    .line 471
    .line 472
    aput-object v19, v1, v20

    .line 473
    .line 474
    const-string v20, "bos"

    .line 475
    .line 476
    const/16 v21, 0x46

    .line 477
    .line 478
    aput-object v20, v1, v21

    .line 479
    .line 480
    const/16 v20, 0x47

    .line 481
    .line 482
    aput-object v19, v1, v20

    .line 483
    .line 484
    const-string v19, "hr"

    .line 485
    .line 486
    const/16 v20, 0x48

    .line 487
    .line 488
    aput-object v19, v1, v20

    .line 489
    .line 490
    const-string v19, "hbs-hrv"

    .line 491
    .line 492
    const/16 v20, 0x49

    .line 493
    .line 494
    aput-object v19, v1, v20

    .line 495
    .line 496
    const-string v20, "hrv"

    .line 497
    .line 498
    const/16 v21, 0x4a

    .line 499
    .line 500
    aput-object v20, v1, v21

    .line 501
    .line 502
    const/16 v20, 0x4b

    .line 503
    .line 504
    aput-object v19, v1, v20

    .line 505
    .line 506
    const-string v19, "sr"

    .line 507
    .line 508
    const/16 v20, 0x4c

    .line 509
    .line 510
    aput-object v19, v1, v20

    .line 511
    .line 512
    const/16 v19, 0x4d

    .line 513
    .line 514
    aput-object v3, v1, v19

    .line 515
    .line 516
    const-string v19, "srp"

    .line 517
    .line 518
    const/16 v20, 0x4e

    .line 519
    .line 520
    aput-object v19, v1, v20

    .line 521
    .line 522
    const/16 v19, 0x4f

    .line 523
    .line 524
    aput-object v3, v1, v19

    .line 525
    .line 526
    const-string v3, "cmn"

    .line 527
    .line 528
    const/16 v19, 0x50

    .line 529
    .line 530
    aput-object v3, v1, v19

    .line 531
    .line 532
    const-string v3, "zh-cmn"

    .line 533
    .line 534
    const/16 v19, 0x51

    .line 535
    .line 536
    aput-object v3, v1, v19

    .line 537
    .line 538
    const-string v3, "hak"

    .line 539
    .line 540
    const/16 v19, 0x52

    .line 541
    .line 542
    aput-object v3, v1, v19

    .line 543
    .line 544
    const-string v3, "zh-hak"

    .line 545
    .line 546
    const/16 v19, 0x53

    .line 547
    .line 548
    aput-object v3, v1, v19

    .line 549
    .line 550
    const-string v3, "nan"

    .line 551
    .line 552
    const/16 v19, 0x54

    .line 553
    .line 554
    aput-object v3, v1, v19

    .line 555
    .line 556
    const-string v3, "zh-nan"

    .line 557
    .line 558
    const/16 v19, 0x55

    .line 559
    .line 560
    aput-object v3, v1, v19

    .line 561
    .line 562
    const-string v3, "hsn"

    .line 563
    .line 564
    const/16 v19, 0x56

    .line 565
    .line 566
    aput-object v3, v1, v19

    .line 567
    .line 568
    const-string v3, "zh-hsn"

    .line 569
    .line 570
    const/16 v19, 0x57

    .line 571
    .line 572
    aput-object v3, v1, v19

    .line 573
    .line 574
    sput-object v1, Lu1/f0;->e:[Ljava/lang/String;

    .line 575
    .line 576
    new-array v1, v15, [Ljava/lang/String;

    .line 577
    .line 578
    const-string v3, "i-lux"

    .line 579
    .line 580
    aput-object v3, v1, v0

    .line 581
    .line 582
    const-string v0, "lb"

    .line 583
    .line 584
    aput-object v0, v1, v4

    .line 585
    .line 586
    const-string v0, "i-hak"

    .line 587
    .line 588
    aput-object v0, v1, v2

    .line 589
    .line 590
    const-string v0, "zh-hak"

    .line 591
    .line 592
    aput-object v0, v1, v5

    .line 593
    .line 594
    const-string v2, "i-navajo"

    .line 595
    .line 596
    aput-object v2, v1, v6

    .line 597
    .line 598
    const-string v2, "nv"

    .line 599
    .line 600
    aput-object v2, v1, v7

    .line 601
    .line 602
    const-string v2, "no-bok"

    .line 603
    .line 604
    aput-object v2, v1, v8

    .line 605
    .line 606
    const-string v2, "no-nob"

    .line 607
    .line 608
    aput-object v2, v1, v9

    .line 609
    .line 610
    const-string v2, "no-nyn"

    .line 611
    .line 612
    aput-object v2, v1, v10

    .line 613
    .line 614
    const-string v2, "no-nno"

    .line 615
    .line 616
    aput-object v2, v1, v11

    .line 617
    .line 618
    const-string v2, "zh-guoyu"

    .line 619
    .line 620
    aput-object v2, v1, v12

    .line 621
    .line 622
    const-string v2, "zh-cmn"

    .line 623
    .line 624
    aput-object v2, v1, v13

    .line 625
    .line 626
    const-string v2, "zh-hakka"

    .line 627
    .line 628
    aput-object v2, v1, v14

    .line 629
    .line 630
    const/16 v2, 0xd

    .line 631
    .line 632
    aput-object v0, v1, v2

    .line 633
    .line 634
    const-string v0, "zh-min-nan"

    .line 635
    .line 636
    aput-object v0, v1, v16

    .line 637
    .line 638
    const-string v0, "zh-nan"

    .line 639
    .line 640
    aput-object v0, v1, v17

    .line 641
    .line 642
    const-string v0, "zh-xiang"

    .line 643
    .line 644
    const/16 v2, 0x10

    .line 645
    .line 646
    aput-object v0, v1, v2

    .line 647
    .line 648
    const-string v0, "zh-hsn"

    .line 649
    .line 650
    aput-object v0, v1, v18

    .line 651
    .line 652
    sput-object v1, Lu1/f0;->f:[Ljava/lang/String;

    .line 653
    .line 654
    const/16 v0, 0x100

    .line 655
    .line 656
    new-array v0, v0, [I

    .line 657
    .line 658
    fill-array-data v0, :array_0

    .line 659
    .line 660
    .line 661
    sput-object v0, Lu1/f0;->g:[I

    .line 662
    .line 663
    new-array v0, v2, [I

    .line 664
    .line 665
    fill-array-data v0, :array_1

    .line 666
    .line 667
    .line 668
    sput-object v0, Lu1/f0;->h:[I

    .line 669
    .line 670
    const/16 v0, 0x100

    .line 671
    .line 672
    new-array v0, v0, [I

    .line 673
    .line 674
    fill-array-data v0, :array_2

    .line 675
    .line 676
    .line 677
    sput-object v0, Lu1/f0;->i:[I

    .line 678
    .line 679
    return-void

    .line 680
    nop

    .line 681
    :array_0
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    :array_1
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
    .end array-data

    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    :array_2
    .array-data 4
        0x0
        0x7
        0xe
        0x9
        0x1c
        0x1b
        0x12
        0x15
        0x38
        0x3f
        0x36
        0x31
        0x24
        0x23
        0x2a
        0x2d
        0x70
        0x77
        0x7e
        0x79
        0x6c
        0x6b
        0x62
        0x65
        0x48
        0x4f
        0x46
        0x41
        0x54
        0x53
        0x5a
        0x5d
        0xe0
        0xe7
        0xee
        0xe9
        0xfc
        0xfb
        0xf2
        0xf5
        0xd8
        0xdf
        0xd6
        0xd1
        0xc4
        0xc3
        0xca
        0xcd
        0x90
        0x97
        0x9e
        0x99
        0x8c
        0x8b
        0x82
        0x85
        0xa8
        0xaf
        0xa6
        0xa1
        0xb4
        0xb3
        0xba
        0xbd
        0xc7
        0xc0
        0xc9
        0xce
        0xdb
        0xdc
        0xd5
        0xd2
        0xff
        0xf8
        0xf1
        0xf6
        0xe3
        0xe4
        0xed
        0xea
        0xb7
        0xb0
        0xb9
        0xbe
        0xab
        0xac
        0xa5
        0xa2
        0x8f
        0x88
        0x81
        0x86
        0x93
        0x94
        0x9d
        0x9a
        0x27
        0x20
        0x29
        0x2e
        0x3b
        0x3c
        0x35
        0x32
        0x1f
        0x18
        0x11
        0x16
        0x3
        0x4
        0xd
        0xa
        0x57
        0x50
        0x59
        0x5e
        0x4b
        0x4c
        0x45
        0x42
        0x6f
        0x68
        0x61
        0x66
        0x73
        0x74
        0x7d
        0x7a
        0x89
        0x8e
        0x87
        0x80
        0x95
        0x92
        0x9b
        0x9c
        0xb1
        0xb6
        0xbf
        0xb8
        0xad
        0xaa
        0xa3
        0xa4
        0xf9
        0xfe
        0xf7
        0xf0
        0xe5
        0xe2
        0xeb
        0xec
        0xc1
        0xc6
        0xcf
        0xc8
        0xdd
        0xda
        0xd3
        0xd4
        0x69
        0x6e
        0x67
        0x60
        0x75
        0x72
        0x7b
        0x7c
        0x51
        0x56
        0x5f
        0x58
        0x4d
        0x4a
        0x43
        0x44
        0x19
        0x1e
        0x17
        0x10
        0x5
        0x2
        0xb
        0xc
        0x21
        0x26
        0x2f
        0x28
        0x3d
        0x3a
        0x33
        0x34
        0x4e
        0x49
        0x40
        0x47
        0x52
        0x55
        0x5c
        0x5b
        0x76
        0x71
        0x78
        0x7f
        0x6a
        0x6d
        0x64
        0x63
        0x3e
        0x39
        0x30
        0x37
        0x22
        0x25
        0x2c
        0x2b
        0x6
        0x1
        0x8
        0xf
        0x1a
        0x1d
        0x14
        0x13
        0xae
        0xa9
        0xa0
        0xa7
        0xb2
        0xb5
        0xbc
        0xbb
        0x96
        0x91
        0x98
        0x9f
        0x8a
        0x8d
        0x84
        0x83
        0xde
        0xd9
        0xd0
        0xd7
        0xc2
        0xc5
        0xcc
        0xcb
        0xe6
        0xe1
        0xe8
        0xef
        0xfa
        0xfd
        0xf4
        0xf3
    .end array-data
.end method

.method public static A(Lu1/q;Lu1/q;Ljava/util/zip/Inflater;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p1, Lu1/q;->a:[B

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lu1/q;->c(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    if-nez p2, :cond_2

    .line 28
    .line 29
    new-instance p2, Ljava/util/zip/Inflater;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/util/zip/Inflater;-><init>()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lu1/q;->a:[B

    .line 35
    .line 36
    iget v2, p0, Lu1/q;->b:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {p2, v0, v2, p0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    :cond_3
    :goto_0
    :try_start_0
    iget-object v0, p1, Lu1/q;->a:[B

    .line 47
    .line 48
    array-length v2, v0

    .line 49
    sub-int/2addr v2, p0

    .line 50
    invoke-virtual {p2, v0, p0, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/2addr p0, v0

    .line 55
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lu1/q;->N(I)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    iget-object v0, p1, Lu1/q;->a:[B

    .line 85
    .line 86
    array-length v2, v0

    .line 87
    if-ne p0, v2, :cond_3

    .line 88
    .line 89
    array-length v0, v0

    .line 90
    mul-int/lit8 v0, v0, 0x2

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lu1/q;->c(I)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    :goto_1
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :goto_2
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :catch_0
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 105
    .line 106
    .line 107
    return v1
.end method

.method public static B(I)V
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static C(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/high16 v0, 0x50000000

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x16

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/high16 v0, 0x60000000

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const/high16 v0, 0x70000000

    .line 21
    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
.end method

.method public static D(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x10000000

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x15

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/high16 v0, 0x50000000

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x16

    .line 20
    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    .line 23
    const/high16 v0, 0x60000000

    .line 24
    .line 25
    if-eq p0, v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    const/high16 v0, 0x70000000

    .line 31
    .line 32
    if-ne p0, v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 38
    :goto_1
    return p0
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 12
    .line 13
    if-lt p0, v1, :cond_2

    .line 14
    .line 15
    const/16 p0, 0x1e

    .line 16
    .line 17
    if-ne v0, p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "moto g(20)"

    .line 22
    .line 23
    invoke-static {p0, v1}, Lqf/c;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    const-string v1, "rmx3231"

    .line 30
    .line 31
    invoke-static {p0, v1}, Lqf/c;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    :cond_0
    const/16 p0, 0x22

    .line 38
    .line 39
    if-ne v0, p0, :cond_1

    .line 40
    .line 41
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "sm-x200"

    .line 44
    .line 45
    invoke-static {p0, v0}, Lqf/c;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 55
    :goto_1
    return p0
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "uimode"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/UiModeManager;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public static G(J)J
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    const-wide/high16 v0, -0x8000000000000000L

    .line 11
    .line 12
    cmp-long v2, p0, v0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 18
    .line 19
    mul-long p0, p0, v0

    .line 20
    .line 21
    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/16 v0, 0x5f

    .line 6
    .line 7
    const/16 v1, 0x2d

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    const-string v1, "und"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p0, v0

    .line 29
    :cond_2
    :goto_0
    invoke-static {p0}, Lqf/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "-"

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    aget-object v0, v0, v1

    .line 42
    .line 43
    sget-object v2, Lu1/f0;->d:Ljava/util/HashMap;

    .line 44
    .line 45
    if-nez v2, :cond_6

    .line 46
    .line 47
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/util/HashMap;

    .line 52
    .line 53
    array-length v4, v2

    .line 54
    sget-object v5, Lu1/f0;->e:[Ljava/lang/String;

    .line 55
    .line 56
    array-length v6, v5

    .line 57
    add-int/2addr v4, v6

    .line 58
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 59
    .line 60
    .line 61
    array-length v4, v2

    .line 62
    const/4 v6, 0x0

    .line 63
    :goto_1
    if-ge v6, v4, :cond_4

    .line 64
    .line 65
    aget-object v7, v2, v6

    .line 66
    .line 67
    :try_start_0
    new-instance v8, Ljava/util/Locale;

    .line 68
    .line 69
    invoke-direct {v8, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_3

    .line 81
    .line 82
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v2, 0x0

    .line 89
    :goto_2
    array-length v4, v5

    .line 90
    if-ge v2, v4, :cond_5

    .line 91
    .line 92
    aget-object v4, v5, v2

    .line 93
    .line 94
    add-int/lit8 v6, v2, 0x1

    .line 95
    .line 96
    aget-object v6, v5, v6

    .line 97
    .line 98
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    sput-object v3, Lu1/f0;->d:Ljava/util/HashMap;

    .line 105
    .line 106
    :cond_6
    sget-object v2, Lu1/f0;->d:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    invoke-static {v2}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0, p0, v3}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    move-object v0, v2

    .line 125
    :cond_7
    const-string v2, "no"

    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_8

    .line 132
    .line 133
    const-string v2, "i"

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_8

    .line 140
    .line 141
    const-string v2, "zh"

    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    :cond_8
    :goto_3
    sget-object v0, Lu1/f0;->f:[Ljava/lang/String;

    .line 150
    .line 151
    array-length v2, v0

    .line 152
    if-ge v1, v2, :cond_a

    .line 153
    .line 154
    aget-object v2, v0, v1

    .line 155
    .line 156
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_9

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    add-int/lit8 v3, v1, 0x1

    .line 168
    .line 169
    aget-object v3, v0, v3

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    aget-object v0, v0, v1

    .line 175
    .line 176
    invoke-static {v0, p0, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    goto :goto_4

    .line 181
    :cond_9
    add-int/lit8 v1, v1, 0x2

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_a
    :goto_4
    return-object p0
.end method

.method public static I(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    if-gt p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {v0}, La9/o;->k(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static J(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static K(IJ)J
    .locals 7

    .line 1
    int-to-long v4, p0

    .line 2
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 3
    .line 4
    const-wide/32 v2, 0xf4240

    .line 5
    .line 6
    .line 7
    move-wide v0, p1

    .line 8
    invoke-static/range {v0 .. v6}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public static L([JJ)V
    .locals 13

    .line 1
    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 2
    .line 3
    const-wide/32 v8, 0xf4240

    .line 4
    .line 5
    .line 6
    const-wide/16 v10, 0x0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    cmp-long v1, p1, v8

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    rem-long v1, p1, v8

    .line 14
    .line 15
    cmp-long v3, v1, v10

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 20
    .line 21
    invoke-static {p1, p2, v8, v9, v1}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    :goto_0
    array-length v1, p0

    .line 26
    if-ge v0, v1, :cond_5

    .line 27
    .line 28
    aget-wide v1, p0, v0

    .line 29
    .line 30
    invoke-static {v1, v2, p1, p2, v7}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    aput-wide v1, p0, v0

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    cmp-long v1, p1, v8

    .line 40
    .line 41
    if-gez v1, :cond_1

    .line 42
    .line 43
    rem-long v1, v8, p1

    .line 44
    .line 45
    cmp-long v3, v1, v10

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 50
    .line 51
    invoke-static {v8, v9, p1, p2, v1}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    :goto_1
    array-length v1, p0

    .line 56
    if-ge v0, v1, :cond_5

    .line 57
    .line 58
    aget-wide v1, p0, v0

    .line 59
    .line 60
    invoke-static {v1, v2, p1, p2}, Ld/b;->j0(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    aput-wide v1, p0, v0

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v12, 0x0

    .line 70
    :goto_2
    array-length v0, p0

    .line 71
    if-ge v12, v0, :cond_5

    .line 72
    .line 73
    aget-wide v0, p0, v12

    .line 74
    .line 75
    cmp-long v2, v0, v10

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    cmp-long v2, p1, v0

    .line 81
    .line 82
    if-ltz v2, :cond_3

    .line 83
    .line 84
    rem-long v2, p1, v0

    .line 85
    .line 86
    cmp-long v4, v2, v10

    .line 87
    .line 88
    if-nez v4, :cond_3

    .line 89
    .line 90
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 91
    .line 92
    invoke-static {p1, p2, v0, v1, v2}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    invoke-static {v8, v9, v0, v1, v7}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    aput-wide v0, p0, v12

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    cmp-long v2, p1, v0

    .line 104
    .line 105
    if-gez v2, :cond_4

    .line 106
    .line 107
    rem-long v2, v0, p1

    .line 108
    .line 109
    cmp-long v4, v2, v10

    .line 110
    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 114
    .line 115
    invoke-static {v0, v1, p1, p2, v2}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    invoke-static {v8, v9, v0, v1}, Ld/b;->j0(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    aput-wide v0, p0, v12

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    move-wide v2, v8

    .line 127
    move-wide v4, p1

    .line 128
    move-object v6, v7

    .line 129
    invoke-static/range {v0 .. v6}, Lu1/f0;->N(JJJLjava/math/RoundingMode;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    aput-wide v0, p0, v12

    .line 134
    .line 135
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    return-void
.end method

.method public static M(JJJLjava/math/RoundingMode;)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-eqz v2, :cond_5

    .line 6
    .line 7
    cmp-long v2, p2, v0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    cmp-long v2, p4, p2

    .line 13
    .line 14
    if-ltz v2, :cond_1

    .line 15
    .line 16
    rem-long v2, p4, p2

    .line 17
    .line 18
    cmp-long v4, v2, v0

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 23
    .line 24
    invoke-static {p4, p5, p2, p3, v0}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    invoke-static {p0, p1, p2, p3, p6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    return-wide p0

    .line 33
    :cond_1
    cmp-long v2, p4, p2

    .line 34
    .line 35
    if-gez v2, :cond_2

    .line 36
    .line 37
    rem-long v2, p2, p4

    .line 38
    .line 39
    cmp-long v4, v2, v0

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    sget-object p6, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 44
    .line 45
    invoke-static {p2, p3, p4, p5, p6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    invoke-static {p0, p1, p2, p3}, Ld/b;->j0(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p0

    .line 53
    return-wide p0

    .line 54
    :cond_2
    cmp-long v2, p4, p0

    .line 55
    .line 56
    if-ltz v2, :cond_3

    .line 57
    .line 58
    rem-long v2, p4, p0

    .line 59
    .line 60
    cmp-long v4, v2, v0

    .line 61
    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 65
    .line 66
    invoke-static {p4, p5, p0, p1, v0}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    invoke-static {p2, p3, p0, p1, p6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 71
    .line 72
    .line 73
    move-result-wide p0

    .line 74
    return-wide p0

    .line 75
    :cond_3
    cmp-long v2, p4, p0

    .line 76
    .line 77
    if-gez v2, :cond_4

    .line 78
    .line 79
    rem-long v2, p0, p4

    .line 80
    .line 81
    cmp-long v4, v2, v0

    .line 82
    .line 83
    if-nez v4, :cond_4

    .line 84
    .line 85
    sget-object p6, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 86
    .line 87
    invoke-static {p0, p1, p4, p5, p6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 88
    .line 89
    .line 90
    move-result-wide p0

    .line 91
    invoke-static {p2, p3, p0, p1}, Ld/b;->j0(JJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    return-wide p0

    .line 96
    :cond_4
    invoke-static/range {p0 .. p6}, Lu1/f0;->N(JJJLjava/math/RoundingMode;)J

    .line 97
    .line 98
    .line 99
    move-result-wide p0

    .line 100
    return-wide p0

    .line 101
    :cond_5
    :goto_0
    return-wide v0
.end method

.method public static N(JJJLjava/math/RoundingMode;)J
    .locals 9

    .line 1
    invoke-static {p0, p1, p2, p3}, Ld/b;->j0(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/high16 v2, -0x8000000000000000L

    .line 6
    .line 7
    const-wide v4, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v6, v0, v4

    .line 13
    .line 14
    if-eqz v6, :cond_0

    .line 15
    .line 16
    cmp-long v6, v0, v2

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    invoke-static {v0, v1, p4, p5, p6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0

    .line 25
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    invoke-static {v0, v1, v6, v7}, Ld/b;->u(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    sget-object v6, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 38
    .line 39
    invoke-static {p2, p3, v0, v1, v6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 40
    .line 41
    .line 42
    move-result-wide p2

    .line 43
    invoke-static {p4, p5, v0, v1, v6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 44
    .line 45
    .line 46
    move-result-wide p4

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    invoke-static {v0, v1, v7, v8}, Ld/b;->u(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-static {p0, p1, v0, v1, v6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 60
    .line 61
    .line 62
    move-result-wide p0

    .line 63
    invoke-static {p4, p5, v0, v1, v6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 64
    .line 65
    .line 66
    move-result-wide p4

    .line 67
    invoke-static {p0, p1, p2, p3}, Ld/b;->j0(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    cmp-long v6, v0, v4

    .line 72
    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    cmp-long v6, v0, v2

    .line 76
    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    invoke-static {v0, v1, p4, p5, p6}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 80
    .line 81
    .line 82
    move-result-wide p0

    .line 83
    return-wide p0

    .line 84
    :cond_1
    long-to-double p2, p2

    .line 85
    long-to-double p4, p4

    .line 86
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 87
    .line 88
    .line 89
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    .line 90
    .line 91
    .line 92
    div-double/2addr p2, p4

    .line 93
    long-to-double p0, p0

    .line 94
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 95
    .line 96
    .line 97
    mul-double p0, p0, p2

    .line 98
    .line 99
    const-wide/high16 p2, 0x43e0000000000000L    # 9.223372036854776E18

    .line 100
    .line 101
    cmpl-double p4, p0, p2

    .line 102
    .line 103
    if-lez p4, :cond_2

    .line 104
    .line 105
    return-wide v4

    .line 106
    :cond_2
    const-wide/high16 p4, -0x3c20000000000000L    # -9.223372036854776E18

    .line 107
    .line 108
    cmpg-double v0, p0, p4

    .line 109
    .line 110
    if-gez v0, :cond_3

    .line 111
    .line 112
    return-wide v2

    .line 113
    :cond_3
    sget v0, Lw7/b;->a:I

    .line 114
    .line 115
    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->J(D)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_d

    .line 120
    .line 121
    sget-object v0, Lw7/a;->a:[I

    .line 122
    .line 123
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    aget v0, v0, v1

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    const-wide/16 v2, 0x1

    .line 131
    .line 132
    const-wide/16 v4, 0x0

    .line 133
    .line 134
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 135
    .line 136
    packed-switch v0, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    new-instance p0, Ljava/lang/AssertionError;

    .line 140
    .line 141
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    sub-double v4, p0, v2

    .line 150
    .line 151
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    cmpl-double v0, v4, v6

    .line 156
    .line 157
    if-nez v0, :cond_9

    .line 158
    .line 159
    :cond_4
    :goto_0
    :pswitch_1
    move-wide v2, p0

    .line 160
    goto :goto_3

    .line 161
    :pswitch_2
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    sub-double v4, p0, v2

    .line 166
    .line 167
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    cmpl-double v0, v4, v6

    .line 172
    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    add-double/2addr v2, p0

    .line 180
    goto :goto_3

    .line 181
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    goto :goto_3

    .line 186
    :pswitch_4
    invoke-static {p0, p1}, Lw7/b;->a(D)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_5

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_5
    double-to-long v2, p0

    .line 194
    cmpl-double v0, p0, v4

    .line 195
    .line 196
    if-lez v0, :cond_6

    .line 197
    .line 198
    const/4 v0, 0x1

    .line 199
    goto :goto_1

    .line 200
    :cond_6
    const/4 v0, -0x1

    .line 201
    :goto_1
    int-to-long v4, v0

    .line 202
    add-long/2addr v2, v4

    .line 203
    long-to-double v2, v2

    .line 204
    goto :goto_3

    .line 205
    :pswitch_5
    cmpg-double v0, p0, v4

    .line 206
    .line 207
    if-lez v0, :cond_4

    .line 208
    .line 209
    invoke-static {p0, p1}, Lw7/b;->a(D)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_7
    double-to-long v4, p0

    .line 217
    add-long/2addr v4, v2

    .line 218
    :goto_2
    long-to-double v2, v4

    .line 219
    goto :goto_3

    .line 220
    :pswitch_6
    cmpl-double v0, p0, v4

    .line 221
    .line 222
    if-gez v0, :cond_4

    .line 223
    .line 224
    invoke-static {p0, p1}, Lw7/b;->a(D)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_8
    double-to-long v4, p0

    .line 232
    sub-long/2addr v4, v2

    .line 233
    goto :goto_2

    .line 234
    :pswitch_7
    invoke-static {p0, p1}, Lw7/b;->a(D)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-static {v0}, Lif/a;->l(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_9
    :goto_3
    sub-double/2addr p4, v2

    .line 243
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 244
    .line 245
    const/4 v0, 0x0

    .line 246
    cmpg-double v6, p4, v4

    .line 247
    .line 248
    if-gez v6, :cond_a

    .line 249
    .line 250
    const/4 p4, 0x1

    .line 251
    goto :goto_4

    .line 252
    :cond_a
    const/4 p4, 0x0

    .line 253
    :goto_4
    cmpg-double p5, v2, p2

    .line 254
    .line 255
    if-gez p5, :cond_b

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_b
    const/4 v1, 0x0

    .line 259
    :goto_5
    and-int p2, p4, v1

    .line 260
    .line 261
    if-eqz p2, :cond_c

    .line 262
    .line 263
    double-to-long p0, v2

    .line 264
    return-wide p0

    .line 265
    :cond_c
    new-instance p2, Ljava/lang/ArithmeticException;

    .line 266
    .line 267
    new-instance p3, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string p4, "rounded value is out of range for input "

    .line 270
    .line 271
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string p0, " and rounding mode "

    .line 278
    .line 279
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-direct {p2, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw p2

    .line 293
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 294
    .line 295
    const-string p1, "input is infinite or NaN"

    .line 296
    .line 297
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :goto_6
    throw p0

    .line 302
    :goto_7
    goto :goto_6

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static O(Lr1/m0;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    check-cast p0, Ly1/x;

    .line 5
    .line 6
    invoke-virtual {p0}, Ly1/x;->I()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ly1/x;->J()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ly1/x;->J()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Ly1/x;->K()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Ly1/x;->K()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eq p0, v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :cond_1
    :goto_0
    return v0
.end method

.method public static P(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static Q(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    shr-int/lit8 v1, p0, 0x18

    .line 4
    .line 5
    int-to-byte v1, v1

    .line 6
    shr-int/lit8 v2, p0, 0x10

    .line 7
    .line 8
    int-to-byte v2, v2

    .line 9
    shr-int/lit8 v3, p0, 0x8

    .line 10
    .line 11
    int-to-byte v3, v3

    .line 12
    int-to-byte p0, p0

    .line 13
    const/4 v4, 0x4

    .line 14
    new-array v4, v4, [B

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-byte v1, v4, v5

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aput-byte v2, v4, v1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    aput-byte v3, v4, v1

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    aput-byte p0, v4, v1

    .line 27
    .line 28
    sget-object p0, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-direct {v0, v4, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static R(J)J
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    const-wide/high16 v0, -0x8000000000000000L

    .line 11
    .line 12
    cmp-long v2, p0, v0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 18
    .line 19
    div-long/2addr p0, v0

    .line 20
    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static a([JJZ)I
    .locals 5

    .line 1
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    xor-int/lit8 p0, v0, -0x1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 11
    .line 12
    array-length v2, p0

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    aget-wide v2, p0, v1

    .line 16
    .line 17
    cmp-long v4, v2, p1

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-eqz p3, :cond_2

    .line 24
    .line 25
    move p0, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move p0, v1

    .line 28
    :goto_1
    return p0
.end method

.method public static b(Lsb/e;J)I
    .locals 7

    .line 1
    iget v0, p0, Lsb/e;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-gt v2, v0, :cond_1

    .line 8
    .line 9
    add-int v3, v2, v0

    .line 10
    .line 11
    ushr-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Lsb/e;->c(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    cmp-long v6, v4, p1

    .line 18
    .line 19
    if-gez v6, :cond_0

    .line 20
    .line 21
    add-int/lit8 v2, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 25
    .line 26
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 29
    .line 30
    iget v3, p0, Lsb/e;->b:I

    .line 31
    .line 32
    if-ge v2, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lsb/e;->c(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    cmp-long p0, v3, p1

    .line 39
    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 p0, -0x1

    .line 45
    if-ne v0, p0, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v1, v0

    .line 49
    :goto_1
    return v1
.end method

.method public static c([IIZZ)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    neg-int p0, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 12
    .line 13
    if-ltz v1, :cond_1

    .line 14
    .line 15
    aget v2, p0, v1

    .line 16
    .line 17
    if-ne v2, p1, :cond_1

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz p2, :cond_2

    .line 22
    .line 23
    move p0, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move p0, v1

    .line 26
    :goto_1
    if-eqz p3, :cond_3

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :cond_3
    return p0
.end method

.method public static d([JJZ)I
    .locals 5

    .line 1
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    neg-int p0, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 12
    .line 13
    if-ltz v1, :cond_1

    .line 14
    .line 15
    aget-wide v2, p0, v1

    .line 16
    .line 17
    cmp-long v4, v2, p1

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move p0, v0

    .line 24
    :goto_1
    if-eqz p3, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    :cond_2
    return p0
.end method

.method public static e(II)I
    .locals 0

    .line 1
    add-int/2addr p0, p1

    .line 2
    add-int/lit8 p0, p0, -0x1

    .line 3
    .line 4
    div-int/2addr p0, p1

    .line 5
    return p0
.end method

.method public static f(FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static g(III)I
    .locals 0

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static h(JJJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static i(ILandroid/util/SparseArray;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static j(III[B)I
    .locals 2

    .line 1
    :goto_0
    if-ge p0, p1, :cond_0

    .line 2
    .line 3
    shl-int/lit8 v0, p2, 0x8

    .line 4
    .line 5
    ushr-int/lit8 p2, p2, 0x18

    .line 6
    .line 7
    aget-byte v1, p3, p0

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    xor-int/2addr p2, v1

    .line 12
    and-int/lit16 p2, p2, 0xff

    .line 13
    .line 14
    sget-object v1, Lu1/f0;->g:[I

    .line 15
    .line 16
    aget p2, v1, p2

    .line 17
    .line 18
    xor-int/2addr p2, v0

    .line 19
    add-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return p2
.end method

.method public static k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public static l(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const p0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    return p0

    .line 8
    :pswitch_1
    const/16 p0, 0x22

    .line 9
    .line 10
    return p0

    .line 11
    :pswitch_2
    const/16 p0, 0x1f

    .line 12
    .line 13
    return p0

    .line 14
    :pswitch_3
    const/16 p0, 0x1e

    .line 15
    .line 16
    return p0

    .line 17
    :pswitch_4
    const/16 p0, 0x19

    .line 18
    .line 19
    return p0

    .line 20
    :pswitch_5
    const/16 p0, 0x1c

    .line 21
    .line 22
    return p0

    .line 23
    :pswitch_6
    const/16 p0, 0x17

    .line 24
    .line 25
    return p0

    .line 26
    :pswitch_7
    const/16 p0, 0x15

    .line 27
    .line 28
    return p0

    .line 29
    :pswitch_8
    const/4 p0, 0x3

    .line 30
    return p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static m(III)Landroid/media/AudioFormat;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static n(I)I
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/16 v1, 0x18fc

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    if-eq p0, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq p0, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x18

    .line 15
    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    packed-switch p0, :pswitch_data_1

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :pswitch_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    if-lt p0, v2, :cond_0

    .line 28
    .line 29
    const p0, 0xc0b58fc

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :cond_0
    return v3

    .line 34
    :pswitch_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    if-lt p0, v2, :cond_1

    .line 37
    .line 38
    const p0, 0x1cbd81c

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :cond_1
    return v3

    .line 43
    :pswitch_2
    const p0, 0xb58fc

    .line 44
    .line 45
    .line 46
    return p0

    .line 47
    :pswitch_3
    return v1

    .line 48
    :pswitch_4
    const/16 p0, 0x4fc

    .line 49
    .line 50
    return p0

    .line 51
    :pswitch_5
    const/16 p0, 0xfc

    .line 52
    .line 53
    return p0

    .line 54
    :pswitch_6
    const/16 p0, 0xdc

    .line 55
    .line 56
    return p0

    .line 57
    :pswitch_7
    const/16 p0, 0xcc

    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_8
    const/16 p0, 0x1c

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_9
    const/16 p0, 0xc

    .line 64
    .line 65
    return p0

    .line 66
    :pswitch_a
    const/4 p0, 0x4

    .line 67
    return p0

    .line 68
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    if-lt p0, v2, :cond_3

    .line 71
    .line 72
    const p0, 0x3fffffc

    .line 73
    .line 74
    .line 75
    return p0

    .line 76
    :cond_3
    return v3

    .line 77
    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    if-lt p0, v2, :cond_5

    .line 80
    .line 81
    const p0, 0xc3b58fc

    .line 82
    .line 83
    .line 84
    return p0

    .line 85
    :cond_5
    return v3

    .line 86
    :cond_6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    if-lt p0, v2, :cond_7

    .line 89
    .line 90
    const p0, 0xb40fc

    .line 91
    .line 92
    .line 93
    return p0

    .line 94
    :cond_7
    return v1

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(I)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    if-eq p0, v1, :cond_3

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    if-eq p0, v2, :cond_2

    .line 9
    .line 10
    const/16 v3, 0x15

    .line 11
    .line 12
    if-eq p0, v3, :cond_1

    .line 13
    .line 14
    const/16 v3, 0x16

    .line 15
    .line 16
    if-eq p0, v3, :cond_2

    .line 17
    .line 18
    const/high16 v3, 0x10000000

    .line 19
    .line 20
    if-eq p0, v3, :cond_4

    .line 21
    .line 22
    const/high16 v0, 0x50000000

    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    const/high16 v0, 0x60000000

    .line 27
    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    const/high16 v0, 0x70000000

    .line 31
    .line 32
    if-ne p0, v0, :cond_0

    .line 33
    .line 34
    const/16 p0, 0x8

    .line 35
    .line 36
    return p0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    return v1

    .line 44
    :cond_2
    return v2

    .line 45
    :cond_3
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_4
    return v0
.end method

.method public static p(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 6

    .line 1
    const-string v0, "display"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "window"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/WindowManager;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_5

    .line 40
    .line 41
    invoke-static {p0}, Lu1/f0;->F(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v3, 0x1c

    .line 50
    .line 51
    if-ge v2, v3, :cond_2

    .line 52
    .line 53
    const-string v2, "sys.display-size"

    .line 54
    .line 55
    invoke-static {v2}, Lu1/f0;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v2, "vendor.display-size"

    .line 61
    .line 62
    invoke-static {v2}, Lu1/f0;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "x"

    .line 77
    .line 78
    const/4 v5, -0x1

    .line 79
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    array-length v4, v3

    .line 84
    const/4 v5, 0x2

    .line 85
    if-ne v4, v5, :cond_3

    .line 86
    .line 87
    aget-object v1, v3, v1

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v4, 0x1

    .line 94
    aget-object v3, v3, v4

    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-lez v1, :cond_3

    .line 101
    .line 102
    if-lez v3, :cond_3

    .line 103
    .line 104
    new-instance v4, Landroid/graphics/Point;

    .line 105
    .line 106
    invoke-direct {v4, v1, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v3, "Invalid display size: "

    .line 113
    .line 114
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Lu1/a;->f(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    const-string v1, "Sony"

    .line 128
    .line 129
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 138
    .line 139
    const-string v2, "BRAVIA"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const-string v1, "com.sony.dtv.hardware.panel.qfhd"

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    new-instance v4, Landroid/graphics/Point;

    .line 160
    .line 161
    const/16 p0, 0xf00

    .line 162
    .line 163
    const/16 v0, 0x870

    .line 164
    .line 165
    invoke-direct {v4, p0, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    new-instance v4, Landroid/graphics/Point;

    .line 170
    .line 171
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lr8/a;->e(Landroid/view/Display;)Landroid/view/Display$Mode;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Lr8/a;->c(Landroid/view/Display$Mode;)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iput v0, v4, Landroid/graphics/Point;->x:I

    .line 183
    .line 184
    invoke-static {p0}, Lr8/a;->t(Landroid/view/Display$Mode;)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    iput p0, v4, Landroid/graphics/Point;->y:I

    .line 189
    .line 190
    :goto_2
    return-object v4
.end method

.method public static q(I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    packed-switch p0, :pswitch_data_1

    .line 22
    .line 23
    .line 24
    const/16 p0, 0x1776

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_0
    const/16 p0, 0x1772

    .line 28
    .line 29
    return p0

    .line 30
    :cond_0
    :pswitch_1
    const/16 p0, 0x1773

    .line 31
    .line 32
    return p0

    .line 33
    :cond_1
    :pswitch_2
    const/16 p0, 0x1774

    .line 34
    .line 35
    return p0

    .line 36
    :cond_2
    :pswitch_3
    const/16 p0, 0x1775

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, -0x1

    .line 6
    const-string v2, "_"

    .line 7
    .line 8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    add-int/lit8 v3, v1, -0x1

    .line 18
    .line 19
    aget-object v3, p0, v3

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    if-lt v1, v4, :cond_2

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    aget-object p0, p0, v1

    .line 26
    .line 27
    const-string v1, "neg"

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    neg-int v0, v0

    .line 48
    :catch_0
    :cond_3
    return v0
.end method

.method public static s(JF)J
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    long-to-double p0, p0

    .line 9
    float-to-double v0, p2

    .line 10
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 14
    .line 15
    .line 16
    mul-double p0, p0, v0

    .line 17
    .line 18
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    return-wide p0
.end method

.method public static t(ILjava/nio/ByteOrder;)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p0, v0, :cond_6

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x18

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const/16 p0, 0x16

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/high16 p0, 0x60000000

    .line 31
    .line 32
    :goto_0
    return p0

    .line 33
    :cond_2
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    const/16 p0, 0x15

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/high16 p0, 0x50000000

    .line 45
    .line 46
    :goto_1
    return p0

    .line 47
    :cond_4
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_5

    .line 54
    .line 55
    const/4 p0, 0x2

    .line 56
    goto :goto_2

    .line 57
    :cond_5
    const/high16 p0, 0x10000000

    .line 58
    .line 59
    :goto_2
    return p0

    .line 60
    :cond_6
    const/4 p0, 0x3

    .line 61
    return p0
.end method

.method public static u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    cmp-long v9, p2, v5

    .line 15
    .line 16
    if-nez v9, :cond_0

    .line 17
    .line 18
    move-wide v5, v7

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-wide/from16 v5, p2

    .line 21
    .line 22
    :goto_0
    cmp-long v9, v5, v7

    .line 23
    .line 24
    if-gez v9, :cond_1

    .line 25
    .line 26
    const-string v9, "-"

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string v9, ""

    .line 30
    .line 31
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    const-wide/16 v10, 0x1f4

    .line 36
    .line 37
    add-long/2addr v5, v10

    .line 38
    const-wide/16 v10, 0x3e8

    .line 39
    .line 40
    div-long/2addr v5, v10

    .line 41
    const-wide/16 v10, 0x3c

    .line 42
    .line 43
    rem-long v12, v5, v10

    .line 44
    .line 45
    div-long v14, v5, v10

    .line 46
    .line 47
    rem-long/2addr v14, v10

    .line 48
    const-wide/16 v10, 0xe10

    .line 49
    .line 50
    div-long/2addr v5, v10

    .line 51
    move-object/from16 v10, p0

    .line 52
    .line 53
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 54
    .line 55
    .line 56
    cmp-long v10, v5, v7

    .line 57
    .line 58
    if-lez v10, :cond_2

    .line 59
    .line 60
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const/4 v8, 0x4

    .line 73
    new-array v8, v8, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v9, v8, v4

    .line 76
    .line 77
    aput-object v5, v8, v3

    .line 78
    .line 79
    aput-object v6, v8, v2

    .line 80
    .line 81
    aput-object v7, v8, v1

    .line 82
    .line 83
    const-string v1, "%s%d:%02d:%02d"

    .line 84
    .line 85
    invoke-virtual {v0, v1, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v9, v1, v4

    .line 105
    .line 106
    aput-object v5, v1, v3

    .line 107
    .line 108
    aput-object v6, v1, v2

    .line 109
    .line 110
    const-string v2, "%s%02d:%02d"

    .line 111
    .line 112
    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_2
    return-object v0
.end method

.method public static v()[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v4, 0x18

    .line 14
    .line 15
    if-lt v3, v4, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Ljg/w;->e(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lq/t;->j(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, -0x1

    .line 26
    const-string v4, ","

    .line 27
    .line 28
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-static {v2}, Lm0/o;->i(Ljava/util/Locale;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-array v3, v1, [Ljava/lang/String;

    .line 40
    .line 41
    aput-object v2, v3, v0

    .line 42
    .line 43
    move-object v2, v3

    .line 44
    :goto_0
    array-length v3, v2

    .line 45
    if-ge v0, v3, :cond_1

    .line 46
    .line 47
    aget-object v3, v2, v0

    .line 48
    .line 49
    invoke-static {v3}, Lu1/f0;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aput-object v3, v2, v0

    .line 54
    .line 55
    add-int/2addr v0, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-object v2
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 4
    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "get"

    .line 10
    .line 11
    new-array v4, v1, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v5, Ljava/lang/String;

    .line 14
    .line 15
    aput-object v5, v4, v0

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p0, v1, v0

    .line 24
    .line 25
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "Failed to read system property "

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static x(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2710

    .line 5
    .line 6
    if-lt p0, v0, :cond_0

    .line 7
    .line 8
    const-string v0, "custom ("

    .line 9
    .line 10
    const-string v1, ")"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "?"

    .line 18
    .line 19
    :goto_0
    return-object p0

    .line 20
    :pswitch_0
    const-string p0, "camera motion"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    const-string p0, "metadata"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_2
    const-string p0, "image"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_3
    const-string p0, "text"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_4
    const-string p0, "video"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_5
    const-string p0, "audio"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_6
    const-string p0, "default"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_7
    const-string p0, "unknown"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_8
    const-string p0, "none"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static y(Lr1/m0;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    move-object v1, p0

    .line 6
    check-cast v1, Ly1/x;

    .line 7
    .line 8
    invoke-virtual {v1}, Ly1/x;->J()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    move-object v5, p0

    .line 17
    check-cast v5, La/b;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, La/b;->i(I)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ly1/x;->S()V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x4

    .line 31
    if-ne v2, v1, :cond_2

    .line 32
    .line 33
    move-object v2, p0

    .line 34
    check-cast v2, La/b;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, La/b;->i(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    check-cast v1, Ly1/x;

    .line 44
    .line 45
    invoke-virtual {v1}, Ly1/x;->A()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1, v4, v5, v0}, La/b;->p(IJZ)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    check-cast p0, La/b;

    .line 59
    .line 60
    invoke-virtual {p0, v3}, La/b;->i(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    check-cast p0, Ly1/x;

    .line 67
    .line 68
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v3, v3}, Ly1/x;->e0(IZ)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v3, v0

    .line 76
    :goto_2
    return v3
.end method

.method public static z(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x3

    .line 7
    if-nez p1, :cond_b

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string v6, "rtsp"

    .line 16
    .line 17
    invoke-static {v6, p1}, Lqf/c;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    const-string v6, "rtspt"

    .line 24
    .line 25
    invoke-static {v6, p1}, Lqf/c;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 v1, 0x3

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    :cond_2
    const/4 v1, 0x4

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_3
    const/16 v6, 0x2e

    .line 44
    .line 45
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ltz v6, :cond_8

    .line 50
    .line 51
    add-int/2addr v6, v1

    .line 52
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lqf/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    sparse-switch v6, :sswitch_data_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :sswitch_0
    const-string v6, "m3u8"

    .line 72
    .line 73
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const/4 v0, 0x3

    .line 81
    goto :goto_0

    .line 82
    :sswitch_1
    const-string v5, "isml"

    .line 83
    .line 84
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const/4 v0, 0x2

    .line 92
    goto :goto_0

    .line 93
    :sswitch_2
    const-string v5, "mpd"

    .line 94
    .line 95
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    const/4 v0, 0x1

    .line 103
    goto :goto_0

    .line 104
    :sswitch_3
    const-string v5, "ism"

    .line 105
    .line 106
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_7

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    const/4 v0, 0x0

    .line 114
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x4

    .line 118
    goto :goto_1

    .line 119
    :pswitch_0
    const/4 p1, 0x2

    .line 120
    goto :goto_1

    .line 121
    :pswitch_1
    const/4 p1, 0x0

    .line 122
    goto :goto_1

    .line 123
    :pswitch_2
    const/4 p1, 0x1

    .line 124
    :goto_1
    if-eq p1, v4, :cond_8

    .line 125
    .line 126
    move v1, p1

    .line 127
    goto :goto_2

    .line 128
    :cond_8
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    sget-object p1, Lu1/f0;->c:Ljava/util/regex/Pattern;

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_2

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    if-eqz p0, :cond_a

    .line 152
    .line 153
    const-string p1, "format=mpd-time-csf"

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    goto :goto_2

    .line 163
    :cond_9
    const-string p1, "format=m3u8-aapl"

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_a

    .line 170
    .line 171
    const/4 v1, 0x2

    .line 172
    :cond_a
    :goto_2
    return v1

    .line 173
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    sparse-switch p0, :sswitch_data_1

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :sswitch_4
    const-string p0, "application/x-rtsp"

    .line 182
    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-nez p0, :cond_c

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_c
    const/4 v0, 0x3

    .line 191
    goto :goto_3

    .line 192
    :sswitch_5
    const-string p0, "application/dash+xml"

    .line 193
    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-nez p0, :cond_d

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_d
    const/4 v0, 0x2

    .line 202
    goto :goto_3

    .line 203
    :sswitch_6
    const-string p0, "application/vnd.ms-sstr+xml"

    .line 204
    .line 205
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    if-nez p0, :cond_e

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_e
    const/4 v0, 0x1

    .line 213
    goto :goto_3

    .line 214
    :sswitch_7
    const-string p0, "application/x-mpegURL"

    .line 215
    .line 216
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-nez p0, :cond_f

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_f
    const/4 v0, 0x0

    .line 224
    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 225
    .line 226
    .line 227
    return v4

    .line 228
    :pswitch_3
    return v5

    .line 229
    :pswitch_4
    return v3

    .line 230
    :pswitch_5
    return v1

    .line 231
    :pswitch_6
    return v2

    .line 232
    nop

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x19883 -> :sswitch_3
        0x1a721 -> :sswitch_2
        0x317849 -> :sswitch_1
        0x325a49 -> :sswitch_0
    .end sparse-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :sswitch_data_1
    .sparse-switch
        -0x3a5c4caa -> :sswitch_7
        -0x957ced0 -> :sswitch_6
        0x3d3887d -> :sswitch_5
        0x44d481f3 -> :sswitch_4
    .end sparse-switch

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
