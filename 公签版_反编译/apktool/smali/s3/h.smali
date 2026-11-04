.class public final Ls3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# static fields
.field public static final r:[D


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ll2/j0;

.field public final c:Ls3/a0;

.field public final d:Ljava/lang/String;

.field public final e:Lu1/q;

.field public final f:Ls3/t;

.field public final g:[Z

.field public final h:Ls3/g;

.field public i:J

.field public j:Z

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:Z

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ls3/h;->r:[D

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Ls3/a0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls3/h;->c:Ls3/a0;

    .line 5
    .line 6
    iput-object p2, p0, Ls3/h;->d:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    new-array p2, p2, [Z

    .line 10
    .line 11
    iput-object p2, p0, Ls3/h;->g:[Z

    .line 12
    .line 13
    new-instance p2, Ls3/g;

    .line 14
    .line 15
    invoke-direct {p2}, Ls3/g;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Ls3/h;->h:Ls3/g;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Ls3/t;

    .line 23
    .line 24
    const/16 p2, 0xb2

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ls3/t;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ls3/h;->f:Ls3/t;

    .line 30
    .line 31
    new-instance p1, Lu1/q;

    .line 32
    .line 33
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Ls3/h;->e:Lu1/q;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Ls3/h;->f:Ls3/t;

    .line 41
    .line 42
    iput-object p1, p0, Ls3/h;->e:Lu1/q;

    .line 43
    .line 44
    :goto_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iput-wide p1, p0, Ls3/h;->m:J

    .line 50
    .line 51
    iput-wide p1, p0, Ls3/h;->o:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lu1/q;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v5, 0x3

    .line 7
    iget-object v6, v0, Ls3/h;->b:Ll2/j0;

    .line 8
    .line 9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v6, v1, Lu1/q;->b:I

    .line 13
    .line 14
    iget v7, v1, Lu1/q;->c:I

    .line 15
    .line 16
    iget-object v8, v1, Lu1/q;->a:[B

    .line 17
    .line 18
    iget-wide v9, v0, Ls3/h;->i:J

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 21
    .line 22
    .line 23
    move-result v11

    .line 24
    int-to-long v11, v11

    .line 25
    add-long/2addr v9, v11

    .line 26
    iput-wide v9, v0, Ls3/h;->i:J

    .line 27
    .line 28
    iget-object v9, v0, Ls3/h;->b:Ll2/j0;

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    invoke-interface {v9, v10, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v9, v0, Ls3/h;->g:[Z

    .line 38
    .line 39
    invoke-static {v8, v6, v7, v9}, Lv1/o;->c([BII[Z)I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    iget-object v10, v0, Ls3/h;->h:Ls3/g;

    .line 44
    .line 45
    iget-object v11, v0, Ls3/h;->f:Ls3/t;

    .line 46
    .line 47
    if-ne v9, v7, :cond_2

    .line 48
    .line 49
    iget-boolean v1, v0, Ls3/h;->k:Z

    .line 50
    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v10, v6, v7, v8}, Ls3/g;->a(II[B)V

    .line 54
    .line 55
    .line 56
    :cond_0
    if-eqz v11, :cond_1

    .line 57
    .line 58
    invoke-virtual {v11, v6, v7, v8}, Ls3/t;->a(II[B)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :cond_2
    iget-object v12, v1, Lu1/q;->a:[B

    .line 63
    .line 64
    add-int/lit8 v13, v9, 0x3

    .line 65
    .line 66
    aget-byte v12, v12, v13

    .line 67
    .line 68
    and-int/lit16 v12, v12, 0xff

    .line 69
    .line 70
    sub-int v14, v9, v6

    .line 71
    .line 72
    iget-boolean v15, v0, Ls3/h;->k:Z

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    if-nez v15, :cond_d

    .line 76
    .line 77
    if-lez v14, :cond_3

    .line 78
    .line 79
    invoke-virtual {v10, v6, v9, v8}, Ls3/g;->a(II[B)V

    .line 80
    .line 81
    .line 82
    :cond_3
    if-gez v14, :cond_4

    .line 83
    .line 84
    neg-int v15, v14

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/4 v15, 0x0

    .line 87
    :goto_1
    iget-boolean v5, v10, Ls3/g;->a:Z

    .line 88
    .line 89
    if-eqz v5, :cond_b

    .line 90
    .line 91
    iget v5, v10, Ls3/g;->b:I

    .line 92
    .line 93
    sub-int/2addr v5, v15

    .line 94
    iput v5, v10, Ls3/g;->b:I

    .line 95
    .line 96
    iget v15, v10, Ls3/g;->c:I

    .line 97
    .line 98
    if-nez v15, :cond_5

    .line 99
    .line 100
    const/16 v15, 0xb5

    .line 101
    .line 102
    if-ne v12, v15, :cond_5

    .line 103
    .line 104
    iput v5, v10, Ls3/g;->c:I

    .line 105
    .line 106
    move/from16 v17, v7

    .line 107
    .line 108
    move/from16 v18, v13

    .line 109
    .line 110
    move v13, v6

    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_5
    iput-boolean v4, v10, Ls3/g;->a:Z

    .line 114
    .line 115
    iget-object v5, v0, Ls3/h;->a:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v15, v10, Ls3/g;->d:[B

    .line 121
    .line 122
    iget v4, v10, Ls3/g;->b:I

    .line 123
    .line 124
    invoke-static {v15, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    aget-byte v15, v4, v3

    .line 129
    .line 130
    and-int/lit16 v15, v15, 0xff

    .line 131
    .line 132
    const/16 v16, 0x5

    .line 133
    .line 134
    aget-byte v2, v4, v16

    .line 135
    .line 136
    and-int/lit16 v3, v2, 0xff

    .line 137
    .line 138
    const/16 v17, 0x6

    .line 139
    .line 140
    move/from16 v18, v13

    .line 141
    .line 142
    aget-byte v13, v4, v17

    .line 143
    .line 144
    and-int/lit16 v13, v13, 0xff

    .line 145
    .line 146
    move/from16 v17, v7

    .line 147
    .line 148
    const/4 v7, 0x4

    .line 149
    shl-int/2addr v15, v7

    .line 150
    shr-int/2addr v3, v7

    .line 151
    or-int/2addr v3, v15

    .line 152
    and-int/lit8 v2, v2, 0xf

    .line 153
    .line 154
    const/16 v15, 0x8

    .line 155
    .line 156
    shl-int/2addr v2, v15

    .line 157
    or-int/2addr v2, v13

    .line 158
    const/4 v13, 0x7

    .line 159
    aget-byte v15, v4, v13

    .line 160
    .line 161
    and-int/lit16 v15, v15, 0xf0

    .line 162
    .line 163
    shr-int/2addr v15, v7

    .line 164
    const/4 v13, 0x2

    .line 165
    if-eq v15, v13, :cond_8

    .line 166
    .line 167
    const/4 v13, 0x3

    .line 168
    if-eq v15, v13, :cond_7

    .line 169
    .line 170
    if-eq v15, v7, :cond_6

    .line 171
    .line 172
    const/high16 v7, 0x3f800000    # 1.0f

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    mul-int/lit8 v7, v2, 0x79

    .line 176
    .line 177
    int-to-float v7, v7

    .line 178
    mul-int/lit8 v13, v3, 0x64

    .line 179
    .line 180
    :goto_2
    int-to-float v13, v13

    .line 181
    div-float/2addr v7, v13

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    mul-int/lit8 v7, v2, 0x10

    .line 184
    .line 185
    int-to-float v7, v7

    .line 186
    mul-int/lit8 v13, v3, 0x9

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_8
    mul-int/lit8 v13, v2, 0x4

    .line 190
    .line 191
    int-to-float v13, v13

    .line 192
    const/4 v15, 0x3

    .line 193
    mul-int/lit8 v7, v3, 0x3

    .line 194
    .line 195
    int-to-float v7, v7

    .line 196
    div-float v7, v13, v7

    .line 197
    .line 198
    :goto_3
    new-instance v13, Lr1/o;

    .line 199
    .line 200
    invoke-direct {v13}, Lr1/o;-><init>()V

    .line 201
    .line 202
    .line 203
    iput-object v5, v13, Lr1/o;->a:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v5, v0, Ls3/h;->d:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    iput-object v5, v13, Lr1/o;->m:Ljava/lang/String;

    .line 212
    .line 213
    const-string v5, "video/mpeg2"

    .line 214
    .line 215
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    iput-object v5, v13, Lr1/o;->n:Ljava/lang/String;

    .line 220
    .line 221
    iput v3, v13, Lr1/o;->u:I

    .line 222
    .line 223
    iput v2, v13, Lr1/o;->v:I

    .line 224
    .line 225
    iput v7, v13, Lr1/o;->A:F

    .line 226
    .line 227
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iput-object v2, v13, Lr1/o;->q:Ljava/util/List;

    .line 232
    .line 233
    new-instance v2, Lr1/p;

    .line 234
    .line 235
    invoke-direct {v2, v13}, Lr1/p;-><init>(Lr1/o;)V

    .line 236
    .line 237
    .line 238
    const/4 v3, 0x7

    .line 239
    aget-byte v3, v4, v3

    .line 240
    .line 241
    and-int/lit8 v3, v3, 0xf

    .line 242
    .line 243
    const/4 v5, 0x1

    .line 244
    sub-int/2addr v3, v5

    .line 245
    if-ltz v3, :cond_a

    .line 246
    .line 247
    const/16 v5, 0x8

    .line 248
    .line 249
    if-ge v3, v5, :cond_a

    .line 250
    .line 251
    sget-object v5, Ls3/h;->r:[D

    .line 252
    .line 253
    aget-wide v19, v5, v3

    .line 254
    .line 255
    iget v3, v10, Ls3/g;->c:I

    .line 256
    .line 257
    add-int/lit8 v3, v3, 0x9

    .line 258
    .line 259
    aget-byte v3, v4, v3

    .line 260
    .line 261
    and-int/lit8 v4, v3, 0x60

    .line 262
    .line 263
    shr-int/lit8 v4, v4, 0x5

    .line 264
    .line 265
    and-int/lit8 v3, v3, 0x1f

    .line 266
    .line 267
    if-eq v4, v3, :cond_9

    .line 268
    .line 269
    int-to-double v4, v4

    .line 270
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 271
    .line 272
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 273
    .line 274
    .line 275
    add-double v4, v4, v21

    .line 276
    .line 277
    const/4 v7, 0x1

    .line 278
    add-int/2addr v3, v7

    .line 279
    move v13, v6

    .line 280
    int-to-double v6, v3

    .line 281
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 282
    .line 283
    .line 284
    div-double/2addr v4, v6

    .line 285
    mul-double v19, v19, v4

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_9
    move v13, v6

    .line 289
    :goto_4
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    div-double v3, v3, v19

    .line 295
    .line 296
    double-to-long v3, v3

    .line 297
    goto :goto_5

    .line 298
    :cond_a
    move v13, v6

    .line 299
    const-wide/16 v3, 0x0

    .line 300
    .line 301
    :goto_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    iget-object v3, v0, Ls3/h;->b:Ll2/j0;

    .line 310
    .line 311
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v4, Lr1/p;

    .line 314
    .line 315
    invoke-interface {v3, v4}, Ll2/j0;->g(Lr1/p;)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v2, Ljava/lang/Long;

    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 323
    .line 324
    .line 325
    move-result-wide v2

    .line 326
    iput-wide v2, v0, Ls3/h;->l:J

    .line 327
    .line 328
    const/4 v2, 0x1

    .line 329
    iput-boolean v2, v0, Ls3/h;->k:Z

    .line 330
    .line 331
    const/4 v4, 0x3

    .line 332
    goto :goto_7

    .line 333
    :cond_b
    move/from16 v17, v7

    .line 334
    .line 335
    move/from16 v18, v13

    .line 336
    .line 337
    const/4 v2, 0x1

    .line 338
    const/16 v3, 0xb3

    .line 339
    .line 340
    move v13, v6

    .line 341
    if-ne v12, v3, :cond_c

    .line 342
    .line 343
    iput-boolean v2, v10, Ls3/g;->a:Z

    .line 344
    .line 345
    :cond_c
    :goto_6
    sget-object v2, Ls3/g;->e:[B

    .line 346
    .line 347
    const/4 v3, 0x0

    .line 348
    const/4 v4, 0x3

    .line 349
    invoke-virtual {v10, v3, v4, v2}, Ls3/g;->a(II[B)V

    .line 350
    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_d
    move/from16 v17, v7

    .line 354
    .line 355
    move/from16 v18, v13

    .line 356
    .line 357
    const/4 v4, 0x3

    .line 358
    move v13, v6

    .line 359
    :goto_7
    if-eqz v11, :cond_10

    .line 360
    .line 361
    if-lez v14, :cond_e

    .line 362
    .line 363
    invoke-virtual {v11, v13, v9, v8}, Ls3/t;->a(II[B)V

    .line 364
    .line 365
    .line 366
    const/4 v3, 0x0

    .line 367
    goto :goto_8

    .line 368
    :cond_e
    neg-int v3, v14

    .line 369
    :goto_8
    invoke-virtual {v11, v3}, Ls3/t;->b(I)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_f

    .line 374
    .line 375
    iget-object v2, v11, Ls3/t;->e:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v2, [B

    .line 378
    .line 379
    iget v3, v11, Ls3/t;->d:I

    .line 380
    .line 381
    invoke-static {v3, v2}, Lv1/o;->p(I[B)I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 386
    .line 387
    iget-object v3, v11, Ls3/t;->e:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v3, [B

    .line 390
    .line 391
    iget-object v5, v0, Ls3/h;->e:Lu1/q;

    .line 392
    .line 393
    invoke-virtual {v5, v2, v3}, Lu1/q;->M(I[B)V

    .line 394
    .line 395
    .line 396
    iget-wide v2, v0, Ls3/h;->o:J

    .line 397
    .line 398
    iget-object v6, v0, Ls3/h;->c:Ls3/a0;

    .line 399
    .line 400
    invoke-virtual {v6, v2, v3, v5}, Ls3/a0;->a(JLu1/q;)V

    .line 401
    .line 402
    .line 403
    :cond_f
    const/16 v2, 0xb2

    .line 404
    .line 405
    if-ne v12, v2, :cond_10

    .line 406
    .line 407
    iget-object v2, v1, Lu1/q;->a:[B

    .line 408
    .line 409
    const/4 v3, 0x2

    .line 410
    add-int/lit8 v5, v9, 0x2

    .line 411
    .line 412
    aget-byte v2, v2, v5

    .line 413
    .line 414
    const/4 v5, 0x1

    .line 415
    if-ne v2, v5, :cond_11

    .line 416
    .line 417
    invoke-virtual {v11, v12}, Ls3/t;->e(I)V

    .line 418
    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_10
    const/4 v3, 0x2

    .line 422
    const/4 v5, 0x1

    .line 423
    :cond_11
    :goto_9
    if-eqz v12, :cond_14

    .line 424
    .line 425
    const/16 v2, 0xb3

    .line 426
    .line 427
    if-ne v12, v2, :cond_12

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_12
    const/16 v2, 0xb8

    .line 431
    .line 432
    if-ne v12, v2, :cond_13

    .line 433
    .line 434
    iput-boolean v5, v0, Ls3/h;->p:Z

    .line 435
    .line 436
    :cond_13
    const/4 v3, 0x1

    .line 437
    goto :goto_f

    .line 438
    :cond_14
    :goto_a
    sub-int v7, v17, v9

    .line 439
    .line 440
    iget-boolean v2, v0, Ls3/h;->q:Z

    .line 441
    .line 442
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    if-eqz v2, :cond_15

    .line 448
    .line 449
    iget-boolean v2, v0, Ls3/h;->k:Z

    .line 450
    .line 451
    if-eqz v2, :cond_15

    .line 452
    .line 453
    iget-wide v9, v0, Ls3/h;->o:J

    .line 454
    .line 455
    cmp-long v2, v9, v5

    .line 456
    .line 457
    if-eqz v2, :cond_15

    .line 458
    .line 459
    iget-boolean v2, v0, Ls3/h;->p:Z

    .line 460
    .line 461
    iget-wide v13, v0, Ls3/h;->i:J

    .line 462
    .line 463
    iget-wide v3, v0, Ls3/h;->n:J

    .line 464
    .line 465
    sub-long/2addr v13, v3

    .line 466
    long-to-int v3, v13

    .line 467
    sub-int v23, v3, v7

    .line 468
    .line 469
    iget-object v3, v0, Ls3/h;->b:Ll2/j0;

    .line 470
    .line 471
    const/16 v25, 0x0

    .line 472
    .line 473
    move-object/from16 v19, v3

    .line 474
    .line 475
    move-wide/from16 v20, v9

    .line 476
    .line 477
    move/from16 v22, v2

    .line 478
    .line 479
    move/from16 v24, v7

    .line 480
    .line 481
    invoke-interface/range {v19 .. v25}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 482
    .line 483
    .line 484
    :cond_15
    iget-boolean v2, v0, Ls3/h;->j:Z

    .line 485
    .line 486
    if-eqz v2, :cond_17

    .line 487
    .line 488
    iget-boolean v2, v0, Ls3/h;->q:Z

    .line 489
    .line 490
    if-eqz v2, :cond_16

    .line 491
    .line 492
    goto :goto_b

    .line 493
    :cond_16
    const/4 v2, 0x0

    .line 494
    const/4 v3, 0x1

    .line 495
    goto :goto_d

    .line 496
    :cond_17
    :goto_b
    iget-wide v2, v0, Ls3/h;->i:J

    .line 497
    .line 498
    int-to-long v9, v7

    .line 499
    sub-long/2addr v2, v9

    .line 500
    iput-wide v2, v0, Ls3/h;->n:J

    .line 501
    .line 502
    iget-wide v2, v0, Ls3/h;->m:J

    .line 503
    .line 504
    cmp-long v4, v2, v5

    .line 505
    .line 506
    if-eqz v4, :cond_18

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_18
    iget-wide v2, v0, Ls3/h;->o:J

    .line 510
    .line 511
    cmp-long v4, v2, v5

    .line 512
    .line 513
    if-eqz v4, :cond_19

    .line 514
    .line 515
    iget-wide v9, v0, Ls3/h;->l:J

    .line 516
    .line 517
    add-long/2addr v2, v9

    .line 518
    goto :goto_c

    .line 519
    :cond_19
    move-wide v2, v5

    .line 520
    :goto_c
    iput-wide v2, v0, Ls3/h;->o:J

    .line 521
    .line 522
    const/4 v2, 0x0

    .line 523
    iput-boolean v2, v0, Ls3/h;->p:Z

    .line 524
    .line 525
    iput-wide v5, v0, Ls3/h;->m:J

    .line 526
    .line 527
    const/4 v3, 0x1

    .line 528
    iput-boolean v3, v0, Ls3/h;->j:Z

    .line 529
    .line 530
    :goto_d
    if-nez v12, :cond_1a

    .line 531
    .line 532
    const/4 v4, 0x1

    .line 533
    goto :goto_e

    .line 534
    :cond_1a
    const/4 v4, 0x0

    .line 535
    :goto_e
    iput-boolean v4, v0, Ls3/h;->q:Z

    .line 536
    .line 537
    :goto_f
    move/from16 v7, v17

    .line 538
    .line 539
    move/from16 v6, v18

    .line 540
    .line 541
    const/4 v3, 0x4

    .line 542
    const/4 v5, 0x3

    .line 543
    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls3/h;->g:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lv1/o;->b([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls3/h;->h:Ls3/g;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Ls3/g;->a:Z

    .line 10
    .line 11
    iput v1, v0, Ls3/g;->b:I

    .line 12
    .line 13
    iput v1, v0, Ls3/g;->c:I

    .line 14
    .line 15
    iget-object v0, p0, Ls3/h;->f:Ls3/t;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ls3/t;->d()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    iput-wide v2, p0, Ls3/h;->i:J

    .line 25
    .line 26
    iput-boolean v1, p0, Ls3/h;->j:Z

    .line 27
    .line 28
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide v0, p0, Ls3/h;->m:J

    .line 34
    .line 35
    iput-wide v0, p0, Ls3/h;->o:J

    .line 36
    .line 37
    return-void
.end method

.method public final c(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Ls3/h;->b:Ll2/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean v4, p0, Ls3/h;->p:Z

    .line 9
    .line 10
    iget-wide v0, p0, Ls3/h;->i:J

    .line 11
    .line 12
    iget-wide v2, p0, Ls3/h;->n:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    long-to-int v5, v0

    .line 16
    iget-object v1, p0, Ls3/h;->b:Ll2/j0;

    .line 17
    .line 18
    iget-wide v2, p0, Ls3/h;->o:J

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    invoke-interface/range {v1 .. v7}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Ls3/h;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ll2/q;Ls3/d0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Ls3/h;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 14
    .line 15
    .line 16
    iget v0, p2, Ls3/d0;->d:I

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-interface {p1, v0, v1}, Ll2/q;->z(II)Ll2/j0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Ls3/h;->b:Ll2/j0;

    .line 24
    .line 25
    iget-object v0, p0, Ls3/h;->c:Ls3/a0;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Ls3/a0;->b(Ll2/q;Ls3/d0;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
