.class public final Lk2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/x;
.implements Lk2/a;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lk2/g;

.field public final d:Landroidx/room/i;

.field public final e:Lu1/c0;

.field public final f:Lu1/c0;

.field public final g:[F

.field public final h:[F

.field public i:I

.field public j:Landroid/graphics/SurfaceTexture;

.field public volatile k:I

.field public l:I

.field public m:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk2/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lk2/i;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Lk2/g;

    .line 20
    .line 21
    invoke-direct {v0}, Lk2/g;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lk2/i;->c:Lk2/g;

    .line 25
    .line 26
    new-instance v0, Landroidx/room/i;

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v0, v1, v2}, Landroidx/room/i;-><init>(IZ)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lk2/i;->d:Landroidx/room/i;

    .line 34
    .line 35
    new-instance v0, Lu1/c0;

    .line 36
    .line 37
    invoke-direct {v0}, Lu1/c0;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lk2/i;->e:Lu1/c0;

    .line 41
    .line 42
    new-instance v0, Lu1/c0;

    .line 43
    .line 44
    invoke-direct {v0}, Lu1/c0;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lk2/i;->f:Lu1/c0;

    .line 48
    .line 49
    const/16 v0, 0x10

    .line 50
    .line 51
    new-array v1, v0, [F

    .line 52
    .line 53
    iput-object v1, p0, Lk2/i;->g:[F

    .line 54
    .line 55
    new-array v0, v0, [F

    .line 56
    .line 57
    iput-object v0, p0, Lk2/i;->h:[F

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lk2/i;->k:I

    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lk2/i;->l:I

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final a(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/i;->d:Landroidx/room/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lu1/c0;

    .line 6
    .line 7
    invoke-virtual {v0, p3, p1, p2}, Lu1/c0;->a(Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk2/i;->e:Lu1/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu1/c0;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk2/i;->d:Landroidx/room/i;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lu1/c0;

    .line 11
    .line 12
    invoke-virtual {v1}, Lu1/c0;->b()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Landroidx/room/i;->a:Z

    .line 17
    .line 18
    iget-object v0, p0, Lk2/i;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final c(JJLr1/p;Landroid/media/MediaFormat;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x2

    .line 10
    const/4 v8, 0x1

    .line 11
    iget-object v9, v0, Lk2/i;->e:Lu1/c0;

    .line 12
    .line 13
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    invoke-virtual {v9, v10, v1, v2}, Lu1/c0;->a(Ljava/lang/Object;J)V

    .line 18
    .line 19
    .line 20
    iget-object v9, v3, Lr1/p;->C:[B

    .line 21
    .line 22
    iget v3, v3, Lr1/p;->D:I

    .line 23
    .line 24
    iget-object v10, v0, Lk2/i;->m:[B

    .line 25
    .line 26
    iget v11, v0, Lk2/i;->l:I

    .line 27
    .line 28
    iput-object v9, v0, Lk2/i;->m:[B

    .line 29
    .line 30
    const/4 v9, -0x1

    .line 31
    if-ne v3, v9, :cond_0

    .line 32
    .line 33
    iget v3, v0, Lk2/i;->k:I

    .line 34
    .line 35
    :cond_0
    iput v3, v0, Lk2/i;->l:I

    .line 36
    .line 37
    if-ne v11, v3, :cond_1

    .line 38
    .line 39
    iget-object v3, v0, Lk2/i;->m:[B

    .line 40
    .line 41
    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    goto/16 :goto_d

    .line 48
    .line 49
    :cond_1
    iget-object v3, v0, Lk2/i;->m:[B

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    if-eqz v3, :cond_a

    .line 53
    .line 54
    iget v10, v0, Lk2/i;->l:I

    .line 55
    .line 56
    new-instance v11, Lu1/q;

    .line 57
    .line 58
    invoke-direct {v11, v3}, Lu1/q;-><init>([B)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-virtual {v11, v5}, Lu1/q;->P(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v11}, Lu1/q;->o()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v11, v6}, Lu1/q;->O(I)V

    .line 69
    .line 70
    .line 71
    const v12, 0x70726f6a

    .line 72
    .line 73
    .line 74
    if-ne v3, v12, :cond_5

    .line 75
    .line 76
    const/16 v3, 0x8

    .line 77
    .line 78
    invoke-virtual {v11, v3}, Lu1/q;->P(I)V

    .line 79
    .line 80
    .line 81
    iget v3, v11, Lu1/q;->b:I

    .line 82
    .line 83
    iget v12, v11, Lu1/q;->c:I

    .line 84
    .line 85
    :goto_0
    if-ge v3, v12, :cond_6

    .line 86
    .line 87
    invoke-virtual {v11}, Lu1/q;->o()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    add-int/2addr v13, v3

    .line 92
    if-le v13, v3, :cond_6

    .line 93
    .line 94
    if-le v13, v12, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v11}, Lu1/q;->o()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const v14, 0x79746d70

    .line 102
    .line 103
    .line 104
    if-eq v3, v14, :cond_4

    .line 105
    .line 106
    const v14, 0x6d736870

    .line 107
    .line 108
    .line 109
    if-ne v3, v14, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v11, v13}, Lu1/q;->O(I)V

    .line 113
    .line 114
    .line 115
    move v3, v13

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    :goto_1
    invoke-virtual {v11, v13}, Lu1/q;->N(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v11}, Landroid/support/v4/media/session/b;->z(Lu1/q;)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    invoke-static {v11}, Landroid/support/v4/media/session/b;->z(Lu1/q;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_3

    .line 130
    :catch_0
    nop

    .line 131
    :cond_6
    :goto_2
    move-object v3, v9

    .line 132
    :goto_3
    if-nez v3, :cond_7

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-eq v11, v8, :cond_9

    .line 140
    .line 141
    if-eq v11, v7, :cond_8

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    new-instance v9, Lk2/f;

    .line 145
    .line 146
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, Lk2/e;

    .line 151
    .line 152
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lk2/e;

    .line 157
    .line 158
    invoke-direct {v9, v11, v3, v10}, Lk2/f;-><init>(Lk2/e;Lk2/e;I)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_9
    new-instance v9, Lk2/f;

    .line 163
    .line 164
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lk2/e;

    .line 169
    .line 170
    invoke-direct {v9, v3, v3, v10}, Lk2/f;-><init>(Lk2/e;Lk2/e;I)V

    .line 171
    .line 172
    .line 173
    :cond_a
    :goto_4
    if-eqz v9, :cond_b

    .line 174
    .line 175
    invoke-static {v9}, Lk2/g;->b(Lk2/f;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_b

    .line 180
    .line 181
    goto/16 :goto_c

    .line 182
    .line 183
    :cond_b
    iget v3, v0, Lk2/i;->l:I

    .line 184
    .line 185
    const/high16 v9, 0x43340000    # 180.0f

    .line 186
    .line 187
    float-to-double v9, v9

    .line 188
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    double-to-float v9, v9

    .line 193
    const/high16 v10, 0x43b40000    # 360.0f

    .line 194
    .line 195
    float-to-double v10, v10

    .line 196
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 197
    .line 198
    .line 199
    move-result-wide v10

    .line 200
    double-to-float v10, v10

    .line 201
    const/16 v11, 0x24

    .line 202
    .line 203
    int-to-float v12, v11

    .line 204
    div-float v12, v9, v12

    .line 205
    .line 206
    const/16 v13, 0x48

    .line 207
    .line 208
    int-to-float v14, v13

    .line 209
    div-float v14, v10, v14

    .line 210
    .line 211
    const/16 v15, 0x3e70

    .line 212
    .line 213
    new-array v15, v15, [F

    .line 214
    .line 215
    const/16 v6, 0x29a0

    .line 216
    .line 217
    new-array v6, v6, [F

    .line 218
    .line 219
    const/4 v5, 0x0

    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const/16 v17, 0x0

    .line 223
    .line 224
    :goto_5
    if-ge v5, v11, :cond_12

    .line 225
    .line 226
    int-to-float v11, v5

    .line 227
    mul-float v11, v11, v12

    .line 228
    .line 229
    const/high16 v18, 0x40000000    # 2.0f

    .line 230
    .line 231
    div-float v19, v9, v18

    .line 232
    .line 233
    sub-float v11, v11, v19

    .line 234
    .line 235
    add-int/lit8 v13, v5, 0x1

    .line 236
    .line 237
    int-to-float v4, v13

    .line 238
    mul-float v4, v4, v12

    .line 239
    .line 240
    sub-float v4, v4, v19

    .line 241
    .line 242
    const/4 v8, 0x0

    .line 243
    :goto_6
    const/16 v7, 0x49

    .line 244
    .line 245
    if-ge v8, v7, :cond_11

    .line 246
    .line 247
    move/from16 p5, v4

    .line 248
    .line 249
    move/from16 v20, v11

    .line 250
    .line 251
    move/from16 v21, v13

    .line 252
    .line 253
    move/from16 v7, v16

    .line 254
    .line 255
    move/from16 v4, v17

    .line 256
    .line 257
    const/4 v11, 0x0

    .line 258
    const/4 v13, 0x2

    .line 259
    :goto_7
    if-ge v11, v13, :cond_10

    .line 260
    .line 261
    if-nez v11, :cond_c

    .line 262
    .line 263
    move/from16 v13, v20

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_c
    move/from16 v13, p5

    .line 267
    .line 268
    :goto_8
    int-to-float v1, v8

    .line 269
    mul-float v1, v1, v14

    .line 270
    .line 271
    const v2, 0x40490fdb    # (float)Math.PI

    .line 272
    .line 273
    .line 274
    add-float/2addr v2, v1

    .line 275
    div-float v16, v10, v18

    .line 276
    .line 277
    sub-float v2, v2, v16

    .line 278
    .line 279
    const/16 v16, 0x1

    .line 280
    .line 281
    add-int/lit8 v17, v7, 0x1

    .line 282
    .line 283
    move/from16 v22, v14

    .line 284
    .line 285
    const/high16 v14, 0x42480000    # 50.0f

    .line 286
    .line 287
    move/from16 v24, v8

    .line 288
    .line 289
    move/from16 v23, v9

    .line 290
    .line 291
    float-to-double v8, v14

    .line 292
    move v14, v3

    .line 293
    float-to-double v2, v2

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 295
    .line 296
    .line 297
    move-result-wide v25

    .line 298
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 299
    .line 300
    .line 301
    mul-double v25, v25, v8

    .line 302
    .line 303
    move/from16 v27, v14

    .line 304
    .line 305
    float-to-double v13, v13

    .line 306
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 307
    .line 308
    .line 309
    move-result-wide v28

    .line 310
    move/from16 v16, v11

    .line 311
    .line 312
    move/from16 v30, v12

    .line 313
    .line 314
    mul-double v11, v28, v25

    .line 315
    .line 316
    double-to-float v11, v11

    .line 317
    neg-float v11, v11

    .line 318
    aput v11, v15, v7

    .line 319
    .line 320
    const/4 v11, 0x2

    .line 321
    add-int/lit8 v12, v7, 0x2

    .line 322
    .line 323
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 324
    .line 325
    .line 326
    move-result-wide v25

    .line 327
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 328
    .line 329
    .line 330
    move/from16 v28, v5

    .line 331
    .line 332
    move-object v11, v6

    .line 333
    mul-double v5, v25, v8

    .line 334
    .line 335
    double-to-float v5, v5

    .line 336
    aput v5, v15, v17

    .line 337
    .line 338
    const/4 v5, 0x3

    .line 339
    add-int/lit8 v6, v7, 0x3

    .line 340
    .line 341
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 342
    .line 343
    .line 344
    move-result-wide v2

    .line 345
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 346
    .line 347
    .line 348
    mul-double v2, v2, v8

    .line 349
    .line 350
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 351
    .line 352
    .line 353
    move-result-wide v8

    .line 354
    mul-double v8, v8, v2

    .line 355
    .line 356
    double-to-float v2, v8

    .line 357
    aput v2, v15, v12

    .line 358
    .line 359
    const/4 v2, 0x1

    .line 360
    add-int/lit8 v8, v4, 0x1

    .line 361
    .line 362
    div-float/2addr v1, v10

    .line 363
    aput v1, v11, v4

    .line 364
    .line 365
    const/4 v1, 0x2

    .line 366
    add-int/lit8 v2, v4, 0x2

    .line 367
    .line 368
    add-int v5, v28, v16

    .line 369
    .line 370
    int-to-float v1, v5

    .line 371
    mul-float v1, v1, v30

    .line 372
    .line 373
    div-float v1, v1, v23

    .line 374
    .line 375
    aput v1, v11, v8

    .line 376
    .line 377
    if-nez v24, :cond_d

    .line 378
    .line 379
    if-eqz v16, :cond_e

    .line 380
    .line 381
    :cond_d
    move/from16 v3, v24

    .line 382
    .line 383
    const/16 v1, 0x48

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_e
    move/from16 v5, v16

    .line 387
    .line 388
    move/from16 v3, v24

    .line 389
    .line 390
    const/16 v1, 0x48

    .line 391
    .line 392
    const/4 v8, 0x1

    .line 393
    const/4 v9, 0x3

    .line 394
    goto :goto_a

    .line 395
    :goto_9
    move/from16 v5, v16

    .line 396
    .line 397
    const/4 v8, 0x1

    .line 398
    const/4 v9, 0x3

    .line 399
    if-ne v3, v1, :cond_f

    .line 400
    .line 401
    if-ne v5, v8, :cond_f

    .line 402
    .line 403
    :goto_a
    invoke-static {v15, v7, v15, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    .line 405
    .line 406
    add-int/lit8 v7, v7, 0x6

    .line 407
    .line 408
    const/4 v12, 0x2

    .line 409
    invoke-static {v11, v4, v11, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    .line 411
    .line 412
    const/4 v13, 0x4

    .line 413
    add-int/2addr v4, v13

    .line 414
    goto :goto_b

    .line 415
    :cond_f
    const/4 v12, 0x2

    .line 416
    const/4 v13, 0x4

    .line 417
    move v4, v2

    .line 418
    move v7, v6

    .line 419
    :goto_b
    add-int/lit8 v2, v5, 0x1

    .line 420
    .line 421
    move v8, v3

    .line 422
    move-object v6, v11

    .line 423
    move/from16 v14, v22

    .line 424
    .line 425
    move/from16 v9, v23

    .line 426
    .line 427
    move/from16 v3, v27

    .line 428
    .line 429
    move/from16 v5, v28

    .line 430
    .line 431
    move/from16 v12, v30

    .line 432
    .line 433
    const/4 v13, 0x2

    .line 434
    move v11, v2

    .line 435
    move-wide/from16 v1, p3

    .line 436
    .line 437
    goto/16 :goto_7

    .line 438
    .line 439
    :cond_10
    move/from16 v27, v3

    .line 440
    .line 441
    move/from16 v28, v5

    .line 442
    .line 443
    move-object v11, v6

    .line 444
    move v3, v8

    .line 445
    move/from16 v23, v9

    .line 446
    .line 447
    move/from16 v30, v12

    .line 448
    .line 449
    move/from16 v22, v14

    .line 450
    .line 451
    const/16 v1, 0x48

    .line 452
    .line 453
    const/4 v8, 0x1

    .line 454
    const/4 v9, 0x3

    .line 455
    const/4 v12, 0x2

    .line 456
    const/4 v13, 0x4

    .line 457
    add-int/lit8 v2, v3, 0x1

    .line 458
    .line 459
    move v8, v2

    .line 460
    move/from16 v17, v4

    .line 461
    .line 462
    move/from16 v16, v7

    .line 463
    .line 464
    move/from16 v11, v20

    .line 465
    .line 466
    move/from16 v13, v21

    .line 467
    .line 468
    move/from16 v9, v23

    .line 469
    .line 470
    move/from16 v3, v27

    .line 471
    .line 472
    move/from16 v12, v30

    .line 473
    .line 474
    move-wide/from16 v1, p3

    .line 475
    .line 476
    move/from16 v4, p5

    .line 477
    .line 478
    goto/16 :goto_6

    .line 479
    .line 480
    :cond_11
    move/from16 v21, v13

    .line 481
    .line 482
    move-wide/from16 v1, p3

    .line 483
    .line 484
    move/from16 v5, v21

    .line 485
    .line 486
    const/4 v7, 0x2

    .line 487
    const/4 v8, 0x1

    .line 488
    const/16 v11, 0x24

    .line 489
    .line 490
    const/16 v13, 0x48

    .line 491
    .line 492
    goto/16 :goto_5

    .line 493
    .line 494
    :cond_12
    move/from16 v27, v3

    .line 495
    .line 496
    move-object v11, v6

    .line 497
    new-instance v1, La9/a;

    .line 498
    .line 499
    const/4 v2, 0x0

    .line 500
    invoke-direct {v1, v2, v15, v11, v8}, La9/a;-><init>(I[F[FI)V

    .line 501
    .line 502
    .line 503
    new-instance v9, Lk2/f;

    .line 504
    .line 505
    new-instance v3, Lk2/e;

    .line 506
    .line 507
    new-array v4, v8, [La9/a;

    .line 508
    .line 509
    aput-object v1, v4, v2

    .line 510
    .line 511
    invoke-direct {v3, v4}, Lk2/e;-><init>([La9/a;)V

    .line 512
    .line 513
    .line 514
    move/from16 v1, v27

    .line 515
    .line 516
    invoke-direct {v9, v3, v3, v1}, Lk2/f;-><init>(Lk2/e;Lk2/e;I)V

    .line 517
    .line 518
    .line 519
    :goto_c
    iget-object v1, v0, Lk2/i;->f:Lu1/c0;

    .line 520
    .line 521
    move-wide/from16 v2, p3

    .line 522
    .line 523
    invoke-virtual {v1, v9, v2, v3}, Lu1/c0;->a(Ljava/lang/Object;J)V

    .line 524
    .line 525
    .line 526
    :goto_d
    return-void
.end method

.method public final d([F)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v0, 0x4000

    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lu1/a;->b()V
    :try_end_0
    .catch Lu1/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    move-object v2, v0

    .line 14
    const-string v0, "Failed to draw a frame"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, v1, Lk2/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v4, 0x2

    .line 28
    if-eqz v0, :cond_7

    .line 29
    .line 30
    iget-object v0, v1, Lk2/i;->j:Landroid/graphics/SurfaceTexture;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-static {}, Lu1/a;->b()V
    :try_end_1
    .catch Lu1/h; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception v0

    .line 43
    move-object v5, v0

    .line 44
    const-string v0, "Failed to draw a frame"

    .line 45
    .line 46
    invoke-static {v0, v5}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v0, v1, Lk2/i;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object v0, v1, Lk2/i;->g:[F

    .line 58
    .line 59
    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v0, v1, Lk2/i;->j:Landroid/graphics/SurfaceTexture;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    iget-object v7, v1, Lk2/i;->e:Lu1/c0;

    .line 69
    .line 70
    monitor-enter v7

    .line 71
    :try_start_2
    invoke-virtual {v7, v5, v6, v3}, Lu1/c0;->d(JZ)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    monitor-exit v7

    .line 76
    check-cast v0, Ljava/lang/Long;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v7, v1, Lk2/i;->d:Landroidx/room/i;

    .line 81
    .line 82
    iget-object v8, v1, Lk2/i;->g:[F

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v9

    .line 88
    iget-object v0, v7, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lu1/c0;

    .line 91
    .line 92
    invoke-virtual {v0, v9, v10}, Lu1/c0;->f(J)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, [F

    .line 97
    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_1
    aget v9, v0, v3

    .line 102
    .line 103
    aget v10, v0, v2

    .line 104
    .line 105
    neg-float v10, v10

    .line 106
    aget v0, v0, v4

    .line 107
    .line 108
    neg-float v0, v0

    .line 109
    invoke-static {v9, v10, v0}, Landroid/opengl/Matrix;->length(FFF)F

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    iget-object v12, v7, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v13, v12

    .line 116
    check-cast v13, [F

    .line 117
    .line 118
    const/4 v12, 0x0

    .line 119
    cmpl-float v12, v11, v12

    .line 120
    .line 121
    if-eqz v12, :cond_2

    .line 122
    .line 123
    float-to-double v14, v11

    .line 124
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v14

    .line 128
    double-to-float v15, v14

    .line 129
    div-float v16, v9, v11

    .line 130
    .line 131
    div-float v17, v10, v11

    .line 132
    .line 133
    div-float v18, v0, v11

    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    invoke-static {v13, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 141
    .line 142
    .line 143
    :goto_2
    iget-boolean v0, v7, Landroidx/room/i;->a:Z

    .line 144
    .line 145
    if-nez v0, :cond_3

    .line 146
    .line 147
    iget-object v0, v7, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, [F

    .line 150
    .line 151
    iget-object v9, v7, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v9, [F

    .line 154
    .line 155
    invoke-static {v0, v9}, Landroidx/room/i;->d([F[F)V

    .line 156
    .line 157
    .line 158
    iput-boolean v2, v7, Landroidx/room/i;->a:Z

    .line 159
    .line 160
    :cond_3
    iget-object v0, v7, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 161
    .line 162
    move-object v12, v0

    .line 163
    check-cast v12, [F

    .line 164
    .line 165
    iget-object v0, v7, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 166
    .line 167
    move-object v10, v0

    .line 168
    check-cast v10, [F

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v11, 0x0

    .line 173
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_3
    iget-object v0, v1, Lk2/i;->f:Lu1/c0;

    .line 177
    .line 178
    invoke-virtual {v0, v5, v6}, Lu1/c0;->f(J)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lk2/f;

    .line 183
    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    iget-object v5, v1, Lk2/i;->c:Lk2/g;

    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lk2/g;->b(Lk2/f;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-nez v6, :cond_5

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    iget v6, v0, Lk2/f;->c:I

    .line 199
    .line 200
    iput v6, v5, Lk2/g;->a:I

    .line 201
    .line 202
    new-instance v6, La9/a;

    .line 203
    .line 204
    iget-object v7, v0, Lk2/f;->a:Lk2/e;

    .line 205
    .line 206
    iget-object v7, v7, Lk2/e;->a:[La9/a;

    .line 207
    .line 208
    aget-object v7, v7, v3

    .line 209
    .line 210
    invoke-direct {v6, v7}, La9/a;-><init>(La9/a;)V

    .line 211
    .line 212
    .line 213
    iput-object v6, v5, Lk2/g;->b:La9/a;

    .line 214
    .line 215
    iget-boolean v5, v0, Lk2/f;->d:Z

    .line 216
    .line 217
    if-eqz v5, :cond_6

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_6
    new-instance v5, La9/a;

    .line 221
    .line 222
    iget-object v0, v0, Lk2/f;->b:Lk2/e;

    .line 223
    .line 224
    iget-object v0, v0, Lk2/e;->a:[La9/a;

    .line 225
    .line 226
    aget-object v0, v0, v3

    .line 227
    .line 228
    invoke-direct {v5, v0}, La9/a;-><init>(La9/a;)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catchall_0
    move-exception v0

    .line 233
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    throw v0

    .line 235
    :cond_7
    :goto_4
    iget-object v8, v1, Lk2/i;->h:[F

    .line 236
    .line 237
    iget-object v12, v1, Lk2/i;->g:[F

    .line 238
    .line 239
    const/4 v9, 0x0

    .line 240
    const/4 v11, 0x0

    .line 241
    const/4 v13, 0x0

    .line 242
    move-object/from16 v10, p1

    .line 243
    .line 244
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 245
    .line 246
    .line 247
    iget-object v5, v1, Lk2/i;->c:Lk2/g;

    .line 248
    .line 249
    iget v0, v1, Lk2/i;->i:I

    .line 250
    .line 251
    iget-object v6, v1, Lk2/i;->h:[F

    .line 252
    .line 253
    iget-object v7, v5, Lk2/g;->b:La9/a;

    .line 254
    .line 255
    if-nez v7, :cond_8

    .line 256
    .line 257
    goto/16 :goto_9

    .line 258
    .line 259
    :cond_8
    iget v8, v5, Lk2/g;->a:I

    .line 260
    .line 261
    if-ne v8, v2, :cond_9

    .line 262
    .line 263
    sget-object v4, Lk2/g;->j:[F

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_9
    if-ne v8, v4, :cond_a

    .line 267
    .line 268
    sget-object v4, Lk2/g;->k:[F

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_a
    sget-object v4, Lk2/g;->i:[F

    .line 272
    .line 273
    :goto_5
    iget v8, v5, Lk2/g;->e:I

    .line 274
    .line 275
    invoke-static {v8, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 276
    .line 277
    .line 278
    iget v4, v5, Lk2/g;->d:I

    .line 279
    .line 280
    invoke-static {v4, v2, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 281
    .line 282
    .line 283
    const v2, 0x84c0

    .line 284
    .line 285
    .line 286
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 287
    .line 288
    .line 289
    const v2, 0x8d65

    .line 290
    .line 291
    .line 292
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 293
    .line 294
    .line 295
    iget v0, v5, Lk2/g;->h:I

    .line 296
    .line 297
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 298
    .line 299
    .line 300
    :try_start_4
    invoke-static {}, Lu1/a;->b()V
    :try_end_4
    .catch Lu1/h; {:try_start_4 .. :try_end_4} :catch_2

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :catch_2
    move-exception v0

    .line 305
    move-object v2, v0

    .line 306
    const-string v0, "Failed to bind uniforms"

    .line 307
    .line 308
    invoke-static {v0, v2}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    :goto_6
    iget v8, v5, Lk2/g;->f:I

    .line 312
    .line 313
    iget-object v0, v7, La9/a;->d:Ljava/lang/Object;

    .line 314
    .line 315
    move-object v13, v0

    .line 316
    check-cast v13, Ljava/nio/FloatBuffer;

    .line 317
    .line 318
    const/16 v10, 0x1406

    .line 319
    .line 320
    const/4 v11, 0x0

    .line 321
    const/4 v9, 0x3

    .line 322
    const/16 v12, 0xc

    .line 323
    .line 324
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 325
    .line 326
    .line 327
    :try_start_5
    invoke-static {}, Lu1/a;->b()V
    :try_end_5
    .catch Lu1/h; {:try_start_5 .. :try_end_5} :catch_3

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :catch_3
    move-exception v0

    .line 332
    move-object v2, v0

    .line 333
    const-string v0, "Failed to load position data"

    .line 334
    .line 335
    invoke-static {v0, v2}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    .line 337
    .line 338
    :goto_7
    iget v8, v5, Lk2/g;->g:I

    .line 339
    .line 340
    iget-object v0, v7, La9/a;->e:Ljava/lang/Object;

    .line 341
    .line 342
    move-object v13, v0

    .line 343
    check-cast v13, Ljava/nio/FloatBuffer;

    .line 344
    .line 345
    const/16 v10, 0x1406

    .line 346
    .line 347
    const/4 v11, 0x0

    .line 348
    const/4 v9, 0x2

    .line 349
    const/16 v12, 0x8

    .line 350
    .line 351
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 352
    .line 353
    .line 354
    :try_start_6
    invoke-static {}, Lu1/a;->b()V
    :try_end_6
    .catch Lu1/h; {:try_start_6 .. :try_end_6} :catch_4

    .line 355
    .line 356
    .line 357
    goto :goto_8

    .line 358
    :catch_4
    move-exception v0

    .line 359
    move-object v2, v0

    .line 360
    const-string v0, "Failed to load texture data"

    .line 361
    .line 362
    invoke-static {v0, v2}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .line 364
    .line 365
    :goto_8
    iget v0, v7, La9/a;->c:I

    .line 366
    .line 367
    iget v2, v7, La9/a;->b:I

    .line 368
    .line 369
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 370
    .line 371
    .line 372
    :try_start_7
    invoke-static {}, Lu1/a;->b()V
    :try_end_7
    .catch Lu1/h; {:try_start_7 .. :try_end_7} :catch_5

    .line 373
    .line 374
    .line 375
    goto :goto_9

    .line 376
    :catch_5
    move-exception v0

    .line 377
    move-object v2, v0

    .line 378
    const-string v0, "Failed to render"

    .line 379
    .line 380
    invoke-static {v0, v2}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    .line 382
    .line 383
    :goto_9
    return-void
.end method

.method public final e()Landroid/graphics/SurfaceTexture;
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    :try_start_0
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lu1/a;->b()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lk2/i;->c:Lk2/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lk2/g;->a()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lu1/a;->b()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v1, v0, [I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lu1/a;->b()V

    .line 27
    .line 28
    .line 29
    aget v0, v1, v2

    .line 30
    .line 31
    const v1, 0x8d65

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lu1/a;->b()V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x2800

    .line 41
    .line 42
    const/16 v3, 0x2601

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lu1/a;->b()V

    .line 48
    .line 49
    .line 50
    const/16 v2, 0x2801

    .line 51
    .line 52
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lu1/a;->b()V

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x2802

    .line 59
    .line 60
    const v3, 0x812f

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lu1/a;->b()V

    .line 67
    .line 68
    .line 69
    const/16 v2, 0x2803

    .line 70
    .line 71
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lu1/a;->b()V

    .line 75
    .line 76
    .line 77
    iput v0, p0, Lk2/i;->i:I
    :try_end_0
    .catch Lu1/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "Failed to initialize the renderer"

    .line 82
    .line 83
    invoke-static {v1, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 87
    .line 88
    iget v1, p0, Lk2/i;->i:I

    .line 89
    .line 90
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lk2/i;->j:Landroid/graphics/SurfaceTexture;

    .line 94
    .line 95
    new-instance v1, Lk2/h;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lk2/h;-><init>(Lk2/i;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lk2/i;->j:Landroid/graphics/SurfaceTexture;

    .line 104
    .line 105
    return-object v0
.end method
