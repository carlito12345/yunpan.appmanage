.class public final enum Lj8/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/HashMap;

.field public static final synthetic e:[Lj8/c;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Lj8/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    filled-new-array {v1, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-array v4, v1, [Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "Cp437"

    .line 12
    .line 13
    invoke-direct {v0, v5, v1, v3, v4}, Lj8/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lj8/c;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x3

    .line 20
    filled-new-array {v4, v5}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    new-array v7, v4, [Ljava/lang/String;

    .line 25
    .line 26
    const-string v8, "ISO-8859-1"

    .line 27
    .line 28
    aput-object v8, v7, v1

    .line 29
    .line 30
    const-string v8, "ISO8859_1"

    .line 31
    .line 32
    invoke-direct {v3, v8, v4, v6, v7}, Lj8/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v6, Lj8/c;

    .line 36
    .line 37
    new-array v7, v4, [Ljava/lang/String;

    .line 38
    .line 39
    const-string v8, "ISO-8859-2"

    .line 40
    .line 41
    aput-object v8, v7, v1

    .line 42
    .line 43
    const-string v8, "ISO8859_2"

    .line 44
    .line 45
    const/4 v9, 0x4

    .line 46
    invoke-direct {v6, v8, v2, v9, v7}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lj8/c;

    .line 50
    .line 51
    new-array v8, v4, [Ljava/lang/String;

    .line 52
    .line 53
    const-string v10, "ISO-8859-3"

    .line 54
    .line 55
    aput-object v10, v8, v1

    .line 56
    .line 57
    const-string v10, "ISO8859_3"

    .line 58
    .line 59
    const/4 v11, 0x5

    .line 60
    invoke-direct {v7, v10, v5, v11, v8}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Lj8/c;

    .line 64
    .line 65
    new-array v10, v4, [Ljava/lang/String;

    .line 66
    .line 67
    const-string v12, "ISO-8859-4"

    .line 68
    .line 69
    aput-object v12, v10, v1

    .line 70
    .line 71
    const-string v12, "ISO8859_4"

    .line 72
    .line 73
    const/4 v13, 0x6

    .line 74
    invoke-direct {v8, v12, v9, v13, v10}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v10, Lj8/c;

    .line 78
    .line 79
    new-array v12, v4, [Ljava/lang/String;

    .line 80
    .line 81
    const-string v14, "ISO-8859-5"

    .line 82
    .line 83
    aput-object v14, v12, v1

    .line 84
    .line 85
    const-string v14, "ISO8859_5"

    .line 86
    .line 87
    const/4 v15, 0x7

    .line 88
    invoke-direct {v10, v14, v11, v15, v12}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v12, Lj8/c;

    .line 92
    .line 93
    new-array v14, v4, [Ljava/lang/String;

    .line 94
    .line 95
    const-string v16, "ISO-8859-6"

    .line 96
    .line 97
    aput-object v16, v14, v1

    .line 98
    .line 99
    const-string v11, "ISO8859_6"

    .line 100
    .line 101
    const/16 v9, 0x8

    .line 102
    .line 103
    invoke-direct {v12, v11, v13, v9, v14}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v11, Lj8/c;

    .line 107
    .line 108
    new-array v14, v4, [Ljava/lang/String;

    .line 109
    .line 110
    const-string v17, "ISO-8859-7"

    .line 111
    .line 112
    aput-object v17, v14, v1

    .line 113
    .line 114
    const-string v13, "ISO8859_7"

    .line 115
    .line 116
    const/16 v5, 0x9

    .line 117
    .line 118
    invoke-direct {v11, v13, v15, v5, v14}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v13, Lj8/c;

    .line 122
    .line 123
    new-array v14, v4, [Ljava/lang/String;

    .line 124
    .line 125
    const-string v18, "ISO-8859-8"

    .line 126
    .line 127
    aput-object v18, v14, v1

    .line 128
    .line 129
    const-string v15, "ISO8859_8"

    .line 130
    .line 131
    const/16 v2, 0xa

    .line 132
    .line 133
    invoke-direct {v13, v15, v9, v2, v14}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v14, Lj8/c;

    .line 137
    .line 138
    new-array v15, v4, [Ljava/lang/String;

    .line 139
    .line 140
    const-string v20, "ISO-8859-9"

    .line 141
    .line 142
    aput-object v20, v15, v1

    .line 143
    .line 144
    const-string v9, "ISO8859_9"

    .line 145
    .line 146
    const/16 v2, 0xb

    .line 147
    .line 148
    invoke-direct {v14, v9, v5, v2, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v9, Lj8/c;

    .line 152
    .line 153
    new-array v15, v4, [Ljava/lang/String;

    .line 154
    .line 155
    const-string v21, "ISO-8859-10"

    .line 156
    .line 157
    aput-object v21, v15, v1

    .line 158
    .line 159
    const-string v5, "ISO8859_10"

    .line 160
    .line 161
    const/16 v2, 0xc

    .line 162
    .line 163
    const/16 v1, 0xa

    .line 164
    .line 165
    invoke-direct {v9, v5, v1, v2, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lj8/c;

    .line 169
    .line 170
    new-array v5, v4, [Ljava/lang/String;

    .line 171
    .line 172
    const-string v15, "ISO-8859-11"

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    aput-object v15, v5, v2

    .line 176
    .line 177
    const-string v15, "ISO8859_11"

    .line 178
    .line 179
    const/16 v2, 0xd

    .line 180
    .line 181
    const/16 v4, 0xb

    .line 182
    .line 183
    invoke-direct {v1, v15, v4, v2, v5}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v4, Lj8/c;

    .line 187
    .line 188
    const/4 v5, 0x1

    .line 189
    new-array v15, v5, [Ljava/lang/String;

    .line 190
    .line 191
    const-string v23, "ISO-8859-13"

    .line 192
    .line 193
    const/4 v2, 0x0

    .line 194
    aput-object v23, v15, v2

    .line 195
    .line 196
    const-string v2, "ISO8859_13"

    .line 197
    .line 198
    const/16 v5, 0xf

    .line 199
    .line 200
    move-object/from16 v24, v1

    .line 201
    .line 202
    const/16 v1, 0xc

    .line 203
    .line 204
    invoke-direct {v4, v2, v1, v5, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Lj8/c;

    .line 208
    .line 209
    const/4 v2, 0x1

    .line 210
    new-array v15, v2, [Ljava/lang/String;

    .line 211
    .line 212
    const-string v23, "ISO-8859-14"

    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    aput-object v23, v15, v5

    .line 216
    .line 217
    const-string v5, "ISO8859_14"

    .line 218
    .line 219
    const/16 v2, 0x10

    .line 220
    .line 221
    move-object/from16 v25, v4

    .line 222
    .line 223
    const/16 v4, 0xd

    .line 224
    .line 225
    invoke-direct {v1, v5, v4, v2, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v4, Lj8/c;

    .line 229
    .line 230
    const/4 v5, 0x1

    .line 231
    new-array v15, v5, [Ljava/lang/String;

    .line 232
    .line 233
    const-string v23, "ISO-8859-15"

    .line 234
    .line 235
    const/4 v2, 0x0

    .line 236
    aput-object v23, v15, v2

    .line 237
    .line 238
    const-string v2, "ISO8859_15"

    .line 239
    .line 240
    const/16 v5, 0xe

    .line 241
    .line 242
    move-object/from16 v26, v1

    .line 243
    .line 244
    const/16 v1, 0x11

    .line 245
    .line 246
    invoke-direct {v4, v2, v5, v1, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance v2, Lj8/c;

    .line 250
    .line 251
    const/4 v15, 0x1

    .line 252
    new-array v5, v15, [Ljava/lang/String;

    .line 253
    .line 254
    const-string v23, "ISO-8859-16"

    .line 255
    .line 256
    const/4 v1, 0x0

    .line 257
    aput-object v23, v5, v1

    .line 258
    .line 259
    const-string v1, "ISO8859_16"

    .line 260
    .line 261
    const/16 v15, 0x12

    .line 262
    .line 263
    move-object/from16 v27, v4

    .line 264
    .line 265
    const/16 v4, 0xf

    .line 266
    .line 267
    invoke-direct {v2, v1, v4, v15, v5}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance v1, Lj8/c;

    .line 271
    .line 272
    const/4 v4, 0x1

    .line 273
    new-array v5, v4, [Ljava/lang/String;

    .line 274
    .line 275
    const-string v23, "Shift_JIS"

    .line 276
    .line 277
    const/4 v15, 0x0

    .line 278
    aput-object v23, v5, v15

    .line 279
    .line 280
    const-string v15, "SJIS"

    .line 281
    .line 282
    const/16 v4, 0x14

    .line 283
    .line 284
    move-object/from16 v28, v2

    .line 285
    .line 286
    const/16 v2, 0x10

    .line 287
    .line 288
    invoke-direct {v1, v15, v2, v4, v5}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lj8/c;

    .line 292
    .line 293
    const/4 v5, 0x1

    .line 294
    new-array v15, v5, [Ljava/lang/String;

    .line 295
    .line 296
    const-string v23, "windows-1250"

    .line 297
    .line 298
    const/4 v4, 0x0

    .line 299
    aput-object v23, v15, v4

    .line 300
    .line 301
    const-string v4, "Cp1250"

    .line 302
    .line 303
    const/16 v5, 0x15

    .line 304
    .line 305
    move-object/from16 v29, v1

    .line 306
    .line 307
    const/16 v1, 0x11

    .line 308
    .line 309
    invoke-direct {v2, v4, v1, v5, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance v1, Lj8/c;

    .line 313
    .line 314
    const/4 v4, 0x1

    .line 315
    new-array v15, v4, [Ljava/lang/String;

    .line 316
    .line 317
    const-string v23, "windows-1251"

    .line 318
    .line 319
    const/4 v5, 0x0

    .line 320
    aput-object v23, v15, v5

    .line 321
    .line 322
    const-string v5, "Cp1251"

    .line 323
    .line 324
    const/16 v4, 0x16

    .line 325
    .line 326
    move-object/from16 v30, v2

    .line 327
    .line 328
    const/16 v2, 0x12

    .line 329
    .line 330
    invoke-direct {v1, v5, v2, v4, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance v2, Lj8/c;

    .line 334
    .line 335
    const/4 v5, 0x1

    .line 336
    new-array v15, v5, [Ljava/lang/String;

    .line 337
    .line 338
    const-string v23, "windows-1252"

    .line 339
    .line 340
    const/4 v4, 0x0

    .line 341
    aput-object v23, v15, v4

    .line 342
    .line 343
    const-string v4, "Cp1252"

    .line 344
    .line 345
    const/16 v5, 0x13

    .line 346
    .line 347
    move-object/from16 v31, v1

    .line 348
    .line 349
    const/16 v1, 0x17

    .line 350
    .line 351
    invoke-direct {v2, v4, v5, v1, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v4, Lj8/c;

    .line 355
    .line 356
    const/4 v5, 0x1

    .line 357
    new-array v15, v5, [Ljava/lang/String;

    .line 358
    .line 359
    const-string v23, "windows-1256"

    .line 360
    .line 361
    const/4 v1, 0x0

    .line 362
    aput-object v23, v15, v1

    .line 363
    .line 364
    const-string v5, "Cp1256"

    .line 365
    .line 366
    const/16 v1, 0x18

    .line 367
    .line 368
    move-object/from16 v33, v2

    .line 369
    .line 370
    const/16 v2, 0x14

    .line 371
    .line 372
    invoke-direct {v4, v5, v2, v1, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    new-instance v2, Lj8/c;

    .line 376
    .line 377
    const/4 v5, 0x2

    .line 378
    new-array v15, v5, [Ljava/lang/String;

    .line 379
    .line 380
    const-string v5, "UTF-16BE"

    .line 381
    .line 382
    const/4 v1, 0x0

    .line 383
    aput-object v5, v15, v1

    .line 384
    .line 385
    const-string v5, "UnicodeBig"

    .line 386
    .line 387
    const/4 v1, 0x1

    .line 388
    aput-object v5, v15, v1

    .line 389
    .line 390
    const-string v5, "UnicodeBigUnmarked"

    .line 391
    .line 392
    const/16 v1, 0x19

    .line 393
    .line 394
    move-object/from16 v35, v4

    .line 395
    .line 396
    const/16 v4, 0x15

    .line 397
    .line 398
    invoke-direct {v2, v5, v4, v1, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    new-instance v4, Lj8/c;

    .line 402
    .line 403
    const/4 v5, 0x1

    .line 404
    new-array v15, v5, [Ljava/lang/String;

    .line 405
    .line 406
    const-string v23, "UTF-8"

    .line 407
    .line 408
    const/4 v1, 0x0

    .line 409
    aput-object v23, v15, v1

    .line 410
    .line 411
    const-string v1, "UTF8"

    .line 412
    .line 413
    const/16 v5, 0x1a

    .line 414
    .line 415
    move-object/from16 v37, v2

    .line 416
    .line 417
    const/16 v2, 0x16

    .line 418
    .line 419
    invoke-direct {v4, v1, v2, v5, v15}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    new-instance v1, Lj8/c;

    .line 423
    .line 424
    const/16 v2, 0x1b

    .line 425
    .line 426
    const/16 v15, 0xaa

    .line 427
    .line 428
    filled-new-array {v2, v15}, [I

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    const/4 v15, 0x1

    .line 433
    new-array v5, v15, [Ljava/lang/String;

    .line 434
    .line 435
    const-string v15, "US-ASCII"

    .line 436
    .line 437
    move-object/from16 v38, v4

    .line 438
    .line 439
    const/4 v4, 0x0

    .line 440
    aput-object v15, v5, v4

    .line 441
    .line 442
    const-string v15, "ASCII"

    .line 443
    .line 444
    const/16 v4, 0x17

    .line 445
    .line 446
    invoke-direct {v1, v15, v4, v2, v5}, Lj8/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    new-instance v2, Lj8/c;

    .line 450
    .line 451
    const/16 v4, 0x1c

    .line 452
    .line 453
    filled-new-array {v4}, [I

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    const/4 v5, 0x0

    .line 458
    new-array v15, v5, [Ljava/lang/String;

    .line 459
    .line 460
    const-string v5, "Big5"

    .line 461
    .line 462
    move-object/from16 v32, v1

    .line 463
    .line 464
    const/16 v1, 0x18

    .line 465
    .line 466
    invoke-direct {v2, v5, v1, v4, v15}, Lj8/c;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    new-instance v1, Lj8/c;

    .line 470
    .line 471
    const/4 v4, 0x3

    .line 472
    new-array v5, v4, [Ljava/lang/String;

    .line 473
    .line 474
    const-string v4, "GB2312"

    .line 475
    .line 476
    const/4 v15, 0x0

    .line 477
    aput-object v4, v5, v15

    .line 478
    .line 479
    const-string v4, "EUC_CN"

    .line 480
    .line 481
    const/4 v15, 0x1

    .line 482
    aput-object v4, v5, v15

    .line 483
    .line 484
    const-string v4, "GBK"

    .line 485
    .line 486
    const/16 v19, 0x2

    .line 487
    .line 488
    aput-object v4, v5, v19

    .line 489
    .line 490
    const-string v4, "GB18030"

    .line 491
    .line 492
    const/16 v15, 0x1d

    .line 493
    .line 494
    move-object/from16 v34, v2

    .line 495
    .line 496
    const/16 v2, 0x19

    .line 497
    .line 498
    invoke-direct {v1, v4, v2, v15, v5}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    new-instance v2, Lj8/c;

    .line 502
    .line 503
    const/4 v4, 0x1

    .line 504
    new-array v5, v4, [Ljava/lang/String;

    .line 505
    .line 506
    const-string v15, "EUC-KR"

    .line 507
    .line 508
    const/16 v22, 0x0

    .line 509
    .line 510
    aput-object v15, v5, v22

    .line 511
    .line 512
    const-string v15, "EUC_KR"

    .line 513
    .line 514
    const/16 v4, 0x1e

    .line 515
    .line 516
    move-object/from16 v36, v1

    .line 517
    .line 518
    const/16 v1, 0x1a

    .line 519
    .line 520
    invoke-direct {v2, v15, v1, v4, v5}, Lj8/c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const/16 v1, 0x1b

    .line 524
    .line 525
    new-array v1, v1, [Lj8/c;

    .line 526
    .line 527
    aput-object v0, v1, v22

    .line 528
    .line 529
    const/4 v0, 0x1

    .line 530
    aput-object v3, v1, v0

    .line 531
    .line 532
    const/4 v0, 0x2

    .line 533
    aput-object v6, v1, v0

    .line 534
    .line 535
    const/4 v0, 0x3

    .line 536
    aput-object v7, v1, v0

    .line 537
    .line 538
    const/4 v0, 0x4

    .line 539
    aput-object v8, v1, v0

    .line 540
    .line 541
    const/4 v0, 0x5

    .line 542
    aput-object v10, v1, v0

    .line 543
    .line 544
    const/4 v0, 0x6

    .line 545
    aput-object v12, v1, v0

    .line 546
    .line 547
    const/4 v0, 0x7

    .line 548
    aput-object v11, v1, v0

    .line 549
    .line 550
    const/16 v0, 0x8

    .line 551
    .line 552
    aput-object v13, v1, v0

    .line 553
    .line 554
    const/16 v0, 0x9

    .line 555
    .line 556
    aput-object v14, v1, v0

    .line 557
    .line 558
    const/16 v0, 0xa

    .line 559
    .line 560
    aput-object v9, v1, v0

    .line 561
    .line 562
    const/16 v0, 0xb

    .line 563
    .line 564
    aput-object v24, v1, v0

    .line 565
    .line 566
    const/16 v0, 0xc

    .line 567
    .line 568
    aput-object v25, v1, v0

    .line 569
    .line 570
    const/16 v0, 0xd

    .line 571
    .line 572
    aput-object v26, v1, v0

    .line 573
    .line 574
    const/16 v0, 0xe

    .line 575
    .line 576
    aput-object v27, v1, v0

    .line 577
    .line 578
    const/16 v0, 0xf

    .line 579
    .line 580
    aput-object v28, v1, v0

    .line 581
    .line 582
    const/16 v0, 0x10

    .line 583
    .line 584
    aput-object v29, v1, v0

    .line 585
    .line 586
    const/16 v0, 0x11

    .line 587
    .line 588
    aput-object v30, v1, v0

    .line 589
    .line 590
    const/16 v0, 0x12

    .line 591
    .line 592
    aput-object v31, v1, v0

    .line 593
    .line 594
    const/16 v0, 0x13

    .line 595
    .line 596
    aput-object v33, v1, v0

    .line 597
    .line 598
    const/16 v0, 0x14

    .line 599
    .line 600
    aput-object v35, v1, v0

    .line 601
    .line 602
    const/16 v0, 0x15

    .line 603
    .line 604
    aput-object v37, v1, v0

    .line 605
    .line 606
    const/16 v0, 0x16

    .line 607
    .line 608
    aput-object v38, v1, v0

    .line 609
    .line 610
    const/16 v0, 0x17

    .line 611
    .line 612
    aput-object v32, v1, v0

    .line 613
    .line 614
    const/16 v0, 0x18

    .line 615
    .line 616
    aput-object v34, v1, v0

    .line 617
    .line 618
    const/16 v0, 0x19

    .line 619
    .line 620
    aput-object v36, v1, v0

    .line 621
    .line 622
    const/16 v0, 0x1a

    .line 623
    .line 624
    aput-object v2, v1, v0

    .line 625
    .line 626
    sput-object v1, Lj8/c;->e:[Lj8/c;

    .line 627
    .line 628
    new-instance v0, Ljava/util/HashMap;

    .line 629
    .line 630
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 631
    .line 632
    .line 633
    sput-object v0, Lj8/c;->c:Ljava/util/HashMap;

    .line 634
    .line 635
    new-instance v0, Ljava/util/HashMap;

    .line 636
    .line 637
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    .line 639
    .line 640
    sput-object v0, Lj8/c;->d:Ljava/util/HashMap;

    .line 641
    .line 642
    invoke-static {}, Lj8/c;->values()[Lj8/c;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    array-length v1, v0

    .line 647
    const/4 v2, 0x0

    .line 648
    :goto_0
    if-ge v2, v1, :cond_2

    .line 649
    .line 650
    aget-object v3, v0, v2

    .line 651
    .line 652
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-static {v4}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    if-eqz v4, :cond_1

    .line 661
    .line 662
    iget-object v4, v3, Lj8/c;->a:[I

    .line 663
    .line 664
    array-length v5, v4

    .line 665
    const/4 v6, 0x0

    .line 666
    :goto_1
    if-ge v6, v5, :cond_0

    .line 667
    .line 668
    aget v7, v4, v6

    .line 669
    .line 670
    sget-object v8, Lj8/c;->c:Ljava/util/HashMap;

    .line 671
    .line 672
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v8, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    const/4 v7, 0x1

    .line 680
    add-int/2addr v6, v7

    .line 681
    goto :goto_1

    .line 682
    :cond_0
    sget-object v4, Lj8/c;->d:Ljava/util/HashMap;

    .line 683
    .line 684
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    iget-object v4, v3, Lj8/c;->b:[Ljava/lang/String;

    .line 692
    .line 693
    array-length v5, v4

    .line 694
    const/4 v6, 0x0

    .line 695
    :goto_2
    if-ge v6, v5, :cond_1

    .line 696
    .line 697
    aget-object v7, v4, v6

    .line 698
    .line 699
    sget-object v8, Lj8/c;->d:Ljava/util/HashMap;

    .line 700
    .line 701
    invoke-virtual {v8, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    const/4 v7, 0x1

    .line 705
    add-int/2addr v6, v7

    .line 706
    goto :goto_2

    .line 707
    :cond_1
    const/4 v7, 0x1

    .line 708
    add-int/2addr v2, v7

    .line 709
    goto :goto_0

    .line 710
    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lj8/c;->a:[I

    .line 3
    iput-object p4, p0, Lj8/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lj8/c;->a:[I

    .line 6
    iput-object p4, p0, Lj8/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj8/c;
    .locals 1

    .line 1
    const-class v0, Lj8/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj8/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lj8/c;
    .locals 1

    .line 1
    sget-object v0, Lj8/c;->e:[Lj8/c;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lj8/c;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lj8/c;

    .line 8
    .line 9
    return-object v0
.end method
