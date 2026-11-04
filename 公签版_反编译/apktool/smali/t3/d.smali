.class public final Lt3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public a:Lf2/u0;

.field public b:Ll2/j0;

.field public c:I

.field public d:J

.field public e:Lt3/b;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lt3/d;->c:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Lt3/d;->d:J

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, Lt3/d;->f:I

    .line 13
    .line 14
    iput-wide v0, p0, Lt3/d;->g:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 2

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iput-object p1, p0, Lt3/d;->a:Lf2/u0;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lf2/u0;->z(II)Ll2/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lt3/d;->b:Ll2/j0;

    .line 12
    .line 13
    invoke-interface {p1}, Ll2/q;->q()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lt3/d;->b:Ll2/j0;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, v0, Lt3/d;->c:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x1

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v1, :cond_1a

    .line 17
    .line 18
    const/16 v6, 0x8

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    const-wide/16 v8, -0x1

    .line 22
    .line 23
    if-eq v1, v5, :cond_18

    .line 24
    .line 25
    const/4 v10, 0x3

    .line 26
    if-eq v1, v7, :cond_6

    .line 27
    .line 28
    if-eq v1, v10, :cond_3

    .line 29
    .line 30
    if-ne v1, v4, :cond_2

    .line 31
    .line 32
    iget-wide v6, v0, Lt3/d;->g:J

    .line 33
    .line 34
    cmp-long v1, v6, v8

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v5, 0x0

    .line 40
    :goto_0
    invoke-static {v5}, La9/o;->t(Z)V

    .line 41
    .line 42
    .line 43
    iget-wide v4, v0, Lt3/d;->g:J

    .line 44
    .line 45
    move-object/from16 v1, p1

    .line 46
    .line 47
    check-cast v1, Ll2/l;

    .line 48
    .line 49
    iget-wide v6, v1, Ll2/l;->d:J

    .line 50
    .line 51
    sub-long/2addr v4, v6

    .line 52
    iget-object v1, v0, Lt3/d;->e:Lt3/b;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-object/from16 v6, p1

    .line 58
    .line 59
    check-cast v6, Ll2/l;

    .line 60
    .line 61
    invoke-interface {v1, v6, v4, v5}, Lt3/b;->a(Ll2/l;J)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const/4 v2, -0x1

    .line 68
    :cond_1
    return v2

    .line 69
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_3
    move-object/from16 v1, p1

    .line 76
    .line 77
    check-cast v1, Ll2/l;

    .line 78
    .line 79
    iput v2, v1, Ll2/l;->f:I

    .line 80
    .line 81
    new-instance v1, Lu1/q;

    .line 82
    .line 83
    invoke-direct {v1, v6}, Lu1/q;-><init>(I)V

    .line 84
    .line 85
    .line 86
    move-object/from16 v3, p1

    .line 87
    .line 88
    check-cast v3, Ll2/l;

    .line 89
    .line 90
    const v5, 0x64617461

    .line 91
    .line 92
    .line 93
    invoke-static {v5, v3, v1}, Lt3/f;->b(ILl2/l;Lu1/q;)Lai/a;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v3, v6, v2}, Ll2/l;->o(IZ)Z

    .line 98
    .line 99
    .line 100
    iget-wide v5, v3, Ll2/l;->d:J

    .line 101
    .line 102
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    iget-wide v6, v1, Lai/a;->b:J

    .line 107
    .line 108
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v5, Ljava/lang/Long;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    iput v5, v0, Lt3/d;->f:I

    .line 125
    .line 126
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    iget-wide v10, v0, Lt3/d;->d:J

    .line 135
    .line 136
    cmp-long v1, v10, v8

    .line 137
    .line 138
    if-eqz v1, :cond_4

    .line 139
    .line 140
    const-wide v12, 0xffffffffL

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    cmp-long v1, v5, v12

    .line 146
    .line 147
    if-nez v1, :cond_4

    .line 148
    .line 149
    move-wide v5, v10

    .line 150
    :cond_4
    iget v1, v0, Lt3/d;->f:I

    .line 151
    .line 152
    int-to-long v10, v1

    .line 153
    add-long/2addr v10, v5

    .line 154
    iput-wide v10, v0, Lt3/d;->g:J

    .line 155
    .line 156
    iget-wide v5, v3, Ll2/l;->c:J

    .line 157
    .line 158
    cmp-long v1, v5, v8

    .line 159
    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    cmp-long v1, v10, v5

    .line 163
    .line 164
    if-lez v1, :cond_5

    .line 165
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v3, "Data exceeds input length: "

    .line 169
    .line 170
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-wide v7, v0, Lt3/d;->g:J

    .line 174
    .line 175
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v3, ", "

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iput-wide v5, v0, Lt3/d;->g:J

    .line 194
    .line 195
    :cond_5
    iget-object v1, v0, Lt3/d;->e:Lt3/b;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iget v3, v0, Lt3/d;->f:I

    .line 201
    .line 202
    iget-wide v5, v0, Lt3/d;->g:J

    .line 203
    .line 204
    invoke-interface {v1, v3, v5, v6}, Lt3/b;->c(IJ)V

    .line 205
    .line 206
    .line 207
    iput v4, v0, Lt3/d;->c:I

    .line 208
    .line 209
    return v2

    .line 210
    :cond_6
    new-instance v1, Lu1/q;

    .line 211
    .line 212
    const/16 v3, 0x10

    .line 213
    .line 214
    invoke-direct {v1, v3}, Lu1/q;-><init>(I)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v6, p1

    .line 218
    .line 219
    check-cast v6, Ll2/l;

    .line 220
    .line 221
    const v7, 0x666d7420

    .line 222
    .line 223
    .line 224
    invoke-static {v7, v6, v1}, Lt3/f;->b(ILl2/l;Lu1/q;)Lai/a;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    const-wide/16 v8, 0x10

    .line 229
    .line 230
    iget-wide v11, v7, Lai/a;->b:J

    .line 231
    .line 232
    cmp-long v7, v11, v8

    .line 233
    .line 234
    if-ltz v7, :cond_7

    .line 235
    .line 236
    const/4 v7, 0x1

    .line 237
    goto :goto_1

    .line 238
    :cond_7
    const/4 v7, 0x0

    .line 239
    :goto_1
    invoke-static {v7}, La9/o;->t(Z)V

    .line 240
    .line 241
    .line 242
    iget-object v7, v1, Lu1/q;->a:[B

    .line 243
    .line 244
    invoke-virtual {v6, v7, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Lu1/q;->u()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    invoke-virtual {v1}, Lu1/q;->u()I

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    invoke-virtual {v1}, Lu1/q;->t()I

    .line 259
    .line 260
    .line 261
    move-result v16

    .line 262
    invoke-virtual {v1}, Lu1/q;->t()I

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Lu1/q;->u()I

    .line 266
    .line 267
    .line 268
    move-result v18

    .line 269
    invoke-virtual {v1}, Lu1/q;->u()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    long-to-int v7, v11

    .line 274
    sub-int/2addr v7, v3

    .line 275
    const v3, 0xfffe

    .line 276
    .line 277
    .line 278
    if-lez v7, :cond_10

    .line 279
    .line 280
    new-array v8, v7, [B

    .line 281
    .line 282
    move-object/from16 v9, p1

    .line 283
    .line 284
    check-cast v9, Ll2/l;

    .line 285
    .line 286
    invoke-virtual {v9, v8, v2, v7, v2}, Ll2/l;->c([BIIZ)Z

    .line 287
    .line 288
    .line 289
    if-ne v6, v3, :cond_e

    .line 290
    .line 291
    const/16 v9, 0x18

    .line 292
    .line 293
    if-ne v7, v9, :cond_e

    .line 294
    .line 295
    new-instance v6, Lu1/q;

    .line 296
    .line 297
    invoke-direct {v6, v8}, Lu1/q;-><init>([B)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6}, Lu1/q;->u()I

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6}, Lu1/q;->u()I

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-eqz v7, :cond_9

    .line 308
    .line 309
    if-ne v7, v1, :cond_8

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v3, "validBits ( "

    .line 315
    .line 316
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v3, ")  != bitsPerSample( "

    .line 323
    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v1, ") are not supported"

    .line 331
    .line 332
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    throw v1

    .line 344
    :cond_9
    :goto_2
    invoke-virtual {v6}, Lu1/q;->t()I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    shr-int/lit8 v9, v7, 0x12

    .line 349
    .line 350
    if-nez v9, :cond_f

    .line 351
    .line 352
    if-eqz v7, :cond_b

    .line 353
    .line 354
    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    if-ne v9, v15, :cond_a

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v2, "invalid number of channels ("

    .line 364
    .line 365
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v2, ") in channel mask "

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    throw v1

    .line 392
    :cond_b
    :goto_3
    invoke-virtual {v6}, Lu1/q;->u()I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    const/16 v9, 0xe

    .line 397
    .line 398
    new-array v11, v9, [B

    .line 399
    .line 400
    invoke-virtual {v6, v2, v9, v11}, Lu1/q;->l(II[B)V

    .line 401
    .line 402
    .line 403
    sget-object v6, Lt3/f;->a:[B

    .line 404
    .line 405
    invoke-static {v11, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    if-nez v6, :cond_d

    .line 410
    .line 411
    sget-object v6, Lt3/f;->b:[B

    .line 412
    .line 413
    invoke-static {v11, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 414
    .line 415
    .line 416
    move-result v6

    .line 417
    if-eqz v6, :cond_c

    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_c
    const-string v1, "invalid wav format extension guid"

    .line 421
    .line 422
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    throw v1

    .line 427
    :cond_d
    :goto_4
    move v6, v7

    .line 428
    :cond_e
    move-object/from16 v17, v8

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string v2, "invalid channel mask "

    .line 434
    .line 435
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    throw v1

    .line 450
    :cond_10
    sget-object v7, Lu1/f0;->b:[B

    .line 451
    .line 452
    move-object/from16 v17, v7

    .line 453
    .line 454
    :goto_5
    move-object/from16 v7, p1

    .line 455
    .line 456
    check-cast v7, Ll2/l;

    .line 457
    .line 458
    invoke-virtual {v7}, Ll2/l;->d()J

    .line 459
    .line 460
    .line 461
    move-result-wide v8

    .line 462
    iget-wide v11, v7, Ll2/l;->d:J

    .line 463
    .line 464
    sub-long/2addr v8, v11

    .line 465
    long-to-int v9, v8

    .line 466
    invoke-virtual {v7, v9, v2}, Ll2/l;->o(IZ)Z

    .line 467
    .line 468
    .line 469
    new-instance v7, Lt3/e;

    .line 470
    .line 471
    move-object v13, v7

    .line 472
    move v14, v6

    .line 473
    move/from16 v19, v1

    .line 474
    .line 475
    invoke-direct/range {v13 .. v19}, Lt3/e;-><init>(III[BII)V

    .line 476
    .line 477
    .line 478
    const/16 v8, 0x11

    .line 479
    .line 480
    if-ne v6, v8, :cond_11

    .line 481
    .line 482
    new-instance v1, Lt3/a;

    .line 483
    .line 484
    iget-object v3, v0, Lt3/d;->a:Lf2/u0;

    .line 485
    .line 486
    iget-object v4, v0, Lt3/d;->b:Ll2/j0;

    .line 487
    .line 488
    invoke-direct {v1, v3, v4, v7}, Lt3/a;-><init>(Lf2/u0;Ll2/j0;Lt3/e;)V

    .line 489
    .line 490
    .line 491
    iput-object v1, v0, Lt3/d;->e:Lt3/b;

    .line 492
    .line 493
    goto/16 :goto_8

    .line 494
    .line 495
    :cond_11
    const/4 v8, 0x6

    .line 496
    if-ne v6, v8, :cond_12

    .line 497
    .line 498
    new-instance v1, Lt3/c;

    .line 499
    .line 500
    iget-object v3, v0, Lt3/d;->a:Lf2/u0;

    .line 501
    .line 502
    iget-object v4, v0, Lt3/d;->b:Ll2/j0;

    .line 503
    .line 504
    const-string v23, "audio/g711-alaw"

    .line 505
    .line 506
    const/16 v24, -0x1

    .line 507
    .line 508
    move-object/from16 v19, v1

    .line 509
    .line 510
    move-object/from16 v20, v3

    .line 511
    .line 512
    move-object/from16 v21, v4

    .line 513
    .line 514
    move-object/from16 v22, v7

    .line 515
    .line 516
    invoke-direct/range {v19 .. v24}, Lt3/c;-><init>(Lf2/u0;Ll2/j0;Lt3/e;Ljava/lang/String;I)V

    .line 517
    .line 518
    .line 519
    iput-object v1, v0, Lt3/d;->e:Lt3/b;

    .line 520
    .line 521
    goto :goto_8

    .line 522
    :cond_12
    const/4 v8, 0x7

    .line 523
    if-ne v6, v8, :cond_13

    .line 524
    .line 525
    new-instance v1, Lt3/c;

    .line 526
    .line 527
    iget-object v3, v0, Lt3/d;->a:Lf2/u0;

    .line 528
    .line 529
    iget-object v4, v0, Lt3/d;->b:Ll2/j0;

    .line 530
    .line 531
    const-string v23, "audio/g711-mlaw"

    .line 532
    .line 533
    const/16 v24, -0x1

    .line 534
    .line 535
    move-object/from16 v19, v1

    .line 536
    .line 537
    move-object/from16 v20, v3

    .line 538
    .line 539
    move-object/from16 v21, v4

    .line 540
    .line 541
    move-object/from16 v22, v7

    .line 542
    .line 543
    invoke-direct/range {v19 .. v24}, Lt3/c;-><init>(Lf2/u0;Ll2/j0;Lt3/e;Ljava/lang/String;I)V

    .line 544
    .line 545
    .line 546
    iput-object v1, v0, Lt3/d;->e:Lt3/b;

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_13
    if-eq v6, v5, :cond_16

    .line 550
    .line 551
    if-eq v6, v10, :cond_14

    .line 552
    .line 553
    if-eq v6, v3, :cond_16

    .line 554
    .line 555
    const/16 v24, 0x0

    .line 556
    .line 557
    goto :goto_7

    .line 558
    :cond_14
    const/16 v3, 0x20

    .line 559
    .line 560
    if-ne v1, v3, :cond_15

    .line 561
    .line 562
    goto :goto_6

    .line 563
    :cond_15
    const/4 v4, 0x0

    .line 564
    :goto_6
    move/from16 v24, v4

    .line 565
    .line 566
    goto :goto_7

    .line 567
    :cond_16
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 568
    .line 569
    invoke-static {v1, v3}, Lu1/f0;->t(ILjava/nio/ByteOrder;)I

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    move/from16 v24, v1

    .line 574
    .line 575
    :goto_7
    if-eqz v24, :cond_17

    .line 576
    .line 577
    new-instance v1, Lt3/c;

    .line 578
    .line 579
    iget-object v3, v0, Lt3/d;->a:Lf2/u0;

    .line 580
    .line 581
    iget-object v4, v0, Lt3/d;->b:Ll2/j0;

    .line 582
    .line 583
    const-string v23, "audio/raw"

    .line 584
    .line 585
    move-object/from16 v19, v1

    .line 586
    .line 587
    move-object/from16 v20, v3

    .line 588
    .line 589
    move-object/from16 v21, v4

    .line 590
    .line 591
    move-object/from16 v22, v7

    .line 592
    .line 593
    invoke-direct/range {v19 .. v24}, Lt3/c;-><init>(Lf2/u0;Ll2/j0;Lt3/e;Ljava/lang/String;I)V

    .line 594
    .line 595
    .line 596
    iput-object v1, v0, Lt3/d;->e:Lt3/b;

    .line 597
    .line 598
    :goto_8
    iput v10, v0, Lt3/d;->c:I

    .line 599
    .line 600
    return v2

    .line 601
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v2, "Unsupported WAV format type: "

    .line 604
    .line 605
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    throw v1

    .line 620
    :cond_18
    new-instance v1, Lu1/q;

    .line 621
    .line 622
    invoke-direct {v1, v6}, Lu1/q;-><init>(I)V

    .line 623
    .line 624
    .line 625
    move-object/from16 v3, p1

    .line 626
    .line 627
    check-cast v3, Ll2/l;

    .line 628
    .line 629
    invoke-static {v3, v1}, Lai/a;->a(Ll2/l;Lu1/q;)Lai/a;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    iget v5, v4, Lai/a;->a:I

    .line 634
    .line 635
    const v10, 0x64733634

    .line 636
    .line 637
    .line 638
    if-eq v5, v10, :cond_19

    .line 639
    .line 640
    iput v2, v3, Ll2/l;->f:I

    .line 641
    .line 642
    goto :goto_9

    .line 643
    :cond_19
    invoke-virtual {v3, v6, v2}, Ll2/l;->k(IZ)Z

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 647
    .line 648
    .line 649
    iget-object v3, v1, Lu1/q;->a:[B

    .line 650
    .line 651
    move-object/from16 v5, p1

    .line 652
    .line 653
    check-cast v5, Ll2/l;

    .line 654
    .line 655
    invoke-virtual {v5, v3, v2, v6, v2}, Ll2/l;->c([BIIZ)Z

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1}, Lu1/q;->r()J

    .line 659
    .line 660
    .line 661
    move-result-wide v8

    .line 662
    iget-wide v3, v4, Lai/a;->b:J

    .line 663
    .line 664
    long-to-int v1, v3

    .line 665
    add-int/2addr v1, v6

    .line 666
    invoke-virtual {v5, v1, v2}, Ll2/l;->o(IZ)Z

    .line 667
    .line 668
    .line 669
    :goto_9
    iput-wide v8, v0, Lt3/d;->d:J

    .line 670
    .line 671
    iput v7, v0, Lt3/d;->c:I

    .line 672
    .line 673
    return v2

    .line 674
    :cond_1a
    move-object/from16 v1, p1

    .line 675
    .line 676
    check-cast v1, Ll2/l;

    .line 677
    .line 678
    iget-wide v6, v1, Ll2/l;->d:J

    .line 679
    .line 680
    const-wide/16 v8, 0x0

    .line 681
    .line 682
    cmp-long v1, v6, v8

    .line 683
    .line 684
    if-nez v1, :cond_1b

    .line 685
    .line 686
    const/4 v1, 0x1

    .line 687
    goto :goto_a

    .line 688
    :cond_1b
    const/4 v1, 0x0

    .line 689
    :goto_a
    invoke-static {v1}, La9/o;->t(Z)V

    .line 690
    .line 691
    .line 692
    iget v1, v0, Lt3/d;->f:I

    .line 693
    .line 694
    if-eq v1, v3, :cond_1c

    .line 695
    .line 696
    move-object/from16 v3, p1

    .line 697
    .line 698
    check-cast v3, Ll2/l;

    .line 699
    .line 700
    invoke-virtual {v3, v1, v2}, Ll2/l;->o(IZ)Z

    .line 701
    .line 702
    .line 703
    iput v4, v0, Lt3/d;->c:I

    .line 704
    .line 705
    goto :goto_b

    .line 706
    :cond_1c
    move-object/from16 v1, p1

    .line 707
    .line 708
    check-cast v1, Ll2/l;

    .line 709
    .line 710
    invoke-static {v1}, Lt3/f;->a(Ll2/l;)Z

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    if-eqz v3, :cond_1d

    .line 715
    .line 716
    invoke-virtual {v1}, Ll2/l;->d()J

    .line 717
    .line 718
    .line 719
    move-result-wide v3

    .line 720
    iget-wide v6, v1, Ll2/l;->d:J

    .line 721
    .line 722
    sub-long/2addr v3, v6

    .line 723
    long-to-int v4, v3

    .line 724
    invoke-virtual {v1, v4, v2}, Ll2/l;->o(IZ)Z

    .line 725
    .line 726
    .line 727
    iput v5, v0, Lt3/d;->c:I

    .line 728
    .line 729
    :goto_b
    return v2

    .line 730
    :cond_1d
    const-string v1, "Unsupported or unrecognized wav file type."

    .line 731
    .line 732
    const/4 v2, 0x0

    .line 733
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    throw v1
.end method

.method public final e(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    iput p1, p0, Lt3/d;->c:I

    .line 11
    .line 12
    iget-object p1, p0, Lt3/d;->e:Lt3/b;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p3, p4}, Lt3/b;->b(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final g(Ll2/p;)Z
    .locals 0

    .line 1
    check-cast p1, Ll2/l;

    .line 2
    .line 3
    invoke-static {p1}, Lt3/f;->a(Ll2/l;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
