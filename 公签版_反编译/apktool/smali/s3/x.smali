.class public final Ls3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final a:Lu1/d0;

.field public final b:Landroid/util/SparseArray;

.field public final c:Lu1/q;

.field public final d:Ls3/v;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lq2/a;

.field public j:Lf2/u0;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lu1/d0;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lu1/d0;-><init>(J)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ls3/x;->a:Lu1/d0;

    .line 12
    .line 13
    new-instance v0, Lu1/q;

    .line 14
    .line 15
    const/16 v1, 0x1000

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ls3/x;->c:Lu1/q;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ls3/x;->b:Landroid/util/SparseArray;

    .line 28
    .line 29
    new-instance v0, Ls3/v;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Ls3/v;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Ls3/x;->d:Ls3/v;

    .line 36
    .line 37
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
    .locals 0

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iput-object p1, p0, Ls3/x;->j:Lf2/u0;

    .line 4
    .line 5
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Ls3/x;->j:Lf2/u0;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    check-cast v2, Ll2/l;

    .line 13
    .line 14
    iget-wide v14, v2, Ll2/l;->c:J

    .line 15
    .line 16
    const/4 v12, 0x4

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v10, 0x3

    .line 19
    const/16 v11, 0x1ba

    .line 20
    .line 21
    iget-object v5, v0, Ls3/x;->d:Ls3/v;

    .line 22
    .line 23
    const-wide/16 v17, -0x1

    .line 24
    .line 25
    cmp-long v6, v14, v17

    .line 26
    .line 27
    if-eqz v6, :cond_a

    .line 28
    .line 29
    iget-boolean v6, v5, Ls3/v;->d:Z

    .line 30
    .line 31
    if-nez v6, :cond_a

    .line 32
    .line 33
    iget-boolean v6, v5, Ls3/v;->f:Z

    .line 34
    .line 35
    iget-object v7, v5, Ls3/v;->c:Lu1/q;

    .line 36
    .line 37
    const-wide/16 v8, 0x4e20

    .line 38
    .line 39
    if-nez v6, :cond_3

    .line 40
    .line 41
    move-object/from16 v6, p1

    .line 42
    .line 43
    check-cast v6, Ll2/l;

    .line 44
    .line 45
    iget-wide v14, v6, Ll2/l;->c:J

    .line 46
    .line 47
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    long-to-int v9, v8

    .line 52
    int-to-long v2, v9

    .line 53
    sub-long/2addr v14, v2

    .line 54
    iget-wide v2, v6, Ll2/l;->d:J

    .line 55
    .line 56
    cmp-long v4, v2, v14

    .line 57
    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    iput-wide v14, v1, Ldd/c;->b:J

    .line 61
    .line 62
    :goto_0
    const/4 v2, 0x1

    .line 63
    goto :goto_4

    .line 64
    :cond_0
    invoke-virtual {v7, v9}, Lu1/q;->L(I)V

    .line 65
    .line 66
    .line 67
    iput v13, v6, Ll2/l;->f:I

    .line 68
    .line 69
    iget-object v1, v7, Lu1/q;->a:[B

    .line 70
    .line 71
    invoke-virtual {v6, v1, v13, v9, v13}, Ll2/l;->c([BIIZ)Z

    .line 72
    .line 73
    .line 74
    iget v1, v7, Lu1/q;->b:I

    .line 75
    .line 76
    iget v2, v7, Lu1/q;->c:I

    .line 77
    .line 78
    sub-int/2addr v2, v12

    .line 79
    :goto_1
    if-lt v2, v1, :cond_2

    .line 80
    .line 81
    iget-object v3, v7, Lu1/q;->a:[B

    .line 82
    .line 83
    invoke-static {v2, v3}, Ls3/v;->b(I[B)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ne v3, v11, :cond_1

    .line 88
    .line 89
    add-int/lit8 v3, v2, 0x4

    .line 90
    .line 91
    invoke-virtual {v7, v3}, Lu1/q;->O(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v7}, Ls3/v;->c(Lu1/q;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    cmp-long v6, v3, v8

    .line 104
    .line 105
    if-eqz v6, :cond_1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    :goto_2
    iput-wide v3, v5, Ls3/v;->h:J

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    iput-boolean v1, v5, Ls3/v;->f:Z

    .line 120
    .line 121
    :goto_3
    const/4 v2, 0x0

    .line 122
    :goto_4
    move v13, v2

    .line 123
    goto/16 :goto_7

    .line 124
    .line 125
    :cond_3
    iget-wide v2, v5, Ls3/v;->h:J

    .line 126
    .line 127
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    cmp-long v4, v2, v14

    .line 133
    .line 134
    if-nez v4, :cond_4

    .line 135
    .line 136
    move-object/from16 v1, p1

    .line 137
    .line 138
    check-cast v1, Ll2/l;

    .line 139
    .line 140
    invoke-virtual {v5, v1}, Ls3/v;->a(Ll2/l;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_7

    .line 144
    .line 145
    :cond_4
    iget-boolean v2, v5, Ls3/v;->e:Z

    .line 146
    .line 147
    if-nez v2, :cond_8

    .line 148
    .line 149
    move-object/from16 v2, p1

    .line 150
    .line 151
    check-cast v2, Ll2/l;

    .line 152
    .line 153
    iget-wide v3, v2, Ll2/l;->c:J

    .line 154
    .line 155
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 156
    .line 157
    .line 158
    move-result-wide v3

    .line 159
    long-to-int v4, v3

    .line 160
    iget-wide v8, v2, Ll2/l;->d:J

    .line 161
    .line 162
    int-to-long v14, v13

    .line 163
    cmp-long v3, v8, v14

    .line 164
    .line 165
    if-eqz v3, :cond_5

    .line 166
    .line 167
    iput-wide v14, v1, Ldd/c;->b:J

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {v7, v4}, Lu1/q;->L(I)V

    .line 171
    .line 172
    .line 173
    iput v13, v2, Ll2/l;->f:I

    .line 174
    .line 175
    iget-object v1, v7, Lu1/q;->a:[B

    .line 176
    .line 177
    invoke-virtual {v2, v1, v13, v4, v13}, Ll2/l;->c([BIIZ)Z

    .line 178
    .line 179
    .line 180
    iget v1, v7, Lu1/q;->b:I

    .line 181
    .line 182
    iget v2, v7, Lu1/q;->c:I

    .line 183
    .line 184
    :goto_5
    add-int/lit8 v3, v2, -0x3

    .line 185
    .line 186
    if-ge v1, v3, :cond_7

    .line 187
    .line 188
    iget-object v3, v7, Lu1/q;->a:[B

    .line 189
    .line 190
    invoke-static {v1, v3}, Ls3/v;->b(I[B)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-ne v3, v11, :cond_6

    .line 195
    .line 196
    add-int/lit8 v3, v1, 0x4

    .line 197
    .line 198
    invoke-virtual {v7, v3}, Lu1/q;->O(I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v7}, Ls3/v;->c(Lu1/q;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v3

    .line 205
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    cmp-long v6, v3, v8

    .line 211
    .line 212
    if-eqz v6, :cond_6

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_7
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :goto_6
    iput-wide v3, v5, Ls3/v;->g:J

    .line 224
    .line 225
    const/4 v1, 0x1

    .line 226
    iput-boolean v1, v5, Ls3/v;->e:Z

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_8
    iget-wide v1, v5, Ls3/v;->g:J

    .line 230
    .line 231
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    cmp-long v6, v1, v3

    .line 237
    .line 238
    if-nez v6, :cond_9

    .line 239
    .line 240
    move-object/from16 v1, p1

    .line 241
    .line 242
    check-cast v1, Ll2/l;

    .line 243
    .line 244
    invoke-virtual {v5, v1}, Ls3/v;->a(Ll2/l;)V

    .line 245
    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_9
    iget-object v3, v5, Ls3/v;->b:Lu1/d0;

    .line 249
    .line 250
    invoke-virtual {v3, v1, v2}, Lu1/d0;->b(J)J

    .line 251
    .line 252
    .line 253
    move-result-wide v1

    .line 254
    iget-wide v6, v5, Ls3/v;->h:J

    .line 255
    .line 256
    invoke-virtual {v3, v6, v7}, Lu1/d0;->c(J)J

    .line 257
    .line 258
    .line 259
    move-result-wide v3

    .line 260
    sub-long/2addr v3, v1

    .line 261
    iput-wide v3, v5, Ls3/v;->i:J

    .line 262
    .line 263
    move-object/from16 v1, p1

    .line 264
    .line 265
    check-cast v1, Ll2/l;

    .line 266
    .line 267
    invoke-virtual {v5, v1}, Ls3/v;->a(Ll2/l;)V

    .line 268
    .line 269
    .line 270
    :goto_7
    return v13

    .line 271
    :cond_a
    iget-boolean v2, v0, Ls3/x;->k:Z

    .line 272
    .line 273
    if-nez v2, :cond_c

    .line 274
    .line 275
    const/4 v2, 0x1

    .line 276
    iput-boolean v2, v0, Ls3/x;->k:Z

    .line 277
    .line 278
    iget-wide v6, v5, Ls3/v;->i:J

    .line 279
    .line 280
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    cmp-long v4, v6, v2

    .line 286
    .line 287
    if-eqz v4, :cond_b

    .line 288
    .line 289
    new-instance v2, Lq2/a;

    .line 290
    .line 291
    iget-object v3, v5, Ls3/v;->b:Lu1/d0;

    .line 292
    .line 293
    new-instance v4, Lha/l2;

    .line 294
    .line 295
    const/16 v5, 0x10

    .line 296
    .line 297
    invoke-direct {v4, v5}, Lha/l2;-><init>(I)V

    .line 298
    .line 299
    .line 300
    new-instance v5, Lkf/d;

    .line 301
    .line 302
    invoke-direct {v5, v3}, Lkf/d;-><init>(Lu1/d0;)V

    .line 303
    .line 304
    .line 305
    const-wide/16 v8, 0x1

    .line 306
    .line 307
    add-long/2addr v8, v6

    .line 308
    const/16 v16, 0x3e8

    .line 309
    .line 310
    const-wide/16 v19, 0x0

    .line 311
    .line 312
    const-wide/16 v21, 0xbc

    .line 313
    .line 314
    move-object v3, v2

    .line 315
    move-wide/from16 v10, v19

    .line 316
    .line 317
    move-wide v12, v14

    .line 318
    move-wide/from16 v19, v14

    .line 319
    .line 320
    move-wide/from16 v14, v21

    .line 321
    .line 322
    invoke-direct/range {v3 .. v16}, Lq2/a;-><init>(Ll2/g;Ll2/i;JJJJJI)V

    .line 323
    .line 324
    .line 325
    iput-object v2, v0, Ls3/x;->i:Lq2/a;

    .line 326
    .line 327
    iget-object v3, v0, Ls3/x;->j:Lf2/u0;

    .line 328
    .line 329
    iget-object v2, v2, Lq2/a;->a:Ll2/e;

    .line 330
    .line 331
    invoke-virtual {v3, v2}, Lf2/u0;->s(Ll2/c0;)V

    .line 332
    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_b
    move-wide/from16 v19, v14

    .line 336
    .line 337
    iget-object v2, v0, Ls3/x;->j:Lf2/u0;

    .line 338
    .line 339
    new-instance v3, Ll2/s;

    .line 340
    .line 341
    invoke-direct {v3, v6, v7}, Ll2/s;-><init>(J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v3}, Lf2/u0;->s(Ll2/c0;)V

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_c
    move-wide/from16 v19, v14

    .line 349
    .line 350
    :goto_8
    iget-object v2, v0, Ls3/x;->i:Lq2/a;

    .line 351
    .line 352
    if-eqz v2, :cond_d

    .line 353
    .line 354
    iget-object v3, v2, Lq2/a;->c:Ll2/f;

    .line 355
    .line 356
    if-eqz v3, :cond_d

    .line 357
    .line 358
    move-object/from16 v3, p1

    .line 359
    .line 360
    check-cast v3, Ll2/l;

    .line 361
    .line 362
    invoke-virtual {v2, v3, v1}, Lq2/a;->b(Ll2/l;Ldd/c;)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    return v1

    .line 367
    :cond_d
    move-object/from16 v1, p1

    .line 368
    .line 369
    check-cast v1, Ll2/l;

    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    iput v2, v1, Ll2/l;->f:I

    .line 373
    .line 374
    cmp-long v3, v19, v17

    .line 375
    .line 376
    if-eqz v3, :cond_e

    .line 377
    .line 378
    invoke-virtual {v1}, Ll2/l;->d()J

    .line 379
    .line 380
    .line 381
    move-result-wide v3

    .line 382
    sub-long v14, v19, v3

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_e
    move-wide/from16 v14, v17

    .line 386
    .line 387
    :goto_9
    const/4 v3, -0x1

    .line 388
    cmp-long v4, v14, v17

    .line 389
    .line 390
    if-eqz v4, :cond_f

    .line 391
    .line 392
    const-wide/16 v4, 0x4

    .line 393
    .line 394
    cmp-long v6, v14, v4

    .line 395
    .line 396
    if-gez v6, :cond_f

    .line 397
    .line 398
    return v3

    .line 399
    :cond_f
    iget-object v4, v0, Ls3/x;->c:Lu1/q;

    .line 400
    .line 401
    iget-object v5, v4, Lu1/q;->a:[B

    .line 402
    .line 403
    const/4 v6, 0x1

    .line 404
    const/4 v7, 0x4

    .line 405
    invoke-virtual {v1, v5, v2, v7, v6}, Ll2/l;->c([BIIZ)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-nez v5, :cond_10

    .line 410
    .line 411
    return v3

    .line 412
    :cond_10
    invoke-virtual {v4, v2}, Lu1/q;->O(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    const/16 v6, 0x1b9

    .line 420
    .line 421
    if-ne v5, v6, :cond_11

    .line 422
    .line 423
    return v3

    .line 424
    :cond_11
    const/16 v3, 0x1ba

    .line 425
    .line 426
    if-ne v5, v3, :cond_12

    .line 427
    .line 428
    iget-object v3, v4, Lu1/q;->a:[B

    .line 429
    .line 430
    const/16 v5, 0xa

    .line 431
    .line 432
    invoke-virtual {v1, v3, v2, v5, v2}, Ll2/l;->c([BIIZ)Z

    .line 433
    .line 434
    .line 435
    const/16 v3, 0x9

    .line 436
    .line 437
    invoke-virtual {v4, v3}, Lu1/q;->O(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4}, Lu1/q;->B()I

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    and-int/lit8 v3, v3, 0x7

    .line 445
    .line 446
    add-int/lit8 v3, v3, 0xe

    .line 447
    .line 448
    invoke-virtual {v1, v3, v2}, Ll2/l;->o(IZ)Z

    .line 449
    .line 450
    .line 451
    return v2

    .line 452
    :cond_12
    const/16 v3, 0x1bb

    .line 453
    .line 454
    const/4 v6, 0x2

    .line 455
    const/4 v8, 0x6

    .line 456
    if-ne v5, v3, :cond_13

    .line 457
    .line 458
    iget-object v3, v4, Lu1/q;->a:[B

    .line 459
    .line 460
    invoke-virtual {v1, v3, v2, v6, v2}, Ll2/l;->c([BIIZ)Z

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v2}, Lu1/q;->O(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    add-int/2addr v3, v8

    .line 471
    invoke-virtual {v1, v3, v2}, Ll2/l;->o(IZ)Z

    .line 472
    .line 473
    .line 474
    return v2

    .line 475
    :cond_13
    and-int/lit16 v3, v5, -0x100

    .line 476
    .line 477
    const/16 v9, 0x8

    .line 478
    .line 479
    shr-int/2addr v3, v9

    .line 480
    const/4 v10, 0x1

    .line 481
    if-eq v3, v10, :cond_14

    .line 482
    .line 483
    invoke-virtual {v1, v10, v2}, Ll2/l;->o(IZ)Z

    .line 484
    .line 485
    .line 486
    return v2

    .line 487
    :cond_14
    and-int/lit16 v3, v5, 0xff

    .line 488
    .line 489
    iget-object v10, v0, Ls3/x;->b:Landroid/util/SparseArray;

    .line 490
    .line 491
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    check-cast v11, Ls3/w;

    .line 496
    .line 497
    iget-boolean v12, v0, Ls3/x;->e:Z

    .line 498
    .line 499
    if-nez v12, :cond_1a

    .line 500
    .line 501
    if-nez v11, :cond_18

    .line 502
    .line 503
    const/16 v12, 0xbd

    .line 504
    .line 505
    const-string v13, "video/mp2p"

    .line 506
    .line 507
    if-ne v3, v12, :cond_15

    .line 508
    .line 509
    new-instance v5, Ls3/a;

    .line 510
    .line 511
    invoke-direct {v5, v13}, Ls3/a;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const/4 v12, 0x1

    .line 515
    iput-boolean v12, v0, Ls3/x;->f:Z

    .line 516
    .line 517
    iget-wide v12, v1, Ll2/l;->d:J

    .line 518
    .line 519
    iput-wide v12, v0, Ls3/x;->h:J

    .line 520
    .line 521
    goto :goto_a

    .line 522
    :cond_15
    and-int/lit16 v12, v5, 0xe0

    .line 523
    .line 524
    const/16 v14, 0xc0

    .line 525
    .line 526
    const/4 v15, 0x0

    .line 527
    if-ne v12, v14, :cond_16

    .line 528
    .line 529
    new-instance v5, Ls3/r;

    .line 530
    .line 531
    invoke-direct {v5, v15, v2, v13}, Ls3/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const/4 v12, 0x1

    .line 535
    iput-boolean v12, v0, Ls3/x;->f:Z

    .line 536
    .line 537
    iget-wide v12, v1, Ll2/l;->d:J

    .line 538
    .line 539
    iput-wide v12, v0, Ls3/x;->h:J

    .line 540
    .line 541
    goto :goto_a

    .line 542
    :cond_16
    and-int/lit16 v5, v5, 0xf0

    .line 543
    .line 544
    const/16 v12, 0xe0

    .line 545
    .line 546
    if-ne v5, v12, :cond_17

    .line 547
    .line 548
    new-instance v5, Ls3/h;

    .line 549
    .line 550
    invoke-direct {v5, v15, v13}, Ls3/h;-><init>(Ls3/a0;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    const/4 v12, 0x1

    .line 554
    iput-boolean v12, v0, Ls3/x;->g:Z

    .line 555
    .line 556
    iget-wide v12, v1, Ll2/l;->d:J

    .line 557
    .line 558
    iput-wide v12, v0, Ls3/x;->h:J

    .line 559
    .line 560
    goto :goto_a

    .line 561
    :cond_17
    move-object v5, v15

    .line 562
    :goto_a
    if-eqz v5, :cond_18

    .line 563
    .line 564
    new-instance v11, Ls3/d0;

    .line 565
    .line 566
    const/16 v12, 0x100

    .line 567
    .line 568
    invoke-direct {v11, v3, v12}, Ls3/d0;-><init>(II)V

    .line 569
    .line 570
    .line 571
    iget-object v12, v0, Ls3/x;->j:Lf2/u0;

    .line 572
    .line 573
    invoke-interface {v5, v12, v11}, Ls3/f;->e(Ll2/q;Ls3/d0;)V

    .line 574
    .line 575
    .line 576
    new-instance v11, Ls3/w;

    .line 577
    .line 578
    iget-object v12, v0, Ls3/x;->a:Lu1/d0;

    .line 579
    .line 580
    invoke-direct {v11, v5, v12}, Ls3/w;-><init>(Ls3/f;Lu1/d0;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v10, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    :cond_18
    iget-boolean v3, v0, Ls3/x;->f:Z

    .line 587
    .line 588
    if-eqz v3, :cond_19

    .line 589
    .line 590
    iget-boolean v3, v0, Ls3/x;->g:Z

    .line 591
    .line 592
    if-eqz v3, :cond_19

    .line 593
    .line 594
    iget-wide v12, v0, Ls3/x;->h:J

    .line 595
    .line 596
    const-wide/16 v14, 0x2000

    .line 597
    .line 598
    add-long/2addr v12, v14

    .line 599
    goto :goto_b

    .line 600
    :cond_19
    const-wide/32 v12, 0x100000

    .line 601
    .line 602
    .line 603
    :goto_b
    iget-wide v14, v1, Ll2/l;->d:J

    .line 604
    .line 605
    cmp-long v3, v14, v12

    .line 606
    .line 607
    if-lez v3, :cond_1a

    .line 608
    .line 609
    const/4 v3, 0x1

    .line 610
    iput-boolean v3, v0, Ls3/x;->e:Z

    .line 611
    .line 612
    iget-object v3, v0, Ls3/x;->j:Lf2/u0;

    .line 613
    .line 614
    invoke-virtual {v3}, Lf2/u0;->q()V

    .line 615
    .line 616
    .line 617
    :cond_1a
    iget-object v3, v4, Lu1/q;->a:[B

    .line 618
    .line 619
    invoke-virtual {v1, v3, v2, v6, v2}, Ll2/l;->c([BIIZ)Z

    .line 620
    .line 621
    .line 622
    invoke-virtual {v4, v2}, Lu1/q;->O(I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v4}, Lu1/q;->I()I

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    add-int/2addr v3, v8

    .line 630
    if-nez v11, :cond_1b

    .line 631
    .line 632
    invoke-virtual {v1, v3, v2}, Ll2/l;->o(IZ)Z

    .line 633
    .line 634
    .line 635
    const/4 v1, 0x0

    .line 636
    goto/16 :goto_c

    .line 637
    .line 638
    :cond_1b
    invoke-virtual {v4, v3}, Lu1/q;->L(I)V

    .line 639
    .line 640
    .line 641
    iget-object v5, v4, Lu1/q;->a:[B

    .line 642
    .line 643
    invoke-virtual {v1, v5, v2, v3, v2}, Ll2/l;->b([BIIZ)Z

    .line 644
    .line 645
    .line 646
    invoke-virtual {v4, v8}, Lu1/q;->O(I)V

    .line 647
    .line 648
    .line 649
    iget-object v1, v11, Ls3/w;->c:Lj3/f;

    .line 650
    .line 651
    iget-object v3, v1, Lj3/f;->b:[B

    .line 652
    .line 653
    const/4 v5, 0x3

    .line 654
    invoke-virtual {v4, v2, v5, v3}, Lu1/q;->l(II[B)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1, v2}, Lj3/f;->m(I)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v9}, Lj3/f;->o(I)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1}, Lj3/f;->f()Z

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    iput-boolean v3, v11, Ls3/w;->d:Z

    .line 668
    .line 669
    invoke-virtual {v1}, Lj3/f;->f()Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    iput-boolean v3, v11, Ls3/w;->e:Z

    .line 674
    .line 675
    invoke-virtual {v1, v8}, Lj3/f;->o(I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1, v9}, Lj3/f;->g(I)I

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    iget-object v6, v1, Lj3/f;->b:[B

    .line 683
    .line 684
    invoke-virtual {v4, v2, v3, v6}, Lu1/q;->l(II[B)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v2}, Lj3/f;->m(I)V

    .line 688
    .line 689
    .line 690
    const-wide/16 v8, 0x0

    .line 691
    .line 692
    iput-wide v8, v11, Ls3/w;->g:J

    .line 693
    .line 694
    iget-boolean v3, v11, Ls3/w;->d:Z

    .line 695
    .line 696
    if-eqz v3, :cond_1d

    .line 697
    .line 698
    invoke-virtual {v1, v7}, Lj3/f;->o(I)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1, v5}, Lj3/f;->g(I)I

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    int-to-long v8, v3

    .line 706
    const/16 v3, 0x1e

    .line 707
    .line 708
    shl-long/2addr v8, v3

    .line 709
    const/4 v6, 0x1

    .line 710
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    .line 711
    .line 712
    .line 713
    const/16 v10, 0xf

    .line 714
    .line 715
    invoke-virtual {v1, v10}, Lj3/f;->g(I)I

    .line 716
    .line 717
    .line 718
    move-result v12

    .line 719
    shl-int/2addr v12, v10

    .line 720
    int-to-long v12, v12

    .line 721
    or-long/2addr v8, v12

    .line 722
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1, v10}, Lj3/f;->g(I)I

    .line 726
    .line 727
    .line 728
    move-result v12

    .line 729
    int-to-long v12, v12

    .line 730
    or-long/2addr v8, v12

    .line 731
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    .line 732
    .line 733
    .line 734
    iget-boolean v12, v11, Ls3/w;->f:Z

    .line 735
    .line 736
    iget-object v13, v11, Ls3/w;->b:Lu1/d0;

    .line 737
    .line 738
    if-nez v12, :cond_1c

    .line 739
    .line 740
    iget-boolean v12, v11, Ls3/w;->e:Z

    .line 741
    .line 742
    if-eqz v12, :cond_1c

    .line 743
    .line 744
    invoke-virtual {v1, v7}, Lj3/f;->o(I)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1, v5}, Lj3/f;->g(I)I

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    int-to-long v14, v5

    .line 752
    shl-long/2addr v14, v3

    .line 753
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1, v10}, Lj3/f;->g(I)I

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    shl-int/2addr v3, v10

    .line 761
    int-to-long v2, v3

    .line 762
    or-long/2addr v2, v14

    .line 763
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v10}, Lj3/f;->g(I)I

    .line 767
    .line 768
    .line 769
    move-result v5

    .line 770
    int-to-long v14, v5

    .line 771
    or-long/2addr v2, v14

    .line 772
    invoke-virtual {v1, v6}, Lj3/f;->o(I)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v13, v2, v3}, Lu1/d0;->b(J)J

    .line 776
    .line 777
    .line 778
    iput-boolean v6, v11, Ls3/w;->f:Z

    .line 779
    .line 780
    :cond_1c
    invoke-virtual {v13, v8, v9}, Lu1/d0;->b(J)J

    .line 781
    .line 782
    .line 783
    move-result-wide v1

    .line 784
    iput-wide v1, v11, Ls3/w;->g:J

    .line 785
    .line 786
    :cond_1d
    iget-wide v1, v11, Ls3/w;->g:J

    .line 787
    .line 788
    iget-object v3, v11, Ls3/w;->a:Ls3/f;

    .line 789
    .line 790
    invoke-interface {v3, v7, v1, v2}, Ls3/f;->d(IJ)V

    .line 791
    .line 792
    .line 793
    invoke-interface {v3, v4}, Ls3/f;->a(Lu1/q;)V

    .line 794
    .line 795
    .line 796
    const/4 v1, 0x0

    .line 797
    invoke-interface {v3, v1}, Ls3/f;->c(Z)V

    .line 798
    .line 799
    .line 800
    iget-object v2, v4, Lu1/q;->a:[B

    .line 801
    .line 802
    array-length v2, v2

    .line 803
    invoke-virtual {v4, v2}, Lu1/q;->N(I)V

    .line 804
    .line 805
    .line 806
    :goto_c
    return v1
.end method

.method public final e(JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Ls3/x;->a:Lu1/d0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu1/d0;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 p2, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v5, v0, v3

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lu1/d0;->d()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    cmp-long v5, v0, v3

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    cmp-long v5, v0, v3

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    cmp-long v3, v0, p3

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 p2, 0x0

    .line 43
    :goto_1
    move v0, p2

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1, p3, p4}, Lu1/d0;->g(J)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object p1, p0, Ls3/x;->i:Lq2/a;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, p3, p4}, Lq2/a;->d(J)V

    .line 54
    .line 55
    .line 56
    :cond_4
    const/4 p1, 0x0

    .line 57
    :goto_2
    iget-object p2, p0, Ls3/x;->b:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-ge p1, p3, :cond_5

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ls3/w;

    .line 70
    .line 71
    iput-boolean v2, p2, Ls3/w;->f:Z

    .line 72
    .line 73
    iget-object p2, p2, Ls3/w;->a:Ls3/f;

    .line 74
    .line 75
    invoke-interface {p2}, Ls3/f;->b()V

    .line 76
    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
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
    .locals 9

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    check-cast p1, Ll2/l;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2, v0, v2}, Ll2/l;->c([BIIZ)Z

    .line 9
    .line 10
    .line 11
    aget-byte v0, v1, v2

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    shl-int/lit8 v0, v0, 0x18

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    aget-byte v4, v1, v3

    .line 19
    .line 20
    and-int/lit16 v4, v4, 0xff

    .line 21
    .line 22
    shl-int/lit8 v4, v4, 0x10

    .line 23
    .line 24
    or-int/2addr v0, v4

    .line 25
    const/4 v4, 0x2

    .line 26
    aget-byte v5, v1, v4

    .line 27
    .line 28
    and-int/lit16 v5, v5, 0xff

    .line 29
    .line 30
    const/16 v6, 0x8

    .line 31
    .line 32
    shl-int/2addr v5, v6

    .line 33
    or-int/2addr v0, v5

    .line 34
    const/4 v5, 0x3

    .line 35
    aget-byte v7, v1, v5

    .line 36
    .line 37
    and-int/lit16 v7, v7, 0xff

    .line 38
    .line 39
    or-int/2addr v0, v7

    .line 40
    const/16 v7, 0x1ba

    .line 41
    .line 42
    if-eq v7, v0, :cond_0

    .line 43
    .line 44
    return v2

    .line 45
    :cond_0
    const/4 v0, 0x4

    .line 46
    aget-byte v7, v1, v0

    .line 47
    .line 48
    and-int/lit16 v7, v7, 0xc4

    .line 49
    .line 50
    const/16 v8, 0x44

    .line 51
    .line 52
    if-eq v7, v8, :cond_1

    .line 53
    .line 54
    return v2

    .line 55
    :cond_1
    const/4 v7, 0x6

    .line 56
    aget-byte v7, v1, v7

    .line 57
    .line 58
    and-int/2addr v7, v0

    .line 59
    if-eq v7, v0, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    aget-byte v7, v1, v6

    .line 63
    .line 64
    and-int/2addr v7, v0

    .line 65
    if-eq v7, v0, :cond_3

    .line 66
    .line 67
    return v2

    .line 68
    :cond_3
    const/16 v0, 0x9

    .line 69
    .line 70
    aget-byte v0, v1, v0

    .line 71
    .line 72
    and-int/2addr v0, v3

    .line 73
    if-eq v0, v3, :cond_4

    .line 74
    .line 75
    return v2

    .line 76
    :cond_4
    const/16 v0, 0xc

    .line 77
    .line 78
    aget-byte v0, v1, v0

    .line 79
    .line 80
    and-int/2addr v0, v5

    .line 81
    if-eq v0, v5, :cond_5

    .line 82
    .line 83
    return v2

    .line 84
    :cond_5
    const/16 v0, 0xd

    .line 85
    .line 86
    aget-byte v0, v1, v0

    .line 87
    .line 88
    and-int/lit8 v0, v0, 0x7

    .line 89
    .line 90
    invoke-virtual {p1, v0, v2}, Ll2/l;->k(IZ)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v2, v5, v2}, Ll2/l;->c([BIIZ)Z

    .line 94
    .line 95
    .line 96
    aget-byte p1, v1, v2

    .line 97
    .line 98
    and-int/lit16 p1, p1, 0xff

    .line 99
    .line 100
    shl-int/lit8 p1, p1, 0x10

    .line 101
    .line 102
    aget-byte v0, v1, v3

    .line 103
    .line 104
    and-int/lit16 v0, v0, 0xff

    .line 105
    .line 106
    shl-int/2addr v0, v6

    .line 107
    or-int/2addr p1, v0

    .line 108
    aget-byte v0, v1, v4

    .line 109
    .line 110
    and-int/lit16 v0, v0, 0xff

    .line 111
    .line 112
    or-int/2addr p1, v0

    .line 113
    if-ne v3, p1, :cond_6

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    :cond_6
    return v2
.end method
