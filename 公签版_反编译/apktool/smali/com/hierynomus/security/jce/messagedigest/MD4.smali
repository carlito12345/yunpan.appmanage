.class public Lcom/hierynomus/security/jce/messagedigest/MD4;
.super Ljava/security/MessageDigest;
.source "SourceFile"


# static fields
.field private static final A:I = 0x67452301

.field private static final B:I = -0x10325477

.field public static final BYTE_BLOCK_LENGTH:I = 0x40

.field public static final BYTE_DIGEST_LENGTH:I = 0x10

.field private static final C:I = -0x67452302

.field private static final D:I = 0x10325476


# instance fields
.field private a:I

.field private b:I

.field private final buffer:[B

.field private c:I

.field private d:I

.field private msgLength:J


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
    const v0, 0x67452301

    .line 7
    .line 8
    .line 9
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->a:I

    .line 10
    .line 11
    const v0, -0x10325477

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->b:I

    .line 15
    .line 16
    const v0, -0x67452302

    .line 17
    .line 18
    .line 19
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->c:I

    .line 20
    .line 21
    const v0, 0x10325476

    .line 22
    .line 23
    .line 24
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->d:I

    .line 25
    .line 26
    const/16 v0, 0x40

    .line 27
    .line 28
    new-array v0, v0, [B

    .line 29
    .line 30
    iput-object v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->buffer:[B

    .line 31
    .line 32
    return-void
.end method

.method private pad()[B
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->msgLength:J

    .line 2
    .line 3
    const-wide/16 v2, 0x40

    .line 4
    .line 5
    rem-long v2, v0, v2

    .line 6
    .line 7
    long-to-int v3, v2

    .line 8
    const/16 v2, 0x38

    .line 9
    .line 10
    if-ge v3, v2, :cond_0

    .line 11
    .line 12
    rsub-int/lit8 v2, v3, 0x40

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    rsub-int v2, v3, 0x80

    .line 16
    .line 17
    :goto_0
    new-array v3, v2, [B

    .line 18
    .line 19
    const/16 v4, -0x80

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    aput-byte v4, v3, v5

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    shl-long/2addr v0, v4

    .line 26
    const/16 v4, 0x8

    .line 27
    .line 28
    sub-int/2addr v2, v4

    .line 29
    :goto_1
    if-ge v5, v4, :cond_1

    .line 30
    .line 31
    add-int/lit8 v6, v2, 0x1

    .line 32
    .line 33
    shl-int/lit8 v7, v5, 0x3

    .line 34
    .line 35
    ushr-long v7, v0, v7

    .line 36
    .line 37
    long-to-int v8, v7

    .line 38
    int-to-byte v7, v8

    .line 39
    aput-byte v7, v3, v2

    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    move v2, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    return-object v3
.end method

.method private process([BI)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->a:I

    .line 4
    .line 5
    iget v2, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->b:I

    .line 6
    .line 7
    iget v3, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->c:I

    .line 8
    .line 9
    iget v4, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->d:I

    .line 10
    .line 11
    const/16 v5, 0x10

    .line 12
    .line 13
    new-array v6, v5, [I

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move/from16 v8, p2

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    :goto_0
    if-ge v9, v5, :cond_0

    .line 20
    .line 21
    add-int/lit8 v10, v8, 0x1

    .line 22
    .line 23
    aget-byte v11, p1, v8

    .line 24
    .line 25
    and-int/lit16 v11, v11, 0xff

    .line 26
    .line 27
    add-int/lit8 v12, v8, 0x2

    .line 28
    .line 29
    aget-byte v10, p1, v10

    .line 30
    .line 31
    and-int/lit16 v10, v10, 0xff

    .line 32
    .line 33
    shl-int/lit8 v10, v10, 0x8

    .line 34
    .line 35
    or-int/2addr v10, v11

    .line 36
    add-int/lit8 v11, v8, 0x3

    .line 37
    .line 38
    aget-byte v12, p1, v12

    .line 39
    .line 40
    and-int/lit16 v12, v12, 0xff

    .line 41
    .line 42
    shl-int/2addr v12, v5

    .line 43
    or-int/2addr v10, v12

    .line 44
    add-int/lit8 v8, v8, 0x4

    .line 45
    .line 46
    aget-byte v11, p1, v11

    .line 47
    .line 48
    and-int/lit16 v11, v11, 0xff

    .line 49
    .line 50
    shl-int/lit8 v11, v11, 0x18

    .line 51
    .line 52
    or-int/2addr v10, v11

    .line 53
    aput v10, v6, v9

    .line 54
    .line 55
    add-int/lit8 v9, v9, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget v5, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->a:I

    .line 59
    .line 60
    iget v8, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->b:I

    .line 61
    .line 62
    iget v9, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->c:I

    .line 63
    .line 64
    and-int v10, v8, v9

    .line 65
    .line 66
    xor-int/lit8 v11, v8, -0x1

    .line 67
    .line 68
    iget v12, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->d:I

    .line 69
    .line 70
    and-int/2addr v11, v12

    .line 71
    or-int/2addr v10, v11

    .line 72
    aget v7, v6, v7

    .line 73
    .line 74
    add-int/2addr v10, v7

    .line 75
    add-int/2addr v10, v5

    .line 76
    shl-int/lit8 v5, v10, 0x3

    .line 77
    .line 78
    ushr-int/lit8 v10, v10, 0x1d

    .line 79
    .line 80
    or-int/2addr v5, v10

    .line 81
    and-int v10, v5, v8

    .line 82
    .line 83
    xor-int/lit8 v11, v5, -0x1

    .line 84
    .line 85
    and-int/2addr v11, v9

    .line 86
    or-int/2addr v10, v11

    .line 87
    const/4 v11, 0x1

    .line 88
    aget v11, v6, v11

    .line 89
    .line 90
    add-int/2addr v10, v11

    .line 91
    add-int/2addr v10, v12

    .line 92
    shl-int/lit8 v12, v10, 0x7

    .line 93
    .line 94
    ushr-int/lit8 v10, v10, 0x19

    .line 95
    .line 96
    or-int/2addr v10, v12

    .line 97
    and-int v12, v10, v5

    .line 98
    .line 99
    xor-int/lit8 v13, v10, -0x1

    .line 100
    .line 101
    and-int/2addr v13, v8

    .line 102
    or-int/2addr v12, v13

    .line 103
    const/4 v13, 0x2

    .line 104
    aget v13, v6, v13

    .line 105
    .line 106
    add-int/2addr v12, v13

    .line 107
    add-int/2addr v12, v9

    .line 108
    shl-int/lit8 v9, v12, 0xb

    .line 109
    .line 110
    ushr-int/lit8 v12, v12, 0x15

    .line 111
    .line 112
    or-int/2addr v9, v12

    .line 113
    and-int v12, v9, v10

    .line 114
    .line 115
    xor-int/lit8 v14, v9, -0x1

    .line 116
    .line 117
    and-int/2addr v14, v5

    .line 118
    or-int/2addr v12, v14

    .line 119
    const/4 v14, 0x3

    .line 120
    aget v14, v6, v14

    .line 121
    .line 122
    add-int/2addr v12, v14

    .line 123
    add-int/2addr v12, v8

    .line 124
    shl-int/lit8 v8, v12, 0x13

    .line 125
    .line 126
    const/16 v15, 0xd

    .line 127
    .line 128
    ushr-int/2addr v12, v15

    .line 129
    or-int/2addr v8, v12

    .line 130
    and-int v12, v8, v9

    .line 131
    .line 132
    xor-int/lit8 v16, v8, -0x1

    .line 133
    .line 134
    and-int v16, v16, v10

    .line 135
    .line 136
    or-int v12, v12, v16

    .line 137
    .line 138
    const/16 v16, 0x4

    .line 139
    .line 140
    aget v15, v6, v16

    .line 141
    .line 142
    add-int/2addr v12, v15

    .line 143
    add-int/2addr v12, v5

    .line 144
    shl-int/lit8 v5, v12, 0x3

    .line 145
    .line 146
    ushr-int/lit8 v12, v12, 0x1d

    .line 147
    .line 148
    or-int/2addr v5, v12

    .line 149
    and-int v12, v5, v8

    .line 150
    .line 151
    xor-int/lit8 v16, v5, -0x1

    .line 152
    .line 153
    and-int v16, v16, v9

    .line 154
    .line 155
    or-int v12, v12, v16

    .line 156
    .line 157
    const/16 v16, 0x5

    .line 158
    .line 159
    move/from16 v17, v4

    .line 160
    .line 161
    aget v4, v6, v16

    .line 162
    .line 163
    add-int/2addr v12, v4

    .line 164
    add-int/2addr v12, v10

    .line 165
    shl-int/lit8 v10, v12, 0x7

    .line 166
    .line 167
    ushr-int/lit8 v12, v12, 0x19

    .line 168
    .line 169
    or-int/2addr v10, v12

    .line 170
    and-int v12, v10, v5

    .line 171
    .line 172
    xor-int/lit8 v16, v10, -0x1

    .line 173
    .line 174
    and-int v16, v16, v8

    .line 175
    .line 176
    or-int v12, v12, v16

    .line 177
    .line 178
    const/16 v16, 0x6

    .line 179
    .line 180
    move/from16 v18, v3

    .line 181
    .line 182
    aget v3, v6, v16

    .line 183
    .line 184
    add-int/2addr v12, v3

    .line 185
    add-int/2addr v12, v9

    .line 186
    shl-int/lit8 v9, v12, 0xb

    .line 187
    .line 188
    ushr-int/lit8 v12, v12, 0x15

    .line 189
    .line 190
    or-int/2addr v9, v12

    .line 191
    and-int v12, v9, v10

    .line 192
    .line 193
    xor-int/lit8 v16, v9, -0x1

    .line 194
    .line 195
    and-int v16, v16, v5

    .line 196
    .line 197
    or-int v12, v12, v16

    .line 198
    .line 199
    const/16 v16, 0x7

    .line 200
    .line 201
    move/from16 v19, v2

    .line 202
    .line 203
    aget v2, v6, v16

    .line 204
    .line 205
    add-int/2addr v12, v2

    .line 206
    add-int/2addr v12, v8

    .line 207
    shl-int/lit8 v8, v12, 0x13

    .line 208
    .line 209
    const/16 v16, 0xd

    .line 210
    .line 211
    ushr-int/lit8 v12, v12, 0xd

    .line 212
    .line 213
    or-int/2addr v8, v12

    .line 214
    and-int v12, v8, v9

    .line 215
    .line 216
    xor-int/lit8 v16, v8, -0x1

    .line 217
    .line 218
    and-int v16, v16, v10

    .line 219
    .line 220
    or-int v12, v12, v16

    .line 221
    .line 222
    const/16 v16, 0x8

    .line 223
    .line 224
    aget v0, v6, v16

    .line 225
    .line 226
    add-int/2addr v12, v0

    .line 227
    add-int/2addr v12, v5

    .line 228
    shl-int/lit8 v5, v12, 0x3

    .line 229
    .line 230
    ushr-int/lit8 v12, v12, 0x1d

    .line 231
    .line 232
    or-int/2addr v5, v12

    .line 233
    and-int v12, v5, v8

    .line 234
    .line 235
    xor-int/lit8 v16, v5, -0x1

    .line 236
    .line 237
    and-int v16, v16, v9

    .line 238
    .line 239
    or-int v12, v12, v16

    .line 240
    .line 241
    const/16 v16, 0x9

    .line 242
    .line 243
    move/from16 v20, v1

    .line 244
    .line 245
    aget v1, v6, v16

    .line 246
    .line 247
    add-int/2addr v12, v1

    .line 248
    add-int/2addr v12, v10

    .line 249
    shl-int/lit8 v10, v12, 0x7

    .line 250
    .line 251
    ushr-int/lit8 v12, v12, 0x19

    .line 252
    .line 253
    or-int/2addr v10, v12

    .line 254
    and-int v12, v10, v5

    .line 255
    .line 256
    xor-int/lit8 v16, v10, -0x1

    .line 257
    .line 258
    and-int v16, v16, v8

    .line 259
    .line 260
    or-int v12, v12, v16

    .line 261
    .line 262
    const/16 v16, 0xa

    .line 263
    .line 264
    move/from16 p2, v2

    .line 265
    .line 266
    aget v2, v6, v16

    .line 267
    .line 268
    add-int/2addr v12, v2

    .line 269
    add-int/2addr v12, v9

    .line 270
    shl-int/lit8 v9, v12, 0xb

    .line 271
    .line 272
    ushr-int/lit8 v12, v12, 0x15

    .line 273
    .line 274
    or-int/2addr v9, v12

    .line 275
    and-int v12, v9, v10

    .line 276
    .line 277
    xor-int/lit8 v16, v9, -0x1

    .line 278
    .line 279
    and-int v16, v16, v5

    .line 280
    .line 281
    or-int v12, v12, v16

    .line 282
    .line 283
    const/16 v16, 0xb

    .line 284
    .line 285
    move/from16 v21, v14

    .line 286
    .line 287
    aget v14, v6, v16

    .line 288
    .line 289
    add-int/2addr v12, v14

    .line 290
    add-int/2addr v12, v8

    .line 291
    shl-int/lit8 v8, v12, 0x13

    .line 292
    .line 293
    const/16 v16, 0xd

    .line 294
    .line 295
    ushr-int/lit8 v12, v12, 0xd

    .line 296
    .line 297
    or-int/2addr v8, v12

    .line 298
    and-int v12, v8, v9

    .line 299
    .line 300
    xor-int/lit8 v16, v8, -0x1

    .line 301
    .line 302
    and-int v16, v16, v10

    .line 303
    .line 304
    or-int v12, v12, v16

    .line 305
    .line 306
    const/16 v16, 0xc

    .line 307
    .line 308
    move/from16 v22, v14

    .line 309
    .line 310
    aget v14, v6, v16

    .line 311
    .line 312
    add-int/2addr v12, v14

    .line 313
    add-int/2addr v12, v5

    .line 314
    shl-int/lit8 v5, v12, 0x3

    .line 315
    .line 316
    ushr-int/lit8 v12, v12, 0x1d

    .line 317
    .line 318
    or-int/2addr v5, v12

    .line 319
    and-int v12, v5, v8

    .line 320
    .line 321
    xor-int/lit8 v16, v5, -0x1

    .line 322
    .line 323
    and-int v16, v16, v9

    .line 324
    .line 325
    or-int v12, v12, v16

    .line 326
    .line 327
    move/from16 v23, v2

    .line 328
    .line 329
    const/16 v16, 0xd

    .line 330
    .line 331
    aget v2, v6, v16

    .line 332
    .line 333
    add-int/2addr v12, v2

    .line 334
    add-int/2addr v12, v10

    .line 335
    shl-int/lit8 v10, v12, 0x7

    .line 336
    .line 337
    ushr-int/lit8 v12, v12, 0x19

    .line 338
    .line 339
    or-int/2addr v10, v12

    .line 340
    and-int v12, v10, v5

    .line 341
    .line 342
    xor-int/lit8 v16, v10, -0x1

    .line 343
    .line 344
    and-int v16, v16, v8

    .line 345
    .line 346
    or-int v12, v12, v16

    .line 347
    .line 348
    const/16 v16, 0xe

    .line 349
    .line 350
    move/from16 v24, v3

    .line 351
    .line 352
    aget v3, v6, v16

    .line 353
    .line 354
    add-int/2addr v12, v3

    .line 355
    add-int/2addr v12, v9

    .line 356
    shl-int/lit8 v9, v12, 0xb

    .line 357
    .line 358
    ushr-int/lit8 v12, v12, 0x15

    .line 359
    .line 360
    or-int/2addr v9, v12

    .line 361
    and-int v12, v9, v10

    .line 362
    .line 363
    xor-int/lit8 v16, v9, -0x1

    .line 364
    .line 365
    and-int v16, v16, v5

    .line 366
    .line 367
    or-int v12, v12, v16

    .line 368
    .line 369
    const/16 v16, 0xf

    .line 370
    .line 371
    aget v6, v6, v16

    .line 372
    .line 373
    add-int/2addr v12, v6

    .line 374
    add-int/2addr v12, v8

    .line 375
    shl-int/lit8 v8, v12, 0x13

    .line 376
    .line 377
    const/16 v16, 0xd

    .line 378
    .line 379
    ushr-int/lit8 v12, v12, 0xd

    .line 380
    .line 381
    or-int/2addr v8, v12

    .line 382
    or-int v12, v9, v10

    .line 383
    .line 384
    and-int/2addr v12, v8

    .line 385
    and-int v16, v9, v10

    .line 386
    .line 387
    or-int v12, v12, v16

    .line 388
    .line 389
    move/from16 p1, v6

    .line 390
    .line 391
    const v6, 0x5a827999

    .line 392
    .line 393
    .line 394
    invoke-static {v12, v7, v6, v5}, Lta/q;->x(IIII)I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    shl-int/lit8 v12, v5, 0x3

    .line 399
    .line 400
    ushr-int/lit8 v5, v5, 0x1d

    .line 401
    .line 402
    or-int/2addr v5, v12

    .line 403
    or-int v12, v8, v9

    .line 404
    .line 405
    and-int/2addr v12, v5

    .line 406
    and-int v16, v8, v9

    .line 407
    .line 408
    or-int v12, v12, v16

    .line 409
    .line 410
    invoke-static {v12, v15, v6, v10}, Lta/q;->x(IIII)I

    .line 411
    .line 412
    .line 413
    move-result v10

    .line 414
    shl-int/lit8 v12, v10, 0x5

    .line 415
    .line 416
    ushr-int/lit8 v10, v10, 0x1b

    .line 417
    .line 418
    or-int/2addr v10, v12

    .line 419
    or-int v12, v5, v8

    .line 420
    .line 421
    and-int/2addr v12, v10

    .line 422
    and-int v16, v5, v8

    .line 423
    .line 424
    or-int v12, v12, v16

    .line 425
    .line 426
    invoke-static {v12, v0, v6, v9}, Lta/q;->x(IIII)I

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    shl-int/lit8 v12, v9, 0x9

    .line 431
    .line 432
    ushr-int/lit8 v9, v9, 0x17

    .line 433
    .line 434
    or-int/2addr v9, v12

    .line 435
    or-int v12, v10, v5

    .line 436
    .line 437
    and-int/2addr v12, v9

    .line 438
    and-int v16, v10, v5

    .line 439
    .line 440
    or-int v12, v12, v16

    .line 441
    .line 442
    invoke-static {v12, v14, v6, v8}, Lta/q;->x(IIII)I

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    shl-int/lit8 v12, v8, 0xd

    .line 447
    .line 448
    ushr-int/lit8 v8, v8, 0x13

    .line 449
    .line 450
    or-int/2addr v8, v12

    .line 451
    or-int v12, v9, v10

    .line 452
    .line 453
    and-int/2addr v12, v8

    .line 454
    and-int v16, v9, v10

    .line 455
    .line 456
    or-int v12, v12, v16

    .line 457
    .line 458
    invoke-static {v12, v11, v6, v5}, Lta/q;->x(IIII)I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    shl-int/lit8 v12, v5, 0x3

    .line 463
    .line 464
    ushr-int/lit8 v5, v5, 0x1d

    .line 465
    .line 466
    or-int/2addr v5, v12

    .line 467
    or-int v12, v8, v9

    .line 468
    .line 469
    and-int/2addr v12, v5

    .line 470
    and-int v16, v8, v9

    .line 471
    .line 472
    or-int v12, v12, v16

    .line 473
    .line 474
    invoke-static {v12, v4, v6, v10}, Lta/q;->x(IIII)I

    .line 475
    .line 476
    .line 477
    move-result v10

    .line 478
    shl-int/lit8 v12, v10, 0x5

    .line 479
    .line 480
    ushr-int/lit8 v10, v10, 0x1b

    .line 481
    .line 482
    or-int/2addr v10, v12

    .line 483
    or-int v12, v5, v8

    .line 484
    .line 485
    and-int/2addr v12, v10

    .line 486
    and-int v16, v5, v8

    .line 487
    .line 488
    or-int v12, v12, v16

    .line 489
    .line 490
    invoke-static {v12, v1, v6, v9}, Lta/q;->x(IIII)I

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    shl-int/lit8 v12, v9, 0x9

    .line 495
    .line 496
    ushr-int/lit8 v9, v9, 0x17

    .line 497
    .line 498
    or-int/2addr v9, v12

    .line 499
    or-int v12, v10, v5

    .line 500
    .line 501
    and-int/2addr v12, v9

    .line 502
    and-int v16, v10, v5

    .line 503
    .line 504
    or-int v12, v12, v16

    .line 505
    .line 506
    invoke-static {v12, v2, v6, v8}, Lta/q;->x(IIII)I

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    shl-int/lit8 v12, v8, 0xd

    .line 511
    .line 512
    ushr-int/lit8 v8, v8, 0x13

    .line 513
    .line 514
    or-int/2addr v8, v12

    .line 515
    or-int v12, v9, v10

    .line 516
    .line 517
    and-int/2addr v12, v8

    .line 518
    and-int v16, v9, v10

    .line 519
    .line 520
    or-int v12, v12, v16

    .line 521
    .line 522
    invoke-static {v12, v13, v6, v5}, Lta/q;->x(IIII)I

    .line 523
    .line 524
    .line 525
    move-result v5

    .line 526
    shl-int/lit8 v12, v5, 0x3

    .line 527
    .line 528
    ushr-int/lit8 v5, v5, 0x1d

    .line 529
    .line 530
    or-int/2addr v5, v12

    .line 531
    or-int v12, v8, v9

    .line 532
    .line 533
    and-int/2addr v12, v5

    .line 534
    and-int v16, v8, v9

    .line 535
    .line 536
    or-int v12, v12, v16

    .line 537
    .line 538
    move/from16 v16, v2

    .line 539
    .line 540
    move/from16 v2, v24

    .line 541
    .line 542
    invoke-static {v12, v2, v6, v10}, Lta/q;->x(IIII)I

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    shl-int/lit8 v12, v10, 0x5

    .line 547
    .line 548
    ushr-int/lit8 v10, v10, 0x1b

    .line 549
    .line 550
    or-int/2addr v10, v12

    .line 551
    or-int v12, v5, v8

    .line 552
    .line 553
    and-int/2addr v12, v10

    .line 554
    and-int v24, v5, v8

    .line 555
    .line 556
    or-int v12, v12, v24

    .line 557
    .line 558
    move/from16 v24, v4

    .line 559
    .line 560
    move/from16 v4, v23

    .line 561
    .line 562
    invoke-static {v12, v4, v6, v9}, Lta/q;->x(IIII)I

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    shl-int/lit8 v12, v9, 0x9

    .line 567
    .line 568
    ushr-int/lit8 v9, v9, 0x17

    .line 569
    .line 570
    or-int/2addr v9, v12

    .line 571
    or-int v12, v10, v5

    .line 572
    .line 573
    and-int/2addr v12, v9

    .line 574
    and-int v23, v10, v5

    .line 575
    .line 576
    or-int v12, v12, v23

    .line 577
    .line 578
    invoke-static {v12, v3, v6, v8}, Lta/q;->x(IIII)I

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    shl-int/lit8 v12, v8, 0xd

    .line 583
    .line 584
    ushr-int/lit8 v8, v8, 0x13

    .line 585
    .line 586
    or-int/2addr v8, v12

    .line 587
    or-int v12, v9, v10

    .line 588
    .line 589
    and-int/2addr v12, v8

    .line 590
    and-int v23, v9, v10

    .line 591
    .line 592
    or-int v12, v12, v23

    .line 593
    .line 594
    move/from16 v23, v1

    .line 595
    .line 596
    move/from16 v1, v21

    .line 597
    .line 598
    invoke-static {v12, v1, v6, v5}, Lta/q;->x(IIII)I

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    shl-int/lit8 v12, v5, 0x3

    .line 603
    .line 604
    ushr-int/lit8 v5, v5, 0x1d

    .line 605
    .line 606
    or-int/2addr v5, v12

    .line 607
    or-int v12, v8, v9

    .line 608
    .line 609
    and-int/2addr v12, v5

    .line 610
    and-int v21, v8, v9

    .line 611
    .line 612
    or-int v12, v12, v21

    .line 613
    .line 614
    move/from16 v21, v1

    .line 615
    .line 616
    move/from16 v1, p2

    .line 617
    .line 618
    invoke-static {v12, v1, v6, v10}, Lta/q;->x(IIII)I

    .line 619
    .line 620
    .line 621
    move-result v10

    .line 622
    shl-int/lit8 v12, v10, 0x5

    .line 623
    .line 624
    ushr-int/lit8 v10, v10, 0x1b

    .line 625
    .line 626
    or-int/2addr v10, v12

    .line 627
    or-int v12, v5, v8

    .line 628
    .line 629
    and-int/2addr v12, v10

    .line 630
    and-int v25, v5, v8

    .line 631
    .line 632
    or-int v12, v12, v25

    .line 633
    .line 634
    move/from16 v1, v22

    .line 635
    .line 636
    invoke-static {v12, v1, v6, v9}, Lta/q;->x(IIII)I

    .line 637
    .line 638
    .line 639
    move-result v9

    .line 640
    shl-int/lit8 v12, v9, 0x9

    .line 641
    .line 642
    ushr-int/lit8 v9, v9, 0x17

    .line 643
    .line 644
    or-int/2addr v9, v12

    .line 645
    or-int v12, v10, v5

    .line 646
    .line 647
    and-int/2addr v12, v9

    .line 648
    and-int v22, v10, v5

    .line 649
    .line 650
    or-int v12, v12, v22

    .line 651
    .line 652
    move/from16 v22, v1

    .line 653
    .line 654
    move/from16 v1, p1

    .line 655
    .line 656
    invoke-static {v12, v1, v6, v8}, Lta/q;->x(IIII)I

    .line 657
    .line 658
    .line 659
    move-result v6

    .line 660
    shl-int/lit8 v8, v6, 0xd

    .line 661
    .line 662
    ushr-int/lit8 v6, v6, 0x13

    .line 663
    .line 664
    or-int/2addr v6, v8

    .line 665
    xor-int v8, v6, v9

    .line 666
    .line 667
    xor-int/2addr v8, v10

    .line 668
    const v12, 0x6ed9eba1

    .line 669
    .line 670
    .line 671
    invoke-static {v8, v7, v12, v5}, Lta/q;->x(IIII)I

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    shl-int/lit8 v7, v5, 0x3

    .line 676
    .line 677
    ushr-int/lit8 v5, v5, 0x1d

    .line 678
    .line 679
    or-int/2addr v5, v7

    .line 680
    xor-int v7, v5, v6

    .line 681
    .line 682
    xor-int/2addr v7, v9

    .line 683
    invoke-static {v7, v0, v12, v10}, Lta/q;->x(IIII)I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    shl-int/lit8 v7, v0, 0x9

    .line 688
    .line 689
    ushr-int/lit8 v0, v0, 0x17

    .line 690
    .line 691
    or-int/2addr v0, v7

    .line 692
    xor-int v7, v0, v5

    .line 693
    .line 694
    xor-int/2addr v7, v6

    .line 695
    invoke-static {v7, v15, v12, v9}, Lta/q;->x(IIII)I

    .line 696
    .line 697
    .line 698
    move-result v7

    .line 699
    shl-int/lit8 v8, v7, 0xb

    .line 700
    .line 701
    ushr-int/lit8 v7, v7, 0x15

    .line 702
    .line 703
    or-int/2addr v7, v8

    .line 704
    xor-int v8, v7, v0

    .line 705
    .line 706
    xor-int/2addr v8, v5

    .line 707
    invoke-static {v8, v14, v12, v6}, Lta/q;->x(IIII)I

    .line 708
    .line 709
    .line 710
    move-result v6

    .line 711
    shl-int/lit8 v8, v6, 0xf

    .line 712
    .line 713
    ushr-int/lit8 v6, v6, 0x11

    .line 714
    .line 715
    or-int/2addr v6, v8

    .line 716
    xor-int v8, v6, v7

    .line 717
    .line 718
    xor-int/2addr v8, v0

    .line 719
    invoke-static {v8, v13, v12, v5}, Lta/q;->x(IIII)I

    .line 720
    .line 721
    .line 722
    move-result v5

    .line 723
    shl-int/lit8 v8, v5, 0x3

    .line 724
    .line 725
    ushr-int/lit8 v5, v5, 0x1d

    .line 726
    .line 727
    or-int/2addr v5, v8

    .line 728
    xor-int v8, v5, v6

    .line 729
    .line 730
    xor-int/2addr v8, v7

    .line 731
    invoke-static {v8, v4, v12, v0}, Lta/q;->x(IIII)I

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    shl-int/lit8 v4, v0, 0x9

    .line 736
    .line 737
    ushr-int/lit8 v0, v0, 0x17

    .line 738
    .line 739
    or-int/2addr v0, v4

    .line 740
    xor-int v4, v0, v5

    .line 741
    .line 742
    xor-int/2addr v4, v6

    .line 743
    invoke-static {v4, v2, v12, v7}, Lta/q;->x(IIII)I

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    shl-int/lit8 v4, v2, 0xb

    .line 748
    .line 749
    ushr-int/lit8 v2, v2, 0x15

    .line 750
    .line 751
    or-int/2addr v2, v4

    .line 752
    xor-int v4, v2, v0

    .line 753
    .line 754
    xor-int/2addr v4, v5

    .line 755
    invoke-static {v4, v3, v12, v6}, Lta/q;->x(IIII)I

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    shl-int/lit8 v4, v3, 0xf

    .line 760
    .line 761
    ushr-int/lit8 v3, v3, 0x11

    .line 762
    .line 763
    or-int/2addr v3, v4

    .line 764
    xor-int v4, v3, v2

    .line 765
    .line 766
    xor-int/2addr v4, v0

    .line 767
    invoke-static {v4, v11, v12, v5}, Lta/q;->x(IIII)I

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    shl-int/lit8 v5, v4, 0x3

    .line 772
    .line 773
    ushr-int/lit8 v4, v4, 0x1d

    .line 774
    .line 775
    or-int/2addr v4, v5

    .line 776
    xor-int v5, v4, v3

    .line 777
    .line 778
    xor-int/2addr v5, v2

    .line 779
    move/from16 v6, v23

    .line 780
    .line 781
    invoke-static {v5, v6, v12, v0}, Lta/q;->x(IIII)I

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    shl-int/lit8 v5, v0, 0x9

    .line 786
    .line 787
    ushr-int/lit8 v0, v0, 0x17

    .line 788
    .line 789
    or-int/2addr v0, v5

    .line 790
    xor-int v5, v0, v4

    .line 791
    .line 792
    xor-int/2addr v5, v3

    .line 793
    move/from16 v6, v24

    .line 794
    .line 795
    invoke-static {v5, v6, v12, v2}, Lta/q;->x(IIII)I

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    shl-int/lit8 v5, v2, 0xb

    .line 800
    .line 801
    ushr-int/lit8 v2, v2, 0x15

    .line 802
    .line 803
    or-int/2addr v2, v5

    .line 804
    xor-int v5, v2, v0

    .line 805
    .line 806
    xor-int/2addr v5, v4

    .line 807
    move/from16 v6, v16

    .line 808
    .line 809
    invoke-static {v5, v6, v12, v3}, Lta/q;->x(IIII)I

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    shl-int/lit8 v5, v3, 0xf

    .line 814
    .line 815
    ushr-int/lit8 v3, v3, 0x11

    .line 816
    .line 817
    or-int/2addr v3, v5

    .line 818
    xor-int v5, v3, v2

    .line 819
    .line 820
    xor-int/2addr v5, v0

    .line 821
    move/from16 v6, v21

    .line 822
    .line 823
    invoke-static {v5, v6, v12, v4}, Lta/q;->x(IIII)I

    .line 824
    .line 825
    .line 826
    move-result v4

    .line 827
    shl-int/lit8 v5, v4, 0x3

    .line 828
    .line 829
    ushr-int/lit8 v4, v4, 0x1d

    .line 830
    .line 831
    or-int/2addr v4, v5

    .line 832
    xor-int v5, v4, v3

    .line 833
    .line 834
    xor-int/2addr v5, v2

    .line 835
    move/from16 v6, v22

    .line 836
    .line 837
    invoke-static {v5, v6, v12, v0}, Lta/q;->x(IIII)I

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    shl-int/lit8 v5, v0, 0x9

    .line 842
    .line 843
    ushr-int/lit8 v0, v0, 0x17

    .line 844
    .line 845
    or-int/2addr v0, v5

    .line 846
    xor-int v5, v0, v4

    .line 847
    .line 848
    xor-int/2addr v5, v3

    .line 849
    move/from16 v6, p2

    .line 850
    .line 851
    invoke-static {v5, v6, v12, v2}, Lta/q;->x(IIII)I

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    shl-int/lit8 v5, v2, 0xb

    .line 856
    .line 857
    ushr-int/lit8 v2, v2, 0x15

    .line 858
    .line 859
    or-int/2addr v2, v5

    .line 860
    xor-int v5, v2, v0

    .line 861
    .line 862
    xor-int/2addr v5, v4

    .line 863
    invoke-static {v5, v1, v12, v3}, Lta/q;->x(IIII)I

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    shl-int/lit8 v3, v1, 0xf

    .line 868
    .line 869
    ushr-int/lit8 v1, v1, 0x11

    .line 870
    .line 871
    or-int/2addr v1, v3

    .line 872
    add-int v4, v4, v20

    .line 873
    .line 874
    move-object/from16 v3, p0

    .line 875
    .line 876
    iput v4, v3, Lcom/hierynomus/security/jce/messagedigest/MD4;->a:I

    .line 877
    .line 878
    add-int v1, v1, v19

    .line 879
    .line 880
    iput v1, v3, Lcom/hierynomus/security/jce/messagedigest/MD4;->b:I

    .line 881
    .line 882
    add-int v2, v2, v18

    .line 883
    .line 884
    iput v2, v3, Lcom/hierynomus/security/jce/messagedigest/MD4;->c:I

    .line 885
    .line 886
    add-int v0, v0, v17

    .line 887
    .line 888
    iput v0, v3, Lcom/hierynomus/security/jce/messagedigest/MD4;->d:I

    .line 889
    .line 890
    return-void
.end method


# virtual methods
.method public engineDigest([BII)I
    .locals 2

    if-ltz p2, :cond_0

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x10

    .line 6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7
    invoke-virtual {p0}, Lcom/hierynomus/security/jce/messagedigest/MD4;->engineDigest()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3

    .line 8
    :cond_0
    new-instance p1, Ljava/security/DigestException;

    const-string p2, "Wrong offset or not enough space to store the digest"

    invoke-direct {p1, p2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDigest()[B
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/hierynomus/security/jce/messagedigest/MD4;->pad()[B

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/hierynomus/security/jce/messagedigest/MD4;->engineUpdate([BII)V

    .line 3
    iget v1, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->a:I

    int-to-byte v2, v1

    const/16 v4, 0x8

    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    const/16 v6, 0x10

    ushr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    iget v8, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->b:I

    int-to-byte v9, v8

    ushr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    ushr-int/lit8 v11, v8, 0x10

    int-to-byte v11, v11

    ushr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    iget v12, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->c:I

    int-to-byte v13, v12

    ushr-int/lit8 v14, v12, 0x8

    int-to-byte v14, v14

    ushr-int/lit8 v15, v12, 0x10

    int-to-byte v15, v15

    ushr-int/lit8 v12, v12, 0x18

    int-to-byte v12, v12

    iget v3, v0, Lcom/hierynomus/security/jce/messagedigest/MD4;->d:I

    int-to-byte v6, v3

    ushr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    move/from16 v17, v0

    const/16 v4, 0x10

    ushr-int/lit8 v0, v3, 0x10

    int-to-byte v0, v0

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    new-array v4, v4, [B

    const/16 v16, 0x0

    aput-byte v2, v4, v16

    const/4 v2, 0x1

    aput-byte v5, v4, v2

    const/4 v2, 0x2

    aput-byte v7, v4, v2

    const/4 v2, 0x3

    aput-byte v1, v4, v2

    const/4 v1, 0x4

    aput-byte v9, v4, v1

    const/4 v1, 0x5

    aput-byte v10, v4, v1

    const/4 v1, 0x6

    aput-byte v11, v4, v1

    const/4 v1, 0x7

    aput-byte v8, v4, v1

    const/16 v1, 0x8

    aput-byte v13, v4, v1

    const/16 v1, 0x9

    aput-byte v14, v4, v1

    const/16 v1, 0xa

    aput-byte v15, v4, v1

    const/16 v1, 0xb

    aput-byte v12, v4, v1

    const/16 v1, 0xc

    aput-byte v6, v4, v1

    const/16 v1, 0xd

    aput-byte v17, v4, v1

    const/16 v1, 0xe

    aput-byte v0, v4, v1

    const/16 v0, 0xf

    aput-byte v3, v4, v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/hierynomus/security/jce/messagedigest/MD4;->engineReset()V

    return-object v4
.end method

.method public engineGetDigestLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public engineReset()V
    .locals 2

    .line 1
    const v0, 0x67452301

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->a:I

    .line 5
    .line 6
    const v0, -0x10325477

    .line 7
    .line 8
    .line 9
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->b:I

    .line 10
    .line 11
    const v0, -0x67452302

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->c:I

    .line 15
    .line 16
    const v0, 0x10325476

    .line 17
    .line 18
    .line 19
    iput v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->d:I

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->msgLength:J

    .line 24
    .line 25
    return-void
.end method

.method public engineUpdate(B)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->msgLength:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v3, v2

    .line 2
    iget-object v2, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->buffer:[B

    aput-byte p1, v2, v3

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 3
    iput-wide v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->msgLength:J

    const/16 p1, 0x3f

    if-ne v3, p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v2, p1}, Lcom/hierynomus/security/jce/messagedigest/MD4;->process([BI)V

    :cond_0
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 6

    .line 5
    iget-wide v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->msgLength:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v3, v2

    rsub-int/lit8 v2, v3, 0x40

    int-to-long v4, p3

    add-long/2addr v0, v4

    .line 6
    iput-wide v0, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->msgLength:J

    const/4 v0, 0x0

    if-lt p3, v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->buffer:[B

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v1, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->buffer:[B

    invoke-direct {p0, v1, v0}, Lcom/hierynomus/security/jce/messagedigest/MD4;->process([BI)V

    :goto_0
    add-int/lit8 v1, v2, 0x40

    add-int/lit8 v3, v2, 0x3f

    if-ge v3, p3, :cond_0

    add-int/2addr v2, p2

    .line 9
    invoke-direct {p0, p1, v2}, Lcom/hierynomus/security/jce/messagedigest/MD4;->process([BI)V

    move v2, v1

    goto :goto_0

    :cond_0
    move v0, v2

    const/4 v3, 0x0

    :cond_1
    if-ge v0, p3, :cond_2

    add-int/2addr p2, v0

    .line 10
    iget-object v1, p0, Lcom/hierynomus/security/jce/messagedigest/MD4;->buffer:[B

    sub-int/2addr p3, v0

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method
