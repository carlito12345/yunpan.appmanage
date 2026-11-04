.class public final Lbe/d;
.super Lbe/a;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:I

.field public static final m:Ljava/security/SecureRandom;


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:[B

.field public final j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbe/d;->m:Ljava/security/SecureRandom;

    .line 7
    .line 8
    const-string v0, "jcifs.smb1.smb.client.useUnicode"

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    const-string v0, "jcifs.smb1.smb.client.domain"

    .line 15
    .line 16
    invoke-static {v0}, Lwd/a;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "jcifs.smb1.smb.client.username"

    .line 20
    .line 21
    invoke-static {v0}, Lwd/a;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "jcifs.smb1.smb.client.password"

    .line 25
    .line 26
    invoke-static {v0}, Lwd/a;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    sget-object v0, Lae/g;->m:Lae/g;

    .line 30
    .line 31
    invoke-virtual {v0}, Lae/g;->g()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    sput-object v0, Lbe/d;->k:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "jcifs.smb1.smb.lmCompatibility"

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sput v0, Lbe/d;->l:I

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Lbe/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const/16 v5, 0x20

    .line 12
    .line 13
    const/16 v6, 0x1c

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    sget-object v8, Lbe/b;->g:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct/range {p0 .. p0}, Lbe/a;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    iput-object v9, v1, Lbe/d;->i:[B

    .line 23
    .line 24
    iput-object v9, v1, Lbe/d;->j:[B

    .line 25
    .line 26
    iget v10, v0, Lbe/a;->a:I

    .line 27
    .line 28
    const/4 v11, 0x1

    .line 29
    and-int/2addr v10, v11

    .line 30
    const/4 v12, 0x2

    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    const/4 v10, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v10, 0x2

    .line 36
    :goto_0
    or-int/lit16 v10, v10, 0x200

    .line 37
    .line 38
    or-int v10, p5, v10

    .line 39
    .line 40
    iput v10, v1, Lbe/a;->a:I

    .line 41
    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    sget-object v8, Lbe/d;->k:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    iput-object v8, v1, Lbe/d;->h:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v3, v1, Lbe/d;->f:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v4, v1, Lbe/d;->g:Ljava/lang/String;

    .line 51
    .line 52
    sget-object v8, Lbe/d;->m:Ljava/security/SecureRandom;

    .line 53
    .line 54
    const-string v14, "UTF-16LE"

    .line 55
    .line 56
    const/16 v9, 0x8

    .line 57
    .line 58
    sget v15, Lbe/d;->l:I

    .line 59
    .line 60
    if-eqz v15, :cond_b

    .line 61
    .line 62
    if-eq v15, v11, :cond_b

    .line 63
    .line 64
    if-eq v15, v12, :cond_9

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    const/4 v11, 0x4

    .line 68
    if-eq v15, v10, :cond_4

    .line 69
    .line 70
    if-eq v15, v11, :cond_4

    .line 71
    .line 72
    const/4 v10, 0x5

    .line 73
    if-eq v15, v10, :cond_4

    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v3, v0, Lbe/c;->d:[B

    .line 80
    .line 81
    invoke-static {v2, v3}, Lce/p;->f(Ljava/lang/String;[B)[B

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :goto_1
    iput-object v3, v1, Lbe/d;->d:[B

    .line 86
    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    iget-object v0, v0, Lbe/c;->d:[B

    .line 92
    .line 93
    invoke-static {v2, v0}, Lce/p;->d(Ljava/lang/String;[B)[B

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    :goto_2
    iput-object v9, v1, Lbe/d;->e:[B

    .line 98
    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :cond_4
    sget v10, Lce/p;->e:I

    .line 102
    .line 103
    :try_start_0
    new-instance v10, Lde/e;

    .line 104
    .line 105
    invoke-direct {v10}, Lde/e;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-virtual {v10, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    .line 114
    .line 115
    new-instance v12, Lde/b;

    .line 116
    .line 117
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-direct {v12, v10, v7}, Lde/b;-><init>([BI)V

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v12, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-virtual {v12, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    .line 143
    .line 144
    .line 145
    move-result-object v10
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    new-array v12, v9, [B

    .line 147
    .line 148
    invoke-virtual {v8, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 149
    .line 150
    .line 151
    iget-object v14, v0, Lbe/c;->d:[B

    .line 152
    .line 153
    invoke-static {v3, v4, v2, v14, v12}, Lce/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iput-object v2, v1, Lbe/d;->d:[B

    .line 158
    .line 159
    new-array v2, v9, [B

    .line 160
    .line 161
    invoke-virtual {v8, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 162
    .line 163
    .line 164
    if-eqz v10, :cond_7

    .line 165
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    const-wide v14, 0xa9730b66800L

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    add-long/2addr v3, v14

    .line 176
    const-wide/16 v14, 0x2710

    .line 177
    .line 178
    mul-long v3, v3, v14

    .line 179
    .line 180
    iget-object v12, v0, Lbe/c;->d:[B

    .line 181
    .line 182
    iget-object v0, v0, Lbe/c;->g:[B

    .line 183
    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    array-length v14, v0

    .line 187
    goto :goto_3

    .line 188
    :cond_5
    const/4 v14, 0x0

    .line 189
    :goto_3
    add-int/lit8 v15, v14, 0x1c

    .line 190
    .line 191
    add-int/lit8 v6, v14, 0x20

    .line 192
    .line 193
    new-array v13, v6, [B

    .line 194
    .line 195
    const/16 v5, 0x101

    .line 196
    .line 197
    invoke-static {v5, v7, v13}, La9/o;->H(II[B)V

    .line 198
    .line 199
    .line 200
    invoke-static {v7, v11, v13}, La9/o;->H(II[B)V

    .line 201
    .line 202
    .line 203
    const-wide v16, 0xffffffffL

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    move-object v11, v8

    .line 209
    and-long v7, v3, v16

    .line 210
    .line 211
    long-to-int v8, v7

    .line 212
    invoke-static {v8, v9, v13}, La9/o;->H(II[B)V

    .line 213
    .line 214
    .line 215
    const/16 v7, 0x20

    .line 216
    .line 217
    shr-long/2addr v3, v7

    .line 218
    and-long v3, v3, v16

    .line 219
    .line 220
    long-to-int v4, v3

    .line 221
    const/16 v3, 0xc

    .line 222
    .line 223
    invoke-static {v4, v3, v13}, La9/o;->H(II[B)V

    .line 224
    .line 225
    .line 226
    const/16 v3, 0x10

    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    invoke-static {v2, v4, v13, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    .line 231
    .line 232
    const/16 v2, 0x18

    .line 233
    .line 234
    invoke-static {v4, v2, v13}, La9/o;->H(II[B)V

    .line 235
    .line 236
    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    const/16 v2, 0x1c

    .line 240
    .line 241
    invoke-static {v0, v4, v13, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    .line 243
    .line 244
    :cond_6
    invoke-static {v4, v15, v13}, La9/o;->H(II[B)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Lde/b;

    .line 248
    .line 249
    invoke-direct {v0, v10, v4}, Lde/b;-><init>([BI)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v13, v4, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    array-length v2, v0

    .line 263
    add-int/2addr v2, v6

    .line 264
    new-array v9, v2, [B

    .line 265
    .line 266
    array-length v2, v0

    .line 267
    invoke-static {v0, v4, v9, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    .line 269
    .line 270
    array-length v0, v0

    .line 271
    invoke-static {v13, v4, v9, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_7
    move-object v11, v8

    .line 276
    const/4 v4, 0x0

    .line 277
    const/4 v9, 0x0

    .line 278
    :goto_4
    iput-object v9, v1, Lbe/d;->e:[B

    .line 279
    .line 280
    iget v0, v1, Lbe/a;->a:I

    .line 281
    .line 282
    const/16 v2, 0x10

    .line 283
    .line 284
    and-int/2addr v0, v2

    .line 285
    if-ne v0, v2, :cond_10

    .line 286
    .line 287
    new-instance v0, Lde/b;

    .line 288
    .line 289
    invoke-direct {v0, v10, v4}, Lde/b;-><init>([BI)V

    .line 290
    .line 291
    .line 292
    iget-object v3, v1, Lbe/d;->e:[B

    .line 293
    .line 294
    invoke-virtual {v0, v3, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget v3, v1, Lbe/a;->a:I

    .line 302
    .line 303
    const/high16 v4, 0x40000000    # 2.0f

    .line 304
    .line 305
    and-int/2addr v3, v4

    .line 306
    if-eqz v3, :cond_8

    .line 307
    .line 308
    new-array v3, v2, [B

    .line 309
    .line 310
    iput-object v3, v1, Lbe/d;->i:[B

    .line 311
    .line 312
    move-object v4, v11

    .line 313
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 314
    .line 315
    .line 316
    new-array v2, v2, [B

    .line 317
    .line 318
    new-instance v4, La6/b;

    .line 319
    .line 320
    invoke-direct {v4, v0}, La6/b;-><init>([B)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v3, v2}, La6/b;->a([B[B)V

    .line 324
    .line 325
    .line 326
    iput-object v2, v1, Lbe/d;->j:[B

    .line 327
    .line 328
    goto/16 :goto_8

    .line 329
    .line 330
    :cond_8
    iput-object v0, v1, Lbe/d;->i:[B

    .line 331
    .line 332
    iput-object v0, v1, Lbe/d;->j:[B

    .line 333
    .line 334
    goto/16 :goto_8

    .line 335
    .line 336
    :catch_0
    move-exception v0

    .line 337
    new-instance v2, Ljava/lang/RuntimeException;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v2

    .line 347
    :cond_9
    if-nez v2, :cond_a

    .line 348
    .line 349
    const/4 v9, 0x0

    .line 350
    goto :goto_5

    .line 351
    :cond_a
    iget-object v0, v0, Lbe/c;->d:[B

    .line 352
    .line 353
    invoke-static {v2, v0}, Lce/p;->d(Ljava/lang/String;[B)[B

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    :goto_5
    iput-object v9, v1, Lbe/d;->d:[B

    .line 358
    .line 359
    iput-object v9, v1, Lbe/d;->e:[B

    .line 360
    .line 361
    goto/16 :goto_8

    .line 362
    .line 363
    :cond_b
    move-object v4, v8

    .line 364
    const/high16 v3, 0x80000

    .line 365
    .line 366
    and-int/2addr v3, v10

    .line 367
    if-nez v3, :cond_e

    .line 368
    .line 369
    if-nez v2, :cond_c

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    goto :goto_6

    .line 373
    :cond_c
    iget-object v3, v0, Lbe/c;->d:[B

    .line 374
    .line 375
    invoke-static {v2, v3}, Lce/p;->f(Ljava/lang/String;[B)[B

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    :goto_6
    iput-object v3, v1, Lbe/d;->d:[B

    .line 380
    .line 381
    if-nez v2, :cond_d

    .line 382
    .line 383
    const/4 v9, 0x0

    .line 384
    goto :goto_7

    .line 385
    :cond_d
    iget-object v0, v0, Lbe/c;->d:[B

    .line 386
    .line 387
    invoke-static {v2, v0}, Lce/p;->d(Ljava/lang/String;[B)[B

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    :goto_7
    iput-object v9, v1, Lbe/d;->e:[B

    .line 392
    .line 393
    goto/16 :goto_8

    .line 394
    .line 395
    :cond_e
    const/16 v3, 0x18

    .line 396
    .line 397
    new-array v6, v3, [B

    .line 398
    .line 399
    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 400
    .line 401
    .line 402
    const/4 v5, 0x0

    .line 403
    invoke-static {v6, v9, v3, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 404
    .line 405
    .line 406
    sget v3, Lce/p;->e:I

    .line 407
    .line 408
    if-eqz v2, :cond_12

    .line 409
    .line 410
    :try_start_1
    new-instance v3, Lde/e;

    .line 411
    .line 412
    invoke-direct {v3}, Lde/e;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 423
    .line 424
    .line 425
    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 426
    iget-object v3, v0, Lbe/c;->d:[B

    .line 427
    .line 428
    const-string v7, "MD5"

    .line 429
    .line 430
    new-array v8, v9, [B

    .line 431
    .line 432
    :try_start_2
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 433
    .line 434
    .line 435
    move-result-object v10

    .line 436
    invoke-virtual {v10, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 437
    .line 438
    .line 439
    const/4 v3, 0x0

    .line 440
    invoke-virtual {v10, v6, v3, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-static {v5, v3, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 448
    .line 449
    .line 450
    const/16 v5, 0x15

    .line 451
    .line 452
    new-array v7, v5, [B

    .line 453
    .line 454
    const/16 v10, 0x10

    .line 455
    .line 456
    invoke-static {v2, v3, v7, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    .line 458
    .line 459
    const/16 v3, 0x18

    .line 460
    .line 461
    new-array v3, v3, [B

    .line 462
    .line 463
    invoke-static {v7, v8, v3}, Lce/p;->a([B[B[B)V

    .line 464
    .line 465
    .line 466
    iput-object v6, v1, Lbe/d;->d:[B

    .line 467
    .line 468
    iput-object v3, v1, Lbe/d;->e:[B

    .line 469
    .line 470
    iget v3, v1, Lbe/a;->a:I

    .line 471
    .line 472
    and-int/2addr v3, v10

    .line 473
    if-ne v3, v10, :cond_10

    .line 474
    .line 475
    new-array v3, v10, [B

    .line 476
    .line 477
    iget-object v0, v0, Lbe/c;->d:[B

    .line 478
    .line 479
    const/4 v5, 0x0

    .line 480
    invoke-static {v0, v5, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    .line 482
    .line 483
    invoke-static {v6, v5, v3, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    .line 485
    .line 486
    new-instance v0, Lde/e;

    .line 487
    .line 488
    invoke-direct {v0}, Lde/e;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v2, Lde/b;

    .line 499
    .line 500
    invoke-direct {v2, v0, v5}, Lde/b;-><init>([BI)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    iget v2, v1, Lbe/a;->a:I

    .line 511
    .line 512
    const/high16 v3, 0x40000000    # 2.0f

    .line 513
    .line 514
    and-int/2addr v2, v3

    .line 515
    if-eqz v2, :cond_f

    .line 516
    .line 517
    const/16 v2, 0x10

    .line 518
    .line 519
    new-array v3, v2, [B

    .line 520
    .line 521
    iput-object v3, v1, Lbe/d;->i:[B

    .line 522
    .line 523
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 524
    .line 525
    .line 526
    new-array v2, v2, [B

    .line 527
    .line 528
    new-instance v4, La6/b;

    .line 529
    .line 530
    invoke-direct {v4, v0}, La6/b;-><init>([B)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v4, v3, v2}, La6/b;->a([B[B)V

    .line 534
    .line 535
    .line 536
    iput-object v2, v1, Lbe/d;->j:[B

    .line 537
    .line 538
    goto :goto_8

    .line 539
    :cond_f
    iput-object v0, v1, Lbe/d;->i:[B

    .line 540
    .line 541
    iput-object v0, v1, Lbe/d;->j:[B

    .line 542
    .line 543
    :cond_10
    :goto_8
    return-void

    .line 544
    :catch_1
    move-exception v0

    .line 545
    sget v2, Lde/d;->b:I

    .line 546
    .line 547
    if-lez v2, :cond_11

    .line 548
    .line 549
    sget-object v2, Lce/p;->g:Lde/d;

    .line 550
    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 552
    .line 553
    .line 554
    :cond_11
    new-instance v2, Ljava/lang/RuntimeException;

    .line 555
    .line 556
    invoke-direct {v2, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    .line 558
    .line 559
    throw v2

    .line 560
    :catch_2
    move-exception v0

    .line 561
    new-instance v2, Ljava/lang/RuntimeException;

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw v2

    .line 571
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    .line 572
    .line 573
    const-string v2, "Password parameter is required"

    .line 574
    .line 575
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    throw v0
.end method


# virtual methods
.method public final f()[B
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget v0, v1, Lbe/a;->a:I

    .line 4
    .line 5
    and-int/lit8 v2, v0, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    move-object v5, v4

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v5, Lbe/a;->c:Ljava/lang/String;

    .line 19
    .line 20
    :goto_1
    iget-object v6, v1, Lbe/d;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    const-string v7, "UTF-16LE"

    .line 23
    .line 24
    if-eqz v6, :cond_3

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-eqz v8, :cond_3

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto/16 :goto_c

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-object v6, v4

    .line 48
    :goto_2
    if-eqz v6, :cond_4

    .line 49
    .line 50
    array-length v8, v6

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/4 v8, 0x0

    .line 53
    :goto_3
    iget-object v9, v1, Lbe/d;->g:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v9, :cond_6

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_6

    .line 62
    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    invoke-virtual {v9, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    goto :goto_4

    .line 79
    :cond_6
    move-object v9, v4

    .line 80
    :goto_4
    if-eqz v9, :cond_7

    .line 81
    .line 82
    array-length v10, v9

    .line 83
    goto :goto_5

    .line 84
    :cond_7
    const/4 v10, 0x0

    .line 85
    :goto_5
    iget-object v11, v1, Lbe/d;->h:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v11, :cond_9

    .line 88
    .line 89
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-eqz v12, :cond_9

    .line 94
    .line 95
    if-eqz v2, :cond_8

    .line 96
    .line 97
    invoke-virtual {v11, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_6
    move-object v4, v2

    .line 102
    goto :goto_7

    .line 103
    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    goto :goto_6

    .line 112
    :cond_9
    :goto_7
    if-eqz v4, :cond_a

    .line 113
    .line 114
    array-length v2, v4

    .line 115
    goto :goto_8

    .line 116
    :cond_a
    const/4 v2, 0x0

    .line 117
    :goto_8
    iget-object v5, v1, Lbe/d;->d:[B

    .line 118
    .line 119
    if-eqz v5, :cond_b

    .line 120
    .line 121
    array-length v7, v5

    .line 122
    goto :goto_9

    .line 123
    :cond_b
    const/4 v7, 0x0

    .line 124
    :goto_9
    iget-object v11, v1, Lbe/d;->e:[B

    .line 125
    .line 126
    if-eqz v11, :cond_c

    .line 127
    .line 128
    array-length v12, v11

    .line 129
    goto :goto_a

    .line 130
    :cond_c
    const/4 v12, 0x0

    .line 131
    :goto_a
    iget-object v13, v1, Lbe/d;->j:[B

    .line 132
    .line 133
    if-eqz v13, :cond_d

    .line 134
    .line 135
    array-length v14, v13

    .line 136
    goto :goto_b

    .line 137
    :cond_d
    const/4 v14, 0x0

    .line 138
    :goto_b
    add-int/lit8 v15, v8, 0x40

    .line 139
    .line 140
    add-int/2addr v15, v10

    .line 141
    add-int/2addr v15, v2

    .line 142
    add-int/2addr v15, v7

    .line 143
    add-int/2addr v15, v12

    .line 144
    add-int/2addr v15, v14

    .line 145
    new-array v14, v15, [B

    .line 146
    .line 147
    sget-object v15, Lbe/a;->b:[B

    .line 148
    .line 149
    const/16 v1, 0x8

    .line 150
    .line 151
    invoke-static {v15, v3, v14, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .line 153
    .line 154
    const/4 v3, 0x3

    .line 155
    invoke-static {v1, v3, v14}, Lbe/a;->d(II[B)V

    .line 156
    .line 157
    .line 158
    const/16 v1, 0xc

    .line 159
    .line 160
    const/16 v3, 0x40

    .line 161
    .line 162
    invoke-static {v1, v3, v14, v5}, Lbe/a;->c(II[B[B)V

    .line 163
    .line 164
    .line 165
    add-int/2addr v7, v3

    .line 166
    const/16 v1, 0x14

    .line 167
    .line 168
    invoke-static {v1, v7, v14, v11}, Lbe/a;->c(II[B[B)V

    .line 169
    .line 170
    .line 171
    add-int/2addr v7, v12

    .line 172
    const/16 v1, 0x1c

    .line 173
    .line 174
    invoke-static {v1, v7, v14, v6}, Lbe/a;->c(II[B[B)V

    .line 175
    .line 176
    .line 177
    add-int/2addr v7, v8

    .line 178
    const/16 v1, 0x24

    .line 179
    .line 180
    invoke-static {v1, v7, v14, v9}, Lbe/a;->c(II[B[B)V

    .line 181
    .line 182
    .line 183
    add-int/2addr v7, v10

    .line 184
    const/16 v1, 0x2c

    .line 185
    .line 186
    invoke-static {v1, v7, v14, v4}, Lbe/a;->c(II[B[B)V

    .line 187
    .line 188
    .line 189
    add-int/2addr v7, v2

    .line 190
    const/16 v1, 0x34

    .line 191
    .line 192
    invoke-static {v1, v7, v14, v13}, Lbe/a;->c(II[B[B)V

    .line 193
    .line 194
    .line 195
    const/16 v1, 0x3c

    .line 196
    .line 197
    invoke-static {v1, v0, v14}, Lbe/a;->d(II[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .line 199
    .line 200
    return-object v14

    .line 201
    :goto_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_e

    .line 211
    :goto_d
    throw v1

    .line 212
    :goto_e
    goto :goto_d
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lbe/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lbe/d;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lbe/d;->h:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lbe/d;->d:[B

    .line 8
    .line 9
    iget-object v4, p0, Lbe/d;->e:[B

    .line 10
    .line 11
    iget-object v5, p0, Lbe/d;->j:[B

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "Type3Message[domain="

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",user="

    .line 24
    .line 25
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ",workstation="

    .line 32
    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ",lmResponse="

    .line 40
    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " bytes>"

    .line 45
    .line 46
    const-string v1, "<"

    .line 47
    .line 48
    const-string v2, "null"

    .line 49
    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    array-length v3, v3

    .line 60
    invoke-static {v7, v3, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, ",ntResponse="

    .line 68
    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    move-object v3, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    array-length v4, v4

    .line 82
    invoke-static {v3, v4, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, ",sessionKey="

    .line 90
    .line 91
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    array-length v1, v5

    .line 103
    invoke-static {v2, v1, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ",flags=0x"

    .line 111
    .line 112
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v0, p0, Lbe/a;->a:I

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    invoke-static {v0, v1}, Lde/c;->c(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, "]"

    .line 127
    .line 128
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method
