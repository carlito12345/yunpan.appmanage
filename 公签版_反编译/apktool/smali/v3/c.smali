.class public final Lv3/c;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lv3/k0;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/List;

.field public c:F

.field public d:Lv3/d;

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lv3/c;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lv3/c;->b:Ljava/util/List;

    .line 17
    .line 18
    const p1, 0x3d5a511a    # 0.0533f

    .line 19
    .line 20
    .line 21
    iput p1, p0, Lv3/c;->c:F

    .line 22
    .line 23
    sget-object p1, Lv3/d;->g:Lv3/d;

    .line 24
    .line 25
    iput-object p1, p0, Lv3/c;->d:Lv3/d;

    .line 26
    .line 27
    const p1, 0x3da3d70a    # 0.08f

    .line 28
    .line 29
    .line 30
    iput p1, p0, Lv3/c;->e:F

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lv3/d;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/c;->b:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lv3/c;->d:Lv3/d;

    .line 4
    .line 5
    iput p3, p0, Lv3/c;->c:F

    .line 6
    .line 7
    iput p4, p0, Lv3/c;->e:F

    .line 8
    .line 9
    :goto_0
    iget-object p2, p0, Lv3/c;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-ge p3, p4, :cond_0

    .line 20
    .line 21
    new-instance p3, Lv3/j0;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-direct {p3, p4}, Lv3/j0;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v4, v0, Lv3/c;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    sub-int/2addr v8, v9

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    sub-int v9, v5, v9

    .line 41
    .line 42
    if-le v9, v7, :cond_3e

    .line 43
    .line 44
    if-gt v8, v6, :cond_1

    .line 45
    .line 46
    goto/16 :goto_2d

    .line 47
    .line 48
    :cond_1
    sub-int v10, v9, v7

    .line 49
    .line 50
    iget v11, v0, Lv3/c;->c:F

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    invoke-static {v12, v11, v5, v10}, Lcom/bumptech/glide/d;->a0(IFII)F

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/4 v13, 0x0

    .line 58
    cmpg-float v14, v11, v13

    .line 59
    .line 60
    if-gtz v14, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    const/4 v15, 0x0

    .line 68
    :goto_0
    if-ge v15, v14, :cond_3e

    .line 69
    .line 70
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v16

    .line 74
    move-object/from16 v13, v16

    .line 75
    .line 76
    check-cast v13, Lt1/b;

    .line 77
    .line 78
    iget v12, v13, Lt1/b;->p:I

    .line 79
    .line 80
    const/high16 v17, 0x3f800000    # 1.0f

    .line 81
    .line 82
    const/16 v37, 0x0

    .line 83
    .line 84
    const v38, -0x800001

    .line 85
    .line 86
    .line 87
    const/high16 v3, -0x80000000

    .line 88
    .line 89
    if-eq v12, v3, :cond_6

    .line 90
    .line 91
    iget v12, v13, Lt1/b;->f:I

    .line 92
    .line 93
    iget v3, v13, Lt1/b;->e:F

    .line 94
    .line 95
    if-nez v12, :cond_3

    .line 96
    .line 97
    sub-float v3, v17, v3

    .line 98
    .line 99
    move/from16 v23, v3

    .line 100
    .line 101
    const/16 v24, 0x0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    neg-float v3, v3

    .line 105
    sub-float v3, v3, v17

    .line 106
    .line 107
    move/from16 v23, v3

    .line 108
    .line 109
    const/16 v24, 0x1

    .line 110
    .line 111
    :goto_1
    iget v3, v13, Lt1/b;->g:I

    .line 112
    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    if-eq v3, v2, :cond_4

    .line 116
    .line 117
    move/from16 v25, v3

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const/16 v25, 0x0

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    const/16 v25, 0x2

    .line 124
    .line 125
    :goto_2
    new-instance v3, Lt1/b;

    .line 126
    .line 127
    move-object/from16 v18, v3

    .line 128
    .line 129
    iget-object v12, v13, Lt1/b;->a:Ljava/lang/CharSequence;

    .line 130
    .line 131
    move-object/from16 v19, v12

    .line 132
    .line 133
    iget-object v12, v13, Lt1/b;->c:Landroid/text/Layout$Alignment;

    .line 134
    .line 135
    move-object/from16 v21, v12

    .line 136
    .line 137
    iget-object v12, v13, Lt1/b;->d:Landroid/graphics/Bitmap;

    .line 138
    .line 139
    move-object/from16 v22, v12

    .line 140
    .line 141
    iget v12, v13, Lt1/b;->n:I

    .line 142
    .line 143
    move/from16 v28, v12

    .line 144
    .line 145
    iget v12, v13, Lt1/b;->o:F

    .line 146
    .line 147
    move/from16 v29, v12

    .line 148
    .line 149
    iget v12, v13, Lt1/b;->j:F

    .line 150
    .line 151
    move/from16 v30, v12

    .line 152
    .line 153
    iget v12, v13, Lt1/b;->k:F

    .line 154
    .line 155
    move/from16 v31, v12

    .line 156
    .line 157
    iget-boolean v12, v13, Lt1/b;->l:Z

    .line 158
    .line 159
    move/from16 v32, v12

    .line 160
    .line 161
    iget v12, v13, Lt1/b;->m:I

    .line 162
    .line 163
    move/from16 v33, v12

    .line 164
    .line 165
    iget v12, v13, Lt1/b;->p:I

    .line 166
    .line 167
    move/from16 v34, v12

    .line 168
    .line 169
    iget v12, v13, Lt1/b;->q:F

    .line 170
    .line 171
    move/from16 v35, v12

    .line 172
    .line 173
    iget v12, v13, Lt1/b;->r:I

    .line 174
    .line 175
    move/from16 v36, v12

    .line 176
    .line 177
    move-object/from16 v20, v37

    .line 178
    .line 179
    move/from16 v26, v38

    .line 180
    .line 181
    const/high16 v12, -0x80000000

    .line 182
    .line 183
    move/from16 v27, v12

    .line 184
    .line 185
    invoke-direct/range {v18 .. v36}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 186
    .line 187
    .line 188
    move-object v13, v3

    .line 189
    :cond_6
    iget v3, v13, Lt1/b;->n:I

    .line 190
    .line 191
    iget v12, v13, Lt1/b;->o:F

    .line 192
    .line 193
    invoke-static {v3, v12, v5, v10}, Lcom/bumptech/glide/d;->a0(IFII)F

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    iget-object v12, v0, Lv3/c;->a:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    check-cast v12, Lv3/j0;

    .line 204
    .line 205
    iget-object v2, v0, Lv3/c;->d:Lv3/d;

    .line 206
    .line 207
    move-object/from16 v19, v4

    .line 208
    .line 209
    iget v4, v0, Lv3/c;->e:F

    .line 210
    .line 211
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    iget-object v0, v13, Lt1/b;->d:Landroid/graphics/Bitmap;

    .line 215
    .line 216
    move/from16 v20, v5

    .line 217
    .line 218
    move/from16 v21, v10

    .line 219
    .line 220
    if-nez v0, :cond_7

    .line 221
    .line 222
    const/4 v5, 0x1

    .line 223
    goto :goto_3

    .line 224
    :cond_7
    const/4 v5, 0x0

    .line 225
    :goto_3
    iget-object v10, v13, Lt1/b;->a:Ljava/lang/CharSequence;

    .line 226
    .line 227
    if-eqz v5, :cond_a

    .line 228
    .line 229
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v22

    .line 233
    if-eqz v22, :cond_8

    .line 234
    .line 235
    move-object v0, v1

    .line 236
    move/from16 v36, v6

    .line 237
    .line 238
    move/from16 v35, v7

    .line 239
    .line 240
    move/from16 v34, v8

    .line 241
    .line 242
    move/from16 v33, v9

    .line 243
    .line 244
    move/from16 v40, v11

    .line 245
    .line 246
    move/from16 v22, v14

    .line 247
    .line 248
    move/from16 v23, v15

    .line 249
    .line 250
    :goto_4
    const/4 v1, 0x1

    .line 251
    const/4 v3, 0x2

    .line 252
    const/4 v8, 0x0

    .line 253
    const/4 v9, 0x0

    .line 254
    goto/16 :goto_2c

    .line 255
    .line 256
    :cond_8
    move/from16 v22, v14

    .line 257
    .line 258
    iget-boolean v14, v13, Lt1/b;->l:Z

    .line 259
    .line 260
    if-eqz v14, :cond_9

    .line 261
    .line 262
    iget v14, v13, Lt1/b;->m:I

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_9
    iget v14, v2, Lv3/d;->c:I

    .line 266
    .line 267
    :goto_5
    move/from16 v23, v15

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_a
    move/from16 v22, v14

    .line 271
    .line 272
    const/high16 v14, -0x1000000

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :goto_6
    iget-object v15, v12, Lv3/j0;->i:Ljava/lang/CharSequence;

    .line 276
    .line 277
    iget-object v1, v12, Lv3/j0;->f:Landroid/text/TextPaint;

    .line 278
    .line 279
    move/from16 v32, v5

    .line 280
    .line 281
    iget v5, v13, Lt1/b;->k:F

    .line 282
    .line 283
    move/from16 v33, v9

    .line 284
    .line 285
    iget v9, v13, Lt1/b;->j:F

    .line 286
    .line 287
    move/from16 v34, v8

    .line 288
    .line 289
    iget v8, v13, Lt1/b;->i:I

    .line 290
    .line 291
    move/from16 v35, v7

    .line 292
    .line 293
    iget v7, v13, Lt1/b;->h:F

    .line 294
    .line 295
    move/from16 v36, v6

    .line 296
    .line 297
    iget v6, v13, Lt1/b;->g:I

    .line 298
    .line 299
    move/from16 v24, v4

    .line 300
    .line 301
    iget v4, v13, Lt1/b;->f:I

    .line 302
    .line 303
    move/from16 v25, v3

    .line 304
    .line 305
    iget v3, v13, Lt1/b;->e:F

    .line 306
    .line 307
    iget-object v13, v13, Lt1/b;->b:Landroid/text/Layout$Alignment;

    .line 308
    .line 309
    if-eq v15, v10, :cond_c

    .line 310
    .line 311
    if-eqz v15, :cond_b

    .line 312
    .line 313
    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v15

    .line 317
    if-eqz v15, :cond_b

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_b
    move-object v15, v1

    .line 321
    move/from16 v26, v4

    .line 322
    .line 323
    move/from16 v1, v32

    .line 324
    .line 325
    move-object/from16 v4, p1

    .line 326
    .line 327
    goto/16 :goto_b

    .line 328
    .line 329
    :cond_c
    :goto_7
    iget-object v15, v12, Lv3/j0;->j:Landroid/text/Layout$Alignment;

    .line 330
    .line 331
    invoke-static {v15, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v15

    .line 335
    if-eqz v15, :cond_b

    .line 336
    .line 337
    iget-object v15, v12, Lv3/j0;->k:Landroid/graphics/Bitmap;

    .line 338
    .line 339
    if-ne v15, v0, :cond_b

    .line 340
    .line 341
    iget v15, v12, Lv3/j0;->l:F

    .line 342
    .line 343
    cmpl-float v15, v15, v3

    .line 344
    .line 345
    if-nez v15, :cond_b

    .line 346
    .line 347
    iget v15, v12, Lv3/j0;->m:I

    .line 348
    .line 349
    if-ne v15, v4, :cond_b

    .line 350
    .line 351
    iget v15, v12, Lv3/j0;->n:I

    .line 352
    .line 353
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    move/from16 v26, v4

    .line 358
    .line 359
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-eqz v4, :cond_11

    .line 368
    .line 369
    iget v4, v12, Lv3/j0;->o:F

    .line 370
    .line 371
    cmpl-float v4, v4, v7

    .line 372
    .line 373
    if-nez v4, :cond_11

    .line 374
    .line 375
    iget v4, v12, Lv3/j0;->p:I

    .line 376
    .line 377
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v15

    .line 385
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    if-eqz v4, :cond_11

    .line 390
    .line 391
    iget v4, v12, Lv3/j0;->q:F

    .line 392
    .line 393
    cmpl-float v4, v4, v9

    .line 394
    .line 395
    if-nez v4, :cond_11

    .line 396
    .line 397
    iget v4, v12, Lv3/j0;->r:F

    .line 398
    .line 399
    cmpl-float v4, v4, v5

    .line 400
    .line 401
    if-nez v4, :cond_11

    .line 402
    .line 403
    iget v4, v12, Lv3/j0;->s:I

    .line 404
    .line 405
    iget v15, v2, Lv3/d;->a:I

    .line 406
    .line 407
    if-ne v4, v15, :cond_11

    .line 408
    .line 409
    iget v4, v12, Lv3/j0;->t:I

    .line 410
    .line 411
    iget v15, v2, Lv3/d;->b:I

    .line 412
    .line 413
    if-ne v4, v15, :cond_11

    .line 414
    .line 415
    iget v4, v12, Lv3/j0;->u:I

    .line 416
    .line 417
    if-ne v4, v14, :cond_11

    .line 418
    .line 419
    iget v4, v12, Lv3/j0;->w:I

    .line 420
    .line 421
    iget v15, v2, Lv3/d;->d:I

    .line 422
    .line 423
    if-ne v4, v15, :cond_11

    .line 424
    .line 425
    iget v4, v12, Lv3/j0;->v:I

    .line 426
    .line 427
    iget v15, v2, Lv3/d;->e:I

    .line 428
    .line 429
    if-ne v4, v15, :cond_11

    .line 430
    .line 431
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    iget-object v15, v2, Lv3/d;->f:Landroid/graphics/Typeface;

    .line 436
    .line 437
    invoke-static {v4, v15}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-eqz v4, :cond_11

    .line 442
    .line 443
    iget v4, v12, Lv3/j0;->x:F

    .line 444
    .line 445
    cmpl-float v4, v4, v11

    .line 446
    .line 447
    if-nez v4, :cond_11

    .line 448
    .line 449
    iget v4, v12, Lv3/j0;->y:F

    .line 450
    .line 451
    cmpl-float v4, v4, v25

    .line 452
    .line 453
    if-nez v4, :cond_11

    .line 454
    .line 455
    iget v4, v12, Lv3/j0;->z:F

    .line 456
    .line 457
    cmpl-float v4, v4, v24

    .line 458
    .line 459
    if-nez v4, :cond_11

    .line 460
    .line 461
    iget v4, v12, Lv3/j0;->A:I

    .line 462
    .line 463
    move/from16 v15, v36

    .line 464
    .line 465
    if-ne v4, v15, :cond_10

    .line 466
    .line 467
    iget v4, v12, Lv3/j0;->B:I

    .line 468
    .line 469
    move-object/from16 v27, v1

    .line 470
    .line 471
    move/from16 v1, v35

    .line 472
    .line 473
    if-ne v4, v1, :cond_f

    .line 474
    .line 475
    iget v4, v12, Lv3/j0;->C:I

    .line 476
    .line 477
    move/from16 v35, v1

    .line 478
    .line 479
    move/from16 v1, v34

    .line 480
    .line 481
    if-ne v4, v1, :cond_e

    .line 482
    .line 483
    iget v4, v12, Lv3/j0;->D:I

    .line 484
    .line 485
    move/from16 v34, v1

    .line 486
    .line 487
    move/from16 v1, v33

    .line 488
    .line 489
    if-ne v4, v1, :cond_d

    .line 490
    .line 491
    move-object/from16 v4, p1

    .line 492
    .line 493
    move/from16 v33, v1

    .line 494
    .line 495
    move/from16 v36, v15

    .line 496
    .line 497
    move/from16 v1, v32

    .line 498
    .line 499
    invoke-virtual {v12, v4, v1}, Lv3/j0;->a(Landroid/graphics/Canvas;Z)V

    .line 500
    .line 501
    .line 502
    move-object v0, v4

    .line 503
    move/from16 v40, v11

    .line 504
    .line 505
    goto/16 :goto_4

    .line 506
    .line 507
    :cond_d
    move-object/from16 v4, p1

    .line 508
    .line 509
    move/from16 v33, v1

    .line 510
    .line 511
    :goto_8
    move/from16 v36, v15

    .line 512
    .line 513
    move-object/from16 v15, v27

    .line 514
    .line 515
    :goto_9
    move/from16 v1, v32

    .line 516
    .line 517
    goto :goto_b

    .line 518
    :cond_e
    move-object/from16 v4, p1

    .line 519
    .line 520
    move/from16 v34, v1

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_f
    move-object/from16 v4, p1

    .line 524
    .line 525
    move/from16 v35, v1

    .line 526
    .line 527
    goto :goto_8

    .line 528
    :cond_10
    move-object/from16 v4, p1

    .line 529
    .line 530
    move/from16 v36, v15

    .line 531
    .line 532
    :goto_a
    move-object v15, v1

    .line 533
    goto :goto_9

    .line 534
    :cond_11
    move-object/from16 v4, p1

    .line 535
    .line 536
    goto :goto_a

    .line 537
    :goto_b
    sget-object v27, Lv3/b;->a:Landroidx/room/s;

    .line 538
    .line 539
    if-nez v10, :cond_13

    .line 540
    .line 541
    move/from16 v32, v1

    .line 542
    .line 543
    :cond_12
    move-object/from16 v28, v2

    .line 544
    .line 545
    move/from16 v29, v5

    .line 546
    .line 547
    move/from16 v47, v6

    .line 548
    .line 549
    move/from16 v45, v7

    .line 550
    .line 551
    move/from16 v31, v8

    .line 552
    .line 553
    move/from16 v30, v9

    .line 554
    .line 555
    move/from16 v40, v11

    .line 556
    .line 557
    move/from16 v27, v14

    .line 558
    .line 559
    move-object/from16 v41, v15

    .line 560
    .line 561
    goto/16 :goto_17

    .line 562
    .line 563
    :cond_13
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    move/from16 v32, v1

    .line 568
    .line 569
    const/4 v1, 0x0

    .line 570
    :goto_c
    if-ge v1, v4, :cond_12

    .line 571
    .line 572
    invoke-static {v10, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 573
    .line 574
    .line 575
    move-result v27

    .line 576
    move/from16 v28, v4

    .line 577
    .line 578
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->getDirectionality(I)B

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    move/from16 v40, v11

    .line 583
    .line 584
    const/4 v11, 0x1

    .line 585
    if-eq v4, v11, :cond_15

    .line 586
    .line 587
    const/4 v11, 0x2

    .line 588
    if-eq v4, v11, :cond_15

    .line 589
    .line 590
    const/16 v11, 0x10

    .line 591
    .line 592
    if-eq v4, v11, :cond_15

    .line 593
    .line 594
    const/16 v11, 0x11

    .line 595
    .line 596
    if-ne v4, v11, :cond_14

    .line 597
    .line 598
    goto :goto_d

    .line 599
    :cond_14
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->charCount(I)I

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    add-int/2addr v1, v4

    .line 604
    move/from16 v4, v28

    .line 605
    .line 606
    move/from16 v11, v40

    .line 607
    .line 608
    goto :goto_c

    .line 609
    :cond_15
    :goto_d
    invoke-static {}, Ltb/a;->a()Landroid/text/BidiFormatter;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    instance-of v4, v10, Landroid/text/Spanned;

    .line 614
    .line 615
    if-eqz v4, :cond_16

    .line 616
    .line 617
    move-object v4, v10

    .line 618
    check-cast v4, Landroid/text/Spanned;

    .line 619
    .line 620
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 621
    .line 622
    .line 623
    move-result v11

    .line 624
    move-object/from16 v41, v15

    .line 625
    .line 626
    const-class v15, Ljava/lang/Object;

    .line 627
    .line 628
    move/from16 v27, v14

    .line 629
    .line 630
    const/4 v14, 0x0

    .line 631
    invoke-interface {v4, v14, v11, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v11

    .line 635
    array-length v14, v11

    .line 636
    new-array v14, v14, [I

    .line 637
    .line 638
    array-length v15, v11

    .line 639
    new-array v15, v15, [I

    .line 640
    .line 641
    move-object/from16 v28, v4

    .line 642
    .line 643
    const/4 v4, -0x1

    .line 644
    invoke-static {v14, v4}, Ljava/util/Arrays;->fill([II)V

    .line 645
    .line 646
    .line 647
    invoke-static {v15, v4}, Ljava/util/Arrays;->fill([II)V

    .line 648
    .line 649
    .line 650
    move-object/from16 v37, v14

    .line 651
    .line 652
    move-object/from16 v4, v28

    .line 653
    .line 654
    goto :goto_e

    .line 655
    :cond_16
    move/from16 v27, v14

    .line 656
    .line 657
    move-object/from16 v41, v15

    .line 658
    .line 659
    move-object/from16 v4, v37

    .line 660
    .line 661
    move-object v11, v4

    .line 662
    move-object v15, v11

    .line 663
    :goto_e
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v14

    .line 667
    move-object/from16 v28, v2

    .line 668
    .line 669
    const-string v2, "\r\n"

    .line 670
    .line 671
    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    if-eqz v2, :cond_17

    .line 676
    .line 677
    sget-object v2, Lv3/b;->b:Landroidx/room/s;

    .line 678
    .line 679
    invoke-virtual {v2, v10}, Landroidx/room/s;->E(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    const/4 v10, 0x2

    .line 684
    goto :goto_f

    .line 685
    :cond_17
    sget-object v2, Lv3/b;->a:Landroidx/room/s;

    .line 686
    .line 687
    invoke-virtual {v2, v10}, Landroidx/room/s;->E(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    const/4 v10, 0x1

    .line 692
    :goto_f
    new-instance v14, Ljava/util/ArrayList;

    .line 693
    .line 694
    move/from16 v29, v5

    .line 695
    .line 696
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .line 702
    .line 703
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    move/from16 v30, v9

    .line 708
    .line 709
    const/4 v5, 0x0

    .line 710
    const/4 v9, 0x0

    .line 711
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 712
    .line 713
    .line 714
    move-result v31

    .line 715
    if-eqz v31, :cond_1f

    .line 716
    .line 717
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v31

    .line 721
    move-object/from16 v42, v2

    .line 722
    .line 723
    move-object/from16 v2, v31

    .line 724
    .line 725
    check-cast v2, Ljava/lang/String;

    .line 726
    .line 727
    move/from16 v31, v8

    .line 728
    .line 729
    invoke-static {}, Lb1/o;->z()Landroid/text/TextDirectionHeuristic;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    invoke-static {v1, v2, v8}, Ltb/a;->e(Landroid/text/BidiFormatter;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v8

    .line 737
    if-eqz v11, :cond_1e

    .line 738
    .line 739
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 749
    .line 750
    .line 751
    move-result v43

    .line 752
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 753
    .line 754
    .line 755
    move-result v44

    .line 756
    sub-int v43, v43, v44

    .line 757
    .line 758
    if-lez v43, :cond_18

    .line 759
    .line 760
    const/16 v39, 0x1

    .line 761
    .line 762
    add-int/lit8 v5, v5, 0x1

    .line 763
    .line 764
    :cond_18
    move-object/from16 v44, v1

    .line 765
    .line 766
    move/from16 v45, v7

    .line 767
    .line 768
    const/4 v1, 0x0

    .line 769
    :goto_11
    array-length v7, v11

    .line 770
    if-ge v1, v7, :cond_1c

    .line 771
    .line 772
    aget v7, v37, v1

    .line 773
    .line 774
    if-gez v7, :cond_19

    .line 775
    .line 776
    aget-object v7, v11, v1

    .line 777
    .line 778
    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 779
    .line 780
    .line 781
    move-result v7

    .line 782
    if-lt v7, v9, :cond_19

    .line 783
    .line 784
    aget-object v7, v11, v1

    .line 785
    .line 786
    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 787
    .line 788
    .line 789
    move-result v7

    .line 790
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 791
    .line 792
    .line 793
    move-result v46

    .line 794
    move/from16 v47, v6

    .line 795
    .line 796
    add-int v6, v46, v9

    .line 797
    .line 798
    if-ge v7, v6, :cond_1a

    .line 799
    .line 800
    aput v5, v37, v1

    .line 801
    .line 802
    goto :goto_12

    .line 803
    :cond_19
    move/from16 v47, v6

    .line 804
    .line 805
    :cond_1a
    :goto_12
    aget v6, v15, v1

    .line 806
    .line 807
    if-gez v6, :cond_1b

    .line 808
    .line 809
    aget-object v6, v11, v1

    .line 810
    .line 811
    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 812
    .line 813
    .line 814
    move-result v6

    .line 815
    const/4 v7, 0x1

    .line 816
    sub-int/2addr v6, v7

    .line 817
    if-lt v6, v9, :cond_1b

    .line 818
    .line 819
    aget-object v6, v11, v1

    .line 820
    .line 821
    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 822
    .line 823
    .line 824
    move-result v6

    .line 825
    sub-int/2addr v6, v7

    .line 826
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 827
    .line 828
    .line 829
    move-result v39

    .line 830
    add-int v7, v39, v9

    .line 831
    .line 832
    if-ge v6, v7, :cond_1b

    .line 833
    .line 834
    aput v5, v15, v1

    .line 835
    .line 836
    :cond_1b
    const/4 v6, 0x1

    .line 837
    add-int/2addr v1, v6

    .line 838
    move/from16 v6, v47

    .line 839
    .line 840
    goto :goto_11

    .line 841
    :cond_1c
    move/from16 v47, v6

    .line 842
    .line 843
    const/4 v6, 0x1

    .line 844
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 845
    .line 846
    .line 847
    move-result v1

    .line 848
    add-int/2addr v1, v10

    .line 849
    add-int/2addr v1, v9

    .line 850
    if-lez v43, :cond_1d

    .line 851
    .line 852
    add-int/2addr v5, v6

    .line 853
    :cond_1d
    move v9, v1

    .line 854
    goto :goto_13

    .line 855
    :cond_1e
    move-object/from16 v44, v1

    .line 856
    .line 857
    move/from16 v47, v6

    .line 858
    .line 859
    move/from16 v45, v7

    .line 860
    .line 861
    :goto_13
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move/from16 v8, v31

    .line 865
    .line 866
    move-object/from16 v2, v42

    .line 867
    .line 868
    move-object/from16 v1, v44

    .line 869
    .line 870
    move/from16 v7, v45

    .line 871
    .line 872
    move/from16 v6, v47

    .line 873
    .line 874
    goto/16 :goto_10

    .line 875
    .line 876
    :cond_1f
    move/from16 v47, v6

    .line 877
    .line 878
    move/from16 v45, v7

    .line 879
    .line 880
    move/from16 v31, v8

    .line 881
    .line 882
    new-instance v10, Landroid/text/SpannableStringBuilder;

    .line 883
    .line 884
    sget-object v1, Lv3/b;->c:Lbd/c;

    .line 885
    .line 886
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    new-instance v5, Ljava/lang/StringBuilder;

    .line 894
    .line 895
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1, v5, v2}, Lbd/c;->d(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-direct {v10, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 906
    .line 907
    .line 908
    if-eqz v11, :cond_21

    .line 909
    .line 910
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    .line 912
    .line 913
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    const/4 v1, 0x0

    .line 920
    :goto_14
    array-length v2, v11

    .line 921
    if-ge v1, v2, :cond_21

    .line 922
    .line 923
    aget-object v2, v11, v1

    .line 924
    .line 925
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 926
    .line 927
    .line 928
    move-result v2

    .line 929
    aget v5, v37, v1

    .line 930
    .line 931
    add-int/2addr v2, v5

    .line 932
    aget-object v5, v11, v1

    .line 933
    .line 934
    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 935
    .line 936
    .line 937
    move-result v5

    .line 938
    aget v6, v15, v1

    .line 939
    .line 940
    add-int/2addr v5, v6

    .line 941
    aget-object v6, v11, v1

    .line 942
    .line 943
    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 944
    .line 945
    .line 946
    move-result v6

    .line 947
    if-ltz v2, :cond_20

    .line 948
    .line 949
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    .line 950
    .line 951
    .line 952
    move-result v7

    .line 953
    if-ge v2, v7, :cond_20

    .line 954
    .line 955
    if-ltz v5, :cond_20

    .line 956
    .line 957
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    .line 958
    .line 959
    .line 960
    move-result v7

    .line 961
    if-gt v5, v7, :cond_20

    .line 962
    .line 963
    aget-object v7, v11, v1

    .line 964
    .line 965
    invoke-virtual {v10, v7, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 966
    .line 967
    .line 968
    :goto_15
    const/4 v2, 0x1

    .line 969
    goto :goto_16

    .line 970
    :cond_20
    const-string v6, "Span out of bounds: start="

    .line 971
    .line 972
    const-string v7, ",end="

    .line 973
    .line 974
    const-string v8, ",len="

    .line 975
    .line 976
    invoke-static {v2, v5, v6, v7, v8}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    .line 981
    .line 982
    .line 983
    move-result v5

    .line 984
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    goto :goto_15

    .line 995
    :goto_16
    add-int/2addr v1, v2

    .line 996
    goto :goto_14

    .line 997
    :cond_21
    :goto_17
    iput-object v10, v12, Lv3/j0;->i:Ljava/lang/CharSequence;

    .line 998
    .line 999
    iput-object v13, v12, Lv3/j0;->j:Landroid/text/Layout$Alignment;

    .line 1000
    .line 1001
    iput-object v0, v12, Lv3/j0;->k:Landroid/graphics/Bitmap;

    .line 1002
    .line 1003
    iput v3, v12, Lv3/j0;->l:F

    .line 1004
    .line 1005
    move/from16 v0, v26

    .line 1006
    .line 1007
    iput v0, v12, Lv3/j0;->m:I

    .line 1008
    .line 1009
    move/from16 v0, v47

    .line 1010
    .line 1011
    iput v0, v12, Lv3/j0;->n:I

    .line 1012
    .line 1013
    move/from16 v0, v45

    .line 1014
    .line 1015
    iput v0, v12, Lv3/j0;->o:F

    .line 1016
    .line 1017
    move/from16 v0, v31

    .line 1018
    .line 1019
    iput v0, v12, Lv3/j0;->p:I

    .line 1020
    .line 1021
    move/from16 v0, v30

    .line 1022
    .line 1023
    iput v0, v12, Lv3/j0;->q:F

    .line 1024
    .line 1025
    move/from16 v0, v29

    .line 1026
    .line 1027
    iput v0, v12, Lv3/j0;->r:F

    .line 1028
    .line 1029
    move-object/from16 v0, v28

    .line 1030
    .line 1031
    iget v1, v0, Lv3/d;->a:I

    .line 1032
    .line 1033
    iput v1, v12, Lv3/j0;->s:I

    .line 1034
    .line 1035
    iget v1, v0, Lv3/d;->b:I

    .line 1036
    .line 1037
    iput v1, v12, Lv3/j0;->t:I

    .line 1038
    .line 1039
    move/from16 v14, v27

    .line 1040
    .line 1041
    iput v14, v12, Lv3/j0;->u:I

    .line 1042
    .line 1043
    iget v1, v0, Lv3/d;->d:I

    .line 1044
    .line 1045
    iput v1, v12, Lv3/j0;->w:I

    .line 1046
    .line 1047
    iget v1, v0, Lv3/d;->e:I

    .line 1048
    .line 1049
    iput v1, v12, Lv3/j0;->v:I

    .line 1050
    .line 1051
    iget-object v0, v0, Lv3/d;->f:Landroid/graphics/Typeface;

    .line 1052
    .line 1053
    move-object/from16 v1, v41

    .line 1054
    .line 1055
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1056
    .line 1057
    .line 1058
    move/from16 v0, v40

    .line 1059
    .line 1060
    iput v0, v12, Lv3/j0;->x:F

    .line 1061
    .line 1062
    move/from16 v2, v25

    .line 1063
    .line 1064
    iput v2, v12, Lv3/j0;->y:F

    .line 1065
    .line 1066
    move/from16 v2, v24

    .line 1067
    .line 1068
    iput v2, v12, Lv3/j0;->z:F

    .line 1069
    .line 1070
    move/from16 v2, v36

    .line 1071
    .line 1072
    iput v2, v12, Lv3/j0;->A:I

    .line 1073
    .line 1074
    move/from16 v3, v35

    .line 1075
    .line 1076
    iput v3, v12, Lv3/j0;->B:I

    .line 1077
    .line 1078
    move/from16 v8, v34

    .line 1079
    .line 1080
    iput v8, v12, Lv3/j0;->C:I

    .line 1081
    .line 1082
    move/from16 v5, v33

    .line 1083
    .line 1084
    iput v5, v12, Lv3/j0;->D:I

    .line 1085
    .line 1086
    if-eqz v32, :cond_38

    .line 1087
    .line 1088
    iget-object v4, v12, Lv3/j0;->i:Ljava/lang/CharSequence;

    .line 1089
    .line 1090
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1091
    .line 1092
    .line 1093
    iget-object v4, v12, Lv3/j0;->i:Ljava/lang/CharSequence;

    .line 1094
    .line 1095
    instance-of v6, v4, Landroid/text/SpannableStringBuilder;

    .line 1096
    .line 1097
    if-eqz v6, :cond_22

    .line 1098
    .line 1099
    check-cast v4, Landroid/text/SpannableStringBuilder;

    .line 1100
    .line 1101
    goto :goto_18

    .line 1102
    :cond_22
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 1103
    .line 1104
    iget-object v6, v12, Lv3/j0;->i:Ljava/lang/CharSequence;

    .line 1105
    .line 1106
    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1107
    .line 1108
    .line 1109
    :goto_18
    iget v6, v12, Lv3/j0;->C:I

    .line 1110
    .line 1111
    iget v7, v12, Lv3/j0;->A:I

    .line 1112
    .line 1113
    sub-int/2addr v6, v7

    .line 1114
    iget v7, v12, Lv3/j0;->D:I

    .line 1115
    .line 1116
    iget v9, v12, Lv3/j0;->B:I

    .line 1117
    .line 1118
    sub-int/2addr v7, v9

    .line 1119
    iget v9, v12, Lv3/j0;->x:F

    .line 1120
    .line 1121
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1122
    .line 1123
    .line 1124
    iget v9, v12, Lv3/j0;->x:F

    .line 1125
    .line 1126
    const/high16 v10, 0x3e000000    # 0.125f

    .line 1127
    .line 1128
    mul-float v9, v9, v10

    .line 1129
    .line 1130
    const/high16 v10, 0x3f000000    # 0.5f

    .line 1131
    .line 1132
    add-float/2addr v9, v10

    .line 1133
    float-to-int v9, v9

    .line 1134
    const/4 v10, 0x2

    .line 1135
    mul-int/lit8 v11, v9, 0x2

    .line 1136
    .line 1137
    sub-int v10, v6, v11

    .line 1138
    .line 1139
    iget v13, v12, Lv3/j0;->q:F

    .line 1140
    .line 1141
    cmpl-float v14, v13, v38

    .line 1142
    .line 1143
    if-eqz v14, :cond_23

    .line 1144
    .line 1145
    int-to-float v10, v10

    .line 1146
    mul-float v10, v10, v13

    .line 1147
    .line 1148
    float-to-int v10, v10

    .line 1149
    :cond_23
    if-gtz v10, :cond_24

    .line 1150
    .line 1151
    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    .line 1152
    .line 1153
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    move/from16 v40, v0

    .line 1157
    .line 1158
    move/from16 v36, v2

    .line 1159
    .line 1160
    move/from16 v35, v3

    .line 1161
    .line 1162
    move/from16 v33, v5

    .line 1163
    .line 1164
    move/from16 v34, v8

    .line 1165
    .line 1166
    :goto_19
    const/4 v8, 0x0

    .line 1167
    const/4 v9, 0x0

    .line 1168
    goto/16 :goto_25

    .line 1169
    .line 1170
    :cond_24
    iget v13, v12, Lv3/j0;->y:F

    .line 1171
    .line 1172
    const/high16 v14, 0xff0000

    .line 1173
    .line 1174
    const/4 v15, 0x0

    .line 1175
    cmpl-float v13, v13, v15

    .line 1176
    .line 1177
    if-lez v13, :cond_25

    .line 1178
    .line 1179
    new-instance v13, Landroid/text/style/AbsoluteSizeSpan;

    .line 1180
    .line 1181
    iget v15, v12, Lv3/j0;->y:F

    .line 1182
    .line 1183
    float-to-int v15, v15

    .line 1184
    invoke-direct {v13, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1188
    .line 1189
    .line 1190
    move-result v15

    .line 1191
    move/from16 v40, v0

    .line 1192
    .line 1193
    const/4 v0, 0x0

    .line 1194
    invoke-virtual {v4, v13, v0, v15, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1195
    .line 1196
    .line 1197
    goto :goto_1a

    .line 1198
    :cond_25
    move/from16 v40, v0

    .line 1199
    .line 1200
    const/4 v0, 0x0

    .line 1201
    :goto_1a
    new-instance v13, Landroid/text/SpannableStringBuilder;

    .line 1202
    .line 1203
    invoke-direct {v13, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1204
    .line 1205
    .line 1206
    iget v15, v12, Lv3/j0;->w:I

    .line 1207
    .line 1208
    const/4 v14, 0x1

    .line 1209
    if-ne v15, v14, :cond_26

    .line 1210
    .line 1211
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1212
    .line 1213
    .line 1214
    move-result v15

    .line 1215
    const-class v14, Landroid/text/style/ForegroundColorSpan;

    .line 1216
    .line 1217
    invoke-virtual {v13, v0, v15, v14}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v14

    .line 1221
    check-cast v14, [Landroid/text/style/ForegroundColorSpan;

    .line 1222
    .line 1223
    array-length v0, v14

    .line 1224
    const/4 v15, 0x0

    .line 1225
    :goto_1b
    if-ge v15, v0, :cond_26

    .line 1226
    .line 1227
    move/from16 v25, v0

    .line 1228
    .line 1229
    aget-object v0, v14, v15

    .line 1230
    .line 1231
    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1232
    .line 1233
    .line 1234
    const/4 v0, 0x1

    .line 1235
    add-int/2addr v15, v0

    .line 1236
    move/from16 v0, v25

    .line 1237
    .line 1238
    goto :goto_1b

    .line 1239
    :cond_26
    iget v0, v12, Lv3/j0;->t:I

    .line 1240
    .line 1241
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 1242
    .line 1243
    .line 1244
    move-result v0

    .line 1245
    if-lez v0, :cond_29

    .line 1246
    .line 1247
    iget v0, v12, Lv3/j0;->w:I

    .line 1248
    .line 1249
    if-eqz v0, :cond_27

    .line 1250
    .line 1251
    const/4 v14, 0x2

    .line 1252
    if-ne v0, v14, :cond_28

    .line 1253
    .line 1254
    :cond_27
    move/from16 v36, v2

    .line 1255
    .line 1256
    const/high16 v2, 0xff0000

    .line 1257
    .line 1258
    const/4 v15, 0x0

    .line 1259
    goto :goto_1c

    .line 1260
    :cond_28
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 1261
    .line 1262
    iget v14, v12, Lv3/j0;->t:I

    .line 1263
    .line 1264
    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1268
    .line 1269
    .line 1270
    move-result v14

    .line 1271
    move/from16 v36, v2

    .line 1272
    .line 1273
    const/high16 v2, 0xff0000

    .line 1274
    .line 1275
    const/4 v15, 0x0

    .line 1276
    invoke-virtual {v13, v0, v15, v14, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1277
    .line 1278
    .line 1279
    goto :goto_1d

    .line 1280
    :goto_1c
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 1281
    .line 1282
    iget v14, v12, Lv3/j0;->t:I

    .line 1283
    .line 1284
    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1288
    .line 1289
    .line 1290
    move-result v14

    .line 1291
    invoke-virtual {v4, v0, v15, v14, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1292
    .line 1293
    .line 1294
    goto :goto_1d

    .line 1295
    :cond_29
    move/from16 v36, v2

    .line 1296
    .line 1297
    :goto_1d
    iget-object v0, v12, Lv3/j0;->j:Landroid/text/Layout$Alignment;

    .line 1298
    .line 1299
    if-nez v0, :cond_2a

    .line 1300
    .line 1301
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1302
    .line 1303
    :cond_2a
    new-instance v2, Landroid/text/StaticLayout;

    .line 1304
    .line 1305
    iget v14, v12, Lv3/j0;->e:F

    .line 1306
    .line 1307
    const/16 v31, 0x1

    .line 1308
    .line 1309
    iget v15, v12, Lv3/j0;->d:F

    .line 1310
    .line 1311
    move-object/from16 v24, v2

    .line 1312
    .line 1313
    move-object/from16 v25, v4

    .line 1314
    .line 1315
    move-object/from16 v26, v1

    .line 1316
    .line 1317
    move/from16 v27, v10

    .line 1318
    .line 1319
    move-object/from16 v28, v0

    .line 1320
    .line 1321
    move/from16 v29, v15

    .line 1322
    .line 1323
    move/from16 v30, v14

    .line 1324
    .line 1325
    invoke-direct/range {v24 .. v31}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1326
    .line 1327
    .line 1328
    iput-object v2, v12, Lv3/j0;->E:Landroid/text/StaticLayout;

    .line 1329
    .line 1330
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    .line 1331
    .line 1332
    .line 1333
    move-result v2

    .line 1334
    iget-object v14, v12, Lv3/j0;->E:Landroid/text/StaticLayout;

    .line 1335
    .line 1336
    invoke-virtual {v14}, Landroid/text/StaticLayout;->getLineCount()I

    .line 1337
    .line 1338
    .line 1339
    move-result v14

    .line 1340
    move/from16 v35, v3

    .line 1341
    .line 1342
    const/4 v3, 0x0

    .line 1343
    const/4 v15, 0x0

    .line 1344
    :goto_1e
    if-ge v15, v14, :cond_2b

    .line 1345
    .line 1346
    move/from16 v33, v5

    .line 1347
    .line 1348
    iget-object v5, v12, Lv3/j0;->E:Landroid/text/StaticLayout;

    .line 1349
    .line 1350
    invoke-virtual {v5, v15}, Landroid/text/Layout;->getLineWidth(I)F

    .line 1351
    .line 1352
    .line 1353
    move-result v5

    .line 1354
    move/from16 v34, v8

    .line 1355
    .line 1356
    move/from16 v37, v9

    .line 1357
    .line 1358
    float-to-double v8, v5

    .line 1359
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 1360
    .line 1361
    .line 1362
    move-result-wide v8

    .line 1363
    double-to-int v5, v8

    .line 1364
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 1365
    .line 1366
    .line 1367
    move-result v3

    .line 1368
    const/4 v5, 0x1

    .line 1369
    add-int/2addr v15, v5

    .line 1370
    move/from16 v5, v33

    .line 1371
    .line 1372
    move/from16 v8, v34

    .line 1373
    .line 1374
    move/from16 v9, v37

    .line 1375
    .line 1376
    goto :goto_1e

    .line 1377
    :cond_2b
    move/from16 v33, v5

    .line 1378
    .line 1379
    move/from16 v34, v8

    .line 1380
    .line 1381
    move/from16 v37, v9

    .line 1382
    .line 1383
    iget v5, v12, Lv3/j0;->q:F

    .line 1384
    .line 1385
    cmpl-float v5, v5, v38

    .line 1386
    .line 1387
    if-eqz v5, :cond_2c

    .line 1388
    .line 1389
    if-ge v3, v10, :cond_2c

    .line 1390
    .line 1391
    goto :goto_1f

    .line 1392
    :cond_2c
    move v10, v3

    .line 1393
    :goto_1f
    add-int/2addr v10, v11

    .line 1394
    iget v3, v12, Lv3/j0;->o:F

    .line 1395
    .line 1396
    cmpl-float v5, v3, v38

    .line 1397
    .line 1398
    if-eqz v5, :cond_2f

    .line 1399
    .line 1400
    int-to-float v5, v6

    .line 1401
    mul-float v5, v5, v3

    .line 1402
    .line 1403
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 1404
    .line 1405
    .line 1406
    move-result v3

    .line 1407
    iget v5, v12, Lv3/j0;->A:I

    .line 1408
    .line 1409
    add-int/2addr v3, v5

    .line 1410
    iget v6, v12, Lv3/j0;->p:I

    .line 1411
    .line 1412
    const/4 v8, 0x1

    .line 1413
    if-eq v6, v8, :cond_2e

    .line 1414
    .line 1415
    const/4 v8, 0x2

    .line 1416
    if-eq v6, v8, :cond_2d

    .line 1417
    .line 1418
    goto :goto_20

    .line 1419
    :cond_2d
    sub-int/2addr v3, v10

    .line 1420
    goto :goto_20

    .line 1421
    :cond_2e
    const/4 v8, 0x2

    .line 1422
    mul-int/lit8 v3, v3, 0x2

    .line 1423
    .line 1424
    sub-int/2addr v3, v10

    .line 1425
    div-int/2addr v3, v8

    .line 1426
    :goto_20
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 1427
    .line 1428
    .line 1429
    move-result v3

    .line 1430
    add-int/2addr v10, v3

    .line 1431
    iget v5, v12, Lv3/j0;->C:I

    .line 1432
    .line 1433
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    .line 1434
    .line 1435
    .line 1436
    move-result v5

    .line 1437
    goto :goto_21

    .line 1438
    :cond_2f
    const/4 v8, 0x2

    .line 1439
    sub-int/2addr v6, v10

    .line 1440
    div-int/2addr v6, v8

    .line 1441
    iget v3, v12, Lv3/j0;->A:I

    .line 1442
    .line 1443
    add-int/2addr v3, v6

    .line 1444
    add-int v5, v3, v10

    .line 1445
    .line 1446
    :goto_21
    sub-int/2addr v5, v3

    .line 1447
    if-gtz v5, :cond_30

    .line 1448
    .line 1449
    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 1450
    .line 1451
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    goto/16 :goto_19

    .line 1455
    .line 1456
    :cond_30
    iget v6, v12, Lv3/j0;->l:F

    .line 1457
    .line 1458
    cmpl-float v8, v6, v38

    .line 1459
    .line 1460
    if-eqz v8, :cond_36

    .line 1461
    .line 1462
    iget v8, v12, Lv3/j0;->m:I

    .line 1463
    .line 1464
    if-nez v8, :cond_33

    .line 1465
    .line 1466
    int-to-float v7, v7

    .line 1467
    mul-float v7, v7, v6

    .line 1468
    .line 1469
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 1470
    .line 1471
    .line 1472
    move-result v6

    .line 1473
    iget v7, v12, Lv3/j0;->B:I

    .line 1474
    .line 1475
    add-int/2addr v6, v7

    .line 1476
    iget v7, v12, Lv3/j0;->n:I

    .line 1477
    .line 1478
    const/4 v8, 0x2

    .line 1479
    if-ne v7, v8, :cond_31

    .line 1480
    .line 1481
    sub-int/2addr v6, v2

    .line 1482
    goto :goto_22

    .line 1483
    :cond_31
    const/4 v9, 0x1

    .line 1484
    if-ne v7, v9, :cond_32

    .line 1485
    .line 1486
    mul-int/lit8 v6, v6, 0x2

    .line 1487
    .line 1488
    sub-int/2addr v6, v2

    .line 1489
    div-int/2addr v6, v8

    .line 1490
    :cond_32
    :goto_22
    const/4 v8, 0x0

    .line 1491
    const/4 v9, 0x0

    .line 1492
    goto :goto_23

    .line 1493
    :cond_33
    iget-object v6, v12, Lv3/j0;->E:Landroid/text/StaticLayout;

    .line 1494
    .line 1495
    const/4 v8, 0x0

    .line 1496
    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineBottom(I)I

    .line 1497
    .line 1498
    .line 1499
    move-result v6

    .line 1500
    iget-object v7, v12, Lv3/j0;->E:Landroid/text/StaticLayout;

    .line 1501
    .line 1502
    invoke-virtual {v7, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 1503
    .line 1504
    .line 1505
    move-result v7

    .line 1506
    sub-int/2addr v6, v7

    .line 1507
    iget v7, v12, Lv3/j0;->l:F

    .line 1508
    .line 1509
    const/4 v9, 0x0

    .line 1510
    cmpl-float v10, v7, v9

    .line 1511
    .line 1512
    if-ltz v10, :cond_34

    .line 1513
    .line 1514
    int-to-float v6, v6

    .line 1515
    mul-float v7, v7, v6

    .line 1516
    .line 1517
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 1518
    .line 1519
    .line 1520
    move-result v6

    .line 1521
    iget v7, v12, Lv3/j0;->B:I

    .line 1522
    .line 1523
    add-int/2addr v6, v7

    .line 1524
    goto :goto_23

    .line 1525
    :cond_34
    add-float v7, v7, v17

    .line 1526
    .line 1527
    int-to-float v6, v6

    .line 1528
    mul-float v7, v7, v6

    .line 1529
    .line 1530
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 1531
    .line 1532
    .line 1533
    move-result v6

    .line 1534
    iget v7, v12, Lv3/j0;->D:I

    .line 1535
    .line 1536
    add-int/2addr v6, v7

    .line 1537
    sub-int/2addr v6, v2

    .line 1538
    :goto_23
    add-int v7, v6, v2

    .line 1539
    .line 1540
    iget v10, v12, Lv3/j0;->D:I

    .line 1541
    .line 1542
    if-le v7, v10, :cond_35

    .line 1543
    .line 1544
    sub-int v6, v10, v2

    .line 1545
    .line 1546
    goto :goto_24

    .line 1547
    :cond_35
    iget v2, v12, Lv3/j0;->B:I

    .line 1548
    .line 1549
    if-ge v6, v2, :cond_37

    .line 1550
    .line 1551
    move v6, v2

    .line 1552
    goto :goto_24

    .line 1553
    :cond_36
    const/4 v8, 0x0

    .line 1554
    const/4 v9, 0x0

    .line 1555
    iget v6, v12, Lv3/j0;->D:I

    .line 1556
    .line 1557
    sub-int/2addr v6, v2

    .line 1558
    int-to-float v2, v7

    .line 1559
    iget v7, v12, Lv3/j0;->z:F

    .line 1560
    .line 1561
    mul-float v2, v2, v7

    .line 1562
    .line 1563
    float-to-int v2, v2

    .line 1564
    sub-int/2addr v6, v2

    .line 1565
    :cond_37
    :goto_24
    new-instance v2, Landroid/text/StaticLayout;

    .line 1566
    .line 1567
    iget v7, v12, Lv3/j0;->e:F

    .line 1568
    .line 1569
    const/16 v31, 0x1

    .line 1570
    .line 1571
    iget v10, v12, Lv3/j0;->d:F

    .line 1572
    .line 1573
    move-object/from16 v24, v2

    .line 1574
    .line 1575
    move-object/from16 v25, v4

    .line 1576
    .line 1577
    move-object/from16 v26, v1

    .line 1578
    .line 1579
    move/from16 v27, v5

    .line 1580
    .line 1581
    move-object/from16 v28, v0

    .line 1582
    .line 1583
    move/from16 v29, v10

    .line 1584
    .line 1585
    move/from16 v30, v7

    .line 1586
    .line 1587
    invoke-direct/range {v24 .. v31}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1588
    .line 1589
    .line 1590
    iput-object v2, v12, Lv3/j0;->E:Landroid/text/StaticLayout;

    .line 1591
    .line 1592
    new-instance v2, Landroid/text/StaticLayout;

    .line 1593
    .line 1594
    iget v4, v12, Lv3/j0;->e:F

    .line 1595
    .line 1596
    iget v7, v12, Lv3/j0;->d:F

    .line 1597
    .line 1598
    move-object/from16 v24, v2

    .line 1599
    .line 1600
    move-object/from16 v25, v13

    .line 1601
    .line 1602
    move/from16 v29, v7

    .line 1603
    .line 1604
    move/from16 v30, v4

    .line 1605
    .line 1606
    invoke-direct/range {v24 .. v31}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1607
    .line 1608
    .line 1609
    iput-object v2, v12, Lv3/j0;->F:Landroid/text/StaticLayout;

    .line 1610
    .line 1611
    iput v3, v12, Lv3/j0;->G:I

    .line 1612
    .line 1613
    iput v6, v12, Lv3/j0;->H:I

    .line 1614
    .line 1615
    move/from16 v0, v37

    .line 1616
    .line 1617
    iput v0, v12, Lv3/j0;->I:I

    .line 1618
    .line 1619
    :goto_25
    move-object/from16 v0, p1

    .line 1620
    .line 1621
    move/from16 v1, v32

    .line 1622
    .line 1623
    const/4 v3, 0x2

    .line 1624
    goto/16 :goto_2b

    .line 1625
    .line 1626
    :cond_38
    move/from16 v40, v0

    .line 1627
    .line 1628
    move/from16 v36, v2

    .line 1629
    .line 1630
    move/from16 v35, v3

    .line 1631
    .line 1632
    move/from16 v33, v5

    .line 1633
    .line 1634
    move/from16 v34, v8

    .line 1635
    .line 1636
    const/4 v8, 0x0

    .line 1637
    const/4 v9, 0x0

    .line 1638
    iget-object v0, v12, Lv3/j0;->k:Landroid/graphics/Bitmap;

    .line 1639
    .line 1640
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1641
    .line 1642
    .line 1643
    iget-object v0, v12, Lv3/j0;->k:Landroid/graphics/Bitmap;

    .line 1644
    .line 1645
    iget v1, v12, Lv3/j0;->C:I

    .line 1646
    .line 1647
    iget v2, v12, Lv3/j0;->A:I

    .line 1648
    .line 1649
    sub-int/2addr v1, v2

    .line 1650
    iget v3, v12, Lv3/j0;->D:I

    .line 1651
    .line 1652
    iget v4, v12, Lv3/j0;->B:I

    .line 1653
    .line 1654
    sub-int/2addr v3, v4

    .line 1655
    int-to-float v2, v2

    .line 1656
    int-to-float v1, v1

    .line 1657
    iget v5, v12, Lv3/j0;->o:F

    .line 1658
    .line 1659
    mul-float v5, v5, v1

    .line 1660
    .line 1661
    add-float/2addr v5, v2

    .line 1662
    int-to-float v2, v4

    .line 1663
    int-to-float v3, v3

    .line 1664
    iget v4, v12, Lv3/j0;->l:F

    .line 1665
    .line 1666
    mul-float v4, v4, v3

    .line 1667
    .line 1668
    add-float/2addr v4, v2

    .line 1669
    iget v2, v12, Lv3/j0;->q:F

    .line 1670
    .line 1671
    mul-float v1, v1, v2

    .line 1672
    .line 1673
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1674
    .line 1675
    .line 1676
    move-result v1

    .line 1677
    iget v2, v12, Lv3/j0;->r:F

    .line 1678
    .line 1679
    cmpl-float v6, v2, v38

    .line 1680
    .line 1681
    if-eqz v6, :cond_39

    .line 1682
    .line 1683
    mul-float v3, v3, v2

    .line 1684
    .line 1685
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 1686
    .line 1687
    .line 1688
    move-result v0

    .line 1689
    goto :goto_26

    .line 1690
    :cond_39
    int-to-float v2, v1

    .line 1691
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1692
    .line 1693
    .line 1694
    move-result v3

    .line 1695
    int-to-float v3, v3

    .line 1696
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1697
    .line 1698
    .line 1699
    move-result v0

    .line 1700
    int-to-float v0, v0

    .line 1701
    div-float/2addr v3, v0

    .line 1702
    mul-float v3, v3, v2

    .line 1703
    .line 1704
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 1705
    .line 1706
    .line 1707
    move-result v0

    .line 1708
    :goto_26
    iget v2, v12, Lv3/j0;->p:I

    .line 1709
    .line 1710
    const/4 v3, 0x2

    .line 1711
    if-ne v2, v3, :cond_3a

    .line 1712
    .line 1713
    int-to-float v2, v1

    .line 1714
    :goto_27
    sub-float/2addr v5, v2

    .line 1715
    goto :goto_28

    .line 1716
    :cond_3a
    const/4 v6, 0x1

    .line 1717
    if-ne v2, v6, :cond_3b

    .line 1718
    .line 1719
    div-int/lit8 v2, v1, 0x2

    .line 1720
    .line 1721
    int-to-float v2, v2

    .line 1722
    goto :goto_27

    .line 1723
    :cond_3b
    :goto_28
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 1724
    .line 1725
    .line 1726
    move-result v2

    .line 1727
    iget v5, v12, Lv3/j0;->n:I

    .line 1728
    .line 1729
    if-ne v5, v3, :cond_3c

    .line 1730
    .line 1731
    int-to-float v5, v0

    .line 1732
    :goto_29
    sub-float/2addr v4, v5

    .line 1733
    goto :goto_2a

    .line 1734
    :cond_3c
    const/4 v6, 0x1

    .line 1735
    if-ne v5, v6, :cond_3d

    .line 1736
    .line 1737
    div-int/lit8 v5, v0, 0x2

    .line 1738
    .line 1739
    int-to-float v5, v5

    .line 1740
    goto :goto_29

    .line 1741
    :cond_3d
    :goto_2a
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 1742
    .line 1743
    .line 1744
    move-result v4

    .line 1745
    new-instance v5, Landroid/graphics/Rect;

    .line 1746
    .line 1747
    add-int/2addr v1, v2

    .line 1748
    add-int/2addr v0, v4

    .line 1749
    invoke-direct {v5, v2, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1750
    .line 1751
    .line 1752
    iput-object v5, v12, Lv3/j0;->J:Landroid/graphics/Rect;

    .line 1753
    .line 1754
    move-object/from16 v0, p1

    .line 1755
    .line 1756
    move/from16 v1, v32

    .line 1757
    .line 1758
    :goto_2b
    invoke-virtual {v12, v0, v1}, Lv3/j0;->a(Landroid/graphics/Canvas;Z)V

    .line 1759
    .line 1760
    .line 1761
    const/4 v1, 0x1

    .line 1762
    :goto_2c
    add-int/lit8 v15, v23, 0x1

    .line 1763
    .line 1764
    move-object v1, v0

    .line 1765
    move-object/from16 v4, v19

    .line 1766
    .line 1767
    move/from16 v5, v20

    .line 1768
    .line 1769
    move/from16 v10, v21

    .line 1770
    .line 1771
    move/from16 v14, v22

    .line 1772
    .line 1773
    move/from16 v9, v33

    .line 1774
    .line 1775
    move/from16 v8, v34

    .line 1776
    .line 1777
    move/from16 v7, v35

    .line 1778
    .line 1779
    move/from16 v6, v36

    .line 1780
    .line 1781
    move/from16 v11, v40

    .line 1782
    .line 1783
    const/4 v2, 0x2

    .line 1784
    const/4 v12, 0x0

    .line 1785
    const/4 v13, 0x0

    .line 1786
    move-object/from16 v0, p0

    .line 1787
    .line 1788
    goto/16 :goto_0

    .line 1789
    .line 1790
    :cond_3e
    :goto_2d
    return-void
.end method
