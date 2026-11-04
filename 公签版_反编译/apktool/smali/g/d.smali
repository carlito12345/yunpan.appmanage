.class public final Lg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lg/d;->g:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lg/d;->h:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput v0, p0, Lg/d;->i:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lg/d;->a:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, v0, Lg/d;->d:I

    .line 9
    .line 10
    iput v2, v0, Lg/d;->f:I

    .line 11
    .line 12
    array-length v3, v1

    .line 13
    iput v3, v0, Lg/d;->e:I

    .line 14
    .line 15
    :cond_0
    iget v3, v0, Lg/d;->d:I

    .line 16
    .line 17
    iget v4, v0, Lg/d;->e:I

    .line 18
    .line 19
    iget-object v5, v0, Lg/d;->h:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    const/4 v8, 0x2

    .line 23
    const/16 v9, 0x80

    .line 24
    .line 25
    const/high16 v13, 0x1000000

    .line 26
    .line 27
    const/16 v14, -0x7e

    .line 28
    .line 29
    const/high16 v15, 0x10000

    .line 30
    .line 31
    const/16 v16, -0x7f

    .line 32
    .line 33
    const/16 v10, 0x100

    .line 34
    .line 35
    if-ge v3, v4, :cond_10

    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    iget-object v4, v0, Lg/d;->a:[B

    .line 43
    .line 44
    aget-byte v12, v4, v3

    .line 45
    .line 46
    and-int/lit8 v17, v12, 0x1f

    .line 47
    .line 48
    if-nez v17, :cond_9

    .line 49
    .line 50
    and-int/lit8 v17, v12, 0x20

    .line 51
    .line 52
    if-nez v17, :cond_9

    .line 53
    .line 54
    and-int/lit16 v12, v12, 0xc0

    .line 55
    .line 56
    if-nez v12, :cond_9

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    aget-byte v3, v4, v3

    .line 61
    .line 62
    if-nez v3, :cond_9

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sub-int/2addr v3, v11

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v12, 0x0

    .line 71
    :goto_0
    if-ltz v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    instance-of v6, v4, Ljava/lang/Integer;

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-object v6, v4

    .line 83
    check-cast v6, [B

    .line 84
    .line 85
    array-length v6, v6

    .line 86
    sub-int/2addr v6, v7

    .line 87
    add-int/2addr v12, v6

    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    :goto_1
    if-ltz v3, :cond_8

    .line 92
    .line 93
    iget v6, v0, Lg/d;->d:I

    .line 94
    .line 95
    check-cast v4, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    sub-int/2addr v6, v4

    .line 102
    add-int/2addr v6, v12

    .line 103
    if-ge v6, v9, :cond_4

    .line 104
    .line 105
    new-array v4, v11, [B

    .line 106
    .line 107
    int-to-byte v6, v6

    .line 108
    aput-byte v6, v4, v2

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    if-ge v6, v10, :cond_5

    .line 112
    .line 113
    new-array v4, v8, [B

    .line 114
    .line 115
    aput-byte v16, v4, v2

    .line 116
    .line 117
    int-to-byte v6, v6

    .line 118
    aput-byte v6, v4, v11

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    if-ge v6, v15, :cond_6

    .line 122
    .line 123
    new-array v4, v7, [B

    .line 124
    .line 125
    aput-byte v14, v4, v2

    .line 126
    .line 127
    shr-int/lit8 v12, v6, 0x8

    .line 128
    .line 129
    int-to-byte v12, v12

    .line 130
    aput-byte v12, v4, v11

    .line 131
    .line 132
    int-to-byte v6, v6

    .line 133
    aput-byte v6, v4, v8

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    if-ge v6, v13, :cond_7

    .line 137
    .line 138
    const/4 v4, 0x4

    .line 139
    new-array v12, v4, [B

    .line 140
    .line 141
    const/16 v4, -0x7d

    .line 142
    .line 143
    aput-byte v4, v12, v2

    .line 144
    .line 145
    shr-int/lit8 v4, v6, 0x10

    .line 146
    .line 147
    int-to-byte v4, v4

    .line 148
    aput-byte v4, v12, v11

    .line 149
    .line 150
    shr-int/lit8 v4, v6, 0x8

    .line 151
    .line 152
    int-to-byte v4, v4

    .line 153
    aput-byte v4, v12, v8

    .line 154
    .line 155
    int-to-byte v4, v6

    .line 156
    aput-byte v4, v12, v7

    .line 157
    .line 158
    :goto_2
    move-object v4, v12

    .line 159
    goto :goto_3

    .line 160
    :cond_7
    const/4 v4, 0x5

    .line 161
    new-array v12, v4, [B

    .line 162
    .line 163
    const/16 v4, -0x7c

    .line 164
    .line 165
    aput-byte v4, v12, v2

    .line 166
    .line 167
    shr-int/lit8 v4, v6, 0x18

    .line 168
    .line 169
    int-to-byte v4, v4

    .line 170
    aput-byte v4, v12, v11

    .line 171
    .line 172
    shr-int/lit8 v4, v6, 0x10

    .line 173
    .line 174
    int-to-byte v4, v4

    .line 175
    aput-byte v4, v12, v8

    .line 176
    .line 177
    shr-int/lit8 v4, v6, 0x8

    .line 178
    .line 179
    int-to-byte v4, v4

    .line 180
    aput-byte v4, v12, v7

    .line 181
    .line 182
    int-to-byte v4, v6

    .line 183
    const/4 v6, 0x4

    .line 184
    aput-byte v4, v12, v6

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :goto_3
    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    iget v3, v0, Lg/d;->g:I

    .line 191
    .line 192
    sub-int/2addr v3, v11

    .line 193
    iput v3, v0, Lg/d;->g:I

    .line 194
    .line 195
    iget v3, v0, Lg/d;->i:I

    .line 196
    .line 197
    array-length v4, v4

    .line 198
    sub-int/2addr v4, v7

    .line 199
    add-int/2addr v4, v3

    .line 200
    iput v4, v0, Lg/d;->i:I

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_8
    new-instance v1, Ljava/io/IOException;

    .line 204
    .line 205
    const-string v2, "EOC does not have matching indefinite-length tag"

    .line 206
    .line 207
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v1

    .line 211
    :cond_9
    :goto_4
    iget v3, v0, Lg/d;->d:I

    .line 212
    .line 213
    add-int/2addr v3, v11

    .line 214
    iput v3, v0, Lg/d;->d:I

    .line 215
    .line 216
    :goto_5
    iget v3, v0, Lg/d;->d:I

    .line 217
    .line 218
    iget v4, v0, Lg/d;->e:I

    .line 219
    .line 220
    if-ne v3, v4, :cond_a

    .line 221
    .line 222
    :goto_6
    const/4 v6, 0x0

    .line 223
    goto :goto_8

    .line 224
    :cond_a
    iget-object v6, v0, Lg/d;->a:[B

    .line 225
    .line 226
    add-int/lit8 v12, v3, 0x1

    .line 227
    .line 228
    iput v12, v0, Lg/d;->d:I

    .line 229
    .line 230
    aget-byte v3, v6, v3

    .line 231
    .line 232
    and-int/lit16 v6, v3, 0x80

    .line 233
    .line 234
    if-ne v6, v9, :cond_b

    .line 235
    .line 236
    and-int/lit8 v18, v3, 0x7f

    .line 237
    .line 238
    if-nez v18, :cond_b

    .line 239
    .line 240
    new-instance v3, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-direct {v3, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    iget v3, v0, Lg/d;->g:I

    .line 249
    .line 250
    add-int/2addr v3, v11

    .line 251
    iput v3, v0, Lg/d;->g:I

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_b
    if-ne v6, v9, :cond_e

    .line 255
    .line 256
    and-int/lit8 v3, v3, 0x7f

    .line 257
    .line 258
    const/4 v6, 0x4

    .line 259
    if-gt v3, v6, :cond_d

    .line 260
    .line 261
    sub-int/2addr v4, v12

    .line 262
    add-int/lit8 v6, v3, 0x1

    .line 263
    .line 264
    if-lt v4, v6, :cond_c

    .line 265
    .line 266
    const/4 v4, 0x0

    .line 267
    const/4 v6, 0x0

    .line 268
    :goto_7
    if-ge v4, v3, :cond_f

    .line 269
    .line 270
    shl-int/lit8 v6, v6, 0x8

    .line 271
    .line 272
    iget-object v11, v0, Lg/d;->a:[B

    .line 273
    .line 274
    iget v12, v0, Lg/d;->d:I

    .line 275
    .line 276
    add-int/lit8 v13, v12, 0x1

    .line 277
    .line 278
    iput v13, v0, Lg/d;->d:I

    .line 279
    .line 280
    aget-byte v11, v11, v12

    .line 281
    .line 282
    and-int/lit16 v11, v11, 0xff

    .line 283
    .line 284
    add-int/2addr v6, v11

    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    .line 287
    const/high16 v13, 0x1000000

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 291
    .line 292
    const-string v2, "Too little data"

    .line 293
    .line 294
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v1

    .line 298
    :cond_d
    new-instance v1, Ljava/io/IOException;

    .line 299
    .line 300
    const-string v2, "Too much data"

    .line 301
    .line 302
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v1

    .line 306
    :cond_e
    and-int/lit8 v6, v3, 0x7f

    .line 307
    .line 308
    :cond_f
    :goto_8
    iget v3, v0, Lg/d;->d:I

    .line 309
    .line 310
    add-int/2addr v3, v6

    .line 311
    iput v3, v0, Lg/d;->d:I

    .line 312
    .line 313
    iget v4, v0, Lg/d;->g:I

    .line 314
    .line 315
    if-nez v4, :cond_0

    .line 316
    .line 317
    iget v4, v0, Lg/d;->e:I

    .line 318
    .line 319
    sub-int/2addr v4, v3

    .line 320
    iput v3, v0, Lg/d;->e:I

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_10
    const/4 v4, 0x0

    .line 324
    :goto_9
    iget v3, v0, Lg/d;->e:I

    .line 325
    .line 326
    iget v6, v0, Lg/d;->i:I

    .line 327
    .line 328
    add-int/2addr v3, v6

    .line 329
    add-int/2addr v3, v4

    .line 330
    new-array v3, v3, [B

    .line 331
    .line 332
    iput-object v3, v0, Lg/d;->b:[B

    .line 333
    .line 334
    iput v2, v0, Lg/d;->d:I

    .line 335
    .line 336
    iput v2, v0, Lg/d;->c:I

    .line 337
    .line 338
    iput v2, v0, Lg/d;->f:I

    .line 339
    .line 340
    :goto_a
    iget v3, v0, Lg/d;->d:I

    .line 341
    .line 342
    iget v6, v0, Lg/d;->e:I

    .line 343
    .line 344
    if-ge v3, v6, :cond_1a

    .line 345
    .line 346
    invoke-virtual/range {p0 .. p0}, Lg/d;->b()V

    .line 347
    .line 348
    .line 349
    iget v3, v0, Lg/d;->d:I

    .line 350
    .line 351
    iget v6, v0, Lg/d;->e:I

    .line 352
    .line 353
    if-ne v3, v6, :cond_11

    .line 354
    .line 355
    :goto_b
    const/16 v12, -0x7c

    .line 356
    .line 357
    const/16 v13, -0x7d

    .line 358
    .line 359
    goto/16 :goto_10

    .line 360
    .line 361
    :cond_11
    iget-object v6, v0, Lg/d;->a:[B

    .line 362
    .line 363
    add-int/lit8 v11, v3, 0x1

    .line 364
    .line 365
    iput v11, v0, Lg/d;->d:I

    .line 366
    .line 367
    aget-byte v3, v6, v3

    .line 368
    .line 369
    and-int/lit16 v6, v3, 0x80

    .line 370
    .line 371
    if-ne v6, v9, :cond_12

    .line 372
    .line 373
    and-int/lit8 v11, v3, 0x7f

    .line 374
    .line 375
    if-nez v11, :cond_12

    .line 376
    .line 377
    iget v3, v0, Lg/d;->f:I

    .line 378
    .line 379
    add-int/lit8 v6, v3, 0x1

    .line 380
    .line 381
    iput v6, v0, Lg/d;->f:I

    .line 382
    .line 383
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    check-cast v3, [B

    .line 388
    .line 389
    iget-object v6, v0, Lg/d;->b:[B

    .line 390
    .line 391
    iget v11, v0, Lg/d;->c:I

    .line 392
    .line 393
    array-length v12, v3

    .line 394
    invoke-static {v3, v2, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    .line 396
    .line 397
    iget v6, v0, Lg/d;->c:I

    .line 398
    .line 399
    array-length v3, v3

    .line 400
    add-int/2addr v6, v3

    .line 401
    iput v6, v0, Lg/d;->c:I

    .line 402
    .line 403
    goto :goto_b

    .line 404
    :cond_12
    if-ne v6, v9, :cond_13

    .line 405
    .line 406
    and-int/lit8 v3, v3, 0x7f

    .line 407
    .line 408
    const/4 v6, 0x0

    .line 409
    const/4 v11, 0x0

    .line 410
    :goto_c
    if-ge v6, v3, :cond_14

    .line 411
    .line 412
    shl-int/lit8 v11, v11, 0x8

    .line 413
    .line 414
    iget-object v12, v0, Lg/d;->a:[B

    .line 415
    .line 416
    iget v13, v0, Lg/d;->d:I

    .line 417
    .line 418
    add-int/lit8 v2, v13, 0x1

    .line 419
    .line 420
    iput v2, v0, Lg/d;->d:I

    .line 421
    .line 422
    aget-byte v2, v12, v13

    .line 423
    .line 424
    and-int/lit16 v2, v2, 0xff

    .line 425
    .line 426
    add-int/2addr v11, v2

    .line 427
    add-int/lit8 v6, v6, 0x1

    .line 428
    .line 429
    const/4 v2, 0x0

    .line 430
    goto :goto_c

    .line 431
    :cond_13
    and-int/lit8 v11, v3, 0x7f

    .line 432
    .line 433
    :cond_14
    if-ge v11, v9, :cond_15

    .line 434
    .line 435
    iget-object v2, v0, Lg/d;->b:[B

    .line 436
    .line 437
    iget v3, v0, Lg/d;->c:I

    .line 438
    .line 439
    add-int/lit8 v6, v3, 0x1

    .line 440
    .line 441
    iput v6, v0, Lg/d;->c:I

    .line 442
    .line 443
    int-to-byte v6, v11

    .line 444
    aput-byte v6, v2, v3

    .line 445
    .line 446
    :goto_d
    const/4 v7, 0x5

    .line 447
    const/16 v12, -0x7c

    .line 448
    .line 449
    const/16 v13, -0x7d

    .line 450
    .line 451
    goto/16 :goto_e

    .line 452
    .line 453
    :cond_15
    if-ge v11, v10, :cond_16

    .line 454
    .line 455
    iget-object v2, v0, Lg/d;->b:[B

    .line 456
    .line 457
    iget v3, v0, Lg/d;->c:I

    .line 458
    .line 459
    add-int/lit8 v6, v3, 0x1

    .line 460
    .line 461
    iput v6, v0, Lg/d;->c:I

    .line 462
    .line 463
    aput-byte v16, v2, v3

    .line 464
    .line 465
    add-int/2addr v3, v8

    .line 466
    iput v3, v0, Lg/d;->c:I

    .line 467
    .line 468
    int-to-byte v3, v11

    .line 469
    aput-byte v3, v2, v6

    .line 470
    .line 471
    goto :goto_d

    .line 472
    :cond_16
    if-ge v11, v15, :cond_17

    .line 473
    .line 474
    iget-object v2, v0, Lg/d;->b:[B

    .line 475
    .line 476
    iget v3, v0, Lg/d;->c:I

    .line 477
    .line 478
    add-int/lit8 v6, v3, 0x1

    .line 479
    .line 480
    iput v6, v0, Lg/d;->c:I

    .line 481
    .line 482
    aput-byte v14, v2, v3

    .line 483
    .line 484
    add-int/lit8 v12, v3, 0x2

    .line 485
    .line 486
    iput v12, v0, Lg/d;->c:I

    .line 487
    .line 488
    shr-int/lit8 v13, v11, 0x8

    .line 489
    .line 490
    int-to-byte v13, v13

    .line 491
    aput-byte v13, v2, v6

    .line 492
    .line 493
    add-int/2addr v3, v7

    .line 494
    iput v3, v0, Lg/d;->c:I

    .line 495
    .line 496
    int-to-byte v3, v11

    .line 497
    aput-byte v3, v2, v12

    .line 498
    .line 499
    goto :goto_d

    .line 500
    :cond_17
    const/high16 v2, 0x1000000

    .line 501
    .line 502
    if-ge v11, v2, :cond_18

    .line 503
    .line 504
    iget-object v3, v0, Lg/d;->b:[B

    .line 505
    .line 506
    iget v6, v0, Lg/d;->c:I

    .line 507
    .line 508
    add-int/lit8 v12, v6, 0x1

    .line 509
    .line 510
    iput v12, v0, Lg/d;->c:I

    .line 511
    .line 512
    const/16 v13, -0x7d

    .line 513
    .line 514
    aput-byte v13, v3, v6

    .line 515
    .line 516
    add-int/lit8 v2, v6, 0x2

    .line 517
    .line 518
    iput v2, v0, Lg/d;->c:I

    .line 519
    .line 520
    shr-int/lit8 v7, v11, 0x10

    .line 521
    .line 522
    int-to-byte v7, v7

    .line 523
    aput-byte v7, v3, v12

    .line 524
    .line 525
    add-int/lit8 v7, v6, 0x3

    .line 526
    .line 527
    iput v7, v0, Lg/d;->c:I

    .line 528
    .line 529
    shr-int/lit8 v12, v11, 0x8

    .line 530
    .line 531
    int-to-byte v12, v12

    .line 532
    aput-byte v12, v3, v2

    .line 533
    .line 534
    const/4 v2, 0x4

    .line 535
    add-int/2addr v6, v2

    .line 536
    iput v6, v0, Lg/d;->c:I

    .line 537
    .line 538
    int-to-byte v6, v11

    .line 539
    aput-byte v6, v3, v7

    .line 540
    .line 541
    const/4 v7, 0x5

    .line 542
    const/16 v12, -0x7c

    .line 543
    .line 544
    goto :goto_e

    .line 545
    :cond_18
    const/4 v2, 0x4

    .line 546
    const/16 v13, -0x7d

    .line 547
    .line 548
    iget-object v3, v0, Lg/d;->b:[B

    .line 549
    .line 550
    iget v6, v0, Lg/d;->c:I

    .line 551
    .line 552
    add-int/lit8 v7, v6, 0x1

    .line 553
    .line 554
    iput v7, v0, Lg/d;->c:I

    .line 555
    .line 556
    const/16 v12, -0x7c

    .line 557
    .line 558
    aput-byte v12, v3, v6

    .line 559
    .line 560
    add-int/lit8 v2, v6, 0x2

    .line 561
    .line 562
    iput v2, v0, Lg/d;->c:I

    .line 563
    .line 564
    shr-int/lit8 v8, v11, 0x18

    .line 565
    .line 566
    int-to-byte v8, v8

    .line 567
    aput-byte v8, v3, v7

    .line 568
    .line 569
    add-int/lit8 v7, v6, 0x3

    .line 570
    .line 571
    iput v7, v0, Lg/d;->c:I

    .line 572
    .line 573
    shr-int/lit8 v8, v11, 0x10

    .line 574
    .line 575
    int-to-byte v8, v8

    .line 576
    aput-byte v8, v3, v2

    .line 577
    .line 578
    add-int/lit8 v2, v6, 0x4

    .line 579
    .line 580
    iput v2, v0, Lg/d;->c:I

    .line 581
    .line 582
    shr-int/lit8 v8, v11, 0x8

    .line 583
    .line 584
    int-to-byte v8, v8

    .line 585
    aput-byte v8, v3, v7

    .line 586
    .line 587
    const/4 v7, 0x5

    .line 588
    add-int/2addr v6, v7

    .line 589
    iput v6, v0, Lg/d;->c:I

    .line 590
    .line 591
    int-to-byte v6, v11

    .line 592
    aput-byte v6, v3, v2

    .line 593
    .line 594
    :goto_e
    const/4 v2, 0x0

    .line 595
    :goto_f
    if-ge v2, v11, :cond_19

    .line 596
    .line 597
    iget-object v3, v0, Lg/d;->b:[B

    .line 598
    .line 599
    iget v6, v0, Lg/d;->c:I

    .line 600
    .line 601
    add-int/lit8 v8, v6, 0x1

    .line 602
    .line 603
    iput v8, v0, Lg/d;->c:I

    .line 604
    .line 605
    iget-object v8, v0, Lg/d;->a:[B

    .line 606
    .line 607
    iget v7, v0, Lg/d;->d:I

    .line 608
    .line 609
    add-int/lit8 v9, v7, 0x1

    .line 610
    .line 611
    iput v9, v0, Lg/d;->d:I

    .line 612
    .line 613
    aget-byte v7, v8, v7

    .line 614
    .line 615
    aput-byte v7, v3, v6

    .line 616
    .line 617
    add-int/lit8 v2, v2, 0x1

    .line 618
    .line 619
    const/4 v7, 0x5

    .line 620
    const/16 v9, 0x80

    .line 621
    .line 622
    goto :goto_f

    .line 623
    :cond_19
    :goto_10
    const/4 v2, 0x0

    .line 624
    const/4 v7, 0x3

    .line 625
    const/4 v8, 0x2

    .line 626
    const/16 v9, 0x80

    .line 627
    .line 628
    goto/16 :goto_a

    .line 629
    .line 630
    :cond_1a
    iget-object v2, v0, Lg/d;->b:[B

    .line 631
    .line 632
    iget v3, v0, Lg/d;->i:I

    .line 633
    .line 634
    add-int/2addr v3, v6

    .line 635
    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    .line 637
    .line 638
    iget-object v1, v0, Lg/d;->b:[B

    .line 639
    .line 640
    return-object v1
.end method

.method public final b()V
    .locals 5

    .line 1
    iget v0, p0, Lg/d;->d:I

    .line 2
    .line 3
    iget v1, p0, Lg/d;->e:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lg/d;->a:[B

    .line 9
    .line 10
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    iput v2, p0, Lg/d;->d:I

    .line 13
    .line 14
    aget-byte v3, v1, v0

    .line 15
    .line 16
    and-int/lit8 v4, v3, 0x1f

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    and-int/lit8 v4, v3, 0x20

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    and-int/lit16 v4, v3, 0xc0

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    aget-byte v1, v1, v2

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    iput v0, p0, Lg/d;->d:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lg/d;->b()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lg/d;->b:[B

    .line 41
    .line 42
    iget v1, p0, Lg/d;->c:I

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    iput v2, p0, Lg/d;->c:I

    .line 47
    .line 48
    int-to-byte v2, v3

    .line 49
    aput-byte v2, v0, v1

    .line 50
    .line 51
    :goto_0
    return-void
.end method
