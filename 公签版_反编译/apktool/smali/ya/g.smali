.class public final synthetic Lya/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lya/h;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lya/h;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    .line 1
    iput p6, p0, Lya/g;->a:I

    iput-object p1, p0, Lya/g;->b:Lya/h;

    iput-object p2, p0, Lya/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lya/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p4, p0, Lya/g;->e:I

    iput-object p5, p0, Lya/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lya/g;->b:Lya/h;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "\u957f\u6309"

    .line 9
    .line 10
    const-string v3, "\u5355\u51fb"

    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    float-to-int v4, v4

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    float-to-int v5, v5

    .line 22
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object v8, v1, Lya/h;->z:Landroidx/activity/h;

    .line 27
    .line 28
    iget-object v9, v0, Lya/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    iget-object v10, v0, Lya/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    iget-object v11, v0, Lya/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    const-string v12, "\u5e95\u90e8"

    .line 35
    .line 36
    const/4 v14, 0x2

    .line 37
    const/4 v15, 0x1

    .line 38
    if-eqz v7, :cond_1f

    .line 39
    .line 40
    const-string v2, "\u53f3\u6ed1"

    .line 41
    .line 42
    const-string v6, "\u5de6\u6ed1"

    .line 43
    .line 44
    const-string v13, "\u4e0a\u6ed1"

    .line 45
    .line 46
    if-eq v7, v15, :cond_0

    .line 47
    .line 48
    if-eq v7, v14, :cond_1

    .line 49
    .line 50
    const/4 v14, 0x3

    .line 51
    if-eq v7, v14, :cond_0

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_0
    move-object v4, v2

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_1
    :try_start_1
    iget v3, v1, Lya/h;->l:I

    .line 59
    .line 60
    sub-int/2addr v4, v3

    .line 61
    iget v3, v1, Lya/h;->m:I

    .line 62
    .line 63
    sub-int/2addr v5, v3

    .line 64
    mul-int v3, v4, v4

    .line 65
    .line 66
    mul-int v7, v5, v5

    .line 67
    .line 68
    add-int/2addr v7, v3

    .line 69
    move-object v14, v2

    .line 70
    int-to-double v2, v7

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    double-to-float v2, v2

    .line 76
    iget v3, v1, Lya/h;->o:I

    .line 77
    .line 78
    if-ne v3, v15, :cond_2

    .line 79
    .line 80
    iget-object v3, v1, Lya/h;->w:Lwa/a;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Lwa/a;->e(F)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-boolean v3, v1, Lya/h;->j:Z

    .line 86
    .line 87
    if-nez v3, :cond_9

    .line 88
    .line 89
    iget-boolean v3, v1, Lya/h;->k:Z

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_4

    .line 99
    .line 100
    const/high16 v3, 0x41700000    # 15.0f

    .line 101
    .line 102
    cmpl-float v3, v2, v3

    .line 103
    .line 104
    if-lez v3, :cond_4

    .line 105
    .line 106
    invoke-virtual {v9, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 110
    .line 111
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 112
    .line 113
    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    const/high16 v3, 0x42480000    # 50.0f

    .line 117
    .line 118
    cmpg-float v2, v2, v3

    .line 119
    .line 120
    if-gez v2, :cond_5

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-le v2, v3, :cond_7

    .line 136
    .line 137
    if-lez v4, :cond_6

    .line 138
    .line 139
    const/4 v2, 0x4

    .line 140
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    const/4 v2, 0x3

    .line 145
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_7
    if-lez v5, :cond_8

    .line 150
    .line 151
    const/4 v2, 0x2

    .line 152
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_8
    invoke-virtual {v10, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 157
    .line 158
    .line 159
    :goto_0
    iget-boolean v2, v1, Lya/h;->p:Z

    .line 160
    .line 161
    if-eqz v2, :cond_a

    .line 162
    .line 163
    :cond_9
    :goto_1
    const/4 v6, 0x1

    .line 164
    goto/16 :goto_10

    .line 165
    .line 166
    :cond_a
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-lez v2, :cond_f

    .line 171
    .line 172
    iput-boolean v15, v1, Lya/h;->k:Z

    .line 173
    .line 174
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-ne v2, v15, :cond_b

    .line 179
    .line 180
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 181
    .line 182
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    goto :goto_3

    .line 207
    :cond_b
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    const/4 v3, 0x2

    .line 212
    if-ne v2, v3, :cond_c

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_c
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    const/4 v3, 0x3

    .line 220
    if-ne v2, v3, :cond_d

    .line 221
    .line 222
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 223
    .line 224
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    goto :goto_3

    .line 249
    :cond_d
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    const/4 v3, 0x4

    .line 254
    if-ne v2, v3, :cond_e

    .line 255
    .line 256
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 257
    .line 258
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    move-object v4, v14

    .line 265
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    goto :goto_3

    .line 284
    :cond_e
    :goto_2
    const/4 v2, 0x0

    .line 285
    :goto_3
    if-eqz v2, :cond_f

    .line 286
    .line 287
    iget-object v3, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_f

    .line 294
    .line 295
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :catch_0
    :cond_f
    :goto_4
    const/4 v3, 0x0

    .line 303
    goto/16 :goto_f

    .line 304
    .line 305
    :goto_5
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 306
    .line 307
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 308
    .line 309
    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    .line 311
    .line 312
    iget v2, v1, Lya/h;->o:I

    .line 313
    .line 314
    if-ne v2, v15, :cond_10

    .line 315
    .line 316
    iget-object v2, v1, Lya/h;->w:Lwa/a;

    .line 317
    .line 318
    invoke-virtual {v2}, Lwa/a;->b()V

    .line 319
    .line 320
    .line 321
    :cond_10
    iget-boolean v2, v1, Lya/h;->j:Z

    .line 322
    .line 323
    if-eqz v2, :cond_11

    .line 324
    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :cond_11
    iget-boolean v2, v1, Lya/h;->k:Z

    .line 328
    .line 329
    if-eqz v2, :cond_12

    .line 330
    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :cond_12
    iget-boolean v2, v1, Lya/h;->p:Z

    .line 334
    .line 335
    if-eqz v2, :cond_17

    .line 336
    .line 337
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-lez v2, :cond_17

    .line 342
    .line 343
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-ne v2, v15, :cond_13

    .line 348
    .line 349
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 350
    .line 351
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    goto :goto_7

    .line 376
    :cond_13
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    const/4 v3, 0x2

    .line 381
    if-ne v2, v3, :cond_14

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_14
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    const/4 v3, 0x3

    .line 389
    if-ne v2, v3, :cond_15

    .line 390
    .line 391
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 392
    .line 393
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    goto :goto_7

    .line 418
    :cond_15
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    const/4 v3, 0x4

    .line 423
    if-ne v2, v3, :cond_16

    .line 424
    .line 425
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 426
    .line 427
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    goto :goto_7

    .line 452
    :cond_16
    :goto_6
    const/4 v2, 0x0

    .line 453
    :goto_7
    if-eqz v2, :cond_9

    .line 454
    .line 455
    iget-object v3, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-nez v3, :cond_9

    .line 462
    .line 463
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 464
    .line 465
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_1

    .line 469
    .line 470
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 471
    .line 472
    .line 473
    move-result-wide v4

    .line 474
    iget-wide v6, v1, Lya/h;->n:J

    .line 475
    .line 476
    sub-long/2addr v4, v6

    .line 477
    const-wide/16 v6, 0x1f4

    .line 478
    .line 479
    cmp-long v2, v4, v6

    .line 480
    .line 481
    if-lez v2, :cond_18

    .line 482
    .line 483
    goto/16 :goto_1

    .line 484
    .line 485
    :cond_18
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 486
    .line 487
    const-string v4, "bottomSplit"

    .line 488
    .line 489
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    iput v2, v1, Lya/h;->x:I

    .line 498
    .line 499
    const/4 v4, 0x2

    .line 500
    if-ne v2, v4, :cond_1a

    .line 501
    .line 502
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 503
    .line 504
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 505
    .line 506
    iget-object v2, v2, Ly3/a;->e:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v2, Landroid/graphics/Point;

    .line 509
    .line 510
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 511
    .line 512
    div-int/2addr v2, v4

    .line 513
    iget v4, v1, Lya/h;->l:I

    .line 514
    .line 515
    if-le v2, v4, :cond_19

    .line 516
    .line 517
    const/4 v14, 0x1

    .line 518
    goto :goto_8

    .line 519
    :cond_19
    const/4 v14, 0x2

    .line 520
    :goto_8
    iput v14, v1, Lya/h;->x:I

    .line 521
    .line 522
    goto :goto_a

    .line 523
    :cond_1a
    const/4 v4, 0x3

    .line 524
    if-ne v2, v4, :cond_1d

    .line 525
    .line 526
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 527
    .line 528
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 529
    .line 530
    iget-object v2, v2, Ly3/a;->e:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v2, Landroid/graphics/Point;

    .line 533
    .line 534
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 535
    .line 536
    div-int/2addr v2, v4

    .line 537
    iget v4, v1, Lya/h;->l:I

    .line 538
    .line 539
    if-ge v4, v2, :cond_1b

    .line 540
    .line 541
    const/4 v13, 0x1

    .line 542
    goto :goto_9

    .line 543
    :cond_1b
    const/4 v5, 0x2

    .line 544
    mul-int/lit8 v2, v2, 0x2

    .line 545
    .line 546
    if-le v4, v2, :cond_1c

    .line 547
    .line 548
    const/4 v13, 0x2

    .line 549
    goto :goto_9

    .line 550
    :cond_1c
    const/4 v13, 0x3

    .line 551
    :goto_9
    iput v13, v1, Lya/h;->x:I

    .line 552
    .line 553
    :cond_1d
    :goto_a
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 554
    .line 555
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget v3, v1, Lya/h;->x:I

    .line 565
    .line 566
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    iput-object v2, v1, Lya/h;->y:Lz7/o;

    .line 578
    .line 579
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    if-nez v2, :cond_1e

    .line 586
    .line 587
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 588
    .line 589
    iget-object v1, v1, Lya/h;->y:Lz7/o;

    .line 590
    .line 591
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_1

    .line 595
    .line 596
    :cond_1e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 597
    .line 598
    const/16 v3, 0x18

    .line 599
    .line 600
    if-lt v2, v3, :cond_9

    .line 601
    .line 602
    iget-object v2, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 603
    .line 604
    const/4 v3, 0x0

    .line 605
    :try_start_2
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 606
    .line 607
    :try_start_3
    iget-object v3, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 608
    .line 609
    iget-object v4, v1, Lya/h;->h:Landroid/view/View;

    .line 610
    .line 611
    invoke-interface {v3, v4, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    .line 613
    .line 614
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 615
    .line 616
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 617
    .line 618
    new-instance v3, Lya/f;

    .line 619
    .line 620
    const/4 v4, 0x5

    .line 621
    invoke-direct {v3, v1, v4}, Lya/f;-><init>(Lya/h;I)V

    .line 622
    .line 623
    .line 624
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 625
    .line 626
    .line 627
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 628
    .line 629
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 630
    .line 631
    new-instance v3, Lya/f;

    .line 632
    .line 633
    const/4 v4, 0x6

    .line 634
    invoke-direct {v3, v1, v4}, Lya/f;-><init>(Lya/h;I)V

    .line 635
    .line 636
    .line 637
    const-wide/16 v4, 0x12c

    .line 638
    .line 639
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 640
    .line 641
    .line 642
    goto/16 :goto_1

    .line 643
    .line 644
    :cond_1f
    const/4 v3, 0x0

    .line 645
    :try_start_4
    iput-boolean v3, v1, Lya/h;->j:Z

    .line 646
    .line 647
    iput-boolean v3, v1, Lya/h;->k:Z

    .line 648
    .line 649
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v10, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 653
    .line 654
    .line 655
    iput v4, v1, Lya/h;->l:I

    .line 656
    .line 657
    iput v5, v1, Lya/h;->m:I

    .line 658
    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 660
    .line 661
    .line 662
    move-result-wide v4

    .line 663
    iput-wide v4, v1, Lya/h;->n:J

    .line 664
    .line 665
    iget v4, v1, Lya/h;->o:I

    .line 666
    .line 667
    if-ne v4, v15, :cond_20

    .line 668
    .line 669
    iget-object v4, v1, Lya/h;->w:Lwa/a;

    .line 670
    .line 671
    const/4 v5, 0x2

    .line 672
    invoke-virtual {v4, v5}, Lwa/a;->c(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 673
    .line 674
    .line 675
    goto :goto_b

    .line 676
    :cond_20
    const/4 v5, 0x2

    .line 677
    :goto_b
    iget v4, v0, Lya/g;->e:I

    .line 678
    .line 679
    if-ne v4, v5, :cond_22

    .line 680
    .line 681
    :try_start_5
    iget-object v4, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 682
    .line 683
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 684
    .line 685
    div-int/2addr v4, v5

    .line 686
    iget v5, v1, Lya/h;->u:I

    .line 687
    .line 688
    add-int/2addr v4, v5

    .line 689
    iget v5, v1, Lya/h;->l:I

    .line 690
    .line 691
    if-le v4, v5, :cond_21

    .line 692
    .line 693
    const/4 v14, 0x1

    .line 694
    goto :goto_c

    .line 695
    :cond_21
    const/4 v14, 0x2

    .line 696
    :goto_c
    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 697
    .line 698
    .line 699
    goto :goto_e

    .line 700
    :cond_22
    const/4 v5, 0x3

    .line 701
    if-ne v4, v5, :cond_25

    .line 702
    .line 703
    iget-object v4, v1, Lya/h;->i:Landroid/view/WindowManager$LayoutParams;

    .line 704
    .line 705
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 706
    .line 707
    div-int/2addr v4, v5

    .line 708
    iget v6, v1, Lya/h;->l:I

    .line 709
    .line 710
    iget v7, v1, Lya/h;->u:I

    .line 711
    .line 712
    add-int v9, v4, v7

    .line 713
    .line 714
    if-ge v6, v9, :cond_23

    .line 715
    .line 716
    const/4 v13, 0x1

    .line 717
    goto :goto_d

    .line 718
    :cond_23
    const/4 v9, 0x2

    .line 719
    mul-int/lit8 v4, v4, 0x2

    .line 720
    .line 721
    add-int/2addr v4, v7

    .line 722
    if-le v6, v4, :cond_24

    .line 723
    .line 724
    const/4 v13, 0x2

    .line 725
    goto :goto_d

    .line 726
    :cond_24
    const/4 v13, 0x3

    .line 727
    :goto_d
    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 728
    .line 729
    .line 730
    :cond_25
    :goto_e
    iget-object v4, v1, Lya/h;->b:Lz7/s;

    .line 731
    .line 732
    invoke-virtual {v4, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    invoke-virtual {v4, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    iput-object v2, v1, Lya/h;->y:Lz7/o;

    .line 757
    .line 758
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 759
    .line 760
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    if-nez v2, :cond_9

    .line 765
    .line 766
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 767
    .line 768
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 769
    .line 770
    const-wide/16 v4, 0x258

    .line 771
    .line 772
    invoke-virtual {v1, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 773
    .line 774
    .line 775
    goto/16 :goto_1

    .line 776
    .line 777
    :catch_1
    :goto_f
    const/4 v6, 0x0

    .line 778
    :goto_10
    return v6
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lya/g;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lya/g;->b:Lya/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v2, "\u957f\u6309"

    .line 14
    .line 15
    const-string v3, "\u5355\u51fb"

    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    float-to-int v4, v4

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    float-to-int v5, v5

    .line 27
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    iget-object v8, v1, Lya/h;->z:Landroidx/activity/h;

    .line 32
    .line 33
    iget-object v9, v0, Lya/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    iget-object v10, v0, Lya/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    iget-object v11, v0, Lya/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    const-string v12, "\u53f3\u4fa7"

    .line 40
    .line 41
    const/4 v14, 0x2

    .line 42
    const/4 v15, 0x1

    .line 43
    if-eqz v7, :cond_1d

    .line 44
    .line 45
    const-string v2, "\u5de6\u6ed1"

    .line 46
    .line 47
    const-string v6, "\u4e0b\u6ed1"

    .line 48
    .line 49
    const-string v13, "\u4e0a\u6ed1"

    .line 50
    .line 51
    if-eq v7, v15, :cond_0

    .line 52
    .line 53
    if-eq v7, v14, :cond_1

    .line 54
    .line 55
    const/4 v14, 0x3

    .line 56
    if-eq v7, v14, :cond_0

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_0
    move-object v4, v2

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_1
    :try_start_1
    iget v3, v1, Lya/h;->l:I

    .line 64
    .line 65
    sub-int/2addr v4, v3

    .line 66
    iget v3, v1, Lya/h;->m:I

    .line 67
    .line 68
    sub-int/2addr v5, v3

    .line 69
    mul-int v3, v4, v4

    .line 70
    .line 71
    mul-int v7, v5, v5

    .line 72
    .line 73
    add-int/2addr v7, v3

    .line 74
    move-object v14, v2

    .line 75
    int-to-double v2, v7

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    double-to-float v2, v2

    .line 81
    iget v3, v1, Lya/h;->o:I

    .line 82
    .line 83
    if-ne v3, v15, :cond_2

    .line 84
    .line 85
    iget-object v3, v1, Lya/h;->w:Lwa/a;

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Lwa/a;->e(F)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-boolean v3, v1, Lya/h;->j:Z

    .line 91
    .line 92
    if-nez v3, :cond_9

    .line 93
    .line 94
    iget-boolean v3, v1, Lya/h;->k:Z

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    const/high16 v3, 0x41700000    # 15.0f

    .line 106
    .line 107
    cmpl-float v3, v2, v3

    .line 108
    .line 109
    if-lez v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {v9, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 115
    .line 116
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 117
    .line 118
    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    const/high16 v3, 0x42480000    # 50.0f

    .line 122
    .line 123
    cmpg-float v2, v2, v3

    .line 124
    .line 125
    if-gez v2, :cond_5

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-le v2, v3, :cond_7

    .line 141
    .line 142
    if-lez v4, :cond_6

    .line 143
    .line 144
    const/4 v2, 0x4

    .line 145
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_6
    const/4 v2, 0x3

    .line 150
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    if-lez v5, :cond_8

    .line 155
    .line 156
    const/4 v2, 0x2

    .line 157
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_8
    invoke-virtual {v10, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 162
    .line 163
    .line 164
    :goto_0
    iget-boolean v2, v1, Lya/h;->p:Z

    .line 165
    .line 166
    if-eqz v2, :cond_a

    .line 167
    .line 168
    :cond_9
    :goto_1
    const/4 v6, 0x1

    .line 169
    goto/16 :goto_d

    .line 170
    .line 171
    :cond_a
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-lez v2, :cond_e

    .line 176
    .line 177
    iput-boolean v15, v1, Lya/h;->k:Z

    .line 178
    .line 179
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-ne v2, v15, :cond_b

    .line 184
    .line 185
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 186
    .line 187
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    goto :goto_2

    .line 212
    :cond_b
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    const/4 v3, 0x2

    .line 217
    if-ne v2, v3, :cond_c

    .line 218
    .line 219
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 220
    .line 221
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    goto :goto_2

    .line 246
    :cond_c
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    const/4 v3, 0x3

    .line 251
    if-ne v2, v3, :cond_d

    .line 252
    .line 253
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 254
    .line 255
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    move-object v4, v14

    .line 262
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    goto :goto_2

    .line 281
    :cond_d
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 282
    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    :goto_2
    if-eqz v2, :cond_e

    .line 286
    .line 287
    iget-object v3, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_e

    .line 294
    .line 295
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :catch_0
    :cond_e
    :goto_3
    const/4 v3, 0x0

    .line 303
    goto/16 :goto_c

    .line 304
    .line 305
    :goto_4
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 306
    .line 307
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 308
    .line 309
    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    .line 311
    .line 312
    iget v2, v1, Lya/h;->o:I

    .line 313
    .line 314
    if-ne v2, v15, :cond_f

    .line 315
    .line 316
    iget-object v2, v1, Lya/h;->w:Lwa/a;

    .line 317
    .line 318
    invoke-virtual {v2}, Lwa/a;->b()V

    .line 319
    .line 320
    .line 321
    :cond_f
    iget-boolean v2, v1, Lya/h;->j:Z

    .line 322
    .line 323
    if-eqz v2, :cond_10

    .line 324
    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :cond_10
    iget-boolean v2, v1, Lya/h;->k:Z

    .line 328
    .line 329
    if-eqz v2, :cond_11

    .line 330
    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :cond_11
    iget-boolean v2, v1, Lya/h;->p:Z

    .line 334
    .line 335
    if-eqz v2, :cond_15

    .line 336
    .line 337
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-lez v2, :cond_15

    .line 342
    .line 343
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-ne v2, v15, :cond_12

    .line 348
    .line 349
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 350
    .line 351
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    goto :goto_5

    .line 376
    :cond_12
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    const/4 v3, 0x2

    .line 381
    if-ne v2, v3, :cond_13

    .line 382
    .line 383
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 384
    .line 385
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    goto :goto_5

    .line 410
    :cond_13
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    const/4 v3, 0x3

    .line 415
    if-ne v2, v3, :cond_14

    .line 416
    .line 417
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 418
    .line 419
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    goto :goto_5

    .line 444
    :cond_14
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 445
    .line 446
    .line 447
    const/4 v2, 0x0

    .line 448
    :goto_5
    if-eqz v2, :cond_9

    .line 449
    .line 450
    iget-object v3, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-nez v3, :cond_9

    .line 457
    .line 458
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 459
    .line 460
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_1

    .line 464
    .line 465
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 466
    .line 467
    .line 468
    move-result-wide v4

    .line 469
    iget-wide v6, v1, Lya/h;->n:J

    .line 470
    .line 471
    sub-long/2addr v4, v6

    .line 472
    const-wide/16 v6, 0x1f4

    .line 473
    .line 474
    cmp-long v2, v4, v6

    .line 475
    .line 476
    if-lez v2, :cond_16

    .line 477
    .line 478
    goto/16 :goto_1

    .line 479
    .line 480
    :cond_16
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 481
    .line 482
    const-string v4, "rightSplit"

    .line 483
    .line 484
    invoke-virtual {v2, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    iput v2, v1, Lya/h;->x:I

    .line 493
    .line 494
    const/4 v4, 0x2

    .line 495
    if-ne v2, v4, :cond_18

    .line 496
    .line 497
    iget v2, v1, Lya/h;->m:I

    .line 498
    .line 499
    iget-object v4, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 500
    .line 501
    iget-object v4, v4, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 502
    .line 503
    iget-object v4, v4, Ly3/a;->e:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v4, Landroid/graphics/Point;

    .line 506
    .line 507
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 508
    .line 509
    const/4 v5, 0x2

    .line 510
    div-int/2addr v4, v5

    .line 511
    if-ge v2, v4, :cond_17

    .line 512
    .line 513
    const/4 v14, 0x1

    .line 514
    goto :goto_6

    .line 515
    :cond_17
    const/4 v14, 0x2

    .line 516
    :goto_6
    iput v14, v1, Lya/h;->x:I

    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_18
    const/4 v4, 0x3

    .line 520
    if-ne v2, v4, :cond_1b

    .line 521
    .line 522
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 523
    .line 524
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 525
    .line 526
    iget-object v2, v2, Ly3/a;->e:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v2, Landroid/graphics/Point;

    .line 529
    .line 530
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 531
    .line 532
    div-int/2addr v2, v4

    .line 533
    iget v4, v1, Lya/h;->m:I

    .line 534
    .line 535
    if-ge v4, v2, :cond_19

    .line 536
    .line 537
    const/4 v13, 0x1

    .line 538
    goto :goto_7

    .line 539
    :cond_19
    const/4 v5, 0x2

    .line 540
    mul-int/lit8 v2, v2, 0x2

    .line 541
    .line 542
    if-le v4, v2, :cond_1a

    .line 543
    .line 544
    const/4 v13, 0x2

    .line 545
    goto :goto_7

    .line 546
    :cond_1a
    const/4 v13, 0x3

    .line 547
    :goto_7
    iput v13, v1, Lya/h;->x:I

    .line 548
    .line 549
    :cond_1b
    :goto_8
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 550
    .line 551
    invoke-virtual {v2, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    iget v3, v1, Lya/h;->x:I

    .line 561
    .line 562
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    iput-object v2, v1, Lya/h;->y:Lz7/o;

    .line 574
    .line 575
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-nez v2, :cond_1c

    .line 582
    .line 583
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 584
    .line 585
    iget-object v1, v1, Lya/h;->y:Lz7/o;

    .line 586
    .line 587
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_1

    .line 591
    .line 592
    :cond_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 593
    .line 594
    const/16 v3, 0x18

    .line 595
    .line 596
    if-lt v2, v3, :cond_9

    .line 597
    .line 598
    iget-object v2, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    .line 600
    const/4 v3, 0x0

    .line 601
    :try_start_2
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 602
    .line 603
    :try_start_3
    iget-object v3, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 604
    .line 605
    iget-object v4, v1, Lya/h;->f:Landroid/view/View;

    .line 606
    .line 607
    invoke-interface {v3, v4, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    .line 609
    .line 610
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 611
    .line 612
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 613
    .line 614
    new-instance v3, Lya/f;

    .line 615
    .line 616
    const/4 v4, 0x3

    .line 617
    invoke-direct {v3, v1, v4}, Lya/f;-><init>(Lya/h;I)V

    .line 618
    .line 619
    .line 620
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 621
    .line 622
    .line 623
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 624
    .line 625
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 626
    .line 627
    new-instance v3, Lya/f;

    .line 628
    .line 629
    const/4 v4, 0x4

    .line 630
    invoke-direct {v3, v1, v4}, Lya/f;-><init>(Lya/h;I)V

    .line 631
    .line 632
    .line 633
    const-wide/16 v4, 0x12c

    .line 634
    .line 635
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 636
    .line 637
    .line 638
    goto/16 :goto_1

    .line 639
    .line 640
    :cond_1d
    const/4 v3, 0x0

    .line 641
    :try_start_4
    iput-boolean v3, v1, Lya/h;->j:Z

    .line 642
    .line 643
    iput-boolean v3, v1, Lya/h;->k:Z

    .line 644
    .line 645
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v10, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 649
    .line 650
    .line 651
    iput v4, v1, Lya/h;->l:I

    .line 652
    .line 653
    iput v5, v1, Lya/h;->m:I

    .line 654
    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 656
    .line 657
    .line 658
    move-result-wide v4

    .line 659
    iput-wide v4, v1, Lya/h;->n:J

    .line 660
    .line 661
    iget v4, v1, Lya/h;->o:I

    .line 662
    .line 663
    if-ne v4, v15, :cond_1e

    .line 664
    .line 665
    iget-object v4, v1, Lya/h;->w:Lwa/a;

    .line 666
    .line 667
    invoke-virtual {v4, v15}, Lwa/a;->c(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 668
    .line 669
    .line 670
    :cond_1e
    iget v4, v0, Lya/g;->e:I

    .line 671
    .line 672
    const/4 v5, 0x2

    .line 673
    if-ne v4, v5, :cond_20

    .line 674
    .line 675
    :try_start_5
    iget-object v4, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 676
    .line 677
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 678
    .line 679
    div-int/2addr v4, v5

    .line 680
    iget v5, v1, Lya/h;->s:I

    .line 681
    .line 682
    add-int/2addr v4, v5

    .line 683
    iget v5, v1, Lya/h;->m:I

    .line 684
    .line 685
    if-le v4, v5, :cond_1f

    .line 686
    .line 687
    const/4 v14, 0x1

    .line 688
    goto :goto_9

    .line 689
    :cond_1f
    const/4 v14, 0x2

    .line 690
    :goto_9
    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 691
    .line 692
    .line 693
    goto :goto_b

    .line 694
    :cond_20
    const/4 v5, 0x3

    .line 695
    if-ne v4, v5, :cond_23

    .line 696
    .line 697
    iget-object v4, v1, Lya/h;->g:Landroid/view/WindowManager$LayoutParams;

    .line 698
    .line 699
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 700
    .line 701
    div-int/2addr v4, v5

    .line 702
    iget v6, v1, Lya/h;->m:I

    .line 703
    .line 704
    iget v7, v1, Lya/h;->s:I

    .line 705
    .line 706
    add-int v9, v4, v7

    .line 707
    .line 708
    if-ge v6, v9, :cond_21

    .line 709
    .line 710
    const/4 v13, 0x1

    .line 711
    goto :goto_a

    .line 712
    :cond_21
    const/4 v9, 0x2

    .line 713
    mul-int/lit8 v4, v4, 0x2

    .line 714
    .line 715
    add-int/2addr v4, v7

    .line 716
    if-le v6, v4, :cond_22

    .line 717
    .line 718
    const/4 v13, 0x2

    .line 719
    goto :goto_a

    .line 720
    :cond_22
    const/4 v13, 0x3

    .line 721
    :goto_a
    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 722
    .line 723
    .line 724
    :cond_23
    :goto_b
    iget-object v4, v1, Lya/h;->b:Lz7/s;

    .line 725
    .line 726
    invoke-virtual {v4, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    invoke-virtual {v4, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    iput-object v2, v1, Lya/h;->y:Lz7/o;

    .line 751
    .line 752
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 753
    .line 754
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    if-nez v2, :cond_9

    .line 759
    .line 760
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 761
    .line 762
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 763
    .line 764
    const-wide/16 v4, 0x258

    .line 765
    .line 766
    invoke-virtual {v1, v8, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 767
    .line 768
    .line 769
    goto/16 :goto_1

    .line 770
    .line 771
    :catch_1
    :goto_c
    const/4 v6, 0x0

    .line 772
    :goto_d
    return v6

    .line 773
    :pswitch_0
    invoke-direct/range {p0 .. p2}, Lya/g;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    return v1

    .line 778
    :pswitch_1
    iget-object v1, v0, Lya/g;->b:Lya/h;

    .line 779
    .line 780
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    const-string v2, "\u957f\u6309"

    .line 784
    .line 785
    const-string v3, "\u5355\u51fb"

    .line 786
    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 788
    .line 789
    .line 790
    move-result v4

    .line 791
    float-to-int v4, v4

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 793
    .line 794
    .line 795
    move-result v5

    .line 796
    float-to-int v5, v5

    .line 797
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 798
    .line 799
    .line 800
    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 801
    iget-object v8, v1, Lya/h;->z:Landroidx/activity/h;

    .line 802
    .line 803
    iget-object v9, v0, Lya/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 804
    .line 805
    iget-object v10, v0, Lya/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 806
    .line 807
    iget-object v11, v0, Lya/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 808
    .line 809
    const-string v13, "\u5de6\u4fa7"

    .line 810
    .line 811
    const/4 v14, 0x2

    .line 812
    const/4 v15, 0x1

    .line 813
    if-eqz v7, :cond_3e

    .line 814
    .line 815
    const-string v2, "\u53f3\u6ed1"

    .line 816
    .line 817
    const-string v6, "\u4e0b\u6ed1"

    .line 818
    .line 819
    const-string v12, "\u4e0a\u6ed1"

    .line 820
    .line 821
    if-eq v7, v15, :cond_24

    .line 822
    .line 823
    if-eq v7, v14, :cond_25

    .line 824
    .line 825
    const/4 v14, 0x3

    .line 826
    if-eq v7, v14, :cond_24

    .line 827
    .line 828
    goto/16 :goto_12

    .line 829
    .line 830
    :cond_24
    move-object v4, v2

    .line 831
    goto/16 :goto_13

    .line 832
    .line 833
    :cond_25
    :try_start_7
    iget v3, v1, Lya/h;->l:I

    .line 834
    .line 835
    sub-int/2addr v4, v3

    .line 836
    iget v3, v1, Lya/h;->m:I

    .line 837
    .line 838
    sub-int/2addr v5, v3

    .line 839
    mul-int v3, v4, v4

    .line 840
    .line 841
    mul-int v7, v5, v5

    .line 842
    .line 843
    add-int/2addr v7, v3

    .line 844
    move-object v14, v2

    .line 845
    int-to-double v2, v7

    .line 846
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 847
    .line 848
    .line 849
    move-result-wide v2

    .line 850
    double-to-float v2, v2

    .line 851
    iget v3, v1, Lya/h;->o:I

    .line 852
    .line 853
    if-ne v3, v15, :cond_26

    .line 854
    .line 855
    iget-object v3, v1, Lya/h;->w:Lwa/a;

    .line 856
    .line 857
    invoke-virtual {v3, v2}, Lwa/a;->e(F)V

    .line 858
    .line 859
    .line 860
    :cond_26
    iget-boolean v3, v1, Lya/h;->j:Z

    .line 861
    .line 862
    if-nez v3, :cond_2d

    .line 863
    .line 864
    iget-boolean v3, v1, Lya/h;->k:Z

    .line 865
    .line 866
    if-eqz v3, :cond_27

    .line 867
    .line 868
    goto :goto_f

    .line 869
    :cond_27
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    if-nez v3, :cond_28

    .line 874
    .line 875
    const/high16 v3, 0x41700000    # 15.0f

    .line 876
    .line 877
    cmpl-float v3, v2, v3

    .line 878
    .line 879
    if-lez v3, :cond_28

    .line 880
    .line 881
    invoke-virtual {v9, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 882
    .line 883
    .line 884
    iget-object v3, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 885
    .line 886
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 887
    .line 888
    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    .line 890
    .line 891
    :cond_28
    const/high16 v3, 0x42480000    # 50.0f

    .line 892
    .line 893
    cmpg-float v2, v2, v3

    .line 894
    .line 895
    if-gez v2, :cond_29

    .line 896
    .line 897
    const/4 v2, 0x0

    .line 898
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 899
    .line 900
    .line 901
    goto :goto_e

    .line 902
    :cond_29
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    if-le v2, v3, :cond_2b

    .line 911
    .line 912
    if-lez v4, :cond_2a

    .line 913
    .line 914
    const/4 v2, 0x4

    .line 915
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 916
    .line 917
    .line 918
    goto :goto_e

    .line 919
    :cond_2a
    const/4 v2, 0x3

    .line 920
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 921
    .line 922
    .line 923
    goto :goto_e

    .line 924
    :cond_2b
    if-lez v5, :cond_2c

    .line 925
    .line 926
    const/4 v2, 0x2

    .line 927
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 928
    .line 929
    .line 930
    goto :goto_e

    .line 931
    :cond_2c
    invoke-virtual {v10, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 932
    .line 933
    .line 934
    :goto_e
    iget-boolean v2, v1, Lya/h;->p:Z

    .line 935
    .line 936
    if-eqz v2, :cond_2e

    .line 937
    .line 938
    :cond_2d
    :goto_f
    const/4 v6, 0x1

    .line 939
    goto/16 :goto_1b

    .line 940
    .line 941
    :cond_2e
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    if-lez v2, :cond_33

    .line 946
    .line 947
    iput-boolean v15, v1, Lya/h;->k:Z

    .line 948
    .line 949
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    if-ne v2, v15, :cond_2f

    .line 954
    .line 955
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 956
    .line 957
    invoke-virtual {v2, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 967
    .line 968
    .line 969
    move-result v4

    .line 970
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    goto :goto_11

    .line 982
    :cond_2f
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 983
    .line 984
    .line 985
    move-result v2

    .line 986
    const/4 v3, 0x2

    .line 987
    if-ne v2, v3, :cond_30

    .line 988
    .line 989
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 990
    .line 991
    invoke-virtual {v2, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    new-instance v3, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1001
    .line 1002
    .line 1003
    move-result v4

    .line 1004
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    goto :goto_11

    .line 1016
    :cond_30
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1017
    .line 1018
    .line 1019
    move-result v2

    .line 1020
    const/4 v3, 0x3

    .line 1021
    if-ne v2, v3, :cond_31

    .line 1022
    .line 1023
    goto :goto_10

    .line 1024
    :cond_31
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1025
    .line 1026
    .line 1027
    move-result v2

    .line 1028
    const/4 v3, 0x4

    .line 1029
    if-ne v2, v3, :cond_32

    .line 1030
    .line 1031
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 1032
    .line 1033
    invoke-virtual {v2, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    move-object v4, v14

    .line 1040
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1044
    .line 1045
    .line 1046
    move-result v4

    .line 1047
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v2

    .line 1058
    goto :goto_11

    .line 1059
    :cond_32
    :goto_10
    const/4 v2, 0x0

    .line 1060
    :goto_11
    if-eqz v2, :cond_33

    .line 1061
    .line 1062
    iget-object v3, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1063
    .line 1064
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1065
    .line 1066
    .line 1067
    move-result v3

    .line 1068
    if-nez v3, :cond_33

    .line 1069
    .line 1070
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 1071
    .line 1072
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_f

    .line 1076
    .line 1077
    :catch_2
    :cond_33
    :goto_12
    const/4 v4, 0x0

    .line 1078
    goto/16 :goto_1a

    .line 1079
    .line 1080
    :goto_13
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 1081
    .line 1082
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 1083
    .line 1084
    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1085
    .line 1086
    .line 1087
    iget v2, v1, Lya/h;->o:I

    .line 1088
    .line 1089
    if-ne v2, v15, :cond_34

    .line 1090
    .line 1091
    iget-object v2, v1, Lya/h;->w:Lwa/a;

    .line 1092
    .line 1093
    invoke-virtual {v2}, Lwa/a;->b()V

    .line 1094
    .line 1095
    .line 1096
    :cond_34
    iget-boolean v2, v1, Lya/h;->j:Z

    .line 1097
    .line 1098
    if-eqz v2, :cond_35

    .line 1099
    .line 1100
    goto/16 :goto_f

    .line 1101
    .line 1102
    :cond_35
    iget-boolean v2, v1, Lya/h;->k:Z

    .line 1103
    .line 1104
    if-eqz v2, :cond_36

    .line 1105
    .line 1106
    goto/16 :goto_f

    .line 1107
    .line 1108
    :cond_36
    iget-boolean v2, v1, Lya/h;->p:Z

    .line 1109
    .line 1110
    if-eqz v2, :cond_3b

    .line 1111
    .line 1112
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1113
    .line 1114
    .line 1115
    move-result v2

    .line 1116
    if-lez v2, :cond_3b

    .line 1117
    .line 1118
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1119
    .line 1120
    .line 1121
    move-result v2

    .line 1122
    if-ne v2, v15, :cond_37

    .line 1123
    .line 1124
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 1125
    .line 1126
    invoke-virtual {v2, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1136
    .line 1137
    .line 1138
    move-result v4

    .line 1139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    goto :goto_15

    .line 1151
    :cond_37
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1152
    .line 1153
    .line 1154
    move-result v2

    .line 1155
    const/4 v3, 0x2

    .line 1156
    if-ne v2, v3, :cond_38

    .line 1157
    .line 1158
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 1159
    .line 1160
    invoke-virtual {v2, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v2

    .line 1164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1170
    .line 1171
    .line 1172
    move-result v4

    .line 1173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v3

    .line 1180
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v2

    .line 1184
    goto :goto_15

    .line 1185
    :cond_38
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1186
    .line 1187
    .line 1188
    move-result v2

    .line 1189
    const/4 v3, 0x3

    .line 1190
    if-ne v2, v3, :cond_39

    .line 1191
    .line 1192
    goto :goto_14

    .line 1193
    :cond_39
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1194
    .line 1195
    .line 1196
    move-result v2

    .line 1197
    const/4 v3, 0x4

    .line 1198
    if-ne v2, v3, :cond_3a

    .line 1199
    .line 1200
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 1201
    .line 1202
    invoke-virtual {v2, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1212
    .line 1213
    .line 1214
    move-result v4

    .line 1215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v2

    .line 1226
    goto :goto_15

    .line 1227
    :cond_3a
    :goto_14
    const/4 v2, 0x0

    .line 1228
    :goto_15
    if-eqz v2, :cond_2d

    .line 1229
    .line 1230
    iget-object v3, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1231
    .line 1232
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v3

    .line 1236
    if-nez v3, :cond_2d

    .line 1237
    .line 1238
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 1239
    .line 1240
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_f

    .line 1244
    .line 1245
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v4

    .line 1249
    iget-wide v6, v1, Lya/h;->n:J

    .line 1250
    .line 1251
    sub-long/2addr v4, v6

    .line 1252
    const-wide/16 v6, 0x1f4

    .line 1253
    .line 1254
    cmp-long v2, v4, v6

    .line 1255
    .line 1256
    if-lez v2, :cond_3c

    .line 1257
    .line 1258
    goto/16 :goto_f

    .line 1259
    .line 1260
    :cond_3c
    iget-object v2, v1, Lya/h;->b:Lz7/s;

    .line 1261
    .line 1262
    invoke-virtual {v2, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v2

    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v3

    .line 1282
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v2

    .line 1286
    iput-object v2, v1, Lya/h;->y:Lz7/o;

    .line 1287
    .line 1288
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1289
    .line 1290
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1291
    .line 1292
    .line 1293
    move-result v2

    .line 1294
    if-nez v2, :cond_3d

    .line 1295
    .line 1296
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 1297
    .line 1298
    iget-object v1, v1, Lya/h;->y:Lz7/o;

    .line 1299
    .line 1300
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 1301
    .line 1302
    .line 1303
    goto/16 :goto_f

    .line 1304
    .line 1305
    :cond_3d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1306
    .line 1307
    const/16 v3, 0x18

    .line 1308
    .line 1309
    if-lt v2, v3, :cond_2d

    .line 1310
    .line 1311
    iget-object v2, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 1312
    .line 1313
    const/4 v3, 0x0

    .line 1314
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1315
    .line 1316
    iget-object v3, v1, Lya/h;->c:Landroid/view/WindowManager;

    .line 1317
    .line 1318
    iget-object v4, v1, Lya/h;->d:Landroid/view/View;

    .line 1319
    .line 1320
    invoke-interface {v3, v4, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 1324
    .line 1325
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->N0:Ljava/util/concurrent/ExecutorService;

    .line 1326
    .line 1327
    new-instance v3, Lya/f;

    .line 1328
    .line 1329
    const/4 v4, 0x1

    .line 1330
    invoke-direct {v3, v1, v4}, Lya/f;-><init>(Lya/h;I)V

    .line 1331
    .line 1332
    .line 1333
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1334
    .line 1335
    .line 1336
    iget-object v2, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 1337
    .line 1338
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 1339
    .line 1340
    new-instance v3, Lya/f;

    .line 1341
    .line 1342
    const/4 v4, 0x2

    .line 1343
    invoke-direct {v3, v1, v4}, Lya/f;-><init>(Lya/h;I)V

    .line 1344
    .line 1345
    .line 1346
    const-wide/16 v4, 0x12c

    .line 1347
    .line 1348
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1349
    .line 1350
    .line 1351
    goto/16 :goto_f

    .line 1352
    .line 1353
    :cond_3e
    const/4 v3, 0x0

    .line 1354
    iput-boolean v3, v1, Lya/h;->j:Z

    .line 1355
    .line 1356
    iput-boolean v3, v1, Lya/h;->k:Z

    .line 1357
    .line 1358
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v10, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1362
    .line 1363
    .line 1364
    iput v4, v1, Lya/h;->l:I

    .line 1365
    .line 1366
    iput v5, v1, Lya/h;->m:I

    .line 1367
    .line 1368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1369
    .line 1370
    .line 1371
    move-result-wide v3

    .line 1372
    iput-wide v3, v1, Lya/h;->n:J

    .line 1373
    .line 1374
    iget v3, v1, Lya/h;->o:I

    .line 1375
    .line 1376
    if-ne v3, v15, :cond_3f

    .line 1377
    .line 1378
    iget-object v3, v1, Lya/h;->w:Lwa/a;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1379
    .line 1380
    const/4 v4, 0x0

    .line 1381
    :try_start_8
    invoke-virtual {v3, v4}, Lwa/a;->c(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1382
    .line 1383
    .line 1384
    goto :goto_16

    .line 1385
    :cond_3f
    const/4 v4, 0x0

    .line 1386
    :goto_16
    iget v3, v0, Lya/g;->e:I

    .line 1387
    .line 1388
    const/4 v5, 0x2

    .line 1389
    if-ne v3, v5, :cond_41

    .line 1390
    .line 1391
    :try_start_9
    iget-object v3, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 1392
    .line 1393
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1394
    .line 1395
    div-int/2addr v3, v5

    .line 1396
    iget v5, v1, Lya/h;->q:I

    .line 1397
    .line 1398
    add-int/2addr v3, v5

    .line 1399
    iget v5, v1, Lya/h;->m:I

    .line 1400
    .line 1401
    if-le v3, v5, :cond_40

    .line 1402
    .line 1403
    const/4 v14, 0x1

    .line 1404
    goto :goto_17

    .line 1405
    :cond_40
    const/4 v14, 0x2

    .line 1406
    :goto_17
    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1407
    .line 1408
    .line 1409
    goto :goto_19

    .line 1410
    :cond_41
    const/4 v5, 0x3

    .line 1411
    if-ne v3, v5, :cond_44

    .line 1412
    .line 1413
    iget-object v3, v1, Lya/h;->e:Landroid/view/WindowManager$LayoutParams;

    .line 1414
    .line 1415
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1416
    .line 1417
    div-int/2addr v3, v5

    .line 1418
    iget v6, v1, Lya/h;->m:I

    .line 1419
    .line 1420
    iget v7, v1, Lya/h;->q:I

    .line 1421
    .line 1422
    add-int v9, v3, v7

    .line 1423
    .line 1424
    if-ge v6, v9, :cond_42

    .line 1425
    .line 1426
    const/4 v12, 0x1

    .line 1427
    goto :goto_18

    .line 1428
    :cond_42
    const/4 v9, 0x2

    .line 1429
    mul-int/lit8 v3, v3, 0x2

    .line 1430
    .line 1431
    add-int/2addr v3, v7

    .line 1432
    if-le v6, v3, :cond_43

    .line 1433
    .line 1434
    const/4 v12, 0x2

    .line 1435
    goto :goto_18

    .line 1436
    :cond_43
    const/4 v12, 0x3

    .line 1437
    :goto_18
    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1438
    .line 1439
    .line 1440
    :cond_44
    :goto_19
    iget-object v3, v1, Lya/h;->b:Lz7/s;

    .line 1441
    .line 1442
    invoke-virtual {v3, v13}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v3

    .line 1446
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1452
    .line 1453
    .line 1454
    move-result v2

    .line 1455
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v2

    .line 1462
    invoke-virtual {v3, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v2

    .line 1466
    iput-object v2, v1, Lya/h;->y:Lz7/o;

    .line 1467
    .line 1468
    iget-object v2, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 1469
    .line 1470
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1471
    .line 1472
    .line 1473
    move-result v2

    .line 1474
    if-nez v2, :cond_2d

    .line 1475
    .line 1476
    iget-object v1, v1, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 1477
    .line 1478
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 1479
    .line 1480
    const-wide/16 v2, 0x258

    .line 1481
    .line 1482
    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1483
    .line 1484
    .line 1485
    goto/16 :goto_f

    .line 1486
    .line 1487
    :catch_3
    :goto_1a
    const/4 v6, 0x0

    .line 1488
    :goto_1b
    return v6

    .line 1489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
