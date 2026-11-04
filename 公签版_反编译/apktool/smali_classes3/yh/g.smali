.class public final Lyh/g;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/DataInputStream;

.field public final b:Lyh/i;

.field public c:Ljava/io/InputStream;

.field public final d:Lbi/a;

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:I

.field public j:J

.field public k:Z

.field public final l:[B


# direct methods
.method public constructor <init>(Lxg/b;Lbi/a;ZILyh/b;)V
    .locals 20

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
    move/from16 v3, p4

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    iput-wide v4, v0, Lyh/g;->f:J

    .line 15
    .line 16
    iput-wide v4, v0, Lyh/g;->g:J

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    iput-wide v4, v0, Lyh/g;->j:J

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    iput-boolean v6, v0, Lyh/g;->k:Z

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    new-array v8, v7, [B

    .line 27
    .line 28
    iput-object v8, v0, Lyh/g;->l:[B

    .line 29
    .line 30
    iput-object v2, v0, Lyh/g;->d:Lbi/a;

    .line 31
    .line 32
    move/from16 v8, p3

    .line 33
    .line 34
    iput-boolean v8, v0, Lyh/g;->e:Z

    .line 35
    .line 36
    new-instance v8, Ljava/io/DataInputStream;

    .line 37
    .line 38
    invoke-direct {v8, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    .line 40
    .line 41
    iput-object v8, v0, Lyh/g;->a:Ljava/io/DataInputStream;

    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_1a

    .line 48
    .line 49
    add-int/lit8 v10, v9, 0x1

    .line 50
    .line 51
    mul-int/lit8 v10, v10, 0x4

    .line 52
    .line 53
    iput v10, v0, Lyh/g;->i:I

    .line 54
    .line 55
    new-array v11, v10, [B

    .line 56
    .line 57
    int-to-byte v9, v9

    .line 58
    aput-byte v9, v11, v6

    .line 59
    .line 60
    add-int/lit8 v9, v10, -0x1

    .line 61
    .line 62
    invoke-virtual {v8, v11, v7, v9}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v8, v10, -0x4

    .line 66
    .line 67
    invoke-static {v6, v8, v8, v11}, Lqf/c;->F(III[B)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const-string v9, "XZ Block Header is corrupt"

    .line 72
    .line 73
    if-eqz v8, :cond_19

    .line 74
    .line 75
    aget-byte v8, v11, v7

    .line 76
    .line 77
    and-int/lit8 v12, v8, 0x3c

    .line 78
    .line 79
    const-string v13, "Unsupported options in XZ Block Header"

    .line 80
    .line 81
    if-nez v12, :cond_18

    .line 82
    .line 83
    const/4 v12, 0x3

    .line 84
    and-int/2addr v8, v12

    .line 85
    add-int/lit8 v14, v8, 0x1

    .line 86
    .line 87
    new-array v15, v14, [J

    .line 88
    .line 89
    new-array v6, v14, [[B

    .line 90
    .line 91
    new-instance v12, Ljava/io/ByteArrayInputStream;

    .line 92
    .line 93
    add-int/lit8 v4, v10, -0x6

    .line 94
    .line 95
    const/4 v5, 0x2

    .line 96
    invoke-direct {v12, v11, v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 97
    .line 98
    .line 99
    int-to-long v4, v10

    .line 100
    const-wide v18, 0x7ffffffffffffffcL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    sub-long v18, v18, v4

    .line 106
    .line 107
    :try_start_0
    iget v2, v2, Lbi/a;->a:I

    .line 108
    .line 109
    int-to-long v4, v2

    .line 110
    sub-long v4, v18, v4

    .line 111
    .line 112
    iput-wide v4, v0, Lyh/g;->h:J

    .line 113
    .line 114
    aget-byte v2, v11, v7

    .line 115
    .line 116
    and-int/lit8 v2, v2, 0x40

    .line 117
    .line 118
    if-eqz v2, :cond_1

    .line 119
    .line 120
    move v10, v8

    .line 121
    invoke-static {v12}, Lqf/c;->k(Ljava/io/InputStream;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    iput-wide v7, v0, Lyh/g;->g:J

    .line 126
    .line 127
    const-wide/16 v16, 0x0

    .line 128
    .line 129
    cmp-long v18, v7, v16

    .line 130
    .line 131
    if-eqz v18, :cond_0

    .line 132
    .line 133
    cmp-long v16, v7, v4

    .line 134
    .line 135
    if-gtz v16, :cond_0

    .line 136
    .line 137
    iput-wide v7, v0, Lyh/g;->h:J

    .line 138
    .line 139
    :goto_0
    const/4 v2, 0x1

    .line 140
    goto :goto_1

    .line 141
    :cond_0
    new-instance v1, Lyh/h;

    .line 142
    .line 143
    invoke-direct {v1}, Lyh/h;-><init>()V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :cond_1
    move v10, v8

    .line 148
    goto :goto_0

    .line 149
    :goto_1
    aget-byte v2, v11, v2

    .line 150
    .line 151
    and-int/lit16 v2, v2, 0x80

    .line 152
    .line 153
    if-eqz v2, :cond_2

    .line 154
    .line 155
    invoke-static {v12}, Lqf/c;->k(Ljava/io/InputStream;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    iput-wide v4, v0, Lyh/g;->f:J

    .line 160
    .line 161
    :cond_2
    const/4 v2, 0x0

    .line 162
    :goto_2
    if-ge v2, v14, :cond_4

    .line 163
    .line 164
    invoke-static {v12}, Lqf/c;->k(Ljava/io/InputStream;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    aput-wide v4, v15, v2

    .line 169
    .line 170
    invoke-static {v12}, Lqf/c;->k(Ljava/io/InputStream;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v4

    .line 174
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->available()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    int-to-long v7, v7

    .line 179
    cmp-long v11, v4, v7

    .line 180
    .line 181
    if-gtz v11, :cond_3

    .line 182
    .line 183
    long-to-int v5, v4

    .line 184
    new-array v4, v5, [B

    .line 185
    .line 186
    aput-object v4, v6, v2

    .line 187
    .line 188
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    .line 189
    .line 190
    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_3
    new-instance v1, Lyh/h;

    .line 195
    .line 196
    invoke-direct {v1}, Lyh/h;-><init>()V

    .line 197
    .line 198
    .line 199
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_4
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->available()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    :goto_3
    if-lez v2, :cond_6

    .line 205
    .line 206
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->read()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_5

    .line 211
    .line 212
    add-int/lit8 v2, v2, -0x1

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    new-instance v1, Lyh/c0;

    .line 216
    .line 217
    invoke-direct {v1, v13}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_6
    new-array v2, v14, [Lyh/n;

    .line 222
    .line 223
    const/4 v4, 0x0

    .line 224
    :goto_4
    if-ge v4, v14, :cond_d

    .line 225
    .line 226
    aget-wide v7, v15, v4

    .line 227
    .line 228
    const-wide/16 v11, 0x21

    .line 229
    .line 230
    cmp-long v5, v7, v11

    .line 231
    .line 232
    if-nez v5, :cond_7

    .line 233
    .line 234
    new-instance v5, Landroidx/leanback/widget/i;

    .line 235
    .line 236
    aget-object v7, v6, v4

    .line 237
    .line 238
    const/16 v8, 0xc

    .line 239
    .line 240
    invoke-direct {v5, v7, v8}, Landroidx/leanback/widget/i;-><init>([BI)V

    .line 241
    .line 242
    .line 243
    aput-object v5, v2, v4

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_7
    const-wide/16 v11, 0x3

    .line 247
    .line 248
    cmp-long v5, v7, v11

    .line 249
    .line 250
    if-nez v5, :cond_8

    .line 251
    .line 252
    new-instance v5, Landroidx/leanback/widget/i;

    .line 253
    .line 254
    aget-object v7, v6, v4

    .line 255
    .line 256
    const/16 v8, 0xb

    .line 257
    .line 258
    invoke-direct {v5, v7, v8}, Landroidx/leanback/widget/i;-><init>([BI)V

    .line 259
    .line 260
    .line 261
    aput-object v5, v2, v4

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_8
    const-wide/16 v11, 0x4

    .line 265
    .line 266
    cmp-long v5, v7, v11

    .line 267
    .line 268
    if-ltz v5, :cond_c

    .line 269
    .line 270
    const-wide/16 v11, 0xb

    .line 271
    .line 272
    cmp-long v5, v7, v11

    .line 273
    .line 274
    if-gtz v5, :cond_c

    .line 275
    .line 276
    new-instance v5, Lai/a;

    .line 277
    .line 278
    aget-object v9, v6, v4

    .line 279
    .line 280
    const/4 v11, 0x6

    .line 281
    invoke-direct {v5, v11}, Lai/a;-><init>(I)V

    .line 282
    .line 283
    .line 284
    iput-wide v7, v5, Lai/a;->b:J

    .line 285
    .line 286
    array-length v7, v9

    .line 287
    const/4 v8, 0x0

    .line 288
    if-nez v7, :cond_9

    .line 289
    .line 290
    iput v8, v5, Lai/a;->a:I

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_9
    array-length v7, v9

    .line 294
    const/4 v11, 0x4

    .line 295
    if-ne v7, v11, :cond_b

    .line 296
    .line 297
    const/4 v7, 0x0

    .line 298
    :goto_5
    if-ge v8, v11, :cond_a

    .line 299
    .line 300
    aget-byte v12, v9, v8

    .line 301
    .line 302
    and-int/lit16 v12, v12, 0xff

    .line 303
    .line 304
    mul-int/lit8 v13, v8, 0x8

    .line 305
    .line 306
    shl-int/2addr v12, v13

    .line 307
    or-int/2addr v7, v12

    .line 308
    add-int/lit8 v8, v8, 0x1

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_a
    iput v7, v5, Lai/a;->a:I

    .line 312
    .line 313
    :goto_6
    aput-object v5, v2, v4

    .line 314
    .line 315
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_b
    new-instance v1, Lyh/c0;

    .line 319
    .line 320
    const-string v2, "Unsupported BCJ filter properties"

    .line 321
    .line 322
    invoke-direct {v1, v2}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v1

    .line 326
    :cond_c
    new-instance v1, Lyh/c0;

    .line 327
    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v3, "Unknown Filter ID "

    .line 331
    .line 332
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    aget-wide v3, v15, v4

    .line 336
    .line 337
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-direct {v1, v2}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v1

    .line 348
    :cond_d
    const/4 v4, 0x0

    .line 349
    :goto_8
    const-string v5, "Unsupported XZ filter chain"

    .line 350
    .line 351
    move v6, v10

    .line 352
    if-ge v4, v6, :cond_f

    .line 353
    .line 354
    aget-object v7, v2, v4

    .line 355
    .line 356
    invoke-interface {v7}, Lyh/m;->b()Z

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    if-eqz v7, :cond_e

    .line 361
    .line 362
    add-int/lit8 v4, v4, 0x1

    .line 363
    .line 364
    move v10, v6

    .line 365
    goto :goto_8

    .line 366
    :cond_e
    new-instance v1, Lyh/c0;

    .line 367
    .line 368
    invoke-direct {v1, v5}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v1

    .line 372
    :cond_f
    aget-object v4, v2, v6

    .line 373
    .line 374
    invoke-interface {v4}, Lyh/m;->e()Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-eqz v4, :cond_17

    .line 379
    .line 380
    const/4 v4, 0x0

    .line 381
    const/4 v7, 0x0

    .line 382
    :goto_9
    if-ge v4, v14, :cond_11

    .line 383
    .line 384
    aget-object v8, v2, v4

    .line 385
    .line 386
    invoke-interface {v8}, Lyh/m;->h()Z

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    if-eqz v8, :cond_10

    .line 391
    .line 392
    add-int/lit8 v7, v7, 0x1

    .line 393
    .line 394
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_11
    const/4 v4, 0x3

    .line 398
    if-gt v7, v4, :cond_16

    .line 399
    .line 400
    if-ltz v3, :cond_14

    .line 401
    .line 402
    const/4 v4, 0x0

    .line 403
    const/4 v5, 0x0

    .line 404
    :goto_a
    if-ge v4, v14, :cond_12

    .line 405
    .line 406
    aget-object v7, v2, v4

    .line 407
    .line 408
    invoke-interface {v7}, Lyh/n;->f()I

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    add-int/2addr v5, v7

    .line 413
    add-int/lit8 v4, v4, 0x1

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_12
    if-gt v5, v3, :cond_13

    .line 417
    .line 418
    goto :goto_b

    .line 419
    :cond_13
    new-instance v1, Lyh/x;

    .line 420
    .line 421
    invoke-direct {v1, v5, v3}, Lyh/x;-><init>(II)V

    .line 422
    .line 423
    .line 424
    throw v1

    .line 425
    :cond_14
    :goto_b
    new-instance v3, Lyh/i;

    .line 426
    .line 427
    invoke-direct {v3, v1}, Lyh/i;-><init>(Lxg/b;)V

    .line 428
    .line 429
    .line 430
    iput-object v3, v0, Lyh/g;->b:Lyh/i;

    .line 431
    .line 432
    iput-object v3, v0, Lyh/g;->c:Ljava/io/InputStream;

    .line 433
    .line 434
    move v8, v6

    .line 435
    :goto_c
    if-ltz v8, :cond_15

    .line 436
    .line 437
    aget-object v1, v2, v8

    .line 438
    .line 439
    iget-object v3, v0, Lyh/g;->c:Ljava/io/InputStream;

    .line 440
    .line 441
    move-object/from16 v4, p5

    .line 442
    .line 443
    invoke-interface {v1, v3, v4}, Lyh/n;->c(Ljava/io/InputStream;Lyh/b;)Ljava/io/InputStream;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    iput-object v1, v0, Lyh/g;->c:Ljava/io/InputStream;

    .line 448
    .line 449
    add-int/lit8 v8, v8, -0x1

    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_15
    return-void

    .line 453
    :cond_16
    new-instance v1, Lyh/c0;

    .line 454
    .line 455
    invoke-direct {v1, v5}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v1

    .line 459
    :cond_17
    new-instance v1, Lyh/c0;

    .line 460
    .line 461
    invoke-direct {v1, v5}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v1

    .line 465
    :catch_0
    new-instance v1, Lyh/h;

    .line 466
    .line 467
    invoke-direct {v1, v9}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw v1

    .line 471
    :cond_18
    new-instance v1, Lyh/c0;

    .line 472
    .line 473
    invoke-direct {v1, v13}, Lyh/c0;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v1

    .line 477
    :cond_19
    new-instance v1, Lyh/h;

    .line 478
    .line 479
    invoke-direct {v1, v9}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v1

    .line 483
    :cond_1a
    new-instance v1, Lyh/r;

    .line 484
    .line 485
    invoke-direct {v1}, Lyh/r;-><init>()V

    .line 486
    .line 487
    .line 488
    goto :goto_e

    .line 489
    :goto_d
    throw v1

    .line 490
    :goto_e
    goto :goto_d
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lyh/g;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lyh/g;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lyh/g;->c:Ljava/io/InputStream;

    .line 8
    .line 9
    return-void
.end method

.method public final r()V
    .locals 8

    .line 1
    iget-object v0, p0, Lyh/g;->b:Lyh/i;

    .line 2
    .line 3
    iget-wide v0, v0, Lyh/i;->a:J

    .line 4
    .line 5
    iget-wide v2, p0, Lyh/g;->g:J

    .line 6
    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    cmp-long v6, v2, v0

    .line 14
    .line 15
    if-nez v6, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-wide v2, p0, Lyh/g;->f:J

    .line 18
    .line 19
    cmp-long v6, v2, v4

    .line 20
    .line 21
    if-eqz v6, :cond_2

    .line 22
    .line 23
    iget-wide v4, p0, Lyh/g;->j:J

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lyh/h;

    .line 31
    .line 32
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_2
    :goto_0
    const-wide/16 v2, 0x1

    .line 37
    .line 38
    add-long/2addr v2, v0

    .line 39
    const-wide/16 v4, 0x3

    .line 40
    .line 41
    and-long/2addr v0, v4

    .line 42
    iget-object v4, p0, Lyh/g;->a:Ljava/io/DataInputStream;

    .line 43
    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    cmp-long v7, v0, v5

    .line 47
    .line 48
    if-eqz v7, :cond_4

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    move-wide v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    new-instance v0, Lyh/h;

    .line 59
    .line 60
    invoke-direct {v0}, Lyh/h;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_4
    iget-object v0, p0, Lyh/g;->d:Lbi/a;

    .line 65
    .line 66
    iget v1, v0, Lbi/a;->a:I

    .line 67
    .line 68
    new-array v1, v1, [B

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 71
    .line 72
    .line 73
    iget-boolean v2, p0, Lyh/g;->e:Z

    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0}, Lbi/a;->a()[B

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    new-instance v1, Lyh/h;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "Integrity check ("

    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Lbi/a;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Ljava/lang/String;

    .line 100
    .line 101
    const-string v3, ") does not match"

    .line 102
    .line 103
    invoke-static {v0, v3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {v1, v0}, Lyh/h;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :cond_6
    :goto_1
    return-void
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lyh/g;->l:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lyh/g;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public final read([BII)I
    .locals 10

    .line 2
    iget-boolean v0, p0, Lyh/g;->k:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lyh/g;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    .line 4
    iget-boolean v3, p0, Lyh/g;->e:Z

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lyh/g;->d:Lbi/a;

    invoke-virtual {v3, p1, p2, v0}, Lbi/a;->b([BII)V

    .line 6
    :cond_1
    iget-wide p1, p0, Lyh/g;->j:J

    int-to-long v3, v0

    add-long/2addr p1, v3

    iput-wide p1, p0, Lyh/g;->j:J

    .line 7
    iget-object v3, p0, Lyh/g;->b:Lyh/i;

    iget-wide v3, v3, Lyh/i;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_5

    .line 8
    iget-wide v7, p0, Lyh/g;->h:J

    cmp-long v9, v3, v7

    if-gtz v9, :cond_5

    cmp-long v3, p1, v5

    if-ltz v3, :cond_5

    iget-wide v3, p0, Lyh/g;->f:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    cmp-long v5, p1, v3

    if-gtz v5, :cond_5

    :cond_2
    if-lt v0, p3, :cond_3

    cmp-long p3, p1, v3

    if-nez p3, :cond_7

    .line 9
    :cond_3
    iget-object p1, p0, Lyh/g;->c:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 10
    invoke-virtual {p0}, Lyh/g;->r()V

    .line 11
    iput-boolean v2, p0, Lyh/g;->k:Z

    goto :goto_0

    .line 12
    :cond_4
    new-instance p1, Lyh/h;

    invoke-direct {p1}, Lyh/h;-><init>()V

    throw p1

    .line 13
    :cond_5
    new-instance p1, Lyh/h;

    invoke-direct {p1}, Lyh/h;-><init>()V

    throw p1

    :cond_6
    if-ne v0, v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lyh/g;->r()V

    .line 15
    iput-boolean v2, p0, Lyh/g;->k:Z

    :cond_7
    :goto_0
    return v0
.end method
