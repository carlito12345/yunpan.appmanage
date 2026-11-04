.class public final Lei/j;
.super Lei/h;
.source "SourceFile"


# instance fields
.field public final B:[Lei/k;

.field public C:I

.field public D:I

.field public E:Landroidx/room/s;

.field public final F:[I

.field public final G:Landroidx/leanback/widget/i;


# direct methods
.method public constructor <init>(Lfi/d;IIIIIIIILyh/b;)V
    .locals 12

    move-object v8, p0

    move/from16 v0, p8

    const/16 v9, 0x1000

    move/from16 v1, p6

    .line 1
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v10, 0x4

    const/16 v3, 0x1000

    if-eq v0, v10, :cond_1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v11, Ldi/a;

    const/4 v7, 0x0

    move-object v0, v11

    move/from16 v1, p5

    move/from16 v4, p7

    move/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v7}, Ldi/a;-><init>(IIIIILyh/b;I)V

    :goto_0
    move-object v2, v11

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4
    :cond_1
    new-instance v11, Ldi/a;

    const/4 v7, 0x1

    move-object v0, v11

    move/from16 v1, p5

    move/from16 v4, p7

    move/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v7}, Ldi/a;-><init>(IIIIILyh/b;I)V

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    .line 5
    invoke-direct/range {v0 .. v7}, Lei/h;-><init>(Lfi/d;Ldi/a;IIIII)V

    .line 6
    new-array v0, v9, [Lei/k;

    iput-object v0, v8, Lei/j;->B:[Lei/k;

    const/4 v0, 0x0

    .line 7
    iput v0, v8, Lei/j;->C:I

    .line 8
    iput v0, v8, Lei/j;->D:I

    .line 9
    new-array v1, v10, [I

    iput-object v1, v8, Lei/j;->F:[I

    .line 10
    new-instance v1, Landroidx/leanback/widget/i;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/leanback/widget/i;-><init>(I)V

    iput-object v1, v8, Lei/j;->G:Landroidx/leanback/widget/i;

    :goto_2
    if-ge v0, v9, :cond_2

    .line 11
    iget-object v1, v8, Lei/j;->B:[Lei/k;

    new-instance v2, Lei/k;

    invoke-direct {v2}, Lei/k;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lei/j;->C:I

    .line 3
    .line 4
    iput v0, p0, Lei/j;->D:I

    .line 5
    .line 6
    invoke-super {p0}, Lei/h;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()I
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    iget v5, v0, Lei/j;->C:I

    .line 8
    .line 9
    iget v6, v0, Lei/j;->D:I

    .line 10
    .line 11
    iget-object v7, v0, Lei/j;->B:[Lei/k;

    .line 12
    .line 13
    if-ge v5, v6, :cond_0

    .line 14
    .line 15
    aget-object v1, v7, v5

    .line 16
    .line 17
    iget v1, v1, Lei/k;->d:I

    .line 18
    .line 19
    sub-int v2, v1, v5

    .line 20
    .line 21
    iput v1, v0, Lei/j;->C:I

    .line 22
    .line 23
    aget-object v1, v7, v1

    .line 24
    .line 25
    iget v1, v1, Lei/k;->e:I

    .line 26
    .line 27
    iput v1, v0, Lei/h;->y:I

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    iput v5, v0, Lei/j;->C:I

    .line 32
    .line 33
    iput v5, v0, Lei/j;->D:I

    .line 34
    .line 35
    iput v3, v0, Lei/h;->y:I

    .line 36
    .line 37
    iget v6, v0, Lei/h;->z:I

    .line 38
    .line 39
    if-ne v6, v3, :cond_1

    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lei/h;->i()Landroidx/room/s;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iput-object v6, v0, Lei/j;->E:Landroidx/room/s;

    .line 46
    .line 47
    :cond_1
    iget-object v6, v0, Lei/h;->n:Ldi/a;

    .line 48
    .line 49
    iget v8, v6, Ldi/a;->j:I

    .line 50
    .line 51
    iget v9, v6, Ldi/a;->g:I

    .line 52
    .line 53
    sub-int/2addr v8, v9

    .line 54
    const/16 v9, 0x111

    .line 55
    .line 56
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-ge v8, v1, :cond_2

    .line 61
    .line 62
    return v4

    .line 63
    :cond_2
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    :goto_0
    iget-object v11, v0, Lei/b;->b:[I

    .line 66
    .line 67
    iget-object v12, v6, Ldi/a;->e:[B

    .line 68
    .line 69
    iget-object v13, v0, Lei/j;->F:[I

    .line 70
    .line 71
    if-ge v9, v2, :cond_5

    .line 72
    .line 73
    aget v11, v11, v9

    .line 74
    .line 75
    iget v14, v6, Ldi/a;->g:I

    .line 76
    .line 77
    add-int/2addr v11, v4

    .line 78
    invoke-static {v12, v14, v11, v5, v8}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    aput v11, v13, v9

    .line 83
    .line 84
    if-ge v11, v1, :cond_3

    .line 85
    .line 86
    aput v5, v13, v9

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    aget v12, v13, v10

    .line 90
    .line 91
    if-le v11, v12, :cond_4

    .line 92
    .line 93
    move v10, v9

    .line 94
    :cond_4
    :goto_1
    add-int/2addr v9, v4

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    aget v8, v13, v10

    .line 97
    .line 98
    iget v9, v0, Lei/h;->r:I

    .line 99
    .line 100
    if-lt v8, v9, :cond_6

    .line 101
    .line 102
    iput v10, v0, Lei/h;->y:I

    .line 103
    .line 104
    sub-int/2addr v8, v4

    .line 105
    invoke-virtual {v0, v8}, Lei/h;->k(I)V

    .line 106
    .line 107
    .line 108
    aget v1, v13, v10

    .line 109
    .line 110
    return v1

    .line 111
    :cond_6
    iget-object v8, v0, Lei/j;->E:Landroidx/room/s;

    .line 112
    .line 113
    iget v14, v8, Landroidx/room/s;->b:I

    .line 114
    .line 115
    if-lez v14, :cond_7

    .line 116
    .line 117
    iget-object v15, v8, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v15, [I

    .line 120
    .line 121
    sub-int/2addr v14, v4

    .line 122
    aget v15, v15, v14

    .line 123
    .line 124
    iget-object v8, v8, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v8, [I

    .line 127
    .line 128
    aget v8, v8, v14

    .line 129
    .line 130
    if-lt v15, v9, :cond_8

    .line 131
    .line 132
    add-int/2addr v8, v2

    .line 133
    iput v8, v0, Lei/h;->y:I

    .line 134
    .line 135
    add-int/lit8 v1, v15, -0x1

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lei/h;->k(I)V

    .line 138
    .line 139
    .line 140
    return v15

    .line 141
    :cond_7
    const/4 v15, 0x0

    .line 142
    :cond_8
    invoke-virtual {v6, v5}, Ldi/a;->b(I)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    aget v14, v11, v5

    .line 147
    .line 148
    add-int/2addr v14, v4

    .line 149
    invoke-virtual {v6, v14}, Ldi/a;->b(I)I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-ge v15, v1, :cond_9

    .line 154
    .line 155
    if-eq v8, v14, :cond_9

    .line 156
    .line 157
    aget v2, v13, v10

    .line 158
    .line 159
    if-ge v2, v1, :cond_9

    .line 160
    .line 161
    return v4

    .line 162
    :cond_9
    iget v2, v6, Ldi/a;->g:I

    .line 163
    .line 164
    iget v1, v0, Lei/b;->a:I

    .line 165
    .line 166
    and-int v3, v2, v1

    .line 167
    .line 168
    invoke-virtual {v6, v4}, Ldi/a;->b(I)I

    .line 169
    .line 170
    .line 171
    move-result v19

    .line 172
    iget-object v5, v0, Lei/h;->o:Lei/e;

    .line 173
    .line 174
    iget-object v4, v0, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 175
    .line 176
    move-object/from16 v16, v5

    .line 177
    .line 178
    move/from16 v17, v8

    .line 179
    .line 180
    move/from16 v18, v14

    .line 181
    .line 182
    move/from16 v20, v2

    .line 183
    .line 184
    move-object/from16 v21, v4

    .line 185
    .line 186
    invoke-virtual/range {v16 .. v21}, Lei/e;->a(IIIILandroidx/leanback/widget/i;)I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    move/from16 v16, v2

    .line 191
    .line 192
    move-object/from16 v17, v12

    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    aget-object v12, v7, v2

    .line 196
    .line 197
    move/from16 v18, v1

    .line 198
    .line 199
    const/4 v1, -0x1

    .line 200
    const/4 v2, 0x0

    .line 201
    invoke-virtual {v12, v5, v2, v1}, Lei/k;->a(III)V

    .line 202
    .line 203
    .line 204
    iget v1, v4, Landroidx/leanback/widget/i;->b:I

    .line 205
    .line 206
    iget-object v2, v0, Lei/b;->d:[[S

    .line 207
    .line 208
    aget-object v1, v2, v1

    .line 209
    .line 210
    aget-short v1, v1, v3

    .line 211
    .line 212
    const/4 v5, 0x1

    .line 213
    invoke-static {v1, v5}, Lfi/d;->q0(II)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    iget v12, v4, Landroidx/leanback/widget/i;->b:I

    .line 218
    .line 219
    move-object/from16 v19, v2

    .line 220
    .line 221
    iget-object v2, v0, Lei/b;->e:[S

    .line 222
    .line 223
    aget-short v12, v2, v12

    .line 224
    .line 225
    invoke-static {v12, v5}, Lfi/d;->q0(II)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    add-int/2addr v12, v1

    .line 230
    iget-object v5, v0, Lei/b;->i:[[S

    .line 231
    .line 232
    move/from16 v20, v9

    .line 233
    .line 234
    iget-object v9, v0, Lei/b;->f:[S

    .line 235
    .line 236
    if-ne v14, v8, :cond_a

    .line 237
    .line 238
    iget v8, v4, Landroidx/leanback/widget/i;->b:I

    .line 239
    .line 240
    aget-short v8, v9, v8

    .line 241
    .line 242
    const/4 v14, 0x0

    .line 243
    invoke-static {v8, v14}, Lfi/d;->q0(II)I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    add-int/2addr v8, v12

    .line 248
    iget v14, v4, Landroidx/leanback/widget/i;->b:I

    .line 249
    .line 250
    aget-object v14, v5, v14

    .line 251
    .line 252
    aget-short v14, v14, v3

    .line 253
    .line 254
    move-object/from16 v21, v5

    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    invoke-static {v14, v5}, Lfi/d;->q0(II)I

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    add-int/2addr v14, v8

    .line 262
    const/4 v8, 0x1

    .line 263
    aget-object v5, v7, v8

    .line 264
    .line 265
    iget v8, v5, Lei/k;->c:I

    .line 266
    .line 267
    if-ge v14, v8, :cond_b

    .line 268
    .line 269
    const/4 v8, 0x0

    .line 270
    invoke-virtual {v5, v14, v8, v8}, Lei/k;->a(III)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_a
    move-object/from16 v21, v5

    .line 275
    .line 276
    :cond_b
    :goto_2
    aget v5, v13, v10

    .line 277
    .line 278
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    iput v5, v0, Lei/j;->D:I

    .line 283
    .line 284
    const/4 v8, 0x2

    .line 285
    if-ge v5, v8, :cond_c

    .line 286
    .line 287
    const/4 v5, 0x1

    .line 288
    aget-object v1, v7, v5

    .line 289
    .line 290
    iget v1, v1, Lei/k;->e:I

    .line 291
    .line 292
    iput v1, v0, Lei/h;->y:I

    .line 293
    .line 294
    return v5

    .line 295
    :cond_c
    iget v5, v0, Lei/h;->s:I

    .line 296
    .line 297
    if-gtz v5, :cond_15

    .line 298
    .line 299
    const/16 v5, 0x80

    .line 300
    .line 301
    iput v5, v0, Lei/h;->s:I

    .line 302
    .line 303
    const/4 v5, 0x0

    .line 304
    :goto_3
    iget-object v8, v0, Lei/h;->w:[[I

    .line 305
    .line 306
    iget-object v14, v0, Lei/h;->v:[[I

    .line 307
    .line 308
    const/4 v10, 0x4

    .line 309
    if-ge v5, v10, :cond_10

    .line 310
    .line 311
    move-object/from16 v26, v9

    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    :goto_4
    iget v9, v0, Lei/h;->u:I

    .line 315
    .line 316
    if-ge v10, v9, :cond_d

    .line 317
    .line 318
    aget-object v9, v14, v5

    .line 319
    .line 320
    move-object/from16 v27, v6

    .line 321
    .line 322
    iget-object v6, v0, Lei/b;->j:[[S

    .line 323
    .line 324
    aget-object v6, v6, v5

    .line 325
    .line 326
    invoke-static {v6, v10}, Lfi/d;->r0([SI)I

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    aput v6, v9, v10

    .line 331
    .line 332
    const/4 v6, 0x1

    .line 333
    add-int/2addr v10, v6

    .line 334
    move-object/from16 v6, v27

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_d
    move-object/from16 v27, v6

    .line 338
    .line 339
    const/4 v6, 0x1

    .line 340
    const/16 v10, 0xe

    .line 341
    .line 342
    :goto_5
    if-ge v10, v9, :cond_e

    .line 343
    .line 344
    ushr-int/lit8 v25, v10, 0x1

    .line 345
    .line 346
    add-int/lit8 v25, v25, -0x5

    .line 347
    .line 348
    aget-object v6, v14, v5

    .line 349
    .line 350
    aget v28, v6, v10

    .line 351
    .line 352
    sget-object v29, Lfi/d;->p:[I

    .line 353
    .line 354
    move/from16 v29, v9

    .line 355
    .line 356
    const/4 v9, 0x4

    .line 357
    shl-int/lit8 v22, v25, 0x4

    .line 358
    .line 359
    add-int v28, v28, v22

    .line 360
    .line 361
    aput v28, v6, v10

    .line 362
    .line 363
    const/4 v6, 0x1

    .line 364
    add-int/2addr v10, v6

    .line 365
    move/from16 v9, v29

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_e
    const/4 v9, 0x4

    .line 369
    const/4 v10, 0x0

    .line 370
    :goto_6
    if-ge v10, v9, :cond_f

    .line 371
    .line 372
    aget-object v9, v8, v5

    .line 373
    .line 374
    aget-object v24, v14, v5

    .line 375
    .line 376
    aget v24, v24, v10

    .line 377
    .line 378
    aput v24, v9, v10

    .line 379
    .line 380
    add-int/2addr v10, v6

    .line 381
    const/4 v9, 0x4

    .line 382
    goto :goto_6

    .line 383
    :cond_f
    add-int/2addr v5, v6

    .line 384
    move-object/from16 v9, v26

    .line 385
    .line 386
    move-object/from16 v6, v27

    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_10
    move-object/from16 v27, v6

    .line 390
    .line 391
    move-object/from16 v26, v9

    .line 392
    .line 393
    const/4 v6, 0x1

    .line 394
    const/4 v5, 0x4

    .line 395
    const/4 v9, 0x4

    .line 396
    :goto_7
    const/16 v10, 0xe

    .line 397
    .line 398
    if-ge v5, v10, :cond_14

    .line 399
    .line 400
    ushr-int/lit8 v24, v5, 0x1

    .line 401
    .line 402
    add-int/lit8 v25, v24, -0x1

    .line 403
    .line 404
    and-int/lit8 v28, v5, 0x1

    .line 405
    .line 406
    const/4 v6, 0x2

    .line 407
    or-int/lit8 v28, v28, 0x2

    .line 408
    .line 409
    shl-int v6, v28, v25

    .line 410
    .line 411
    const/16 v22, 0x4

    .line 412
    .line 413
    add-int/lit8 v25, v5, -0x4

    .line 414
    .line 415
    iget-object v10, v0, Lei/b;->k:[[S

    .line 416
    .line 417
    move/from16 v29, v9

    .line 418
    .line 419
    aget-object v9, v10, v25

    .line 420
    .line 421
    array-length v9, v9

    .line 422
    move/from16 v30, v1

    .line 423
    .line 424
    const/4 v1, 0x0

    .line 425
    :goto_8
    if-ge v1, v9, :cond_13

    .line 426
    .line 427
    sub-int v31, v29, v6

    .line 428
    .line 429
    move/from16 v32, v6

    .line 430
    .line 431
    aget-object v6, v10, v25

    .line 432
    .line 433
    move/from16 v33, v9

    .line 434
    .line 435
    array-length v9, v6

    .line 436
    or-int v9, v31, v9

    .line 437
    .line 438
    move-object/from16 v35, v2

    .line 439
    .line 440
    move-object/from16 v34, v10

    .line 441
    .line 442
    const/4 v10, 0x1

    .line 443
    const/16 v24, 0x0

    .line 444
    .line 445
    const/16 v31, 0x1

    .line 446
    .line 447
    :cond_11
    and-int/lit8 v2, v9, 0x1

    .line 448
    .line 449
    ushr-int/2addr v9, v10

    .line 450
    aget-short v10, v6, v31

    .line 451
    .line 452
    invoke-static {v10, v2}, Lfi/d;->q0(II)I

    .line 453
    .line 454
    .line 455
    move-result v10

    .line 456
    add-int v24, v10, v24

    .line 457
    .line 458
    const/4 v10, 0x1

    .line 459
    shl-int/lit8 v31, v31, 0x1

    .line 460
    .line 461
    or-int v31, v31, v2

    .line 462
    .line 463
    if-ne v9, v10, :cond_11

    .line 464
    .line 465
    const/4 v2, 0x0

    .line 466
    :goto_9
    const/4 v6, 0x4

    .line 467
    if-ge v2, v6, :cond_12

    .line 468
    .line 469
    aget-object v6, v8, v2

    .line 470
    .line 471
    aget-object v9, v14, v2

    .line 472
    .line 473
    aget v9, v9, v5

    .line 474
    .line 475
    add-int v9, v9, v24

    .line 476
    .line 477
    aput v9, v6, v29

    .line 478
    .line 479
    add-int/2addr v2, v10

    .line 480
    goto :goto_9

    .line 481
    :cond_12
    add-int/lit8 v29, v29, 0x1

    .line 482
    .line 483
    add-int/2addr v1, v10

    .line 484
    move/from16 v6, v32

    .line 485
    .line 486
    move/from16 v9, v33

    .line 487
    .line 488
    move-object/from16 v10, v34

    .line 489
    .line 490
    move-object/from16 v2, v35

    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_13
    move-object/from16 v35, v2

    .line 494
    .line 495
    const/4 v10, 0x1

    .line 496
    add-int/2addr v5, v10

    .line 497
    move/from16 v9, v29

    .line 498
    .line 499
    move/from16 v1, v30

    .line 500
    .line 501
    const/4 v6, 0x1

    .line 502
    goto :goto_7

    .line 503
    :cond_14
    move/from16 v30, v1

    .line 504
    .line 505
    move-object/from16 v35, v2

    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_15
    move/from16 v30, v1

    .line 509
    .line 510
    move-object/from16 v35, v2

    .line 511
    .line 512
    move-object/from16 v27, v6

    .line 513
    .line 514
    move-object/from16 v26, v9

    .line 515
    .line 516
    :goto_a
    iget v1, v0, Lei/h;->t:I

    .line 517
    .line 518
    if-gtz v1, :cond_17

    .line 519
    .line 520
    const/16 v1, 0x10

    .line 521
    .line 522
    iput v1, v0, Lei/h;->t:I

    .line 523
    .line 524
    const/4 v2, 0x0

    .line 525
    :goto_b
    if-ge v2, v1, :cond_17

    .line 526
    .line 527
    iget-object v5, v0, Lei/b;->l:[S

    .line 528
    .line 529
    array-length v6, v5

    .line 530
    or-int/2addr v6, v2

    .line 531
    const/4 v8, 0x0

    .line 532
    const/4 v9, 0x1

    .line 533
    const/16 v24, 0x1

    .line 534
    .line 535
    :goto_c
    and-int/lit8 v10, v6, 0x1

    .line 536
    .line 537
    ushr-int/2addr v6, v9

    .line 538
    aget-short v14, v5, v24

    .line 539
    .line 540
    invoke-static {v14, v10}, Lfi/d;->q0(II)I

    .line 541
    .line 542
    .line 543
    move-result v14

    .line 544
    add-int/2addr v8, v14

    .line 545
    shl-int/lit8 v14, v24, 0x1

    .line 546
    .line 547
    or-int/2addr v10, v14

    .line 548
    if-ne v6, v9, :cond_16

    .line 549
    .line 550
    iget-object v5, v0, Lei/h;->x:[I

    .line 551
    .line 552
    aput v8, v5, v2

    .line 553
    .line 554
    add-int/2addr v2, v9

    .line 555
    goto :goto_b

    .line 556
    :cond_16
    move/from16 v24, v10

    .line 557
    .line 558
    goto :goto_c

    .line 559
    :cond_17
    iget-object v1, v0, Lei/h;->p:Lei/g;

    .line 560
    .line 561
    invoke-virtual {v1}, Lei/g;->c()V

    .line 562
    .line 563
    .line 564
    iget-object v1, v0, Lei/h;->q:Lei/g;

    .line 565
    .line 566
    invoke-virtual {v1}, Lei/g;->c()V

    .line 567
    .line 568
    .line 569
    const/4 v2, 0x0

    .line 570
    aget-object v5, v7, v2

    .line 571
    .line 572
    iget-object v6, v5, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 573
    .line 574
    iget v8, v4, Landroidx/leanback/widget/i;->b:I

    .line 575
    .line 576
    iput v8, v6, Landroidx/leanback/widget/i;->b:I

    .line 577
    .line 578
    iget-object v5, v5, Lei/k;->b:[I

    .line 579
    .line 580
    const/4 v6, 0x4

    .line 581
    invoke-static {v11, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    .line 583
    .line 584
    iget v2, v0, Lei/j;->D:I

    .line 585
    .line 586
    :goto_d
    const/high16 v5, 0x40000000    # 2.0f

    .line 587
    .line 588
    const/4 v6, 0x2

    .line 589
    if-lt v2, v6, :cond_18

    .line 590
    .line 591
    aget-object v8, v7, v2

    .line 592
    .line 593
    iput v5, v8, Lei/k;->c:I

    .line 594
    .line 595
    const/4 v5, -0x1

    .line 596
    add-int/2addr v2, v5

    .line 597
    goto :goto_d

    .line 598
    :cond_18
    const/4 v2, 0x0

    .line 599
    :goto_e
    iget-object v8, v1, Lei/g;->f:[[I

    .line 600
    .line 601
    const/4 v9, 0x4

    .line 602
    if-ge v2, v9, :cond_1c

    .line 603
    .line 604
    aget v9, v13, v2

    .line 605
    .line 606
    if-ge v9, v6, :cond_19

    .line 607
    .line 608
    const/4 v5, 0x0

    .line 609
    :goto_f
    const/4 v11, 0x1

    .line 610
    goto :goto_13

    .line 611
    :cond_19
    invoke-virtual {v0, v12, v2, v4, v3}, Lei/h;->g(IILandroidx/leanback/widget/i;I)I

    .line 612
    .line 613
    .line 614
    move-result v10

    .line 615
    :goto_10
    aget-object v11, v8, v3

    .line 616
    .line 617
    add-int/lit8 v14, v9, -0x2

    .line 618
    .line 619
    aget v11, v11, v14

    .line 620
    .line 621
    add-int/2addr v11, v10

    .line 622
    aget-object v14, v7, v9

    .line 623
    .line 624
    iget v5, v14, Lei/k;->c:I

    .line 625
    .line 626
    if-ge v11, v5, :cond_1a

    .line 627
    .line 628
    const/4 v5, 0x0

    .line 629
    invoke-virtual {v14, v11, v5, v2}, Lei/k;->a(III)V

    .line 630
    .line 631
    .line 632
    :goto_11
    const/4 v11, -0x1

    .line 633
    goto :goto_12

    .line 634
    :cond_1a
    const/4 v5, 0x0

    .line 635
    goto :goto_11

    .line 636
    :goto_12
    add-int/2addr v9, v11

    .line 637
    if-ge v9, v6, :cond_1b

    .line 638
    .line 639
    goto :goto_f

    .line 640
    :goto_13
    add-int/2addr v2, v11

    .line 641
    const/high16 v5, 0x40000000    # 2.0f

    .line 642
    .line 643
    goto :goto_e

    .line 644
    :cond_1b
    const/high16 v5, 0x40000000    # 2.0f

    .line 645
    .line 646
    goto :goto_10

    .line 647
    :cond_1c
    const/4 v5, 0x0

    .line 648
    const/4 v11, 0x1

    .line 649
    aget v1, v13, v5

    .line 650
    .line 651
    add-int/2addr v1, v11

    .line 652
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-gt v1, v15, :cond_21

    .line 657
    .line 658
    iget v2, v4, Landroidx/leanback/widget/i;->b:I

    .line 659
    .line 660
    aget-short v2, v35, v2

    .line 661
    .line 662
    invoke-static {v2, v5}, Lfi/d;->q0(II)I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    add-int v2, v2, v30

    .line 667
    .line 668
    const/4 v4, 0x0

    .line 669
    :goto_14
    iget-object v5, v0, Lei/j;->E:Landroidx/room/s;

    .line 670
    .line 671
    iget-object v5, v5, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 672
    .line 673
    check-cast v5, [I

    .line 674
    .line 675
    aget v5, v5, v4

    .line 676
    .line 677
    if-le v1, v5, :cond_1d

    .line 678
    .line 679
    const/4 v5, 0x1

    .line 680
    add-int/2addr v4, v5

    .line 681
    goto :goto_14

    .line 682
    :cond_1d
    :goto_15
    iget-object v5, v0, Lei/j;->E:Landroidx/room/s;

    .line 683
    .line 684
    iget-object v5, v5, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v5, [I

    .line 687
    .line 688
    aget v5, v5, v4

    .line 689
    .line 690
    invoke-virtual {v0, v2, v5, v1, v3}, Lei/h;->h(IIII)I

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    aget-object v9, v7, v1

    .line 695
    .line 696
    iget v10, v9, Lei/k;->c:I

    .line 697
    .line 698
    if-ge v6, v10, :cond_1e

    .line 699
    .line 700
    const/4 v10, 0x4

    .line 701
    add-int/2addr v5, v10

    .line 702
    const/4 v10, 0x0

    .line 703
    invoke-virtual {v9, v6, v10, v5}, Lei/k;->a(III)V

    .line 704
    .line 705
    .line 706
    :cond_1e
    iget-object v5, v0, Lei/j;->E:Landroidx/room/s;

    .line 707
    .line 708
    iget-object v6, v5, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v6, [I

    .line 711
    .line 712
    aget v6, v6, v4

    .line 713
    .line 714
    if-ne v1, v6, :cond_1f

    .line 715
    .line 716
    const/4 v6, 0x1

    .line 717
    add-int/2addr v4, v6

    .line 718
    iget v5, v5, Landroidx/room/s;->b:I

    .line 719
    .line 720
    if-ne v4, v5, :cond_20

    .line 721
    .line 722
    :goto_16
    move-object/from16 v1, v27

    .line 723
    .line 724
    goto :goto_17

    .line 725
    :cond_1f
    const/4 v6, 0x1

    .line 726
    :cond_20
    add-int/2addr v1, v6

    .line 727
    goto :goto_15

    .line 728
    :cond_21
    const/4 v6, 0x1

    .line 729
    goto :goto_16

    .line 730
    :goto_17
    iget v2, v1, Ldi/a;->j:I

    .line 731
    .line 732
    iget v3, v1, Ldi/a;->g:I

    .line 733
    .line 734
    sub-int/2addr v2, v3

    .line 735
    const/16 v3, 0xfff

    .line 736
    .line 737
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    :goto_18
    iget v3, v0, Lei/j;->C:I

    .line 742
    .line 743
    add-int/2addr v3, v6

    .line 744
    iput v3, v0, Lei/j;->C:I

    .line 745
    .line 746
    iget v4, v0, Lei/j;->D:I

    .line 747
    .line 748
    if-ge v3, v4, :cond_4d

    .line 749
    .line 750
    invoke-virtual/range {p0 .. p0}, Lei/h;->i()Landroidx/room/s;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    iput-object v3, v0, Lei/j;->E:Landroidx/room/s;

    .line 755
    .line 756
    iget v4, v3, Landroidx/room/s;->b:I

    .line 757
    .line 758
    if-lez v4, :cond_23

    .line 759
    .line 760
    iget-object v3, v3, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 761
    .line 762
    check-cast v3, [I

    .line 763
    .line 764
    sub-int/2addr v4, v6

    .line 765
    aget v3, v3, v4

    .line 766
    .line 767
    move/from16 v4, v20

    .line 768
    .line 769
    if-lt v3, v4, :cond_22

    .line 770
    .line 771
    goto/16 :goto_39

    .line 772
    .line 773
    :cond_22
    :goto_19
    const/4 v3, -0x1

    .line 774
    goto :goto_1a

    .line 775
    :cond_23
    move/from16 v4, v20

    .line 776
    .line 777
    goto :goto_19

    .line 778
    :goto_1a
    add-int/lit8 v5, v2, -0x1

    .line 779
    .line 780
    add-int/lit8 v15, v16, 0x1

    .line 781
    .line 782
    and-int v6, v15, v18

    .line 783
    .line 784
    iget v9, v0, Lei/j;->C:I

    .line 785
    .line 786
    aget-object v9, v7, v9

    .line 787
    .line 788
    iget v10, v9, Lei/k;->d:I

    .line 789
    .line 790
    iget-boolean v11, v9, Lei/k;->f:Z

    .line 791
    .line 792
    iget-object v12, v9, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 793
    .line 794
    if-eqz v11, :cond_26

    .line 795
    .line 796
    add-int/2addr v10, v3

    .line 797
    iget-boolean v3, v9, Lei/k;->g:Z

    .line 798
    .line 799
    if-eqz v3, :cond_25

    .line 800
    .line 801
    iget v3, v9, Lei/k;->h:I

    .line 802
    .line 803
    aget-object v3, v7, v3

    .line 804
    .line 805
    iget-object v3, v3, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 806
    .line 807
    iget v3, v3, Landroidx/leanback/widget/i;->b:I

    .line 808
    .line 809
    iput v3, v12, Landroidx/leanback/widget/i;->b:I

    .line 810
    .line 811
    iget v3, v9, Lei/k;->i:I

    .line 812
    .line 813
    const/4 v9, 0x4

    .line 814
    if-ge v3, v9, :cond_24

    .line 815
    .line 816
    invoke-virtual {v12}, Landroidx/leanback/widget/i;->l()V

    .line 817
    .line 818
    .line 819
    goto :goto_1b

    .line 820
    :cond_24
    invoke-virtual {v12}, Landroidx/leanback/widget/i;->m()V

    .line 821
    .line 822
    .line 823
    goto :goto_1b

    .line 824
    :cond_25
    aget-object v3, v7, v10

    .line 825
    .line 826
    iget-object v3, v3, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 827
    .line 828
    iget v3, v3, Landroidx/leanback/widget/i;->b:I

    .line 829
    .line 830
    iput v3, v12, Landroidx/leanback/widget/i;->b:I

    .line 831
    .line 832
    :goto_1b
    iget v3, v0, Lei/j;->C:I

    .line 833
    .line 834
    aget-object v3, v7, v3

    .line 835
    .line 836
    iget-object v3, v3, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 837
    .line 838
    invoke-virtual {v3}, Landroidx/leanback/widget/i;->k()V

    .line 839
    .line 840
    .line 841
    goto :goto_1c

    .line 842
    :cond_26
    aget-object v3, v7, v10

    .line 843
    .line 844
    iget-object v3, v3, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 845
    .line 846
    iget v3, v3, Landroidx/leanback/widget/i;->b:I

    .line 847
    .line 848
    iput v3, v12, Landroidx/leanback/widget/i;->b:I

    .line 849
    .line 850
    :goto_1c
    iget v3, v0, Lei/j;->C:I

    .line 851
    .line 852
    const/4 v9, 0x1

    .line 853
    add-int/lit8 v11, v3, -0x1

    .line 854
    .line 855
    if-ne v10, v11, :cond_29

    .line 856
    .line 857
    aget-object v3, v7, v3

    .line 858
    .line 859
    iget v9, v3, Lei/k;->e:I

    .line 860
    .line 861
    iget-object v3, v3, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 862
    .line 863
    if-nez v9, :cond_28

    .line 864
    .line 865
    iget v9, v3, Landroidx/leanback/widget/i;->b:I

    .line 866
    .line 867
    const/4 v11, 0x7

    .line 868
    if-ge v9, v11, :cond_27

    .line 869
    .line 870
    const/16 v9, 0x9

    .line 871
    .line 872
    goto :goto_1d

    .line 873
    :cond_27
    const/16 v9, 0xb

    .line 874
    .line 875
    :goto_1d
    iput v9, v3, Landroidx/leanback/widget/i;->b:I

    .line 876
    .line 877
    goto :goto_1e

    .line 878
    :cond_28
    invoke-virtual {v3}, Landroidx/leanback/widget/i;->k()V

    .line 879
    .line 880
    .line 881
    :goto_1e
    aget-object v3, v7, v10

    .line 882
    .line 883
    iget-object v3, v3, Lei/k;->b:[I

    .line 884
    .line 885
    iget v9, v0, Lei/j;->C:I

    .line 886
    .line 887
    aget-object v9, v7, v9

    .line 888
    .line 889
    iget-object v9, v9, Lei/k;->b:[I

    .line 890
    .line 891
    const/4 v10, 0x0

    .line 892
    const/4 v11, 0x4

    .line 893
    invoke-static {v3, v10, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 894
    .line 895
    .line 896
    const/4 v13, 0x1

    .line 897
    goto/16 :goto_22

    .line 898
    .line 899
    :cond_29
    aget-object v3, v7, v3

    .line 900
    .line 901
    iget-boolean v9, v3, Lei/k;->f:Z

    .line 902
    .line 903
    iget-object v11, v3, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 904
    .line 905
    if-eqz v9, :cond_2a

    .line 906
    .line 907
    iget-boolean v9, v3, Lei/k;->g:Z

    .line 908
    .line 909
    if-eqz v9, :cond_2a

    .line 910
    .line 911
    iget v10, v3, Lei/k;->h:I

    .line 912
    .line 913
    iget v3, v3, Lei/k;->i:I

    .line 914
    .line 915
    invoke-virtual {v11}, Landroidx/leanback/widget/i;->l()V

    .line 916
    .line 917
    .line 918
    const/4 v9, 0x4

    .line 919
    goto :goto_1f

    .line 920
    :cond_2a
    iget v3, v3, Lei/k;->e:I

    .line 921
    .line 922
    const/4 v9, 0x4

    .line 923
    if-ge v3, v9, :cond_2b

    .line 924
    .line 925
    invoke-virtual {v11}, Landroidx/leanback/widget/i;->l()V

    .line 926
    .line 927
    .line 928
    goto :goto_1f

    .line 929
    :cond_2b
    invoke-virtual {v11}, Landroidx/leanback/widget/i;->m()V

    .line 930
    .line 931
    .line 932
    :goto_1f
    if-ge v3, v9, :cond_2d

    .line 933
    .line 934
    iget v9, v0, Lei/j;->C:I

    .line 935
    .line 936
    aget-object v9, v7, v9

    .line 937
    .line 938
    iget-object v9, v9, Lei/k;->b:[I

    .line 939
    .line 940
    aget-object v11, v7, v10

    .line 941
    .line 942
    iget-object v11, v11, Lei/k;->b:[I

    .line 943
    .line 944
    aget v11, v11, v3

    .line 945
    .line 946
    const/4 v12, 0x0

    .line 947
    aput v11, v9, v12

    .line 948
    .line 949
    const/4 v9, 0x1

    .line 950
    :goto_20
    if-gt v9, v3, :cond_2c

    .line 951
    .line 952
    iget v11, v0, Lei/j;->C:I

    .line 953
    .line 954
    aget-object v11, v7, v11

    .line 955
    .line 956
    iget-object v11, v11, Lei/k;->b:[I

    .line 957
    .line 958
    aget-object v12, v7, v10

    .line 959
    .line 960
    iget-object v12, v12, Lei/k;->b:[I

    .line 961
    .line 962
    const/4 v13, 0x1

    .line 963
    add-int/lit8 v14, v9, -0x1

    .line 964
    .line 965
    aget v12, v12, v14

    .line 966
    .line 967
    aput v12, v11, v9

    .line 968
    .line 969
    add-int/2addr v9, v13

    .line 970
    goto :goto_20

    .line 971
    :cond_2c
    const/4 v13, 0x1

    .line 972
    :goto_21
    const/4 v3, 0x4

    .line 973
    if-ge v9, v3, :cond_2e

    .line 974
    .line 975
    iget v3, v0, Lei/j;->C:I

    .line 976
    .line 977
    aget-object v3, v7, v3

    .line 978
    .line 979
    iget-object v3, v3, Lei/k;->b:[I

    .line 980
    .line 981
    aget-object v11, v7, v10

    .line 982
    .line 983
    iget-object v11, v11, Lei/k;->b:[I

    .line 984
    .line 985
    aget v11, v11, v9

    .line 986
    .line 987
    aput v11, v3, v9

    .line 988
    .line 989
    add-int/2addr v9, v13

    .line 990
    goto :goto_21

    .line 991
    :cond_2d
    const/4 v13, 0x1

    .line 992
    iget v9, v0, Lei/j;->C:I

    .line 993
    .line 994
    aget-object v9, v7, v9

    .line 995
    .line 996
    iget-object v9, v9, Lei/k;->b:[I

    .line 997
    .line 998
    const/4 v11, 0x4

    .line 999
    sub-int/2addr v3, v11

    .line 1000
    const/4 v11, 0x0

    .line 1001
    aput v3, v9, v11

    .line 1002
    .line 1003
    aget-object v3, v7, v10

    .line 1004
    .line 1005
    iget-object v3, v3, Lei/k;->b:[I

    .line 1006
    .line 1007
    const/4 v10, 0x3

    .line 1008
    invoke-static {v3, v11, v9, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1009
    .line 1010
    .line 1011
    :cond_2e
    :goto_22
    iget v3, v0, Lei/j;->C:I

    .line 1012
    .line 1013
    aget-object v3, v7, v3

    .line 1014
    .line 1015
    iget v9, v3, Lei/k;->c:I

    .line 1016
    .line 1017
    iget-object v3, v3, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1018
    .line 1019
    iget v3, v3, Landroidx/leanback/widget/i;->b:I

    .line 1020
    .line 1021
    aget-object v3, v19, v3

    .line 1022
    .line 1023
    aget-short v3, v3, v6

    .line 1024
    .line 1025
    invoke-static {v3, v13}, Lfi/d;->q0(II)I

    .line 1026
    .line 1027
    .line 1028
    move-result v3

    .line 1029
    add-int/2addr v3, v9

    .line 1030
    iget v9, v0, Lei/j;->C:I

    .line 1031
    .line 1032
    aget-object v9, v7, v9

    .line 1033
    .line 1034
    iget-object v9, v9, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1035
    .line 1036
    iget v9, v9, Landroidx/leanback/widget/i;->b:I

    .line 1037
    .line 1038
    aget-short v9, v35, v9

    .line 1039
    .line 1040
    invoke-static {v9, v13}, Lfi/d;->q0(II)I

    .line 1041
    .line 1042
    .line 1043
    move-result v9

    .line 1044
    add-int v14, v9, v3

    .line 1045
    .line 1046
    const/4 v9, 0x0

    .line 1047
    invoke-virtual {v1, v9}, Ldi/a;->b(I)I

    .line 1048
    .line 1049
    .line 1050
    move-result v12

    .line 1051
    iget v10, v0, Lei/j;->C:I

    .line 1052
    .line 1053
    aget-object v10, v7, v10

    .line 1054
    .line 1055
    iget-object v10, v10, Lei/k;->b:[I

    .line 1056
    .line 1057
    aget v10, v10, v9

    .line 1058
    .line 1059
    add-int/2addr v10, v13

    .line 1060
    invoke-virtual {v1, v10}, Ldi/a;->b(I)I

    .line 1061
    .line 1062
    .line 1063
    move-result v11

    .line 1064
    iget v9, v0, Lei/j;->C:I

    .line 1065
    .line 1066
    aget-object v9, v7, v9

    .line 1067
    .line 1068
    iget v10, v9, Lei/k;->c:I

    .line 1069
    .line 1070
    invoke-virtual {v1, v13}, Ldi/a;->b(I)I

    .line 1071
    .line 1072
    .line 1073
    move-result v20

    .line 1074
    iget v9, v0, Lei/j;->C:I

    .line 1075
    .line 1076
    aget-object v9, v7, v9

    .line 1077
    .line 1078
    iget-object v13, v9, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1079
    .line 1080
    iget-object v9, v0, Lei/h;->o:Lei/e;

    .line 1081
    .line 1082
    move/from16 v27, v10

    .line 1083
    .line 1084
    move v10, v12

    .line 1085
    move/from16 v28, v11

    .line 1086
    .line 1087
    move/from16 v29, v3

    .line 1088
    .line 1089
    move v3, v12

    .line 1090
    move/from16 v12, v20

    .line 1091
    .line 1092
    move-object/from16 v20, v13

    .line 1093
    .line 1094
    move v13, v15

    .line 1095
    move/from16 v30, v15

    .line 1096
    .line 1097
    move v15, v14

    .line 1098
    move-object/from16 v14, v20

    .line 1099
    .line 1100
    invoke-virtual/range {v9 .. v14}, Lei/e;->a(IIIILandroidx/leanback/widget/i;)I

    .line 1101
    .line 1102
    .line 1103
    move-result v9

    .line 1104
    add-int v10, v27, v9

    .line 1105
    .line 1106
    iget v9, v0, Lei/j;->C:I

    .line 1107
    .line 1108
    const/4 v11, 0x1

    .line 1109
    add-int/lit8 v12, v9, 0x1

    .line 1110
    .line 1111
    aget-object v12, v7, v12

    .line 1112
    .line 1113
    iget v13, v12, Lei/k;->c:I

    .line 1114
    .line 1115
    if-ge v10, v13, :cond_2f

    .line 1116
    .line 1117
    const/4 v13, -0x1

    .line 1118
    invoke-virtual {v12, v10, v9, v13}, Lei/k;->a(III)V

    .line 1119
    .line 1120
    .line 1121
    move/from16 v12, v28

    .line 1122
    .line 1123
    const/4 v9, 0x1

    .line 1124
    goto :goto_23

    .line 1125
    :cond_2f
    move/from16 v12, v28

    .line 1126
    .line 1127
    const/4 v9, 0x0

    .line 1128
    :goto_23
    if-ne v12, v3, :cond_30

    .line 1129
    .line 1130
    iget v13, v0, Lei/j;->C:I

    .line 1131
    .line 1132
    add-int/lit8 v14, v13, 0x1

    .line 1133
    .line 1134
    aget-object v11, v7, v14

    .line 1135
    .line 1136
    iget v14, v11, Lei/k;->d:I

    .line 1137
    .line 1138
    if-eq v14, v13, :cond_31

    .line 1139
    .line 1140
    iget v11, v11, Lei/k;->e:I

    .line 1141
    .line 1142
    if-eqz v11, :cond_30

    .line 1143
    .line 1144
    goto :goto_24

    .line 1145
    :cond_30
    move/from16 v27, v9

    .line 1146
    .line 1147
    goto :goto_25

    .line 1148
    :cond_31
    :goto_24
    aget-object v11, v7, v13

    .line 1149
    .line 1150
    iget-object v11, v11, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1151
    .line 1152
    iget v13, v11, Landroidx/leanback/widget/i;->b:I

    .line 1153
    .line 1154
    aget-short v13, v26, v13

    .line 1155
    .line 1156
    const/4 v14, 0x0

    .line 1157
    invoke-static {v13, v14}, Lfi/d;->q0(II)I

    .line 1158
    .line 1159
    .line 1160
    move-result v13

    .line 1161
    add-int/2addr v13, v15

    .line 1162
    iget v11, v11, Landroidx/leanback/widget/i;->b:I

    .line 1163
    .line 1164
    aget-object v11, v21, v11

    .line 1165
    .line 1166
    aget-short v11, v11, v6

    .line 1167
    .line 1168
    invoke-static {v11, v14}, Lfi/d;->q0(II)I

    .line 1169
    .line 1170
    .line 1171
    move-result v11

    .line 1172
    add-int/2addr v11, v13

    .line 1173
    iget v13, v0, Lei/j;->C:I

    .line 1174
    .line 1175
    const/16 v20, 0x1

    .line 1176
    .line 1177
    add-int/lit8 v23, v13, 0x1

    .line 1178
    .line 1179
    aget-object v14, v7, v23

    .line 1180
    .line 1181
    move/from16 v27, v9

    .line 1182
    .line 1183
    iget v9, v14, Lei/k;->c:I

    .line 1184
    .line 1185
    if-gt v11, v9, :cond_32

    .line 1186
    .line 1187
    const/4 v9, 0x0

    .line 1188
    invoke-virtual {v14, v11, v13, v9}, Lei/k;->a(III)V

    .line 1189
    .line 1190
    .line 1191
    const/16 v27, 0x1

    .line 1192
    .line 1193
    :cond_32
    :goto_25
    iget-object v9, v0, Lei/j;->G:Landroidx/leanback/widget/i;

    .line 1194
    .line 1195
    if-nez v27, :cond_35

    .line 1196
    .line 1197
    if-eq v12, v3, :cond_35

    .line 1198
    .line 1199
    const/4 v3, 0x2

    .line 1200
    if-le v5, v3, :cond_35

    .line 1201
    .line 1202
    add-int/lit8 v2, v2, -0x2

    .line 1203
    .line 1204
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 1205
    .line 1206
    .line 1207
    move-result v2

    .line 1208
    iget v3, v0, Lei/j;->C:I

    .line 1209
    .line 1210
    aget-object v3, v7, v3

    .line 1211
    .line 1212
    iget-object v3, v3, Lei/k;->b:[I

    .line 1213
    .line 1214
    const/4 v11, 0x0

    .line 1215
    aget v3, v3, v11

    .line 1216
    .line 1217
    iget v12, v1, Ldi/a;->g:I

    .line 1218
    .line 1219
    const/4 v13, 0x1

    .line 1220
    add-int/2addr v12, v13

    .line 1221
    add-int/2addr v3, v13

    .line 1222
    move-object/from16 v13, v17

    .line 1223
    .line 1224
    invoke-static {v13, v12, v3, v11, v2}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 1225
    .line 1226
    .line 1227
    move-result v2

    .line 1228
    const/4 v3, 0x2

    .line 1229
    if-lt v2, v3, :cond_34

    .line 1230
    .line 1231
    iget v11, v0, Lei/j;->C:I

    .line 1232
    .line 1233
    aget-object v11, v7, v11

    .line 1234
    .line 1235
    iget-object v11, v11, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1236
    .line 1237
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1238
    .line 1239
    .line 1240
    iget v11, v11, Landroidx/leanback/widget/i;->b:I

    .line 1241
    .line 1242
    iput v11, v9, Landroidx/leanback/widget/i;->b:I

    .line 1243
    .line 1244
    invoke-virtual {v9}, Landroidx/leanback/widget/i;->k()V

    .line 1245
    .line 1246
    .line 1247
    add-int/lit8 v16, v16, 0x2

    .line 1248
    .line 1249
    and-int v3, v16, v18

    .line 1250
    .line 1251
    invoke-virtual {v0, v2, v9, v3}, Lei/h;->f(ILandroidx/leanback/widget/i;I)I

    .line 1252
    .line 1253
    .line 1254
    move-result v3

    .line 1255
    add-int/2addr v3, v10

    .line 1256
    iget v10, v0, Lei/j;->C:I

    .line 1257
    .line 1258
    const/4 v11, 0x1

    .line 1259
    add-int/2addr v10, v11

    .line 1260
    add-int/2addr v10, v2

    .line 1261
    :goto_26
    iget v2, v0, Lei/j;->D:I

    .line 1262
    .line 1263
    if-ge v2, v10, :cond_33

    .line 1264
    .line 1265
    add-int/2addr v2, v11

    .line 1266
    iput v2, v0, Lei/j;->D:I

    .line 1267
    .line 1268
    aget-object v2, v7, v2

    .line 1269
    .line 1270
    const/high16 v11, 0x40000000    # 2.0f

    .line 1271
    .line 1272
    iput v11, v2, Lei/k;->c:I

    .line 1273
    .line 1274
    const/4 v11, 0x1

    .line 1275
    goto :goto_26

    .line 1276
    :cond_33
    aget-object v2, v7, v10

    .line 1277
    .line 1278
    iget v10, v2, Lei/k;->c:I

    .line 1279
    .line 1280
    if-ge v3, v10, :cond_34

    .line 1281
    .line 1282
    iget v10, v0, Lei/j;->C:I

    .line 1283
    .line 1284
    iput v3, v2, Lei/k;->c:I

    .line 1285
    .line 1286
    const/4 v3, 0x1

    .line 1287
    add-int/2addr v10, v3

    .line 1288
    iput v10, v2, Lei/k;->d:I

    .line 1289
    .line 1290
    const/4 v10, 0x0

    .line 1291
    iput v10, v2, Lei/k;->e:I

    .line 1292
    .line 1293
    iput-boolean v3, v2, Lei/k;->f:Z

    .line 1294
    .line 1295
    iput-boolean v10, v2, Lei/k;->g:Z

    .line 1296
    .line 1297
    :cond_34
    :goto_27
    const/4 v2, 0x2

    .line 1298
    goto :goto_28

    .line 1299
    :cond_35
    move-object/from16 v13, v17

    .line 1300
    .line 1301
    goto :goto_27

    .line 1302
    :goto_28
    if-lt v5, v2, :cond_4c

    .line 1303
    .line 1304
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 1305
    .line 1306
    .line 1307
    move-result v2

    .line 1308
    const/4 v3, 0x2

    .line 1309
    const/4 v10, 0x0

    .line 1310
    :goto_29
    const/4 v11, 0x4

    .line 1311
    if-ge v10, v11, :cond_40

    .line 1312
    .line 1313
    iget v11, v0, Lei/j;->C:I

    .line 1314
    .line 1315
    aget-object v11, v7, v11

    .line 1316
    .line 1317
    iget-object v11, v11, Lei/k;->b:[I

    .line 1318
    .line 1319
    aget v11, v11, v10

    .line 1320
    .line 1321
    iget v12, v1, Ldi/a;->g:I

    .line 1322
    .line 1323
    const/4 v14, 0x1

    .line 1324
    add-int/2addr v11, v14

    .line 1325
    const/4 v14, 0x0

    .line 1326
    invoke-static {v13, v12, v11, v14, v2}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 1327
    .line 1328
    .line 1329
    move-result v11

    .line 1330
    const/4 v12, 0x2

    .line 1331
    if-ge v11, v12, :cond_36

    .line 1332
    .line 1333
    move/from16 v16, v2

    .line 1334
    .line 1335
    move-object v12, v9

    .line 1336
    move/from16 v17, v15

    .line 1337
    .line 1338
    const/4 v9, 0x1

    .line 1339
    goto/16 :goto_2f

    .line 1340
    .line 1341
    :cond_36
    :goto_2a
    iget v12, v0, Lei/j;->D:I

    .line 1342
    .line 1343
    iget v14, v0, Lei/j;->C:I

    .line 1344
    .line 1345
    move/from16 v16, v2

    .line 1346
    .line 1347
    add-int v2, v14, v11

    .line 1348
    .line 1349
    if-ge v12, v2, :cond_37

    .line 1350
    .line 1351
    const/4 v2, 0x1

    .line 1352
    add-int/2addr v12, v2

    .line 1353
    iput v12, v0, Lei/j;->D:I

    .line 1354
    .line 1355
    aget-object v2, v7, v12

    .line 1356
    .line 1357
    const/high16 v12, 0x40000000    # 2.0f

    .line 1358
    .line 1359
    iput v12, v2, Lei/k;->c:I

    .line 1360
    .line 1361
    move/from16 v2, v16

    .line 1362
    .line 1363
    goto :goto_2a

    .line 1364
    :cond_37
    aget-object v2, v7, v14

    .line 1365
    .line 1366
    iget-object v2, v2, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1367
    .line 1368
    invoke-virtual {v0, v15, v10, v2, v6}, Lei/h;->g(IILandroidx/leanback/widget/i;I)I

    .line 1369
    .line 1370
    .line 1371
    move-result v2

    .line 1372
    move v12, v11

    .line 1373
    :goto_2b
    const/4 v14, 0x2

    .line 1374
    if-lt v12, v14, :cond_39

    .line 1375
    .line 1376
    aget-object v17, v8, v6

    .line 1377
    .line 1378
    add-int/lit8 v20, v12, -0x2

    .line 1379
    .line 1380
    aget v14, v17, v20

    .line 1381
    .line 1382
    add-int/2addr v14, v2

    .line 1383
    move/from16 v17, v15

    .line 1384
    .line 1385
    iget v15, v0, Lei/j;->C:I

    .line 1386
    .line 1387
    add-int v20, v15, v12

    .line 1388
    .line 1389
    move/from16 v27, v3

    .line 1390
    .line 1391
    aget-object v3, v7, v20

    .line 1392
    .line 1393
    move-object/from16 v20, v9

    .line 1394
    .line 1395
    iget v9, v3, Lei/k;->c:I

    .line 1396
    .line 1397
    if-ge v14, v9, :cond_38

    .line 1398
    .line 1399
    invoke-virtual {v3, v14, v15, v10}, Lei/k;->a(III)V

    .line 1400
    .line 1401
    .line 1402
    :cond_38
    const/4 v3, -0x1

    .line 1403
    add-int/2addr v12, v3

    .line 1404
    move/from16 v15, v17

    .line 1405
    .line 1406
    move-object/from16 v9, v20

    .line 1407
    .line 1408
    move/from16 v3, v27

    .line 1409
    .line 1410
    goto :goto_2b

    .line 1411
    :cond_39
    move/from16 v27, v3

    .line 1412
    .line 1413
    move-object/from16 v20, v9

    .line 1414
    .line 1415
    move/from16 v17, v15

    .line 1416
    .line 1417
    const/4 v3, 0x1

    .line 1418
    if-nez v10, :cond_3a

    .line 1419
    .line 1420
    add-int/lit8 v9, v11, 0x1

    .line 1421
    .line 1422
    goto :goto_2c

    .line 1423
    :cond_3a
    move/from16 v9, v27

    .line 1424
    .line 1425
    :goto_2c
    sub-int v12, v5, v11

    .line 1426
    .line 1427
    sub-int/2addr v12, v3

    .line 1428
    const/4 v14, 0x2

    .line 1429
    if-ge v12, v14, :cond_3d

    .line 1430
    .line 1431
    move/from16 v27, v9

    .line 1432
    .line 1433
    :cond_3b
    move-object/from16 v12, v20

    .line 1434
    .line 1435
    :cond_3c
    const/4 v9, 0x1

    .line 1436
    goto/16 :goto_2e

    .line 1437
    .line 1438
    :cond_3d
    if-le v12, v4, :cond_3e

    .line 1439
    .line 1440
    move v12, v4

    .line 1441
    :cond_3e
    add-int/lit8 v14, v11, 0x1

    .line 1442
    .line 1443
    iget v15, v0, Lei/j;->C:I

    .line 1444
    .line 1445
    aget-object v15, v7, v15

    .line 1446
    .line 1447
    iget-object v15, v15, Lei/k;->b:[I

    .line 1448
    .line 1449
    aget v15, v15, v10

    .line 1450
    .line 1451
    move/from16 v27, v9

    .line 1452
    .line 1453
    iget v9, v1, Ldi/a;->g:I

    .line 1454
    .line 1455
    add-int/2addr v9, v14

    .line 1456
    add-int/2addr v15, v3

    .line 1457
    const/4 v3, 0x0

    .line 1458
    invoke-static {v13, v9, v15, v3, v12}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 1459
    .line 1460
    .line 1461
    move-result v9

    .line 1462
    const/4 v3, 0x2

    .line 1463
    if-lt v9, v3, :cond_3b

    .line 1464
    .line 1465
    aget-object v12, v8, v6

    .line 1466
    .line 1467
    add-int/lit8 v14, v11, -0x2

    .line 1468
    .line 1469
    aget v3, v12, v14

    .line 1470
    .line 1471
    add-int/2addr v3, v2

    .line 1472
    iget v2, v0, Lei/j;->C:I

    .line 1473
    .line 1474
    aget-object v2, v7, v2

    .line 1475
    .line 1476
    iget-object v2, v2, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1477
    .line 1478
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1479
    .line 1480
    .line 1481
    iget v2, v2, Landroidx/leanback/widget/i;->b:I

    .line 1482
    .line 1483
    move-object/from16 v12, v20

    .line 1484
    .line 1485
    iput v2, v12, Landroidx/leanback/widget/i;->b:I

    .line 1486
    .line 1487
    invoke-virtual {v12}, Landroidx/leanback/widget/i;->l()V

    .line 1488
    .line 1489
    .line 1490
    const/4 v2, 0x0

    .line 1491
    invoke-virtual {v1, v11, v2}, Ldi/a;->c(II)I

    .line 1492
    .line 1493
    .line 1494
    move-result v37

    .line 1495
    invoke-virtual {v1, v2}, Ldi/a;->b(I)I

    .line 1496
    .line 1497
    .line 1498
    move-result v38

    .line 1499
    const/4 v2, 0x1

    .line 1500
    invoke-virtual {v1, v11, v2}, Ldi/a;->c(II)I

    .line 1501
    .line 1502
    .line 1503
    move-result v39

    .line 1504
    add-int v15, v30, v11

    .line 1505
    .line 1506
    iget-object v2, v0, Lei/j;->G:Landroidx/leanback/widget/i;

    .line 1507
    .line 1508
    iget-object v14, v0, Lei/h;->o:Lei/e;

    .line 1509
    .line 1510
    move-object/from16 v36, v14

    .line 1511
    .line 1512
    move/from16 v40, v15

    .line 1513
    .line 1514
    move-object/from16 v41, v2

    .line 1515
    .line 1516
    invoke-virtual/range {v36 .. v41}, Lei/e;->a(IIIILandroidx/leanback/widget/i;)I

    .line 1517
    .line 1518
    .line 1519
    move-result v2

    .line 1520
    add-int/2addr v3, v2

    .line 1521
    invoke-virtual {v12}, Landroidx/leanback/widget/i;->k()V

    .line 1522
    .line 1523
    .line 1524
    const/4 v2, 0x1

    .line 1525
    add-int/2addr v15, v2

    .line 1526
    and-int v14, v15, v18

    .line 1527
    .line 1528
    invoke-virtual {v0, v9, v12, v14}, Lei/h;->f(ILandroidx/leanback/widget/i;I)I

    .line 1529
    .line 1530
    .line 1531
    move-result v14

    .line 1532
    add-int/2addr v14, v3

    .line 1533
    iget v3, v0, Lei/j;->C:I

    .line 1534
    .line 1535
    invoke-static {v3, v11, v2, v9}, Lta/q;->x(IIII)I

    .line 1536
    .line 1537
    .line 1538
    move-result v3

    .line 1539
    :goto_2d
    iget v9, v0, Lei/j;->D:I

    .line 1540
    .line 1541
    if-ge v9, v3, :cond_3f

    .line 1542
    .line 1543
    add-int/2addr v9, v2

    .line 1544
    iput v9, v0, Lei/j;->D:I

    .line 1545
    .line 1546
    aget-object v2, v7, v9

    .line 1547
    .line 1548
    const/high16 v9, 0x40000000    # 2.0f

    .line 1549
    .line 1550
    iput v9, v2, Lei/k;->c:I

    .line 1551
    .line 1552
    const/4 v2, 0x1

    .line 1553
    goto :goto_2d

    .line 1554
    :cond_3f
    aget-object v2, v7, v3

    .line 1555
    .line 1556
    iget v3, v2, Lei/k;->c:I

    .line 1557
    .line 1558
    if-ge v14, v3, :cond_3c

    .line 1559
    .line 1560
    iget v3, v0, Lei/j;->C:I

    .line 1561
    .line 1562
    iput v14, v2, Lei/k;->c:I

    .line 1563
    .line 1564
    add-int/2addr v11, v3

    .line 1565
    const/4 v9, 0x1

    .line 1566
    add-int/2addr v11, v9

    .line 1567
    iput v11, v2, Lei/k;->d:I

    .line 1568
    .line 1569
    const/4 v11, 0x0

    .line 1570
    iput v11, v2, Lei/k;->e:I

    .line 1571
    .line 1572
    iput-boolean v9, v2, Lei/k;->f:Z

    .line 1573
    .line 1574
    iput-boolean v9, v2, Lei/k;->g:Z

    .line 1575
    .line 1576
    iput v3, v2, Lei/k;->h:I

    .line 1577
    .line 1578
    iput v10, v2, Lei/k;->i:I

    .line 1579
    .line 1580
    :goto_2e
    move/from16 v3, v27

    .line 1581
    .line 1582
    :goto_2f
    add-int/2addr v10, v9

    .line 1583
    move-object v9, v12

    .line 1584
    move/from16 v2, v16

    .line 1585
    .line 1586
    move/from16 v15, v17

    .line 1587
    .line 1588
    goto/16 :goto_29

    .line 1589
    .line 1590
    :cond_40
    move/from16 v27, v3

    .line 1591
    .line 1592
    move-object v12, v9

    .line 1593
    const/4 v9, 0x1

    .line 1594
    iget-object v2, v0, Lei/j;->E:Landroidx/room/s;

    .line 1595
    .line 1596
    iget v3, v2, Landroidx/room/s;->b:I

    .line 1597
    .line 1598
    if-lez v3, :cond_4c

    .line 1599
    .line 1600
    iget-object v10, v2, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 1601
    .line 1602
    check-cast v10, [I

    .line 1603
    .line 1604
    sub-int/2addr v3, v9

    .line 1605
    aget v3, v10, v3

    .line 1606
    .line 1607
    if-le v3, v5, :cond_42

    .line 1608
    .line 1609
    const/4 v3, 0x0

    .line 1610
    iput v3, v2, Landroidx/room/s;->b:I

    .line 1611
    .line 1612
    :goto_30
    iget-object v2, v0, Lei/j;->E:Landroidx/room/s;

    .line 1613
    .line 1614
    iget-object v3, v2, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 1615
    .line 1616
    check-cast v3, [I

    .line 1617
    .line 1618
    iget v10, v2, Landroidx/room/s;->b:I

    .line 1619
    .line 1620
    aget v11, v3, v10

    .line 1621
    .line 1622
    if-ge v11, v5, :cond_41

    .line 1623
    .line 1624
    add-int/2addr v10, v9

    .line 1625
    iput v10, v2, Landroidx/room/s;->b:I

    .line 1626
    .line 1627
    goto :goto_30

    .line 1628
    :cond_41
    add-int/lit8 v11, v10, 0x1

    .line 1629
    .line 1630
    iput v11, v2, Landroidx/room/s;->b:I

    .line 1631
    .line 1632
    aput v5, v3, v10

    .line 1633
    .line 1634
    :cond_42
    iget-object v2, v0, Lei/j;->E:Landroidx/room/s;

    .line 1635
    .line 1636
    iget-object v3, v2, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 1637
    .line 1638
    check-cast v3, [I

    .line 1639
    .line 1640
    iget v2, v2, Landroidx/room/s;->b:I

    .line 1641
    .line 1642
    sub-int/2addr v2, v9

    .line 1643
    aget v2, v3, v2

    .line 1644
    .line 1645
    move/from16 v3, v27

    .line 1646
    .line 1647
    if-ge v2, v3, :cond_43

    .line 1648
    .line 1649
    goto/16 :goto_37

    .line 1650
    .line 1651
    :cond_43
    :goto_31
    iget v2, v0, Lei/j;->D:I

    .line 1652
    .line 1653
    iget v10, v0, Lei/j;->C:I

    .line 1654
    .line 1655
    iget-object v11, v0, Lei/j;->E:Landroidx/room/s;

    .line 1656
    .line 1657
    iget-object v14, v11, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 1658
    .line 1659
    check-cast v14, [I

    .line 1660
    .line 1661
    iget v11, v11, Landroidx/room/s;->b:I

    .line 1662
    .line 1663
    sub-int/2addr v11, v9

    .line 1664
    aget v11, v14, v11

    .line 1665
    .line 1666
    add-int/2addr v11, v10

    .line 1667
    if-ge v2, v11, :cond_44

    .line 1668
    .line 1669
    add-int/2addr v2, v9

    .line 1670
    iput v2, v0, Lei/j;->D:I

    .line 1671
    .line 1672
    aget-object v2, v7, v2

    .line 1673
    .line 1674
    const/high16 v9, 0x40000000    # 2.0f

    .line 1675
    .line 1676
    iput v9, v2, Lei/k;->c:I

    .line 1677
    .line 1678
    const/4 v9, 0x1

    .line 1679
    goto :goto_31

    .line 1680
    :cond_44
    aget-object v2, v7, v10

    .line 1681
    .line 1682
    iget-object v2, v2, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1683
    .line 1684
    iget v2, v2, Landroidx/leanback/widget/i;->b:I

    .line 1685
    .line 1686
    aget-short v2, v35, v2

    .line 1687
    .line 1688
    const/4 v9, 0x0

    .line 1689
    invoke-static {v2, v9}, Lfi/d;->q0(II)I

    .line 1690
    .line 1691
    .line 1692
    move-result v2

    .line 1693
    add-int v2, v2, v29

    .line 1694
    .line 1695
    const/4 v9, 0x0

    .line 1696
    :goto_32
    iget-object v10, v0, Lei/j;->E:Landroidx/room/s;

    .line 1697
    .line 1698
    iget-object v10, v10, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 1699
    .line 1700
    check-cast v10, [I

    .line 1701
    .line 1702
    aget v10, v10, v9

    .line 1703
    .line 1704
    if-le v3, v10, :cond_45

    .line 1705
    .line 1706
    const/4 v10, 0x1

    .line 1707
    add-int/2addr v9, v10

    .line 1708
    goto :goto_32

    .line 1709
    :cond_45
    :goto_33
    iget-object v10, v0, Lei/j;->E:Landroidx/room/s;

    .line 1710
    .line 1711
    iget-object v10, v10, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 1712
    .line 1713
    check-cast v10, [I

    .line 1714
    .line 1715
    aget v10, v10, v9

    .line 1716
    .line 1717
    invoke-virtual {v0, v2, v10, v3, v6}, Lei/h;->h(IIII)I

    .line 1718
    .line 1719
    .line 1720
    move-result v11

    .line 1721
    iget v14, v0, Lei/j;->C:I

    .line 1722
    .line 1723
    add-int v15, v14, v3

    .line 1724
    .line 1725
    aget-object v15, v7, v15

    .line 1726
    .line 1727
    move/from16 v16, v2

    .line 1728
    .line 1729
    iget v2, v15, Lei/k;->c:I

    .line 1730
    .line 1731
    move/from16 v17, v6

    .line 1732
    .line 1733
    if-ge v11, v2, :cond_46

    .line 1734
    .line 1735
    const/4 v2, 0x4

    .line 1736
    add-int/lit8 v6, v10, 0x4

    .line 1737
    .line 1738
    invoke-virtual {v15, v11, v14, v6}, Lei/k;->a(III)V

    .line 1739
    .line 1740
    .line 1741
    :cond_46
    iget-object v2, v0, Lei/j;->E:Landroidx/room/s;

    .line 1742
    .line 1743
    iget-object v2, v2, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 1744
    .line 1745
    check-cast v2, [I

    .line 1746
    .line 1747
    aget v2, v2, v9

    .line 1748
    .line 1749
    if-eq v3, v2, :cond_47

    .line 1750
    .line 1751
    const/4 v11, 0x1

    .line 1752
    const/4 v15, 0x4

    .line 1753
    goto/16 :goto_36

    .line 1754
    .line 1755
    :cond_47
    sub-int v2, v5, v3

    .line 1756
    .line 1757
    const/4 v6, 0x1

    .line 1758
    sub-int/2addr v2, v6

    .line 1759
    const/4 v14, 0x2

    .line 1760
    if-lt v2, v14, :cond_4a

    .line 1761
    .line 1762
    if-le v2, v4, :cond_48

    .line 1763
    .line 1764
    move v2, v4

    .line 1765
    :cond_48
    add-int/lit8 v15, v3, 0x1

    .line 1766
    .line 1767
    iget v14, v1, Ldi/a;->g:I

    .line 1768
    .line 1769
    add-int/2addr v14, v15

    .line 1770
    add-int/lit8 v15, v10, 0x1

    .line 1771
    .line 1772
    const/4 v6, 0x0

    .line 1773
    invoke-static {v13, v14, v15, v6, v2}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 1774
    .line 1775
    .line 1776
    move-result v2

    .line 1777
    const/4 v6, 0x2

    .line 1778
    if-lt v2, v6, :cond_4a

    .line 1779
    .line 1780
    iget v14, v0, Lei/j;->C:I

    .line 1781
    .line 1782
    aget-object v14, v7, v14

    .line 1783
    .line 1784
    iget-object v14, v14, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 1785
    .line 1786
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1787
    .line 1788
    .line 1789
    iget v14, v14, Landroidx/leanback/widget/i;->b:I

    .line 1790
    .line 1791
    iput v14, v12, Landroidx/leanback/widget/i;->b:I

    .line 1792
    .line 1793
    invoke-virtual {v12}, Landroidx/leanback/widget/i;->m()V

    .line 1794
    .line 1795
    .line 1796
    const/4 v14, 0x0

    .line 1797
    invoke-virtual {v1, v3, v14}, Ldi/a;->c(II)I

    .line 1798
    .line 1799
    .line 1800
    move-result v37

    .line 1801
    invoke-virtual {v1, v14}, Ldi/a;->b(I)I

    .line 1802
    .line 1803
    .line 1804
    move-result v38

    .line 1805
    const/4 v14, 0x1

    .line 1806
    invoke-virtual {v1, v3, v14}, Ldi/a;->c(II)I

    .line 1807
    .line 1808
    .line 1809
    move-result v39

    .line 1810
    add-int v15, v30, v3

    .line 1811
    .line 1812
    iget-object v14, v0, Lei/j;->G:Landroidx/leanback/widget/i;

    .line 1813
    .line 1814
    iget-object v6, v0, Lei/h;->o:Lei/e;

    .line 1815
    .line 1816
    move-object/from16 v36, v6

    .line 1817
    .line 1818
    move/from16 v40, v15

    .line 1819
    .line 1820
    move-object/from16 v41, v14

    .line 1821
    .line 1822
    invoke-virtual/range {v36 .. v41}, Lei/e;->a(IIIILandroidx/leanback/widget/i;)I

    .line 1823
    .line 1824
    .line 1825
    move-result v6

    .line 1826
    add-int/2addr v11, v6

    .line 1827
    invoke-virtual {v12}, Landroidx/leanback/widget/i;->k()V

    .line 1828
    .line 1829
    .line 1830
    const/4 v6, 0x1

    .line 1831
    add-int/2addr v15, v6

    .line 1832
    and-int v14, v15, v18

    .line 1833
    .line 1834
    invoke-virtual {v0, v2, v12, v14}, Lei/h;->f(ILandroidx/leanback/widget/i;I)I

    .line 1835
    .line 1836
    .line 1837
    move-result v14

    .line 1838
    add-int/2addr v14, v11

    .line 1839
    iget v11, v0, Lei/j;->C:I

    .line 1840
    .line 1841
    invoke-static {v11, v3, v6, v2}, Lta/q;->x(IIII)I

    .line 1842
    .line 1843
    .line 1844
    move-result v2

    .line 1845
    :goto_34
    iget v11, v0, Lei/j;->D:I

    .line 1846
    .line 1847
    if-ge v11, v2, :cond_49

    .line 1848
    .line 1849
    add-int/2addr v11, v6

    .line 1850
    iput v11, v0, Lei/j;->D:I

    .line 1851
    .line 1852
    aget-object v6, v7, v11

    .line 1853
    .line 1854
    const/high16 v11, 0x40000000    # 2.0f

    .line 1855
    .line 1856
    iput v11, v6, Lei/k;->c:I

    .line 1857
    .line 1858
    const/4 v6, 0x1

    .line 1859
    goto :goto_34

    .line 1860
    :cond_49
    const/high16 v11, 0x40000000    # 2.0f

    .line 1861
    .line 1862
    aget-object v2, v7, v2

    .line 1863
    .line 1864
    iget v6, v2, Lei/k;->c:I

    .line 1865
    .line 1866
    if-ge v14, v6, :cond_4a

    .line 1867
    .line 1868
    iget v6, v0, Lei/j;->C:I

    .line 1869
    .line 1870
    const/4 v15, 0x4

    .line 1871
    add-int/2addr v10, v15

    .line 1872
    iput v14, v2, Lei/k;->c:I

    .line 1873
    .line 1874
    add-int v14, v6, v3

    .line 1875
    .line 1876
    const/4 v11, 0x1

    .line 1877
    add-int/2addr v14, v11

    .line 1878
    iput v14, v2, Lei/k;->d:I

    .line 1879
    .line 1880
    const/4 v14, 0x0

    .line 1881
    iput v14, v2, Lei/k;->e:I

    .line 1882
    .line 1883
    iput-boolean v11, v2, Lei/k;->f:Z

    .line 1884
    .line 1885
    iput-boolean v11, v2, Lei/k;->g:Z

    .line 1886
    .line 1887
    iput v6, v2, Lei/k;->h:I

    .line 1888
    .line 1889
    iput v10, v2, Lei/k;->i:I

    .line 1890
    .line 1891
    goto :goto_35

    .line 1892
    :cond_4a
    const/4 v11, 0x1

    .line 1893
    const/4 v15, 0x4

    .line 1894
    :goto_35
    add-int/2addr v9, v11

    .line 1895
    iget-object v2, v0, Lei/j;->E:Landroidx/room/s;

    .line 1896
    .line 1897
    iget v2, v2, Landroidx/room/s;->b:I

    .line 1898
    .line 1899
    if-ne v9, v2, :cond_4b

    .line 1900
    .line 1901
    goto :goto_38

    .line 1902
    :cond_4b
    :goto_36
    add-int/2addr v3, v11

    .line 1903
    move/from16 v2, v16

    .line 1904
    .line 1905
    move/from16 v6, v17

    .line 1906
    .line 1907
    goto/16 :goto_33

    .line 1908
    .line 1909
    :cond_4c
    :goto_37
    const/4 v11, 0x1

    .line 1910
    const/4 v15, 0x4

    .line 1911
    :goto_38
    move/from16 v20, v4

    .line 1912
    .line 1913
    move v2, v5

    .line 1914
    move-object/from16 v17, v13

    .line 1915
    .line 1916
    move/from16 v16, v30

    .line 1917
    .line 1918
    const/4 v6, 0x1

    .line 1919
    goto/16 :goto_18

    .line 1920
    .line 1921
    :cond_4d
    :goto_39
    iget v1, v0, Lei/j;->C:I

    .line 1922
    .line 1923
    iput v1, v0, Lei/j;->D:I

    .line 1924
    .line 1925
    aget-object v1, v7, v1

    .line 1926
    .line 1927
    iget v1, v1, Lei/k;->d:I

    .line 1928
    .line 1929
    :goto_3a
    iget v2, v0, Lei/j;->C:I

    .line 1930
    .line 1931
    aget-object v3, v7, v2

    .line 1932
    .line 1933
    iget-boolean v4, v3, Lei/k;->f:Z

    .line 1934
    .line 1935
    if-eqz v4, :cond_4f

    .line 1936
    .line 1937
    aget-object v4, v7, v1

    .line 1938
    .line 1939
    iput v2, v4, Lei/k;->d:I

    .line 1940
    .line 1941
    const/4 v2, -0x1

    .line 1942
    iput v2, v4, Lei/k;->e:I

    .line 1943
    .line 1944
    add-int/lit8 v4, v1, -0x1

    .line 1945
    .line 1946
    iput v1, v0, Lei/j;->C:I

    .line 1947
    .line 1948
    iget-boolean v5, v3, Lei/k;->g:Z

    .line 1949
    .line 1950
    if-eqz v5, :cond_4e

    .line 1951
    .line 1952
    aget-object v5, v7, v4

    .line 1953
    .line 1954
    iput v1, v5, Lei/k;->d:I

    .line 1955
    .line 1956
    iget v1, v3, Lei/k;->i:I

    .line 1957
    .line 1958
    iput v1, v5, Lei/k;->e:I

    .line 1959
    .line 1960
    iput v4, v0, Lei/j;->C:I

    .line 1961
    .line 1962
    iget v1, v3, Lei/k;->h:I

    .line 1963
    .line 1964
    goto :goto_3b

    .line 1965
    :cond_4e
    move v1, v4

    .line 1966
    goto :goto_3b

    .line 1967
    :cond_4f
    const/4 v2, -0x1

    .line 1968
    :goto_3b
    aget-object v3, v7, v1

    .line 1969
    .line 1970
    iget v4, v3, Lei/k;->d:I

    .line 1971
    .line 1972
    iget v5, v0, Lei/j;->C:I

    .line 1973
    .line 1974
    iput v5, v3, Lei/k;->d:I

    .line 1975
    .line 1976
    iput v1, v0, Lei/j;->C:I

    .line 1977
    .line 1978
    if-gtz v1, :cond_50

    .line 1979
    .line 1980
    const/4 v1, 0x0

    .line 1981
    aget-object v1, v7, v1

    .line 1982
    .line 1983
    iget v1, v1, Lei/k;->d:I

    .line 1984
    .line 1985
    iput v1, v0, Lei/j;->C:I

    .line 1986
    .line 1987
    aget-object v2, v7, v1

    .line 1988
    .line 1989
    iget v2, v2, Lei/k;->e:I

    .line 1990
    .line 1991
    iput v2, v0, Lei/h;->y:I

    .line 1992
    .line 1993
    return v1

    .line 1994
    :cond_50
    move v1, v4

    .line 1995
    goto :goto_3a
.end method
