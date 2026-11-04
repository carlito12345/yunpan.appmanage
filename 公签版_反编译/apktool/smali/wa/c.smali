.class public abstract Lwa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/hardware/input/IInputManager;IIIIII)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const/16 v5, 0x1e

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    :try_start_0
    invoke-static/range {p0 .. p2}, Lwa/c;->c(Landroid/hardware/input/IInputManager;II)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v8, 0xa

    .line 19
    .line 20
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    .line 28
    .line 29
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 30
    .line 31
    .line 32
    new-array v15, v7, [Landroid/view/MotionEvent$PointerProperties;

    .line 33
    .line 34
    aput-object v10, v15, v6

    .line 35
    .line 36
    aget-object v10, v15, v6

    .line 37
    .line 38
    iput v6, v10, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 39
    .line 40
    const/4 v14, 0x3

    .line 41
    iput v14, v10, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 42
    .line 43
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    .line 44
    .line 45
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 46
    .line 47
    .line 48
    new-array v12, v7, [Landroid/view/MotionEvent$PointerCoords;

    .line 49
    .line 50
    aput-object v10, v12, v6

    .line 51
    .line 52
    aget-object v10, v12, v6

    .line 53
    .line 54
    int-to-float v11, v1

    .line 55
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 56
    .line 57
    int-to-float v11, v2

    .line 58
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 59
    .line 60
    const/high16 v11, 0x3f800000    # 1.0f

    .line 61
    .line 62
    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 63
    .line 64
    const/16 v22, 0x0

    .line 65
    .line 66
    const/16 v23, 0x0

    .line 67
    .line 68
    const/16 v24, 0x2002

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    const/16 v17, 0x1

    .line 75
    .line 76
    const/16 v18, 0x0

    .line 77
    .line 78
    const/16 v19, 0x1

    .line 79
    .line 80
    const/high16 v20, 0x3f800000    # 1.0f

    .line 81
    .line 82
    const/high16 v21, 0x3f800000    # 1.0f

    .line 83
    .line 84
    move-wide v10, v8

    .line 85
    move-object/from16 v27, v12

    .line 86
    .line 87
    move-wide v12, v8

    .line 88
    const/4 v6, 0x3

    .line 89
    move/from16 v14, v16

    .line 90
    .line 91
    move-object/from16 v28, v15

    .line 92
    .line 93
    move/from16 v15, v17

    .line 94
    .line 95
    move-object/from16 v16, v28

    .line 96
    .line 97
    move-object/from16 v17, v27

    .line 98
    .line 99
    invoke-static/range {v10 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    const/4 v15, 0x2

    .line 104
    invoke-interface {v0, v10, v15}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 109
    .line 110
    .line 111
    if-nez v11, :cond_0

    .line 112
    .line 113
    return-void

    .line 114
    :cond_0
    sub-int v10, v3, v1

    .line 115
    .line 116
    int-to-double v11, v10

    .line 117
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 118
    .line 119
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 120
    .line 121
    .line 122
    move-result-wide v11

    .line 123
    sub-int v15, v4, v2

    .line 124
    .line 125
    move-wide/from16 v29, v8

    .line 126
    .line 127
    int-to-double v7, v15

    .line 128
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    add-double/2addr v11, v7

    .line 133
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    double-to-int v7, v7

    .line 138
    div-int/lit8 v8, v7, 0x1e

    .line 139
    .line 140
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    const/16 v8, 0xa

    .line 145
    .line 146
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    int-to-float v9, v10

    .line 151
    int-to-float v10, v6

    .line 152
    div-float/2addr v9, v10

    .line 153
    int-to-float v11, v15

    .line 154
    div-float v26, v11, v10

    .line 155
    .line 156
    div-int/2addr v5, v6

    .line 157
    const/4 v10, 0x1

    .line 158
    if-ge v5, v10, :cond_1

    .line 159
    .line 160
    const/4 v5, 0x1

    .line 161
    :cond_1
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 162
    .line 163
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const/16 v10, 0x3c

    .line 167
    .line 168
    if-ge v7, v10, :cond_2

    .line 169
    .line 170
    const/4 v6, 0x1

    .line 171
    :cond_2
    const/4 v7, 0x1

    .line 172
    :goto_0
    if-gt v7, v6, :cond_4

    .line 173
    .line 174
    int-to-float v10, v7

    .line 175
    mul-float v11, v9, v10

    .line 176
    .line 177
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    add-int/2addr v11, v1

    .line 182
    mul-float v10, v10, v26

    .line 183
    .line 184
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    add-int/2addr v10, v2

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 190
    .line 191
    .line 192
    move-result-wide v17

    .line 193
    const/4 v12, 0x0

    .line 194
    aget-object v15, v27, v12

    .line 195
    .line 196
    int-to-float v11, v11

    .line 197
    iput v11, v15, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 198
    .line 199
    int-to-float v10, v10

    .line 200
    iput v10, v15, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 201
    .line 202
    const/16 v22, 0x0

    .line 203
    .line 204
    const/16 v23, 0x0

    .line 205
    .line 206
    const/16 v24, 0x2002

    .line 207
    .line 208
    const/16 v25, 0x0

    .line 209
    .line 210
    const/4 v15, 0x2

    .line 211
    const/16 v19, 0x1

    .line 212
    .line 213
    const/16 v20, 0x0

    .line 214
    .line 215
    const/16 v21, 0x1

    .line 216
    .line 217
    const/high16 v31, 0x3f800000    # 1.0f

    .line 218
    .line 219
    const/high16 v32, 0x3f800000    # 1.0f

    .line 220
    .line 221
    move-wide/from16 v10, v29

    .line 222
    .line 223
    move/from16 v33, v9

    .line 224
    .line 225
    move-wide v8, v13

    .line 226
    move-wide/from16 v12, v17

    .line 227
    .line 228
    move v14, v15

    .line 229
    const/4 v8, 0x2

    .line 230
    move/from16 v15, v19

    .line 231
    .line 232
    move-object/from16 v16, v28

    .line 233
    .line 234
    move-object/from16 v17, v27

    .line 235
    .line 236
    move/from16 v18, v20

    .line 237
    .line 238
    move/from16 v19, v21

    .line 239
    .line 240
    move/from16 v20, v31

    .line 241
    .line 242
    move/from16 v21, v32

    .line 243
    .line 244
    invoke-static/range {v10 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    invoke-interface {v0, v9, v8}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 252
    .line 253
    .line 254
    const/4 v9, 0x1

    .line 255
    if-le v5, v9, :cond_3

    .line 256
    .line 257
    if-ge v7, v6, :cond_3

    .line 258
    .line 259
    int-to-long v10, v5

    .line 260
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 261
    .line 262
    .line 263
    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    goto/16 :goto_4

    .line 266
    .line 267
    :cond_3
    :goto_1
    add-int/2addr v7, v9

    .line 268
    move/from16 v9, v33

    .line 269
    .line 270
    const/16 v8, 0xa

    .line 271
    .line 272
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_4
    const/4 v8, 0x2

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 277
    .line 278
    .line 279
    move-result-wide v12

    .line 280
    const/4 v1, 0x0

    .line 281
    aget-object v2, v27, v1

    .line 282
    .line 283
    int-to-float v1, v3

    .line 284
    iput v1, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 285
    .line 286
    int-to-float v1, v4

    .line 287
    iput v1, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 288
    .line 289
    const/16 v22, 0x0

    .line 290
    .line 291
    const/16 v23, 0x0

    .line 292
    .line 293
    const/16 v24, 0x2002

    .line 294
    .line 295
    const/16 v25, 0x0

    .line 296
    .line 297
    const/4 v14, 0x1

    .line 298
    const/4 v15, 0x1

    .line 299
    const/16 v18, 0x0

    .line 300
    .line 301
    const/16 v19, 0x0

    .line 302
    .line 303
    const/high16 v20, 0x3f800000    # 1.0f

    .line 304
    .line 305
    const/high16 v21, 0x3f800000    # 1.0f

    .line 306
    .line 307
    move-wide/from16 v10, v29

    .line 308
    .line 309
    move-object/from16 v16, v28

    .line 310
    .line 311
    move-object/from16 v17, v27

    .line 312
    .line 313
    invoke-static/range {v10 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-interface {v0, v1, v8}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 322
    .line 323
    .line 324
    if-nez v2, :cond_5

    .line 325
    .line 326
    return-void

    .line 327
    :cond_5
    sub-int v1, p5, v3

    .line 328
    .line 329
    int-to-double v6, v1

    .line 330
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 331
    .line 332
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 333
    .line 334
    .line 335
    move-result-wide v6

    .line 336
    sub-int v2, p6, v4

    .line 337
    .line 338
    int-to-double v11, v2

    .line 339
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 340
    .line 341
    .line 342
    move-result-wide v9

    .line 343
    add-double/2addr v6, v9

    .line 344
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 345
    .line 346
    .line 347
    move-result-wide v6

    .line 348
    double-to-int v6, v6

    .line 349
    div-int/lit8 v6, v6, 0x28

    .line 350
    .line 351
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    const/16 v7, 0x8

    .line 356
    .line 357
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    int-to-float v1, v1

    .line 362
    int-to-float v7, v6

    .line 363
    div-float/2addr v1, v7

    .line 364
    int-to-float v2, v2

    .line 365
    div-float/2addr v2, v7

    .line 366
    const/16 v7, 0xa

    .line 367
    .line 368
    div-int/2addr v7, v6

    .line 369
    const/4 v9, 0x1

    .line 370
    if-ge v7, v9, :cond_6

    .line 371
    .line 372
    const/4 v10, 0x1

    .line 373
    goto :goto_2

    .line 374
    :cond_6
    move v10, v7

    .line 375
    :goto_2
    if-ge v5, v9, :cond_7

    .line 376
    .line 377
    const/4 v10, 0x1

    .line 378
    :cond_7
    const/4 v5, 0x1

    .line 379
    :goto_3
    if-gt v5, v6, :cond_9

    .line 380
    .line 381
    int-to-float v7, v5

    .line 382
    mul-float v9, v1, v7

    .line 383
    .line 384
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 385
    .line 386
    .line 387
    move-result v9

    .line 388
    add-int/2addr v9, v3

    .line 389
    mul-float v7, v7, v2

    .line 390
    .line 391
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    add-int/2addr v7, v4

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 397
    .line 398
    .line 399
    move-result-wide v13

    .line 400
    const/16 v23, 0x0

    .line 401
    .line 402
    const/16 v24, 0x0

    .line 403
    .line 404
    const/16 v25, 0x2002

    .line 405
    .line 406
    const/16 v26, 0x0

    .line 407
    .line 408
    const/4 v15, 0x7

    .line 409
    const/16 v16, 0x1

    .line 410
    .line 411
    const/16 v19, 0x0

    .line 412
    .line 413
    const/16 v20, 0x0

    .line 414
    .line 415
    const/high16 v21, 0x3f800000    # 1.0f

    .line 416
    .line 417
    const/high16 v22, 0x3f800000    # 1.0f

    .line 418
    .line 419
    move-wide v11, v13

    .line 420
    move-object/from16 v17, v28

    .line 421
    .line 422
    move-object/from16 v18, v27

    .line 423
    .line 424
    invoke-static/range {v11 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    const/4 v12, 0x0

    .line 429
    aget-object v13, v27, v12

    .line 430
    .line 431
    invoke-virtual {v11, v12, v13}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 432
    .line 433
    .line 434
    aget-object v13, v27, v12

    .line 435
    .line 436
    int-to-float v9, v9

    .line 437
    iput v9, v13, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 438
    .line 439
    int-to-float v7, v7

    .line 440
    iput v7, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 441
    .line 442
    const/4 v7, 0x0

    .line 443
    iput v7, v13, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 444
    .line 445
    invoke-interface {v0, v11, v8}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 446
    .line 447
    .line 448
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 449
    .line 450
    .line 451
    const/4 v7, 0x1

    .line 452
    if-le v10, v7, :cond_8

    .line 453
    .line 454
    if-ge v5, v6, :cond_8

    .line 455
    .line 456
    int-to-long v13, v10

    .line 457
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .line 459
    .line 460
    :cond_8
    add-int/2addr v5, v7

    .line 461
    goto :goto_3

    .line 462
    :cond_9
    return-void

    .line 463
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 464
    .line 465
    .line 466
    return-void
.end method

.method public static b(Landroid/hardware/input/IInputManager;Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget v0, Landroid/hardware/input/InputManager;->INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I

    .line 2
    .line 3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x21

    .line 6
    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-interface {p0, p1, v0, v1}, Landroid/hardware/input/IInputManager;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1, v0}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public static c(Landroid/hardware/input/IInputManager;II)V
    .locals 18

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 10
    .line 11
    .line 12
    new-array v8, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 13
    .line 14
    aput-object v2, v8, v1

    .line 15
    .line 16
    aget-object v2, v8, v1

    .line 17
    .line 18
    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 22
    .line 23
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 26
    .line 27
    .line 28
    new-array v9, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 29
    .line 30
    aput-object v2, v9, v1

    .line 31
    .line 32
    aget-object v0, v9, v1

    .line 33
    .line 34
    move/from16 v1, p1

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 38
    .line 39
    move/from16 v1, p2

    .line 40
    .line 41
    int-to-float v1, v1

    .line 42
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 46
    .line 47
    const/high16 v12, 0x3f800000    # 1.0f

    .line 48
    .line 49
    const/high16 v13, 0x3f800000    # 1.0f

    .line 50
    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const/4 v6, 0x7

    .line 54
    const/16 v16, 0x2002

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    move-wide v2, v4

    .line 62
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x2

    .line 67
    move-object/from16 v2, p0

    .line 68
    .line 69
    invoke-interface {v2, v0, v1}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public static d(Landroid/hardware/input/IInputManager;IZ)V
    .locals 11

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v8

    .line 8
    new-instance v10, Landroid/view/KeyEvent;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, v10

    .line 13
    move-wide v1, v8

    .line 14
    move-wide v3, v8

    .line 15
    move v6, p1

    .line 16
    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v10}, Lwa/c;->b(Landroid/hardware/input/IInputManager;Landroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    add-int/lit8 p2, p2, 0x32

    .line 30
    .line 31
    int-to-long v0, p2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    int-to-long v0, p2

    .line 40
    add-long/2addr v8, v0

    .line 41
    const-wide/16 v0, 0x32

    .line 42
    .line 43
    add-long/2addr v8, v0

    .line 44
    const/16 p2, 0x80

    .line 45
    .line 46
    invoke-static {v10, v8, v9, p1, p2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p0, p2}, Lwa/c;->b(Landroid/hardware/input/IInputManager;Landroid/view/KeyEvent;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {v10, p1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Lwa/c;->b(Landroid/hardware/input/IInputManager;Landroid/view/KeyEvent;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static e(Landroid/hardware/input/IInputManager;IIIZ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v19

    .line 9
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 12
    .line 13
    .line 14
    new-array v15, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 15
    .line 16
    aput-object v3, v15, v2

    .line 17
    .line 18
    aget-object v3, v15, v2

    .line 19
    .line 20
    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 24
    .line 25
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 28
    .line 29
    .line 30
    new-array v1, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 31
    .line 32
    aput-object v3, v1, v2

    .line 33
    .line 34
    aget-object v2, v1, v2

    .line 35
    .line 36
    move/from16 v3, p1

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 40
    .line 41
    move/from16 v3, p2

    .line 42
    .line 43
    int-to-float v3, v3

    .line 44
    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    const/16 v17, 0x2002

    .line 50
    .line 51
    const/16 v18, 0x0

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x1

    .line 55
    const/4 v11, 0x0

    .line 56
    const/high16 v13, 0x3f800000    # 1.0f

    .line 57
    .line 58
    const/high16 v14, 0x3f800000    # 1.0f

    .line 59
    .line 60
    move-wide/from16 v3, v19

    .line 61
    .line 62
    move-wide/from16 v5, v19

    .line 63
    .line 64
    move-object v9, v15

    .line 65
    move-object v10, v1

    .line 66
    move/from16 v12, p3

    .line 67
    .line 68
    move-object/from16 v21, v15

    .line 69
    .line 70
    move v15, v2

    .line 71
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v15, 0x2

    .line 76
    invoke-interface {v0, v2, v15}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 81
    .line 82
    .line 83
    if-nez v3, :cond_0

    .line 84
    .line 85
    return-void

    .line 86
    :cond_0
    if-eqz p4, :cond_1

    .line 87
    .line 88
    const-wide/16 v2, 0x378

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-wide/16 v2, 0x1e

    .line 92
    .line 93
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    const/4 v2, 0x0

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    const/16 v17, 0x2002

    .line 104
    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    const/4 v7, 0x1

    .line 108
    const/4 v8, 0x1

    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v12, 0x0

    .line 111
    const/high16 v13, 0x3f800000    # 1.0f

    .line 112
    .line 113
    const/high16 v14, 0x3f800000    # 1.0f

    .line 114
    .line 115
    move-wide/from16 v3, v19

    .line 116
    .line 117
    move-object/from16 v9, v21

    .line 118
    .line 119
    move-object v10, v1

    .line 120
    const/4 v1, 0x2

    .line 121
    move v15, v2

    .line 122
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v0, v2, v1}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static f(Landroid/hardware/input/IInputManager;IIFF)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 15
    .line 16
    .line 17
    new-array v9, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 18
    .line 19
    aput-object v3, v9, v2

    .line 20
    .line 21
    aget-object v3, v9, v2

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 24
    .line 25
    .line 26
    aget-object v3, v9, v2

    .line 27
    .line 28
    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 32
    .line 33
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 36
    .line 37
    .line 38
    new-array v10, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 39
    .line 40
    aput-object v3, v10, v2

    .line 41
    .line 42
    aget-object v1, v10, v2

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 45
    .line 46
    .line 47
    aget-object v1, v10, v2

    .line 48
    .line 49
    move/from16 v3, p1

    .line 50
    .line 51
    int-to-float v3, v3

    .line 52
    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 53
    .line 54
    move/from16 v3, p2

    .line 55
    .line 56
    int-to-float v3, v3

    .line 57
    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 58
    .line 59
    const/16 v3, 0xa

    .line 60
    .line 61
    move/from16 v4, p3

    .line 62
    .line 63
    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 64
    .line 65
    .line 66
    aget-object v1, v10, v2

    .line 67
    .line 68
    const/16 v2, 0x9

    .line 69
    .line 70
    move/from16 v3, p4

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 73
    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/16 v17, 0x2002

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const/16 v7, 0x8

    .line 83
    .line 84
    const/4 v8, 0x1

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    const/high16 v13, 0x3f800000    # 1.0f

    .line 88
    .line 89
    const/high16 v14, 0x3f800000    # 1.0f

    .line 90
    .line 91
    move-wide v3, v5

    .line 92
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/4 v2, 0x2

    .line 97
    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static g(Landroid/hardware/input/IInputManager;IIZ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v15

    .line 10
    move/from16 v1, p1

    .line 11
    .line 12
    int-to-float v14, v1

    .line 13
    move/from16 v1, p2

    .line 14
    .line 15
    int-to-float v13, v1

    .line 16
    const/high16 v11, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/high16 v12, 0x3f800000    # 1.0f

    .line 19
    .line 20
    const/16 v17, 0x0

    .line 21
    .line 22
    const/16 v18, 0x0

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/high16 v8, 0x3f800000    # 1.0f

    .line 26
    .line 27
    const/high16 v9, 0x3f800000    # 1.0f

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    move-wide v1, v15

    .line 31
    move-wide v3, v15

    .line 32
    move v6, v14

    .line 33
    move v7, v13

    .line 34
    move/from16 v19, v13

    .line 35
    .line 36
    move/from16 v13, v17

    .line 37
    .line 38
    move/from16 v17, v14

    .line 39
    .line 40
    move/from16 v14, v18

    .line 41
    .line 42
    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/16 v14, 0x1002

    .line 47
    .line 48
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->setSource(I)V

    .line 49
    .line 50
    .line 51
    const/4 v13, 0x2

    .line 52
    invoke-interface {v0, v1, v13}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 57
    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    if-eqz p3, :cond_2

    .line 63
    .line 64
    const-wide/16 v1, 0x378

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-wide/16 v1, 0x1e

    .line 68
    .line 69
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    const/high16 v11, 0x3f800000    # 1.0f

    .line 77
    .line 78
    const/high16 v12, 0x3f800000    # 1.0f

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    const/high16 v8, 0x3f800000    # 1.0f

    .line 86
    .line 87
    const/high16 v9, 0x3f800000    # 1.0f

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    move-wide v1, v15

    .line 91
    move/from16 v6, v17

    .line 92
    .line 93
    move/from16 v7, v19

    .line 94
    .line 95
    const/4 v15, 0x2

    .line 96
    move/from16 v13, v18

    .line 97
    .line 98
    const/16 v15, 0x1002

    .line 99
    .line 100
    move/from16 v14, v20

    .line 101
    .line 102
    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->setSource(I)V

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x2

    .line 110
    invoke-interface {v0, v1, v2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    return-void
.end method
