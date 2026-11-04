.class public final Leb/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:La2/m;


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:[I

.field public final c:Llb/a;

.field public d:Lmb/h;

.field public e:Lnb/b;

.field public f:I

.field public g:I

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/List;

.field public j:Leb/p;

.field public k:Leb/c;

.field public l:Ld3/g;

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La2/m;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, La2/m;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Leb/o;->o:La2/m;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Leb/o;->a:Landroid/graphics/RectF;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    iput-object v0, p0, Leb/o;->b:[I

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    invoke-static {v0, v1}, Lif/a;->q0(J)Llb/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Leb/o;->c:Llb/a;

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Leb/o;->m:I

    .line 26
    .line 27
    iput v0, p0, Leb/o;->n:I

    .line 28
    .line 29
    return-void
.end method

.method public static a(Leb/o;Ljava/util/ArrayList;ZLeb/j;Landroid/graphics/Canvas;FLeb/i;)F
    .locals 33

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p6

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance v0, Lsb/g;

    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lsb/g;-><init>(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object/from16 v1, p1

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    const/4 v12, 0x0

    .line 26
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_27

    .line 31
    .line 32
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v13, v0

    .line 37
    check-cast v13, Lwb/i;

    .line 38
    .line 39
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    add-float v14, p5, v12

    .line 43
    .line 44
    iget-boolean v15, v13, Lwb/i;->c:Z

    .line 45
    .line 46
    if-eqz v15, :cond_1

    .line 47
    .line 48
    iget v0, v13, Lwb/i;->b:I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    iget v0, v13, Lwb/i;->a:I

    .line 52
    .line 53
    :goto_2
    const/16 v27, 0x1

    .line 54
    .line 55
    if-eqz v15, :cond_2

    .line 56
    .line 57
    iget v1, v13, Lwb/i;->a:I

    .line 58
    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    :goto_3
    move v7, v1

    .line 62
    goto :goto_4

    .line 63
    :cond_2
    iget v1, v13, Lwb/i;->b:I

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :goto_4
    iget-object v1, v8, Leb/o;->j:Leb/p;

    .line 67
    .line 68
    iget v1, v1, Leb/p;->a:I

    .line 69
    .line 70
    int-to-float v1, v1

    .line 71
    iget-object v2, v8, Leb/o;->k:Leb/c;

    .line 72
    .line 73
    iget v2, v2, Leb/c;->a:F

    .line 74
    .line 75
    mul-float v28, v1, v2

    .line 76
    .line 77
    if-eqz v15, :cond_3

    .line 78
    .line 79
    iget v1, v13, Lwb/i;->b:I

    .line 80
    .line 81
    add-int/lit8 v1, v1, -0x1

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_3
    iget v1, v13, Lwb/i;->a:I

    .line 85
    .line 86
    :goto_5
    move v6, v1

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    :goto_6
    const/high16 v29, -0x40800000    # -1.0f

    .line 90
    .line 91
    const/16 v30, 0x0

    .line 92
    .line 93
    if-eqz v15, :cond_5

    .line 94
    .line 95
    if-lt v6, v7, :cond_4

    .line 96
    .line 97
    goto :goto_7

    .line 98
    :cond_4
    move-object/from16 v31, v10

    .line 99
    .line 100
    move/from16 v32, v12

    .line 101
    .line 102
    goto/16 :goto_12

    .line 103
    .line 104
    :cond_5
    if-gt v6, v7, :cond_4

    .line 105
    .line 106
    :goto_7
    if-eq v6, v7, :cond_7

    .line 107
    .line 108
    iget-object v1, v8, Leb/o;->d:Lmb/h;

    .line 109
    .line 110
    invoke-virtual {v1, v6}, Lmb/h;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/16 v2, 0x9

    .line 115
    .line 116
    if-ne v1, v2, :cond_6

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_6
    move-object/from16 v31, v10

    .line 120
    .line 121
    move/from16 v32, v12

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    move v10, v6

    .line 125
    move v12, v7

    .line 126
    move v6, v15

    .line 127
    goto/16 :goto_1d

    .line 128
    .line 129
    :cond_7
    :goto_8
    if-eqz v15, :cond_8

    .line 130
    .line 131
    add-int/lit8 v1, v6, 0x1

    .line 132
    .line 133
    move v5, v1

    .line 134
    goto :goto_9

    .line 135
    :cond_8
    move v5, v0

    .line 136
    :goto_9
    if-eqz v15, :cond_9

    .line 137
    .line 138
    move v4, v0

    .line 139
    goto :goto_a

    .line 140
    :cond_9
    move v4, v6

    .line 141
    :goto_a
    add-float v17, v14, v16

    .line 142
    .line 143
    move-object/from16 v3, p3

    .line 144
    .line 145
    iget v0, v3, Leb/j;->a:I

    .line 146
    .line 147
    if-eqz v15, :cond_a

    .line 148
    .line 149
    add-int/lit8 v1, v4, -0x1

    .line 150
    .line 151
    goto :goto_b

    .line 152
    :cond_a
    move v1, v5

    .line 153
    :goto_b
    iget-object v2, v8, Leb/o;->h:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :goto_c
    add-int/lit8 v11, v0, 0x1

    .line 160
    .line 161
    move/from16 p2, v0

    .line 162
    .line 163
    if-ge v11, v2, :cond_b

    .line 164
    .line 165
    iget-object v0, v8, Leb/o;->h:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Ljb/c;

    .line 172
    .line 173
    check-cast v0, Llb/a;

    .line 174
    .line 175
    iget v0, v0, Llb/a;->a:I

    .line 176
    .line 177
    if-gt v0, v1, :cond_b

    .line 178
    .line 179
    move v0, v11

    .line 180
    goto :goto_c

    .line 181
    :cond_b
    if-eqz v15, :cond_10

    .line 182
    .line 183
    move/from16 v11, p2

    .line 184
    .line 185
    move v2, v4

    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    :goto_d
    if-le v2, v5, :cond_f

    .line 189
    .line 190
    iget-object v0, v8, Leb/o;->h:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    move-object v4, v0

    .line 197
    check-cast v4, Ljb/c;

    .line 198
    .line 199
    if-nez v11, :cond_c

    .line 200
    .line 201
    const/4 v0, 0x0

    .line 202
    const/16 v19, 0x0

    .line 203
    .line 204
    goto :goto_e

    .line 205
    :cond_c
    move-object v0, v4

    .line 206
    check-cast v0, Llb/a;

    .line 207
    .line 208
    iget v0, v0, Llb/a;->a:I

    .line 209
    .line 210
    const/16 v19, 0x1

    .line 211
    .line 212
    :goto_e
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 213
    .line 214
    .line 215
    move-result v20

    .line 216
    add-float v21, v17, v18

    .line 217
    .line 218
    move-object/from16 v0, p0

    .line 219
    .line 220
    move/from16 v1, v20

    .line 221
    .line 222
    move v3, v15

    .line 223
    move/from16 v22, v5

    .line 224
    .line 225
    move-object/from16 v5, p4

    .line 226
    .line 227
    move-object/from16 v31, v10

    .line 228
    .line 229
    move v10, v6

    .line 230
    move/from16 v6, v21

    .line 231
    .line 232
    move/from16 v32, v12

    .line 233
    .line 234
    move v12, v7

    .line 235
    move-object/from16 v7, p6

    .line 236
    .line 237
    invoke-virtual/range {v0 .. v7}, Leb/o;->i(IIZLjb/c;Landroid/graphics/Canvas;FLeb/i;)F

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    add-float v18, v18, v0

    .line 242
    .line 243
    if-eqz v19, :cond_d

    .line 244
    .line 245
    add-int/lit8 v11, v11, -0x1

    .line 246
    .line 247
    :cond_d
    add-float v0, v17, v18

    .line 248
    .line 249
    iget v1, v9, Leb/i;->c:F

    .line 250
    .line 251
    cmpl-float v0, v0, v1

    .line 252
    .line 253
    if-lez v0, :cond_e

    .line 254
    .line 255
    goto/16 :goto_11

    .line 256
    .line 257
    :cond_e
    move-object/from16 v3, p3

    .line 258
    .line 259
    move v6, v10

    .line 260
    move v7, v12

    .line 261
    move/from16 v2, v20

    .line 262
    .line 263
    move/from16 v5, v22

    .line 264
    .line 265
    move-object/from16 v10, v31

    .line 266
    .line 267
    move/from16 v12, v32

    .line 268
    .line 269
    goto :goto_d

    .line 270
    :cond_f
    move-object/from16 v31, v10

    .line 271
    .line 272
    move/from16 v32, v12

    .line 273
    .line 274
    move v10, v6

    .line 275
    move v12, v7

    .line 276
    goto/16 :goto_11

    .line 277
    .line 278
    :cond_10
    move/from16 v22, v5

    .line 279
    .line 280
    move-object/from16 v31, v10

    .line 281
    .line 282
    move/from16 v32, v12

    .line 283
    .line 284
    move v10, v6

    .line 285
    move v12, v7

    .line 286
    move/from16 v11, p2

    .line 287
    .line 288
    move/from16 v1, v22

    .line 289
    .line 290
    const/16 v18, 0x0

    .line 291
    .line 292
    :goto_f
    if-ge v1, v4, :cond_14

    .line 293
    .line 294
    add-int/lit8 v7, v11, 0x1

    .line 295
    .line 296
    if-lt v7, v2, :cond_11

    .line 297
    .line 298
    iget v0, v8, Leb/o;->g:I

    .line 299
    .line 300
    const/16 v19, 0x0

    .line 301
    .line 302
    goto :goto_10

    .line 303
    :cond_11
    iget-object v0, v8, Leb/o;->h:Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Ljb/c;

    .line 310
    .line 311
    check-cast v0, Llb/a;

    .line 312
    .line 313
    iget v0, v0, Llb/a;->a:I

    .line 314
    .line 315
    const/16 v19, 0x1

    .line 316
    .line 317
    :goto_10
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 318
    .line 319
    .line 320
    move-result v20

    .line 321
    iget-object v0, v8, Leb/o;->h:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    move-object v5, v0

    .line 328
    check-cast v5, Ljb/c;

    .line 329
    .line 330
    add-float v6, v17, v18

    .line 331
    .line 332
    move-object/from16 v0, p0

    .line 333
    .line 334
    move/from16 v21, v2

    .line 335
    .line 336
    move/from16 v2, v20

    .line 337
    .line 338
    move v3, v15

    .line 339
    move/from16 v22, v4

    .line 340
    .line 341
    move-object v4, v5

    .line 342
    move-object/from16 v5, p4

    .line 343
    .line 344
    move/from16 v23, v7

    .line 345
    .line 346
    move-object/from16 v7, p6

    .line 347
    .line 348
    invoke-virtual/range {v0 .. v7}, Leb/o;->i(IIZLjb/c;Landroid/graphics/Canvas;FLeb/i;)F

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    add-float v18, v18, v0

    .line 353
    .line 354
    if-eqz v19, :cond_12

    .line 355
    .line 356
    move/from16 v11, v23

    .line 357
    .line 358
    :cond_12
    add-float v0, v17, v18

    .line 359
    .line 360
    iget v1, v9, Leb/i;->c:F

    .line 361
    .line 362
    cmpl-float v0, v0, v1

    .line 363
    .line 364
    if-lez v0, :cond_13

    .line 365
    .line 366
    goto :goto_11

    .line 367
    :cond_13
    move/from16 v1, v20

    .line 368
    .line 369
    move/from16 v2, v21

    .line 370
    .line 371
    move/from16 v4, v22

    .line 372
    .line 373
    goto :goto_f

    .line 374
    :cond_14
    :goto_11
    add-float v0, v16, v18

    .line 375
    .line 376
    add-float v1, v14, v0

    .line 377
    .line 378
    iget v2, v9, Leb/i;->c:F

    .line 379
    .line 380
    cmpl-float v2, v1, v2

    .line 381
    .line 382
    if-lez v2, :cond_15

    .line 383
    .line 384
    move/from16 v16, v0

    .line 385
    .line 386
    :goto_12
    const/4 v2, 0x0

    .line 387
    goto/16 :goto_1f

    .line 388
    .line 389
    :cond_15
    if-eq v10, v12, :cond_20

    .line 390
    .line 391
    iget v2, v9, Leb/i;->d:I

    .line 392
    .line 393
    if-eq v10, v2, :cond_17

    .line 394
    .line 395
    add-int/lit8 v6, v10, 0x1

    .line 396
    .line 397
    if-ne v6, v2, :cond_16

    .line 398
    .line 399
    iget v3, v8, Leb/o;->g:I

    .line 400
    .line 401
    if-ne v6, v3, :cond_16

    .line 402
    .line 403
    goto :goto_13

    .line 404
    :cond_16
    const/4 v2, 0x0

    .line 405
    goto :goto_17

    .line 406
    :cond_17
    :goto_13
    if-ne v10, v2, :cond_18

    .line 407
    .line 408
    const/4 v2, 0x0

    .line 409
    goto :goto_14

    .line 410
    :cond_18
    move/from16 v2, v28

    .line 411
    .line 412
    :goto_14
    if-eqz v15, :cond_19

    .line 413
    .line 414
    add-float v3, v0, v28

    .line 415
    .line 416
    sub-float/2addr v3, v2

    .line 417
    iput v3, v9, Leb/i;->e:F

    .line 418
    .line 419
    :goto_15
    const/4 v2, 0x0

    .line 420
    goto :goto_16

    .line 421
    :cond_19
    add-float/2addr v2, v0

    .line 422
    iput v2, v9, Leb/i;->e:F

    .line 423
    .line 424
    goto :goto_15

    .line 425
    :goto_16
    iput v2, v9, Leb/i;->c:F

    .line 426
    .line 427
    :goto_17
    iget v3, v9, Leb/i;->f:F

    .line 428
    .line 429
    cmpl-float v4, v3, v29

    .line 430
    .line 431
    if-eqz v4, :cond_1c

    .line 432
    .line 433
    sub-float/2addr v3, v14

    .line 434
    sub-float/2addr v3, v0

    .line 435
    if-eqz v15, :cond_1a

    .line 436
    .line 437
    sub-float v3, v28, v3

    .line 438
    .line 439
    :cond_1a
    const/high16 v4, 0x40000000    # 2.0f

    .line 440
    .line 441
    div-float v4, v28, v4

    .line 442
    .line 443
    cmpl-float v3, v3, v4

    .line 444
    .line 445
    if-lez v3, :cond_1b

    .line 446
    .line 447
    add-int/lit8 v6, v10, 0x1

    .line 448
    .line 449
    iput v6, v9, Leb/i;->g:I

    .line 450
    .line 451
    goto :goto_18

    .line 452
    :cond_1b
    iput v10, v9, Leb/i;->g:I

    .line 453
    .line 454
    :cond_1c
    :goto_18
    iget-object v3, v9, Leb/i;->l:Leb/l;

    .line 455
    .line 456
    if-eqz v3, :cond_1d

    .line 457
    .line 458
    iget v4, v9, Leb/i;->j:I

    .line 459
    .line 460
    if-lt v10, v4, :cond_1d

    .line 461
    .line 462
    iget v4, v9, Leb/i;->k:I

    .line 463
    .line 464
    if-ge v10, v4, :cond_1d

    .line 465
    .line 466
    add-float v4, v1, v28

    .line 467
    .line 468
    invoke-virtual {v3, v1, v4}, Leb/l;->b(FF)V

    .line 469
    .line 470
    .line 471
    :cond_1d
    iget-object v3, v9, Leb/i;->p:Ld3/g;

    .line 472
    .line 473
    if-eqz v3, :cond_1e

    .line 474
    .line 475
    const/high16 v4, 0x40000

    .line 476
    .line 477
    div-int v6, v10, v4

    .line 478
    .line 479
    rem-int v4, v10, v4

    .line 480
    .line 481
    iget-object v3, v3, Ld3/g;->c:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v3, [[F

    .line 484
    .line 485
    aget-object v3, v3, v6

    .line 486
    .line 487
    aput v28, v3, v4

    .line 488
    .line 489
    :cond_1e
    iget-object v3, v9, Leb/i;->n:Ltb/h;

    .line 490
    .line 491
    if-eqz v3, :cond_1f

    .line 492
    .line 493
    iget v4, v9, Leb/i;->j:I

    .line 494
    .line 495
    if-lt v10, v4, :cond_1f

    .line 496
    .line 497
    iget v4, v9, Leb/i;->k:I

    .line 498
    .line 499
    if-ge v10, v4, :cond_1f

    .line 500
    .line 501
    iget-object v4, v8, Leb/o;->d:Lmb/h;

    .line 502
    .line 503
    iget-object v5, v8, Leb/o;->j:Leb/p;

    .line 504
    .line 505
    const/16 v26, 0x0

    .line 506
    .line 507
    const/16 v19, 0x1

    .line 508
    .line 509
    const/16 v21, 0x1

    .line 510
    .line 511
    move v6, v15

    .line 512
    move-object v15, v3

    .line 513
    move-object/from16 v16, p4

    .line 514
    .line 515
    move-object/from16 v17, v4

    .line 516
    .line 517
    move/from16 v18, v10

    .line 518
    .line 519
    move/from16 v20, v10

    .line 520
    .line 521
    move/from16 v22, v6

    .line 522
    .line 523
    move/from16 v23, v1

    .line 524
    .line 525
    move/from16 v24, v28

    .line 526
    .line 527
    move-object/from16 v25, v5

    .line 528
    .line 529
    invoke-virtual/range {v15 .. v26}, Ltb/h;->a(Landroid/graphics/Canvas;Landroid/text/GetChars;IIIIZFFLeb/p;Ljb/c;)V

    .line 530
    .line 531
    .line 532
    goto :goto_19

    .line 533
    :cond_1f
    move v6, v15

    .line 534
    :goto_19
    add-float v0, v0, v28

    .line 535
    .line 536
    :goto_1a
    move/from16 v16, v0

    .line 537
    .line 538
    goto :goto_1b

    .line 539
    :cond_20
    move v6, v15

    .line 540
    const/4 v2, 0x0

    .line 541
    goto :goto_1a

    .line 542
    :goto_1b
    if-eqz v6, :cond_21

    .line 543
    .line 544
    move v0, v10

    .line 545
    goto :goto_1c

    .line 546
    :cond_21
    add-int/lit8 v0, v10, 0x1

    .line 547
    .line 548
    :goto_1c
    add-float v1, v14, v16

    .line 549
    .line 550
    iget v3, v9, Leb/i;->c:F

    .line 551
    .line 552
    cmpl-float v1, v1, v3

    .line 553
    .line 554
    if-lez v1, :cond_22

    .line 555
    .line 556
    goto :goto_1f

    .line 557
    :cond_22
    :goto_1d
    if-eqz v6, :cond_23

    .line 558
    .line 559
    const/4 v1, -0x1

    .line 560
    goto :goto_1e

    .line 561
    :cond_23
    const/4 v1, 0x1

    .line 562
    :goto_1e
    add-int/2addr v1, v10

    .line 563
    move v15, v6

    .line 564
    move v7, v12

    .line 565
    move-object/from16 v10, v31

    .line 566
    .line 567
    move/from16 v12, v32

    .line 568
    .line 569
    move v6, v1

    .line 570
    goto/16 :goto_6

    .line 571
    .line 572
    :goto_1f
    iget v0, v9, Leb/i;->f:F

    .line 573
    .line 574
    cmpl-float v1, v0, v29

    .line 575
    .line 576
    if-eqz v1, :cond_25

    .line 577
    .line 578
    iput-object v13, v9, Leb/i;->h:Lwb/i;

    .line 579
    .line 580
    add-float v1, p5, v32

    .line 581
    .line 582
    cmpg-float v3, v1, v0

    .line 583
    .line 584
    if-gtz v3, :cond_24

    .line 585
    .line 586
    add-float v1, v1, v16

    .line 587
    .line 588
    cmpg-float v0, v0, v1

    .line 589
    .line 590
    if-gtz v0, :cond_24

    .line 591
    .line 592
    const/4 v0, 0x1

    .line 593
    goto :goto_20

    .line 594
    :cond_24
    const/4 v0, 0x0

    .line 595
    :goto_20
    iput-boolean v0, v9, Leb/i;->i:Z

    .line 596
    .line 597
    :cond_25
    add-float v12, v32, v16

    .line 598
    .line 599
    add-float v0, p5, v12

    .line 600
    .line 601
    iget v1, v9, Leb/i;->c:F

    .line 602
    .line 603
    cmpl-float v0, v0, v1

    .line 604
    .line 605
    if-lez v0, :cond_26

    .line 606
    .line 607
    goto :goto_21

    .line 608
    :cond_26
    move-object/from16 v10, v31

    .line 609
    .line 610
    goto/16 :goto_1

    .line 611
    .line 612
    :cond_27
    move/from16 v32, v12

    .line 613
    .line 614
    :goto_21
    return v12
.end method


# virtual methods
.method public final b(IIIIZLandroid/graphics/Canvas;FFLeb/i;)V
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v7, p3

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    move/from16 v15, p8

    .line 8
    .line 9
    move-object/from16 v10, p9

    .line 10
    .line 11
    sub-int v14, p2, p1

    .line 12
    .line 13
    const/16 v0, 0x40

    .line 14
    .line 15
    if-lt v14, v0, :cond_5

    .line 16
    .line 17
    iget-object v0, v9, Leb/o;->l:Ld3/g;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget v0, v10, Leb/i;->b:F

    .line 24
    .line 25
    sub-float v0, v0, p7

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, v9, Leb/o;->k:Leb/c;

    .line 33
    .line 34
    iget v1, v1, Leb/c;->a:F

    .line 35
    .line 36
    sub-float v6, v0, v1

    .line 37
    .line 38
    iget v0, v10, Leb/i;->c:F

    .line 39
    .line 40
    sub-float v0, v0, p7

    .line 41
    .line 42
    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, v9, Leb/o;->k:Leb/c;

    .line 47
    .line 48
    iget v1, v1, Leb/c;->a:F

    .line 49
    .line 50
    add-float v11, v0, v1

    .line 51
    .line 52
    move-object/from16 v0, p0

    .line 53
    .line 54
    move/from16 v1, p1

    .line 55
    .line 56
    move/from16 v2, p2

    .line 57
    .line 58
    move/from16 v3, p3

    .line 59
    .line 60
    move/from16 v4, p4

    .line 61
    .line 62
    move/from16 v5, p5

    .line 63
    .line 64
    invoke-virtual/range {v0 .. v6}, Leb/o;->e(IIIIZF)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    move v6, v11

    .line 69
    invoke-virtual/range {v0 .. v6}, Leb/o;->e(IIIIZF)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-ge v13, v11, :cond_7

    .line 82
    .line 83
    move v0, v13

    .line 84
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 85
    .line 86
    const/16 v2, 0x100

    .line 87
    .line 88
    const/16 v3, 0x20

    .line 89
    .line 90
    if-lt v1, v7, :cond_1

    .line 91
    .line 92
    iget-object v4, v9, Leb/o;->d:Lmb/h;

    .line 93
    .line 94
    invoke-virtual {v4, v1}, Lmb/h;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eq v1, v3, :cond_1

    .line 99
    .line 100
    sub-int v1, v11, v0

    .line 101
    .line 102
    if-ge v1, v2, :cond_1

    .line 103
    .line 104
    add-int/lit8 v0, v0, -0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    move v1, v11

    .line 108
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 109
    .line 110
    if-ge v4, v8, :cond_2

    .line 111
    .line 112
    iget-object v5, v9, Leb/o;->d:Lmb/h;

    .line 113
    .line 114
    invoke-virtual {v5, v1}, Lmb/h;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eq v5, v3, :cond_2

    .line 119
    .line 120
    sub-int/2addr v1, v0

    .line 121
    if-ge v1, v2, :cond_2

    .line 122
    .line 123
    move v1, v4

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    move-object/from16 v0, p0

    .line 126
    .line 127
    move v1, v13

    .line 128
    move/from16 v2, p1

    .line 129
    .line 130
    move/from16 v3, p2

    .line 131
    .line 132
    move/from16 v4, p3

    .line 133
    .line 134
    move/from16 v5, p4

    .line 135
    .line 136
    move/from16 v6, p5

    .line 137
    .line 138
    invoke-virtual/range {v0 .. v6}, Leb/o;->h(IIIIIZ)F

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    move-object/from16 v0, p0

    .line 143
    .line 144
    move v1, v11

    .line 145
    move/from16 v2, p1

    .line 146
    .line 147
    move/from16 v3, p2

    .line 148
    .line 149
    move/from16 v4, p3

    .line 150
    .line 151
    move/from16 v5, p4

    .line 152
    .line 153
    move/from16 v6, p5

    .line 154
    .line 155
    invoke-virtual/range {v0 .. v6}, Leb/o;->h(IIIIIZ)F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    sub-float v1, v12, v0

    .line 160
    .line 161
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 162
    .line 163
    .line 164
    move-result v19

    .line 165
    if-eqz p5, :cond_3

    .line 166
    .line 167
    add-float v1, p7, v15

    .line 168
    .line 169
    sub-float/2addr v1, v0

    .line 170
    move/from16 v18, v1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_3
    add-float v0, p7, v12

    .line 174
    .line 175
    move/from16 v18, v0

    .line 176
    .line 177
    :goto_2
    iget-object v0, v10, Leb/i;->n:Ltb/h;

    .line 178
    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    iget-object v12, v9, Leb/o;->d:Lmb/h;

    .line 182
    .line 183
    sub-int v14, v11, v13

    .line 184
    .line 185
    sub-int v16, v8, v7

    .line 186
    .line 187
    iget-object v1, v9, Leb/o;->j:Leb/p;

    .line 188
    .line 189
    iget-object v2, v10, Leb/i;->o:Ljb/c;

    .line 190
    .line 191
    move-object v10, v0

    .line 192
    move-object/from16 v11, p6

    .line 193
    .line 194
    move/from16 v15, p3

    .line 195
    .line 196
    move/from16 v17, p5

    .line 197
    .line 198
    move-object/from16 v20, v1

    .line 199
    .line 200
    move-object/from16 v21, v2

    .line 201
    .line 202
    invoke-virtual/range {v10 .. v21}, Ltb/h;->a(Landroid/graphics/Canvas;Landroid/text/GetChars;IIIIZFFLeb/p;Ljb/c;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_4
    move-object/from16 v0, p0

    .line 207
    .line 208
    move v1, v13

    .line 209
    move v2, v11

    .line 210
    move/from16 v3, p3

    .line 211
    .line 212
    move/from16 v4, p4

    .line 213
    .line 214
    move/from16 v5, p5

    .line 215
    .line 216
    move-object/from16 v6, p6

    .line 217
    .line 218
    move/from16 v7, v18

    .line 219
    .line 220
    move/from16 v8, v19

    .line 221
    .line 222
    invoke-virtual/range {v0 .. v8}, Leb/o;->c(IIIIZLandroid/graphics/Canvas;FF)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_5
    :goto_3
    iget-object v0, v10, Leb/i;->n:Ltb/h;

    .line 227
    .line 228
    if-eqz v0, :cond_6

    .line 229
    .line 230
    iget-object v12, v9, Leb/o;->d:Lmb/h;

    .line 231
    .line 232
    sub-int v16, v8, v7

    .line 233
    .line 234
    iget-object v1, v9, Leb/o;->j:Leb/p;

    .line 235
    .line 236
    iget-object v2, v10, Leb/i;->o:Ljb/c;

    .line 237
    .line 238
    move-object v10, v0

    .line 239
    move-object/from16 v11, p6

    .line 240
    .line 241
    move/from16 v13, p1

    .line 242
    .line 243
    move/from16 v15, p3

    .line 244
    .line 245
    move/from16 v17, p5

    .line 246
    .line 247
    move/from16 v18, p7

    .line 248
    .line 249
    move/from16 v19, p8

    .line 250
    .line 251
    move-object/from16 v20, v1

    .line 252
    .line 253
    move-object/from16 v21, v2

    .line 254
    .line 255
    invoke-virtual/range {v10 .. v21}, Ltb/h;->a(Landroid/graphics/Canvas;Landroid/text/GetChars;IIIIZFFLeb/p;Ljb/c;)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_6
    invoke-virtual/range {p0 .. p8}, Leb/o;->c(IIIIZLandroid/graphics/Canvas;FF)V

    .line 260
    .line 261
    .line 262
    :cond_7
    :goto_4
    return-void
.end method

.method public final c(IIIIZLandroid/graphics/Canvas;FF)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v6, p6

    .line 6
    .line 7
    iget-object v0, v7, Leb/o;->k:Leb/c;

    .line 8
    .line 9
    iget-boolean v1, v0, Leb/c;->b:Z

    .line 10
    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    if-eqz p5, :cond_0

    .line 14
    .line 15
    move/from16 v0, p8

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    add-float v19, p7, v0

    .line 20
    .line 21
    move/from16 v5, p1

    .line 22
    .line 23
    move v11, v5

    .line 24
    move/from16 v15, v19

    .line 25
    .line 26
    :goto_1
    if-gt v5, v8, :cond_9

    .line 27
    .line 28
    if-eq v5, v8, :cond_2

    .line 29
    .line 30
    iget-object v0, v7, Leb/o;->d:Lmb/h;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lmb/h;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Lmb/k;->f(C)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    move/from16 v20, v0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    move v10, v5

    .line 46
    move v0, v11

    .line 47
    move-object v11, v6

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    const/16 v20, 0x0

    .line 52
    .line 53
    :goto_2
    sub-int v12, v5, v11

    .line 54
    .line 55
    if-lez v12, :cond_4

    .line 56
    .line 57
    if-eqz p5, :cond_3

    .line 58
    .line 59
    iget-object v0, v7, Leb/o;->k:Leb/c;

    .line 60
    .line 61
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v10, v7, Leb/o;->d:Lmb/h;

    .line 67
    .line 68
    sub-int v14, p4, p3

    .line 69
    .line 70
    iget-object v0, v7, Leb/o;->j:Leb/p;

    .line 71
    .line 72
    iget v0, v0, Leb/p;->f:I

    .line 73
    .line 74
    int-to-float v0, v0

    .line 75
    iget-object v1, v7, Leb/o;->k:Leb/c;

    .line 76
    .line 77
    move-object/from16 v9, p6

    .line 78
    .line 79
    move/from16 v13, p3

    .line 80
    .line 81
    move/from16 v16, v0

    .line 82
    .line 83
    move/from16 v17, p5

    .line 84
    .line 85
    move-object/from16 v18, v1

    .line 86
    .line 87
    invoke-static/range {v9 .. v18}, Lq4/a;->i(Landroid/graphics/Canvas;Landroid/text/GetChars;IIIIFFZLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    if-eqz p5, :cond_4

    .line 91
    .line 92
    iget-object v0, v7, Leb/o;->k:Leb/c;

    .line 93
    .line 94
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    if-ne v5, v8, :cond_5

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_5
    iget-object v0, v7, Leb/o;->k:Leb/c;

    .line 104
    .line 105
    invoke-static/range {v20 .. v20}, Lmb/k;->d(C)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    move-object/from16 v0, p0

    .line 114
    .line 115
    move v1, v5

    .line 116
    move/from16 v2, p1

    .line 117
    .line 118
    move/from16 v3, p2

    .line 119
    .line 120
    move/from16 v4, p1

    .line 121
    .line 122
    move v10, v5

    .line 123
    move/from16 v5, p2

    .line 124
    .line 125
    move-object v11, v6

    .line 126
    move/from16 v6, p5

    .line 127
    .line 128
    invoke-virtual/range {v0 .. v6}, Leb/o;->h(IIIIIZ)F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz p5, :cond_6

    .line 133
    .line 134
    sub-float v1, v19, v0

    .line 135
    .line 136
    sub-float/2addr v1, v9

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    add-float v1, v19, v0

    .line 139
    .line 140
    :goto_3
    iget-object v2, v7, Leb/o;->j:Leb/p;

    .line 141
    .line 142
    iget-object v3, v2, Leb/p;->m:Landroid/graphics/Paint;

    .line 143
    .line 144
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v2, Leb/p;->n:Landroid/graphics/Paint$FontMetricsInt;

    .line 150
    .line 151
    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 152
    .line 153
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 154
    .line 155
    sub-int/2addr v4, v2

    .line 156
    int-to-float v4, v4

    .line 157
    iget-object v5, v7, Leb/o;->j:Leb/p;

    .line 158
    .line 159
    iget v5, v5, Leb/p;->h:I

    .line 160
    .line 161
    int-to-float v5, v5

    .line 162
    const/high16 v6, 0x40000000    # 2.0f

    .line 163
    .line 164
    div-float/2addr v5, v6

    .line 165
    div-float/2addr v4, v6

    .line 166
    sub-float v12, v5, v4

    .line 167
    .line 168
    int-to-float v2, v2

    .line 169
    sub-float v2, v12, v2

    .line 170
    .line 171
    iget-object v13, v7, Leb/o;->k:Leb/c;

    .line 172
    .line 173
    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    .line 179
    .line 180
    invoke-static/range {v20 .. v20}, Lmb/k;->d(C)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    div-float v14, v9, v6

    .line 185
    .line 186
    add-float/2addr v14, v1

    .line 187
    invoke-virtual {v11, v13, v14, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 191
    .line 192
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 193
    .line 194
    .line 195
    invoke-static/range {v20 .. v20}, Lmb/k;->d(C)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iget-object v2, v7, Leb/o;->a:Landroid/graphics/RectF;

    .line 204
    .line 205
    iput v12, v2, Landroid/graphics/RectF;->top:F

    .line 206
    .line 207
    add-float/2addr v5, v4

    .line 208
    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 209
    .line 210
    div-float/2addr v1, v6

    .line 211
    sub-float v3, v14, v1

    .line 212
    .line 213
    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 214
    .line 215
    add-float/2addr v14, v1

    .line 216
    iput v14, v2, Landroid/graphics/RectF;->right:F

    .line 217
    .line 218
    iget-object v1, v7, Leb/o;->k:Leb/c;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iget-object v3, v7, Leb/o;->k:Leb/c;

    .line 225
    .line 226
    iget-object v4, v7, Leb/o;->j:Leb/p;

    .line 227
    .line 228
    iget-object v4, v4, Leb/p;->k:Lzb/a;

    .line 229
    .line 230
    iget-object v4, v4, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 231
    .line 232
    const/16 v5, 0x34

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    .line 240
    .line 241
    iget-object v3, v7, Leb/o;->k:Leb/c;

    .line 242
    .line 243
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    .line 247
    .line 248
    iget-object v3, v7, Leb/o;->k:Leb/c;

    .line 249
    .line 250
    iget-object v4, v7, Leb/o;->j:Leb/p;

    .line 251
    .line 252
    iget v4, v4, Leb/p;->h:I

    .line 253
    .line 254
    int-to-float v4, v4

    .line 255
    const v5, 0x3d4ccccd    # 0.05f

    .line 256
    .line 257
    .line 258
    mul-float v4, v4, v5

    .line 259
    .line 260
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 261
    .line 262
    .line 263
    iget-object v3, v7, Leb/o;->j:Leb/p;

    .line 264
    .line 265
    iget v4, v3, Leb/p;->h:I

    .line 266
    .line 267
    int-to-float v4, v4

    .line 268
    iget v3, v3, Leb/p;->i:F

    .line 269
    .line 270
    mul-float v4, v4, v3

    .line 271
    .line 272
    iget-object v3, v7, Leb/o;->k:Leb/c;

    .line 273
    .line 274
    invoke-virtual {v11, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v7, Leb/o;->k:Leb/c;

    .line 278
    .line 279
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v7, Leb/o;->k:Leb/c;

    .line 285
    .line 286
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    .line 288
    .line 289
    add-float/2addr v0, v9

    .line 290
    if-eqz p5, :cond_7

    .line 291
    .line 292
    neg-float v0, v0

    .line 293
    :cond_7
    add-float v15, v19, v0

    .line 294
    .line 295
    move v0, v10

    .line 296
    :goto_4
    add-int/lit8 v5, v10, 0x1

    .line 297
    .line 298
    move-object v6, v11

    .line 299
    move v11, v0

    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_8
    move-object v11, v6

    .line 303
    iget-object v9, v7, Leb/o;->d:Lmb/h;

    .line 304
    .line 305
    sub-int v1, v8, p1

    .line 306
    .line 307
    sub-int v13, p4, p3

    .line 308
    .line 309
    iget-object v2, v7, Leb/o;->j:Leb/p;

    .line 310
    .line 311
    iget v2, v2, Leb/p;->f:I

    .line 312
    .line 313
    int-to-float v15, v2

    .line 314
    move-object/from16 v8, p6

    .line 315
    .line 316
    move/from16 v10, p1

    .line 317
    .line 318
    move v11, v1

    .line 319
    move/from16 v12, p3

    .line 320
    .line 321
    move/from16 v14, p7

    .line 322
    .line 323
    move/from16 v16, p5

    .line 324
    .line 325
    move-object/from16 v17, v0

    .line 326
    .line 327
    invoke-static/range {v8 .. v17}, Lq4/a;->i(Landroid/graphics/Canvas;Landroid/text/GetChars;IIIIFFZLandroid/graphics/Paint;)V

    .line 328
    .line 329
    .line 330
    :cond_9
    :goto_5
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;FF)J
    .locals 1

    .line 1
    new-instance v0, Leb/i;

    .line 2
    .line 3
    invoke-direct {v0}, Leb/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, v0, Leb/i;->b:F

    .line 7
    .line 8
    iput p3, v0, Leb/i;->c:F

    .line 9
    .line 10
    new-instance p2, Leb/e;

    .line 11
    .line 12
    invoke-direct {p2, p0, p1, v0, p3}, Leb/e;-><init>(Leb/o;Landroid/graphics/Canvas;Leb/i;F)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p2, p1}, Leb/o;->k(Leb/m;Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p2, Leb/e;->b:Z

    .line 20
    .line 21
    iget p2, p2, Leb/e;->a:F

    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p1, p2}, Lsb/h;->g(II)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    return-wide p1
.end method

.method public final e(IIIIZF)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    move/from16 v4, p2

    .line 6
    .line 7
    iget-object v1, v0, Leb/o;->l:Ld3/g;

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, v3}, Ld3/g;->g(II)F

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    move v6, v3

    .line 17
    move v7, v4

    .line 18
    :goto_0
    if-gt v6, v7, :cond_3

    .line 19
    .line 20
    add-int v8, v6, v7

    .line 21
    .line 22
    div-int/lit8 v8, v8, 0x2

    .line 23
    .line 24
    if-lt v8, v3, :cond_2

    .line 25
    .line 26
    if-lt v8, v4, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v1, v2, v8}, Ld3/g;->g(II)F

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    sub-float/2addr v9, v5

    .line 34
    cmpl-float v10, v9, p6

    .line 35
    .line 36
    if-lez v10, :cond_1

    .line 37
    .line 38
    add-int/lit8 v7, v8, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    cmpg-float v6, v9, p6

    .line 42
    .line 43
    if-gez v6, :cond_2

    .line 44
    .line 45
    add-int/lit8 v6, v8, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    move v6, v8

    .line 49
    :cond_3
    invoke-virtual {v1, v2, v6}, Ld3/g;->g(II)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sub-float/2addr v1, v5

    .line 54
    cmpl-float v1, v1, p6

    .line 55
    .line 56
    if-lez v1, :cond_4

    .line 57
    .line 58
    add-int/lit8 v6, v6, -0x1

    .line 59
    .line 60
    :cond_4
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    return v1

    .line 69
    :cond_5
    iget-object v1, v0, Leb/o;->k:Leb/c;

    .line 70
    .line 71
    iget-object v2, v0, Leb/o;->d:Lmb/h;

    .line 72
    .line 73
    iget-boolean v5, v1, Leb/c;->b:Z

    .line 74
    .line 75
    if-eqz v5, :cond_c

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    move v13, v3

    .line 79
    const/4 v14, 0x0

    .line 80
    :goto_2
    if-ge v3, v4, :cond_a

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lmb/h;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    invoke-static {v15}, Lmb/k;->f(C)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_9

    .line 91
    .line 92
    if-ne v13, v3, :cond_6

    .line 93
    .line 94
    move v5, v3

    .line 95
    goto :goto_3

    .line 96
    :cond_6
    sub-float v12, p6, v14

    .line 97
    .line 98
    move-object v5, v1

    .line 99
    move-object v6, v2

    .line 100
    move v7, v13

    .line 101
    move v8, v3

    .line 102
    move/from16 v9, p3

    .line 103
    .line 104
    move/from16 v10, p4

    .line 105
    .line 106
    move/from16 v11, p5

    .line 107
    .line 108
    invoke-virtual/range {v5 .. v12}, Leb/c;->a(Landroid/text/GetChars;IIIIZF)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    :goto_3
    if-ge v5, v3, :cond_7

    .line 113
    .line 114
    move v1, v5

    .line 115
    goto :goto_4

    .line 116
    :cond_7
    sub-int v8, v3, v13

    .line 117
    .line 118
    sub-int v10, p4, p3

    .line 119
    .line 120
    const/4 v12, 0x0

    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    move-object v5, v1

    .line 124
    move-object v6, v2

    .line 125
    move v7, v13

    .line 126
    move/from16 v9, p3

    .line 127
    .line 128
    move/from16 v11, p5

    .line 129
    .line 130
    move/from16 v13, v16

    .line 131
    .line 132
    invoke-virtual/range {v5 .. v13}, Leb/c;->b(Landroid/text/GetChars;IIIIZ[FI)F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    add-float/2addr v14, v5

    .line 137
    invoke-static {v15}, Lmb/k;->d(C)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    add-float/2addr v5, v14

    .line 146
    cmpl-float v6, v5, p6

    .line 147
    .line 148
    if-ltz v6, :cond_8

    .line 149
    .line 150
    move v1, v3

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    add-int/lit8 v6, v3, 0x1

    .line 153
    .line 154
    move v14, v5

    .line 155
    move v13, v6

    .line 156
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_a
    if-ge v13, v4, :cond_b

    .line 160
    .line 161
    sub-float v8, p6, v14

    .line 162
    .line 163
    move v3, v13

    .line 164
    move/from16 v4, p2

    .line 165
    .line 166
    move/from16 v5, p3

    .line 167
    .line 168
    move/from16 v6, p4

    .line 169
    .line 170
    move/from16 v7, p5

    .line 171
    .line 172
    invoke-virtual/range {v1 .. v8}, Leb/c;->a(Landroid/text/GetChars;IIIIZF)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    goto :goto_4

    .line 177
    :cond_b
    move v1, v4

    .line 178
    goto :goto_4

    .line 179
    :cond_c
    move/from16 v3, p1

    .line 180
    .line 181
    move/from16 v4, p2

    .line 182
    .line 183
    move/from16 v5, p3

    .line 184
    .line 185
    move/from16 v6, p4

    .line 186
    .line 187
    move/from16 v7, p5

    .line 188
    .line 189
    move/from16 v8, p6

    .line 190
    .line 191
    invoke-virtual/range {v1 .. v8}, Leb/c;->a(Landroid/text/GetChars;IIIIZF)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    :goto_4
    return v1
.end method

.method public final f(I)F
    .locals 2

    .line 1
    new-instance v0, Leb/i;

    .line 2
    .line 3
    invoke-direct {v0}, Leb/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Leb/i;->d:I

    .line 7
    .line 8
    new-instance p1, Leb/d;

    .line 9
    .line 10
    invoke-direct {p1, p0, v0}, Leb/d;-><init>(Leb/o;Leb/i;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, v1}, Leb/o;->k(Leb/m;Z)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Leb/i;->e:F

    .line 18
    .line 19
    return p1
.end method

.method public final g(F)Leb/h;
    .locals 3

    .line 1
    new-instance v0, Leb/i;

    .line 2
    .line 3
    invoke-direct {v0}, Leb/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Leb/i;->f:F

    .line 7
    .line 8
    iput p1, v0, Leb/i;->c:F

    .line 9
    .line 10
    new-instance p1, Leb/k;

    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Leb/k;-><init>(Leb/o;Leb/i;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, p1, v1}, Leb/o;->k(Leb/m;Z)V

    .line 17
    .line 18
    .line 19
    iget p1, v0, Leb/i;->g:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    .line 24
    iget p1, p0, Leb/o;->f:I

    .line 25
    .line 26
    :cond_0
    new-instance v1, Leb/h;

    .line 27
    .line 28
    iget-object v2, v0, Leb/i;->h:Lwb/i;

    .line 29
    .line 30
    iget-boolean v0, v0, Leb/i;->i:Z

    .line 31
    .line 32
    invoke-direct {v1, v2, v0, p1}, Leb/h;-><init>(Lwb/i;ZI)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public final h(IIIIIZ)F
    .locals 9

    .line 1
    iget-object v0, p0, Leb/o;->l:Ld3/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p2, p1}, Ld3/g;->g(II)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Leb/o;->k:Leb/c;

    .line 11
    .line 12
    iget-object v1, p0, Leb/o;->d:Lmb/h;

    .line 13
    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v3, 0x17

    .line 17
    .line 18
    if-lt v2, v3, :cond_1

    .line 19
    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    move v4, p4

    .line 23
    move v5, p5

    .line 24
    move v6, p6

    .line 25
    move v7, p1

    .line 26
    invoke-static/range {v0 .. v7}, Ld2/c;->a(Leb/c;Ljava/lang/CharSequence;IIIIZI)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sub-int v3, p1, p2

    .line 32
    .line 33
    sub-int v5, p5, p4

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    move v2, p2

    .line 38
    move v4, p4

    .line 39
    move v6, p6

    .line 40
    invoke-virtual/range {v0 .. v8}, Leb/c;->b(Landroid/text/GetChars;IIIIZ[FI)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    return p1
.end method

.method public final i(IIZLjb/c;Landroid/graphics/Canvas;FLeb/i;)F
    .locals 29

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move/from16 v12, p2

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v13, p5

    .line 10
    .line 11
    move/from16 v14, p6

    .line 12
    .line 13
    move-object/from16 v15, p7

    .line 14
    .line 15
    iget-object v8, v10, Leb/o;->k:Leb/c;

    .line 16
    .line 17
    const-wide v16, 0x8000000000L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide/16 v18, 0x0

    .line 23
    .line 24
    const/16 v20, 0x1

    .line 25
    .line 26
    if-eqz v13, :cond_0

    .line 27
    .line 28
    iget-object v0, v15, Leb/i;->n:Ltb/h;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    :cond_0
    iget-object v0, v10, Leb/o;->l:Ld3/g;

    .line 33
    .line 34
    if-nez v0, :cond_5

    .line 35
    .line 36
    :cond_1
    move-object v0, v9

    .line 37
    check-cast v0, Llb/a;

    .line 38
    .line 39
    iget-wide v0, v0, Llb/a;->b:J

    .line 40
    .line 41
    const-wide v2, 0x1c000000000L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long v5, v0, v2

    .line 47
    .line 48
    and-long/2addr v2, v0

    .line 49
    move-object/from16 v23, v8

    .line 50
    .line 51
    iget-wide v7, v15, Leb/i;->a:J

    .line 52
    .line 53
    cmp-long v4, v2, v7

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    const-wide v2, 0x4000000000L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v2, v0

    .line 63
    cmp-long v4, v2, v18

    .line 64
    .line 65
    move-object/from16 v8, v23

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v2, 0x0

    .line 72
    :goto_0
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 73
    .line 74
    .line 75
    and-long v0, v0, v16

    .line 76
    .line 77
    cmp-long v2, v0, v18

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    const v7, -0x41b33333    # -0.2f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/4 v4, 0x0

    .line 90
    const v7, -0x41b33333    # -0.2f

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 94
    .line 95
    .line 96
    :goto_1
    iput-wide v5, v15, Leb/i;->a:J

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move-object/from16 v8, v23

    .line 100
    .line 101
    :cond_5
    const/4 v4, 0x0

    .line 102
    const v7, -0x41b33333    # -0.2f

    .line 103
    .line 104
    .line 105
    :goto_2
    iget-object v0, v15, Leb/i;->p:Ld3/g;

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    sub-int v0, v12, v11

    .line 111
    .line 112
    invoke-static {v0}, Lsb/h;->f(I)[F

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    move-object/from16 v21, v0

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    move-object/from16 v21, v6

    .line 120
    .line 121
    :goto_3
    sub-int v5, v12, v11

    .line 122
    .line 123
    iget-object v0, v10, Leb/o;->l:Ld3/g;

    .line 124
    .line 125
    const/high16 v23, 0x40000

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    if-eqz v21, :cond_7

    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    :goto_4
    if-ge v0, v5, :cond_7

    .line 133
    .line 134
    iget-object v1, v10, Leb/o;->l:Ld3/g;

    .line 135
    .line 136
    add-int v2, v11, v0

    .line 137
    .line 138
    div-int v3, v2, v23

    .line 139
    .line 140
    rem-int v2, v2, v23

    .line 141
    .line 142
    iget-object v1, v1, Ld3/g;->c:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, [[F

    .line 145
    .line 146
    aget-object v1, v1, v3

    .line 147
    .line 148
    add-int/lit8 v3, v2, 0x1

    .line 149
    .line 150
    aget v3, v1, v3

    .line 151
    .line 152
    aget v1, v1, v2

    .line 153
    .line 154
    sub-float/2addr v3, v1

    .line 155
    aput v3, v21, v0

    .line 156
    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    iget-object v0, v10, Leb/o;->l:Ld3/g;

    .line 161
    .line 162
    add-int v1, v11, v5

    .line 163
    .line 164
    invoke-virtual {v0, v11, v1}, Ld3/g;->g(II)F

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    move/from16 v24, v0

    .line 169
    .line 170
    move-object/from16 v28, v8

    .line 171
    .line 172
    const v22, -0x41b33333    # -0.2f

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_8
    iget-object v0, v10, Leb/o;->k:Leb/c;

    .line 177
    .line 178
    iget-object v1, v10, Leb/o;->d:Lmb/h;

    .line 179
    .line 180
    const/16 v24, 0x0

    .line 181
    .line 182
    move/from16 v2, p1

    .line 183
    .line 184
    move v3, v5

    .line 185
    const/16 v25, 0x0

    .line 186
    .line 187
    move/from16 v4, p1

    .line 188
    .line 189
    move/from16 v6, p3

    .line 190
    .line 191
    const v22, -0x41b33333    # -0.2f

    .line 192
    .line 193
    .line 194
    move-object/from16 v7, v21

    .line 195
    .line 196
    move-object/from16 v28, v8

    .line 197
    .line 198
    move/from16 v8, v24

    .line 199
    .line 200
    invoke-virtual/range {v0 .. v8}, Leb/c;->b(Landroid/text/GetChars;IIIIZ[FI)F

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    move/from16 v24, v0

    .line 205
    .line 206
    :goto_5
    iget-object v0, v15, Leb/i;->p:Ld3/g;

    .line 207
    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    if-eqz v21, :cond_a

    .line 211
    .line 212
    move v0, v11

    .line 213
    :goto_6
    if-ge v0, v12, :cond_9

    .line 214
    .line 215
    iget-object v1, v15, Leb/i;->p:Ld3/g;

    .line 216
    .line 217
    sub-int v2, v0, v11

    .line 218
    .line 219
    aget v2, v21, v2

    .line 220
    .line 221
    div-int v3, v0, v23

    .line 222
    .line 223
    rem-int v4, v0, v23

    .line 224
    .line 225
    iget-object v1, v1, Ld3/g;->c:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v1, [[F

    .line 228
    .line 229
    aget-object v1, v1, v3

    .line 230
    .line 231
    aput v2, v1, v4

    .line 232
    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_9
    invoke-static/range {v21 .. v21}, Lsb/h;->i([F)V

    .line 237
    .line 238
    .line 239
    :cond_a
    iget v1, v15, Leb/i;->d:I

    .line 240
    .line 241
    if-lt v1, v11, :cond_c

    .line 242
    .line 243
    if-lt v1, v12, :cond_b

    .line 244
    .line 245
    if-ne v1, v12, :cond_c

    .line 246
    .line 247
    iget v0, v10, Leb/o;->g:I

    .line 248
    .line 249
    if-ne v12, v0, :cond_c

    .line 250
    .line 251
    :cond_b
    const/4 v7, 0x0

    .line 252
    goto :goto_7

    .line 253
    :cond_c
    const/4 v7, 0x0

    .line 254
    goto :goto_9

    .line 255
    :goto_7
    iput v7, v15, Leb/i;->c:F

    .line 256
    .line 257
    move-object/from16 v0, p0

    .line 258
    .line 259
    move/from16 v2, p1

    .line 260
    .line 261
    move/from16 v3, p2

    .line 262
    .line 263
    move/from16 v4, p1

    .line 264
    .line 265
    move/from16 v5, p2

    .line 266
    .line 267
    move/from16 v6, p3

    .line 268
    .line 269
    invoke-virtual/range {v0 .. v6}, Leb/o;->h(IIIIIZ)F

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz p3, :cond_d

    .line 274
    .line 275
    add-float v1, v14, v24

    .line 276
    .line 277
    sub-float/2addr v1, v0

    .line 278
    iput v1, v15, Leb/i;->e:F

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_d
    add-float/2addr v0, v14

    .line 282
    iput v0, v15, Leb/i;->e:F

    .line 283
    .line 284
    :goto_8
    return v24

    .line 285
    :goto_9
    iget v0, v15, Leb/i;->f:F

    .line 286
    .line 287
    const/high16 v8, -0x40800000    # -1.0f

    .line 288
    .line 289
    cmpl-float v1, v0, v8

    .line 290
    .line 291
    if-eqz v1, :cond_11

    .line 292
    .line 293
    sub-float/2addr v0, v14

    .line 294
    if-eqz p3, :cond_e

    .line 295
    .line 296
    sub-float v0, v24, v0

    .line 297
    .line 298
    :cond_e
    move v6, v0

    .line 299
    cmpl-float v0, v6, v24

    .line 300
    .line 301
    if-lez v0, :cond_f

    .line 302
    .line 303
    iput v12, v15, Leb/i;->g:I

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_f
    cmpg-float v0, v6, v7

    .line 307
    .line 308
    if-gtz v0, :cond_10

    .line 309
    .line 310
    iput v11, v15, Leb/i;->g:I

    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_10
    move-object/from16 v0, p0

    .line 314
    .line 315
    move/from16 v1, p1

    .line 316
    .line 317
    move/from16 v2, p2

    .line 318
    .line 319
    move/from16 v3, p1

    .line 320
    .line 321
    move/from16 v4, p2

    .line 322
    .line 323
    move/from16 v5, p3

    .line 324
    .line 325
    invoke-virtual/range {v0 .. v6}, Leb/o;->e(IIIIZF)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    iput v0, v15, Leb/i;->g:I

    .line 330
    .line 331
    :cond_11
    :goto_a
    iget-object v0, v15, Leb/i;->l:Leb/l;

    .line 332
    .line 333
    if-nez v0, :cond_12

    .line 334
    .line 335
    iget-object v0, v15, Leb/i;->n:Ltb/h;

    .line 336
    .line 337
    if-eqz v0, :cond_16

    .line 338
    .line 339
    :cond_12
    iget v0, v15, Leb/i;->j:I

    .line 340
    .line 341
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    iget v0, v15, Leb/i;->k:I

    .line 346
    .line 347
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-ge v1, v6, :cond_16

    .line 352
    .line 353
    if-ne v1, v11, :cond_13

    .line 354
    .line 355
    if-ne v6, v12, :cond_13

    .line 356
    .line 357
    add-float v0, v14, v24

    .line 358
    .line 359
    move v8, v14

    .line 360
    goto :goto_b

    .line 361
    :cond_13
    move-object/from16 v0, p0

    .line 362
    .line 363
    move/from16 v2, p1

    .line 364
    .line 365
    move/from16 v3, p2

    .line 366
    .line 367
    move/from16 v4, p1

    .line 368
    .line 369
    move/from16 v5, p2

    .line 370
    .line 371
    move v8, v6

    .line 372
    move/from16 v6, p3

    .line 373
    .line 374
    invoke-virtual/range {v0 .. v6}, Leb/o;->h(IIIIIZ)F

    .line 375
    .line 376
    .line 377
    move-result v21

    .line 378
    move v1, v8

    .line 379
    invoke-virtual/range {v0 .. v6}, Leb/o;->h(IIIIIZ)F

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-eqz p3, :cond_14

    .line 384
    .line 385
    sub-float v21, v24, v21

    .line 386
    .line 387
    :cond_14
    move/from16 v1, v21

    .line 388
    .line 389
    if-eqz p3, :cond_15

    .line 390
    .line 391
    sub-float v0, v24, v0

    .line 392
    .line 393
    :cond_15
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    add-float/2addr v2, v14

    .line 398
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    add-float/2addr v0, v14

    .line 403
    move v8, v2

    .line 404
    :goto_b
    iget-object v1, v15, Leb/i;->l:Leb/l;

    .line 405
    .line 406
    if-eqz v1, :cond_17

    .line 407
    .line 408
    invoke-virtual {v1, v8, v0}, Leb/l;->b(FF)V

    .line 409
    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_16
    const/high16 v0, -0x40800000    # -1.0f

    .line 413
    .line 414
    :cond_17
    :goto_c
    iget v1, v15, Leb/i;->b:F

    .line 415
    .line 416
    invoke-static {v14, v1}, Ljava/lang/Math;->max(FF)F

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    add-float v6, v14, v24

    .line 421
    .line 422
    iget v2, v15, Leb/i;->c:F

    .line 423
    .line 424
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    cmpl-float v1, v1, v2

    .line 429
    .line 430
    if-ltz v1, :cond_18

    .line 431
    .line 432
    return v24

    .line 433
    :cond_18
    if-nez v13, :cond_19

    .line 434
    .line 435
    return v24

    .line 436
    :cond_19
    iget-object v1, v15, Leb/i;->n:Ltb/h;

    .line 437
    .line 438
    if-eqz v1, :cond_1e

    .line 439
    .line 440
    iget v1, v15, Leb/i;->j:I

    .line 441
    .line 442
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    iget v2, v15, Leb/i;->k:I

    .line 447
    .line 448
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-lt v1, v2, :cond_1a

    .line 453
    .line 454
    return v24

    .line 455
    :cond_1a
    iget-boolean v1, v15, Leb/i;->m:Z

    .line 456
    .line 457
    if-eqz v1, :cond_1c

    .line 458
    .line 459
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->save()I

    .line 460
    .line 461
    .line 462
    sub-float/2addr v0, v8

    .line 463
    move-object v1, v9

    .line 464
    check-cast v1, Llb/a;

    .line 465
    .line 466
    iget-wide v1, v1, Llb/a;->b:J

    .line 467
    .line 468
    and-long v1, v1, v16

    .line 469
    .line 470
    cmp-long v3, v1, v18

    .line 471
    .line 472
    if-eqz v3, :cond_1b

    .line 473
    .line 474
    new-instance v1, Landroid/graphics/Path;

    .line 475
    .line 476
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 477
    .line 478
    .line 479
    iget-object v2, v10, Leb/o;->j:Leb/p;

    .line 480
    .line 481
    iget v2, v2, Leb/p;->d:I

    .line 482
    .line 483
    int-to-float v2, v2

    .line 484
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 485
    .line 486
    .line 487
    mul-float v3, v2, v22

    .line 488
    .line 489
    sub-float v4, v8, v3

    .line 490
    .line 491
    invoke-virtual {v1, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 492
    .line 493
    .line 494
    add-float/2addr v8, v0

    .line 495
    sub-float v0, v8, v3

    .line 496
    .line 497
    invoke-virtual {v1, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v13, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 507
    .line 508
    .line 509
    goto :goto_d

    .line 510
    :cond_1b
    add-float/2addr v0, v8

    .line 511
    iget-object v1, v10, Leb/o;->j:Leb/p;

    .line 512
    .line 513
    iget v1, v1, Leb/p;->h:I

    .line 514
    .line 515
    int-to-float v1, v1

    .line 516
    invoke-virtual {v13, v8, v7, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 517
    .line 518
    .line 519
    :cond_1c
    :goto_d
    iput-object v9, v15, Leb/i;->o:Ljb/c;

    .line 520
    .line 521
    move-object/from16 v0, p0

    .line 522
    .line 523
    move/from16 v1, p1

    .line 524
    .line 525
    move/from16 v2, p2

    .line 526
    .line 527
    move/from16 v3, p1

    .line 528
    .line 529
    move/from16 v4, p2

    .line 530
    .line 531
    move/from16 v5, p3

    .line 532
    .line 533
    move-object/from16 v6, p5

    .line 534
    .line 535
    move/from16 v7, p6

    .line 536
    .line 537
    move/from16 v8, v24

    .line 538
    .line 539
    move-object/from16 v9, p7

    .line 540
    .line 541
    invoke-virtual/range {v0 .. v9}, Leb/o;->b(IIIIZLandroid/graphics/Canvas;FFLeb/i;)V

    .line 542
    .line 543
    .line 544
    const/4 v0, 0x0

    .line 545
    iput-object v0, v15, Leb/i;->o:Ljb/c;

    .line 546
    .line 547
    const-wide/16 v0, -0x1

    .line 548
    .line 549
    iput-wide v0, v15, Leb/i;->a:J

    .line 550
    .line 551
    iget-boolean v0, v15, Leb/i;->m:Z

    .line 552
    .line 553
    if-eqz v0, :cond_1d

    .line 554
    .line 555
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->restore()V

    .line 556
    .line 557
    .line 558
    :cond_1d
    return v24

    .line 559
    :cond_1e
    iget-object v0, v10, Leb/o;->j:Leb/p;

    .line 560
    .line 561
    iget-object v8, v0, Leb/p;->l:Landroid/graphics/Paint;

    .line 562
    .line 563
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    iget-object v0, v10, Leb/o;->j:Leb/p;

    .line 567
    .line 568
    iget-object v0, v0, Leb/p;->k:Lzb/a;

    .line 569
    .line 570
    const-string v1, "colorScheme"

    .line 571
    .line 572
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    check-cast v9, Llb/a;

    .line 576
    .line 577
    iget-wide v2, v9, Llb/a;->b:J

    .line 578
    .line 579
    const-wide v4, 0x3ffff80000L

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    and-long/2addr v2, v4

    .line 585
    const/16 v4, 0x13

    .line 586
    .line 587
    shr-long/2addr v2, v4

    .line 588
    long-to-int v3, v2

    .line 589
    iget-object v0, v0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 590
    .line 591
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_1f

    .line 596
    .line 597
    if-eq v11, v12, :cond_1f

    .line 598
    .line 599
    iget-object v2, v10, Leb/o;->j:Leb/p;

    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    const/4 v5, 0x0

    .line 605
    int-to-float v2, v5

    .line 606
    iget-object v3, v10, Leb/o;->j:Leb/p;

    .line 607
    .line 608
    iget v3, v3, Leb/p;->g:I

    .line 609
    .line 610
    int-to-float v3, v3

    .line 611
    iget-object v4, v10, Leb/o;->a:Landroid/graphics/RectF;

    .line 612
    .line 613
    invoke-virtual {v4, v14, v2, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 614
    .line 615
    .line 616
    move-object/from16 v3, v28

    .line 617
    .line 618
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    .line 620
    .line 621
    iget-object v0, v10, Leb/o;->j:Leb/p;

    .line 622
    .line 623
    iget v2, v0, Leb/p;->h:I

    .line 624
    .line 625
    int-to-float v2, v2

    .line 626
    iget v0, v0, Leb/p;->i:F

    .line 627
    .line 628
    mul-float v2, v2, v0

    .line 629
    .line 630
    invoke-virtual {v13, v4, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 631
    .line 632
    .line 633
    goto :goto_e

    .line 634
    :cond_1f
    move-object/from16 v3, v28

    .line 635
    .line 636
    const/4 v5, 0x0

    .line 637
    :goto_e
    iget-object v0, v10, Leb/o;->j:Leb/p;

    .line 638
    .line 639
    iget-object v0, v0, Leb/p;->k:Lzb/a;

    .line 640
    .line 641
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-wide v1, v9, Llb/a;->b:J

    .line 645
    .line 646
    const-wide/32 v16, 0x7ffff

    .line 647
    .line 648
    .line 649
    and-long v1, v1, v16

    .line 650
    .line 651
    long-to-int v2, v1

    .line 652
    iget-object v0, v0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 653
    .line 654
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    iget v0, v10, Leb/o;->m:I

    .line 659
    .line 660
    iget v1, v10, Leb/o;->n:I

    .line 661
    .line 662
    if-ge v0, v1, :cond_20

    .line 663
    .line 664
    iget v2, v10, Leb/o;->g:I

    .line 665
    .line 666
    if-ge v0, v2, :cond_20

    .line 667
    .line 668
    iget v0, v10, Leb/o;->f:I

    .line 669
    .line 670
    if-le v1, v0, :cond_20

    .line 671
    .line 672
    iget-object v0, v10, Leb/o;->j:Leb/p;

    .line 673
    .line 674
    iget-object v0, v0, Leb/p;->k:Lzb/a;

    .line 675
    .line 676
    iget-object v0, v0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 677
    .line 678
    const/16 v2, 0x1e

    .line 679
    .line 680
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-nez v0, :cond_21

    .line 685
    .line 686
    :cond_20
    move-object v11, v3

    .line 687
    move v12, v4

    .line 688
    move/from16 v25, v6

    .line 689
    .line 690
    move-object v13, v8

    .line 691
    move-object v15, v9

    .line 692
    goto/16 :goto_13

    .line 693
    .line 694
    :cond_21
    iget v0, v10, Leb/o;->m:I

    .line 695
    .line 696
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    iget v0, v10, Leb/o;->n:I

    .line 705
    .line 706
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    iget-object v2, v10, Leb/o;->b:[I

    .line 715
    .line 716
    aput v11, v2, v5

    .line 717
    .line 718
    aput v12, v2, v20

    .line 719
    .line 720
    const/16 v16, 0x2

    .line 721
    .line 722
    aput v1, v2, v16

    .line 723
    .line 724
    const/16 v16, 0x3

    .line 725
    .line 726
    aput v0, v2, v16

    .line 727
    .line 728
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 729
    .line 730
    .line 731
    const/4 v7, 0x0

    .line 732
    const/16 v16, 0x0

    .line 733
    .line 734
    :goto_f
    add-int/lit8 v11, v7, 0x1

    .line 735
    .line 736
    array-length v5, v2

    .line 737
    if-ge v11, v5, :cond_25

    .line 738
    .line 739
    aget v7, v2, v7

    .line 740
    .line 741
    aget v5, v2, v11

    .line 742
    .line 743
    if-ne v7, v5, :cond_22

    .line 744
    .line 745
    move/from16 v17, v0

    .line 746
    .line 747
    move/from16 v20, v1

    .line 748
    .line 749
    move-object/from16 v22, v2

    .line 750
    .line 751
    move v12, v4

    .line 752
    move/from16 v25, v6

    .line 753
    .line 754
    move-object v13, v8

    .line 755
    move-object v15, v9

    .line 756
    move/from16 p4, v11

    .line 757
    .line 758
    const/16 v21, 0x1e

    .line 759
    .line 760
    move-object v11, v3

    .line 761
    goto/16 :goto_12

    .line 762
    .line 763
    :cond_22
    if-lt v7, v1, :cond_23

    .line 764
    .line 765
    if-gt v5, v0, :cond_23

    .line 766
    .line 767
    move/from16 v17, v0

    .line 768
    .line 769
    iget-object v0, v10, Leb/o;->k:Leb/c;

    .line 770
    .line 771
    move/from16 v20, v1

    .line 772
    .line 773
    iget-object v1, v10, Leb/o;->j:Leb/p;

    .line 774
    .line 775
    iget-object v1, v1, Leb/p;->k:Lzb/a;

    .line 776
    .line 777
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 778
    .line 779
    move-object/from16 v21, v2

    .line 780
    .line 781
    const/16 v2, 0x1e

    .line 782
    .line 783
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 788
    .line 789
    .line 790
    goto :goto_10

    .line 791
    :cond_23
    move/from16 v17, v0

    .line 792
    .line 793
    move/from16 v20, v1

    .line 794
    .line 795
    move-object/from16 v21, v2

    .line 796
    .line 797
    const/16 v2, 0x1e

    .line 798
    .line 799
    iget-object v0, v10, Leb/o;->k:Leb/c;

    .line 800
    .line 801
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    .line 803
    .line 804
    :goto_10
    move-object/from16 v0, p0

    .line 805
    .line 806
    move v1, v5

    .line 807
    move-object/from16 v22, v21

    .line 808
    .line 809
    const/16 v21, 0x1e

    .line 810
    .line 811
    move v2, v7

    .line 812
    move/from16 p4, v11

    .line 813
    .line 814
    move-object v11, v3

    .line 815
    move v3, v5

    .line 816
    move v12, v4

    .line 817
    move/from16 v4, p1

    .line 818
    .line 819
    move/from16 v23, v5

    .line 820
    .line 821
    const/4 v13, 0x0

    .line 822
    move/from16 v5, p2

    .line 823
    .line 824
    move/from16 v25, v6

    .line 825
    .line 826
    move/from16 v6, p3

    .line 827
    .line 828
    invoke-virtual/range {v0 .. v6}, Leb/o;->h(IIIIIZ)F

    .line 829
    .line 830
    .line 831
    move-result v26

    .line 832
    if-eqz p3, :cond_24

    .line 833
    .line 834
    sub-float v6, v25, v16

    .line 835
    .line 836
    sub-float v27, v6, v26

    .line 837
    .line 838
    const/4 v5, 0x1

    .line 839
    move-object/from16 v0, p0

    .line 840
    .line 841
    move v1, v7

    .line 842
    move/from16 v2, v23

    .line 843
    .line 844
    move/from16 v3, p1

    .line 845
    .line 846
    move/from16 v4, p2

    .line 847
    .line 848
    move-object/from16 v6, p5

    .line 849
    .line 850
    move/from16 v7, v27

    .line 851
    .line 852
    move-object v13, v8

    .line 853
    move/from16 v8, v26

    .line 854
    .line 855
    move-object v15, v9

    .line 856
    move-object/from16 v9, p7

    .line 857
    .line 858
    invoke-virtual/range {v0 .. v9}, Leb/o;->b(IIIIZLandroid/graphics/Canvas;FFLeb/i;)V

    .line 859
    .line 860
    .line 861
    goto :goto_11

    .line 862
    :cond_24
    move-object v13, v8

    .line 863
    move-object v15, v9

    .line 864
    const/4 v5, 0x0

    .line 865
    add-float v8, v14, v16

    .line 866
    .line 867
    move-object/from16 v0, p0

    .line 868
    .line 869
    move v1, v7

    .line 870
    move/from16 v2, v23

    .line 871
    .line 872
    move/from16 v3, p1

    .line 873
    .line 874
    move/from16 v4, p2

    .line 875
    .line 876
    move-object/from16 v6, p5

    .line 877
    .line 878
    move v7, v8

    .line 879
    move/from16 v8, v26

    .line 880
    .line 881
    move-object/from16 v9, p7

    .line 882
    .line 883
    invoke-virtual/range {v0 .. v9}, Leb/o;->b(IIIIZLandroid/graphics/Canvas;FFLeb/i;)V

    .line 884
    .line 885
    .line 886
    :goto_11
    add-float v16, v16, v26

    .line 887
    .line 888
    :goto_12
    move/from16 v7, p4

    .line 889
    .line 890
    move-object v3, v11

    .line 891
    move v4, v12

    .line 892
    move-object v8, v13

    .line 893
    move-object v9, v15

    .line 894
    move/from16 v0, v17

    .line 895
    .line 896
    move/from16 v1, v20

    .line 897
    .line 898
    move-object/from16 v2, v22

    .line 899
    .line 900
    move/from16 v6, v25

    .line 901
    .line 902
    const/4 v5, 0x0

    .line 903
    move/from16 v11, p1

    .line 904
    .line 905
    move/from16 v12, p2

    .line 906
    .line 907
    move-object/from16 v13, p5

    .line 908
    .line 909
    move-object/from16 v15, p7

    .line 910
    .line 911
    goto/16 :goto_f

    .line 912
    .line 913
    :cond_25
    move-object v11, v3

    .line 914
    move/from16 v25, v6

    .line 915
    .line 916
    move-object v13, v8

    .line 917
    move-object v15, v9

    .line 918
    goto :goto_14

    .line 919
    :goto_13
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 920
    .line 921
    .line 922
    move-object/from16 v0, p0

    .line 923
    .line 924
    move/from16 v1, p1

    .line 925
    .line 926
    move/from16 v2, p2

    .line 927
    .line 928
    move/from16 v3, p1

    .line 929
    .line 930
    move/from16 v4, p2

    .line 931
    .line 932
    move/from16 v5, p3

    .line 933
    .line 934
    move-object/from16 v6, p5

    .line 935
    .line 936
    move/from16 v7, p6

    .line 937
    .line 938
    move/from16 v8, v24

    .line 939
    .line 940
    move-object/from16 v9, p7

    .line 941
    .line 942
    invoke-virtual/range {v0 .. v9}, Leb/o;->b(IIIIZLandroid/graphics/Canvas;FFLeb/i;)V

    .line 943
    .line 944
    .line 945
    :goto_14
    iget-wide v0, v15, Llb/a;->b:J

    .line 946
    .line 947
    const-wide v2, 0x10000000000L

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    and-long/2addr v0, v2

    .line 953
    cmp-long v2, v0, v18

    .line 954
    .line 955
    if-eqz v2, :cond_27

    .line 956
    .line 957
    iget-object v0, v10, Leb/o;->j:Leb/p;

    .line 958
    .line 959
    iget-object v0, v0, Leb/p;->k:Lzb/a;

    .line 960
    .line 961
    iget-object v0, v0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 962
    .line 963
    const/16 v1, 0x39

    .line 964
    .line 965
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 966
    .line 967
    .line 968
    move-result v0

    .line 969
    if-nez v0, :cond_26

    .line 970
    .line 971
    invoke-virtual {v11}, Landroid/graphics/Paint;->getColor()I

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    :cond_26
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 976
    .line 977
    .line 978
    iget-object v0, v10, Leb/o;->j:Leb/p;

    .line 979
    .line 980
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 981
    .line 982
    .line 983
    const/4 v0, 0x0

    .line 984
    int-to-float v0, v0

    .line 985
    iget-object v1, v10, Leb/o;->j:Leb/p;

    .line 986
    .line 987
    iget v1, v1, Leb/p;->h:I

    .line 988
    .line 989
    int-to-float v2, v1

    .line 990
    const/high16 v3, 0x40000000    # 2.0f

    .line 991
    .line 992
    div-float/2addr v2, v3

    .line 993
    add-float/2addr v2, v0

    .line 994
    int-to-float v1, v1

    .line 995
    div-float/2addr v1, v3

    .line 996
    add-float v4, v1, v0

    .line 997
    .line 998
    move-object/from16 v0, p5

    .line 999
    .line 1000
    move/from16 v1, p6

    .line 1001
    .line 1002
    move/from16 v3, v25

    .line 1003
    .line 1004
    move-object v5, v13

    .line 1005
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1006
    .line 1007
    .line 1008
    :cond_27
    return v24
.end method

.method public final j(IILeb/g;)V
    .locals 1

    .line 1
    new-instance v0, Leb/i;

    .line 2
    .line 3
    invoke-direct {v0}, Leb/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Leb/i;->j:I

    .line 7
    .line 8
    iput p2, v0, Leb/i;->k:I

    .line 9
    .line 10
    new-instance p1, Leb/l;

    .line 11
    .line 12
    invoke-direct {p1, v0, p3}, Leb/l;-><init>(Leb/i;Leb/g;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Leb/i;->l:Leb/l;

    .line 16
    .line 17
    new-instance p1, Leb/k;

    .line 18
    .line 19
    invoke-direct {p1, p0, v0}, Leb/k;-><init>(Leb/o;Leb/i;)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p0, p1, p2}, Leb/o;->k(Leb/m;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Leb/i;->l:Leb/l;

    .line 27
    .line 28
    invoke-virtual {p1}, Leb/l;->a()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final k(Leb/m;Z)V
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Leb/o;->d:Lmb/h;

    .line 4
    .line 5
    iget p2, p2, Lmb/h;->d:I

    .line 6
    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Ll5/y;

    .line 10
    .line 11
    iget-object v0, p0, Leb/o;->e:Lnb/b;

    .line 12
    .line 13
    invoke-direct {p2, v0}, Ll5/y;-><init>(Lnb/b;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Leb/o;->e:Lnb/b;

    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_1
    invoke-interface {p2}, Lnb/c;->a()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v2, v3, :cond_6

    .line 27
    .line 28
    invoke-interface {p2, v2}, Lnb/c;->o(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-interface {p2, v2}, Lnb/c;->j(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget v5, p0, Leb/o;->f:I

    .line 37
    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, p0, Leb/o;->g:I

    .line 43
    .line 44
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-lt v4, v3, :cond_1

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_1
    invoke-virtual {p0, v4}, Leb/o;->l(I)Leb/j;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p2, v2}, Lnb/c;->q(I)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :goto_2
    iget v7, v1, Leb/j;->b:I

    .line 65
    .line 66
    iget-object v8, p0, Leb/o;->i:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-lt v7, v8, :cond_5

    .line 73
    .line 74
    if-ge v4, v3, :cond_2

    .line 75
    .line 76
    new-instance v7, Lwb/i;

    .line 77
    .line 78
    invoke-direct {v7}, Lwb/i;-><init>()V

    .line 79
    .line 80
    .line 81
    iput v4, v7, Lwb/i;->a:I

    .line 82
    .line 83
    iput v3, v7, Lwb/i;->b:I

    .line 84
    .line 85
    iput-boolean v5, v7, Lwb/i;->c:Z

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move v4, v3

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-interface {p1, v6, v5, v1}, Leb/m;->a(Ljava/util/ArrayList;ZLeb/j;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    iget-object v5, p0, Leb/o;->h:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    :goto_3
    iget v6, v1, Leb/j;->a:I

    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    if-ge v6, v5, :cond_3

    .line 107
    .line 108
    iget-object v7, p0, Leb/o;->h:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Ljb/c;

    .line 115
    .line 116
    check-cast v6, Llb/a;

    .line 117
    .line 118
    iget v6, v6, Llb/a;->a:I

    .line 119
    .line 120
    if-gt v6, v3, :cond_3

    .line 121
    .line 122
    iget v6, v1, Leb/j;->a:I

    .line 123
    .line 124
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    iput v6, v1, Leb/j;->a:I

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    if-nez v4, :cond_4

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    iget-object p1, p0, Leb/o;->i:Ljava/util/List;

    .line 136
    .line 137
    iget p2, v1, Leb/j;->b:I

    .line 138
    .line 139
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/ClassCastException;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_6
    :goto_5
    if-nez v1, :cond_7

    .line 153
    .line 154
    const/4 p2, 0x0

    .line 155
    goto :goto_6

    .line 156
    :cond_7
    iget p2, v1, Leb/j;->b:I

    .line 157
    .line 158
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Leb/o;->i:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-lt p2, v3, :cond_a

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_9

    .line 176
    .line 177
    if-nez v1, :cond_8

    .line 178
    .line 179
    iget v1, p0, Leb/o;->g:I

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Leb/o;->l(I)Leb/j;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :cond_8
    iput p2, v1, Leb/j;->b:I

    .line 186
    .line 187
    invoke-interface {p1, v2, v0, v1}, Leb/m;->a(Ljava/util/ArrayList;ZLeb/j;)Z

    .line 188
    .line 189
    .line 190
    :cond_9
    return-void

    .line 191
    :cond_a
    iget-object p1, p0, Leb/o;->i:Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance p1, Ljava/lang/ClassCastException;

    .line 201
    .line 202
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 203
    .line 204
    .line 205
    goto :goto_8

    .line 206
    :goto_7
    throw p1

    .line 207
    :goto_8
    goto :goto_7
.end method

.method public final l(I)Leb/j;
    .locals 3

    .line 1
    iget-object v0, p0, Leb/o;->c:Llb/a;

    .line 2
    .line 3
    iput p1, v0, Llb/a;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Leb/o;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    sget-object v2, Leb/o;->o:La2/m;

    .line 8
    .line 9
    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    neg-int v0, v0

    .line 18
    :cond_0
    iget-object v1, p0, Leb/o;->h:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    :cond_1
    if-lez v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Leb/o;->h:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljb/c;

    .line 37
    .line 38
    check-cast v1, Llb/a;

    .line 39
    .line 40
    iget v1, v1, Llb/a;->a:I

    .line 41
    .line 42
    if-lt v1, p1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p1, p0, Leb/o;->i:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-gtz p1, :cond_3

    .line 52
    .line 53
    new-instance p1, Leb/j;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Leb/j;-><init>(I)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_3
    iget-object p1, p0, Leb/o;->i:Ljava/util/List;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p1, Ljava/lang/ClassCastException;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    throw p1

    .line 76
    :goto_2
    goto :goto_1
.end method

.method public final m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leb/o;->d:Lmb/h;

    .line 2
    .line 3
    iput p2, p0, Leb/o;->f:I

    .line 4
    .line 5
    iput p3, p0, Leb/o;->g:I

    .line 6
    .line 7
    iput-object p4, p0, Leb/o;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    iput-object p5, p0, Leb/o;->i:Ljava/util/List;

    .line 10
    .line 11
    iput-object p6, p0, Leb/o;->e:Lnb/b;

    .line 12
    .line 13
    iput-object p7, p0, Leb/o;->k:Leb/c;

    .line 14
    .line 15
    iput-object p9, p0, Leb/o;->j:Leb/p;

    .line 16
    .line 17
    iput-object p8, p0, Leb/o;->l:Ld3/g;

    .line 18
    .line 19
    const-string p1, "textMetrics"

    .line 20
    .line 21
    iget-object p2, p9, Leb/p;->b:Landroid/graphics/Paint$FontMetricsInt;

    .line 22
    .line 23
    invoke-static {p2, p1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
