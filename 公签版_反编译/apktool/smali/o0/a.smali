.class public final Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo0/a;->a:F

    .line 5
    .line 6
    iput p2, p0, Lo0/a;->b:F

    .line 7
    .line 8
    iput p3, p0, Lo0/a;->c:F

    .line 9
    .line 10
    iput p4, p0, Lo0/a;->d:F

    .line 11
    .line 12
    iput p5, p0, Lo0/a;->e:F

    .line 13
    .line 14
    iput p6, p0, Lo0/a;->f:F

    .line 15
    .line 16
    return-void
.end method

.method public static a(I)Lo0/a;
    .locals 21

    .line 1
    sget-object v0, Lo0/p;->k:Lo0/p;

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lo0/b;->f(I)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Lo0/b;->f(I)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Lo0/b;->f(I)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sget-object v4, Lo0/b;->d:[[F

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    aget-object v6, v4, v5

    .line 31
    .line 32
    aget v7, v6, v5

    .line 33
    .line 34
    mul-float v7, v7, v1

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    aget v9, v6, v8

    .line 38
    .line 39
    mul-float v9, v9, v2

    .line 40
    .line 41
    add-float/2addr v9, v7

    .line 42
    const/4 v7, 0x2

    .line 43
    aget v6, v6, v7

    .line 44
    .line 45
    mul-float v6, v6, v3

    .line 46
    .line 47
    add-float/2addr v6, v9

    .line 48
    aget-object v9, v4, v8

    .line 49
    .line 50
    aget v10, v9, v5

    .line 51
    .line 52
    mul-float v10, v10, v1

    .line 53
    .line 54
    aget v11, v9, v8

    .line 55
    .line 56
    mul-float v11, v11, v2

    .line 57
    .line 58
    add-float/2addr v11, v10

    .line 59
    aget v9, v9, v7

    .line 60
    .line 61
    mul-float v9, v9, v3

    .line 62
    .line 63
    add-float/2addr v9, v11

    .line 64
    aget-object v4, v4, v7

    .line 65
    .line 66
    aget v10, v4, v5

    .line 67
    .line 68
    mul-float v1, v1, v10

    .line 69
    .line 70
    aget v10, v4, v8

    .line 71
    .line 72
    mul-float v2, v2, v10

    .line 73
    .line 74
    add-float/2addr v2, v1

    .line 75
    aget v1, v4, v7

    .line 76
    .line 77
    mul-float v3, v3, v1

    .line 78
    .line 79
    add-float/2addr v3, v2

    .line 80
    sget-object v1, Lo0/b;->a:[[F

    .line 81
    .line 82
    aget-object v2, v1, v5

    .line 83
    .line 84
    aget v4, v2, v5

    .line 85
    .line 86
    mul-float v4, v4, v6

    .line 87
    .line 88
    aget v10, v2, v8

    .line 89
    .line 90
    mul-float v10, v10, v9

    .line 91
    .line 92
    add-float/2addr v10, v4

    .line 93
    aget v2, v2, v7

    .line 94
    .line 95
    mul-float v2, v2, v3

    .line 96
    .line 97
    add-float/2addr v2, v10

    .line 98
    aget-object v4, v1, v8

    .line 99
    .line 100
    aget v10, v4, v5

    .line 101
    .line 102
    mul-float v10, v10, v6

    .line 103
    .line 104
    aget v11, v4, v8

    .line 105
    .line 106
    mul-float v11, v11, v9

    .line 107
    .line 108
    add-float/2addr v11, v10

    .line 109
    aget v4, v4, v7

    .line 110
    .line 111
    mul-float v4, v4, v3

    .line 112
    .line 113
    add-float/2addr v4, v11

    .line 114
    aget-object v1, v1, v7

    .line 115
    .line 116
    aget v10, v1, v5

    .line 117
    .line 118
    mul-float v6, v6, v10

    .line 119
    .line 120
    aget v10, v1, v8

    .line 121
    .line 122
    mul-float v9, v9, v10

    .line 123
    .line 124
    add-float/2addr v9, v6

    .line 125
    aget v1, v1, v7

    .line 126
    .line 127
    mul-float v3, v3, v1

    .line 128
    .line 129
    add-float/2addr v3, v9

    .line 130
    iget-object v1, v0, Lo0/p;->g:[F

    .line 131
    .line 132
    aget v5, v1, v5

    .line 133
    .line 134
    mul-float v5, v5, v2

    .line 135
    .line 136
    aget v2, v1, v8

    .line 137
    .line 138
    mul-float v2, v2, v4

    .line 139
    .line 140
    aget v1, v1, v7

    .line 141
    .line 142
    mul-float v1, v1, v3

    .line 143
    .line 144
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iget v4, v0, Lo0/p;->h:F

    .line 149
    .line 150
    mul-float v3, v3, v4

    .line 151
    .line 152
    float-to-double v6, v3

    .line 153
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 154
    .line 155
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 156
    .line 157
    .line 158
    div-double/2addr v6, v8

    .line 159
    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    double-to-float v3, v6

    .line 169
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    mul-float v6, v6, v4

    .line 174
    .line 175
    float-to-double v6, v6

    .line 176
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 177
    .line 178
    .line 179
    div-double/2addr v6, v8

    .line 180
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 181
    .line 182
    .line 183
    move-result-wide v6

    .line 184
    double-to-float v6, v6

    .line 185
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    mul-float v7, v7, v4

    .line 190
    .line 191
    float-to-double v12, v7

    .line 192
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 193
    .line 194
    .line 195
    div-double/2addr v12, v8

    .line 196
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 197
    .line 198
    .line 199
    move-result-wide v10

    .line 200
    double-to-float v4, v10

    .line 201
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    const/high16 v7, 0x43c80000    # 400.0f

    .line 206
    .line 207
    mul-float v5, v5, v7

    .line 208
    .line 209
    mul-float v5, v5, v3

    .line 210
    .line 211
    const v10, 0x41d90a3d    # 27.13f

    .line 212
    .line 213
    .line 214
    add-float/2addr v3, v10

    .line 215
    div-float/2addr v5, v3

    .line 216
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    mul-float v2, v2, v7

    .line 221
    .line 222
    mul-float v2, v2, v6

    .line 223
    .line 224
    add-float/2addr v6, v10

    .line 225
    div-float/2addr v2, v6

    .line 226
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    mul-float v1, v1, v7

    .line 231
    .line 232
    mul-float v1, v1, v4

    .line 233
    .line 234
    add-float/2addr v4, v10

    .line 235
    div-float/2addr v1, v4

    .line 236
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    .line 237
    .line 238
    float-to-double v6, v5

    .line 239
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 240
    .line 241
    .line 242
    mul-double v6, v6, v3

    .line 243
    .line 244
    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    .line 245
    .line 246
    float-to-double v10, v2

    .line 247
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 248
    .line 249
    .line 250
    mul-double v10, v10, v3

    .line 251
    .line 252
    add-double/2addr v10, v6

    .line 253
    float-to-double v3, v1

    .line 254
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 255
    .line 256
    .line 257
    add-double/2addr v10, v3

    .line 258
    double-to-float v6, v10

    .line 259
    const/high16 v7, 0x41300000    # 11.0f

    .line 260
    .line 261
    div-float/2addr v6, v7

    .line 262
    add-float v7, v5, v2

    .line 263
    .line 264
    float-to-double v10, v7

    .line 265
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 266
    .line 267
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 268
    .line 269
    .line 270
    mul-double v3, v3, v12

    .line 271
    .line 272
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 273
    .line 274
    .line 275
    sub-double/2addr v10, v3

    .line 276
    double-to-float v3, v10

    .line 277
    const/high16 v4, 0x41100000    # 9.0f

    .line 278
    .line 279
    div-float/2addr v3, v4

    .line 280
    const/high16 v4, 0x41a00000    # 20.0f

    .line 281
    .line 282
    mul-float v7, v5, v4

    .line 283
    .line 284
    mul-float v2, v2, v4

    .line 285
    .line 286
    add-float/2addr v7, v2

    .line 287
    const/high16 v10, 0x41a80000    # 21.0f

    .line 288
    .line 289
    mul-float v10, v10, v1

    .line 290
    .line 291
    add-float/2addr v10, v7

    .line 292
    div-float/2addr v10, v4

    .line 293
    const/high16 v7, 0x42200000    # 40.0f

    .line 294
    .line 295
    mul-float v5, v5, v7

    .line 296
    .line 297
    add-float/2addr v5, v2

    .line 298
    add-float/2addr v5, v1

    .line 299
    div-float/2addr v5, v4

    .line 300
    float-to-double v1, v3

    .line 301
    float-to-double v14, v6

    .line 302
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 303
    .line 304
    .line 305
    move-result-wide v1

    .line 306
    double-to-float v1, v1

    .line 307
    const/high16 v2, 0x43340000    # 180.0f

    .line 308
    .line 309
    mul-float v1, v1, v2

    .line 310
    .line 311
    const v4, 0x40490fdb    # (float)Math.PI

    .line 312
    .line 313
    .line 314
    div-float/2addr v1, v4

    .line 315
    const/4 v7, 0x0

    .line 316
    const/high16 v11, 0x43b40000    # 360.0f

    .line 317
    .line 318
    cmpg-float v7, v1, v7

    .line 319
    .line 320
    if-gez v7, :cond_1

    .line 321
    .line 322
    add-float/2addr v1, v11

    .line 323
    :cond_0
    :goto_0
    move v15, v1

    .line 324
    goto :goto_1

    .line 325
    :cond_1
    cmpl-float v7, v1, v11

    .line 326
    .line 327
    if-ltz v7, :cond_0

    .line 328
    .line 329
    sub-float/2addr v1, v11

    .line 330
    goto :goto_0

    .line 331
    :goto_1
    mul-float v4, v4, v15

    .line 332
    .line 333
    div-float/2addr v4, v2

    .line 334
    iget v1, v0, Lo0/p;->b:F

    .line 335
    .line 336
    mul-float v5, v5, v1

    .line 337
    .line 338
    iget v1, v0, Lo0/p;->a:F

    .line 339
    .line 340
    div-float/2addr v5, v1

    .line 341
    float-to-double v8, v5

    .line 342
    iget v2, v0, Lo0/p;->d:F

    .line 343
    .line 344
    iget v5, v0, Lo0/p;->j:F

    .line 345
    .line 346
    mul-float v5, v5, v2

    .line 347
    .line 348
    float-to-double v12, v5

    .line 349
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 350
    .line 351
    .line 352
    move-result-wide v7

    .line 353
    double-to-float v5, v7

    .line 354
    const/high16 v7, 0x42c80000    # 100.0f

    .line 355
    .line 356
    mul-float v5, v5, v7

    .line 357
    .line 358
    div-float v7, v5, v7

    .line 359
    .line 360
    float-to-double v7, v7

    .line 361
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 362
    .line 363
    .line 364
    const/high16 v7, 0x40800000    # 4.0f

    .line 365
    .line 366
    add-float/2addr v1, v7

    .line 367
    float-to-double v7, v15

    .line 368
    const-wide v12, 0x403423d70a3d70a4L    # 20.14

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    cmpg-double v9, v7, v12

    .line 374
    .line 375
    if-gez v9, :cond_2

    .line 376
    .line 377
    add-float/2addr v11, v15

    .line 378
    goto :goto_2

    .line 379
    :cond_2
    move v11, v15

    .line 380
    :goto_2
    float-to-double v7, v11

    .line 381
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 387
    .line 388
    .line 389
    mul-double v7, v7, v11

    .line 390
    .line 391
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    div-double/2addr v7, v11

    .line 397
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 398
    .line 399
    add-double/2addr v7, v11

    .line 400
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 401
    .line 402
    .line 403
    move-result-wide v7

    .line 404
    const-wide v11, 0x400e666666666666L    # 3.8

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    add-double/2addr v7, v11

    .line 410
    double-to-float v7, v7

    .line 411
    const/high16 v8, 0x3e800000    # 0.25f

    .line 412
    .line 413
    mul-float v7, v7, v8

    .line 414
    .line 415
    const v8, 0x45706276

    .line 416
    .line 417
    .line 418
    mul-float v7, v7, v8

    .line 419
    .line 420
    iget v8, v0, Lo0/p;->e:F

    .line 421
    .line 422
    mul-float v7, v7, v8

    .line 423
    .line 424
    iget v8, v0, Lo0/p;->c:F

    .line 425
    .line 426
    mul-float v7, v7, v8

    .line 427
    .line 428
    mul-float v6, v6, v6

    .line 429
    .line 430
    mul-float v3, v3, v3

    .line 431
    .line 432
    add-float/2addr v3, v6

    .line 433
    float-to-double v8, v3

    .line 434
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 435
    .line 436
    .line 437
    move-result-wide v8

    .line 438
    double-to-float v3, v8

    .line 439
    mul-float v7, v7, v3

    .line 440
    .line 441
    const v3, 0x3e9c28f6    # 0.305f

    .line 442
    .line 443
    .line 444
    add-float/2addr v10, v3

    .line 445
    div-float/2addr v7, v10

    .line 446
    iget v3, v0, Lo0/p;->f:F

    .line 447
    .line 448
    float-to-double v8, v3

    .line 449
    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 455
    .line 456
    .line 457
    move-result-wide v8

    .line 458
    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    sub-double/2addr v10, v8

    .line 464
    const-wide v8, 0x3fe75c28f5c28f5cL    # 0.73

    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 470
    .line 471
    .line 472
    move-result-wide v8

    .line 473
    double-to-float v3, v8

    .line 474
    float-to-double v6, v7

    .line 475
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 481
    .line 482
    .line 483
    move-result-wide v6

    .line 484
    double-to-float v6, v6

    .line 485
    mul-float v3, v3, v6

    .line 486
    .line 487
    float-to-double v6, v5

    .line 488
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 489
    .line 490
    .line 491
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 492
    .line 493
    div-double/2addr v6, v8

    .line 494
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 495
    .line 496
    .line 497
    move-result-wide v6

    .line 498
    double-to-float v6, v6

    .line 499
    mul-float v16, v3, v6

    .line 500
    .line 501
    iget v0, v0, Lo0/p;->i:F

    .line 502
    .line 503
    mul-float v0, v0, v16

    .line 504
    .line 505
    mul-float v3, v3, v2

    .line 506
    .line 507
    div-float/2addr v3, v1

    .line 508
    float-to-double v1, v3

    .line 509
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 510
    .line 511
    .line 512
    const v1, 0x3fd9999a    # 1.7f

    .line 513
    .line 514
    .line 515
    mul-float v1, v1, v5

    .line 516
    .line 517
    const v2, 0x3be56042    # 0.007f

    .line 518
    .line 519
    .line 520
    mul-float v2, v2, v5

    .line 521
    .line 522
    const/high16 v3, 0x3f800000    # 1.0f

    .line 523
    .line 524
    add-float/2addr v2, v3

    .line 525
    div-float v18, v1, v2

    .line 526
    .line 527
    const v1, 0x3cbac711    # 0.0228f

    .line 528
    .line 529
    .line 530
    mul-float v0, v0, v1

    .line 531
    .line 532
    add-float/2addr v0, v3

    .line 533
    float-to-double v0, v0

    .line 534
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 535
    .line 536
    .line 537
    move-result-wide v0

    .line 538
    double-to-float v0, v0

    .line 539
    const v1, 0x422f7048

    .line 540
    .line 541
    .line 542
    mul-float v0, v0, v1

    .line 543
    .line 544
    float-to-double v1, v4

    .line 545
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 546
    .line 547
    .line 548
    move-result-wide v3

    .line 549
    double-to-float v3, v3

    .line 550
    mul-float v19, v0, v3

    .line 551
    .line 552
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 553
    .line 554
    .line 555
    move-result-wide v1

    .line 556
    double-to-float v1, v1

    .line 557
    mul-float v20, v0, v1

    .line 558
    .line 559
    new-instance v0, Lo0/a;

    .line 560
    .line 561
    move-object v14, v0

    .line 562
    move/from16 v17, v5

    .line 563
    .line 564
    invoke-direct/range {v14 .. v20}, Lo0/a;-><init>(FFFFFF)V

    .line 565
    .line 566
    .line 567
    return-object v0
.end method

.method public static b(FFF)Lo0/a;
    .locals 12

    .line 1
    sget-object v0, Lo0/p;->k:Lo0/p;

    .line 2
    .line 3
    iget v1, v0, Lo0/p;->d:F

    .line 4
    .line 5
    float-to-double v1, p0

    .line 6
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 9
    .line 10
    .line 11
    div-double/2addr v1, v3

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 13
    .line 14
    .line 15
    iget v3, v0, Lo0/p;->a:F

    .line 16
    .line 17
    const/high16 v4, 0x40800000    # 4.0f

    .line 18
    .line 19
    add-float/2addr v3, v4

    .line 20
    iget v4, v0, Lo0/p;->i:F

    .line 21
    .line 22
    mul-float v4, v4, p1

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-float v1, v1

    .line 29
    div-float v1, p1, v1

    .line 30
    .line 31
    iget v0, v0, Lo0/p;->d:F

    .line 32
    .line 33
    mul-float v1, v1, v0

    .line 34
    .line 35
    div-float/2addr v1, v3

    .line 36
    float-to-double v0, v1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    .line 39
    .line 40
    const v0, 0x40490fdb    # (float)Math.PI

    .line 41
    .line 42
    .line 43
    mul-float v0, v0, p2

    .line 44
    .line 45
    const/high16 v1, 0x43340000    # 180.0f

    .line 46
    .line 47
    div-float/2addr v0, v1

    .line 48
    const v1, 0x3fd9999a    # 1.7f

    .line 49
    .line 50
    .line 51
    mul-float v1, v1, p0

    .line 52
    .line 53
    const v2, 0x3be56042    # 0.007f

    .line 54
    .line 55
    .line 56
    mul-float v2, v2, p0

    .line 57
    .line 58
    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    .line 60
    add-float/2addr v2, v3

    .line 61
    div-float v9, v1, v2

    .line 62
    .line 63
    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    float-to-double v3, v4

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 70
    .line 71
    .line 72
    mul-double v3, v3, v1

    .line 73
    .line 74
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 75
    .line 76
    add-double/2addr v3, v1

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    double-to-float v1, v1

    .line 82
    const v2, 0x422f7048

    .line 83
    .line 84
    .line 85
    mul-float v1, v1, v2

    .line 86
    .line 87
    float-to-double v2, v0

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    double-to-float v0, v4

    .line 93
    mul-float v10, v1, v0

    .line 94
    .line 95
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    double-to-float v0, v2

    .line 100
    mul-float v11, v1, v0

    .line 101
    .line 102
    new-instance v0, Lo0/a;

    .line 103
    .line 104
    move-object v5, v0

    .line 105
    move v6, p2

    .line 106
    move v7, p1

    .line 107
    move v8, p0

    .line 108
    invoke-direct/range {v5 .. v11}, Lo0/a;-><init>(FFFFFF)V

    .line 109
    .line 110
    .line 111
    return-object v0
.end method


# virtual methods
.method public final c(Lo0/p;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lo0/a;->b:F

    .line 6
    .line 7
    float-to-double v3, v2

    .line 8
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 9
    .line 10
    iget v7, v0, Lo0/a;->c:F

    .line 11
    .line 12
    const-wide/16 v8, 0x0

    .line 13
    .line 14
    cmpl-double v10, v3, v8

    .line 15
    .line 16
    if-eqz v10, :cond_1

    .line 17
    .line 18
    float-to-double v3, v7

    .line 19
    cmpl-double v10, v3, v8

    .line 20
    .line 21
    if-nez v10, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 25
    .line 26
    .line 27
    div-double/2addr v3, v5

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    double-to-float v3, v3

    .line 33
    div-float/2addr v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 36
    :goto_1
    float-to-double v2, v2

    .line 37
    iget v4, v1, Lo0/p;->f:F

    .line 38
    .line 39
    float-to-double v10, v4

    .line 40
    const-wide v12, 0x3fd28f5c28f5c28fL    # 0.29

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 46
    .line 47
    .line 48
    move-result-wide v10

    .line 49
    const-wide v12, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    sub-double/2addr v12, v10

    .line 55
    const-wide v10, 0x3fe75c28f5c28f5cL    # 0.73

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v10

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 65
    .line 66
    .line 67
    div-double/2addr v2, v10

    .line 68
    const-wide v10, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    double-to-float v2, v2

    .line 78
    const v3, 0x40490fdb    # (float)Math.PI

    .line 79
    .line 80
    .line 81
    iget v4, v0, Lo0/a;->a:F

    .line 82
    .line 83
    mul-float v4, v4, v3

    .line 84
    .line 85
    const/high16 v3, 0x43340000    # 180.0f

    .line 86
    .line 87
    div-float/2addr v4, v3

    .line 88
    float-to-double v3, v4

    .line 89
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 90
    .line 91
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 92
    .line 93
    .line 94
    add-double/2addr v10, v3

    .line 95
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    const-wide v12, 0x400e666666666666L    # 3.8

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    add-double/2addr v10, v12

    .line 105
    double-to-float v10, v10

    .line 106
    const/high16 v11, 0x3e800000    # 0.25f

    .line 107
    .line 108
    mul-float v10, v10, v11

    .line 109
    .line 110
    float-to-double v11, v7

    .line 111
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 112
    .line 113
    .line 114
    div-double/2addr v11, v5

    .line 115
    iget v5, v1, Lo0/p;->d:F

    .line 116
    .line 117
    float-to-double v5, v5

    .line 118
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 119
    .line 120
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 121
    .line 122
    .line 123
    div-double/2addr v13, v5

    .line 124
    iget v5, v1, Lo0/p;->j:F

    .line 125
    .line 126
    float-to-double v5, v5

    .line 127
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 128
    .line 129
    .line 130
    div-double/2addr v13, v5

    .line 131
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    double-to-float v5, v5

    .line 136
    iget v6, v1, Lo0/p;->a:F

    .line 137
    .line 138
    mul-float v6, v6, v5

    .line 139
    .line 140
    const v5, 0x45706276

    .line 141
    .line 142
    .line 143
    mul-float v10, v10, v5

    .line 144
    .line 145
    iget v5, v1, Lo0/p;->e:F

    .line 146
    .line 147
    mul-float v10, v10, v5

    .line 148
    .line 149
    iget v5, v1, Lo0/p;->c:F

    .line 150
    .line 151
    mul-float v10, v10, v5

    .line 152
    .line 153
    iget v5, v1, Lo0/p;->b:F

    .line 154
    .line 155
    div-float/2addr v6, v5

    .line 156
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    double-to-float v5, v11

    .line 161
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 162
    .line 163
    .line 164
    move-result-wide v3

    .line 165
    double-to-float v3, v3

    .line 166
    const v4, 0x3e9c28f6    # 0.305f

    .line 167
    .line 168
    .line 169
    add-float/2addr v4, v6

    .line 170
    const/high16 v7, 0x41b80000    # 23.0f

    .line 171
    .line 172
    mul-float v4, v4, v7

    .line 173
    .line 174
    mul-float v4, v4, v2

    .line 175
    .line 176
    mul-float v10, v10, v7

    .line 177
    .line 178
    const/high16 v7, 0x41300000    # 11.0f

    .line 179
    .line 180
    mul-float v7, v7, v2

    .line 181
    .line 182
    mul-float v7, v7, v3

    .line 183
    .line 184
    add-float/2addr v7, v10

    .line 185
    const/high16 v10, 0x42d80000    # 108.0f

    .line 186
    .line 187
    mul-float v2, v2, v10

    .line 188
    .line 189
    mul-float v2, v2, v5

    .line 190
    .line 191
    add-float/2addr v2, v7

    .line 192
    div-float/2addr v4, v2

    .line 193
    mul-float v3, v3, v4

    .line 194
    .line 195
    mul-float v4, v4, v5

    .line 196
    .line 197
    const/high16 v2, 0x43e60000    # 460.0f

    .line 198
    .line 199
    mul-float v6, v6, v2

    .line 200
    .line 201
    const v2, 0x43e18000    # 451.0f

    .line 202
    .line 203
    .line 204
    mul-float v2, v2, v3

    .line 205
    .line 206
    add-float/2addr v2, v6

    .line 207
    const/high16 v5, 0x43900000    # 288.0f

    .line 208
    .line 209
    mul-float v5, v5, v4

    .line 210
    .line 211
    add-float/2addr v5, v2

    .line 212
    const v2, 0x44af6000    # 1403.0f

    .line 213
    .line 214
    .line 215
    div-float/2addr v5, v2

    .line 216
    const v7, 0x445ec000    # 891.0f

    .line 217
    .line 218
    .line 219
    mul-float v7, v7, v3

    .line 220
    .line 221
    sub-float v7, v6, v7

    .line 222
    .line 223
    const v10, 0x43828000    # 261.0f

    .line 224
    .line 225
    .line 226
    mul-float v10, v10, v4

    .line 227
    .line 228
    sub-float/2addr v7, v10

    .line 229
    div-float/2addr v7, v2

    .line 230
    const/high16 v10, 0x435c0000    # 220.0f

    .line 231
    .line 232
    mul-float v3, v3, v10

    .line 233
    .line 234
    sub-float/2addr v6, v3

    .line 235
    const v3, 0x45c4e000    # 6300.0f

    .line 236
    .line 237
    .line 238
    mul-float v4, v4, v3

    .line 239
    .line 240
    sub-float/2addr v6, v4

    .line 241
    div-float/2addr v6, v2

    .line 242
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    float-to-double v2, v2

    .line 247
    const-wide v10, 0x403b2147ae147ae1L    # 27.13

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 253
    .line 254
    .line 255
    mul-double v2, v2, v10

    .line 256
    .line 257
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    float-to-double v12, v4

    .line 262
    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    .line 263
    .line 264
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 265
    .line 266
    .line 267
    sub-double v12, v14, v12

    .line 268
    .line 269
    div-double/2addr v2, v12

    .line 270
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    double-to-float v2, v2

    .line 275
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    const/high16 v4, 0x42c80000    # 100.0f

    .line 280
    .line 281
    iget v5, v1, Lo0/p;->h:F

    .line 282
    .line 283
    div-float/2addr v4, v5

    .line 284
    mul-float v3, v3, v4

    .line 285
    .line 286
    float-to-double v12, v2

    .line 287
    const-wide v8, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 293
    .line 294
    .line 295
    move-result-wide v12

    .line 296
    double-to-float v2, v12

    .line 297
    mul-float v3, v3, v2

    .line 298
    .line 299
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    float-to-double v12, v2

    .line 304
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 305
    .line 306
    .line 307
    mul-double v12, v12, v10

    .line 308
    .line 309
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    float-to-double v10, v2

    .line 314
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 315
    .line 316
    .line 317
    sub-double v10, v14, v10

    .line 318
    .line 319
    div-double/2addr v12, v10

    .line 320
    const-wide/16 v10, 0x0

    .line 321
    .line 322
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 323
    .line 324
    .line 325
    move-result-wide v12

    .line 326
    double-to-float v2, v12

    .line 327
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    mul-float v5, v5, v4

    .line 332
    .line 333
    float-to-double v10, v2

    .line 334
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 335
    .line 336
    .line 337
    move-result-wide v10

    .line 338
    double-to-float v2, v10

    .line 339
    mul-float v5, v5, v2

    .line 340
    .line 341
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    float-to-double v10, v2

    .line 346
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 347
    .line 348
    .line 349
    const-wide v12, 0x403b2147ae147ae1L    # 27.13

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    mul-double v10, v10, v12

    .line 355
    .line 356
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    float-to-double v12, v2

    .line 361
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 362
    .line 363
    .line 364
    sub-double/2addr v14, v12

    .line 365
    div-double/2addr v10, v14

    .line 366
    const-wide/16 v12, 0x0

    .line 367
    .line 368
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(DD)D

    .line 369
    .line 370
    .line 371
    move-result-wide v10

    .line 372
    double-to-float v2, v10

    .line 373
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    mul-float v6, v6, v4

    .line 378
    .line 379
    float-to-double v10, v2

    .line 380
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 381
    .line 382
    .line 383
    move-result-wide v7

    .line 384
    double-to-float v2, v7

    .line 385
    mul-float v6, v6, v2

    .line 386
    .line 387
    iget-object v1, v1, Lo0/p;->g:[F

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    aget v4, v1, v2

    .line 391
    .line 392
    div-float/2addr v3, v4

    .line 393
    const/4 v4, 0x1

    .line 394
    aget v7, v1, v4

    .line 395
    .line 396
    div-float/2addr v5, v7

    .line 397
    const/4 v7, 0x2

    .line 398
    aget v1, v1, v7

    .line 399
    .line 400
    div-float/2addr v6, v1

    .line 401
    sget-object v1, Lo0/b;->b:[[F

    .line 402
    .line 403
    aget-object v8, v1, v2

    .line 404
    .line 405
    aget v9, v8, v2

    .line 406
    .line 407
    mul-float v9, v9, v3

    .line 408
    .line 409
    aget v10, v8, v4

    .line 410
    .line 411
    mul-float v10, v10, v5

    .line 412
    .line 413
    add-float/2addr v10, v9

    .line 414
    aget v8, v8, v7

    .line 415
    .line 416
    mul-float v8, v8, v6

    .line 417
    .line 418
    add-float/2addr v8, v10

    .line 419
    aget-object v9, v1, v4

    .line 420
    .line 421
    aget v10, v9, v2

    .line 422
    .line 423
    mul-float v10, v10, v3

    .line 424
    .line 425
    aget v11, v9, v4

    .line 426
    .line 427
    mul-float v11, v11, v5

    .line 428
    .line 429
    add-float/2addr v11, v10

    .line 430
    aget v9, v9, v7

    .line 431
    .line 432
    mul-float v9, v9, v6

    .line 433
    .line 434
    add-float/2addr v9, v11

    .line 435
    aget-object v1, v1, v7

    .line 436
    .line 437
    aget v2, v1, v2

    .line 438
    .line 439
    mul-float v3, v3, v2

    .line 440
    .line 441
    aget v2, v1, v4

    .line 442
    .line 443
    mul-float v5, v5, v2

    .line 444
    .line 445
    add-float/2addr v5, v3

    .line 446
    aget v1, v1, v7

    .line 447
    .line 448
    mul-float v6, v6, v1

    .line 449
    .line 450
    add-float/2addr v6, v5

    .line 451
    float-to-double v10, v8

    .line 452
    float-to-double v12, v9

    .line 453
    float-to-double v14, v6

    .line 454
    invoke-static/range {v10 .. v15}, Lp0/a;->a(DDD)I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    return v1
.end method
