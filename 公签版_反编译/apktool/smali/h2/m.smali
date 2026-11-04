.class public final Lh2/m;
.super Lh2/l;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:Ljava/lang/String;

.field public final e:Z

.field public final f:Lh2/i;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:I

.field public final t:Z

.field public final v:I

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:I


# direct methods
.method public constructor <init>(ILr1/r0;ILh2/i;ILjava/lang/String;IZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, -0x1

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    invoke-direct/range {p0 .. p3}, Lh2/l;-><init>(ILr1/r0;I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lh2/m;->f:Lh2/i;

    .line 16
    .line 17
    iget-boolean v9, v1, Lh2/i;->y:Z

    .line 18
    .line 19
    if-eqz v9, :cond_0

    .line 20
    .line 21
    const/16 v9, 0x18

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v9, 0x10

    .line 25
    .line 26
    :goto_0
    iput-boolean v7, v0, Lh2/m;->t:Z

    .line 27
    .line 28
    const/high16 v10, -0x40800000    # -1.0f

    .line 29
    .line 30
    if-eqz p8, :cond_5

    .line 31
    .line 32
    iget-object v11, v0, Lh2/l;->d:Lr1/p;

    .line 33
    .line 34
    iget v12, v11, Lr1/p;->v:I

    .line 35
    .line 36
    if-eq v12, v5, :cond_1

    .line 37
    .line 38
    iget v13, v1, Lr1/v0;->a:I

    .line 39
    .line 40
    if-gt v12, v13, :cond_5

    .line 41
    .line 42
    :cond_1
    iget v12, v11, Lr1/p;->w:I

    .line 43
    .line 44
    if-eq v12, v5, :cond_2

    .line 45
    .line 46
    iget v13, v1, Lr1/v0;->b:I

    .line 47
    .line 48
    if-gt v12, v13, :cond_5

    .line 49
    .line 50
    :cond_2
    iget v12, v11, Lr1/p;->z:F

    .line 51
    .line 52
    cmpl-float v13, v12, v10

    .line 53
    .line 54
    if-eqz v13, :cond_3

    .line 55
    .line 56
    iget v13, v1, Lr1/v0;->c:I

    .line 57
    .line 58
    int-to-float v13, v13

    .line 59
    cmpg-float v12, v12, v13

    .line 60
    .line 61
    if-gtz v12, :cond_5

    .line 62
    .line 63
    :cond_3
    iget v11, v11, Lr1/p;->j:I

    .line 64
    .line 65
    if-eq v11, v5, :cond_4

    .line 66
    .line 67
    iget v12, v1, Lr1/v0;->d:I

    .line 68
    .line 69
    if-gt v11, v12, :cond_5

    .line 70
    .line 71
    :cond_4
    const/4 v11, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    const/4 v11, 0x0

    .line 74
    :goto_1
    iput-boolean v11, v0, Lh2/m;->e:Z

    .line 75
    .line 76
    if-eqz p8, :cond_a

    .line 77
    .line 78
    iget-object v11, v0, Lh2/l;->d:Lr1/p;

    .line 79
    .line 80
    iget v12, v11, Lr1/p;->v:I

    .line 81
    .line 82
    if-eq v12, v5, :cond_6

    .line 83
    .line 84
    if-ltz v12, :cond_a

    .line 85
    .line 86
    :cond_6
    iget v12, v11, Lr1/p;->w:I

    .line 87
    .line 88
    if-eq v12, v5, :cond_7

    .line 89
    .line 90
    if-ltz v12, :cond_a

    .line 91
    .line 92
    :cond_7
    iget v12, v11, Lr1/p;->z:F

    .line 93
    .line 94
    cmpl-float v13, v12, v10

    .line 95
    .line 96
    if-eqz v13, :cond_8

    .line 97
    .line 98
    int-to-float v13, v7

    .line 99
    cmpl-float v12, v12, v13

    .line 100
    .line 101
    if-ltz v12, :cond_a

    .line 102
    .line 103
    :cond_8
    iget v11, v11, Lr1/p;->j:I

    .line 104
    .line 105
    if-eq v11, v5, :cond_9

    .line 106
    .line 107
    if-ltz v11, :cond_a

    .line 108
    .line 109
    :cond_9
    const/4 v11, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_a
    const/4 v11, 0x0

    .line 112
    :goto_2
    iput-boolean v11, v0, Lh2/m;->g:Z

    .line 113
    .line 114
    invoke-static {v2, v7}, Lta/q;->f(IZ)Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    iput-boolean v11, v0, Lh2/m;->h:Z

    .line 119
    .line 120
    iget-object v11, v0, Lh2/l;->d:Lr1/p;

    .line 121
    .line 122
    iget v12, v11, Lr1/p;->z:F

    .line 123
    .line 124
    cmpl-float v10, v12, v10

    .line 125
    .line 126
    if-eqz v10, :cond_b

    .line 127
    .line 128
    const/high16 v10, 0x41200000    # 10.0f

    .line 129
    .line 130
    cmpl-float v10, v12, v10

    .line 131
    .line 132
    if-ltz v10, :cond_b

    .line 133
    .line 134
    const/4 v10, 0x1

    .line 135
    goto :goto_3

    .line 136
    :cond_b
    const/4 v10, 0x0

    .line 137
    :goto_3
    iput-boolean v10, v0, Lh2/m;->i:Z

    .line 138
    .line 139
    iget v10, v11, Lr1/p;->j:I

    .line 140
    .line 141
    iput v10, v0, Lh2/m;->j:I

    .line 142
    .line 143
    invoke-virtual {v11}, Lr1/p;->b()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    iput v10, v0, Lh2/m;->k:I

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    :goto_4
    iget-object v11, v1, Lr1/v0;->k:Lu7/y0;

    .line 151
    .line 152
    invoke-virtual {v11}, Lu7/y0;->size()I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    const v13, 0x7fffffff

    .line 157
    .line 158
    .line 159
    if-ge v10, v12, :cond_d

    .line 160
    .line 161
    iget-object v12, v0, Lh2/l;->d:Lr1/p;

    .line 162
    .line 163
    invoke-virtual {v11, v10}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    check-cast v11, Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v12, v11, v7}, Lh2/n;->j(Lr1/p;Ljava/lang/String;Z)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-lez v11, :cond_c

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_c
    add-int/2addr v10, v8

    .line 177
    goto :goto_4

    .line 178
    :cond_d
    const v10, 0x7fffffff

    .line 179
    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    :goto_5
    iput v10, v0, Lh2/m;->m:I

    .line 183
    .line 184
    iput v11, v0, Lh2/m;->n:I

    .line 185
    .line 186
    iget-object v10, v0, Lh2/l;->d:Lr1/p;

    .line 187
    .line 188
    iget v10, v10, Lr1/p;->f:I

    .line 189
    .line 190
    invoke-static {v10, v7}, Lh2/n;->c(II)I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    iput v10, v0, Lh2/m;->p:I

    .line 195
    .line 196
    iget-object v10, v0, Lh2/l;->d:Lr1/p;

    .line 197
    .line 198
    iget v10, v10, Lr1/p;->f:I

    .line 199
    .line 200
    if-eqz v10, :cond_f

    .line 201
    .line 202
    and-int/2addr v10, v8

    .line 203
    if-eqz v10, :cond_e

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_e
    const/4 v10, 0x0

    .line 207
    goto :goto_7

    .line 208
    :cond_f
    :goto_6
    const/4 v10, 0x1

    .line 209
    :goto_7
    iput-boolean v10, v0, Lh2/m;->r:Z

    .line 210
    .line 211
    invoke-static/range {p6 .. p6}, Lh2/n;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    if-nez v10, :cond_10

    .line 216
    .line 217
    const/4 v10, 0x1

    .line 218
    goto :goto_8

    .line 219
    :cond_10
    const/4 v10, 0x0

    .line 220
    :goto_8
    iget-object v11, v0, Lh2/l;->d:Lr1/p;

    .line 221
    .line 222
    move-object/from16 v12, p6

    .line 223
    .line 224
    invoke-static {v11, v12, v10}, Lh2/n;->j(Lr1/p;Ljava/lang/String;Z)I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    iput v10, v0, Lh2/m;->s:I

    .line 229
    .line 230
    iget-object v10, v0, Lh2/l;->d:Lr1/p;

    .line 231
    .line 232
    iget-object v10, v10, Lr1/p;->o:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static/range {p5 .. p5}, Lta/q;->b(I)I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    const/16 v12, 0x100

    .line 239
    .line 240
    if-ne v11, v12, :cond_11

    .line 241
    .line 242
    iget-object v14, v0, Lh2/l;->d:Lr1/p;

    .line 243
    .line 244
    invoke-static {v14}, Ld2/c0;->c(Lr1/p;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    if-eqz v14, :cond_11

    .line 249
    .line 250
    move-object v10, v14

    .line 251
    :cond_11
    const/4 v14, 0x0

    .line 252
    :goto_9
    iget-object v15, v1, Lr1/v0;->i:Lu7/y0;

    .line 253
    .line 254
    invoke-virtual {v15}, Lu7/y0;->size()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-ge v14, v3, :cond_13

    .line 259
    .line 260
    if-eqz v10, :cond_12

    .line 261
    .line 262
    invoke-virtual {v15, v14}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_12

    .line 271
    .line 272
    move v13, v14

    .line 273
    goto :goto_a

    .line 274
    :cond_12
    add-int/2addr v14, v8

    .line 275
    goto :goto_9

    .line 276
    :cond_13
    :goto_a
    iput v13, v0, Lh2/m;->l:I

    .line 277
    .line 278
    iget-object v3, v0, Lh2/l;->d:Lr1/p;

    .line 279
    .line 280
    iget-object v1, v1, Lr1/v0;->j:Lu7/y0;

    .line 281
    .line 282
    invoke-static {v3, v1}, Lh2/n;->d(Lr1/p;Lu7/y0;)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    iput v1, v0, Lh2/m;->q:I

    .line 287
    .line 288
    const/16 v1, 0x80

    .line 289
    .line 290
    if-eq v11, v1, :cond_15

    .line 291
    .line 292
    if-ne v11, v12, :cond_14

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_14
    const/4 v3, 0x0

    .line 296
    goto :goto_c

    .line 297
    :cond_15
    :goto_b
    const/4 v3, 0x1

    .line 298
    :goto_c
    iput-boolean v3, v0, Lh2/m;->w:Z

    .line 299
    .line 300
    if-ne v11, v1, :cond_16

    .line 301
    .line 302
    const/4 v1, 0x1

    .line 303
    goto :goto_d

    .line 304
    :cond_16
    const/4 v1, 0x0

    .line 305
    :goto_d
    iput-boolean v1, v0, Lh2/m;->x:Z

    .line 306
    .line 307
    invoke-static/range {p5 .. p5}, Lta/q;->c(I)I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    const/16 v11, 0x40

    .line 312
    .line 313
    if-ne v3, v11, :cond_17

    .line 314
    .line 315
    const/4 v3, 0x1

    .line 316
    goto :goto_e

    .line 317
    :cond_17
    const/4 v3, 0x0

    .line 318
    :goto_e
    iput-boolean v3, v0, Lh2/m;->y:Z

    .line 319
    .line 320
    iput-object v10, v0, Lh2/m;->B:Ljava/lang/String;

    .line 321
    .line 322
    if-nez v10, :cond_18

    .line 323
    .line 324
    :goto_f
    const/4 v3, 0x0

    .line 325
    goto :goto_12

    .line 326
    :cond_18
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    sparse-switch v3, :sswitch_data_0

    .line 331
    .line 332
    .line 333
    :goto_10
    const/4 v3, -0x1

    .line 334
    goto :goto_11

    .line 335
    :sswitch_0
    const-string v3, "video/x-vnd.on2.vp9"

    .line 336
    .line 337
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-nez v3, :cond_19

    .line 342
    .line 343
    goto :goto_10

    .line 344
    :cond_19
    const/4 v3, 0x4

    .line 345
    goto :goto_11

    .line 346
    :sswitch_1
    const-string v3, "video/avc"

    .line 347
    .line 348
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-nez v3, :cond_1a

    .line 353
    .line 354
    goto :goto_10

    .line 355
    :cond_1a
    const/4 v3, 0x3

    .line 356
    goto :goto_11

    .line 357
    :sswitch_2
    const-string v3, "video/hevc"

    .line 358
    .line 359
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-nez v3, :cond_1b

    .line 364
    .line 365
    goto :goto_10

    .line 366
    :cond_1b
    const/4 v3, 0x2

    .line 367
    goto :goto_11

    .line 368
    :sswitch_3
    const-string v3, "video/av01"

    .line 369
    .line 370
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-nez v3, :cond_1c

    .line 375
    .line 376
    goto :goto_10

    .line 377
    :cond_1c
    const/4 v3, 0x1

    .line 378
    goto :goto_11

    .line 379
    :sswitch_4
    const-string v3, "video/dolby-vision"

    .line 380
    .line 381
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-nez v3, :cond_1d

    .line 386
    .line 387
    goto :goto_10

    .line 388
    :cond_1d
    const/4 v3, 0x0

    .line 389
    :goto_11
    packed-switch v3, :pswitch_data_0

    .line 390
    .line 391
    .line 392
    goto :goto_f

    .line 393
    :pswitch_0
    const/4 v3, 0x2

    .line 394
    goto :goto_12

    .line 395
    :pswitch_1
    const/4 v3, 0x1

    .line 396
    goto :goto_12

    .line 397
    :pswitch_2
    const/4 v3, 0x3

    .line 398
    goto :goto_12

    .line 399
    :pswitch_3
    const/4 v3, 0x4

    .line 400
    goto :goto_12

    .line 401
    :pswitch_4
    const/4 v3, 0x5

    .line 402
    :goto_12
    iput v3, v0, Lh2/m;->z:I

    .line 403
    .line 404
    if-eqz v1, :cond_1e

    .line 405
    .line 406
    iget-object v1, v0, Lh2/l;->d:Lr1/p;

    .line 407
    .line 408
    iget-object v1, v1, Lr1/p;->E:Lr1/g;

    .line 409
    .line 410
    invoke-static {v1}, Lr1/g;->f(Lr1/g;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_1e

    .line 415
    .line 416
    const/4 v1, 0x1

    .line 417
    goto :goto_13

    .line 418
    :cond_1e
    const/4 v1, 0x0

    .line 419
    :goto_13
    iput-boolean v1, v0, Lh2/m;->A:Z

    .line 420
    .line 421
    iget-object v1, v0, Lh2/l;->d:Lr1/p;

    .line 422
    .line 423
    iget v3, v1, Lr1/p;->f:I

    .line 424
    .line 425
    and-int/lit16 v3, v3, 0x4000

    .line 426
    .line 427
    if-eqz v3, :cond_1f

    .line 428
    .line 429
    goto :goto_15

    .line 430
    :cond_1f
    iget-object v3, v0, Lh2/m;->f:Lh2/i;

    .line 431
    .line 432
    iget-boolean v4, v3, Lh2/i;->C:Z

    .line 433
    .line 434
    invoke-static {v2, v4}, Lta/q;->f(IZ)Z

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    if-nez v4, :cond_20

    .line 439
    .line 440
    goto :goto_15

    .line 441
    :cond_20
    iget-boolean v4, v0, Lh2/m;->e:Z

    .line 442
    .line 443
    if-nez v4, :cond_21

    .line 444
    .line 445
    iget-boolean v3, v3, Lh2/i;->x:Z

    .line 446
    .line 447
    if-nez v3, :cond_21

    .line 448
    .line 449
    goto :goto_15

    .line 450
    :cond_21
    invoke-static {v2, v7}, Lta/q;->f(IZ)Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eqz v3, :cond_22

    .line 455
    .line 456
    iget-boolean v3, v0, Lh2/m;->g:Z

    .line 457
    .line 458
    if-eqz v3, :cond_22

    .line 459
    .line 460
    if-eqz v4, :cond_22

    .line 461
    .line 462
    iget v1, v1, Lr1/p;->j:I

    .line 463
    .line 464
    if-eq v1, v5, :cond_22

    .line 465
    .line 466
    and-int v1, v2, v9

    .line 467
    .line 468
    if-eqz v1, :cond_22

    .line 469
    .line 470
    goto :goto_14

    .line 471
    :cond_22
    const/4 v6, 0x1

    .line 472
    :goto_14
    move v7, v6

    .line 473
    :goto_15
    iput v7, v0, Lh2/m;->v:I

    .line 474
    .line 475
    return-void

    .line 476
    nop

    .line 477
    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lh2/m;Lh2/m;)I
    .locals 4

    .line 1
    sget-object v0, Lu7/y;->a:Lu7/w;

    .line 2
    .line 3
    iget-boolean v1, p0, Lh2/m;->h:Z

    .line 4
    .line 5
    iget-boolean v2, p1, Lh2/m;->h:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lu7/w;->c(ZZ)Lu7/y;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lh2/m;->m:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p1, Lh2/m;->m:I

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lu7/w0;->a:Lu7/w0;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v3, Lu7/g1;->a:Lu7/g1;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, Lh2/m;->n:I

    .line 35
    .line 36
    iget v2, p1, Lh2/m;->n:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lu7/y;->a(II)Lu7/y;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v1, p0, Lh2/m;->p:I

    .line 43
    .line 44
    iget v2, p1, Lh2/m;->p:I

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lu7/y;->a(II)Lu7/y;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v1, p0, Lh2/m;->q:I

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v2, p1, Lh2/m;->q:I

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-boolean v1, p0, Lh2/m;->r:Z

    .line 67
    .line 68
    iget-boolean v2, p1, Lh2/m;->r:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lu7/y;->c(ZZ)Lu7/y;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v1, p0, Lh2/m;->s:I

    .line 75
    .line 76
    iget v2, p1, Lh2/m;->s:I

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lu7/y;->a(II)Lu7/y;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-boolean v1, p0, Lh2/m;->i:Z

    .line 83
    .line 84
    iget-boolean v2, p1, Lh2/m;->i:Z

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lu7/y;->c(ZZ)Lu7/y;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-boolean v1, p0, Lh2/m;->e:Z

    .line 91
    .line 92
    iget-boolean v2, p1, Lh2/m;->e:Z

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lu7/y;->c(ZZ)Lu7/y;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-boolean v1, p0, Lh2/m;->g:Z

    .line 99
    .line 100
    iget-boolean v2, p1, Lh2/m;->g:Z

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lu7/y;->c(ZZ)Lu7/y;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v1, p0, Lh2/m;->l:I

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget v2, p1, Lh2/m;->l:I

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Lu7/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu7/y;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-boolean v1, p0, Lh2/m;->w:Z

    .line 123
    .line 124
    iget-boolean v2, p1, Lh2/m;->w:Z

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Lu7/y;->c(ZZ)Lu7/y;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-boolean p0, p0, Lh2/m;->y:Z

    .line 131
    .line 132
    iget-boolean p1, p1, Lh2/m;->y:Z

    .line 133
    .line 134
    invoke-virtual {v0, p0, p1}, Lu7/y;->c(ZZ)Lu7/y;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Lu7/y;->e()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lh2/m;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public final b(Lh2/l;)Z
    .locals 2

    .line 1
    check-cast p1, Lh2/m;

    .line 2
    .line 3
    iget-boolean v0, p0, Lh2/m;->t:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lh2/m;->B:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Lh2/m;->B:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lh2/m;->f:Lh2/i;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p1, Lh2/m;->w:Z

    .line 23
    .line 24
    iget-boolean v1, p0, Lh2/m;->w:Z

    .line 25
    .line 26
    if-ne v1, v0, :cond_1

    .line 27
    .line 28
    iget-boolean v0, p0, Lh2/m;->y:Z

    .line 29
    .line 30
    iget-boolean p1, p1, Lh2/m;->y:Z

    .line 31
    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    return p1
.end method
