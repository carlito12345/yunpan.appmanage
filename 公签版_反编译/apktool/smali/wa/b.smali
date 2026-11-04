.class public abstract Lwa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yunpan/appmanage/service/AccService;FFJ)V
    .locals 7

    .line 1
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    move-wide v5, p3

    .line 20
    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p0, p1, p2, p2}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static b(Lcom/yunpan/appmanage/service/AccService;Lz7/s;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "int1"

    .line 10
    .line 11
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static/range {p0 .. p0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/4 v7, -0x1

    .line 24
    const/4 v8, 0x3

    .line 25
    const/4 v9, 0x2

    .line 26
    if-ne v5, v7, :cond_2

    .line 27
    .line 28
    const-string v2, "time"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string v5, "points"

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v5, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const-string v6, "end_y"

    .line 51
    .line 52
    const-string v7, "end_x"

    .line 53
    .line 54
    const-string v10, "start_y"

    .line 55
    .line 56
    const-string v11, "start_x"

    .line 57
    .line 58
    if-ne v5, v3, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lz7/o;->l(I)Lz7/p;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    int-to-float v3, v3

    .line 77
    invoke-virtual {v1, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    int-to-float v4, v4

    .line 86
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    int-to-float v5, v5

    .line 95
    invoke-virtual {v1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    int-to-float v6, v1

    .line 104
    int-to-long v7, v2

    .line 105
    move-object/from16 v0, p0

    .line 106
    .line 107
    move v1, v3

    .line 108
    move v2, v4

    .line 109
    move v3, v5

    .line 110
    move v4, v6

    .line 111
    move-wide v5, v7

    .line 112
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_0
    iget-object v5, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-ne v12, v9, :cond_1

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lz7/o;->l(I)Lz7/p;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v1, v3}, Lz7/o;->l(I)Lz7/p;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    new-instance v8, Landroid/graphics/PointF;

    .line 142
    .line 143
    invoke-virtual {v5, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    invoke-virtual {v12}, Lz7/p;->e()I

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    int-to-float v12, v12

    .line 152
    invoke-virtual {v5, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    invoke-virtual {v13}, Lz7/p;->e()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    int-to-float v13, v13

    .line 161
    invoke-direct {v8, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 162
    .line 163
    .line 164
    new-instance v12, Landroid/graphics/PointF;

    .line 165
    .line 166
    invoke-virtual {v1, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    int-to-float v11, v11

    .line 175
    invoke-virtual {v1, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    int-to-float v10, v10

    .line 184
    invoke-direct {v12, v11, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 185
    .line 186
    .line 187
    new-array v10, v9, [Landroid/graphics/PointF;

    .line 188
    .line 189
    aput-object v8, v10, v4

    .line 190
    .line 191
    aput-object v12, v10, v3

    .line 192
    .line 193
    new-instance v8, Landroid/graphics/PointF;

    .line 194
    .line 195
    invoke-virtual {v5, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    int-to-float v11, v11

    .line 204
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    int-to-float v5, v5

    .line 213
    invoke-direct {v8, v11, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 214
    .line 215
    .line 216
    new-instance v5, Landroid/graphics/PointF;

    .line 217
    .line 218
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    int-to-float v7, v7

    .line 227
    invoke-virtual {v1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    int-to-float v1, v1

    .line 236
    invoke-direct {v5, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 237
    .line 238
    .line 239
    new-array v1, v9, [Landroid/graphics/PointF;

    .line 240
    .line 241
    aput-object v8, v1, v4

    .line 242
    .line 243
    aput-object v5, v1, v3

    .line 244
    .line 245
    int-to-long v2, v2

    .line 246
    invoke-static {v0, v10, v1, v2, v3}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-ne v5, v8, :cond_1a

    .line 256
    .line 257
    invoke-virtual {v1, v4}, Lz7/o;->l(I)Lz7/p;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v1, v3}, Lz7/o;->l(I)Lz7/p;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    invoke-virtual {v12}, Lz7/p;->g()Lz7/s;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    invoke-virtual {v1, v9}, Lz7/o;->l(I)Lz7/p;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lz7/p;->g()Lz7/s;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    new-instance v13, Landroid/graphics/PointF;

    .line 282
    .line 283
    invoke-virtual {v5, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 284
    .line 285
    .line 286
    move-result-object v14

    .line 287
    invoke-virtual {v14}, Lz7/p;->e()I

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    int-to-float v14, v14

    .line 292
    invoke-virtual {v5, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 293
    .line 294
    .line 295
    move-result-object v15

    .line 296
    invoke-virtual {v15}, Lz7/p;->e()I

    .line 297
    .line 298
    .line 299
    move-result v15

    .line 300
    int-to-float v15, v15

    .line 301
    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 302
    .line 303
    .line 304
    new-instance v14, Landroid/graphics/PointF;

    .line 305
    .line 306
    invoke-virtual {v12, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    invoke-virtual {v15}, Lz7/p;->e()I

    .line 311
    .line 312
    .line 313
    move-result v15

    .line 314
    int-to-float v15, v15

    .line 315
    invoke-virtual {v12, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 316
    .line 317
    .line 318
    move-result-object v16

    .line 319
    invoke-virtual/range {v16 .. v16}, Lz7/p;->e()I

    .line 320
    .line 321
    .line 322
    move-result v9

    .line 323
    int-to-float v9, v9

    .line 324
    invoke-direct {v14, v15, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 325
    .line 326
    .line 327
    new-instance v9, Landroid/graphics/PointF;

    .line 328
    .line 329
    invoke-virtual {v1, v11}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    int-to-float v11, v11

    .line 338
    invoke-virtual {v1, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual {v10}, Lz7/p;->e()I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    int-to-float v10, v10

    .line 347
    invoke-direct {v9, v11, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 348
    .line 349
    .line 350
    new-array v10, v8, [Landroid/graphics/PointF;

    .line 351
    .line 352
    aput-object v13, v10, v4

    .line 353
    .line 354
    aput-object v14, v10, v3

    .line 355
    .line 356
    const/4 v11, 0x2

    .line 357
    aput-object v9, v10, v11

    .line 358
    .line 359
    new-instance v9, Landroid/graphics/PointF;

    .line 360
    .line 361
    invoke-virtual {v5, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 366
    .line 367
    .line 368
    move-result v11

    .line 369
    int-to-float v11, v11

    .line 370
    invoke-virtual {v5, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    int-to-float v5, v5

    .line 379
    invoke-direct {v9, v11, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 380
    .line 381
    .line 382
    new-instance v5, Landroid/graphics/PointF;

    .line 383
    .line 384
    invoke-virtual {v12, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    int-to-float v11, v11

    .line 393
    invoke-virtual {v12, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    invoke-virtual {v12}, Lz7/p;->e()I

    .line 398
    .line 399
    .line 400
    move-result v12

    .line 401
    int-to-float v12, v12

    .line 402
    invoke-direct {v5, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 403
    .line 404
    .line 405
    new-instance v11, Landroid/graphics/PointF;

    .line 406
    .line 407
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    int-to-float v7, v7

    .line 416
    invoke-virtual {v1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    int-to-float v1, v1

    .line 425
    invoke-direct {v11, v7, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 426
    .line 427
    .line 428
    new-array v1, v8, [Landroid/graphics/PointF;

    .line 429
    .line 430
    aput-object v9, v1, v4

    .line 431
    .line 432
    aput-object v5, v1, v3

    .line 433
    .line 434
    const/4 v7, 0x2

    .line 435
    aput-object v11, v1, v7

    .line 436
    .line 437
    int-to-long v2, v2

    .line 438
    invoke-static {v0, v10, v1, v2, v3}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_2
    const/4 v7, 0x2

    .line 444
    const-wide/16 v9, 0x32

    .line 445
    .line 446
    if-ne v5, v2, :cond_3

    .line 447
    .line 448
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 449
    .line 450
    div-int/2addr v1, v7

    .line 451
    int-to-float v1, v1

    .line 452
    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 453
    .line 454
    div-int/2addr v2, v7

    .line 455
    int-to-float v2, v2

    .line 456
    invoke-static {v0, v1, v2, v9, v10}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_3
    const/16 v1, 0xb

    .line 462
    .line 463
    if-ne v5, v1, :cond_4

    .line 464
    .line 465
    :try_start_0
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 466
    .line 467
    div-int/2addr v1, v7

    .line 468
    int-to-float v1, v1

    .line 469
    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 470
    .line 471
    div-int/2addr v2, v7

    .line 472
    int-to-float v2, v2

    .line 473
    invoke-static {v0, v1, v2, v9, v10}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 474
    .line 475
    .line 476
    const-wide/16 v1, 0x14d

    .line 477
    .line 478
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 479
    .line 480
    .line 481
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 482
    .line 483
    div-int/2addr v1, v7

    .line 484
    int-to-float v1, v1

    .line 485
    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 486
    .line 487
    div-int/2addr v2, v7

    .line 488
    int-to-float v2, v2

    .line 489
    invoke-static {v0, v1, v2, v9, v10}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .line 491
    .line 492
    goto/16 :goto_0

    .line 493
    .line 494
    :cond_4
    const/16 v1, 0xc

    .line 495
    .line 496
    if-ne v5, v1, :cond_5

    .line 497
    .line 498
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 499
    .line 500
    const/4 v7, 0x2

    .line 501
    div-int/2addr v1, v7

    .line 502
    int-to-float v1, v1

    .line 503
    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 504
    .line 505
    div-int/2addr v2, v7

    .line 506
    int-to-float v2, v2

    .line 507
    const-wide/16 v3, 0x384

    .line 508
    .line 509
    invoke-static {v0, v1, v2, v3, v4}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :cond_5
    const/4 v7, 0x2

    .line 515
    const/16 v1, 0x64

    .line 516
    .line 517
    if-ne v5, v1, :cond_6

    .line 518
    .line 519
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 520
    .line 521
    div-int/2addr v1, v7

    .line 522
    int-to-float v3, v1

    .line 523
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 524
    .line 525
    div-int/lit8 v1, v1, 0x4

    .line 526
    .line 527
    mul-int/lit8 v8, v1, 0x3

    .line 528
    .line 529
    int-to-float v2, v8

    .line 530
    int-to-float v4, v1

    .line 531
    const-wide/16 v5, 0x140

    .line 532
    .line 533
    move-object/from16 v0, p0

    .line 534
    .line 535
    move v1, v3

    .line 536
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_0

    .line 540
    .line 541
    :cond_6
    const/16 v1, 0x65

    .line 542
    .line 543
    if-ne v5, v1, :cond_7

    .line 544
    .line 545
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 546
    .line 547
    const/4 v2, 0x2

    .line 548
    div-int/2addr v1, v2

    .line 549
    int-to-float v3, v1

    .line 550
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 551
    .line 552
    div-int/lit8 v1, v1, 0x4

    .line 553
    .line 554
    int-to-float v2, v1

    .line 555
    mul-int/lit8 v1, v1, 0x3

    .line 556
    .line 557
    int-to-float v4, v1

    .line 558
    const-wide/16 v5, 0x140

    .line 559
    .line 560
    move-object/from16 v0, p0

    .line 561
    .line 562
    move v1, v3

    .line 563
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_0

    .line 567
    .line 568
    :cond_7
    const/16 v1, 0x66

    .line 569
    .line 570
    if-ne v5, v1, :cond_8

    .line 571
    .line 572
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 573
    .line 574
    div-int/lit8 v1, v1, 0x4

    .line 575
    .line 576
    mul-int/lit8 v8, v1, 0x3

    .line 577
    .line 578
    int-to-float v2, v8

    .line 579
    iget v3, v6, Landroid/graphics/Point;->y:I

    .line 580
    .line 581
    const/4 v4, 0x2

    .line 582
    div-int/2addr v3, v4

    .line 583
    int-to-float v4, v3

    .line 584
    int-to-float v3, v1

    .line 585
    const-wide/16 v5, 0x140

    .line 586
    .line 587
    move-object/from16 v0, p0

    .line 588
    .line 589
    move v1, v2

    .line 590
    move v2, v4

    .line 591
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_0

    .line 595
    .line 596
    :cond_8
    const/16 v1, 0x67

    .line 597
    .line 598
    if-ne v5, v1, :cond_9

    .line 599
    .line 600
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 601
    .line 602
    div-int/lit8 v1, v1, 0x4

    .line 603
    .line 604
    int-to-float v2, v1

    .line 605
    iget v3, v6, Landroid/graphics/Point;->y:I

    .line 606
    .line 607
    const/4 v4, 0x2

    .line 608
    div-int/2addr v3, v4

    .line 609
    int-to-float v4, v3

    .line 610
    mul-int/lit8 v1, v1, 0x3

    .line 611
    .line 612
    int-to-float v3, v1

    .line 613
    const-wide/16 v5, 0x140

    .line 614
    .line 615
    move-object/from16 v0, p0

    .line 616
    .line 617
    move v1, v2

    .line 618
    move v2, v4

    .line 619
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_0

    .line 623
    .line 624
    :cond_9
    const/16 v1, 0xc8

    .line 625
    .line 626
    const-wide/16 v9, 0x140

    .line 627
    .line 628
    if-ne v5, v1, :cond_a

    .line 629
    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 639
    .line 640
    const/4 v7, 0x2

    .line 641
    div-int/2addr v2, v7

    .line 642
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 643
    .line 644
    div-int/2addr v1, v8

    .line 645
    new-instance v5, Landroid/graphics/PointF;

    .line 646
    .line 647
    add-int/lit8 v6, v2, -0x32

    .line 648
    .line 649
    int-to-float v6, v6

    .line 650
    mul-int/lit8 v8, v1, 0x2

    .line 651
    .line 652
    int-to-float v8, v8

    .line 653
    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 654
    .line 655
    .line 656
    new-instance v11, Landroid/graphics/PointF;

    .line 657
    .line 658
    int-to-float v2, v2

    .line 659
    invoke-direct {v11, v2, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 660
    .line 661
    .line 662
    new-array v8, v7, [Landroid/graphics/PointF;

    .line 663
    .line 664
    aput-object v5, v8, v4

    .line 665
    .line 666
    aput-object v11, v8, v3

    .line 667
    .line 668
    new-instance v5, Landroid/graphics/PointF;

    .line 669
    .line 670
    int-to-float v1, v1

    .line 671
    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 672
    .line 673
    .line 674
    new-instance v6, Landroid/graphics/PointF;

    .line 675
    .line 676
    invoke-direct {v6, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 677
    .line 678
    .line 679
    new-array v1, v7, [Landroid/graphics/PointF;

    .line 680
    .line 681
    aput-object v5, v1, v4

    .line 682
    .line 683
    aput-object v6, v1, v3

    .line 684
    .line 685
    invoke-static {v0, v8, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_0

    .line 689
    .line 690
    :cond_a
    const/4 v7, 0x2

    .line 691
    const/16 v1, 0xc9

    .line 692
    .line 693
    if-ne v5, v1, :cond_b

    .line 694
    .line 695
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 704
    .line 705
    div-int/2addr v5, v7

    .line 706
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 707
    .line 708
    div-int/2addr v1, v8

    .line 709
    new-instance v6, Landroid/graphics/PointF;

    .line 710
    .line 711
    int-to-float v8, v5

    .line 712
    int-to-float v11, v1

    .line 713
    invoke-direct {v6, v8, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 714
    .line 715
    .line 716
    new-instance v8, Landroid/graphics/PointF;

    .line 717
    .line 718
    add-int/lit8 v12, v5, 0x32

    .line 719
    .line 720
    int-to-float v12, v12

    .line 721
    invoke-direct {v8, v12, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 722
    .line 723
    .line 724
    new-array v11, v7, [Landroid/graphics/PointF;

    .line 725
    .line 726
    aput-object v6, v11, v4

    .line 727
    .line 728
    aput-object v8, v11, v3

    .line 729
    .line 730
    new-instance v6, Landroid/graphics/PointF;

    .line 731
    .line 732
    add-int/2addr v2, v5

    .line 733
    int-to-float v2, v2

    .line 734
    mul-int/lit8 v1, v1, 0x2

    .line 735
    .line 736
    int-to-float v1, v1

    .line 737
    invoke-direct {v6, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 738
    .line 739
    .line 740
    new-instance v2, Landroid/graphics/PointF;

    .line 741
    .line 742
    add-int/lit8 v5, v5, 0x3c

    .line 743
    .line 744
    int-to-float v5, v5

    .line 745
    invoke-direct {v2, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 746
    .line 747
    .line 748
    new-array v1, v7, [Landroid/graphics/PointF;

    .line 749
    .line 750
    aput-object v6, v1, v4

    .line 751
    .line 752
    aput-object v2, v1, v3

    .line 753
    .line 754
    invoke-static {v0, v11, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 755
    .line 756
    .line 757
    goto/16 :goto_0

    .line 758
    .line 759
    :cond_b
    const/16 v1, 0xca

    .line 760
    .line 761
    if-ne v5, v1, :cond_c

    .line 762
    .line 763
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 772
    .line 773
    div-int/2addr v2, v8

    .line 774
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 775
    .line 776
    const/4 v5, 0x2

    .line 777
    div-int/2addr v1, v5

    .line 778
    new-instance v6, Landroid/graphics/PointF;

    .line 779
    .line 780
    mul-int/lit8 v7, v2, 0x2

    .line 781
    .line 782
    int-to-float v7, v7

    .line 783
    add-int/lit8 v8, v1, 0x32

    .line 784
    .line 785
    int-to-float v8, v8

    .line 786
    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 787
    .line 788
    .line 789
    new-instance v8, Landroid/graphics/PointF;

    .line 790
    .line 791
    add-int/lit8 v11, v1, -0x32

    .line 792
    .line 793
    int-to-float v11, v11

    .line 794
    invoke-direct {v8, v7, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 795
    .line 796
    .line 797
    new-array v7, v5, [Landroid/graphics/PointF;

    .line 798
    .line 799
    aput-object v6, v7, v4

    .line 800
    .line 801
    aput-object v8, v7, v3

    .line 802
    .line 803
    new-instance v5, Landroid/graphics/PointF;

    .line 804
    .line 805
    int-to-float v2, v2

    .line 806
    add-int/lit8 v6, v1, 0x3c

    .line 807
    .line 808
    int-to-float v6, v6

    .line 809
    invoke-direct {v5, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 810
    .line 811
    .line 812
    new-instance v6, Landroid/graphics/PointF;

    .line 813
    .line 814
    add-int/lit8 v1, v1, -0x28

    .line 815
    .line 816
    int-to-float v1, v1

    .line 817
    invoke-direct {v6, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 818
    .line 819
    .line 820
    const/4 v1, 0x2

    .line 821
    new-array v1, v1, [Landroid/graphics/PointF;

    .line 822
    .line 823
    aput-object v5, v1, v4

    .line 824
    .line 825
    aput-object v6, v1, v3

    .line 826
    .line 827
    invoke-static {v0, v7, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :cond_c
    const/16 v1, 0xcb

    .line 833
    .line 834
    if-ne v5, v1, :cond_d

    .line 835
    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 845
    .line 846
    div-int/2addr v2, v8

    .line 847
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 848
    .line 849
    const/4 v7, 0x2

    .line 850
    div-int/2addr v1, v7

    .line 851
    new-instance v5, Landroid/graphics/PointF;

    .line 852
    .line 853
    int-to-float v6, v2

    .line 854
    add-int/lit8 v8, v1, 0x32

    .line 855
    .line 856
    int-to-float v8, v8

    .line 857
    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 858
    .line 859
    .line 860
    new-instance v8, Landroid/graphics/PointF;

    .line 861
    .line 862
    add-int/lit8 v11, v1, -0x32

    .line 863
    .line 864
    int-to-float v11, v11

    .line 865
    invoke-direct {v8, v6, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 866
    .line 867
    .line 868
    new-array v6, v7, [Landroid/graphics/PointF;

    .line 869
    .line 870
    aput-object v5, v6, v4

    .line 871
    .line 872
    aput-object v8, v6, v3

    .line 873
    .line 874
    new-instance v5, Landroid/graphics/PointF;

    .line 875
    .line 876
    mul-int/lit8 v2, v2, 0x2

    .line 877
    .line 878
    int-to-float v2, v2

    .line 879
    add-int/lit8 v8, v1, 0x3c

    .line 880
    .line 881
    int-to-float v8, v8

    .line 882
    invoke-direct {v5, v2, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 883
    .line 884
    .line 885
    new-instance v8, Landroid/graphics/PointF;

    .line 886
    .line 887
    add-int/lit8 v1, v1, -0x28

    .line 888
    .line 889
    int-to-float v1, v1

    .line 890
    invoke-direct {v8, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 891
    .line 892
    .line 893
    new-array v1, v7, [Landroid/graphics/PointF;

    .line 894
    .line 895
    aput-object v5, v1, v4

    .line 896
    .line 897
    aput-object v8, v1, v3

    .line 898
    .line 899
    invoke-static {v0, v6, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_0

    .line 903
    .line 904
    :cond_d
    const/4 v7, 0x2

    .line 905
    const/16 v1, 0x12d

    .line 906
    .line 907
    if-ne v5, v1, :cond_e

    .line 908
    .line 909
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 918
    .line 919
    div-int/2addr v2, v7

    .line 920
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 921
    .line 922
    div-int/lit8 v1, v1, 0x4

    .line 923
    .line 924
    new-instance v5, Landroid/graphics/PointF;

    .line 925
    .line 926
    add-int/lit8 v6, v2, -0x42

    .line 927
    .line 928
    int-to-float v6, v6

    .line 929
    int-to-float v7, v1

    .line 930
    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 931
    .line 932
    .line 933
    new-instance v11, Landroid/graphics/PointF;

    .line 934
    .line 935
    int-to-float v12, v2

    .line 936
    invoke-direct {v11, v12, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 937
    .line 938
    .line 939
    new-instance v13, Landroid/graphics/PointF;

    .line 940
    .line 941
    add-int/lit8 v2, v2, 0x42

    .line 942
    .line 943
    int-to-float v2, v2

    .line 944
    invoke-direct {v13, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 945
    .line 946
    .line 947
    new-array v7, v8, [Landroid/graphics/PointF;

    .line 948
    .line 949
    aput-object v5, v7, v4

    .line 950
    .line 951
    aput-object v11, v7, v3

    .line 952
    .line 953
    const/4 v5, 0x2

    .line 954
    aput-object v13, v7, v5

    .line 955
    .line 956
    new-instance v5, Landroid/graphics/PointF;

    .line 957
    .line 958
    mul-int/lit8 v1, v1, 0x3

    .line 959
    .line 960
    int-to-float v1, v1

    .line 961
    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 962
    .line 963
    .line 964
    new-instance v6, Landroid/graphics/PointF;

    .line 965
    .line 966
    invoke-direct {v6, v12, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 967
    .line 968
    .line 969
    new-instance v11, Landroid/graphics/PointF;

    .line 970
    .line 971
    invoke-direct {v11, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 972
    .line 973
    .line 974
    new-array v1, v8, [Landroid/graphics/PointF;

    .line 975
    .line 976
    aput-object v5, v1, v4

    .line 977
    .line 978
    aput-object v6, v1, v3

    .line 979
    .line 980
    const/4 v2, 0x2

    .line 981
    aput-object v11, v1, v2

    .line 982
    .line 983
    invoke-static {v0, v7, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 984
    .line 985
    .line 986
    goto/16 :goto_0

    .line 987
    .line 988
    :cond_e
    const/4 v2, 0x2

    .line 989
    const/16 v1, 0x12c

    .line 990
    .line 991
    if-ne v5, v1, :cond_f

    .line 992
    .line 993
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1002
    .line 1003
    div-int/2addr v5, v2

    .line 1004
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1005
    .line 1006
    div-int/lit8 v1, v1, 0x4

    .line 1007
    .line 1008
    new-instance v2, Landroid/graphics/PointF;

    .line 1009
    .line 1010
    add-int/lit8 v6, v5, -0x42

    .line 1011
    .line 1012
    int-to-float v6, v6

    .line 1013
    mul-int/lit8 v7, v1, 0x3

    .line 1014
    .line 1015
    int-to-float v7, v7

    .line 1016
    invoke-direct {v2, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1017
    .line 1018
    .line 1019
    new-instance v11, Landroid/graphics/PointF;

    .line 1020
    .line 1021
    int-to-float v12, v5

    .line 1022
    invoke-direct {v11, v12, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v13, Landroid/graphics/PointF;

    .line 1026
    .line 1027
    add-int/lit8 v5, v5, 0x42

    .line 1028
    .line 1029
    int-to-float v5, v5

    .line 1030
    invoke-direct {v13, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1031
    .line 1032
    .line 1033
    new-array v7, v8, [Landroid/graphics/PointF;

    .line 1034
    .line 1035
    aput-object v2, v7, v4

    .line 1036
    .line 1037
    aput-object v11, v7, v3

    .line 1038
    .line 1039
    const/4 v2, 0x2

    .line 1040
    aput-object v13, v7, v2

    .line 1041
    .line 1042
    new-instance v11, Landroid/graphics/PointF;

    .line 1043
    .line 1044
    int-to-float v1, v1

    .line 1045
    invoke-direct {v11, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1046
    .line 1047
    .line 1048
    new-instance v6, Landroid/graphics/PointF;

    .line 1049
    .line 1050
    invoke-direct {v6, v12, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1051
    .line 1052
    .line 1053
    new-instance v12, Landroid/graphics/PointF;

    .line 1054
    .line 1055
    invoke-direct {v12, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1056
    .line 1057
    .line 1058
    new-array v1, v8, [Landroid/graphics/PointF;

    .line 1059
    .line 1060
    aput-object v11, v1, v4

    .line 1061
    .line 1062
    aput-object v6, v1, v3

    .line 1063
    .line 1064
    aput-object v12, v1, v2

    .line 1065
    .line 1066
    invoke-static {v0, v7, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 1067
    .line 1068
    .line 1069
    goto/16 :goto_0

    .line 1070
    .line 1071
    :cond_f
    const/16 v1, 0x12e

    .line 1072
    .line 1073
    if-ne v5, v1, :cond_10

    .line 1074
    .line 1075
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v1

    .line 1079
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1084
    .line 1085
    div-int/2addr v5, v8

    .line 1086
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1087
    .line 1088
    div-int/2addr v1, v2

    .line 1089
    new-instance v6, Landroid/graphics/PointF;

    .line 1090
    .line 1091
    mul-int/lit8 v7, v5, 0x2

    .line 1092
    .line 1093
    int-to-float v2, v7

    .line 1094
    add-int/lit8 v7, v1, -0x32

    .line 1095
    .line 1096
    int-to-float v7, v7

    .line 1097
    invoke-direct {v6, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1098
    .line 1099
    .line 1100
    new-instance v11, Landroid/graphics/PointF;

    .line 1101
    .line 1102
    int-to-float v12, v1

    .line 1103
    invoke-direct {v11, v2, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v13, Landroid/graphics/PointF;

    .line 1107
    .line 1108
    add-int/lit8 v1, v1, 0x32

    .line 1109
    .line 1110
    int-to-float v1, v1

    .line 1111
    invoke-direct {v13, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1112
    .line 1113
    .line 1114
    new-array v2, v8, [Landroid/graphics/PointF;

    .line 1115
    .line 1116
    aput-object v6, v2, v4

    .line 1117
    .line 1118
    aput-object v11, v2, v3

    .line 1119
    .line 1120
    const/4 v11, 0x2

    .line 1121
    aput-object v13, v2, v11

    .line 1122
    .line 1123
    new-instance v6, Landroid/graphics/PointF;

    .line 1124
    .line 1125
    int-to-float v5, v5

    .line 1126
    invoke-direct {v6, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1127
    .line 1128
    .line 1129
    new-instance v7, Landroid/graphics/PointF;

    .line 1130
    .line 1131
    invoke-direct {v7, v5, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1132
    .line 1133
    .line 1134
    new-instance v12, Landroid/graphics/PointF;

    .line 1135
    .line 1136
    invoke-direct {v12, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1137
    .line 1138
    .line 1139
    new-array v1, v8, [Landroid/graphics/PointF;

    .line 1140
    .line 1141
    aput-object v6, v1, v4

    .line 1142
    .line 1143
    aput-object v7, v1, v3

    .line 1144
    .line 1145
    aput-object v12, v1, v11

    .line 1146
    .line 1147
    invoke-static {v0, v2, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 1148
    .line 1149
    .line 1150
    goto/16 :goto_0

    .line 1151
    .line 1152
    :cond_10
    const/4 v11, 0x2

    .line 1153
    const/16 v1, 0x12f

    .line 1154
    .line 1155
    if-ne v5, v1, :cond_11

    .line 1156
    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1166
    .line 1167
    div-int/2addr v2, v8

    .line 1168
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1169
    .line 1170
    div-int/2addr v1, v11

    .line 1171
    new-instance v5, Landroid/graphics/PointF;

    .line 1172
    .line 1173
    int-to-float v6, v2

    .line 1174
    add-int/lit8 v7, v1, -0x32

    .line 1175
    .line 1176
    int-to-float v7, v7

    .line 1177
    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1178
    .line 1179
    .line 1180
    new-instance v11, Landroid/graphics/PointF;

    .line 1181
    .line 1182
    int-to-float v12, v1

    .line 1183
    invoke-direct {v11, v6, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1184
    .line 1185
    .line 1186
    new-instance v13, Landroid/graphics/PointF;

    .line 1187
    .line 1188
    add-int/lit8 v1, v1, 0x32

    .line 1189
    .line 1190
    int-to-float v1, v1

    .line 1191
    invoke-direct {v13, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1192
    .line 1193
    .line 1194
    new-array v6, v8, [Landroid/graphics/PointF;

    .line 1195
    .line 1196
    aput-object v5, v6, v4

    .line 1197
    .line 1198
    aput-object v11, v6, v3

    .line 1199
    .line 1200
    const/4 v11, 0x2

    .line 1201
    aput-object v13, v6, v11

    .line 1202
    .line 1203
    new-instance v5, Landroid/graphics/PointF;

    .line 1204
    .line 1205
    mul-int/lit8 v2, v2, 0x2

    .line 1206
    .line 1207
    int-to-float v2, v2

    .line 1208
    invoke-direct {v5, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1209
    .line 1210
    .line 1211
    new-instance v7, Landroid/graphics/PointF;

    .line 1212
    .line 1213
    invoke-direct {v7, v2, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1214
    .line 1215
    .line 1216
    new-instance v12, Landroid/graphics/PointF;

    .line 1217
    .line 1218
    invoke-direct {v12, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1219
    .line 1220
    .line 1221
    new-array v1, v8, [Landroid/graphics/PointF;

    .line 1222
    .line 1223
    aput-object v5, v1, v4

    .line 1224
    .line 1225
    aput-object v7, v1, v3

    .line 1226
    .line 1227
    aput-object v12, v1, v11

    .line 1228
    .line 1229
    invoke-static {v0, v6, v1, v9, v10}, Lwa/b;->c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V

    .line 1230
    .line 1231
    .line 1232
    goto/16 :goto_0

    .line 1233
    .line 1234
    :cond_11
    const/16 v1, 0x190

    .line 1235
    .line 1236
    if-ne v5, v1, :cond_12

    .line 1237
    .line 1238
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 1239
    .line 1240
    div-int/2addr v1, v11

    .line 1241
    div-int/2addr v1, v11

    .line 1242
    int-to-float v3, v1

    .line 1243
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1244
    .line 1245
    div-int/lit8 v2, v1, 0x2

    .line 1246
    .line 1247
    div-int/2addr v2, v11

    .line 1248
    div-int/2addr v2, v11

    .line 1249
    sub-int/2addr v1, v2

    .line 1250
    int-to-float v4, v1

    .line 1251
    const-wide/16 v5, 0x140

    .line 1252
    .line 1253
    const/high16 v2, 0x40a00000    # 5.0f

    .line 1254
    .line 1255
    move-object/from16 v0, p0

    .line 1256
    .line 1257
    move v1, v3

    .line 1258
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1259
    .line 1260
    .line 1261
    goto/16 :goto_0

    .line 1262
    .line 1263
    :cond_12
    const/16 v1, 0x191

    .line 1264
    .line 1265
    if-ne v5, v1, :cond_13

    .line 1266
    .line 1267
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 1268
    .line 1269
    const/4 v2, 0x2

    .line 1270
    div-int/2addr v1, v2

    .line 1271
    int-to-float v3, v1

    .line 1272
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1273
    .line 1274
    div-int/lit8 v4, v1, 0x2

    .line 1275
    .line 1276
    div-int/2addr v4, v2

    .line 1277
    div-int/2addr v4, v2

    .line 1278
    sub-int/2addr v1, v4

    .line 1279
    int-to-float v4, v1

    .line 1280
    const-wide/16 v5, 0x140

    .line 1281
    .line 1282
    const/high16 v2, 0x40a00000    # 5.0f

    .line 1283
    .line 1284
    move-object/from16 v0, p0

    .line 1285
    .line 1286
    move v1, v3

    .line 1287
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1288
    .line 1289
    .line 1290
    goto/16 :goto_0

    .line 1291
    .line 1292
    :cond_13
    const/16 v1, 0x192

    .line 1293
    .line 1294
    if-ne v5, v1, :cond_14

    .line 1295
    .line 1296
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 1297
    .line 1298
    const/4 v2, 0x2

    .line 1299
    div-int/2addr v1, v2

    .line 1300
    div-int/lit8 v3, v1, 0x2

    .line 1301
    .line 1302
    add-int/2addr v3, v1

    .line 1303
    int-to-float v3, v3

    .line 1304
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1305
    .line 1306
    div-int/lit8 v4, v1, 0x2

    .line 1307
    .line 1308
    div-int/2addr v4, v2

    .line 1309
    div-int/2addr v4, v2

    .line 1310
    sub-int/2addr v1, v4

    .line 1311
    int-to-float v4, v1

    .line 1312
    const-wide/16 v5, 0x140

    .line 1313
    .line 1314
    const/high16 v2, 0x40a00000    # 5.0f

    .line 1315
    .line 1316
    move-object/from16 v0, p0

    .line 1317
    .line 1318
    move v1, v3

    .line 1319
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1320
    .line 1321
    .line 1322
    goto/16 :goto_0

    .line 1323
    .line 1324
    :cond_14
    const/16 v1, 0x193

    .line 1325
    .line 1326
    if-ne v5, v1, :cond_15

    .line 1327
    .line 1328
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 1329
    .line 1330
    const/4 v2, 0x2

    .line 1331
    div-int/2addr v1, v2

    .line 1332
    div-int/2addr v1, v2

    .line 1333
    int-to-float v3, v1

    .line 1334
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1335
    .line 1336
    add-int/lit8 v4, v1, -0x5

    .line 1337
    .line 1338
    int-to-float v4, v4

    .line 1339
    div-int/2addr v1, v2

    .line 1340
    div-int/2addr v1, v2

    .line 1341
    div-int/2addr v1, v2

    .line 1342
    int-to-float v5, v1

    .line 1343
    const-wide/16 v6, 0x140

    .line 1344
    .line 1345
    move-object/from16 v0, p0

    .line 1346
    .line 1347
    move v1, v3

    .line 1348
    move v2, v4

    .line 1349
    move v4, v5

    .line 1350
    move-wide v5, v6

    .line 1351
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1352
    .line 1353
    .line 1354
    goto/16 :goto_0

    .line 1355
    .line 1356
    :cond_15
    const/16 v1, 0x194

    .line 1357
    .line 1358
    if-ne v5, v1, :cond_16

    .line 1359
    .line 1360
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 1361
    .line 1362
    const/4 v2, 0x2

    .line 1363
    div-int/2addr v1, v2

    .line 1364
    int-to-float v3, v1

    .line 1365
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1366
    .line 1367
    add-int/lit8 v4, v1, -0x5

    .line 1368
    .line 1369
    int-to-float v4, v4

    .line 1370
    div-int/2addr v1, v2

    .line 1371
    div-int/2addr v1, v2

    .line 1372
    div-int/2addr v1, v2

    .line 1373
    int-to-float v5, v1

    .line 1374
    const-wide/16 v6, 0x140

    .line 1375
    .line 1376
    move-object/from16 v0, p0

    .line 1377
    .line 1378
    move v1, v3

    .line 1379
    move v2, v4

    .line 1380
    move v4, v5

    .line 1381
    move-wide v5, v6

    .line 1382
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1383
    .line 1384
    .line 1385
    goto/16 :goto_0

    .line 1386
    .line 1387
    :cond_16
    const/16 v1, 0x195

    .line 1388
    .line 1389
    if-ne v5, v1, :cond_17

    .line 1390
    .line 1391
    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 1392
    .line 1393
    const/4 v2, 0x2

    .line 1394
    div-int/2addr v1, v2

    .line 1395
    div-int/lit8 v3, v1, 0x2

    .line 1396
    .line 1397
    add-int/2addr v3, v1

    .line 1398
    int-to-float v3, v3

    .line 1399
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1400
    .line 1401
    add-int/lit8 v4, v1, -0x5

    .line 1402
    .line 1403
    int-to-float v4, v4

    .line 1404
    div-int/2addr v1, v2

    .line 1405
    div-int/2addr v1, v2

    .line 1406
    div-int/2addr v1, v2

    .line 1407
    int-to-float v5, v1

    .line 1408
    const-wide/16 v6, 0x140

    .line 1409
    .line 1410
    move-object/from16 v0, p0

    .line 1411
    .line 1412
    move v1, v3

    .line 1413
    move v2, v4

    .line 1414
    move v4, v5

    .line 1415
    move-wide v5, v6

    .line 1416
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1417
    .line 1418
    .line 1419
    goto :goto_0

    .line 1420
    :cond_17
    const/16 v1, 0x196

    .line 1421
    .line 1422
    if-ne v5, v1, :cond_18

    .line 1423
    .line 1424
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1425
    .line 1426
    const/4 v2, 0x2

    .line 1427
    div-int/2addr v1, v2

    .line 1428
    div-int/2addr v1, v2

    .line 1429
    int-to-float v4, v1

    .line 1430
    const/high16 v1, 0x40a00000    # 5.0f

    .line 1431
    .line 1432
    const/high16 v3, 0x43c80000    # 400.0f

    .line 1433
    .line 1434
    const-wide/16 v5, 0x140

    .line 1435
    .line 1436
    move-object/from16 v0, p0

    .line 1437
    .line 1438
    move v2, v4

    .line 1439
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1440
    .line 1441
    .line 1442
    goto :goto_0

    .line 1443
    :cond_18
    const/16 v1, 0x197

    .line 1444
    .line 1445
    if-ne v5, v1, :cond_19

    .line 1446
    .line 1447
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1448
    .line 1449
    const/4 v2, 0x2

    .line 1450
    div-int/2addr v1, v2

    .line 1451
    int-to-float v4, v1

    .line 1452
    const/high16 v1, 0x40a00000    # 5.0f

    .line 1453
    .line 1454
    const/high16 v3, 0x43c80000    # 400.0f

    .line 1455
    .line 1456
    const-wide/16 v5, 0x140

    .line 1457
    .line 1458
    move-object/from16 v0, p0

    .line 1459
    .line 1460
    move v2, v4

    .line 1461
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1462
    .line 1463
    .line 1464
    goto :goto_0

    .line 1465
    :cond_19
    const/16 v1, 0x198

    .line 1466
    .line 1467
    if-ne v5, v1, :cond_1a

    .line 1468
    .line 1469
    iget v1, v6, Landroid/graphics/Point;->y:I

    .line 1470
    .line 1471
    const/4 v2, 0x2

    .line 1472
    div-int/2addr v1, v2

    .line 1473
    div-int/lit8 v3, v1, 0x2

    .line 1474
    .line 1475
    div-int/2addr v3, v2

    .line 1476
    add-int/2addr v3, v1

    .line 1477
    int-to-float v4, v3

    .line 1478
    const/high16 v1, 0x40a00000    # 5.0f

    .line 1479
    .line 1480
    const/high16 v3, 0x43c80000    # 400.0f

    .line 1481
    .line 1482
    const-wide/16 v5, 0x140

    .line 1483
    .line 1484
    move-object/from16 v0, p0

    .line 1485
    .line 1486
    move v2, v4

    .line 1487
    invoke-static/range {v0 .. v6}, Lwa/b;->d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V

    .line 1488
    .line 1489
    .line 1490
    :catch_0
    :cond_1a
    :goto_0
    return-void
.end method

.method public static c(Lcom/yunpan/appmanage/service/AccService;[Landroid/graphics/PointF;[Landroid/graphics/PointF;J)V
    .locals 9

    .line 1
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    new-instance v4, Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 13
    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 18
    .line 19
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 20
    .line 21
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    .line 23
    .line 24
    aget-object v2, p2, v1

    .line 25
    .line 26
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 27
    .line 28
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 29
    .line 30
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    move-object v3, v2

    .line 38
    move-wide v7, p3

    .line 39
    invoke-direct/range {v3 .. v8}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, p2}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static d(Lcom/yunpan/appmanage/service/AccService;FFFFJ)V
    .locals 6

    .line 1
    new-instance v1, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/accessibilityservice/GestureDescription$Builder;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    move-object v0, p2

    .line 22
    move-wide v4, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, p2}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
