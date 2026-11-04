.class public final Lde/e;
.super Ljava/security/MessageDigest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:[I

.field public b:J

.field public c:[B

.field public final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "MD4"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Lde/e;->a:[I

    .line 10
    .line 11
    const/16 v0, 0x40

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Lde/e;->c:[B

    .line 16
    .line 17
    const/16 v0, 0x10

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    iput-object v0, p0, Lde/e;->d:[I

    .line 22
    .line 23
    invoke-virtual {p0}, Lde/e;->engineReset()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static a(IIIIII)I
    .locals 0

    .line 1
    and-int/2addr p2, p1

    .line 2
    xor-int/lit8 p1, p1, -0x1

    .line 3
    .line 4
    and-int/2addr p1, p3

    .line 5
    or-int/2addr p1, p2

    .line 6
    add-int/2addr p0, p1

    .line 7
    add-int/2addr p0, p4

    .line 8
    shl-int p1, p0, p5

    .line 9
    .line 10
    rsub-int/lit8 p2, p5, 0x20

    .line 11
    .line 12
    ushr-int/2addr p0, p2

    .line 13
    or-int/2addr p0, p1

    .line 14
    return p0
.end method

.method public static b(IIIIII)I
    .locals 1

    .line 1
    or-int v0, p2, p3

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    and-int/2addr p2, p3

    .line 5
    or-int/2addr p1, p2

    .line 6
    const p2, 0x5a827999

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, p4, p2}, Lta/q;->x(IIII)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    shl-int p1, p0, p5

    .line 14
    .line 15
    rsub-int/lit8 p2, p5, 0x20

    .line 16
    .line 17
    ushr-int/2addr p0, p2

    .line 18
    or-int/2addr p0, p1

    .line 19
    return p0
.end method

.method public static c(IIIIII)I
    .locals 0

    .line 1
    xor-int/2addr p1, p2

    .line 2
    xor-int/2addr p1, p3

    .line 3
    const p2, 0x6ed9eba1

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p4, p2}, Lta/q;->x(IIII)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    shl-int p1, p0, p5

    .line 11
    .line 12
    rsub-int/lit8 p2, p5, 0x20

    .line 13
    .line 14
    ushr-int/2addr p0, p2

    .line 15
    or-int/2addr p0, p1

    .line 16
    return p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lde/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lde/e;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lde/e;->a:[I

    .line 7
    .line 8
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, [I

    .line 13
    .line 14
    iput-object v1, v0, Lde/e;->a:[I

    .line 15
    .line 16
    iget-object v1, p0, Lde/e;->c:[B

    .line 17
    .line 18
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [B

    .line 23
    .line 24
    iput-object v1, v0, Lde/e;->c:[B

    .line 25
    .line 26
    iget-wide v1, p0, Lde/e;->b:J

    .line 27
    .line 28
    iput-wide v1, v0, Lde/e;->b:J

    .line 29
    .line 30
    return-object v0
.end method

.method public final d(I[B)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-object v4, v0, Lde/e;->d:[I

    .line 8
    .line 9
    const/16 v5, 0x10

    .line 10
    .line 11
    const/4 v6, 0x4

    .line 12
    const/16 v7, 0x8

    .line 13
    .line 14
    if-ge v3, v5, :cond_0

    .line 15
    .line 16
    add-int/lit8 v8, v2, 0x1

    .line 17
    .line 18
    aget-byte v9, p2, v2

    .line 19
    .line 20
    and-int/lit16 v9, v9, 0xff

    .line 21
    .line 22
    add-int/lit8 v10, v2, 0x2

    .line 23
    .line 24
    aget-byte v8, p2, v8

    .line 25
    .line 26
    and-int/lit16 v8, v8, 0xff

    .line 27
    .line 28
    shl-int/lit8 v7, v8, 0x8

    .line 29
    .line 30
    or-int/2addr v7, v9

    .line 31
    add-int/lit8 v8, v2, 0x3

    .line 32
    .line 33
    aget-byte v9, p2, v10

    .line 34
    .line 35
    and-int/lit16 v9, v9, 0xff

    .line 36
    .line 37
    shl-int/lit8 v5, v9, 0x10

    .line 38
    .line 39
    or-int/2addr v5, v7

    .line 40
    add-int/2addr v2, v6

    .line 41
    aget-byte v6, p2, v8

    .line 42
    .line 43
    and-int/lit16 v6, v6, 0xff

    .line 44
    .line 45
    shl-int/lit8 v6, v6, 0x18

    .line 46
    .line 47
    or-int/2addr v5, v6

    .line 48
    aput v5, v4, v3

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, v0, Lde/e;->a:[I

    .line 54
    .line 55
    aget v8, v2, v1

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    aget v5, v2, v3

    .line 59
    .line 60
    const/4 v15, 0x2

    .line 61
    aget v16, v2, v15

    .line 62
    .line 63
    const/16 v17, 0x3

    .line 64
    .line 65
    aget v14, v2, v17

    .line 66
    .line 67
    aget v12, v4, v1

    .line 68
    .line 69
    const/4 v13, 0x3

    .line 70
    move v9, v5

    .line 71
    move/from16 v10, v16

    .line 72
    .line 73
    move v11, v14

    .line 74
    invoke-static/range {v8 .. v13}, Lde/e;->a(IIIIII)I

    .line 75
    .line 76
    .line 77
    move-result v18

    .line 78
    aget v13, v4, v3

    .line 79
    .line 80
    const/4 v8, 0x7

    .line 81
    move v9, v14

    .line 82
    move/from16 v10, v18

    .line 83
    .line 84
    move v11, v5

    .line 85
    move/from16 v12, v16

    .line 86
    .line 87
    move v14, v8

    .line 88
    invoke-static/range {v9 .. v14}, Lde/e;->a(IIIIII)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    aget v13, v4, v15

    .line 93
    .line 94
    const/16 v14, 0xb

    .line 95
    .line 96
    move/from16 v9, v16

    .line 97
    .line 98
    move v10, v8

    .line 99
    move/from16 v11, v18

    .line 100
    .line 101
    move v12, v5

    .line 102
    invoke-static/range {v9 .. v14}, Lde/e;->a(IIIIII)I

    .line 103
    .line 104
    .line 105
    move-result v16

    .line 106
    aget v13, v4, v17

    .line 107
    .line 108
    const/16 v14, 0x13

    .line 109
    .line 110
    move v9, v5

    .line 111
    move/from16 v10, v16

    .line 112
    .line 113
    move v11, v8

    .line 114
    move/from16 v12, v18

    .line 115
    .line 116
    invoke-static/range {v9 .. v14}, Lde/e;->a(IIIIII)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    aget v22, v4, v6

    .line 121
    .line 122
    const/16 v23, 0x3

    .line 123
    .line 124
    move/from16 v19, v5

    .line 125
    .line 126
    move/from16 v20, v16

    .line 127
    .line 128
    move/from16 v21, v8

    .line 129
    .line 130
    invoke-static/range {v18 .. v23}, Lde/e;->a(IIIIII)I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    const/16 v18, 0x5

    .line 135
    .line 136
    aget v23, v4, v18

    .line 137
    .line 138
    const/16 v24, 0x7

    .line 139
    .line 140
    move/from16 v19, v8

    .line 141
    .line 142
    move/from16 v20, v9

    .line 143
    .line 144
    move/from16 v21, v5

    .line 145
    .line 146
    move/from16 v22, v16

    .line 147
    .line 148
    invoke-static/range {v19 .. v24}, Lde/e;->a(IIIIII)I

    .line 149
    .line 150
    .line 151
    move-result v25

    .line 152
    const/4 v8, 0x6

    .line 153
    aget v23, v4, v8

    .line 154
    .line 155
    const/16 v24, 0xb

    .line 156
    .line 157
    move/from16 v19, v16

    .line 158
    .line 159
    move/from16 v20, v25

    .line 160
    .line 161
    move/from16 v21, v9

    .line 162
    .line 163
    move/from16 v22, v5

    .line 164
    .line 165
    invoke-static/range {v19 .. v24}, Lde/e;->a(IIIIII)I

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    const/16 v32, 0x7

    .line 170
    .line 171
    aget v23, v4, v32

    .line 172
    .line 173
    const/16 v24, 0x13

    .line 174
    .line 175
    move/from16 v19, v5

    .line 176
    .line 177
    move/from16 v20, v16

    .line 178
    .line 179
    move/from16 v21, v25

    .line 180
    .line 181
    move/from16 v22, v9

    .line 182
    .line 183
    invoke-static/range {v19 .. v24}, Lde/e;->a(IIIIII)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    aget v13, v4, v7

    .line 188
    .line 189
    const/4 v14, 0x3

    .line 190
    move v10, v5

    .line 191
    move/from16 v11, v16

    .line 192
    .line 193
    move/from16 v12, v25

    .line 194
    .line 195
    invoke-static/range {v9 .. v14}, Lde/e;->a(IIIIII)I

    .line 196
    .line 197
    .line 198
    move-result v19

    .line 199
    const/16 v9, 0x9

    .line 200
    .line 201
    aget v29, v4, v9

    .line 202
    .line 203
    const/16 v30, 0x7

    .line 204
    .line 205
    move/from16 v26, v19

    .line 206
    .line 207
    move/from16 v27, v5

    .line 208
    .line 209
    move/from16 v28, v16

    .line 210
    .line 211
    invoke-static/range {v25 .. v30}, Lde/e;->a(IIIIII)I

    .line 212
    .line 213
    .line 214
    move-result v33

    .line 215
    const/16 v10, 0xa

    .line 216
    .line 217
    aget v30, v4, v10

    .line 218
    .line 219
    const/16 v31, 0xb

    .line 220
    .line 221
    move/from16 v26, v16

    .line 222
    .line 223
    move/from16 v27, v33

    .line 224
    .line 225
    move/from16 v28, v19

    .line 226
    .line 227
    move/from16 v29, v5

    .line 228
    .line 229
    invoke-static/range {v26 .. v31}, Lde/e;->a(IIIIII)I

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    const/16 v12, 0xb

    .line 234
    .line 235
    aget v30, v4, v12

    .line 236
    .line 237
    const/16 v31, 0x13

    .line 238
    .line 239
    move/from16 v26, v5

    .line 240
    .line 241
    move/from16 v27, v11

    .line 242
    .line 243
    move/from16 v28, v33

    .line 244
    .line 245
    move/from16 v29, v19

    .line 246
    .line 247
    invoke-static/range {v26 .. v31}, Lde/e;->a(IIIIII)I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    const/16 v13, 0xc

    .line 252
    .line 253
    aget v23, v4, v13

    .line 254
    .line 255
    const/16 v24, 0x3

    .line 256
    .line 257
    move/from16 v20, v5

    .line 258
    .line 259
    move/from16 v21, v11

    .line 260
    .line 261
    move/from16 v22, v33

    .line 262
    .line 263
    invoke-static/range {v19 .. v24}, Lde/e;->a(IIIIII)I

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    const/16 v16, 0xd

    .line 268
    .line 269
    aget v37, v4, v16

    .line 270
    .line 271
    const/16 v38, 0x7

    .line 272
    .line 273
    move/from16 v34, v14

    .line 274
    .line 275
    move/from16 v35, v5

    .line 276
    .line 277
    move/from16 v36, v11

    .line 278
    .line 279
    invoke-static/range {v33 .. v38}, Lde/e;->a(IIIIII)I

    .line 280
    .line 281
    .line 282
    move-result v19

    .line 283
    const/16 v31, 0xe

    .line 284
    .line 285
    aget v24, v4, v31

    .line 286
    .line 287
    const/16 v25, 0xb

    .line 288
    .line 289
    move/from16 v20, v11

    .line 290
    .line 291
    move/from16 v21, v19

    .line 292
    .line 293
    move/from16 v22, v14

    .line 294
    .line 295
    move/from16 v23, v5

    .line 296
    .line 297
    invoke-static/range {v20 .. v25}, Lde/e;->a(IIIIII)I

    .line 298
    .line 299
    .line 300
    move-result v33

    .line 301
    const/16 v11, 0xf

    .line 302
    .line 303
    aget v24, v4, v11

    .line 304
    .line 305
    const/16 v25, 0x13

    .line 306
    .line 307
    move/from16 v20, v5

    .line 308
    .line 309
    move/from16 v21, v33

    .line 310
    .line 311
    move/from16 v22, v19

    .line 312
    .line 313
    move/from16 v23, v14

    .line 314
    .line 315
    invoke-static/range {v20 .. v25}, Lde/e;->a(IIIIII)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    aget v29, v4, v1

    .line 320
    .line 321
    const/16 v30, 0x3

    .line 322
    .line 323
    move/from16 v25, v14

    .line 324
    .line 325
    move/from16 v26, v5

    .line 326
    .line 327
    move/from16 v27, v33

    .line 328
    .line 329
    move/from16 v28, v19

    .line 330
    .line 331
    invoke-static/range {v25 .. v30}, Lde/e;->b(IIIIII)I

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    aget v23, v4, v6

    .line 336
    .line 337
    const/16 v24, 0x5

    .line 338
    .line 339
    move/from16 v20, v14

    .line 340
    .line 341
    move/from16 v21, v5

    .line 342
    .line 343
    move/from16 v22, v33

    .line 344
    .line 345
    invoke-static/range {v19 .. v24}, Lde/e;->b(IIIIII)I

    .line 346
    .line 347
    .line 348
    move-result v19

    .line 349
    aget v37, v4, v7

    .line 350
    .line 351
    const/16 v38, 0x9

    .line 352
    .line 353
    move/from16 v34, v19

    .line 354
    .line 355
    move/from16 v35, v14

    .line 356
    .line 357
    move/from16 v36, v5

    .line 358
    .line 359
    invoke-static/range {v33 .. v38}, Lde/e;->b(IIIIII)I

    .line 360
    .line 361
    .line 362
    move-result v33

    .line 363
    aget v38, v4, v13

    .line 364
    .line 365
    const/16 v39, 0xd

    .line 366
    .line 367
    move/from16 v34, v5

    .line 368
    .line 369
    move/from16 v35, v33

    .line 370
    .line 371
    move/from16 v36, v19

    .line 372
    .line 373
    move/from16 v37, v14

    .line 374
    .line 375
    invoke-static/range {v34 .. v39}, Lde/e;->b(IIIIII)I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    aget v24, v4, v3

    .line 380
    .line 381
    const/16 v25, 0x3

    .line 382
    .line 383
    move/from16 v21, v5

    .line 384
    .line 385
    move/from16 v22, v33

    .line 386
    .line 387
    move/from16 v23, v19

    .line 388
    .line 389
    invoke-static/range {v20 .. v25}, Lde/e;->b(IIIIII)I

    .line 390
    .line 391
    .line 392
    move-result v34

    .line 393
    aget v29, v4, v18

    .line 394
    .line 395
    const/16 v30, 0x5

    .line 396
    .line 397
    move/from16 v25, v19

    .line 398
    .line 399
    move/from16 v26, v34

    .line 400
    .line 401
    move/from16 v27, v5

    .line 402
    .line 403
    move/from16 v28, v33

    .line 404
    .line 405
    invoke-static/range {v25 .. v30}, Lde/e;->b(IIIIII)I

    .line 406
    .line 407
    .line 408
    move-result v14

    .line 409
    aget v24, v4, v9

    .line 410
    .line 411
    const/16 v25, 0x9

    .line 412
    .line 413
    move/from16 v20, v33

    .line 414
    .line 415
    move/from16 v21, v14

    .line 416
    .line 417
    move/from16 v22, v34

    .line 418
    .line 419
    move/from16 v23, v5

    .line 420
    .line 421
    invoke-static/range {v20 .. v25}, Lde/e;->b(IIIIII)I

    .line 422
    .line 423
    .line 424
    move-result v19

    .line 425
    aget v24, v4, v16

    .line 426
    .line 427
    const/16 v25, 0xd

    .line 428
    .line 429
    move/from16 v20, v5

    .line 430
    .line 431
    move/from16 v21, v19

    .line 432
    .line 433
    move/from16 v22, v14

    .line 434
    .line 435
    move/from16 v23, v34

    .line 436
    .line 437
    invoke-static/range {v20 .. v25}, Lde/e;->b(IIIIII)I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    aget v38, v4, v15

    .line 442
    .line 443
    const/16 v39, 0x3

    .line 444
    .line 445
    move/from16 v35, v5

    .line 446
    .line 447
    move/from16 v36, v19

    .line 448
    .line 449
    move/from16 v37, v14

    .line 450
    .line 451
    invoke-static/range {v34 .. v39}, Lde/e;->b(IIIIII)I

    .line 452
    .line 453
    .line 454
    move-result v26

    .line 455
    aget v24, v4, v8

    .line 456
    .line 457
    const/16 v25, 0x5

    .line 458
    .line 459
    move/from16 v20, v14

    .line 460
    .line 461
    move/from16 v21, v26

    .line 462
    .line 463
    move/from16 v22, v5

    .line 464
    .line 465
    move/from16 v23, v19

    .line 466
    .line 467
    invoke-static/range {v20 .. v25}, Lde/e;->b(IIIIII)I

    .line 468
    .line 469
    .line 470
    move-result v33

    .line 471
    aget v39, v4, v10

    .line 472
    .line 473
    const/16 v40, 0x9

    .line 474
    .line 475
    move/from16 v35, v19

    .line 476
    .line 477
    move/from16 v36, v33

    .line 478
    .line 479
    move/from16 v37, v26

    .line 480
    .line 481
    move/from16 v38, v5

    .line 482
    .line 483
    invoke-static/range {v35 .. v40}, Lde/e;->b(IIIIII)I

    .line 484
    .line 485
    .line 486
    move-result v14

    .line 487
    aget v39, v4, v31

    .line 488
    .line 489
    const/16 v40, 0xd

    .line 490
    .line 491
    move/from16 v35, v5

    .line 492
    .line 493
    move/from16 v36, v14

    .line 494
    .line 495
    move/from16 v37, v33

    .line 496
    .line 497
    move/from16 v38, v26

    .line 498
    .line 499
    invoke-static/range {v35 .. v40}, Lde/e;->b(IIIIII)I

    .line 500
    .line 501
    .line 502
    move-result v19

    .line 503
    aget v24, v4, v17

    .line 504
    .line 505
    const/16 v25, 0x3

    .line 506
    .line 507
    move/from16 v20, v26

    .line 508
    .line 509
    move/from16 v21, v19

    .line 510
    .line 511
    move/from16 v22, v14

    .line 512
    .line 513
    move/from16 v23, v33

    .line 514
    .line 515
    invoke-static/range {v20 .. v25}, Lde/e;->b(IIIIII)I

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    aget v37, v4, v32

    .line 520
    .line 521
    const/16 v38, 0x5

    .line 522
    .line 523
    move/from16 v34, v5

    .line 524
    .line 525
    move/from16 v35, v19

    .line 526
    .line 527
    invoke-static/range {v33 .. v38}, Lde/e;->b(IIIIII)I

    .line 528
    .line 529
    .line 530
    move-result v26

    .line 531
    aget v24, v4, v12

    .line 532
    .line 533
    const/16 v25, 0x9

    .line 534
    .line 535
    move/from16 v20, v14

    .line 536
    .line 537
    move/from16 v21, v26

    .line 538
    .line 539
    move/from16 v22, v5

    .line 540
    .line 541
    move/from16 v23, v19

    .line 542
    .line 543
    invoke-static/range {v20 .. v25}, Lde/e;->b(IIIIII)I

    .line 544
    .line 545
    .line 546
    move-result v33

    .line 547
    aget v23, v4, v11

    .line 548
    .line 549
    const/16 v24, 0xd

    .line 550
    .line 551
    move/from16 v20, v33

    .line 552
    .line 553
    invoke-static/range {v19 .. v24}, Lde/e;->b(IIIIII)I

    .line 554
    .line 555
    .line 556
    move-result v14

    .line 557
    aget v38, v4, v1

    .line 558
    .line 559
    const/16 v39, 0x3

    .line 560
    .line 561
    move/from16 v35, v14

    .line 562
    .line 563
    move/from16 v36, v33

    .line 564
    .line 565
    move/from16 v37, v26

    .line 566
    .line 567
    invoke-static/range {v34 .. v39}, Lde/e;->c(IIIIII)I

    .line 568
    .line 569
    .line 570
    move-result v19

    .line 571
    aget v24, v4, v7

    .line 572
    .line 573
    move/from16 v20, v26

    .line 574
    .line 575
    move/from16 v21, v19

    .line 576
    .line 577
    move/from16 v22, v14

    .line 578
    .line 579
    move/from16 v23, v33

    .line 580
    .line 581
    invoke-static/range {v20 .. v25}, Lde/e;->c(IIIIII)I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    aget v37, v4, v6

    .line 586
    .line 587
    const/16 v38, 0xb

    .line 588
    .line 589
    move/from16 v34, v5

    .line 590
    .line 591
    move/from16 v35, v19

    .line 592
    .line 593
    move/from16 v36, v14

    .line 594
    .line 595
    invoke-static/range {v33 .. v38}, Lde/e;->c(IIIIII)I

    .line 596
    .line 597
    .line 598
    move-result v6

    .line 599
    aget v38, v4, v13

    .line 600
    .line 601
    const/16 v39, 0xf

    .line 602
    .line 603
    move/from16 v34, v14

    .line 604
    .line 605
    move/from16 v35, v6

    .line 606
    .line 607
    move/from16 v36, v5

    .line 608
    .line 609
    move/from16 v37, v19

    .line 610
    .line 611
    invoke-static/range {v34 .. v39}, Lde/e;->c(IIIIII)I

    .line 612
    .line 613
    .line 614
    move-result v7

    .line 615
    aget v23, v4, v15

    .line 616
    .line 617
    const/16 v24, 0x3

    .line 618
    .line 619
    move/from16 v20, v7

    .line 620
    .line 621
    move/from16 v21, v6

    .line 622
    .line 623
    move/from16 v22, v5

    .line 624
    .line 625
    invoke-static/range {v19 .. v24}, Lde/e;->c(IIIIII)I

    .line 626
    .line 627
    .line 628
    move-result v13

    .line 629
    aget v38, v4, v10

    .line 630
    .line 631
    const/16 v39, 0x9

    .line 632
    .line 633
    move/from16 v34, v5

    .line 634
    .line 635
    move/from16 v35, v13

    .line 636
    .line 637
    move/from16 v36, v7

    .line 638
    .line 639
    move/from16 v37, v6

    .line 640
    .line 641
    invoke-static/range {v34 .. v39}, Lde/e;->c(IIIIII)I

    .line 642
    .line 643
    .line 644
    move-result v19

    .line 645
    aget v24, v4, v8

    .line 646
    .line 647
    const/16 v25, 0xb

    .line 648
    .line 649
    move/from16 v20, v6

    .line 650
    .line 651
    move/from16 v21, v19

    .line 652
    .line 653
    move/from16 v22, v13

    .line 654
    .line 655
    move/from16 v23, v7

    .line 656
    .line 657
    invoke-static/range {v20 .. v25}, Lde/e;->c(IIIIII)I

    .line 658
    .line 659
    .line 660
    move-result v33

    .line 661
    aget v24, v4, v31

    .line 662
    .line 663
    const/16 v25, 0xf

    .line 664
    .line 665
    move/from16 v20, v7

    .line 666
    .line 667
    move/from16 v21, v33

    .line 668
    .line 669
    move/from16 v22, v19

    .line 670
    .line 671
    move/from16 v23, v13

    .line 672
    .line 673
    invoke-static/range {v20 .. v25}, Lde/e;->c(IIIIII)I

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    aget v29, v4, v3

    .line 678
    .line 679
    const/16 v30, 0x3

    .line 680
    .line 681
    move/from16 v25, v13

    .line 682
    .line 683
    move/from16 v26, v5

    .line 684
    .line 685
    move/from16 v27, v33

    .line 686
    .line 687
    move/from16 v28, v19

    .line 688
    .line 689
    invoke-static/range {v25 .. v30}, Lde/e;->c(IIIIII)I

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    aget v23, v4, v9

    .line 694
    .line 695
    const/16 v24, 0x9

    .line 696
    .line 697
    move/from16 v20, v6

    .line 698
    .line 699
    move/from16 v21, v5

    .line 700
    .line 701
    move/from16 v22, v33

    .line 702
    .line 703
    invoke-static/range {v19 .. v24}, Lde/e;->c(IIIIII)I

    .line 704
    .line 705
    .line 706
    move-result v7

    .line 707
    aget v37, v4, v18

    .line 708
    .line 709
    const/16 v38, 0xb

    .line 710
    .line 711
    move/from16 v34, v7

    .line 712
    .line 713
    move/from16 v35, v6

    .line 714
    .line 715
    move/from16 v36, v5

    .line 716
    .line 717
    invoke-static/range {v33 .. v38}, Lde/e;->c(IIIIII)I

    .line 718
    .line 719
    .line 720
    move-result v18

    .line 721
    aget v30, v4, v16

    .line 722
    .line 723
    const/16 v31, 0xf

    .line 724
    .line 725
    move/from16 v27, v18

    .line 726
    .line 727
    move/from16 v28, v7

    .line 728
    .line 729
    move/from16 v29, v6

    .line 730
    .line 731
    invoke-static/range {v26 .. v31}, Lde/e;->c(IIIIII)I

    .line 732
    .line 733
    .line 734
    move-result v5

    .line 735
    aget v24, v4, v17

    .line 736
    .line 737
    const/16 v25, 0x3

    .line 738
    .line 739
    move/from16 v21, v5

    .line 740
    .line 741
    move/from16 v22, v18

    .line 742
    .line 743
    move/from16 v23, v7

    .line 744
    .line 745
    invoke-static/range {v20 .. v25}, Lde/e;->c(IIIIII)I

    .line 746
    .line 747
    .line 748
    move-result v6

    .line 749
    aget v29, v4, v12

    .line 750
    .line 751
    const/16 v30, 0x9

    .line 752
    .line 753
    move/from16 v25, v7

    .line 754
    .line 755
    move/from16 v26, v6

    .line 756
    .line 757
    move/from16 v27, v5

    .line 758
    .line 759
    move/from16 v28, v18

    .line 760
    .line 761
    invoke-static/range {v25 .. v30}, Lde/e;->c(IIIIII)I

    .line 762
    .line 763
    .line 764
    move-result v7

    .line 765
    aget v22, v4, v32

    .line 766
    .line 767
    const/16 v23, 0xb

    .line 768
    .line 769
    move/from16 v19, v7

    .line 770
    .line 771
    move/from16 v20, v6

    .line 772
    .line 773
    invoke-static/range {v18 .. v23}, Lde/e;->c(IIIIII)I

    .line 774
    .line 775
    .line 776
    move-result v8

    .line 777
    aget v23, v4, v11

    .line 778
    .line 779
    const/16 v24, 0xf

    .line 780
    .line 781
    move/from16 v19, v5

    .line 782
    .line 783
    move/from16 v20, v8

    .line 784
    .line 785
    move/from16 v21, v7

    .line 786
    .line 787
    move/from16 v22, v6

    .line 788
    .line 789
    invoke-static/range {v19 .. v24}, Lde/e;->c(IIIIII)I

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    aget v5, v2, v1

    .line 794
    .line 795
    add-int/2addr v5, v6

    .line 796
    aput v5, v2, v1

    .line 797
    .line 798
    aget v1, v2, v3

    .line 799
    .line 800
    add-int/2addr v1, v4

    .line 801
    aput v1, v2, v3

    .line 802
    .line 803
    aget v1, v2, v15

    .line 804
    .line 805
    add-int/2addr v1, v8

    .line 806
    aput v1, v2, v15

    .line 807
    .line 808
    aget v1, v2, v17

    .line 809
    .line 810
    add-int/2addr v1, v7

    .line 811
    aput v1, v2, v17

    .line 812
    .line 813
    return-void
.end method

.method public final engineDigest()[B
    .locals 10

    .line 1
    iget-wide v0, p0, Lde/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x40

    .line 4
    .line 5
    rem-long/2addr v0, v2

    .line 6
    long-to-int v1, v0

    .line 7
    const/16 v0, 0x38

    .line 8
    .line 9
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    rsub-int/lit8 v0, v1, 0x78

    .line 14
    .line 15
    :goto_0
    add-int/lit8 v1, v0, 0x8

    .line 16
    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    const/16 v3, -0x80

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-byte v3, v2, v4

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_1
    const/16 v5, 0x8

    .line 26
    .line 27
    if-ge v3, v5, :cond_1

    .line 28
    .line 29
    add-int v5, v0, v3

    .line 30
    .line 31
    iget-wide v6, p0, Lde/e;->b:J

    .line 32
    .line 33
    const-wide/16 v8, 0x8

    .line 34
    .line 35
    mul-long v6, v6, v8

    .line 36
    .line 37
    mul-int/lit8 v8, v3, 0x8

    .line 38
    .line 39
    ushr-long/2addr v6, v8

    .line 40
    long-to-int v7, v6

    .line 41
    int-to-byte v6, v7

    .line 42
    aput-byte v6, v2, v5

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, v2, v4, v1}, Lde/e;->engineUpdate([BII)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x10

    .line 51
    .line 52
    new-array v0, v0, [B

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_2
    const/4 v2, 0x4

    .line 56
    if-ge v1, v2, :cond_3

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_3
    if-ge v3, v2, :cond_2

    .line 60
    .line 61
    mul-int/lit8 v5, v1, 0x4

    .line 62
    .line 63
    add-int/2addr v5, v3

    .line 64
    iget-object v6, p0, Lde/e;->a:[I

    .line 65
    .line 66
    aget v6, v6, v1

    .line 67
    .line 68
    mul-int/lit8 v7, v3, 0x8

    .line 69
    .line 70
    ushr-int/2addr v6, v7

    .line 71
    int-to-byte v6, v6

    .line 72
    aput-byte v6, v0, v5

    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p0}, Lde/e;->engineReset()V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public final engineReset()V
    .locals 4

    .line 1
    const v0, 0x67452301

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lde/e;->a:[I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput v0, v1, v2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const v3, -0x10325477

    .line 11
    .line 12
    .line 13
    aput v3, v1, v0

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    const v3, -0x67452302

    .line 17
    .line 18
    .line 19
    aput v3, v1, v0

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    const v3, 0x10325476

    .line 23
    .line 24
    .line 25
    aput v3, v1, v0

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    iput-wide v0, p0, Lde/e;->b:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    const/16 v1, 0x40

    .line 33
    .line 34
    if-ge v0, v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lde/e;->c:[B

    .line 37
    .line 38
    aput-byte v2, v1, v0

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final engineUpdate(B)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lde/e;->b:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v3, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 2
    iput-wide v0, p0, Lde/e;->b:J

    .line 3
    iget-object v0, p0, Lde/e;->c:[B

    aput-byte p1, v0, v3

    const/16 p1, 0x3f

    if-ne v3, p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lde/e;->d(I[B)V

    :cond_0
    return-void
.end method

.method public final engineUpdate([BII)V
    .locals 7

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 5
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-gtz v6, :cond_3

    .line 6
    iget-wide v0, p0, Lde/e;->b:J

    const-wide/16 v4, 0x40

    rem-long v4, v0, v4

    long-to-int v5, v4

    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lde/e;->b:J

    rsub-int/lit8 v0, v5, 0x40

    .line 8
    iget-object v1, p0, Lde/e;->c:[B

    const/4 v2, 0x0

    if-lt p3, v0, :cond_1

    .line 9
    invoke-static {p1, p2, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-virtual {p0, v2, v1}, Lde/e;->d(I[B)V

    :goto_0
    add-int/lit8 v3, v0, 0x40

    add-int/lit8 v4, v0, 0x3f

    if-ge v4, p3, :cond_0

    add-int/2addr v0, p2

    .line 11
    invoke-virtual {p0, v0, p1}, Lde/e;->d(I[B)V

    move v0, v3

    goto :goto_0

    :cond_0
    move v2, v0

    const/4 v5, 0x0

    :cond_1
    if-ge v2, p3, :cond_2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 12
    invoke-static {p1, p2, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
