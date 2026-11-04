.class public final Lh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final A:Lg/h;

.field public static final B:Lg/h;

.field public static d:Z = false

.field public static e:Ljava/util/HashMap;

.field public static final f:Ljava/util/HashMap;

.field public static final g:Lg/h;

.field public static final h:Lg/h;

.field public static final i:Lg/h;

.field public static final j:Lg/h;

.field public static final k:Lg/h;

.field public static final l:Lg/h;

.field public static final m:Lg/h;

.field public static final n:Lg/h;

.field public static final p:Lg/h;

.field public static final q:Lg/h;

.field public static final r:Lg/h;

.field public static final s:Lg/h;

.field public static final t:Lg/h;

.field public static final v:Lg/h;

.field public static final w:Lg/h;

.field public static final x:Lg/h;

.field public static final y:Lg/h;

.field public static final z:Lg/h;


# instance fields
.field public final a:Lg/h;

.field public final b:Ljava/security/AlgorithmParameters;

.field public final c:Lg/g;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x6

    .line 4
    new-array v3, v2, [I

    .line 5
    .line 6
    fill-array-data v3, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {v3}, Lg/h;->d([I)Lg/h;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sput-object v3, Lh/d;->g:Lg/h;

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    new-array v5, v2, [I

    .line 17
    .line 18
    fill-array-data v5, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    sput-object v5, Lh/d;->h:Lg/h;

    .line 26
    .line 27
    new-array v6, v2, [I

    .line 28
    .line 29
    fill-array-data v6, :array_2

    .line 30
    .line 31
    .line 32
    invoke-static {v6}, Lg/h;->d([I)Lg/h;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    sput-object v6, Lh/d;->i:Lg/h;

    .line 37
    .line 38
    const/16 v7, 0x9

    .line 39
    .line 40
    new-array v8, v7, [I

    .line 41
    .line 42
    fill-array-data v8, :array_3

    .line 43
    .line 44
    .line 45
    invoke-static {v8}, Lg/h;->d([I)Lg/h;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    sput-object v8, Lh/d;->j:Lg/h;

    .line 50
    .line 51
    new-array v9, v7, [I

    .line 52
    .line 53
    fill-array-data v9, :array_4

    .line 54
    .line 55
    .line 56
    invoke-static {v9}, Lg/h;->d([I)Lg/h;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    sput-object v9, Lh/d;->k:Lg/h;

    .line 61
    .line 62
    new-array v7, v7, [I

    .line 63
    .line 64
    fill-array-data v7, :array_5

    .line 65
    .line 66
    .line 67
    invoke-static {v7}, Lg/h;->d([I)Lg/h;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    sput-object v7, Lh/d;->l:Lg/h;

    .line 72
    .line 73
    const/4 v10, 0x7

    .line 74
    new-array v11, v10, [I

    .line 75
    .line 76
    fill-array-data v11, :array_6

    .line 77
    .line 78
    .line 79
    new-array v12, v2, [I

    .line 80
    .line 81
    fill-array-data v12, :array_7

    .line 82
    .line 83
    .line 84
    new-array v13, v2, [I

    .line 85
    .line 86
    fill-array-data v13, :array_8

    .line 87
    .line 88
    .line 89
    new-array v14, v2, [I

    .line 90
    .line 91
    fill-array-data v14, :array_9

    .line 92
    .line 93
    .line 94
    const/16 v15, 0x8

    .line 95
    .line 96
    filled-new-array {v1, v4, v15, v0, v0}, [I

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-array v1, v10, [I

    .line 101
    .line 102
    fill-array-data v1, :array_a

    .line 103
    .line 104
    .line 105
    new-array v4, v2, [I

    .line 106
    .line 107
    fill-array-data v4, :array_b

    .line 108
    .line 109
    .line 110
    invoke-static {v4}, Lg/h;->d([I)Lg/h;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    sput-object v4, Lh/d;->p:Lg/h;

    .line 115
    .line 116
    new-array v15, v10, [I

    .line 117
    .line 118
    fill-array-data v15, :array_c

    .line 119
    .line 120
    .line 121
    new-array v2, v10, [I

    .line 122
    .line 123
    fill-array-data v2, :array_d

    .line 124
    .line 125
    .line 126
    move-object/from16 v18, v4

    .line 127
    .line 128
    new-array v4, v10, [I

    .line 129
    .line 130
    fill-array-data v4, :array_e

    .line 131
    .line 132
    .line 133
    move-object/from16 v20, v7

    .line 134
    .line 135
    const/4 v10, 0x6

    .line 136
    new-array v7, v10, [I

    .line 137
    .line 138
    fill-array-data v7, :array_f

    .line 139
    .line 140
    .line 141
    move-object/from16 v21, v9

    .line 142
    .line 143
    const/4 v10, 0x7

    .line 144
    new-array v9, v10, [I

    .line 145
    .line 146
    fill-array-data v9, :array_10

    .line 147
    .line 148
    .line 149
    move-object/from16 v22, v8

    .line 150
    .line 151
    new-array v8, v10, [I

    .line 152
    .line 153
    fill-array-data v8, :array_11

    .line 154
    .line 155
    .line 156
    move-object/from16 v23, v6

    .line 157
    .line 158
    new-array v6, v10, [I

    .line 159
    .line 160
    fill-array-data v6, :array_12

    .line 161
    .line 162
    .line 163
    move-object/from16 v24, v3

    .line 164
    .line 165
    const/4 v10, 0x6

    .line 166
    new-array v3, v10, [I

    .line 167
    .line 168
    fill-array-data v3, :array_13

    .line 169
    .line 170
    .line 171
    move-object/from16 v25, v5

    .line 172
    .line 173
    new-array v5, v10, [I

    .line 174
    .line 175
    fill-array-data v5, :array_14

    .line 176
    .line 177
    .line 178
    move-object/from16 v26, v5

    .line 179
    .line 180
    new-array v5, v10, [I

    .line 181
    .line 182
    fill-array-data v5, :array_15

    .line 183
    .line 184
    .line 185
    move-object/from16 v27, v5

    .line 186
    .line 187
    new-array v5, v10, [I

    .line 188
    .line 189
    fill-array-data v5, :array_16

    .line 190
    .line 191
    .line 192
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    sput-object v5, Lh/d;->w:Lg/h;

    .line 197
    .line 198
    move-object/from16 v28, v5

    .line 199
    .line 200
    const/4 v10, 0x7

    .line 201
    new-array v5, v10, [I

    .line 202
    .line 203
    fill-array-data v5, :array_17

    .line 204
    .line 205
    .line 206
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    sput-object v5, Lh/d;->x:Lg/h;

    .line 211
    .line 212
    move-object/from16 v29, v5

    .line 213
    .line 214
    new-array v5, v10, [I

    .line 215
    .line 216
    fill-array-data v5, :array_18

    .line 217
    .line 218
    .line 219
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    sput-object v5, Lh/d;->y:Lg/h;

    .line 224
    .line 225
    move-object/from16 v30, v5

    .line 226
    .line 227
    new-array v5, v10, [I

    .line 228
    .line 229
    fill-array-data v5, :array_19

    .line 230
    .line 231
    .line 232
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    sput-object v5, Lh/d;->z:Lg/h;

    .line 237
    .line 238
    move-object/from16 v31, v5

    .line 239
    .line 240
    new-array v5, v10, [I

    .line 241
    .line 242
    fill-array-data v5, :array_1a

    .line 243
    .line 244
    .line 245
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    sput-object v5, Lh/d;->A:Lg/h;

    .line 250
    .line 251
    const/4 v10, 0x6

    .line 252
    new-array v10, v10, [I

    .line 253
    .line 254
    fill-array-data v10, :array_1b

    .line 255
    .line 256
    .line 257
    invoke-static {v10}, Lg/h;->d([I)Lg/h;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    sput-object v10, Lh/d;->B:Lg/h;

    .line 262
    .line 263
    move-object/from16 v17, v5

    .line 264
    .line 265
    const/4 v10, 0x7

    .line 266
    new-array v5, v10, [I

    .line 267
    .line 268
    fill-array-data v5, :array_1c

    .line 269
    .line 270
    .line 271
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    move-object/from16 v19, v5

    .line 276
    .line 277
    new-array v5, v10, [I

    .line 278
    .line 279
    fill-array-data v5, :array_1d

    .line 280
    .line 281
    .line 282
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    move-object/from16 v32, v5

    .line 287
    .line 288
    new-array v5, v10, [I

    .line 289
    .line 290
    fill-array-data v5, :array_1e

    .line 291
    .line 292
    .line 293
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    new-array v10, v10, [I

    .line 298
    .line 299
    fill-array-data v10, :array_1f

    .line 300
    .line 301
    .line 302
    invoke-static {v10}, Lg/h;->d([I)Lg/h;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    move-object/from16 v16, v5

    .line 307
    .line 308
    move-object/from16 v33, v10

    .line 309
    .line 310
    const/16 v10, 0x8

    .line 311
    .line 312
    new-array v5, v10, [I

    .line 313
    .line 314
    fill-array-data v5, :array_20

    .line 315
    .line 316
    .line 317
    invoke-static {v5}, Lg/h;->d([I)Lg/h;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    new-array v10, v10, [I

    .line 322
    .line 323
    fill-array-data v10, :array_21

    .line 324
    .line 325
    .line 326
    invoke-static {v10}, Lg/h;->d([I)Lg/h;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    invoke-static {v11}, Lg/h;->d([I)Lg/h;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    sput-object v11, Lh/d;->m:Lg/h;

    .line 335
    .line 336
    invoke-static {v12}, Lg/h;->d([I)Lg/h;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    invoke-static {v13}, Lg/h;->d([I)Lg/h;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    invoke-static {v14}, Lg/h;->d([I)Lg/h;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    sput-object v14, Lh/d;->n:Lg/h;

    .line 349
    .line 350
    invoke-static {v0}, Lg/h;->d([I)Lg/h;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v1}, Lg/h;->d([I)Lg/h;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    sput-object v1, Lh/d;->q:Lg/h;

    .line 359
    .line 360
    invoke-static {v15}, Lg/h;->d([I)Lg/h;

    .line 361
    .line 362
    .line 363
    move-result-object v15

    .line 364
    sput-object v15, Lh/d;->r:Lg/h;

    .line 365
    .line 366
    invoke-static {v2}, Lg/h;->d([I)Lg/h;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    sput-object v2, Lh/d;->s:Lg/h;

    .line 371
    .line 372
    invoke-static {v4}, Lg/h;->d([I)Lg/h;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    sput-object v4, Lh/d;->t:Lg/h;

    .line 377
    .line 378
    invoke-static {v7}, Lg/h;->d([I)Lg/h;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    invoke-static {v9}, Lg/h;->d([I)Lg/h;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    invoke-static {v8}, Lg/h;->d([I)Lg/h;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    invoke-static {v6}, Lg/h;->d([I)Lg/h;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-static {v3}, Lg/h;->d([I)Lg/h;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    move-object/from16 v34, v10

    .line 399
    .line 400
    invoke-static/range {v26 .. v26}, Lg/h;->d([I)Lg/h;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    move-object/from16 v26, v5

    .line 405
    .line 406
    invoke-static/range {v27 .. v27}, Lg/h;->d([I)Lg/h;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    sput-object v5, Lh/d;->v:Lg/h;

    .line 411
    .line 412
    move-object/from16 v27, v6

    .line 413
    .line 414
    new-instance v6, Ljava/util/HashMap;

    .line 415
    .line 416
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 417
    .line 418
    .line 419
    sput-object v6, Lh/d;->f:Ljava/util/HashMap;

    .line 420
    .line 421
    move-object/from16 v35, v8

    .line 422
    .line 423
    const-string v8, "MD5"

    .line 424
    .line 425
    move-object/from16 v36, v9

    .line 426
    .line 427
    move-object/from16 v9, v25

    .line 428
    .line 429
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    const-string v8, "MD2"

    .line 433
    .line 434
    move-object/from16 v9, v24

    .line 435
    .line 436
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    const-string v8, "SHA"

    .line 440
    .line 441
    move-object/from16 v9, v23

    .line 442
    .line 443
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    const-string v8, "SHA256"

    .line 447
    .line 448
    move-object/from16 v9, v22

    .line 449
    .line 450
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    const-string v8, "SHA384"

    .line 454
    .line 455
    move-object/from16 v9, v21

    .line 456
    .line 457
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    const-string v8, "SHA512"

    .line 461
    .line 462
    move-object/from16 v9, v20

    .line 463
    .line 464
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    const-string v8, "RSA"

    .line 468
    .line 469
    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    const-string v0, "Diffie-Hellman"

    .line 476
    .line 477
    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    const-string v0, "DSA"

    .line 484
    .line 485
    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    const-string v0, "EC"

    .line 492
    .line 493
    move-object/from16 v1, v18

    .line 494
    .line 495
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    const-string v0, "SHA1withECDSA"

    .line 499
    .line 500
    move-object/from16 v1, v28

    .line 501
    .line 502
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    const-string v0, "SHA224withECDSA"

    .line 506
    .line 507
    move-object/from16 v1, v29

    .line 508
    .line 509
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    const-string v0, "SHA256withECDSA"

    .line 513
    .line 514
    move-object/from16 v1, v30

    .line 515
    .line 516
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    const-string v0, "SHA384withECDSA"

    .line 520
    .line 521
    move-object/from16 v1, v31

    .line 522
    .line 523
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const-string v0, "SHA512withECDSA"

    .line 527
    .line 528
    move-object/from16 v1, v17

    .line 529
    .line 530
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    const-string v0, "MD5withRSA"

    .line 534
    .line 535
    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    const-string v0, "MD2withRSA"

    .line 539
    .line 540
    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    const-string v0, "SHA1withDSA"

    .line 544
    .line 545
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    const-string v0, "SHA1withRSA"

    .line 555
    .line 556
    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    const-string v0, "SHA256withRSA"

    .line 563
    .line 564
    move-object/from16 v1, v36

    .line 565
    .line 566
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    const-string v0, "SHA384withRSA"

    .line 570
    .line 571
    move-object/from16 v1, v35

    .line 572
    .line 573
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    const-string v0, "SHA512withRSA"

    .line 577
    .line 578
    move-object/from16 v1, v27

    .line 579
    .line 580
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    const-string v0, "PBEWithMD5AndDES"

    .line 584
    .line 585
    move-object/from16 v1, v19

    .line 586
    .line 587
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    const-string v0, "PBEWithMD5AndRC2"

    .line 591
    .line 592
    move-object/from16 v1, v32

    .line 593
    .line 594
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    const-string v0, "PBEWithSHA1AndDES"

    .line 598
    .line 599
    move-object/from16 v1, v16

    .line 600
    .line 601
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    const-string v0, "PBEWithSHA1AndRC2"

    .line 605
    .line 606
    move-object/from16 v1, v33

    .line 607
    .line 608
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    const-string v0, "PBEWithSHA1AndDESede"

    .line 612
    .line 613
    move-object/from16 v1, v26

    .line 614
    .line 615
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    const-string v0, "PBEWithSHA1AndRC2_40"

    .line 619
    .line 620
    move-object/from16 v1, v34

    .line 621
    .line 622
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    nop

    .line 627
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_2
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_3
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
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
    :array_4
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

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
    :array_5
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

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
    :array_6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

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
    :array_7
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

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
    :array_8
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

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
    :array_9
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

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
    :array_a
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

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
    :array_b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

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
    :array_c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

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
    :array_d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

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
    :array_e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

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
    :array_f
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

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
    :array_10
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

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
    :array_11
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

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
    :array_12
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

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
    :array_13
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

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
    :array_14
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

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
    :array_15
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

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
    :array_16
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

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
    :array_17
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

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
    :array_18
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

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
    :array_19
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

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
    :array_1a
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

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
    :array_1b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

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
    :array_1c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

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
    :array_1d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

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
    :array_1e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

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
    :array_1f
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

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
    :array_20
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
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
    :array_21
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor <init>(Lg/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/d;->a:Lg/h;

    return-void
.end method

.method public constructor <init>(Lg/h;Lg/g;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lh/d;->a:Lg/h;

    .line 5
    iput-object p2, p0, Lh/d;->c:Lg/g;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lg/h;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p2

    iput-object p2, p0, Lh/d;->b:Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_1
    sget-object p2, Lc/b;->a:Lc/a;

    invoke-static {p1, p2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object p1

    iput-object p1, p0, Lh/d;->b:Ljava/security/AlgorithmParameters;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :goto_0
    iget-object p1, p0, Lh/d;->b:Ljava/security/AlgorithmParameters;

    iget-object p2, p0, Lh/d;->c:Lg/g;

    invoke-virtual {p2}, Lg/g;->i()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/AlgorithmParameters;->init([B)V

    goto :goto_1

    :catch_1
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lh/d;->b:Ljava/security/AlgorithmParameters;

    :cond_0
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Lg/h;
    .locals 10

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "OID."

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lg/h;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Lg/h;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lg/h;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lg/h;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    const-string v0, "MD5"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object p0, Lh/d;->h:Lg/h;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    const-string v0, "MD2"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    sget-object p0, Lh/d;->g:Lg/h;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    const-string v0, "SHA"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_26

    .line 64
    .line 65
    const-string v0, "SHA1"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_26

    .line 72
    .line 73
    const-string v0, "SHA-1"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    goto/16 :goto_c

    .line 82
    .line 83
    :cond_4
    const-string v0, "SHA-256"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_25

    .line 90
    .line 91
    const-string v0, "SHA256"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    goto/16 :goto_b

    .line 100
    .line 101
    :cond_5
    const-string v0, "SHA-384"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_24

    .line 108
    .line 109
    const-string v0, "SHA384"

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    goto/16 :goto_a

    .line 118
    .line 119
    :cond_6
    const-string v0, "SHA-512"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_23

    .line 126
    .line 127
    const-string v0, "SHA512"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_7
    const-string v0, "RSA"

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    sget-object p0, Lh/d;->q:Lg/h;

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_8
    const-string v0, "Diffie-Hellman"

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_22

    .line 155
    .line 156
    const-string v0, "DH"

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_9

    .line 163
    .line 164
    goto/16 :goto_8

    .line 165
    .line 166
    :cond_9
    const-string v0, "DSA"

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_a

    .line 173
    .line 174
    sget-object p0, Lh/d;->n:Lg/h;

    .line 175
    .line 176
    return-object p0

    .line 177
    :cond_a
    const-string v0, "EC"

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    sget-object p0, Lh/d;->p:Lg/h;

    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_b
    const-string v0, "MD5withRSA"

    .line 189
    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_21

    .line 195
    .line 196
    const-string v0, "MD5/RSA"

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_c

    .line 203
    .line 204
    goto/16 :goto_7

    .line 205
    .line 206
    :cond_c
    const-string v0, "MD2withRSA"

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_20

    .line 213
    .line 214
    const-string v0, "MD2/RSA"

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_d

    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_d
    const-string v0, "SHAwithDSA"

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_1f

    .line 231
    .line 232
    const-string v0, "SHA1withDSA"

    .line 233
    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_1f

    .line 239
    .line 240
    const-string v0, "SHA/DSA"

    .line 241
    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_1f

    .line 247
    .line 248
    const-string v0, "SHA1/DSA"

    .line 249
    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_1f

    .line 255
    .line 256
    const-string v0, "DSAWithSHA1"

    .line 257
    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_1f

    .line 263
    .line 264
    const-string v0, "DSS"

    .line 265
    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_1f

    .line 271
    .line 272
    const-string v0, "SHA-1/DSA"

    .line 273
    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_e

    .line 279
    .line 280
    goto/16 :goto_5

    .line 281
    .line 282
    :cond_e
    const-string v0, "SHA1WithRSA"

    .line 283
    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_1e

    .line 289
    .line 290
    const-string v0, "SHA1/RSA"

    .line 291
    .line 292
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_f

    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_f
    const-string v0, "SHA1withECDSA"

    .line 301
    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_1d

    .line 307
    .line 308
    const-string v0, "ECDSA"

    .line 309
    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_10

    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_10
    const-string v0, "SHA224withECDSA"

    .line 319
    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_11

    .line 325
    .line 326
    sget-object p0, Lh/d;->x:Lg/h;

    .line 327
    .line 328
    return-object p0

    .line 329
    :cond_11
    const-string v0, "SHA256withECDSA"

    .line 330
    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_12

    .line 336
    .line 337
    sget-object p0, Lh/d;->y:Lg/h;

    .line 338
    .line 339
    return-object p0

    .line 340
    :cond_12
    const-string v0, "SHA384withECDSA"

    .line 341
    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_13

    .line 347
    .line 348
    sget-object p0, Lh/d;->z:Lg/h;

    .line 349
    .line 350
    return-object p0

    .line 351
    :cond_13
    const-string v0, "SHA512withECDSA"

    .line 352
    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_14

    .line 358
    .line 359
    sget-object p0, Lh/d;->A:Lg/h;

    .line 360
    .line 361
    return-object p0

    .line 362
    :cond_14
    sget-boolean v0, Lh/d;->d:Z

    .line 363
    .line 364
    if-nez v0, :cond_1c

    .line 365
    .line 366
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const/4 v3, 0x0

    .line 371
    const/4 v4, 0x0

    .line 372
    :goto_0
    array-length v5, v0

    .line 373
    if-ge v4, v5, :cond_1a

    .line 374
    .line 375
    aget-object v5, v0, v4

    .line 376
    .line 377
    invoke-virtual {v5}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    :cond_15
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    if-eqz v6, :cond_19

    .line 386
    .line 387
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    check-cast v6, Ljava/lang/String;

    .line 392
    .line 393
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 394
    .line 395
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    const-string v9, "ALG.ALIAS"

    .line 400
    .line 401
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    if-eqz v9, :cond_15

    .line 406
    .line 407
    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    if-eq v8, v2, :cond_15

    .line 412
    .line 413
    add-int/lit8 v8, v8, 0x4

    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 416
    .line 417
    .line 418
    move-result v9

    .line 419
    if-ne v8, v9, :cond_16

    .line 420
    .line 421
    goto :goto_2

    .line 422
    :cond_16
    sget-object v9, Lh/d;->e:Ljava/util/HashMap;

    .line 423
    .line 424
    if-nez v9, :cond_17

    .line 425
    .line 426
    new-instance v9, Ljava/util/HashMap;

    .line 427
    .line 428
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 429
    .line 430
    .line 431
    sput-object v9, Lh/d;->e:Ljava/util/HashMap;

    .line 432
    .line 433
    :cond_17
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    aget-object v9, v0, v4

    .line 438
    .line 439
    invoke-virtual {v9, v6}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    if-eqz v6, :cond_18

    .line 444
    .line 445
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    :cond_18
    if-eqz v6, :cond_15

    .line 450
    .line 451
    sget-object v7, Lh/d;->e:Ljava/util/HashMap;

    .line 452
    .line 453
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    if-nez v7, :cond_15

    .line 458
    .line 459
    sget-object v7, Lh/d;->e:Ljava/util/HashMap;

    .line 460
    .line 461
    new-instance v9, Lg/h;

    .line 462
    .line 463
    invoke-direct {v9, v8}, Lg/h;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    goto :goto_1

    .line 470
    :cond_19
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 471
    .line 472
    goto :goto_0

    .line 473
    :cond_1a
    sget-object v0, Lh/d;->e:Ljava/util/HashMap;

    .line 474
    .line 475
    const/4 v1, 0x1

    .line 476
    if-nez v0, :cond_1b

    .line 477
    .line 478
    new-instance v0, Ljava/util/HashMap;

    .line 479
    .line 480
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 481
    .line 482
    .line 483
    sput-object v0, Lh/d;->e:Ljava/util/HashMap;

    .line 484
    .line 485
    :cond_1b
    sput-boolean v1, Lh/d;->d:Z

    .line 486
    .line 487
    :cond_1c
    sget-object v0, Lh/d;->e:Ljava/util/HashMap;

    .line 488
    .line 489
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 490
    .line 491
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p0

    .line 495
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    check-cast p0, Lg/h;

    .line 500
    .line 501
    return-object p0

    .line 502
    :cond_1d
    :goto_3
    sget-object p0, Lh/d;->w:Lg/h;

    .line 503
    .line 504
    return-object p0

    .line 505
    :cond_1e
    :goto_4
    sget-object p0, Lh/d;->t:Lg/h;

    .line 506
    .line 507
    return-object p0

    .line 508
    :cond_1f
    :goto_5
    sget-object p0, Lh/d;->v:Lg/h;

    .line 509
    .line 510
    return-object p0

    .line 511
    :cond_20
    :goto_6
    sget-object p0, Lh/d;->r:Lg/h;

    .line 512
    .line 513
    return-object p0

    .line 514
    :cond_21
    :goto_7
    sget-object p0, Lh/d;->s:Lg/h;

    .line 515
    .line 516
    return-object p0

    .line 517
    :cond_22
    :goto_8
    sget-object p0, Lh/d;->m:Lg/h;

    .line 518
    .line 519
    return-object p0

    .line 520
    :cond_23
    :goto_9
    sget-object p0, Lh/d;->l:Lg/h;

    .line 521
    .line 522
    return-object p0

    .line 523
    :cond_24
    :goto_a
    sget-object p0, Lh/d;->k:Lg/h;

    .line 524
    .line 525
    return-object p0

    .line 526
    :cond_25
    :goto_b
    sget-object p0, Lh/d;->j:Lg/h;

    .line 527
    .line 528
    return-object p0

    .line 529
    :cond_26
    :goto_c
    sget-object p0, Lh/d;->i:Lg/h;

    .line 530
    .line 531
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lh/d;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lh/d;->a(Ljava/lang/String;)Lg/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lh/d;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lh/d;-><init>(Lg/h;)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 14
    .line 15
    const-string v1, "unrecognized algorithm name: "

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :catch_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 26
    .line 27
    const-string v1, "Invalid ObjectIdentifier "

    .line 28
    .line 29
    invoke-static {v1, p0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static d(Lg/g;)Lh/d;
    .locals 5

    .line 1
    iget-byte v0, p0, Lg/g;->a:B

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    if-ne v0, v1, :cond_6

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x31

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "toDerInputStream rejects tag type "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-byte p0, p0, Lg/g;->a:B

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    new-instance v0, La1/i;

    .line 37
    .line 38
    iget-object p0, p0, Lg/g;->b:Lg/e;

    .line 39
    .line 40
    invoke-direct {v0, p0}, La1/i;-><init>(Lg/e;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lg/h;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lg/h;-><init>(La1/i;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    new-instance v2, Lg/g;

    .line 57
    .line 58
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lg/e;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lg/g;-><init>(Lg/e;)V

    .line 63
    .line 64
    .line 65
    iget-byte v0, v2, Lg/g;->a:B

    .line 66
    .line 67
    const/4 v4, 0x5

    .line 68
    if-ne v0, v4, :cond_4

    .line 69
    .line 70
    iget v0, v2, Lg/g;->d:I

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 76
    .line 77
    const-string v0, "invalid NULL"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_4
    move-object v3, v2

    .line 84
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_5

    .line 89
    .line 90
    :goto_2
    new-instance p0, Lh/d;

    .line 91
    .line 92
    invoke-direct {p0, v1, v3}, Lh/d;-><init>(Lg/h;Lg/g;)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 97
    .line 98
    const-string v0, "Invalid AlgorithmIdentifier: extra data"

    .line 99
    .line 100
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 105
    .line 106
    const-string v0, "algid parse error, not a sequence"

    .line 107
    .line 108
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0
.end method


# virtual methods
.method public final b(Lg/f;)V
    .locals 4

    .line 1
    new-instance v0, Lg/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lg/f;

    .line 7
    .line 8
    invoke-direct {v1}, Lg/f;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lh/d;->a:Lg/h;

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    iget-object v2, v2, Lg/h;->a:[B

    .line 15
    .line 16
    invoke-virtual {v0, v3, v2}, Lg/f;->K(B[B)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lh/d;->c:Lg/g;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Lg/f;->r(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v2, v0}, Lg/g;->c(Lg/f;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/16 v2, 0x30

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Lg/f;->J(BLg/f;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lh/d;

    .line 6
    .line 7
    iget-object v2, p0, Lh/d;->a:Lg/h;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    check-cast p1, Lh/d;

    .line 13
    .line 14
    iget-object v1, p0, Lh/d;->c:Lg/g;

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p1, Lh/d;->c:Lg/g;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v4, p1, Lh/d;->c:Lg/g;

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Lg/g;->d(Lg/g;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_0
    iget-object p1, p1, Lh/d;->a:Lg/h;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/4 v0, 0x0

    .line 44
    :goto_1
    return v0

    .line 45
    :cond_4
    instance-of v0, p1, Lg/h;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    check-cast p1, Lg/h;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_5
    return v3
.end method

.method public final getName()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "withECDSA"

    .line 2
    .line 3
    sget-object v1, Lh/d;->f:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v2, p0, Lh/d;->a:Lg/h;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    iget-object v3, p0, Lh/d;->c:Lg/g;

    .line 17
    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    sget-object v3, Lh/d;->B:Lg/h;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lg/h;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    :try_start_0
    new-instance v3, Lg/g;

    .line 29
    .line 30
    iget-object v4, p0, Lh/d;->c:Lg/g;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v4}, Lg/g;->i()[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :goto_0
    invoke-direct {v3, v4}, Lg/g;-><init>([B)V

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lh/d;->d(Lg/g;)Lh/d;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lh/d;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "SHA"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    const-string v3, "SHA1"

    .line 60
    .line 61
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    nop

    .line 67
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2}, Lg/h;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :cond_4
    return-object v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh/d;->a:Lg/h;

    .line 7
    .line 8
    invoke-virtual {v1}, Lg/h;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lh/d;->c:Lg/g;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lh/d;->b:Ljava/security/AlgorithmParameters;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v1, ", params unparsed"

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lh/d;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lh/d;->c:Lg/g;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lh/d;->b:Ljava/security/AlgorithmParameters;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, ", params unparsed"

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
