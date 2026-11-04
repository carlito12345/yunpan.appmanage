.class public final Ls1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ls1/o;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:D


# direct methods
.method public constructor <init>(IIFFIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ls1/q;->a:I

    .line 5
    .line 6
    iput p2, p0, Ls1/q;->b:I

    .line 7
    .line 8
    iput p3, p0, Ls1/q;->c:F

    .line 9
    .line 10
    iput p4, p0, Ls1/q;->d:F

    .line 11
    .line 12
    int-to-float p2, p1

    .line 13
    int-to-float p3, p5

    .line 14
    div-float/2addr p2, p3

    .line 15
    iput p2, p0, Ls1/q;->e:F

    .line 16
    .line 17
    div-int/lit16 p2, p1, 0x190

    .line 18
    .line 19
    iput p2, p0, Ls1/q;->f:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x41

    .line 22
    .line 23
    iput p1, p0, Ls1/q;->g:I

    .line 24
    .line 25
    mul-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    iput p1, p0, Ls1/q;->h:I

    .line 28
    .line 29
    if-eqz p6, :cond_0

    .line 30
    .line 31
    new-instance p1, Ls1/n;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ls1/n;-><init>(Ls1/q;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ls1/p;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ls1/p;-><init>(Ls1/q;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iput-object p1, p0, Ls1/q;->i:Ls1/o;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/q;->i:Ls1/o;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ls1/o;->h(I)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ls1/o;->f()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Ls1/q;->b:I

    .line 11
    .line 12
    mul-int p1, p1, v2

    .line 13
    .line 14
    invoke-interface {v0}, Ls1/o;->g()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v3, p0, Ls1/q;->k:I

    .line 19
    .line 20
    mul-int v3, v3, v2

    .line 21
    .line 22
    mul-int v2, v2, p2

    .line 23
    .line 24
    invoke-static {v1, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Ls1/q;->k:I

    .line 28
    .line 29
    add-int/2addr p1, p2

    .line 30
    iput p1, p0, Ls1/q;->k:I

    .line 31
    .line 32
    return-void
.end method

.method public final b()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ls1/q;->k:I

    .line 4
    .line 5
    iget v2, v0, Ls1/q;->c:F

    .line 6
    .line 7
    iget v3, v0, Ls1/q;->d:F

    .line 8
    .line 9
    div-float/2addr v2, v3

    .line 10
    float-to-double v4, v2

    .line 11
    iget v2, v0, Ls1/q;->e:F

    .line 12
    .line 13
    mul-float v2, v2, v3

    .line 14
    .line 15
    iget-object v3, v0, Ls1/q;->i:Ls1/o;

    .line 16
    .line 17
    const-wide v6, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    iget v12, v0, Ls1/q;->a:I

    .line 23
    .line 24
    iget v13, v0, Ls1/q;->b:I

    .line 25
    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x1

    .line 28
    cmpl-double v8, v4, v6

    .line 29
    .line 30
    if-gtz v8, :cond_1

    .line 31
    .line 32
    const-wide v6, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    cmpg-double v8, v4, v6

    .line 38
    .line 39
    if-gez v8, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v4, v0, Ls1/q;->j:I

    .line 43
    .line 44
    invoke-virtual {v0, v14, v4}, Ls1/q;->a(II)V

    .line 45
    .line 46
    .line 47
    iput v14, v0, Ls1/q;->j:I

    .line 48
    .line 49
    goto/16 :goto_a

    .line 50
    .line 51
    :cond_1
    :goto_0
    iget v11, v0, Ls1/q;->j:I

    .line 52
    .line 53
    iget v10, v0, Ls1/q;->h:I

    .line 54
    .line 55
    if-ge v11, v10, :cond_2

    .line 56
    .line 57
    goto/16 :goto_a

    .line 58
    .line 59
    :cond_2
    const/4 v9, 0x0

    .line 60
    :goto_1
    iget v6, v0, Ls1/q;->o:I

    .line 61
    .line 62
    if-lez v6, :cond_3

    .line 63
    .line 64
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-virtual {v0, v9, v6}, Ls1/q;->a(II)V

    .line 69
    .line 70
    .line 71
    iget v7, v0, Ls1/q;->o:I

    .line 72
    .line 73
    sub-int/2addr v7, v6

    .line 74
    iput v7, v0, Ls1/q;->o:I

    .line 75
    .line 76
    add-int/2addr v9, v6

    .line 77
    move/from16 v17, v10

    .line 78
    .line 79
    move v15, v11

    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :cond_3
    const/16 v6, 0xfa0

    .line 83
    .line 84
    if-le v12, v6, :cond_4

    .line 85
    .line 86
    div-int/lit16 v6, v12, 0xfa0

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const/4 v6, 0x1

    .line 90
    :goto_2
    iget v7, v0, Ls1/q;->g:I

    .line 91
    .line 92
    iget v8, v0, Ls1/q;->f:I

    .line 93
    .line 94
    if-ne v13, v15, :cond_5

    .line 95
    .line 96
    if-ne v6, v15, :cond_5

    .line 97
    .line 98
    invoke-interface {v3, v9, v8, v7}, Ls1/o;->d(III)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    move/from16 v17, v10

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    invoke-interface {v3, v9, v6}, Ls1/o;->c(II)V

    .line 106
    .line 107
    .line 108
    div-int v14, v8, v6

    .line 109
    .line 110
    move/from16 v17, v10

    .line 111
    .line 112
    div-int v10, v7, v6

    .line 113
    .line 114
    invoke-interface {v3, v14, v10}, Ls1/o;->q(II)I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eq v6, v15, :cond_9

    .line 119
    .line 120
    mul-int v10, v10, v6

    .line 121
    .line 122
    mul-int/lit8 v6, v6, 0x4

    .line 123
    .line 124
    sub-int v14, v10, v6

    .line 125
    .line 126
    add-int/2addr v10, v6

    .line 127
    if-ge v14, v8, :cond_6

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    move v8, v14

    .line 131
    :goto_3
    if-le v10, v7, :cond_7

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_7
    move v7, v10

    .line 135
    :goto_4
    if-ne v13, v15, :cond_8

    .line 136
    .line 137
    invoke-interface {v3, v9, v8, v7}, Ls1/o;->d(III)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    goto :goto_5

    .line 142
    :cond_8
    invoke-interface {v3, v9, v15}, Ls1/o;->c(II)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v3, v8, v7}, Ls1/o;->q(II)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    goto :goto_5

    .line 150
    :cond_9
    move v6, v10

    .line 151
    :goto_5
    invoke-interface {v3}, Ls1/o;->i()Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_a

    .line 156
    .line 157
    iget v7, v0, Ls1/q;->p:I

    .line 158
    .line 159
    move v14, v7

    .line 160
    goto :goto_6

    .line 161
    :cond_a
    move v14, v6

    .line 162
    :goto_6
    invoke-interface {v3}, Ls1/o;->e()V

    .line 163
    .line 164
    .line 165
    iput v6, v0, Ls1/q;->p:I

    .line 166
    .line 167
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 168
    .line 169
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 170
    .line 171
    cmpl-double v8, v4, v18

    .line 172
    .line 173
    if-lez v8, :cond_c

    .line 174
    .line 175
    cmpl-double v8, v4, v6

    .line 176
    .line 177
    if-ltz v8, :cond_b

    .line 178
    .line 179
    int-to-double v6, v14

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 181
    .line 182
    .line 183
    sub-double v18, v4, v18

    .line 184
    .line 185
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 186
    .line 187
    .line 188
    div-double v6, v6, v18

    .line 189
    .line 190
    move/from16 v20, v11

    .line 191
    .line 192
    iget-wide v10, v0, Ls1/q;->q:D

    .line 193
    .line 194
    add-double/2addr v6, v10

    .line 195
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 196
    .line 197
    .line 198
    move-result-wide v10

    .line 199
    long-to-int v8, v10

    .line 200
    int-to-double v10, v8

    .line 201
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 202
    .line 203
    .line 204
    sub-double/2addr v6, v10

    .line 205
    iput-wide v6, v0, Ls1/q;->q:D

    .line 206
    .line 207
    move v11, v8

    .line 208
    goto :goto_7

    .line 209
    :cond_b
    move/from16 v20, v11

    .line 210
    .line 211
    int-to-double v10, v14

    .line 212
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 213
    .line 214
    .line 215
    sub-double/2addr v6, v4

    .line 216
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 217
    .line 218
    .line 219
    mul-double v6, v6, v10

    .line 220
    .line 221
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 222
    .line 223
    .line 224
    sub-double v10, v4, v18

    .line 225
    .line 226
    div-double/2addr v6, v10

    .line 227
    iget-wide v10, v0, Ls1/q;->q:D

    .line 228
    .line 229
    add-double/2addr v6, v10

    .line 230
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    long-to-int v8, v10

    .line 235
    iput v8, v0, Ls1/q;->o:I

    .line 236
    .line 237
    int-to-double v10, v8

    .line 238
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 239
    .line 240
    .line 241
    sub-double/2addr v6, v10

    .line 242
    iput-wide v6, v0, Ls1/q;->q:D

    .line 243
    .line 244
    move v11, v14

    .line 245
    :goto_7
    invoke-interface {v3, v11}, Ls1/o;->h(I)V

    .line 246
    .line 247
    .line 248
    iget v10, v0, Ls1/q;->k:I

    .line 249
    .line 250
    add-int v18, v9, v14

    .line 251
    .line 252
    iget v8, v0, Ls1/q;->b:I

    .line 253
    .line 254
    move-object v6, v3

    .line 255
    move v7, v11

    .line 256
    move/from16 v21, v9

    .line 257
    .line 258
    move v9, v10

    .line 259
    move/from16 v10, v21

    .line 260
    .line 261
    move/from16 v19, v11

    .line 262
    .line 263
    move/from16 v15, v20

    .line 264
    .line 265
    move/from16 v11, v18

    .line 266
    .line 267
    invoke-interface/range {v6 .. v11}, Ls1/o;->k(IIIII)V

    .line 268
    .line 269
    .line 270
    iget v6, v0, Ls1/q;->k:I

    .line 271
    .line 272
    add-int v6, v6, v19

    .line 273
    .line 274
    iput v6, v0, Ls1/q;->k:I

    .line 275
    .line 276
    add-int v14, v14, v19

    .line 277
    .line 278
    add-int v14, v14, v21

    .line 279
    .line 280
    move v9, v14

    .line 281
    goto/16 :goto_9

    .line 282
    .line 283
    :cond_c
    move/from16 v21, v9

    .line 284
    .line 285
    move v15, v11

    .line 286
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 287
    .line 288
    cmpg-double v10, v4, v8

    .line 289
    .line 290
    if-gez v10, :cond_d

    .line 291
    .line 292
    int-to-double v6, v14

    .line 293
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 294
    .line 295
    .line 296
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 297
    .line 298
    .line 299
    mul-double v6, v6, v4

    .line 300
    .line 301
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 302
    .line 303
    .line 304
    sub-double v18, v18, v4

    .line 305
    .line 306
    div-double v6, v6, v18

    .line 307
    .line 308
    iget-wide v8, v0, Ls1/q;->q:D

    .line 309
    .line 310
    add-double/2addr v6, v8

    .line 311
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 312
    .line 313
    .line 314
    move-result-wide v8

    .line 315
    long-to-int v9, v8

    .line 316
    int-to-double v10, v9

    .line 317
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 318
    .line 319
    .line 320
    sub-double/2addr v6, v10

    .line 321
    iput-wide v6, v0, Ls1/q;->q:D

    .line 322
    .line 323
    move/from16 v18, v9

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_d
    int-to-double v8, v14

    .line 327
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 328
    .line 329
    .line 330
    mul-double v6, v6, v4

    .line 331
    .line 332
    sub-double v6, v6, v18

    .line 333
    .line 334
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 335
    .line 336
    .line 337
    mul-double v6, v6, v8

    .line 338
    .line 339
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 340
    .line 341
    .line 342
    sub-double v18, v18, v4

    .line 343
    .line 344
    div-double v6, v6, v18

    .line 345
    .line 346
    iget-wide v8, v0, Ls1/q;->q:D

    .line 347
    .line 348
    add-double/2addr v6, v8

    .line 349
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 350
    .line 351
    .line 352
    move-result-wide v8

    .line 353
    long-to-int v9, v8

    .line 354
    iput v9, v0, Ls1/q;->o:I

    .line 355
    .line 356
    int-to-double v8, v9

    .line 357
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 358
    .line 359
    .line 360
    sub-double/2addr v6, v8

    .line 361
    iput-wide v6, v0, Ls1/q;->q:D

    .line 362
    .line 363
    move/from16 v18, v14

    .line 364
    .line 365
    :goto_8
    add-int v11, v14, v18

    .line 366
    .line 367
    invoke-interface {v3, v11}, Ls1/o;->h(I)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v3}, Ls1/o;->f()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    mul-int v9, v21, v13

    .line 375
    .line 376
    invoke-interface {v3}, Ls1/o;->g()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    iget v8, v0, Ls1/q;->k:I

    .line 381
    .line 382
    mul-int v8, v8, v13

    .line 383
    .line 384
    mul-int v10, v14, v13

    .line 385
    .line 386
    invoke-static {v6, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    .line 388
    .line 389
    iget v6, v0, Ls1/q;->k:I

    .line 390
    .line 391
    add-int v9, v6, v14

    .line 392
    .line 393
    add-int v10, v21, v14

    .line 394
    .line 395
    iget v8, v0, Ls1/q;->b:I

    .line 396
    .line 397
    move-object v6, v3

    .line 398
    move/from16 v7, v18

    .line 399
    .line 400
    move v14, v11

    .line 401
    move/from16 v11, v21

    .line 402
    .line 403
    invoke-interface/range {v6 .. v11}, Ls1/o;->k(IIIII)V

    .line 404
    .line 405
    .line 406
    iget v6, v0, Ls1/q;->k:I

    .line 407
    .line 408
    add-int/2addr v6, v14

    .line 409
    iput v6, v0, Ls1/q;->k:I

    .line 410
    .line 411
    add-int v9, v21, v18

    .line 412
    .line 413
    :goto_9
    add-int v10, v9, v17

    .line 414
    .line 415
    if-le v10, v15, :cond_16

    .line 416
    .line 417
    iget v4, v0, Ls1/q;->j:I

    .line 418
    .line 419
    sub-int/2addr v4, v9

    .line 420
    invoke-interface {v3}, Ls1/o;->f()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    mul-int v9, v9, v13

    .line 425
    .line 426
    invoke-interface {v3}, Ls1/o;->f()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    mul-int v7, v4, v13

    .line 431
    .line 432
    const/4 v8, 0x0

    .line 433
    invoke-static {v5, v9, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    .line 435
    .line 436
    iput v4, v0, Ls1/q;->j:I

    .line 437
    .line 438
    :goto_a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 439
    .line 440
    cmpl-float v4, v2, v4

    .line 441
    .line 442
    if-eqz v4, :cond_15

    .line 443
    .line 444
    iget v4, v0, Ls1/q;->k:I

    .line 445
    .line 446
    if-ne v4, v1, :cond_e

    .line 447
    .line 448
    goto/16 :goto_f

    .line 449
    .line 450
    :cond_e
    int-to-float v4, v12

    .line 451
    div-float/2addr v4, v2

    .line 452
    float-to-long v4, v4

    .line 453
    int-to-long v6, v12

    .line 454
    move-wide v14, v6

    .line 455
    :goto_b
    const-wide/16 v6, 0x0

    .line 456
    .line 457
    cmp-long v2, v4, v6

    .line 458
    .line 459
    if-eqz v2, :cond_f

    .line 460
    .line 461
    cmp-long v2, v14, v6

    .line 462
    .line 463
    if-eqz v2, :cond_f

    .line 464
    .line 465
    const-wide/16 v8, 0x2

    .line 466
    .line 467
    rem-long v10, v4, v8

    .line 468
    .line 469
    cmp-long v2, v10, v6

    .line 470
    .line 471
    if-nez v2, :cond_f

    .line 472
    .line 473
    rem-long v10, v14, v8

    .line 474
    .line 475
    cmp-long v2, v10, v6

    .line 476
    .line 477
    if-nez v2, :cond_f

    .line 478
    .line 479
    div-long/2addr v4, v8

    .line 480
    div-long/2addr v14, v8

    .line 481
    goto :goto_b

    .line 482
    :cond_f
    iget v2, v0, Ls1/q;->k:I

    .line 483
    .line 484
    sub-int/2addr v2, v1

    .line 485
    invoke-interface {v3, v2}, Ls1/o;->m(I)V

    .line 486
    .line 487
    .line 488
    invoke-interface {v3}, Ls1/o;->g()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    mul-int v7, v1, v13

    .line 493
    .line 494
    invoke-interface {v3}, Ls1/o;->j()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    iget v9, v0, Ls1/q;->l:I

    .line 499
    .line 500
    mul-int v9, v9, v13

    .line 501
    .line 502
    mul-int v10, v2, v13

    .line 503
    .line 504
    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    .line 506
    .line 507
    iput v1, v0, Ls1/q;->k:I

    .line 508
    .line 509
    iget v1, v0, Ls1/q;->l:I

    .line 510
    .line 511
    add-int/2addr v1, v2

    .line 512
    iput v1, v0, Ls1/q;->l:I

    .line 513
    .line 514
    const/4 v1, 0x0

    .line 515
    :goto_c
    iget v2, v0, Ls1/q;->l:I

    .line 516
    .line 517
    const/4 v12, 0x1

    .line 518
    sub-int/2addr v2, v12

    .line 519
    if-ge v1, v2, :cond_13

    .line 520
    .line 521
    :goto_d
    iget v2, v0, Ls1/q;->m:I

    .line 522
    .line 523
    add-int/2addr v2, v12

    .line 524
    int-to-long v6, v2

    .line 525
    mul-long v8, v6, v4

    .line 526
    .line 527
    iget v10, v0, Ls1/q;->n:I

    .line 528
    .line 529
    int-to-long v10, v10

    .line 530
    mul-long v17, v10, v14

    .line 531
    .line 532
    cmp-long v19, v8, v17

    .line 533
    .line 534
    if-lez v19, :cond_10

    .line 535
    .line 536
    invoke-interface {v3, v12}, Ls1/o;->h(I)V

    .line 537
    .line 538
    .line 539
    move-object v6, v3

    .line 540
    move v7, v1

    .line 541
    move-wide v8, v14

    .line 542
    move-wide v10, v4

    .line 543
    invoke-interface/range {v6 .. v11}, Ls1/o;->a(IJJ)V

    .line 544
    .line 545
    .line 546
    iget v2, v0, Ls1/q;->n:I

    .line 547
    .line 548
    add-int/2addr v2, v12

    .line 549
    iput v2, v0, Ls1/q;->n:I

    .line 550
    .line 551
    iget v2, v0, Ls1/q;->k:I

    .line 552
    .line 553
    add-int/2addr v2, v12

    .line 554
    iput v2, v0, Ls1/q;->k:I

    .line 555
    .line 556
    goto :goto_d

    .line 557
    :cond_10
    iput v2, v0, Ls1/q;->m:I

    .line 558
    .line 559
    cmp-long v2, v6, v14

    .line 560
    .line 561
    if-nez v2, :cond_12

    .line 562
    .line 563
    const/4 v2, 0x0

    .line 564
    iput v2, v0, Ls1/q;->m:I

    .line 565
    .line 566
    cmp-long v6, v10, v4

    .line 567
    .line 568
    if-nez v6, :cond_11

    .line 569
    .line 570
    const/16 v16, 0x1

    .line 571
    .line 572
    goto :goto_e

    .line 573
    :cond_11
    const/16 v16, 0x0

    .line 574
    .line 575
    :goto_e
    invoke-static/range {v16 .. v16}, La9/o;->t(Z)V

    .line 576
    .line 577
    .line 578
    iput v2, v0, Ls1/q;->n:I

    .line 579
    .line 580
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 581
    .line 582
    goto :goto_c

    .line 583
    :cond_13
    if-nez v2, :cond_14

    .line 584
    .line 585
    goto :goto_f

    .line 586
    :cond_14
    invoke-interface {v3}, Ls1/o;->j()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    mul-int v4, v2, v13

    .line 591
    .line 592
    invoke-interface {v3}, Ls1/o;->j()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    iget v5, v0, Ls1/q;->l:I

    .line 597
    .line 598
    sub-int/2addr v5, v2

    .line 599
    mul-int v5, v5, v13

    .line 600
    .line 601
    const/4 v6, 0x0

    .line 602
    invoke-static {v1, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    .line 604
    .line 605
    iget v1, v0, Ls1/q;->l:I

    .line 606
    .line 607
    sub-int/2addr v1, v2

    .line 608
    iput v1, v0, Ls1/q;->l:I

    .line 609
    .line 610
    :cond_15
    :goto_f
    return-void

    .line 611
    :cond_16
    move v11, v15

    .line 612
    move/from16 v10, v17

    .line 613
    .line 614
    const/4 v14, 0x0

    .line 615
    const/4 v15, 0x1

    .line 616
    goto/16 :goto_1
.end method
