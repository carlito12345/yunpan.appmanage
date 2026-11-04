.class public final Landroidx/fragment/app/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/u1;->a:I

    .line 1
    iput p1, p0, Landroidx/fragment/app/u1;->b:I

    iput-object p2, p0, Landroidx/fragment/app/u1;->c:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/u1;->d:Ljava/util/List;

    iput-object p4, p0, Landroidx/fragment/app/u1;->e:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/fragment/app/u1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/f;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/u1;->a:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/u1;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/u1;->c:Ljava/util/List;

    iput-object p3, p0, Landroidx/fragment/app/u1;->d:Ljava/util/List;

    iput p4, p0, Landroidx/fragment/app/u1;->b:I

    iput-object p5, p0, Landroidx/fragment/app/u1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/fragment/app/u1;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/recyclerview/widget/c;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/c;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Landroidx/fragment/app/u1;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, v0, Landroidx/fragment/app/u1;->d:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v5, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v6, Landroidx/recyclerview/widget/w;

    .line 36
    .line 37
    invoke-direct {v6, v2, v3}, Landroidx/recyclerview/widget/w;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/2addr v2, v3

    .line 44
    const/4 v3, 0x1

    .line 45
    add-int/2addr v2, v3

    .line 46
    div-int/lit8 v2, v2, 0x2

    .line 47
    .line 48
    mul-int/lit8 v2, v2, 0x2

    .line 49
    .line 50
    add-int/2addr v2, v3

    .line 51
    new-array v6, v2, [I

    .line 52
    .line 53
    div-int/lit8 v7, v2, 0x2

    .line 54
    .line 55
    new-array v2, v2, [I

    .line 56
    .line 57
    new-instance v8, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_1d

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    sub-int/2addr v9, v3

    .line 73
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Landroidx/recyclerview/widget/w;

    .line 78
    .line 79
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->b()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-lt v10, v3, :cond_16

    .line 84
    .line 85
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->a()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-ge v10, v3, :cond_0

    .line 90
    .line 91
    goto/16 :goto_13

    .line 92
    .line 93
    :cond_0
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->b()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->a()I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    add-int/2addr v12, v10

    .line 102
    add-int/2addr v12, v3

    .line 103
    div-int/lit8 v12, v12, 0x2

    .line 104
    .line 105
    iget v10, v9, Landroidx/recyclerview/widget/w;->a:I

    .line 106
    .line 107
    add-int v13, v3, v7

    .line 108
    .line 109
    aput v10, v6, v13

    .line 110
    .line 111
    iget v10, v9, Landroidx/recyclerview/widget/w;->b:I

    .line 112
    .line 113
    aput v10, v2, v13

    .line 114
    .line 115
    const/4 v13, 0x0

    .line 116
    :goto_1
    if-ge v13, v12, :cond_16

    .line 117
    .line 118
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->b()I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->a()I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    sub-int/2addr v14, v15

    .line 127
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    rem-int/lit8 v14, v14, 0x2

    .line 132
    .line 133
    if-ne v14, v3, :cond_1

    .line 134
    .line 135
    const/4 v14, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_1
    const/4 v14, 0x0

    .line 138
    :goto_2
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->b()I

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->a()I

    .line 143
    .line 144
    .line 145
    move-result v16

    .line 146
    sub-int v15, v15, v16

    .line 147
    .line 148
    neg-int v11, v13

    .line 149
    move v3, v11

    .line 150
    :goto_3
    if-gt v3, v13, :cond_a

    .line 151
    .line 152
    if-eq v3, v11, :cond_4

    .line 153
    .line 154
    if-eq v3, v13, :cond_2

    .line 155
    .line 156
    add-int/lit8 v17, v3, 0x1

    .line 157
    .line 158
    add-int v17, v17, v7

    .line 159
    .line 160
    aget v10, v6, v17

    .line 161
    .line 162
    add-int/lit8 v17, v3, -0x1

    .line 163
    .line 164
    add-int v17, v17, v7

    .line 165
    .line 166
    move/from16 v18, v12

    .line 167
    .line 168
    aget v12, v6, v17

    .line 169
    .line 170
    if-le v10, v12, :cond_3

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_2
    move/from16 v18, v12

    .line 174
    .line 175
    :cond_3
    add-int/lit8 v10, v3, -0x1

    .line 176
    .line 177
    add-int/2addr v10, v7

    .line 178
    aget v10, v6, v10

    .line 179
    .line 180
    add-int/lit8 v12, v10, 0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_4
    move/from16 v18, v12

    .line 184
    .line 185
    :goto_4
    add-int/lit8 v10, v3, 0x1

    .line 186
    .line 187
    add-int/2addr v10, v7

    .line 188
    aget v10, v6, v10

    .line 189
    .line 190
    move v12, v10

    .line 191
    :goto_5
    iget v0, v9, Landroidx/recyclerview/widget/w;->c:I

    .line 192
    .line 193
    move-object/from16 v17, v5

    .line 194
    .line 195
    iget v5, v9, Landroidx/recyclerview/widget/w;->a:I

    .line 196
    .line 197
    sub-int v5, v12, v5

    .line 198
    .line 199
    add-int/2addr v5, v0

    .line 200
    sub-int/2addr v5, v3

    .line 201
    if-eqz v13, :cond_6

    .line 202
    .line 203
    if-eq v12, v10, :cond_5

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_5
    add-int/lit8 v0, v5, -0x1

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_6
    :goto_6
    move v0, v5

    .line 210
    :goto_7
    move-object/from16 v19, v8

    .line 211
    .line 212
    :goto_8
    iget v8, v9, Landroidx/recyclerview/widget/w;->b:I

    .line 213
    .line 214
    if-ge v12, v8, :cond_7

    .line 215
    .line 216
    iget v8, v9, Landroidx/recyclerview/widget/w;->d:I

    .line 217
    .line 218
    if-ge v5, v8, :cond_7

    .line 219
    .line 220
    invoke-virtual {v1, v12, v5}, Landroidx/recyclerview/widget/c;->b(II)Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_7

    .line 225
    .line 226
    add-int/lit8 v12, v12, 0x1

    .line 227
    .line 228
    add-int/lit8 v5, v5, 0x1

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_7
    add-int v8, v3, v7

    .line 232
    .line 233
    aput v12, v6, v8

    .line 234
    .line 235
    if-eqz v14, :cond_9

    .line 236
    .line 237
    sub-int v8, v15, v3

    .line 238
    .line 239
    move/from16 v20, v14

    .line 240
    .line 241
    add-int/lit8 v14, v11, 0x1

    .line 242
    .line 243
    if-lt v8, v14, :cond_8

    .line 244
    .line 245
    add-int/lit8 v14, v13, -0x1

    .line 246
    .line 247
    if-gt v8, v14, :cond_8

    .line 248
    .line 249
    add-int/2addr v8, v7

    .line 250
    aget v8, v2, v8

    .line 251
    .line 252
    if-gt v8, v12, :cond_8

    .line 253
    .line 254
    new-instance v3, Landroidx/recyclerview/widget/x;

    .line 255
    .line 256
    invoke-direct {v3}, Landroidx/recyclerview/widget/x;-><init>()V

    .line 257
    .line 258
    .line 259
    iput v10, v3, Landroidx/recyclerview/widget/x;->a:I

    .line 260
    .line 261
    iput v0, v3, Landroidx/recyclerview/widget/x;->b:I

    .line 262
    .line 263
    iput v12, v3, Landroidx/recyclerview/widget/x;->c:I

    .line 264
    .line 265
    iput v5, v3, Landroidx/recyclerview/widget/x;->d:I

    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, v3, Landroidx/recyclerview/widget/x;->e:Z

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_8
    :goto_9
    const/4 v0, 0x0

    .line 272
    goto :goto_a

    .line 273
    :cond_9
    move/from16 v20, v14

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :goto_a
    add-int/lit8 v3, v3, 0x2

    .line 277
    .line 278
    move-object/from16 v0, p0

    .line 279
    .line 280
    move-object/from16 v5, v17

    .line 281
    .line 282
    move/from16 v12, v18

    .line 283
    .line 284
    move-object/from16 v8, v19

    .line 285
    .line 286
    move/from16 v14, v20

    .line 287
    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :cond_a
    move-object/from16 v17, v5

    .line 291
    .line 292
    move-object/from16 v19, v8

    .line 293
    .line 294
    move/from16 v18, v12

    .line 295
    .line 296
    const/4 v0, 0x0

    .line 297
    const/4 v3, 0x0

    .line 298
    :goto_b
    if-eqz v3, :cond_b

    .line 299
    .line 300
    move-object v11, v3

    .line 301
    move-object/from16 v20, v9

    .line 302
    .line 303
    goto/16 :goto_14

    .line 304
    .line 305
    :cond_b
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->b()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->a()I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    sub-int/2addr v3, v5

    .line 314
    rem-int/lit8 v3, v3, 0x2

    .line 315
    .line 316
    if-nez v3, :cond_c

    .line 317
    .line 318
    const/4 v3, 0x1

    .line 319
    goto :goto_c

    .line 320
    :cond_c
    const/4 v3, 0x0

    .line 321
    :goto_c
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->b()I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    invoke-virtual {v9}, Landroidx/recyclerview/widget/w;->a()I

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    sub-int/2addr v5, v8

    .line 330
    move v8, v11

    .line 331
    :goto_d
    if-gt v8, v13, :cond_14

    .line 332
    .line 333
    if-eq v8, v11, :cond_e

    .line 334
    .line 335
    if-eq v8, v13, :cond_d

    .line 336
    .line 337
    add-int/lit8 v10, v8, 0x1

    .line 338
    .line 339
    add-int/2addr v10, v7

    .line 340
    aget v10, v2, v10

    .line 341
    .line 342
    add-int/lit8 v12, v8, -0x1

    .line 343
    .line 344
    add-int/2addr v12, v7

    .line 345
    aget v12, v2, v12

    .line 346
    .line 347
    if-ge v10, v12, :cond_d

    .line 348
    .line 349
    goto :goto_e

    .line 350
    :cond_d
    add-int/lit8 v10, v8, -0x1

    .line 351
    .line 352
    add-int/2addr v10, v7

    .line 353
    aget v10, v2, v10

    .line 354
    .line 355
    add-int/lit8 v12, v10, -0x1

    .line 356
    .line 357
    goto :goto_f

    .line 358
    :cond_e
    :goto_e
    add-int/lit8 v10, v8, 0x1

    .line 359
    .line 360
    add-int/2addr v10, v7

    .line 361
    aget v10, v2, v10

    .line 362
    .line 363
    move v12, v10

    .line 364
    :goto_f
    iget v14, v9, Landroidx/recyclerview/widget/w;->d:I

    .line 365
    .line 366
    iget v15, v9, Landroidx/recyclerview/widget/w;->b:I

    .line 367
    .line 368
    sub-int/2addr v15, v12

    .line 369
    sub-int/2addr v15, v8

    .line 370
    sub-int/2addr v14, v15

    .line 371
    if-eqz v13, :cond_10

    .line 372
    .line 373
    if-eq v12, v10, :cond_f

    .line 374
    .line 375
    goto :goto_10

    .line 376
    :cond_f
    add-int/lit8 v15, v14, 0x1

    .line 377
    .line 378
    goto :goto_11

    .line 379
    :cond_10
    :goto_10
    move v15, v14

    .line 380
    :goto_11
    iget v0, v9, Landroidx/recyclerview/widget/w;->a:I

    .line 381
    .line 382
    if-le v12, v0, :cond_11

    .line 383
    .line 384
    iget v0, v9, Landroidx/recyclerview/widget/w;->c:I

    .line 385
    .line 386
    if-le v14, v0, :cond_11

    .line 387
    .line 388
    add-int/lit8 v0, v12, -0x1

    .line 389
    .line 390
    move-object/from16 v20, v9

    .line 391
    .line 392
    add-int/lit8 v9, v14, -0x1

    .line 393
    .line 394
    invoke-virtual {v1, v0, v9}, Landroidx/recyclerview/widget/c;->b(II)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_12

    .line 399
    .line 400
    add-int/lit8 v12, v12, -0x1

    .line 401
    .line 402
    add-int/lit8 v14, v14, -0x1

    .line 403
    .line 404
    move-object/from16 v9, v20

    .line 405
    .line 406
    goto :goto_11

    .line 407
    :cond_11
    move-object/from16 v20, v9

    .line 408
    .line 409
    :cond_12
    add-int v0, v8, v7

    .line 410
    .line 411
    aput v12, v2, v0

    .line 412
    .line 413
    if-eqz v3, :cond_13

    .line 414
    .line 415
    sub-int v0, v5, v8

    .line 416
    .line 417
    if-lt v0, v11, :cond_13

    .line 418
    .line 419
    if-gt v0, v13, :cond_13

    .line 420
    .line 421
    add-int/2addr v0, v7

    .line 422
    aget v0, v6, v0

    .line 423
    .line 424
    if-lt v0, v12, :cond_13

    .line 425
    .line 426
    new-instance v0, Landroidx/recyclerview/widget/x;

    .line 427
    .line 428
    invoke-direct {v0}, Landroidx/recyclerview/widget/x;-><init>()V

    .line 429
    .line 430
    .line 431
    iput v12, v0, Landroidx/recyclerview/widget/x;->a:I

    .line 432
    .line 433
    iput v14, v0, Landroidx/recyclerview/widget/x;->b:I

    .line 434
    .line 435
    iput v10, v0, Landroidx/recyclerview/widget/x;->c:I

    .line 436
    .line 437
    iput v15, v0, Landroidx/recyclerview/widget/x;->d:I

    .line 438
    .line 439
    const/4 v3, 0x1

    .line 440
    iput-boolean v3, v0, Landroidx/recyclerview/widget/x;->e:Z

    .line 441
    .line 442
    goto :goto_12

    .line 443
    :cond_13
    add-int/lit8 v8, v8, 0x2

    .line 444
    .line 445
    move-object/from16 v9, v20

    .line 446
    .line 447
    const/4 v0, 0x0

    .line 448
    goto :goto_d

    .line 449
    :cond_14
    move-object/from16 v20, v9

    .line 450
    .line 451
    const/4 v0, 0x0

    .line 452
    :goto_12
    if-eqz v0, :cond_15

    .line 453
    .line 454
    move-object v11, v0

    .line 455
    goto :goto_14

    .line 456
    :cond_15
    add-int/lit8 v13, v13, 0x1

    .line 457
    .line 458
    move-object/from16 v0, p0

    .line 459
    .line 460
    move-object/from16 v5, v17

    .line 461
    .line 462
    move/from16 v12, v18

    .line 463
    .line 464
    move-object/from16 v8, v19

    .line 465
    .line 466
    move-object/from16 v9, v20

    .line 467
    .line 468
    const/4 v3, 0x1

    .line 469
    goto/16 :goto_1

    .line 470
    .line 471
    :cond_16
    :goto_13
    move-object/from16 v17, v5

    .line 472
    .line 473
    move-object/from16 v19, v8

    .line 474
    .line 475
    move-object/from16 v20, v9

    .line 476
    .line 477
    const/4 v11, 0x0

    .line 478
    :goto_14
    if-eqz v11, :cond_1c

    .line 479
    .line 480
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->a()I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-lez v0, :cond_1a

    .line 485
    .line 486
    iget v0, v11, Landroidx/recyclerview/widget/x;->d:I

    .line 487
    .line 488
    iget v3, v11, Landroidx/recyclerview/widget/x;->b:I

    .line 489
    .line 490
    sub-int/2addr v0, v3

    .line 491
    iget v5, v11, Landroidx/recyclerview/widget/x;->c:I

    .line 492
    .line 493
    iget v8, v11, Landroidx/recyclerview/widget/x;->a:I

    .line 494
    .line 495
    sub-int/2addr v5, v8

    .line 496
    if-eq v0, v5, :cond_19

    .line 497
    .line 498
    iget-boolean v9, v11, Landroidx/recyclerview/widget/x;->e:Z

    .line 499
    .line 500
    if-eqz v9, :cond_17

    .line 501
    .line 502
    new-instance v0, Landroidx/recyclerview/widget/t;

    .line 503
    .line 504
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->a()I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    invoke-direct {v0, v8, v3, v5}, Landroidx/recyclerview/widget/t;-><init>(III)V

    .line 509
    .line 510
    .line 511
    goto :goto_15

    .line 512
    :cond_17
    if-le v0, v5, :cond_18

    .line 513
    .line 514
    new-instance v0, Landroidx/recyclerview/widget/t;

    .line 515
    .line 516
    add-int/lit8 v3, v3, 0x1

    .line 517
    .line 518
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->a()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    invoke-direct {v0, v8, v3, v5}, Landroidx/recyclerview/widget/t;-><init>(III)V

    .line 523
    .line 524
    .line 525
    goto :goto_15

    .line 526
    :cond_18
    new-instance v0, Landroidx/recyclerview/widget/t;

    .line 527
    .line 528
    add-int/lit8 v8, v8, 0x1

    .line 529
    .line 530
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->a()I

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    invoke-direct {v0, v8, v3, v5}, Landroidx/recyclerview/widget/t;-><init>(III)V

    .line 535
    .line 536
    .line 537
    goto :goto_15

    .line 538
    :cond_19
    new-instance v0, Landroidx/recyclerview/widget/t;

    .line 539
    .line 540
    invoke-direct {v0, v8, v3, v5}, Landroidx/recyclerview/widget/t;-><init>(III)V

    .line 541
    .line 542
    .line 543
    :goto_15
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    :cond_1a
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-eqz v0, :cond_1b

    .line 551
    .line 552
    new-instance v0, Landroidx/recyclerview/widget/w;

    .line 553
    .line 554
    invoke-direct {v0}, Landroidx/recyclerview/widget/w;-><init>()V

    .line 555
    .line 556
    .line 557
    move-object/from16 v5, v19

    .line 558
    .line 559
    move-object/from16 v9, v20

    .line 560
    .line 561
    const/4 v3, 0x1

    .line 562
    goto :goto_16

    .line 563
    :cond_1b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    const/4 v3, 0x1

    .line 568
    sub-int/2addr v0, v3

    .line 569
    move-object/from16 v5, v19

    .line 570
    .line 571
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, Landroidx/recyclerview/widget/w;

    .line 576
    .line 577
    move-object/from16 v9, v20

    .line 578
    .line 579
    :goto_16
    iget v8, v9, Landroidx/recyclerview/widget/w;->a:I

    .line 580
    .line 581
    iput v8, v0, Landroidx/recyclerview/widget/w;->a:I

    .line 582
    .line 583
    iget v8, v9, Landroidx/recyclerview/widget/w;->c:I

    .line 584
    .line 585
    iput v8, v0, Landroidx/recyclerview/widget/w;->c:I

    .line 586
    .line 587
    iget v8, v11, Landroidx/recyclerview/widget/x;->a:I

    .line 588
    .line 589
    iput v8, v0, Landroidx/recyclerview/widget/w;->b:I

    .line 590
    .line 591
    iget v8, v11, Landroidx/recyclerview/widget/x;->b:I

    .line 592
    .line 593
    iput v8, v0, Landroidx/recyclerview/widget/w;->d:I

    .line 594
    .line 595
    move-object/from16 v8, v17

    .line 596
    .line 597
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    iget v0, v9, Landroidx/recyclerview/widget/w;->b:I

    .line 601
    .line 602
    iput v0, v9, Landroidx/recyclerview/widget/w;->b:I

    .line 603
    .line 604
    iget v0, v9, Landroidx/recyclerview/widget/w;->d:I

    .line 605
    .line 606
    iput v0, v9, Landroidx/recyclerview/widget/w;->d:I

    .line 607
    .line 608
    iget v0, v11, Landroidx/recyclerview/widget/x;->c:I

    .line 609
    .line 610
    iput v0, v9, Landroidx/recyclerview/widget/w;->a:I

    .line 611
    .line 612
    iget v0, v11, Landroidx/recyclerview/widget/x;->d:I

    .line 613
    .line 614
    iput v0, v9, Landroidx/recyclerview/widget/w;->c:I

    .line 615
    .line 616
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_1c
    move-object/from16 v8, v17

    .line 621
    .line 622
    move-object/from16 v5, v19

    .line 623
    .line 624
    move-object/from16 v9, v20

    .line 625
    .line 626
    const/4 v3, 0x1

    .line 627
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    :goto_17
    move-object/from16 v0, p0

    .line 631
    .line 632
    move-object/from16 v21, v8

    .line 633
    .line 634
    move-object v8, v5

    .line 635
    move-object/from16 v5, v21

    .line 636
    .line 637
    goto/16 :goto_0

    .line 638
    .line 639
    :cond_1d
    sget-object v0, Landroidx/recyclerview/widget/d;->c:La5/a;

    .line 640
    .line 641
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 642
    .line 643
    .line 644
    new-instance v0, Landroidx/recyclerview/widget/u;

    .line 645
    .line 646
    invoke-direct {v0, v1, v4, v6, v2}, Landroidx/recyclerview/widget/u;-><init>(Landroidx/recyclerview/widget/c;Ljava/util/ArrayList;[I[I)V

    .line 647
    .line 648
    .line 649
    move-object/from16 v1, p0

    .line 650
    .line 651
    iget-object v2, v1, Landroidx/fragment/app/u1;->f:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v2, Landroidx/recyclerview/widget/f;

    .line 654
    .line 655
    iget-object v2, v2, Landroidx/recyclerview/widget/f;->c:Landroidx/recyclerview/widget/e;

    .line 656
    .line 657
    new-instance v3, Ly7/b;

    .line 658
    .line 659
    const/4 v4, 0x1

    .line 660
    const/4 v5, 0x0

    .line 661
    invoke-direct {v3, v4, v1, v0, v5}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/e;->execute(Ljava/lang/Runnable;)V

    .line 665
    .line 666
    .line 667
    return-void

    .line 668
    :pswitch_0
    move-object v1, v0

    .line 669
    const/4 v0, 0x0

    .line 670
    :goto_18
    iget v2, v1, Landroidx/fragment/app/u1;->b:I

    .line 671
    .line 672
    if-ge v0, v2, :cond_1e

    .line 673
    .line 674
    iget-object v2, v1, Landroidx/fragment/app/u1;->c:Ljava/util/List;

    .line 675
    .line 676
    check-cast v2, Ljava/util/ArrayList;

    .line 677
    .line 678
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    check-cast v2, Landroid/view/View;

    .line 683
    .line 684
    iget-object v3, v1, Landroidx/fragment/app/u1;->d:Ljava/util/List;

    .line 685
    .line 686
    check-cast v3, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    check-cast v3, Ljava/lang/String;

    .line 693
    .line 694
    invoke-static {v2, v3}, Lx0/b1;->D(Landroid/view/View;Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    iget-object v2, v1, Landroidx/fragment/app/u1;->e:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast v2, Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    check-cast v2, Landroid/view/View;

    .line 706
    .line 707
    iget-object v3, v1, Landroidx/fragment/app/u1;->f:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v3, Ljava/util/ArrayList;

    .line 710
    .line 711
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    check-cast v3, Ljava/lang/String;

    .line 716
    .line 717
    invoke-static {v2, v3}, Lx0/b1;->D(Landroid/view/View;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    add-int/lit8 v0, v0, 0x1

    .line 721
    .line 722
    goto :goto_18

    .line 723
    :cond_1e
    return-void

    .line 724
    nop

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
