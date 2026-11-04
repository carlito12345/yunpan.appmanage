.class public final Lra/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lra/d;

.field public final b:Lra/a;

.field public final c:Lra/b;

.field public d:F

.field public e:F

.field public f:Landroid/media/audiofx/AcousticEchoCanceler;

.field public g:Landroid/media/audiofx/NoiseSuppressor;

.field public h:Landroid/media/audiofx/AutomaticGainControl;

.field public final i:Landroid/media/AudioManager;

.field public j:Landroid/media/AudioTrack;

.field public k:Landroid/media/AudioRecord;

.field public final l:I

.field public final m:I

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public o:Ljava/lang/Thread;

.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    const-string v5, "AudioRecord init failed"

    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/high16 v6, 0x3f800000    # 1.0f

    .line 17
    .line 18
    iput v6, v0, Lra/c;->d:F

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    iput-object v7, v0, Lra/c;->j:Landroid/media/AudioTrack;

    .line 22
    .line 23
    iput-object v7, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 24
    .line 25
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v7, v0, Lra/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v7, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v7, v0, Lra/c;->p:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v7, Lra/d;

    .line 41
    .line 42
    invoke-direct {v7}, Lra/d;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-boolean v8, v7, Lra/d;->b:Z

    .line 46
    .line 47
    iput-boolean v8, v7, Lra/d;->c:Z

    .line 48
    .line 49
    iput-boolean v8, v7, Lra/d;->d:Z

    .line 50
    .line 51
    iput-object v7, v0, Lra/c;->a:Lra/d;

    .line 52
    .line 53
    new-instance v9, Lra/a;

    .line 54
    .line 55
    invoke-direct {v9}, Lra/a;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v9, v0, Lra/c;->b:Lra/a;

    .line 59
    .line 60
    new-instance v9, Lra/b;

    .line 61
    .line 62
    invoke-direct {v9}, Lra/b;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v9, v0, Lra/c;->c:Lra/b;

    .line 66
    .line 67
    iput v4, v0, Lra/c;->m:I

    .line 68
    .line 69
    move/from16 v9, p3

    .line 70
    .line 71
    int-to-float v9, v9

    .line 72
    const/high16 v10, 0x42c80000    # 100.0f

    .line 73
    .line 74
    div-float/2addr v9, v10

    .line 75
    const/high16 v10, 0x40000000    # 2.0f

    .line 76
    .line 77
    mul-float v9, v9, v10

    .line 78
    .line 79
    add-float/2addr v9, v6

    .line 80
    iput v9, v7, Lra/d;->a:F

    .line 81
    .line 82
    const-string v6, "audio"

    .line 83
    .line 84
    move-object/from16 v7, p1

    .line 85
    .line 86
    invoke-virtual {v7, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Landroid/media/AudioManager;

    .line 91
    .line 92
    iput-object v6, v0, Lra/c;->i:Landroid/media/AudioManager;

    .line 93
    .line 94
    const v6, 0xbb80

    .line 95
    .line 96
    .line 97
    const/16 v7, 0x10

    .line 98
    .line 99
    const/4 v9, 0x2

    .line 100
    invoke-static {v6, v7, v9}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    const/4 v10, 0x4

    .line 105
    invoke-static {v6, v10, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    const/16 v11, 0x1000

    .line 114
    .line 115
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iput v7, v0, Lra/c;->l:I

    .line 120
    .line 121
    const-string v11, "\u65e0\u6cd5\u521b\u5efa\u6536\u97f3\u5668"

    .line 122
    .line 123
    if-ne v4, v9, :cond_1

    .line 124
    .line 125
    new-instance v4, Landroid/media/AudioRecord;

    .line 126
    .line 127
    const/4 v13, 0x0

    .line 128
    const v14, 0xbb80

    .line 129
    .line 130
    .line 131
    const/16 v15, 0x10

    .line 132
    .line 133
    const/16 v16, 0x2

    .line 134
    .line 135
    move-object v12, v4

    .line 136
    move/from16 v17, v7

    .line 137
    .line 138
    invoke-direct/range {v12 .. v17}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 139
    .line 140
    .line 141
    iput-object v4, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-ne v4, v8, :cond_0

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    .line 152
    .line 153
    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_1
    :try_start_0
    new-instance v4, Landroid/media/AudioRecord;

    .line 158
    .line 159
    const/16 v15, 0x10

    .line 160
    .line 161
    const/16 v16, 0x2

    .line 162
    .line 163
    const/4 v13, 0x7

    .line 164
    const v14, 0xbb80

    .line 165
    .line 166
    .line 167
    move-object v12, v4

    .line 168
    move/from16 v17, v7

    .line 169
    .line 170
    invoke-direct/range {v12 .. v17}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 171
    .line 172
    .line 173
    iput-object v4, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 174
    .line 175
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-ne v4, v8, :cond_2

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    .line 183
    .line 184
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    :try_start_1
    new-instance v4, Landroid/media/AudioRecord;

    .line 189
    .line 190
    iget v7, v0, Lra/c;->l:I

    .line 191
    .line 192
    const/16 v15, 0x10

    .line 193
    .line 194
    const/16 v16, 0x2

    .line 195
    .line 196
    const/4 v13, 0x6

    .line 197
    const v14, 0xbb80

    .line 198
    .line 199
    .line 200
    move-object v12, v4

    .line 201
    move/from16 v17, v7

    .line 202
    .line 203
    invoke-direct/range {v12 .. v17}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 204
    .line 205
    .line 206
    iput-object v4, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 207
    .line 208
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-ne v4, v8, :cond_3

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_3
    new-instance v4, Ljava/lang/Exception;

    .line 216
    .line 217
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :catch_1
    :try_start_2
    new-instance v4, Landroid/media/AudioRecord;

    .line 222
    .line 223
    iget v7, v0, Lra/c;->l:I

    .line 224
    .line 225
    const/16 v15, 0x10

    .line 226
    .line 227
    const/16 v16, 0x2

    .line 228
    .line 229
    const/4 v13, 0x1

    .line 230
    const v14, 0xbb80

    .line 231
    .line 232
    .line 233
    move-object v12, v4

    .line 234
    move/from16 v17, v7

    .line 235
    .line 236
    invoke-direct/range {v12 .. v17}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 237
    .line 238
    .line 239
    iput-object v4, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 240
    .line 241
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-ne v4, v8, :cond_4

    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_4
    new-instance v4, Ljava/lang/Exception;

    .line 249
    .line 250
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 254
    :catch_2
    nop

    .line 255
    new-instance v4, Landroid/media/AudioRecord;

    .line 256
    .line 257
    iget v5, v0, Lra/c;->l:I

    .line 258
    .line 259
    const v14, 0xbb80

    .line 260
    .line 261
    .line 262
    const/16 v15, 0x10

    .line 263
    .line 264
    const/4 v13, 0x0

    .line 265
    const/16 v16, 0x2

    .line 266
    .line 267
    move-object v12, v4

    .line 268
    move/from16 v17, v5

    .line 269
    .line 270
    invoke-direct/range {v12 .. v17}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 271
    .line 272
    .line 273
    iput-object v4, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 274
    .line 275
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-ne v4, v8, :cond_d

    .line 280
    .line 281
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 282
    .line 283
    const/4 v5, 0x0

    .line 284
    const/4 v7, -0x1

    .line 285
    const/16 v11, 0x17

    .line 286
    .line 287
    if-lt v4, v11, :cond_6

    .line 288
    .line 289
    if-eq v1, v7, :cond_6

    .line 290
    .line 291
    iget-object v4, v0, Lra/c;->i:Landroid/media/AudioManager;

    .line 292
    .line 293
    invoke-static {v4}, Ld2/c;->C(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    array-length v12, v4

    .line 298
    const/4 v13, 0x0

    .line 299
    :goto_1
    if-ge v13, v12, :cond_6

    .line 300
    .line 301
    aget-object v14, v4, v13

    .line 302
    .line 303
    invoke-static {v14}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 304
    .line 305
    .line 306
    move-result v15

    .line 307
    if-ne v15, v1, :cond_5

    .line 308
    .line 309
    iget-object v1, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 310
    .line 311
    invoke-static {v1, v14}, Lr8/a;->m(Landroid/media/AudioRecord;Landroid/media/AudioDeviceInfo;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_6
    :goto_2
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 319
    .line 320
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :catch_3
    :try_start_4
    const-class v4, Landroid/media/AudioAttributes$Builder;

    .line 332
    .line 333
    const-string v12, "mUsage"

    .line 334
    .line 335
    invoke-virtual {v4, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v4, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    .line 344
    .line 345
    goto :goto_3

    .line 346
    :catchall_0
    invoke-virtual {v1, v9}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 347
    .line 348
    .line 349
    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 350
    .line 351
    .line 352
    move-result-object v13

    .line 353
    new-instance v1, Landroid/media/AudioFormat$Builder;

    .line 354
    .line 355
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v1, v6}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v1, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 371
    .line 372
    .line 373
    move-result-object v14

    .line 374
    new-instance v1, Landroid/media/AudioTrack;

    .line 375
    .line 376
    iget v15, v0, Lra/c;->l:I

    .line 377
    .line 378
    const/16 v16, 0x1

    .line 379
    .line 380
    const/16 v17, 0x0

    .line 381
    .line 382
    move-object v12, v1

    .line 383
    invoke-direct/range {v12 .. v17}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 384
    .line 385
    .line 386
    iput-object v1, v0, Lra/c;->j:Landroid/media/AudioTrack;

    .line 387
    .line 388
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-ne v1, v8, :cond_c

    .line 393
    .line 394
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 395
    .line 396
    if-lt v1, v11, :cond_8

    .line 397
    .line 398
    if-eq v3, v7, :cond_8

    .line 399
    .line 400
    iget-object v1, v0, Lra/c;->i:Landroid/media/AudioManager;

    .line 401
    .line 402
    invoke-static {v1}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    array-length v2, v1

    .line 407
    :goto_4
    if-ge v5, v2, :cond_8

    .line 408
    .line 409
    aget-object v4, v1, v5

    .line 410
    .line 411
    invoke-static {v4}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-ne v6, v3, :cond_7

    .line 416
    .line 417
    iget-object v1, v0, Lra/c;->j:Landroid/media/AudioTrack;

    .line 418
    .line 419
    invoke-static {v1, v4}, La2/a;->p(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    .line 420
    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 424
    .line 425
    goto :goto_4

    .line 426
    :cond_8
    :goto_5
    iget v1, v0, Lra/c;->m:I

    .line 427
    .line 428
    if-eqz v1, :cond_9

    .line 429
    .line 430
    if-ne v1, v9, :cond_b

    .line 431
    .line 432
    :cond_9
    iget-object v1, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 433
    .line 434
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    invoke-virtual/range {p0 .. p0}, Lra/c;->b()V

    .line 439
    .line 440
    .line 441
    iget-object v2, v0, Lra/c;->a:Lra/d;

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_a

    .line 451
    .line 452
    invoke-static {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    iput-object v2, v0, Lra/c;->f:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 457
    .line 458
    if-eqz v2, :cond_a

    .line 459
    .line 460
    invoke-virtual {v2, v8}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 461
    .line 462
    .line 463
    :cond_a
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_b

    .line 468
    .line 469
    invoke-static {v1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    iput-object v1, v0, Lra/c;->g:Landroid/media/audiofx/NoiseSuppressor;

    .line 474
    .line 475
    if-eqz v1, :cond_b

    .line 476
    .line 477
    invoke-virtual {v1, v8}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 478
    .line 479
    .line 480
    :cond_b
    return-void

    .line 481
    :cond_c
    new-instance v1, Ljava/lang/Exception;

    .line 482
    .line 483
    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    .line 484
    .line 485
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v1

    .line 489
    :cond_d
    new-instance v1, Ljava/lang/Exception;

    .line 490
    .line 491
    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    goto :goto_7

    .line 495
    :goto_6
    throw v1

    .line 496
    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public final a()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lra/c;->l:I

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    new-array v2, v1, [S

    .line 8
    .line 9
    new-array v3, v1, [F

    .line 10
    .line 11
    :cond_0
    :goto_0
    iget-object v4, v0, Lra/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_1c

    .line 18
    .line 19
    iget-object v5, v0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {v5, v2, v6, v1}, Landroid/media/AudioRecord;->read([SII)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-gtz v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto/16 :goto_11

    .line 35
    .line 36
    :cond_1
    iget-object v4, v0, Lra/c;->a:Lra/d;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v7, v0, Lra/c;->b:Lra/a;

    .line 42
    .line 43
    invoke-virtual {v7}, Lra/a;->a()V

    .line 44
    .line 45
    .line 46
    iget-object v8, v0, Lra/c;->c:Lra/b;

    .line 47
    .line 48
    invoke-virtual {v8}, Lra/b;->a()V

    .line 49
    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    :goto_1
    const/16 v10, -0x8000

    .line 53
    .line 54
    const/16 v11, 0x7fff

    .line 55
    .line 56
    if-ge v9, v5, :cond_4

    .line 57
    .line 58
    aget-short v12, v2, v9

    .line 59
    .line 60
    int-to-float v12, v12

    .line 61
    iget v13, v7, Lra/a;->b:F

    .line 62
    .line 63
    iget v14, v7, Lra/a;->d:F

    .line 64
    .line 65
    add-float/2addr v14, v12

    .line 66
    iget v15, v7, Lra/a;->c:F

    .line 67
    .line 68
    sub-float/2addr v14, v15

    .line 69
    mul-float v14, v14, v13

    .line 70
    .line 71
    iput v12, v7, Lra/a;->c:F

    .line 72
    .line 73
    iput v14, v7, Lra/a;->d:F

    .line 74
    .line 75
    iget v12, v8, Lra/b;->c:F

    .line 76
    .line 77
    iget v13, v8, Lra/b;->b:F

    .line 78
    .line 79
    invoke-static {v14, v12, v13, v12}, Lg/b;->b(FFFF)F

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    iput v12, v8, Lra/b;->c:F

    .line 84
    .line 85
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-le v12, v11, :cond_2

    .line 90
    .line 91
    const/16 v10, 0x7fff

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    if-ge v12, v10, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move v10, v12

    .line 98
    :goto_2
    int-to-short v10, v10

    .line 99
    aput-short v10, v2, v9

    .line 100
    .line 101
    add-int/lit8 v9, v9, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/4 v7, 0x0

    .line 105
    :goto_3
    const/high16 v8, 0x47000000    # 32768.0f

    .line 106
    .line 107
    if-ge v7, v5, :cond_5

    .line 108
    .line 109
    aget-short v9, v2, v7

    .line 110
    .line 111
    int-to-float v9, v9

    .line 112
    div-float/2addr v9, v8

    .line 113
    aput v9, v3, v7

    .line 114
    .line 115
    add-int/lit8 v7, v7, 0x1

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    iget-boolean v7, v4, Lra/d;->b:Z

    .line 119
    .line 120
    const/high16 v9, 0x3f800000    # 1.0f

    .line 121
    .line 122
    const v12, 0x358637bd    # 1.0E-6f

    .line 123
    .line 124
    .line 125
    const/4 v13, 0x0

    .line 126
    if-eqz v7, :cond_8

    .line 127
    .line 128
    const v7, 0x3b449ba6    # 0.003f

    .line 129
    .line 130
    .line 131
    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 136
    .line 137
    mul-float v14, v14, v7

    .line 138
    .line 139
    const/4 v15, 0x0

    .line 140
    :goto_4
    if-ge v15, v5, :cond_8

    .line 141
    .line 142
    aget v16, v3, v15

    .line 143
    .line 144
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result v16

    .line 148
    cmpg-float v17, v16, v7

    .line 149
    .line 150
    if-gez v17, :cond_6

    .line 151
    .line 152
    cmpl-float v17, v7, v13

    .line 153
    .line 154
    if-lez v17, :cond_7

    .line 155
    .line 156
    div-float v16, v16, v7

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_6
    cmpg-float v17, v16, v14

    .line 160
    .line 161
    if-gez v17, :cond_7

    .line 162
    .line 163
    sub-float v16, v16, v7

    .line 164
    .line 165
    sub-float v6, v14, v7

    .line 166
    .line 167
    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    div-float v16, v16, v6

    .line 172
    .line 173
    const v6, 0x3e99999a    # 0.3f

    .line 174
    .line 175
    .line 176
    mul-float v16, v16, v6

    .line 177
    .line 178
    const v6, 0x3f333333    # 0.7f

    .line 179
    .line 180
    .line 181
    add-float v16, v16, v6

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_7
    const/high16 v16, 0x3f800000    # 1.0f

    .line 185
    .line 186
    :goto_5
    sub-float v6, v9, v16

    .line 187
    .line 188
    const/high16 v16, 0x3f000000    # 0.5f

    .line 189
    .line 190
    mul-float v6, v6, v16

    .line 191
    .line 192
    sub-float v6, v9, v6

    .line 193
    .line 194
    aget v16, v3, v15

    .line 195
    .line 196
    mul-float v16, v16, v6

    .line 197
    .line 198
    aput v16, v3, v15

    .line 199
    .line 200
    add-int/lit8 v15, v15, 0x1

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    goto :goto_4

    .line 204
    :cond_8
    iget-boolean v6, v4, Lra/d;->d:Z

    .line 205
    .line 206
    if-eqz v6, :cond_a

    .line 207
    .line 208
    const/high16 v6, 0x40a00000    # 5.0f

    .line 209
    .line 210
    float-to-double v6, v6

    .line 211
    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 217
    .line 218
    .line 219
    mul-double v6, v6, v14

    .line 220
    .line 221
    const-wide v18, 0x40e7700000000000L    # 48000.0

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    div-double v6, v6, v18

    .line 227
    .line 228
    double-to-float v6, v6

    .line 229
    const/4 v7, 0x0

    .line 230
    :goto_6
    if-ge v7, v5, :cond_a

    .line 231
    .line 232
    aget v16, v3, v7

    .line 233
    .line 234
    iget v12, v0, Lra/c;->e:F

    .line 235
    .line 236
    float-to-double v9, v12

    .line 237
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 238
    .line 239
    .line 240
    move-result-wide v9

    .line 241
    double-to-float v9, v9

    .line 242
    mul-float v16, v16, v9

    .line 243
    .line 244
    aput v16, v3, v7

    .line 245
    .line 246
    iget v9, v0, Lra/c;->e:F

    .line 247
    .line 248
    add-float/2addr v9, v6

    .line 249
    iput v9, v0, Lra/c;->e:F

    .line 250
    .line 251
    float-to-double v11, v9

    .line 252
    cmpl-double v16, v11, v14

    .line 253
    .line 254
    if-lez v16, :cond_9

    .line 255
    .line 256
    const v11, 0x40c90fdb

    .line 257
    .line 258
    .line 259
    sub-float/2addr v9, v11

    .line 260
    iput v9, v0, Lra/c;->e:F

    .line 261
    .line 262
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 263
    .line 264
    const/high16 v9, 0x3f800000    # 1.0f

    .line 265
    .line 266
    const/16 v10, -0x8000

    .line 267
    .line 268
    const/16 v11, 0x7fff

    .line 269
    .line 270
    const v12, 0x358637bd    # 1.0E-6f

    .line 271
    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_a
    iget v6, v4, Lra/d;->a:F

    .line 275
    .line 276
    const/4 v7, 0x0

    .line 277
    :goto_7
    if-ge v7, v5, :cond_d

    .line 278
    .line 279
    aget v9, v3, v7

    .line 280
    .line 281
    mul-float v9, v9, v8

    .line 282
    .line 283
    mul-float v9, v9, v6

    .line 284
    .line 285
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    const/16 v10, 0x7fff

    .line 290
    .line 291
    if-le v9, v10, :cond_b

    .line 292
    .line 293
    const/16 v9, 0x7fff

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_b
    const/16 v11, -0x8000

    .line 297
    .line 298
    if-ge v9, v11, :cond_c

    .line 299
    .line 300
    const/16 v9, -0x8000

    .line 301
    .line 302
    :cond_c
    :goto_8
    int-to-short v9, v9

    .line 303
    aput-short v9, v2, v7

    .line 304
    .line 305
    add-int/lit8 v7, v7, 0x1

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_d
    iget-boolean v4, v4, Lra/d;->c:Z

    .line 309
    .line 310
    if-eqz v4, :cond_1b

    .line 311
    .line 312
    if-gtz v5, :cond_e

    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_e
    const-wide/16 v6, 0x0

    .line 316
    .line 317
    const/4 v4, 0x0

    .line 318
    :goto_9
    if-ge v4, v5, :cond_f

    .line 319
    .line 320
    aget-short v8, v2, v4

    .line 321
    .line 322
    int-to-double v8, v8

    .line 323
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 324
    .line 325
    .line 326
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 327
    .line 328
    .line 329
    mul-double v8, v8, v8

    .line 330
    .line 331
    add-double/2addr v6, v8

    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_f
    int-to-double v8, v5

    .line 336
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 337
    .line 338
    .line 339
    div-double/2addr v6, v8

    .line 340
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 341
    .line 342
    .line 343
    move-result-wide v6

    .line 344
    const-wide v8, 0x40dfffc000000000L    # 32767.0

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    div-double/2addr v6, v8

    .line 350
    double-to-float v4, v6

    .line 351
    cmpg-float v6, v4, v13

    .line 352
    .line 353
    if-gez v6, :cond_10

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 357
    .line 358
    cmpl-float v7, v4, v6

    .line 359
    .line 360
    if-lez v7, :cond_11

    .line 361
    .line 362
    const/high16 v13, 0x3f800000    # 1.0f

    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_11
    move v13, v4

    .line 366
    :goto_a
    const v4, 0x3ee66666    # 0.45f

    .line 367
    .line 368
    .line 369
    cmpg-float v6, v13, v4

    .line 370
    .line 371
    if-gtz v6, :cond_12

    .line 372
    .line 373
    goto/16 :goto_10

    .line 374
    .line 375
    :cond_12
    const v6, 0x358637bd    # 1.0E-6f

    .line 376
    .line 377
    .line 378
    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    div-float v6, v4, v6

    .line 383
    .line 384
    const v4, 0x3d4ccccd    # 0.05f

    .line 385
    .line 386
    .line 387
    cmpg-float v7, v6, v4

    .line 388
    .line 389
    if-gez v7, :cond_13

    .line 390
    .line 391
    const v6, 0x3d4ccccd    # 0.05f

    .line 392
    .line 393
    .line 394
    goto :goto_b

    .line 395
    :cond_13
    const/high16 v7, 0x3f800000    # 1.0f

    .line 396
    .line 397
    cmpl-float v8, v6, v7

    .line 398
    .line 399
    if-lez v8, :cond_14

    .line 400
    .line 401
    const/high16 v6, 0x3f800000    # 1.0f

    .line 402
    .line 403
    :cond_14
    :goto_b
    iget v7, v0, Lra/c;->d:F

    .line 404
    .line 405
    sub-float v8, v6, v7

    .line 406
    .line 407
    cmpg-float v6, v6, v7

    .line 408
    .line 409
    if-gez v6, :cond_15

    .line 410
    .line 411
    const v6, 0x3e19999a    # 0.15f

    .line 412
    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_15
    const v6, 0x3ca3d70a    # 0.02f

    .line 416
    .line 417
    .line 418
    :goto_c
    mul-float v8, v8, v6

    .line 419
    .line 420
    add-float/2addr v8, v7

    .line 421
    cmpg-float v6, v8, v4

    .line 422
    .line 423
    if-gez v6, :cond_16

    .line 424
    .line 425
    const v9, 0x3d4ccccd    # 0.05f

    .line 426
    .line 427
    .line 428
    goto :goto_d

    .line 429
    :cond_16
    const/high16 v4, 0x3f800000    # 1.0f

    .line 430
    .line 431
    cmpl-float v6, v8, v4

    .line 432
    .line 433
    if-lez v6, :cond_17

    .line 434
    .line 435
    const/high16 v9, 0x3f800000    # 1.0f

    .line 436
    .line 437
    goto :goto_d

    .line 438
    :cond_17
    move v9, v8

    .line 439
    :goto_d
    iput v9, v0, Lra/c;->d:F

    .line 440
    .line 441
    const v4, 0x3f7d70a4    # 0.99f

    .line 442
    .line 443
    .line 444
    cmpl-float v4, v9, v4

    .line 445
    .line 446
    if-ltz v4, :cond_18

    .line 447
    .line 448
    goto :goto_10

    .line 449
    :cond_18
    const/4 v4, 0x0

    .line 450
    :goto_e
    if-ge v4, v5, :cond_1b

    .line 451
    .line 452
    aget-short v6, v2, v4

    .line 453
    .line 454
    int-to-float v6, v6

    .line 455
    iget v7, v0, Lra/c;->d:F

    .line 456
    .line 457
    mul-float v6, v6, v7

    .line 458
    .line 459
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    const/16 v10, 0x7fff

    .line 464
    .line 465
    if-le v6, v10, :cond_19

    .line 466
    .line 467
    const/16 v6, 0x7fff

    .line 468
    .line 469
    const/16 v7, -0x8000

    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_19
    const/16 v7, -0x8000

    .line 473
    .line 474
    if-ge v6, v7, :cond_1a

    .line 475
    .line 476
    const/16 v6, -0x8000

    .line 477
    .line 478
    :cond_1a
    :goto_f
    int-to-short v6, v6

    .line 479
    aput-short v6, v2, v4

    .line 480
    .line 481
    add-int/lit8 v4, v4, 0x1

    .line 482
    .line 483
    goto :goto_e

    .line 484
    :cond_1b
    :goto_10
    iget-object v4, v0, Lra/c;->j:Landroid/media/AudioTrack;

    .line 485
    .line 486
    const/4 v6, 0x0

    .line 487
    invoke-virtual {v4, v2, v6, v5}, Landroid/media/AudioTrack;->write([SII)I

    .line 488
    .line 489
    .line 490
    goto/16 :goto_0

    .line 491
    .line 492
    :cond_1c
    :goto_11
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lra/c;->f:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lra/c;->f:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lra/c;->g:Landroid/media/audiofx/NoiseSuppressor;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lra/c;->g:Landroid/media/audiofx/NoiseSuppressor;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lra/c;->h:Landroid/media/audiofx/AutomaticGainControl;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lra/c;->h:Landroid/media/audiofx/AutomaticGainControl;

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iget-object v0, p0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lra/c;->k:Landroid/media/AudioRecord;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lra/c;->j:Landroid/media/AudioTrack;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    .line 22
    .line 23
    :catch_1
    iget-object v0, p0, Lra/c;->j:Landroid/media/AudioTrack;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lra/c;->j:Landroid/media/AudioTrack;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lra/c;->b()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final d(Lea/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lra/c;->o:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lra/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/Thread;

    .line 19
    .line 20
    new-instance v1, La2/c0;

    .line 21
    .line 22
    const/16 v2, 0x1d

    .line 23
    .line 24
    invoke-direct {v1, p0, v2, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "TalkAudioEngine-Thread"

    .line 28
    .line 29
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lra/c;->o:Ljava/lang/Thread;

    .line 33
    .line 34
    const/16 p1, 0xa

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lra/c;->o:Ljava/lang/Thread;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lra/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lra/c;->p:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lra/c;->o:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x1f4

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v1

    .line 23
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lra/c;->o:Ljava/lang/Thread;

    .line 28
    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw v1
.end method
