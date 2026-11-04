.class public final Lgi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgi/b;


# static fields
.field public static final d:[I


# instance fields
.field public final synthetic a:I

.field public final b:Z

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lgi/a;->d:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    iput p2, p0, Lgi/a;->a:I

    packed-switch p2, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p3, p0, Lgi/a;->b:Z

    add-int/lit8 p1, p1, 0x8

    .line 4
    iput p1, p0, Lgi/a;->c:I

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p3, p0, Lgi/a;->b:Z

    add-int/lit8 p1, p1, 0x4

    .line 7
    iput p1, p0, Lgi/a;->c:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IIZZ)V
    .locals 0

    .line 1
    iput p2, p0, Lgi/a;->a:I

    iput-boolean p3, p0, Lgi/a;->b:Z

    iput p1, p0, Lgi/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(II[B)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget v2, v0, Lgi/a;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    add-int v2, p1, p2

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x4

    .line 13
    .line 14
    move/from16 v3, p1

    .line 15
    .line 16
    :goto_0
    if-gt v3, v2, :cond_4

    .line 17
    .line 18
    aget-byte v4, v1, v3

    .line 19
    .line 20
    const/16 v5, 0x40

    .line 21
    .line 22
    const/16 v6, 0xc0

    .line 23
    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    aget-byte v5, v1, v5

    .line 29
    .line 30
    and-int/2addr v5, v6

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    :cond_0
    const/16 v5, 0x7f

    .line 34
    .line 35
    if-ne v4, v5, :cond_3

    .line 36
    .line 37
    add-int/lit8 v4, v3, 0x1

    .line 38
    .line 39
    aget-byte v4, v1, v4

    .line 40
    .line 41
    and-int/2addr v4, v6

    .line 42
    if-ne v4, v6, :cond_3

    .line 43
    .line 44
    :cond_1
    invoke-static {v3, v1}, Lq4/a;->o(I[B)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget v5, v0, Lgi/a;->c:I

    .line 49
    .line 50
    add-int/2addr v5, v3

    .line 51
    sub-int v5, v5, p1

    .line 52
    .line 53
    ushr-int/lit8 v5, v5, 0x2

    .line 54
    .line 55
    iget-boolean v6, v0, Lgi/a;->b:Z

    .line 56
    .line 57
    if-nez v6, :cond_2

    .line 58
    .line 59
    neg-int v5, v5

    .line 60
    :cond_2
    add-int/2addr v4, v5

    .line 61
    shl-int/lit8 v4, v4, 0x9

    .line 62
    .line 63
    shr-int/lit8 v4, v4, 0x9

    .line 64
    .line 65
    const v5, 0x3fffffff    # 1.9999999f

    .line 66
    .line 67
    .line 68
    and-int/2addr v4, v5

    .line 69
    const/high16 v5, 0x40000000    # 2.0f

    .line 70
    .line 71
    or-int/2addr v4, v5

    .line 72
    invoke-static {v3, v4, v1}, Lq4/a;->Y(II[B)V

    .line 73
    .line 74
    .line 75
    :cond_3
    add-int/lit8 v3, v3, 0x4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    sub-int v3, v3, p1

    .line 79
    .line 80
    iget v1, v0, Lgi/a;->c:I

    .line 81
    .line 82
    add-int/2addr v1, v3

    .line 83
    iput v1, v0, Lgi/a;->c:I

    .line 84
    .line 85
    return v3

    .line 86
    :pswitch_0
    add-int v2, p1, p2

    .line 87
    .line 88
    add-int/lit8 v2, v2, -0x4

    .line 89
    .line 90
    move/from16 v3, p1

    .line 91
    .line 92
    :goto_1
    if-gt v3, v2, :cond_7

    .line 93
    .line 94
    aget-byte v4, v1, v3

    .line 95
    .line 96
    and-int/lit16 v4, v4, 0xfc

    .line 97
    .line 98
    const/16 v5, 0x48

    .line 99
    .line 100
    if-ne v4, v5, :cond_6

    .line 101
    .line 102
    add-int/lit8 v4, v3, 0x3

    .line 103
    .line 104
    aget-byte v4, v1, v4

    .line 105
    .line 106
    and-int/lit8 v4, v4, 0x3

    .line 107
    .line 108
    const/4 v5, 0x1

    .line 109
    if-ne v4, v5, :cond_6

    .line 110
    .line 111
    invoke-static {v3, v1}, Lq4/a;->o(I[B)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iget v5, v0, Lgi/a;->c:I

    .line 116
    .line 117
    add-int/2addr v5, v3

    .line 118
    sub-int v5, v5, p1

    .line 119
    .line 120
    iget-boolean v6, v0, Lgi/a;->b:Z

    .line 121
    .line 122
    if-nez v6, :cond_5

    .line 123
    .line 124
    neg-int v5, v5

    .line 125
    :cond_5
    add-int/2addr v4, v5

    .line 126
    const v5, 0x3fffffc

    .line 127
    .line 128
    .line 129
    and-int/2addr v4, v5

    .line 130
    const v5, 0x48000001

    .line 131
    .line 132
    .line 133
    or-int/2addr v4, v5

    .line 134
    invoke-static {v3, v4, v1}, Lq4/a;->Y(II[B)V

    .line 135
    .line 136
    .line 137
    :cond_6
    add-int/lit8 v3, v3, 0x4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    sub-int v3, v3, p1

    .line 141
    .line 142
    iget v1, v0, Lgi/a;->c:I

    .line 143
    .line 144
    add-int/2addr v1, v3

    .line 145
    iput v1, v0, Lgi/a;->c:I

    .line 146
    .line 147
    return v3

    .line 148
    :pswitch_1
    add-int v2, p1, p2

    .line 149
    .line 150
    add-int/lit8 v2, v2, -0x4

    .line 151
    .line 152
    move/from16 v3, p1

    .line 153
    .line 154
    :goto_2
    if-gt v3, v2, :cond_a

    .line 155
    .line 156
    add-int/lit8 v4, v3, 0x1

    .line 157
    .line 158
    aget-byte v5, v1, v4

    .line 159
    .line 160
    and-int/lit16 v6, v5, 0xf8

    .line 161
    .line 162
    const/16 v7, 0xf0

    .line 163
    .line 164
    if-ne v6, v7, :cond_9

    .line 165
    .line 166
    add-int/lit8 v6, v3, 0x3

    .line 167
    .line 168
    aget-byte v8, v1, v6

    .line 169
    .line 170
    and-int/lit16 v9, v8, 0xf8

    .line 171
    .line 172
    const/16 v10, 0xf8

    .line 173
    .line 174
    if-ne v9, v10, :cond_9

    .line 175
    .line 176
    and-int/lit8 v5, v5, 0x7

    .line 177
    .line 178
    shl-int/lit8 v5, v5, 0x13

    .line 179
    .line 180
    aget-byte v9, v1, v3

    .line 181
    .line 182
    and-int/lit16 v9, v9, 0xff

    .line 183
    .line 184
    shl-int/lit8 v9, v9, 0xb

    .line 185
    .line 186
    or-int/2addr v5, v9

    .line 187
    and-int/lit8 v8, v8, 0x7

    .line 188
    .line 189
    shl-int/lit8 v8, v8, 0x8

    .line 190
    .line 191
    or-int/2addr v5, v8

    .line 192
    add-int/lit8 v8, v3, 0x2

    .line 193
    .line 194
    aget-byte v9, v1, v8

    .line 195
    .line 196
    and-int/lit16 v9, v9, 0xff

    .line 197
    .line 198
    or-int/2addr v5, v9

    .line 199
    shl-int/lit8 v5, v5, 0x1

    .line 200
    .line 201
    iget-boolean v9, v0, Lgi/a;->b:Z

    .line 202
    .line 203
    if-eqz v9, :cond_8

    .line 204
    .line 205
    iget v9, v0, Lgi/a;->c:I

    .line 206
    .line 207
    add-int/2addr v9, v3

    .line 208
    sub-int v9, v9, p1

    .line 209
    .line 210
    add-int/2addr v9, v5

    .line 211
    goto :goto_3

    .line 212
    :cond_8
    iget v9, v0, Lgi/a;->c:I

    .line 213
    .line 214
    add-int/2addr v9, v3

    .line 215
    sub-int v9, v9, p1

    .line 216
    .line 217
    sub-int v9, v5, v9

    .line 218
    .line 219
    :goto_3
    ushr-int/lit8 v5, v9, 0x1

    .line 220
    .line 221
    ushr-int/lit8 v11, v9, 0x14

    .line 222
    .line 223
    and-int/lit8 v11, v11, 0x7

    .line 224
    .line 225
    or-int/2addr v7, v11

    .line 226
    int-to-byte v7, v7

    .line 227
    aput-byte v7, v1, v4

    .line 228
    .line 229
    ushr-int/lit8 v4, v9, 0xc

    .line 230
    .line 231
    int-to-byte v4, v4

    .line 232
    aput-byte v4, v1, v3

    .line 233
    .line 234
    ushr-int/lit8 v3, v9, 0x9

    .line 235
    .line 236
    and-int/lit8 v3, v3, 0x7

    .line 237
    .line 238
    or-int/2addr v3, v10

    .line 239
    int-to-byte v3, v3

    .line 240
    aput-byte v3, v1, v6

    .line 241
    .line 242
    int-to-byte v3, v5

    .line 243
    aput-byte v3, v1, v8

    .line 244
    .line 245
    move v3, v8

    .line 246
    :cond_9
    add-int/lit8 v3, v3, 0x2

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_a
    sub-int v3, v3, p1

    .line 250
    .line 251
    iget v1, v0, Lgi/a;->c:I

    .line 252
    .line 253
    add-int/2addr v1, v3

    .line 254
    iput v1, v0, Lgi/a;->c:I

    .line 255
    .line 256
    return v3

    .line 257
    :pswitch_2
    add-int v2, p1, p2

    .line 258
    .line 259
    add-int/lit8 v2, v2, -0x4

    .line 260
    .line 261
    move/from16 v3, p1

    .line 262
    .line 263
    :goto_4
    if-gt v3, v2, :cond_d

    .line 264
    .line 265
    add-int/lit8 v4, v3, 0x3

    .line 266
    .line 267
    aget-byte v4, v1, v4

    .line 268
    .line 269
    and-int/lit16 v4, v4, 0xff

    .line 270
    .line 271
    const/16 v5, 0xeb

    .line 272
    .line 273
    if-ne v4, v5, :cond_c

    .line 274
    .line 275
    add-int/lit8 v4, v3, 0x2

    .line 276
    .line 277
    aget-byte v5, v1, v4

    .line 278
    .line 279
    and-int/lit16 v5, v5, 0xff

    .line 280
    .line 281
    shl-int/lit8 v5, v5, 0x10

    .line 282
    .line 283
    add-int/lit8 v6, v3, 0x1

    .line 284
    .line 285
    aget-byte v7, v1, v6

    .line 286
    .line 287
    and-int/lit16 v7, v7, 0xff

    .line 288
    .line 289
    shl-int/lit8 v7, v7, 0x8

    .line 290
    .line 291
    or-int/2addr v5, v7

    .line 292
    aget-byte v7, v1, v3

    .line 293
    .line 294
    and-int/lit16 v7, v7, 0xff

    .line 295
    .line 296
    or-int/2addr v5, v7

    .line 297
    shl-int/lit8 v5, v5, 0x2

    .line 298
    .line 299
    iget-boolean v7, v0, Lgi/a;->b:Z

    .line 300
    .line 301
    if-eqz v7, :cond_b

    .line 302
    .line 303
    iget v7, v0, Lgi/a;->c:I

    .line 304
    .line 305
    add-int/2addr v7, v3

    .line 306
    sub-int v7, v7, p1

    .line 307
    .line 308
    add-int/2addr v7, v5

    .line 309
    goto :goto_5

    .line 310
    :cond_b
    iget v7, v0, Lgi/a;->c:I

    .line 311
    .line 312
    add-int/2addr v7, v3

    .line 313
    sub-int v7, v7, p1

    .line 314
    .line 315
    sub-int v7, v5, v7

    .line 316
    .line 317
    :goto_5
    ushr-int/lit8 v5, v7, 0x2

    .line 318
    .line 319
    ushr-int/lit8 v8, v7, 0x12

    .line 320
    .line 321
    int-to-byte v8, v8

    .line 322
    aput-byte v8, v1, v4

    .line 323
    .line 324
    ushr-int/lit8 v4, v7, 0xa

    .line 325
    .line 326
    int-to-byte v4, v4

    .line 327
    aput-byte v4, v1, v6

    .line 328
    .line 329
    int-to-byte v4, v5

    .line 330
    aput-byte v4, v1, v3

    .line 331
    .line 332
    :cond_c
    add-int/lit8 v3, v3, 0x4

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_d
    sub-int v3, v3, p1

    .line 336
    .line 337
    iget v1, v0, Lgi/a;->c:I

    .line 338
    .line 339
    add-int/2addr v1, v3

    .line 340
    iput v1, v0, Lgi/a;->c:I

    .line 341
    .line 342
    return v3

    .line 343
    :pswitch_3
    add-int v2, p1, p2

    .line 344
    .line 345
    const/16 v3, 0x10

    .line 346
    .line 347
    sub-int/2addr v2, v3

    .line 348
    move/from16 v4, p1

    .line 349
    .line 350
    :goto_6
    if-gt v4, v2, :cond_15

    .line 351
    .line 352
    aget-byte v5, v1, v4

    .line 353
    .line 354
    and-int/lit8 v5, v5, 0x1f

    .line 355
    .line 356
    sget-object v6, Lgi/a;->d:[I

    .line 357
    .line 358
    aget v5, v6, v5

    .line 359
    .line 360
    const/4 v7, 0x5

    .line 361
    const/4 v8, 0x0

    .line 362
    :goto_7
    const/4 v9, 0x3

    .line 363
    if-ge v8, v9, :cond_14

    .line 364
    .line 365
    ushr-int v9, v5, v8

    .line 366
    .line 367
    and-int/lit8 v9, v9, 0x1

    .line 368
    .line 369
    if-nez v9, :cond_f

    .line 370
    .line 371
    move/from16 v16, v4

    .line 372
    .line 373
    :cond_e
    :goto_8
    move/from16 v19, v7

    .line 374
    .line 375
    const/16 v11, 0x10

    .line 376
    .line 377
    goto/16 :goto_c

    .line 378
    .line 379
    :cond_f
    ushr-int/lit8 v9, v7, 0x3

    .line 380
    .line 381
    and-int/lit8 v10, v7, 0x7

    .line 382
    .line 383
    const-wide/16 v11, 0x0

    .line 384
    .line 385
    move-wide v14, v11

    .line 386
    const/4 v13, 0x0

    .line 387
    :goto_9
    const/4 v6, 0x6

    .line 388
    if-ge v13, v6, :cond_10

    .line 389
    .line 390
    add-int v6, v4, v9

    .line 391
    .line 392
    add-int/2addr v6, v13

    .line 393
    aget-byte v6, v1, v6

    .line 394
    .line 395
    move/from16 v16, v4

    .line 396
    .line 397
    int-to-long v3, v6

    .line 398
    const-wide/16 v17, 0xff

    .line 399
    .line 400
    and-long v3, v3, v17

    .line 401
    .line 402
    mul-int/lit8 v6, v13, 0x8

    .line 403
    .line 404
    shl-long/2addr v3, v6

    .line 405
    or-long/2addr v14, v3

    .line 406
    add-int/lit8 v13, v13, 0x1

    .line 407
    .line 408
    move/from16 v4, v16

    .line 409
    .line 410
    const/16 v3, 0x10

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_10
    move/from16 v16, v4

    .line 414
    .line 415
    ushr-long v3, v14, v10

    .line 416
    .line 417
    const/16 v13, 0x25

    .line 418
    .line 419
    ushr-long v17, v3, v13

    .line 420
    .line 421
    const-wide/16 v19, 0xf

    .line 422
    .line 423
    and-long v17, v17, v19

    .line 424
    .line 425
    const-wide/16 v19, 0x5

    .line 426
    .line 427
    cmp-long v13, v17, v19

    .line 428
    .line 429
    if-nez v13, :cond_e

    .line 430
    .line 431
    const/16 v13, 0x9

    .line 432
    .line 433
    ushr-long v17, v3, v13

    .line 434
    .line 435
    const-wide/16 v19, 0x7

    .line 436
    .line 437
    and-long v17, v17, v19

    .line 438
    .line 439
    cmp-long v13, v17, v11

    .line 440
    .line 441
    if-eqz v13, :cond_11

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_11
    const/16 v11, 0xd

    .line 445
    .line 446
    ushr-long v12, v3, v11

    .line 447
    .line 448
    const-wide/32 v17, 0xfffff

    .line 449
    .line 450
    .line 451
    and-long v12, v12, v17

    .line 452
    .line 453
    long-to-int v13, v12

    .line 454
    const/16 v12, 0x24

    .line 455
    .line 456
    move/from16 v19, v7

    .line 457
    .line 458
    ushr-long v6, v3, v12

    .line 459
    .line 460
    long-to-int v7, v6

    .line 461
    and-int/lit8 v6, v7, 0x1

    .line 462
    .line 463
    shl-int/lit8 v6, v6, 0x14

    .line 464
    .line 465
    or-int/2addr v6, v13

    .line 466
    shl-int/lit8 v6, v6, 0x4

    .line 467
    .line 468
    iget-boolean v7, v0, Lgi/a;->b:Z

    .line 469
    .line 470
    if-eqz v7, :cond_12

    .line 471
    .line 472
    iget v7, v0, Lgi/a;->c:I

    .line 473
    .line 474
    add-int v7, v7, v16

    .line 475
    .line 476
    sub-int v7, v7, p1

    .line 477
    .line 478
    add-int/2addr v7, v6

    .line 479
    goto :goto_a

    .line 480
    :cond_12
    iget v7, v0, Lgi/a;->c:I

    .line 481
    .line 482
    add-int v7, v7, v16

    .line 483
    .line 484
    sub-int v7, v7, p1

    .line 485
    .line 486
    sub-int v7, v6, v7

    .line 487
    .line 488
    :goto_a
    ushr-int/lit8 v6, v7, 0x4

    .line 489
    .line 490
    const-wide v12, -0x11ffffe001L

    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    and-long/2addr v3, v12

    .line 496
    int-to-long v6, v6

    .line 497
    and-long v12, v6, v17

    .line 498
    .line 499
    shl-long v11, v12, v11

    .line 500
    .line 501
    or-long/2addr v3, v11

    .line 502
    const-wide/32 v11, 0x100000

    .line 503
    .line 504
    .line 505
    and-long/2addr v6, v11

    .line 506
    const/16 v11, 0x10

    .line 507
    .line 508
    shl-long/2addr v6, v11

    .line 509
    or-long/2addr v3, v6

    .line 510
    const-wide/16 v6, 0x1

    .line 511
    .line 512
    shl-long v12, v6, v10

    .line 513
    .line 514
    sub-long/2addr v12, v6

    .line 515
    and-long v6, v14, v12

    .line 516
    .line 517
    shl-long/2addr v3, v10

    .line 518
    or-long/2addr v3, v6

    .line 519
    const/4 v6, 0x6

    .line 520
    const/4 v7, 0x0

    .line 521
    :goto_b
    if-ge v7, v6, :cond_13

    .line 522
    .line 523
    add-int v10, v16, v9

    .line 524
    .line 525
    add-int/2addr v10, v7

    .line 526
    mul-int/lit8 v12, v7, 0x8

    .line 527
    .line 528
    ushr-long v12, v3, v12

    .line 529
    .line 530
    long-to-int v13, v12

    .line 531
    int-to-byte v12, v13

    .line 532
    aput-byte v12, v1, v10

    .line 533
    .line 534
    add-int/lit8 v7, v7, 0x1

    .line 535
    .line 536
    goto :goto_b

    .line 537
    :cond_13
    :goto_c
    add-int/lit8 v8, v8, 0x1

    .line 538
    .line 539
    add-int/lit8 v7, v19, 0x29

    .line 540
    .line 541
    move/from16 v4, v16

    .line 542
    .line 543
    const/16 v3, 0x10

    .line 544
    .line 545
    goto/16 :goto_7

    .line 546
    .line 547
    :cond_14
    move/from16 v16, v4

    .line 548
    .line 549
    const/16 v11, 0x10

    .line 550
    .line 551
    add-int/lit8 v4, v16, 0x10

    .line 552
    .line 553
    const/16 v3, 0x10

    .line 554
    .line 555
    goto/16 :goto_6

    .line 556
    .line 557
    :cond_15
    move/from16 v16, v4

    .line 558
    .line 559
    sub-int v4, v16, p1

    .line 560
    .line 561
    iget v1, v0, Lgi/a;->c:I

    .line 562
    .line 563
    add-int/2addr v1, v4

    .line 564
    iput v1, v0, Lgi/a;->c:I

    .line 565
    .line 566
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
