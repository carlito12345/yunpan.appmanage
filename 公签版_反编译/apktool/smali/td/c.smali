.class public final Ltd/c;
.super Ltd/a;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:[B

.field public final j:[B

.field public k:[B


# direct methods
.method public constructor <init>(Lvc/b;Ltd/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Ltd/a;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    iput-object v7, v0, Ltd/c;->i:[B

    .line 20
    .line 21
    iput-object v7, v0, Ltd/c;->j:[B

    .line 22
    .line 23
    iput-object v7, v0, Ltd/c;->k:[B

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    invoke-virtual {v2, v8}, Ltd/a;->a(I)Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    const/4 v10, 0x2

    .line 31
    if-eqz v9, :cond_0

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v9, 0x2

    .line 36
    :goto_0
    const v11, 0x2000200

    .line 37
    .line 38
    .line 39
    or-int/2addr v9, v11

    .line 40
    or-int v9, p8, v9

    .line 41
    .line 42
    iput v9, v0, Ltd/a;->a:I

    .line 43
    .line 44
    move-object/from16 v9, p7

    .line 45
    .line 46
    iput-object v9, v0, Ltd/c;->h:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v5, v0, Ltd/c;->f:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v6, v0, Ltd/c;->g:Ljava/lang/String;

    .line 51
    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-nez p9, :cond_2

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    :goto_1
    iput-object v7, v0, Ltd/c;->d:[B

    .line 66
    .line 67
    iput-object v7, v0, Ltd/c;->e:[B

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-static/range {p4 .. p4}, Lvd/k;->c(Ljava/lang/String;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    check-cast v11, Lwc/a;

    .line 79
    .line 80
    iget v11, v11, Lwc/a;->r:I

    .line 81
    .line 82
    const/16 v12, 0x15

    .line 83
    .line 84
    const/4 v13, 0x0

    .line 85
    const/16 v14, 0x10

    .line 86
    .line 87
    const/16 v15, 0x18

    .line 88
    .line 89
    const/16 v7, 0x8

    .line 90
    .line 91
    if-eqz v11, :cond_23

    .line 92
    .line 93
    if-eq v11, v8, :cond_23

    .line 94
    .line 95
    if-eq v11, v10, :cond_21

    .line 96
    .line 97
    const/4 v8, 0x3

    .line 98
    const/4 v10, 0x4

    .line 99
    if-eq v11, v8, :cond_5

    .line 100
    .line 101
    if-eq v11, v10, :cond_5

    .line 102
    .line 103
    const/4 v8, 0x5

    .line 104
    if-eq v11, v8, :cond_5

    .line 105
    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    iget-object v3, v2, Ltd/b;->d:[B

    .line 111
    .line 112
    invoke-static {v1, v4, v3}, Lvd/k;->d(Lvc/b;Ljava/lang/String;[B)[B

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :goto_2
    iput-object v1, v0, Ltd/c;->d:[B

    .line 117
    .line 118
    if-nez v9, :cond_4

    .line 119
    .line 120
    const/4 v7, 0x0

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object v1, v2, Ltd/b;->d:[B

    .line 123
    .line 124
    new-array v2, v12, [B

    .line 125
    .line 126
    new-array v7, v15, [B

    .line 127
    .line 128
    invoke-static {v9, v13, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v1, v7}, Lvd/k;->a([B[B[B)V

    .line 132
    .line 133
    .line 134
    :goto_3
    iput-object v7, v0, Ltd/c;->e:[B

    .line 135
    .line 136
    goto/16 :goto_18

    .line 137
    .line 138
    :cond_5
    iget-object v4, v2, Ltd/b;->g:[B

    .line 139
    .line 140
    if-eqz v4, :cond_9

    .line 141
    .line 142
    new-instance v8, Ljava/util/LinkedList;

    .line 143
    .line 144
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 145
    .line 146
    .line 147
    const/4 v11, 0x0

    .line 148
    :goto_4
    add-int/lit8 v12, v11, 0x4

    .line 149
    .line 150
    array-length v10, v4

    .line 151
    if-gt v12, v10, :cond_8

    .line 152
    .line 153
    invoke-static {v11, v4}, Lrd/a;->a(I[B)I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    add-int/lit8 v11, v11, 0x2

    .line 158
    .line 159
    invoke-static {v11, v4}, Lrd/a;->a(I[B)I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-nez v10, :cond_7

    .line 164
    .line 165
    if-nez v11, :cond_6

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_6
    new-instance v1, Lvc/c;

    .line 169
    .line 170
    const-string v2, "Invalid avLen for AvEOL"

    .line 171
    .line 172
    invoke-direct {v1, v2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v1

    .line 176
    :cond_7
    new-array v14, v11, [B

    .line 177
    .line 178
    invoke-static {v4, v12, v14, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    .line 180
    .line 181
    packed-switch v10, :pswitch_data_0

    .line 182
    .line 183
    .line 184
    new-instance v13, Lud/c;

    .line 185
    .line 186
    invoke-direct {v13, v10, v14}, Lud/c;-><init>(I[B)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :pswitch_0
    new-instance v13, Lud/a;

    .line 191
    .line 192
    const/4 v10, 0x0

    .line 193
    invoke-direct {v13, v14, v10}, Lud/a;-><init>([BI)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :pswitch_1
    new-instance v13, Lud/d;

    .line 198
    .line 199
    invoke-direct {v13, v14}, Lud/d;-><init>([B)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :pswitch_2
    new-instance v13, Lud/a;

    .line 204
    .line 205
    const/4 v10, 0x1

    .line 206
    invoke-direct {v13, v14, v10}, Lud/a;-><init>([BI)V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :pswitch_3
    new-instance v13, Lud/e;

    .line 211
    .line 212
    invoke-direct {v13, v14}, Lud/e;-><init>([B)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :pswitch_4
    new-instance v13, Lud/b;

    .line 217
    .line 218
    invoke-direct {v13, v14}, Lud/b;-><init>([B)V

    .line 219
    .line 220
    .line 221
    :goto_5
    invoke-virtual {v8, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    add-int/2addr v11, v12

    .line 225
    const/4 v10, 0x4

    .line 226
    const/4 v13, 0x0

    .line 227
    const/16 v14, 0x10

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_8
    new-instance v1, Lvc/c;

    .line 231
    .line 232
    const-string v2, "Missing AvEOL"

    .line 233
    .line 234
    invoke-direct {v1, v2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v1

    .line 238
    :cond_9
    const/4 v8, 0x0

    .line 239
    :goto_6
    const/4 v4, 0x7

    .line 240
    if-nez v8, :cond_b

    .line 241
    .line 242
    :cond_a
    const/16 v16, 0x0

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    if-eqz v11, :cond_a

    .line 254
    .line 255
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    check-cast v11, Lud/c;

    .line 260
    .line 261
    iget v11, v11, Lud/c;->a:I

    .line 262
    .line 263
    if-ne v11, v4, :cond_c

    .line 264
    .line 265
    const/16 v16, 0x1

    .line 266
    .line 267
    :goto_7
    if-nez v16, :cond_e

    .line 268
    .line 269
    new-array v10, v7, [B

    .line 270
    .line 271
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    check-cast v11, Lwc/a;

    .line 276
    .line 277
    iget-object v11, v11, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 278
    .line 279
    invoke-virtual {v11, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 280
    .line 281
    .line 282
    if-eqz v5, :cond_d

    .line 283
    .line 284
    if-eqz v6, :cond_d

    .line 285
    .line 286
    if-eqz v9, :cond_d

    .line 287
    .line 288
    iget-object v11, v2, Ltd/b;->d:[B

    .line 289
    .line 290
    invoke-static {v5, v6, v9, v11, v10}, Lvd/k;->b(Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    goto :goto_8

    .line 295
    :cond_d
    const/4 v10, 0x0

    .line 296
    :goto_8
    iput-object v10, v0, Ltd/c;->d:[B

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_e
    new-array v10, v15, [B

    .line 300
    .line 301
    iput-object v10, v0, Ltd/c;->d:[B

    .line 302
    .line 303
    :goto_9
    if-eqz v8, :cond_f

    .line 304
    .line 305
    iget v10, v0, Ltd/a;->a:I

    .line 306
    .line 307
    const/high16 v11, 0x800000

    .line 308
    .line 309
    or-int/2addr v10, v11

    .line 310
    iput v10, v0, Ltd/a;->a:I

    .line 311
    .line 312
    :cond_f
    new-instance v10, Lde/b;

    .line 313
    .line 314
    const/4 v11, 0x1

    .line 315
    invoke-direct {v10, v9, v11}, Lde/b;-><init>([BI)V

    .line 316
    .line 317
    .line 318
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    sget-object v9, Lge/b;->b:Ljava/nio/charset/Charset;

    .line 323
    .line 324
    invoke-static {v6, v9}, Lge/b;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-virtual {v10, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 329
    .line 330
    .line 331
    invoke-static {v5, v9}, Lge/b;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v10, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    new-array v6, v7, [B

    .line 343
    .line 344
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    check-cast v9, Lwc/a;

    .line 349
    .line 350
    iget-object v9, v9, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 351
    .line 352
    invoke-virtual {v9, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 353
    .line 354
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 356
    .line 357
    .line 358
    move-result-wide v9

    .line 359
    const-wide v11, 0xa9730b66800L

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    add-long/2addr v9, v11

    .line 365
    const-wide/16 v11, 0x2710

    .line 366
    .line 367
    mul-long v9, v9, v11

    .line 368
    .line 369
    if-eqz v16, :cond_12

    .line 370
    .line 371
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    if-eqz v10, :cond_11

    .line 380
    .line 381
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    check-cast v10, Lud/c;

    .line 386
    .line 387
    iget v11, v10, Lud/c;->a:I

    .line 388
    .line 389
    if-ne v11, v4, :cond_10

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_11
    const/4 v10, 0x0

    .line 393
    :goto_a
    check-cast v10, Lud/e;

    .line 394
    .line 395
    iget-object v4, v10, Lud/c;->b:[B

    .line 396
    .line 397
    const/4 v9, 0x0

    .line 398
    invoke-static {v9, v4}, Lrd/a;->c(I[B)J

    .line 399
    .line 400
    .line 401
    move-result-wide v10

    .line 402
    move-wide v9, v10

    .line 403
    :cond_12
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    check-cast v4, Lwc/a;

    .line 408
    .line 409
    iget-boolean v4, v4, Lwc/a;->u:Z

    .line 410
    .line 411
    const/16 v11, 0x20

    .line 412
    .line 413
    if-nez v4, :cond_13

    .line 414
    .line 415
    if-nez v8, :cond_13

    .line 416
    .line 417
    const/4 v3, 0x0

    .line 418
    goto/16 :goto_11

    .line 419
    .line 420
    :cond_13
    if-nez v8, :cond_14

    .line 421
    .line 422
    new-instance v8, Ljava/util/LinkedList;

    .line 423
    .line 424
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 425
    .line 426
    .line 427
    :cond_14
    const/16 v4, 0x10

    .line 428
    .line 429
    invoke-virtual {v0, v4}, Ltd/a;->a(I)Z

    .line 430
    .line 431
    .line 432
    move-result v12

    .line 433
    if-eqz v12, :cond_16

    .line 434
    .line 435
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    check-cast v4, Lwc/a;

    .line 440
    .line 441
    iget-boolean v4, v4, Lwc/a;->u:Z

    .line 442
    .line 443
    if-nez v4, :cond_15

    .line 444
    .line 445
    if-eqz v16, :cond_16

    .line 446
    .line 447
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    check-cast v4, Lwc/a;

    .line 452
    .line 453
    iget-boolean v4, v4, Lwc/a;->t:Z

    .line 454
    .line 455
    if-nez v4, :cond_16

    .line 456
    .line 457
    :cond_15
    const/16 v4, 0x10

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_16
    const/4 v12, 0x0

    .line 461
    goto :goto_e

    .line 462
    :goto_b
    new-array v12, v4, [B

    .line 463
    .line 464
    iput-object v12, v0, Ltd/c;->k:[B

    .line 465
    .line 466
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v12

    .line 474
    if-eqz v12, :cond_18

    .line 475
    .line 476
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    check-cast v12, Lud/c;

    .line 481
    .line 482
    iget v13, v12, Lud/c;->a:I

    .line 483
    .line 484
    const/4 v14, 0x6

    .line 485
    if-ne v13, v14, :cond_17

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_18
    const/4 v12, 0x0

    .line 489
    :goto_c
    check-cast v12, Lud/b;

    .line 490
    .line 491
    if-eqz v12, :cond_19

    .line 492
    .line 493
    iget-object v4, v12, Lud/c;->b:[B

    .line 494
    .line 495
    const/4 v12, 0x0

    .line 496
    invoke-static {v12, v4}, Lrd/a;->b(I[B)I

    .line 497
    .line 498
    .line 499
    move-result v17

    .line 500
    const/4 v4, 0x2

    .line 501
    goto :goto_d

    .line 502
    :cond_19
    const/4 v12, 0x0

    .line 503
    const/4 v4, 0x2

    .line 504
    const/16 v17, 0x0

    .line 505
    .line 506
    :goto_d
    or-int/lit8 v13, v17, 0x2

    .line 507
    .line 508
    new-instance v4, Lud/b;

    .line 509
    .line 510
    const/4 v14, 0x4

    .line 511
    new-array v15, v14, [B

    .line 512
    .line 513
    int-to-long v13, v13

    .line 514
    invoke-static {v13, v14, v15, v12}, Lrd/a;->f(J[BI)V

    .line 515
    .line 516
    .line 517
    invoke-direct {v4, v15}, Lud/b;-><init>([B)V

    .line 518
    .line 519
    .line 520
    invoke-static {v8, v4}, Landroid/support/v4/media/session/b;->C(Ljava/util/List;Lud/c;)V

    .line 521
    .line 522
    .line 523
    :goto_e
    new-instance v4, Lud/e;

    .line 524
    .line 525
    new-array v13, v7, [B

    .line 526
    .line 527
    invoke-static {v9, v10, v13, v12}, Lrd/a;->g(J[BI)V

    .line 528
    .line 529
    .line 530
    invoke-direct {v4, v13}, Lud/e;-><init>([B)V

    .line 531
    .line 532
    .line 533
    invoke-static {v8, v4}, Landroid/support/v4/media/session/b;->C(Ljava/util/List;Lud/c;)V

    .line 534
    .line 535
    .line 536
    if-eqz v3, :cond_1a

    .line 537
    .line 538
    new-instance v4, Lud/d;

    .line 539
    .line 540
    sget-object v12, Lud/d;->c:Ljava/nio/charset/Charset;

    .line 541
    .line 542
    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-direct {v4, v3}, Lud/d;-><init>([B)V

    .line 547
    .line 548
    .line 549
    invoke-static {v8, v4}, Landroid/support/v4/media/session/b;->C(Ljava/util/List;Lud/c;)V

    .line 550
    .line 551
    .line 552
    :cond_1a
    new-instance v3, Lud/c;

    .line 553
    .line 554
    const/16 v4, 0xa

    .line 555
    .line 556
    const/16 v12, 0x10

    .line 557
    .line 558
    new-array v13, v12, [B

    .line 559
    .line 560
    invoke-direct {v3, v4, v13}, Lud/c;-><init>(I[B)V

    .line 561
    .line 562
    .line 563
    invoke-static {v8, v3}, Landroid/support/v4/media/session/b;->C(Ljava/util/List;Lud/c;)V

    .line 564
    .line 565
    .line 566
    new-instance v3, Lud/a;

    .line 567
    .line 568
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    new-array v12, v7, [B

    .line 573
    .line 574
    check-cast v4, Lwc/a;

    .line 575
    .line 576
    iget-object v4, v4, Lwc/a;->u0:[B

    .line 577
    .line 578
    const/16 v13, 0x30

    .line 579
    .line 580
    new-array v14, v13, [B

    .line 581
    .line 582
    move-object/from16 p4, v8

    .line 583
    .line 584
    int-to-long v7, v13

    .line 585
    const/4 v13, 0x0

    .line 586
    invoke-static {v7, v8, v14, v13}, Lrd/a;->f(J[BI)V

    .line 587
    .line 588
    .line 589
    const-wide/16 v7, 0x0

    .line 590
    .line 591
    const/4 v15, 0x4

    .line 592
    invoke-static {v7, v8, v14, v15}, Lrd/a;->f(J[BI)V

    .line 593
    .line 594
    .line 595
    const/16 v15, 0x8

    .line 596
    .line 597
    invoke-static {v12, v13, v14, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    .line 599
    .line 600
    const/16 v12, 0x10

    .line 601
    .line 602
    invoke-static {v4, v13, v14, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    .line 604
    .line 605
    const/4 v4, 0x1

    .line 606
    invoke-direct {v3, v14, v4}, Lud/a;-><init>([BI)V

    .line 607
    .line 608
    .line 609
    move-object/from16 v4, p4

    .line 610
    .line 611
    invoke-static {v4, v3}, Landroid/support/v4/media/session/b;->C(Ljava/util/List;Lud/c;)V

    .line 612
    .line 613
    .line 614
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    const/4 v12, 0x0

    .line 619
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v13

    .line 623
    if-eqz v13, :cond_1b

    .line 624
    .line 625
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v13

    .line 629
    check-cast v13, Lud/c;

    .line 630
    .line 631
    iget-object v13, v13, Lud/c;->b:[B

    .line 632
    .line 633
    array-length v13, v13

    .line 634
    const/4 v14, 0x4

    .line 635
    add-int/2addr v13, v14

    .line 636
    add-int/2addr v12, v13

    .line 637
    goto :goto_f

    .line 638
    :cond_1b
    const/4 v14, 0x4

    .line 639
    add-int/2addr v12, v14

    .line 640
    new-array v3, v12, [B

    .line 641
    .line 642
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    const/4 v12, 0x0

    .line 647
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v13

    .line 651
    if-eqz v13, :cond_1c

    .line 652
    .line 653
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v13

    .line 657
    check-cast v13, Lud/c;

    .line 658
    .line 659
    iget-object v14, v13, Lud/c;->b:[B

    .line 660
    .line 661
    iget v13, v13, Lud/c;->a:I

    .line 662
    .line 663
    int-to-long v7, v13

    .line 664
    invoke-static {v7, v8, v3, v12}, Lrd/a;->e(J[BI)V

    .line 665
    .line 666
    .line 667
    array-length v7, v14

    .line 668
    int-to-long v7, v7

    .line 669
    add-int/lit8 v13, v12, 0x2

    .line 670
    .line 671
    invoke-static {v7, v8, v3, v13}, Lrd/a;->e(J[BI)V

    .line 672
    .line 673
    .line 674
    add-int/lit8 v7, v12, 0x4

    .line 675
    .line 676
    array-length v8, v14

    .line 677
    const/4 v13, 0x0

    .line 678
    invoke-static {v14, v13, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    .line 680
    .line 681
    array-length v7, v14

    .line 682
    const/4 v8, 0x4

    .line 683
    add-int/2addr v7, v8

    .line 684
    add-int/2addr v12, v7

    .line 685
    const-wide/16 v7, 0x0

    .line 686
    .line 687
    goto :goto_10

    .line 688
    :cond_1c
    invoke-static {v7, v8, v3, v12}, Lrd/a;->e(J[BI)V

    .line 689
    .line 690
    .line 691
    const/4 v4, 0x2

    .line 692
    add-int/2addr v12, v4

    .line 693
    invoke-static {v7, v8, v3, v12}, Lrd/a;->e(J[BI)V

    .line 694
    .line 695
    .line 696
    :goto_11
    if-eqz v5, :cond_1f

    .line 697
    .line 698
    iget-object v2, v2, Ltd/b;->d:[B

    .line 699
    .line 700
    if-eqz v3, :cond_1d

    .line 701
    .line 702
    array-length v4, v3

    .line 703
    goto :goto_12

    .line 704
    :cond_1d
    const/4 v4, 0x0

    .line 705
    :goto_12
    add-int/lit8 v7, v4, 0x1c

    .line 706
    .line 707
    add-int/lit8 v8, v4, 0x20

    .line 708
    .line 709
    new-array v12, v8, [B

    .line 710
    .line 711
    const/16 v13, 0x101

    .line 712
    .line 713
    const/4 v14, 0x0

    .line 714
    invoke-static {v13, v14, v12}, Lge/a;->g(II[B)V

    .line 715
    .line 716
    .line 717
    const/4 v13, 0x4

    .line 718
    invoke-static {v14, v13, v12}, Lge/a;->g(II[B)V

    .line 719
    .line 720
    .line 721
    const-wide v13, 0xffffffffL

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    and-long v0, v9, v13

    .line 727
    .line 728
    long-to-int v1, v0

    .line 729
    const/16 v0, 0x8

    .line 730
    .line 731
    invoke-static {v1, v0, v12}, Lge/a;->g(II[B)V

    .line 732
    .line 733
    .line 734
    shr-long/2addr v9, v11

    .line 735
    and-long/2addr v9, v13

    .line 736
    long-to-int v1, v9

    .line 737
    const/16 v9, 0xc

    .line 738
    .line 739
    invoke-static {v1, v9, v12}, Lge/a;->g(II[B)V

    .line 740
    .line 741
    .line 742
    const/4 v1, 0x0

    .line 743
    const/16 v9, 0x10

    .line 744
    .line 745
    invoke-static {v6, v1, v12, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    .line 747
    .line 748
    const/16 v0, 0x18

    .line 749
    .line 750
    invoke-static {v1, v0, v12}, Lge/a;->g(II[B)V

    .line 751
    .line 752
    .line 753
    if-eqz v3, :cond_1e

    .line 754
    .line 755
    const/16 v0, 0x1c

    .line 756
    .line 757
    invoke-static {v3, v1, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    .line 759
    .line 760
    :cond_1e
    invoke-static {v1, v7, v12}, Lge/a;->g(II[B)V

    .line 761
    .line 762
    .line 763
    new-instance v0, Lde/b;

    .line 764
    .line 765
    const/4 v3, 0x1

    .line 766
    invoke-direct {v0, v5, v3}, Lde/b;-><init>([BI)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0, v12, v1, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    array-length v2, v0

    .line 780
    add-int/2addr v2, v8

    .line 781
    new-array v7, v2, [B

    .line 782
    .line 783
    array-length v2, v0

    .line 784
    invoke-static {v0, v1, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    .line 786
    .line 787
    array-length v0, v0

    .line 788
    invoke-static {v12, v1, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    .line 790
    .line 791
    :goto_13
    move-object/from16 v0, p0

    .line 792
    .line 793
    goto :goto_14

    .line 794
    :cond_1f
    const/4 v1, 0x0

    .line 795
    const/4 v7, 0x0

    .line 796
    goto :goto_13

    .line 797
    :goto_14
    iput-object v7, v0, Ltd/c;->e:[B

    .line 798
    .line 799
    new-instance v2, Lde/b;

    .line 800
    .line 801
    const/4 v3, 0x1

    .line 802
    invoke-direct {v2, v5, v3}, Lde/b;-><init>([BI)V

    .line 803
    .line 804
    .line 805
    iget-object v3, v0, Ltd/c;->e:[B

    .line 806
    .line 807
    const/16 v4, 0x10

    .line 808
    .line 809
    invoke-virtual {v2, v3, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    const/high16 v2, 0x40000000    # 2.0f

    .line 817
    .line 818
    invoke-virtual {v0, v2}, Ltd/a;->a(I)Z

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    if-eqz v2, :cond_20

    .line 823
    .line 824
    new-array v2, v4, [B

    .line 825
    .line 826
    iput-object v2, v0, Ltd/c;->i:[B

    .line 827
    .line 828
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    check-cast v3, Lwc/a;

    .line 833
    .line 834
    iget-object v3, v3, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 835
    .line 836
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 837
    .line 838
    .line 839
    new-array v3, v4, [B

    .line 840
    .line 841
    invoke-static {v1}, Lge/a;->h([B)Ljavax/crypto/Cipher;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    const/4 v4, 0x0

    .line 846
    const/4 v5, 0x0

    .line 847
    const/16 v6, 0x10

    .line 848
    .line 849
    move-object/from16 p1, v1

    .line 850
    .line 851
    move-object/from16 p2, v2

    .line 852
    .line 853
    move/from16 p3, v5

    .line 854
    .line 855
    move/from16 p4, v6

    .line 856
    .line 857
    move-object/from16 p5, v3

    .line 858
    .line 859
    move/from16 p6, v4

    .line 860
    .line 861
    invoke-virtual/range {p1 .. p6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 862
    .line 863
    .line 864
    iput-object v3, v0, Ltd/c;->j:[B

    .line 865
    .line 866
    goto/16 :goto_18

    .line 867
    .line 868
    :cond_20
    iput-object v1, v0, Ltd/c;->i:[B

    .line 869
    .line 870
    goto/16 :goto_18

    .line 871
    .line 872
    :cond_21
    if-nez v9, :cond_22

    .line 873
    .line 874
    const/4 v7, 0x0

    .line 875
    goto :goto_15

    .line 876
    :cond_22
    iget-object v1, v2, Ltd/b;->d:[B

    .line 877
    .line 878
    new-array v2, v12, [B

    .line 879
    .line 880
    const/16 v3, 0x18

    .line 881
    .line 882
    new-array v7, v3, [B

    .line 883
    .line 884
    const/4 v3, 0x0

    .line 885
    const/16 v4, 0x10

    .line 886
    .line 887
    invoke-static {v9, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    .line 889
    .line 890
    invoke-static {v2, v1, v7}, Lvd/k;->a([B[B[B)V

    .line 891
    .line 892
    .line 893
    :goto_15
    iput-object v7, v0, Ltd/c;->d:[B

    .line 894
    .line 895
    iput-object v7, v0, Ltd/c;->e:[B

    .line 896
    .line 897
    goto/16 :goto_18

    .line 898
    .line 899
    :cond_23
    const/high16 v1, 0x80000

    .line 900
    .line 901
    invoke-virtual {v0, v1}, Ltd/a;->a(I)Z

    .line 902
    .line 903
    .line 904
    move-result v1

    .line 905
    if-nez v1, :cond_26

    .line 906
    .line 907
    if-nez v4, :cond_24

    .line 908
    .line 909
    const/4 v1, 0x0

    .line 910
    goto :goto_16

    .line 911
    :cond_24
    iget-object v1, v2, Ltd/b;->d:[B

    .line 912
    .line 913
    move-object/from16 v3, p1

    .line 914
    .line 915
    invoke-static {v3, v4, v1}, Lvd/k;->d(Lvc/b;Ljava/lang/String;[B)[B

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    :goto_16
    iput-object v1, v0, Ltd/c;->d:[B

    .line 920
    .line 921
    if-nez v9, :cond_25

    .line 922
    .line 923
    const/4 v7, 0x0

    .line 924
    goto :goto_17

    .line 925
    :cond_25
    iget-object v1, v2, Ltd/b;->d:[B

    .line 926
    .line 927
    new-array v2, v12, [B

    .line 928
    .line 929
    const/16 v4, 0x18

    .line 930
    .line 931
    new-array v7, v4, [B

    .line 932
    .line 933
    const/4 v3, 0x0

    .line 934
    const/16 v4, 0x10

    .line 935
    .line 936
    invoke-static {v9, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    .line 938
    .line 939
    invoke-static {v2, v1, v7}, Lvd/k;->a([B[B[B)V

    .line 940
    .line 941
    .line 942
    :goto_17
    iput-object v7, v0, Ltd/c;->e:[B

    .line 943
    .line 944
    goto/16 :goto_18

    .line 945
    .line 946
    :cond_26
    move-object/from16 v3, p1

    .line 947
    .line 948
    const/16 v4, 0x18

    .line 949
    .line 950
    new-array v1, v4, [B

    .line 951
    .line 952
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 953
    .line 954
    .line 955
    move-result-object v5

    .line 956
    check-cast v5, Lwc/a;

    .line 957
    .line 958
    iget-object v5, v5, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 959
    .line 960
    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 961
    .line 962
    .line 963
    const/4 v5, 0x0

    .line 964
    const/16 v6, 0x8

    .line 965
    .line 966
    invoke-static {v1, v6, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 967
    .line 968
    .line 969
    iget-object v4, v2, Ltd/b;->d:[B

    .line 970
    .line 971
    new-array v7, v6, [B

    .line 972
    .line 973
    invoke-static {}, Lge/a;->k()Ljava/security/MessageDigest;

    .line 974
    .line 975
    .line 976
    move-result-object v8

    .line 977
    invoke-virtual {v8, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {v8, v1, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    .line 984
    .line 985
    .line 986
    move-result-object v4

    .line 987
    invoke-static {v4, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    .line 989
    .line 990
    new-array v4, v12, [B

    .line 991
    .line 992
    const/16 v6, 0x10

    .line 993
    .line 994
    invoke-static {v9, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 995
    .line 996
    .line 997
    const/16 v5, 0x18

    .line 998
    .line 999
    new-array v5, v5, [B

    .line 1000
    .line 1001
    invoke-static {v4, v7, v5}, Lvd/k;->a([B[B[B)V

    .line 1002
    .line 1003
    .line 1004
    iput-object v1, v0, Ltd/c;->d:[B

    .line 1005
    .line 1006
    iput-object v5, v0, Ltd/c;->e:[B

    .line 1007
    .line 1008
    new-array v4, v6, [B

    .line 1009
    .line 1010
    iget-object v2, v2, Ltd/b;->d:[B

    .line 1011
    .line 1012
    const/4 v5, 0x0

    .line 1013
    const/16 v6, 0x8

    .line 1014
    .line 1015
    invoke-static {v2, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v1, v5, v4, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    .line 1020
    .line 1021
    invoke-static {}, Lge/a;->j()Ljava/security/MessageDigest;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v1

    .line 1025
    invoke-virtual {v1, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    new-instance v2, Lde/b;

    .line 1033
    .line 1034
    const/4 v5, 0x1

    .line 1035
    invoke-direct {v2, v1, v5}, Lde/b;-><init>([BI)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    const/high16 v2, 0x40000000    # 2.0f

    .line 1046
    .line 1047
    invoke-virtual {v0, v2}, Ltd/a;->a(I)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v2

    .line 1051
    if-eqz v2, :cond_27

    .line 1052
    .line 1053
    const/16 v2, 0x10

    .line 1054
    .line 1055
    new-array v4, v2, [B

    .line 1056
    .line 1057
    iput-object v4, v0, Ltd/c;->i:[B

    .line 1058
    .line 1059
    invoke-interface/range {p1 .. p1}, Lvc/b;->e()Lvc/f;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    check-cast v3, Lwc/a;

    .line 1064
    .line 1065
    iget-object v3, v3, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 1066
    .line 1067
    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1068
    .line 1069
    .line 1070
    new-array v2, v2, [B

    .line 1071
    .line 1072
    invoke-static {v1}, Lge/a;->h([B)Ljavax/crypto/Cipher;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    const/4 v3, 0x0

    .line 1077
    const/4 v5, 0x0

    .line 1078
    const/16 v6, 0x10

    .line 1079
    .line 1080
    move-object/from16 p1, v1

    .line 1081
    .line 1082
    move-object/from16 p2, v4

    .line 1083
    .line 1084
    move/from16 p3, v5

    .line 1085
    .line 1086
    move/from16 p4, v6

    .line 1087
    .line 1088
    move-object/from16 p5, v2

    .line 1089
    .line 1090
    move/from16 p6, v3

    .line 1091
    .line 1092
    invoke-virtual/range {p1 .. p6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 1093
    .line 1094
    .line 1095
    iput-object v2, v0, Ltd/c;->j:[B

    .line 1096
    .line 1097
    goto :goto_18

    .line 1098
    :cond_27
    iput-object v1, v0, Ltd/c;->i:[B

    .line 1099
    .line 1100
    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final g([B[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltd/c;->i:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lde/b;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Lde/b;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ltd/c;->h()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Ltd/c;->k:[B

    .line 30
    .line 31
    return-void
.end method

.method public final h()[B
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ltd/a;->a(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v3, "Cp850"

    .line 14
    .line 15
    :goto_0
    iget-object v4, v0, Ltd/c;->f:Ljava/lang/String;

    .line 16
    .line 17
    const-string v5, "UTF-16LE"

    .line 18
    .line 19
    const/16 v6, 0x40

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :goto_1
    array-length v7, v4

    .line 41
    add-int/2addr v7, v6

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move-object v4, v2

    .line 44
    const/16 v7, 0x40

    .line 45
    .line 46
    :goto_2
    iget-object v8, v0, Ltd/c;->g:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v8, :cond_4

    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-eqz v9, :cond_4

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v8, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    :goto_3
    array-length v9, v8

    .line 72
    add-int/2addr v7, v9

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    move-object v8, v2

    .line 75
    :goto_4
    iget-object v9, v0, Ltd/c;->h:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v9, :cond_6

    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_6

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_5
    move-object v2, v1

    .line 92
    goto :goto_6

    .line 93
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_5

    .line 102
    :goto_6
    array-length v1, v2

    .line 103
    add-int/2addr v7, v1

    .line 104
    :cond_6
    iget-object v1, v0, Ltd/c;->k:[B

    .line 105
    .line 106
    const/high16 v3, 0x2000000

    .line 107
    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    add-int/lit8 v7, v7, 0x18

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_7
    invoke-virtual {v0, v3}, Ltd/a;->a(I)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_8

    .line 118
    .line 119
    add-int/lit8 v7, v7, 0x8

    .line 120
    .line 121
    :cond_8
    :goto_7
    iget-object v5, v0, Ltd/c;->d:[B

    .line 122
    .line 123
    const/4 v9, 0x0

    .line 124
    if-eqz v5, :cond_9

    .line 125
    .line 126
    array-length v10, v5

    .line 127
    goto :goto_8

    .line 128
    :cond_9
    const/4 v10, 0x0

    .line 129
    :goto_8
    add-int/2addr v7, v10

    .line 130
    iget-object v10, v0, Ltd/c;->e:[B

    .line 131
    .line 132
    if-eqz v10, :cond_a

    .line 133
    .line 134
    array-length v11, v10

    .line 135
    goto :goto_9

    .line 136
    :cond_a
    const/4 v11, 0x0

    .line 137
    :goto_9
    add-int/2addr v7, v11

    .line 138
    iget-object v11, v0, Ltd/c;->j:[B

    .line 139
    .line 140
    if-eqz v11, :cond_b

    .line 141
    .line 142
    array-length v12, v11

    .line 143
    goto :goto_a

    .line 144
    :cond_b
    const/4 v12, 0x0

    .line 145
    :goto_a
    add-int/2addr v7, v12

    .line 146
    new-array v7, v7, [B

    .line 147
    .line 148
    sget-object v12, Ltd/a;->b:[B

    .line 149
    .line 150
    const/16 v13, 0x8

    .line 151
    .line 152
    invoke-static {v12, v9, v7, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    const/4 v12, 0x3

    .line 156
    invoke-static {v13, v12, v7}, Ltd/a;->f(II[B)V

    .line 157
    .line 158
    .line 159
    const/16 v12, 0xc

    .line 160
    .line 161
    invoke-static {v12, v7, v5}, Ltd/a;->d(I[B[B)I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    const/16 v14, 0x14

    .line 166
    .line 167
    invoke-static {v14, v7, v10}, Ltd/a;->d(I[B[B)I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    const/16 v15, 0x1c

    .line 172
    .line 173
    invoke-static {v15, v7, v4}, Ltd/a;->d(I[B[B)I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    const/16 v6, 0x24

    .line 178
    .line 179
    invoke-static {v6, v7, v8}, Ltd/a;->d(I[B[B)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    const/16 v9, 0x2c

    .line 184
    .line 185
    invoke-static {v9, v7, v2}, Ltd/a;->d(I[B[B)I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    const/16 v13, 0x34

    .line 190
    .line 191
    invoke-static {v13, v7, v11}, Ltd/a;->d(I[B[B)I

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    iget v3, v0, Ltd/a;->a:I

    .line 196
    .line 197
    move-object/from16 v17, v11

    .line 198
    .line 199
    const/16 v11, 0x3c

    .line 200
    .line 201
    invoke-static {v11, v3, v7}, Ltd/a;->f(II[B)V

    .line 202
    .line 203
    .line 204
    const/high16 v3, 0x2000000

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Ltd/a;->a(I)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_c

    .line 211
    .line 212
    sget-object v3, Ltd/a;->c:[B

    .line 213
    .line 214
    move/from16 v16, v13

    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    const/16 v11, 0x40

    .line 218
    .line 219
    const/16 v13, 0x8

    .line 220
    .line 221
    invoke-static {v3, v0, v7, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    :goto_b
    const/16 v11, 0x48

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_c
    move/from16 v16, v13

    .line 228
    .line 229
    const/4 v0, 0x0

    .line 230
    const/16 v11, 0x40

    .line 231
    .line 232
    if-eqz v1, :cond_d

    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_d
    :goto_c
    if-eqz v1, :cond_e

    .line 236
    .line 237
    const/16 v3, 0x10

    .line 238
    .line 239
    invoke-static {v1, v0, v7, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    .line 241
    .line 242
    add-int/lit8 v11, v11, 0x10

    .line 243
    .line 244
    :cond_e
    invoke-static {v11, v12, v7, v5}, Ltd/a;->e(II[B[B)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    add-int/2addr v0, v11

    .line 249
    invoke-static {v0, v14, v7, v10}, Ltd/a;->e(II[B[B)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    add-int/2addr v1, v0

    .line 254
    invoke-static {v1, v15, v7, v4}, Ltd/a;->e(II[B[B)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    add-int/2addr v0, v1

    .line 259
    invoke-static {v0, v6, v7, v8}, Ltd/a;->e(II[B[B)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    add-int/2addr v1, v0

    .line 264
    invoke-static {v1, v9, v7, v2}, Ltd/a;->e(II[B[B)I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    add-int/2addr v0, v1

    .line 269
    move/from16 v2, v16

    .line 270
    .line 271
    move-object/from16 v1, v17

    .line 272
    .line 273
    invoke-static {v0, v2, v7, v1}, Ltd/a;->e(II[B[B)I

    .line 274
    .line 275
    .line 276
    return-object v7
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Ltd/c;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ltd/c;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ltd/c;->h:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Ltd/c;->d:[B

    .line 8
    .line 9
    iget-object v4, p0, Ltd/c;->e:[B

    .line 10
    .line 11
    iget-object v5, p0, Ltd/c;->j:[B

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "Type3Message[domain="

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",user="

    .line 24
    .line 25
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ",workstation="

    .line 32
    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ",lmResponse="

    .line 40
    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " bytes>"

    .line 45
    .line 46
    const-string v1, "<"

    .line 47
    .line 48
    const-string v2, "null"

    .line 49
    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    array-length v3, v3

    .line 60
    invoke-static {v7, v3, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, ",ntResponse="

    .line 68
    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    move-object v3, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    array-length v4, v4

    .line 82
    invoke-static {v3, v4, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, ",sessionKey="

    .line 90
    .line 91
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    array-length v1, v5

    .line 103
    invoke-static {v2, v1, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ",flags=0x"

    .line 111
    .line 112
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v0, p0, Ltd/a;->a:I

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    invoke-static {v0, v1}, Lge/a;->l(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, "]"

    .line 127
    .line 128
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method
