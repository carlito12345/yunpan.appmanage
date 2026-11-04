.class public final Ls3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# static fields
.field public static final l:[F


# instance fields
.field public final a:Ls3/a0;

.field public final b:Lu1/q;

.field public final c:[Z

.field public final d:Ls3/i;

.field public final e:Ls3/t;

.field public f:Ls3/j;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ll2/j0;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls3/k;->l:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ls3/a0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls3/k;->a:Ls3/a0;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Ls3/k;->c:[Z

    .line 10
    .line 11
    new-instance p1, Ls3/i;

    .line 12
    .line 13
    invoke-direct {p1}, Ls3/i;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ls3/k;->d:Ls3/i;

    .line 17
    .line 18
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide v0, p0, Ls3/k;->k:J

    .line 24
    .line 25
    new-instance p1, Ls3/t;

    .line 26
    .line 27
    const/16 v0, 0xb2

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ls3/t;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Ls3/k;->e:Ls3/t;

    .line 33
    .line 34
    new-instance p1, Lu1/q;

    .line 35
    .line 36
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Ls3/k;->b:Lu1/q;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lu1/q;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object v5, v0, Ls3/k;->f:Ls3/j;

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v5, v0, Ls3/k;->i:Ll2/j0;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget v5, v1, Lu1/q;->b:I

    .line 18
    .line 19
    iget v6, v1, Lu1/q;->c:I

    .line 20
    .line 21
    iget-object v7, v1, Lu1/q;->a:[B

    .line 22
    .line 23
    iget-wide v8, v0, Ls3/k;->g:J

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    int-to-long v10, v10

    .line 30
    add-long/2addr v8, v10

    .line 31
    iput-wide v8, v0, Ls3/k;->g:J

    .line 32
    .line 33
    iget-object v8, v0, Ls3/k;->i:Ll2/j0;

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-interface {v8, v9, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v8, v0, Ls3/k;->c:[Z

    .line 43
    .line 44
    invoke-static {v7, v5, v6, v8}, Lv1/o;->c([BII[Z)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    iget-object v9, v0, Ls3/k;->d:Ls3/i;

    .line 49
    .line 50
    iget-object v10, v0, Ls3/k;->e:Ls3/t;

    .line 51
    .line 52
    if-ne v8, v6, :cond_2

    .line 53
    .line 54
    iget-boolean v1, v0, Ls3/k;->j:Z

    .line 55
    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v9, v5, v6, v7}, Ls3/i;->a(II[B)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v1, v0, Ls3/k;->f:Ls3/j;

    .line 62
    .line 63
    invoke-virtual {v1, v5, v6, v7}, Ls3/j;->a(II[B)V

    .line 64
    .line 65
    .line 66
    if-eqz v10, :cond_1

    .line 67
    .line 68
    invoke-virtual {v10, v5, v6, v7}, Ls3/t;->a(II[B)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :cond_2
    iget-object v11, v1, Lu1/q;->a:[B

    .line 73
    .line 74
    add-int/lit8 v12, v8, 0x3

    .line 75
    .line 76
    aget-byte v11, v11, v12

    .line 77
    .line 78
    and-int/lit16 v13, v11, 0xff

    .line 79
    .line 80
    sub-int v14, v8, v5

    .line 81
    .line 82
    iget-boolean v15, v0, Ls3/k;->j:Z

    .line 83
    .line 84
    if-nez v15, :cond_19

    .line 85
    .line 86
    if-lez v14, :cond_3

    .line 87
    .line 88
    invoke-virtual {v9, v5, v8, v7}, Ls3/i;->a(II[B)V

    .line 89
    .line 90
    .line 91
    :cond_3
    if-gez v14, :cond_4

    .line 92
    .line 93
    neg-int v15, v14

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/4 v15, 0x0

    .line 96
    :goto_1
    iget v3, v9, Ls3/i;->b:I

    .line 97
    .line 98
    if-eqz v3, :cond_17

    .line 99
    .line 100
    const-string v16, "Unexpected start code value"

    .line 101
    .line 102
    if-eq v3, v4, :cond_15

    .line 103
    .line 104
    const/4 v4, 0x2

    .line 105
    if-eq v3, v4, :cond_13

    .line 106
    .line 107
    const/4 v4, 0x4

    .line 108
    const/4 v2, 0x3

    .line 109
    if-eq v3, v2, :cond_11

    .line 110
    .line 111
    if-ne v3, v4, :cond_10

    .line 112
    .line 113
    const/16 v2, 0xb3

    .line 114
    .line 115
    if-eq v13, v2, :cond_6

    .line 116
    .line 117
    const/16 v2, 0xb5

    .line 118
    .line 119
    if-ne v13, v2, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move/from16 v18, v12

    .line 123
    .line 124
    goto/16 :goto_8

    .line 125
    .line 126
    :cond_6
    :goto_2
    iget v2, v9, Ls3/i;->c:I

    .line 127
    .line 128
    sub-int/2addr v2, v15

    .line 129
    iput v2, v9, Ls3/i;->c:I

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    iput-boolean v2, v9, Ls3/i;->a:Z

    .line 133
    .line 134
    iget-object v2, v0, Ls3/k;->i:Ll2/j0;

    .line 135
    .line 136
    iget v3, v9, Ls3/i;->d:I

    .line 137
    .line 138
    iget-object v11, v0, Ls3/k;->h:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v15, v9, Ls3/i;->e:[B

    .line 144
    .line 145
    iget v9, v9, Ls3/i;->c:I

    .line 146
    .line 147
    invoke-static {v15, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    new-instance v15, Lj3/f;

    .line 152
    .line 153
    array-length v4, v9

    .line 154
    invoke-direct {v15, v9, v4}, Lj3/f;-><init>([BI)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v15, v3}, Lj3/f;->p(I)V

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x4

    .line 161
    invoke-virtual {v15, v3}, Lj3/f;->p(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 165
    .line 166
    .line 167
    const/16 v4, 0x8

    .line 168
    .line 169
    invoke-virtual {v15, v4}, Lj3/f;->o(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15}, Lj3/f;->f()Z

    .line 173
    .line 174
    .line 175
    move-result v16

    .line 176
    if-eqz v16, :cond_7

    .line 177
    .line 178
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 179
    .line 180
    .line 181
    const/4 v4, 0x3

    .line 182
    invoke-virtual {v15, v4}, Lj3/f;->o(I)V

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-virtual {v15, v3}, Lj3/f;->g(I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    const-string v17, "Invalid aspect ratio"

    .line 190
    .line 191
    const/16 v4, 0xf

    .line 192
    .line 193
    if-ne v3, v4, :cond_9

    .line 194
    .line 195
    const/16 v4, 0x8

    .line 196
    .line 197
    invoke-virtual {v15, v4}, Lj3/f;->g(I)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    invoke-virtual {v15, v4}, Lj3/f;->g(I)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_8

    .line 206
    .line 207
    invoke-static/range {v17 .. v17}, Lu1/a;->p(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    int-to-float v3, v3

    .line 212
    int-to-float v4, v4

    .line 213
    div-float v4, v3, v4

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_9
    const/4 v4, 0x7

    .line 217
    if-ge v3, v4, :cond_a

    .line 218
    .line 219
    sget-object v4, Ls3/k;->l:[F

    .line 220
    .line 221
    aget v4, v4, v3

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_a
    invoke-static/range {v17 .. v17}, Lu1/a;->p(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 228
    .line 229
    :goto_4
    invoke-virtual {v15}, Lj3/f;->f()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_b

    .line 234
    .line 235
    const/4 v3, 0x2

    .line 236
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 237
    .line 238
    .line 239
    const/4 v3, 0x1

    .line 240
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v15}, Lj3/f;->f()Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_b

    .line 248
    .line 249
    const/16 v3, 0xf

    .line 250
    .line 251
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 267
    .line 268
    .line 269
    const/4 v3, 0x3

    .line 270
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 271
    .line 272
    .line 273
    const/16 v3, 0xb

    .line 274
    .line 275
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 279
    .line 280
    .line 281
    const/16 v3, 0xf

    .line 282
    .line 283
    invoke-virtual {v15, v3}, Lj3/f;->o(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 287
    .line 288
    .line 289
    :cond_b
    const/4 v3, 0x2

    .line 290
    invoke-virtual {v15, v3}, Lj3/f;->g(I)I

    .line 291
    .line 292
    .line 293
    move-result v16

    .line 294
    if-eqz v16, :cond_c

    .line 295
    .line 296
    const-string v3, "Unhandled video object layer shape"

    .line 297
    .line 298
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :cond_c
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 302
    .line 303
    .line 304
    const/16 v3, 0x10

    .line 305
    .line 306
    invoke-virtual {v15, v3}, Lj3/f;->g(I)I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v15}, Lj3/f;->f()Z

    .line 314
    .line 315
    .line 316
    move-result v16

    .line 317
    if-eqz v16, :cond_d

    .line 318
    .line 319
    if-nez v3, :cond_e

    .line 320
    .line 321
    const-string v3, "Invalid vop_increment_time_resolution"

    .line 322
    .line 323
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_d
    move/from16 v18, v12

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 330
    .line 331
    move/from16 v18, v12

    .line 332
    .line 333
    const/4 v12, 0x0

    .line 334
    :goto_5
    if-lez v3, :cond_f

    .line 335
    .line 336
    const/16 v16, 0x1

    .line 337
    .line 338
    add-int/lit8 v12, v12, 0x1

    .line 339
    .line 340
    shr-int/lit8 v3, v3, 0x1

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_f
    invoke-virtual {v15, v12}, Lj3/f;->o(I)V

    .line 344
    .line 345
    .line 346
    :goto_6
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 347
    .line 348
    .line 349
    const/16 v3, 0xd

    .line 350
    .line 351
    invoke-virtual {v15, v3}, Lj3/f;->g(I)I

    .line 352
    .line 353
    .line 354
    move-result v12

    .line 355
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v15, v3}, Lj3/f;->g(I)I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v15}, Lj3/f;->n()V

    .line 366
    .line 367
    .line 368
    new-instance v15, Lr1/o;

    .line 369
    .line 370
    invoke-direct {v15}, Lr1/o;-><init>()V

    .line 371
    .line 372
    .line 373
    iput-object v11, v15, Lr1/o;->a:Ljava/lang/String;

    .line 374
    .line 375
    const-string v11, "video/mp2t"

    .line 376
    .line 377
    invoke-static {v11}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    iput-object v11, v15, Lr1/o;->m:Ljava/lang/String;

    .line 382
    .line 383
    const-string v11, "video/mp4v-es"

    .line 384
    .line 385
    invoke-static {v11}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v11

    .line 389
    iput-object v11, v15, Lr1/o;->n:Ljava/lang/String;

    .line 390
    .line 391
    iput v12, v15, Lr1/o;->u:I

    .line 392
    .line 393
    iput v3, v15, Lr1/o;->v:I

    .line 394
    .line 395
    iput v4, v15, Lr1/o;->A:F

    .line 396
    .line 397
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    iput-object v3, v15, Lr1/o;->q:Ljava/util/List;

    .line 402
    .line 403
    new-instance v3, Lr1/p;

    .line 404
    .line 405
    invoke-direct {v3, v15}, Lr1/p;-><init>(Lr1/o;)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v2, v3}, Ll2/j0;->g(Lr1/p;)V

    .line 409
    .line 410
    .line 411
    const/4 v2, 0x1

    .line 412
    iput-boolean v2, v0, Ls3/k;->j:Z

    .line 413
    .line 414
    :goto_7
    const/4 v4, 0x3

    .line 415
    goto :goto_9

    .line 416
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 417
    .line 418
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 419
    .line 420
    .line 421
    throw v1

    .line 422
    :cond_11
    move/from16 v18, v12

    .line 423
    .line 424
    and-int/lit16 v2, v11, 0xf0

    .line 425
    .line 426
    const/16 v3, 0x20

    .line 427
    .line 428
    if-eq v2, v3, :cond_12

    .line 429
    .line 430
    invoke-static/range {v16 .. v16}, Lu1/a;->p(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    const/4 v2, 0x0

    .line 434
    iput-boolean v2, v9, Ls3/i;->a:Z

    .line 435
    .line 436
    iput v2, v9, Ls3/i;->c:I

    .line 437
    .line 438
    iput v2, v9, Ls3/i;->b:I

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_12
    const/4 v2, 0x0

    .line 442
    iget v3, v9, Ls3/i;->c:I

    .line 443
    .line 444
    iput v3, v9, Ls3/i;->d:I

    .line 445
    .line 446
    const/4 v3, 0x4

    .line 447
    iput v3, v9, Ls3/i;->b:I

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_13
    move/from16 v18, v12

    .line 451
    .line 452
    const/4 v2, 0x0

    .line 453
    const/16 v3, 0x1f

    .line 454
    .line 455
    if-le v13, v3, :cond_14

    .line 456
    .line 457
    invoke-static/range {v16 .. v16}, Lu1/a;->p(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iput-boolean v2, v9, Ls3/i;->a:Z

    .line 461
    .line 462
    iput v2, v9, Ls3/i;->c:I

    .line 463
    .line 464
    iput v2, v9, Ls3/i;->b:I

    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_14
    const/4 v3, 0x3

    .line 468
    iput v3, v9, Ls3/i;->b:I

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_15
    move/from16 v18, v12

    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    const/16 v3, 0xb5

    .line 475
    .line 476
    if-eq v13, v3, :cond_16

    .line 477
    .line 478
    invoke-static/range {v16 .. v16}, Lu1/a;->p(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iput-boolean v2, v9, Ls3/i;->a:Z

    .line 482
    .line 483
    iput v2, v9, Ls3/i;->c:I

    .line 484
    .line 485
    iput v2, v9, Ls3/i;->b:I

    .line 486
    .line 487
    goto :goto_8

    .line 488
    :cond_16
    const/4 v2, 0x2

    .line 489
    iput v2, v9, Ls3/i;->b:I

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_17
    move/from16 v18, v12

    .line 493
    .line 494
    const/16 v2, 0xb0

    .line 495
    .line 496
    if-ne v13, v2, :cond_18

    .line 497
    .line 498
    const/4 v2, 0x1

    .line 499
    iput v2, v9, Ls3/i;->b:I

    .line 500
    .line 501
    iput-boolean v2, v9, Ls3/i;->a:Z

    .line 502
    .line 503
    :cond_18
    :goto_8
    sget-object v2, Ls3/i;->f:[B

    .line 504
    .line 505
    const/4 v3, 0x0

    .line 506
    const/4 v4, 0x3

    .line 507
    invoke-virtual {v9, v3, v4, v2}, Ls3/i;->a(II[B)V

    .line 508
    .line 509
    .line 510
    goto :goto_9

    .line 511
    :cond_19
    move/from16 v18, v12

    .line 512
    .line 513
    goto :goto_7

    .line 514
    :goto_9
    iget-object v2, v0, Ls3/k;->f:Ls3/j;

    .line 515
    .line 516
    invoke-virtual {v2, v5, v8, v7}, Ls3/j;->a(II[B)V

    .line 517
    .line 518
    .line 519
    if-eqz v10, :cond_1c

    .line 520
    .line 521
    if-lez v14, :cond_1a

    .line 522
    .line 523
    invoke-virtual {v10, v5, v8, v7}, Ls3/t;->a(II[B)V

    .line 524
    .line 525
    .line 526
    const/4 v2, 0x0

    .line 527
    goto :goto_a

    .line 528
    :cond_1a
    neg-int v2, v14

    .line 529
    :goto_a
    invoke-virtual {v10, v2}, Ls3/t;->b(I)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_1b

    .line 534
    .line 535
    iget-object v2, v10, Ls3/t;->e:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v2, [B

    .line 538
    .line 539
    iget v3, v10, Ls3/t;->d:I

    .line 540
    .line 541
    invoke-static {v3, v2}, Lv1/o;->p(I[B)I

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 546
    .line 547
    iget-object v3, v10, Ls3/t;->e:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v3, [B

    .line 550
    .line 551
    iget-object v5, v0, Ls3/k;->b:Lu1/q;

    .line 552
    .line 553
    invoke-virtual {v5, v2, v3}, Lu1/q;->M(I[B)V

    .line 554
    .line 555
    .line 556
    iget-wide v2, v0, Ls3/k;->k:J

    .line 557
    .line 558
    iget-object v9, v0, Ls3/k;->a:Ls3/a0;

    .line 559
    .line 560
    invoke-virtual {v9, v2, v3, v5}, Ls3/a0;->a(JLu1/q;)V

    .line 561
    .line 562
    .line 563
    :cond_1b
    const/16 v2, 0xb2

    .line 564
    .line 565
    if-ne v13, v2, :cond_1c

    .line 566
    .line 567
    iget-object v2, v1, Lu1/q;->a:[B

    .line 568
    .line 569
    const/4 v3, 0x2

    .line 570
    add-int/lit8 v5, v8, 0x2

    .line 571
    .line 572
    aget-byte v2, v2, v5

    .line 573
    .line 574
    const/4 v5, 0x1

    .line 575
    if-ne v2, v5, :cond_1d

    .line 576
    .line 577
    invoke-virtual {v10, v13}, Ls3/t;->e(I)V

    .line 578
    .line 579
    .line 580
    goto :goto_b

    .line 581
    :cond_1c
    const/4 v3, 0x2

    .line 582
    const/4 v5, 0x1

    .line 583
    :cond_1d
    :goto_b
    sub-int v2, v6, v8

    .line 584
    .line 585
    iget-wide v8, v0, Ls3/k;->g:J

    .line 586
    .line 587
    int-to-long v10, v2

    .line 588
    sub-long/2addr v8, v10

    .line 589
    iget-object v10, v0, Ls3/k;->f:Ls3/j;

    .line 590
    .line 591
    iget-boolean v11, v0, Ls3/k;->j:Z

    .line 592
    .line 593
    invoke-virtual {v10, v2, v8, v9, v11}, Ls3/j;->b(IJZ)V

    .line 594
    .line 595
    .line 596
    iget-object v2, v0, Ls3/k;->f:Ls3/j;

    .line 597
    .line 598
    iget-wide v8, v0, Ls3/k;->k:J

    .line 599
    .line 600
    iput v13, v2, Ls3/j;->e:I

    .line 601
    .line 602
    const/4 v10, 0x0

    .line 603
    iput-boolean v10, v2, Ls3/j;->d:Z

    .line 604
    .line 605
    const/16 v10, 0xb6

    .line 606
    .line 607
    if-eq v13, v10, :cond_1f

    .line 608
    .line 609
    const/16 v11, 0xb3

    .line 610
    .line 611
    if-ne v13, v11, :cond_1e

    .line 612
    .line 613
    goto :goto_c

    .line 614
    :cond_1e
    const/4 v11, 0x0

    .line 615
    goto :goto_d

    .line 616
    :cond_1f
    :goto_c
    const/4 v11, 0x1

    .line 617
    :goto_d
    iput-boolean v11, v2, Ls3/j;->b:Z

    .line 618
    .line 619
    if-ne v13, v10, :cond_20

    .line 620
    .line 621
    const/4 v10, 0x1

    .line 622
    goto :goto_e

    .line 623
    :cond_20
    const/4 v10, 0x0

    .line 624
    :goto_e
    iput-boolean v10, v2, Ls3/j;->c:Z

    .line 625
    .line 626
    const/4 v10, 0x0

    .line 627
    iput v10, v2, Ls3/j;->f:I

    .line 628
    .line 629
    iput-wide v8, v2, Ls3/j;->h:J

    .line 630
    .line 631
    move/from16 v5, v18

    .line 632
    .line 633
    const/4 v3, 0x3

    .line 634
    const/4 v4, 0x1

    .line 635
    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/k;->c:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lv1/o;->b([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls3/k;->d:Ls3/i;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Ls3/i;->a:Z

    .line 10
    .line 11
    iput v1, v0, Ls3/i;->c:I

    .line 12
    .line 13
    iput v1, v0, Ls3/i;->b:I

    .line 14
    .line 15
    iget-object v0, p0, Ls3/k;->f:Ls3/j;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-boolean v1, v0, Ls3/j;->b:Z

    .line 20
    .line 21
    iput-boolean v1, v0, Ls3/j;->c:Z

    .line 22
    .line 23
    iput-boolean v1, v0, Ls3/j;->d:Z

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    iput v1, v0, Ls3/j;->e:I

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Ls3/k;->e:Ls3/t;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ls3/t;->d()V

    .line 33
    .line 34
    .line 35
    :cond_1
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    iput-wide v0, p0, Ls3/k;->g:J

    .line 38
    .line 39
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    iput-wide v0, p0, Ls3/k;->k:J

    .line 45
    .line 46
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls3/k;->f:Ls3/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Ls3/k;->f:Ls3/j;

    .line 9
    .line 10
    iget-wide v0, p0, Ls3/k;->g:J

    .line 11
    .line 12
    iget-boolean v2, p0, Ls3/k;->j:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v3, v0, v1, v2}, Ls3/j;->b(IJZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Ls3/k;->f:Ls3/j;

    .line 19
    .line 20
    iput-boolean v3, p1, Ls3/j;->b:Z

    .line 21
    .line 22
    iput-boolean v3, p1, Ls3/j;->c:Z

    .line 23
    .line 24
    iput-boolean v3, p1, Ls3/j;->d:Z

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, p1, Ls3/j;->e:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Ls3/k;->k:J

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
    iput-object v0, p0, Ls3/k;->h:Ljava/lang/String;

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
    iput-object v0, p0, Ls3/k;->i:Ll2/j0;

    .line 24
    .line 25
    new-instance v1, Ls3/j;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ls3/j;-><init>(Ll2/j0;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Ls3/k;->f:Ls3/j;

    .line 31
    .line 32
    iget-object v0, p0, Ls3/k;->a:Ls3/a0;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Ls3/a0;->b(Ll2/q;Ls3/d0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
