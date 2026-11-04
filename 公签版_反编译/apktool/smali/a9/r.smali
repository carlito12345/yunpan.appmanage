.class public abstract La9/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[B


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final c:Lm7/e;

.field public d:Z

.field public e:[B

.field public f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "openssh-key-v1\u0000"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, La9/r;->g:[B

    .line 12
    .line 13
    const-string v1, "\n"

    .line 14
    .line 15
    invoke-static {v1}, La9/h0;->j(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    const-string v1, "Proc-Type: 4,ENCRYPTED"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    const-string v1, "DEK-Info: DES-EDE3-CBC,"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 26
    .line 27
    .line 28
    const-string v0, " "

    .line 29
    .line 30
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Lm7/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, La9/r;->a:I

    .line 6
    .line 7
    const-string v1, "no comment"

    .line 8
    .line 9
    iput-object v1, p0, La9/r;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean v0, p0, La9/r;->d:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, La9/r;->e:[B

    .line 15
    .line 16
    iput-object v0, p0, La9/r;->f:[B

    .line 17
    .line 18
    iput-object p1, p0, La9/r;->c:Lm7/e;

    .line 19
    .line 20
    return-void
.end method

.method public static b(I)I
    .locals 2

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :goto_0
    if-lez p0, :cond_1

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x8

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    return v1
.end method

.method public static i(II[B)Z
    .locals 1

    .line 1
    add-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    if-ge v0, p1, :cond_0

    .line 4
    .line 5
    invoke-static {p2, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, La9/h0;->c([B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "OPENSSH PRIVATE KEY-----"

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public static j(Lm7/e;[B[B)La9/r;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    new-array v4, v3, [B

    .line 10
    .line 11
    const/4 v5, 0x7

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    if-nez v2, :cond_7

    .line 17
    .line 18
    if-eqz v1, :cond_7

    .line 19
    .line 20
    array-length v10, v1

    .line 21
    const/16 v11, 0xb

    .line 22
    .line 23
    if-le v10, v11, :cond_7

    .line 24
    .line 25
    aget-byte v10, v1, v9

    .line 26
    .line 27
    if-nez v10, :cond_7

    .line 28
    .line 29
    aget-byte v10, v1, v8

    .line 30
    .line 31
    if-nez v10, :cond_7

    .line 32
    .line 33
    aget-byte v10, v1, v6

    .line 34
    .line 35
    if-nez v10, :cond_7

    .line 36
    .line 37
    aget-byte v10, v1, v7

    .line 38
    .line 39
    if-eq v10, v5, :cond_0

    .line 40
    .line 41
    const/16 v12, 0x9

    .line 42
    .line 43
    if-eq v10, v12, :cond_0

    .line 44
    .line 45
    if-eq v10, v11, :cond_0

    .line 46
    .line 47
    const/16 v11, 0x13

    .line 48
    .line 49
    if-ne v10, v11, :cond_7

    .line 50
    .line 51
    :cond_0
    new-instance v2, La9/a;

    .line 52
    .line 53
    invoke-direct {v2, v1}, La9/a;-><init>([B)V

    .line 54
    .line 55
    .line 56
    array-length v1, v1

    .line 57
    invoke-virtual {v2, v1}, La9/a;->r(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, La9/a;->l()[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, La9/h0;->c([B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2}, La9/a;->q()V

    .line 69
    .line 70
    .line 71
    const-string v3, "ssh-rsa"

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    invoke-static {v0, v2}, La9/x;->s(Lm7/e;La9/a;)La9/x;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const-string v3, "ssh-dss"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    invoke-static {v0, v2}, La9/s;->s(Lm7/e;La9/a;)La9/s;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string v3, "ecdsa-sha2-nistp256"

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_6

    .line 104
    .line 105
    const-string v3, "ecdsa-sha2-nistp384"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    const-string v3, "ecdsa-sha2-nistp521"

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    const-string v3, "ssh-ed25519"

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    invoke-static {v0, v2}, La9/u;->s(Lm7/e;La9/a;)La9/u;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const-string v3, "ssh-ed448"

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_5

    .line 142
    .line 143
    invoke-static {v0, v2}, La9/u;->t(Lm7/e;La9/a;)La9/u;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    new-instance v0, La9/n;

    .line 149
    .line 150
    const-string v2, "privatekey: invalid key "

    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_6
    :goto_0
    invoke-static {v0, v2}, La9/t;->t(Lm7/e;La9/a;)La9/t;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_1
    return-object v0

    .line 165
    :cond_7
    if-eqz v1, :cond_8

    .line 166
    .line 167
    :try_start_0
    invoke-static/range {p0 .. p1}, La9/r;->l(Lm7/e;[B)La9/r;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    if-eqz v11, :cond_8

    .line 172
    .line 173
    return-object v11

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :goto_2
    const/4 v10, 0x0

    .line 176
    goto/16 :goto_3b

    .line 177
    .line 178
    :catch_1
    move-exception v0

    .line 179
    goto :goto_2

    .line 180
    :cond_8
    if-eqz v1, :cond_9

    .line 181
    .line 182
    array-length v11, v1

    .line 183
    goto :goto_3

    .line 184
    :cond_9
    const/4 v11, 0x0

    .line 185
    :goto_3
    const/4 v12, 0x0

    .line 186
    :goto_4
    const/16 v13, 0x2d

    .line 187
    .line 188
    if-ge v12, v11, :cond_b

    .line 189
    .line 190
    aget-byte v14, v1, v12

    .line 191
    .line 192
    if-ne v14, v13, :cond_a

    .line 193
    .line 194
    add-int/lit8 v14, v12, 0x4

    .line 195
    .line 196
    if-ge v14, v11, :cond_a

    .line 197
    .line 198
    add-int/lit8 v15, v12, 0x1

    .line 199
    .line 200
    aget-byte v15, v1, v15

    .line 201
    .line 202
    if-ne v15, v13, :cond_a

    .line 203
    .line 204
    add-int/lit8 v15, v12, 0x2

    .line 205
    .line 206
    aget-byte v15, v1, v15

    .line 207
    .line 208
    if-ne v15, v13, :cond_a

    .line 209
    .line 210
    add-int/lit8 v15, v12, 0x3

    .line 211
    .line 212
    aget-byte v15, v1, v15

    .line 213
    .line 214
    if-ne v15, v13, :cond_a

    .line 215
    .line 216
    aget-byte v14, v1, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .line 218
    if-ne v14, v13, :cond_a

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_b
    :goto_5
    const/4 v14, 0x0

    .line 225
    const/4 v15, 0x0

    .line 226
    const/16 v16, 0x1

    .line 227
    .line 228
    :goto_6
    const-string v9, "invalid privatekey"

    .line 229
    .line 230
    if-ge v12, v11, :cond_26

    .line 231
    .line 232
    :try_start_1
    aget-byte v5, v1, v12

    .line 233
    .line 234
    const/16 v10, 0x42

    .line 235
    .line 236
    const/16 v3, 0x41

    .line 237
    .line 238
    const/16 v8, 0x53

    .line 239
    .line 240
    const/16 v13, 0x45

    .line 241
    .line 242
    if-ne v5, v10, :cond_15

    .line 243
    .line 244
    add-int/lit8 v10, v12, 0x3

    .line 245
    .line 246
    if-ge v10, v11, :cond_15

    .line 247
    .line 248
    add-int/lit8 v18, v12, 0x1

    .line 249
    .line 250
    aget-byte v7, v1, v18

    .line 251
    .line 252
    if-ne v7, v13, :cond_15

    .line 253
    .line 254
    add-int/lit8 v7, v12, 0x2

    .line 255
    .line 256
    aget-byte v7, v1, v7

    .line 257
    .line 258
    const/16 v6, 0x47

    .line 259
    .line 260
    if-ne v7, v6, :cond_15

    .line 261
    .line 262
    aget-byte v6, v1, v10

    .line 263
    .line 264
    const/16 v7, 0x49

    .line 265
    .line 266
    if-ne v6, v7, :cond_15

    .line 267
    .line 268
    add-int/lit8 v5, v12, 0x6

    .line 269
    .line 270
    add-int/lit8 v6, v12, 0x8

    .line 271
    .line 272
    if-ge v6, v11, :cond_14

    .line 273
    .line 274
    aget-byte v10, v1, v5

    .line 275
    .line 276
    const/16 v14, 0x44

    .line 277
    .line 278
    if-ne v10, v14, :cond_c

    .line 279
    .line 280
    add-int/lit8 v17, v12, 0x7

    .line 281
    .line 282
    aget-byte v14, v1, v17

    .line 283
    .line 284
    if-ne v14, v8, :cond_c

    .line 285
    .line 286
    aget-byte v14, v1, v6

    .line 287
    .line 288
    if-ne v14, v3, :cond_c

    .line 289
    .line 290
    const/4 v3, 0x3

    .line 291
    const/4 v14, 0x1

    .line 292
    goto/16 :goto_7

    .line 293
    .line 294
    :cond_c
    const/16 v14, 0x52

    .line 295
    .line 296
    if-ne v10, v14, :cond_d

    .line 297
    .line 298
    add-int/lit8 v17, v12, 0x7

    .line 299
    .line 300
    aget-byte v7, v1, v17

    .line 301
    .line 302
    if-ne v7, v8, :cond_d

    .line 303
    .line 304
    aget-byte v7, v1, v6

    .line 305
    .line 306
    if-ne v7, v3, :cond_d

    .line 307
    .line 308
    const/4 v3, 0x3

    .line 309
    const/4 v14, 0x2

    .line 310
    goto/16 :goto_7

    .line 311
    .line 312
    :cond_d
    if-ne v10, v13, :cond_e

    .line 313
    .line 314
    add-int/lit8 v7, v12, 0x7

    .line 315
    .line 316
    aget-byte v7, v1, v7

    .line 317
    .line 318
    const/16 v13, 0x43

    .line 319
    .line 320
    if-ne v7, v13, :cond_e

    .line 321
    .line 322
    const/4 v3, 0x3

    .line 323
    const/4 v14, 0x3

    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :cond_e
    if-ne v10, v8, :cond_f

    .line 327
    .line 328
    add-int/lit8 v7, v12, 0x7

    .line 329
    .line 330
    aget-byte v7, v1, v7

    .line 331
    .line 332
    if-ne v7, v8, :cond_f

    .line 333
    .line 334
    aget-byte v7, v1, v6

    .line 335
    .line 336
    const/16 v8, 0x48

    .line 337
    .line 338
    if-ne v7, v8, :cond_f

    .line 339
    .line 340
    const/4 v3, 0x3

    .line 341
    const/4 v14, 0x4

    .line 342
    const/4 v15, 0x1

    .line 343
    goto/16 :goto_7

    .line 344
    .line 345
    :cond_f
    add-int/lit8 v7, v12, 0xc

    .line 346
    .line 347
    const/16 v8, 0x50

    .line 348
    .line 349
    if-ge v7, v11, :cond_10

    .line 350
    .line 351
    if-ne v10, v8, :cond_10

    .line 352
    .line 353
    add-int/lit8 v13, v12, 0x7

    .line 354
    .line 355
    aget-byte v13, v1, v13

    .line 356
    .line 357
    if-ne v13, v14, :cond_10

    .line 358
    .line 359
    aget-byte v13, v1, v6

    .line 360
    .line 361
    const/16 v15, 0x49

    .line 362
    .line 363
    if-ne v13, v15, :cond_10

    .line 364
    .line 365
    add-int/lit8 v13, v12, 0x9

    .line 366
    .line 367
    aget-byte v15, v1, v13

    .line 368
    .line 369
    const/16 v8, 0x56

    .line 370
    .line 371
    if-ne v15, v8, :cond_10

    .line 372
    .line 373
    add-int/lit8 v8, v12, 0xa

    .line 374
    .line 375
    aget-byte v8, v1, v8

    .line 376
    .line 377
    if-ne v8, v3, :cond_10

    .line 378
    .line 379
    add-int/lit8 v3, v12, 0xb

    .line 380
    .line 381
    aget-byte v3, v1, v3

    .line 382
    .line 383
    const/16 v8, 0x54

    .line 384
    .line 385
    if-ne v3, v8, :cond_10

    .line 386
    .line 387
    aget-byte v3, v1, v7

    .line 388
    .line 389
    const/16 v8, 0x45

    .line 390
    .line 391
    if-ne v3, v8, :cond_10

    .line 392
    .line 393
    move v5, v13

    .line 394
    const/4 v3, 0x3

    .line 395
    const/4 v14, 0x4

    .line 396
    const/4 v15, 0x3

    .line 397
    const/16 v16, 0x0

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_10
    add-int/lit8 v3, v12, 0xe

    .line 401
    .line 402
    if-ge v3, v11, :cond_11

    .line 403
    .line 404
    const/16 v8, 0x45

    .line 405
    .line 406
    if-ne v10, v8, :cond_11

    .line 407
    .line 408
    add-int/lit8 v8, v12, 0x7

    .line 409
    .line 410
    aget-byte v8, v1, v8

    .line 411
    .line 412
    const/16 v10, 0x4e

    .line 413
    .line 414
    if-ne v8, v10, :cond_11

    .line 415
    .line 416
    aget-byte v6, v1, v6

    .line 417
    .line 418
    const/16 v8, 0x43

    .line 419
    .line 420
    if-ne v6, v8, :cond_11

    .line 421
    .line 422
    add-int/lit8 v6, v12, 0x9

    .line 423
    .line 424
    aget-byte v6, v1, v6

    .line 425
    .line 426
    if-ne v6, v14, :cond_11

    .line 427
    .line 428
    add-int/lit8 v6, v12, 0xa

    .line 429
    .line 430
    aget-byte v6, v1, v6

    .line 431
    .line 432
    const/16 v8, 0x59

    .line 433
    .line 434
    if-ne v6, v8, :cond_11

    .line 435
    .line 436
    add-int/lit8 v6, v12, 0xb

    .line 437
    .line 438
    aget-byte v8, v1, v6

    .line 439
    .line 440
    const/16 v10, 0x50

    .line 441
    .line 442
    if-ne v8, v10, :cond_11

    .line 443
    .line 444
    aget-byte v7, v1, v7

    .line 445
    .line 446
    const/16 v8, 0x54

    .line 447
    .line 448
    if-ne v7, v8, :cond_11

    .line 449
    .line 450
    add-int/lit8 v12, v12, 0xd

    .line 451
    .line 452
    aget-byte v7, v1, v12

    .line 453
    .line 454
    const/16 v8, 0x45

    .line 455
    .line 456
    if-ne v7, v8, :cond_11

    .line 457
    .line 458
    aget-byte v3, v1, v3

    .line 459
    .line 460
    const/16 v7, 0x44

    .line 461
    .line 462
    if-ne v3, v7, :cond_11

    .line 463
    .line 464
    move v5, v6

    .line 465
    const/4 v3, 0x3

    .line 466
    const/4 v14, 0x4

    .line 467
    const/4 v15, 0x3

    .line 468
    goto :goto_7

    .line 469
    :cond_11
    invoke-static {v5, v11, v1}, La9/r;->i(II[B)Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-eqz v3, :cond_13

    .line 474
    .line 475
    const/4 v3, 0x3

    .line 476
    const/4 v14, 0x4

    .line 477
    const/4 v15, 0x4

    .line 478
    :goto_7
    add-int/lit8 v12, v5, 0x3

    .line 479
    .line 480
    :cond_12
    :goto_8
    const/16 v3, 0x8

    .line 481
    .line 482
    const/4 v5, 0x7

    .line 483
    const/4 v6, 0x2

    .line 484
    const/4 v7, 0x3

    .line 485
    const/4 v8, 0x1

    .line 486
    const/4 v9, 0x0

    .line 487
    const/16 v13, 0x2d

    .line 488
    .line 489
    goto/16 :goto_6

    .line 490
    .line 491
    :cond_13
    new-instance v0, La9/n;

    .line 492
    .line 493
    invoke-direct {v0, v9}, La9/n;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v0

    .line 497
    :cond_14
    new-instance v0, La9/n;

    .line 498
    .line 499
    invoke-direct {v0, v9}, La9/n;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v0

    .line 503
    :cond_15
    if-ne v5, v3, :cond_17

    .line 504
    .line 505
    add-int/lit8 v6, v12, 0x7

    .line 506
    .line 507
    if-ge v6, v11, :cond_17

    .line 508
    .line 509
    add-int/lit8 v7, v12, 0x1

    .line 510
    .line 511
    aget-byte v7, v1, v7

    .line 512
    .line 513
    const/16 v10, 0x45

    .line 514
    .line 515
    if-ne v7, v10, :cond_17

    .line 516
    .line 517
    add-int/lit8 v7, v12, 0x2

    .line 518
    .line 519
    aget-byte v7, v1, v7

    .line 520
    .line 521
    if-ne v7, v8, :cond_17

    .line 522
    .line 523
    add-int/lit8 v7, v12, 0x3

    .line 524
    .line 525
    aget-byte v7, v1, v7

    .line 526
    .line 527
    const/16 v10, 0x2d

    .line 528
    .line 529
    if-ne v7, v10, :cond_17

    .line 530
    .line 531
    add-int/lit8 v7, v12, 0x4

    .line 532
    .line 533
    aget-byte v7, v1, v7

    .line 534
    .line 535
    const/16 v10, 0x32

    .line 536
    .line 537
    if-ne v7, v10, :cond_17

    .line 538
    .line 539
    add-int/lit8 v7, v12, 0x5

    .line 540
    .line 541
    aget-byte v7, v1, v7

    .line 542
    .line 543
    const/16 v10, 0x35

    .line 544
    .line 545
    if-ne v7, v10, :cond_17

    .line 546
    .line 547
    add-int/lit8 v7, v12, 0x6

    .line 548
    .line 549
    aget-byte v7, v1, v7

    .line 550
    .line 551
    const/16 v10, 0x36

    .line 552
    .line 553
    if-ne v7, v10, :cond_17

    .line 554
    .line 555
    aget-byte v6, v1, v6

    .line 556
    .line 557
    const/16 v7, 0x2d

    .line 558
    .line 559
    if-eq v6, v7, :cond_16

    .line 560
    .line 561
    goto :goto_9

    .line 562
    :cond_16
    const-string v0, "aes256-cbc"

    .line 563
    .line 564
    invoke-static {v0}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-static {v0}, La9/f0;->a(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    new-instance v0, La9/n;

    .line 572
    .line 573
    const-string v1, "privatekey: aes256-cbc is not available"

    .line 574
    .line 575
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    throw v0

    .line 579
    :cond_17
    :goto_9
    const/16 v6, 0x39

    .line 580
    .line 581
    if-ne v5, v3, :cond_19

    .line 582
    .line 583
    add-int/lit8 v7, v12, 0x7

    .line 584
    .line 585
    if-ge v7, v11, :cond_19

    .line 586
    .line 587
    add-int/lit8 v10, v12, 0x1

    .line 588
    .line 589
    aget-byte v10, v1, v10

    .line 590
    .line 591
    const/16 v13, 0x45

    .line 592
    .line 593
    if-ne v10, v13, :cond_19

    .line 594
    .line 595
    add-int/lit8 v10, v12, 0x2

    .line 596
    .line 597
    aget-byte v10, v1, v10

    .line 598
    .line 599
    if-ne v10, v8, :cond_19

    .line 600
    .line 601
    add-int/lit8 v10, v12, 0x3

    .line 602
    .line 603
    aget-byte v10, v1, v10

    .line 604
    .line 605
    const/16 v13, 0x2d

    .line 606
    .line 607
    if-ne v10, v13, :cond_19

    .line 608
    .line 609
    add-int/lit8 v10, v12, 0x4

    .line 610
    .line 611
    aget-byte v10, v1, v10

    .line 612
    .line 613
    const/16 v13, 0x31

    .line 614
    .line 615
    if-ne v10, v13, :cond_19

    .line 616
    .line 617
    add-int/lit8 v10, v12, 0x5

    .line 618
    .line 619
    aget-byte v10, v1, v10

    .line 620
    .line 621
    if-ne v10, v6, :cond_19

    .line 622
    .line 623
    add-int/lit8 v10, v12, 0x6

    .line 624
    .line 625
    aget-byte v10, v1, v10

    .line 626
    .line 627
    const/16 v13, 0x32

    .line 628
    .line 629
    if-ne v10, v13, :cond_19

    .line 630
    .line 631
    aget-byte v7, v1, v7

    .line 632
    .line 633
    const/16 v10, 0x2d

    .line 634
    .line 635
    if-eq v7, v10, :cond_18

    .line 636
    .line 637
    goto :goto_a

    .line 638
    :cond_18
    const-string v0, "aes192-cbc"

    .line 639
    .line 640
    invoke-static {v0}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v0}, La9/f0;->a(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    new-instance v0, La9/n;

    .line 648
    .line 649
    const-string v1, "privatekey: aes192-cbc is not available"

    .line 650
    .line 651
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    throw v0

    .line 655
    :cond_19
    :goto_a
    if-ne v5, v3, :cond_1a

    .line 656
    .line 657
    add-int/lit8 v3, v12, 0x7

    .line 658
    .line 659
    if-ge v3, v11, :cond_1a

    .line 660
    .line 661
    add-int/lit8 v7, v12, 0x1

    .line 662
    .line 663
    aget-byte v7, v1, v7

    .line 664
    .line 665
    const/16 v10, 0x45

    .line 666
    .line 667
    if-ne v7, v10, :cond_1a

    .line 668
    .line 669
    add-int/lit8 v7, v12, 0x2

    .line 670
    .line 671
    aget-byte v7, v1, v7

    .line 672
    .line 673
    if-ne v7, v8, :cond_1a

    .line 674
    .line 675
    add-int/lit8 v7, v12, 0x3

    .line 676
    .line 677
    aget-byte v7, v1, v7

    .line 678
    .line 679
    const/16 v8, 0x2d

    .line 680
    .line 681
    if-ne v7, v8, :cond_1a

    .line 682
    .line 683
    add-int/lit8 v7, v12, 0x4

    .line 684
    .line 685
    aget-byte v7, v1, v7

    .line 686
    .line 687
    const/16 v8, 0x31

    .line 688
    .line 689
    if-ne v7, v8, :cond_1a

    .line 690
    .line 691
    add-int/lit8 v7, v12, 0x5

    .line 692
    .line 693
    aget-byte v7, v1, v7

    .line 694
    .line 695
    const/16 v8, 0x32

    .line 696
    .line 697
    if-ne v7, v8, :cond_1a

    .line 698
    .line 699
    add-int/lit8 v7, v12, 0x6

    .line 700
    .line 701
    aget-byte v7, v1, v7

    .line 702
    .line 703
    const/16 v8, 0x38

    .line 704
    .line 705
    if-ne v7, v8, :cond_1a

    .line 706
    .line 707
    aget-byte v3, v1, v3

    .line 708
    .line 709
    const/16 v7, 0x2d

    .line 710
    .line 711
    if-eq v3, v7, :cond_1b

    .line 712
    .line 713
    :cond_1a
    const/16 v3, 0x43

    .line 714
    .line 715
    goto :goto_b

    .line 716
    :cond_1b
    const-string v0, "aes128-cbc"

    .line 717
    .line 718
    invoke-static {v0}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-static {v0}, La9/f0;->a(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    new-instance v0, La9/n;

    .line 726
    .line 727
    const-string v1, "privatekey: aes128-cbc is not available"

    .line 728
    .line 729
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v0

    .line 733
    :goto_b
    if-ne v5, v3, :cond_1e

    .line 734
    .line 735
    add-int/lit8 v3, v12, 0x3

    .line 736
    .line 737
    if-ge v3, v11, :cond_1e

    .line 738
    .line 739
    add-int/lit8 v7, v12, 0x1

    .line 740
    .line 741
    aget-byte v7, v1, v7

    .line 742
    .line 743
    const/16 v8, 0x42

    .line 744
    .line 745
    if-ne v7, v8, :cond_1e

    .line 746
    .line 747
    add-int/lit8 v7, v12, 0x2

    .line 748
    .line 749
    aget-byte v7, v1, v7

    .line 750
    .line 751
    const/16 v8, 0x43

    .line 752
    .line 753
    if-ne v7, v8, :cond_1e

    .line 754
    .line 755
    aget-byte v3, v1, v3

    .line 756
    .line 757
    const/16 v7, 0x2c

    .line 758
    .line 759
    if-ne v3, v7, :cond_1e

    .line 760
    .line 761
    add-int/lit8 v12, v12, 0x4

    .line 762
    .line 763
    const/4 v3, 0x0

    .line 764
    :goto_c
    const/16 v5, 0x8

    .line 765
    .line 766
    if-ge v3, v5, :cond_12

    .line 767
    .line 768
    add-int/lit8 v5, v12, 0x1

    .line 769
    .line 770
    aget-byte v7, v1, v12

    .line 771
    .line 772
    const/16 v8, 0x30

    .line 773
    .line 774
    if-gt v8, v7, :cond_1c

    .line 775
    .line 776
    if-gt v7, v6, :cond_1c

    .line 777
    .line 778
    add-int/lit8 v7, v7, -0x30

    .line 779
    .line 780
    :goto_d
    int-to-byte v7, v7

    .line 781
    const/4 v8, 0x4

    .line 782
    goto :goto_e

    .line 783
    :cond_1c
    add-int/lit8 v7, v7, -0x57

    .line 784
    .line 785
    goto :goto_d

    .line 786
    :goto_e
    shl-int/2addr v7, v8

    .line 787
    and-int/lit16 v7, v7, 0xf0

    .line 788
    .line 789
    add-int/lit8 v12, v12, 0x2

    .line 790
    .line 791
    aget-byte v5, v1, v5

    .line 792
    .line 793
    const/16 v8, 0x30

    .line 794
    .line 795
    if-gt v8, v5, :cond_1d

    .line 796
    .line 797
    if-gt v5, v6, :cond_1d

    .line 798
    .line 799
    add-int/lit8 v5, v5, -0x30

    .line 800
    .line 801
    :goto_f
    int-to-byte v5, v5

    .line 802
    goto :goto_10

    .line 803
    :cond_1d
    add-int/lit8 v5, v5, -0x57

    .line 804
    .line 805
    goto :goto_f

    .line 806
    :goto_10
    and-int/lit8 v5, v5, 0xf

    .line 807
    .line 808
    add-int/2addr v7, v5

    .line 809
    int-to-byte v5, v7

    .line 810
    aput-byte v5, v4, v3

    .line 811
    .line 812
    add-int/lit8 v3, v3, 0x1

    .line 813
    .line 814
    goto :goto_c

    .line 815
    :cond_1e
    const/16 v3, 0xd

    .line 816
    .line 817
    if-ne v5, v3, :cond_1f

    .line 818
    .line 819
    add-int/lit8 v3, v12, 0x1

    .line 820
    .line 821
    array-length v6, v1

    .line 822
    if-ge v3, v6, :cond_1f

    .line 823
    .line 824
    aget-byte v6, v1, v3

    .line 825
    .line 826
    const/16 v7, 0xa

    .line 827
    .line 828
    if-ne v6, v7, :cond_1f

    .line 829
    .line 830
    move v12, v3

    .line 831
    goto/16 :goto_8

    .line 832
    .line 833
    :cond_1f
    const/16 v3, 0xa

    .line 834
    .line 835
    if-ne v5, v3, :cond_25

    .line 836
    .line 837
    add-int/lit8 v5, v12, 0x1

    .line 838
    .line 839
    array-length v6, v1

    .line 840
    if-ge v5, v6, :cond_25

    .line 841
    .line 842
    aget-byte v6, v1, v5

    .line 843
    .line 844
    if-ne v6, v3, :cond_20

    .line 845
    .line 846
    add-int/lit8 v12, v12, 0x2

    .line 847
    .line 848
    goto :goto_14

    .line 849
    :cond_20
    const/16 v3, 0xd

    .line 850
    .line 851
    if-ne v6, v3, :cond_21

    .line 852
    .line 853
    add-int/lit8 v3, v12, 0x2

    .line 854
    .line 855
    array-length v6, v1

    .line 856
    if-ge v3, v6, :cond_21

    .line 857
    .line 858
    aget-byte v3, v1, v3

    .line 859
    .line 860
    const/16 v6, 0xa

    .line 861
    .line 862
    if-ne v3, v6, :cond_21

    .line 863
    .line 864
    add-int/lit8 v12, v12, 0x3

    .line 865
    .line 866
    goto :goto_14

    .line 867
    :cond_21
    move v3, v5

    .line 868
    :goto_11
    array-length v6, v1

    .line 869
    if-ge v3, v6, :cond_22

    .line 870
    .line 871
    aget-byte v6, v1, v3

    .line 872
    .line 873
    const/16 v7, 0xa

    .line 874
    .line 875
    if-ne v6, v7, :cond_23

    .line 876
    .line 877
    :cond_22
    const/4 v3, 0x3

    .line 878
    goto :goto_12

    .line 879
    :cond_23
    const/16 v7, 0x3a

    .line 880
    .line 881
    if-ne v6, v7, :cond_24

    .line 882
    .line 883
    goto :goto_13

    .line 884
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 885
    .line 886
    goto :goto_11

    .line 887
    :goto_12
    move v12, v5

    .line 888
    if-eq v15, v3, :cond_26

    .line 889
    .line 890
    const/16 v16, 0x0

    .line 891
    .line 892
    goto :goto_14

    .line 893
    :cond_25
    :goto_13
    add-int/lit8 v12, v12, 0x1

    .line 894
    .line 895
    goto/16 :goto_8

    .line 896
    .line 897
    :cond_26
    :goto_14
    if-eqz v1, :cond_31

    .line 898
    .line 899
    if-eqz v14, :cond_30

    .line 900
    .line 901
    move v3, v12

    .line 902
    :goto_15
    if-ge v3, v11, :cond_28

    .line 903
    .line 904
    aget-byte v4, v1, v3

    .line 905
    .line 906
    const/16 v5, 0x2d

    .line 907
    .line 908
    if-ne v4, v5, :cond_27

    .line 909
    .line 910
    goto :goto_16

    .line 911
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 912
    .line 913
    goto :goto_15

    .line 914
    :cond_28
    :goto_16
    sub-int/2addr v11, v3

    .line 915
    if-eqz v11, :cond_2f

    .line 916
    .line 917
    sub-int/2addr v3, v12

    .line 918
    if-eqz v3, :cond_2f

    .line 919
    .line 920
    new-array v4, v3, [B

    .line 921
    .line 922
    const/4 v5, 0x0

    .line 923
    invoke-static {v1, v12, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    .line 925
    .line 926
    const/4 v5, 0x0

    .line 927
    :goto_17
    if-ge v5, v3, :cond_2d

    .line 928
    .line 929
    aget-byte v6, v4, v5

    .line 930
    .line 931
    const/16 v7, 0xa

    .line 932
    .line 933
    if-ne v6, v7, :cond_2b

    .line 934
    .line 935
    if-lez v5, :cond_29

    .line 936
    .line 937
    add-int/lit8 v6, v5, -0x1

    .line 938
    .line 939
    aget-byte v6, v4, v6

    .line 940
    .line 941
    const/16 v7, 0xd

    .line 942
    .line 943
    if-ne v6, v7, :cond_29

    .line 944
    .line 945
    const/4 v6, 0x1

    .line 946
    goto :goto_18

    .line 947
    :cond_29
    const/4 v6, 0x0

    .line 948
    :goto_18
    add-int/lit8 v7, v5, 0x1

    .line 949
    .line 950
    sub-int v8, v5, v6

    .line 951
    .line 952
    sub-int v10, v3, v7

    .line 953
    .line 954
    invoke-static {v4, v7, v4, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 955
    .line 956
    .line 957
    if-eqz v6, :cond_2a

    .line 958
    .line 959
    add-int/lit8 v3, v3, -0x1

    .line 960
    .line 961
    add-int/lit8 v5, v5, -0x1

    .line 962
    .line 963
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    .line 964
    .line 965
    goto :goto_17

    .line 966
    :cond_2b
    const/16 v7, 0x2d

    .line 967
    .line 968
    if-ne v6, v7, :cond_2c

    .line 969
    .line 970
    goto :goto_19

    .line 971
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    .line 972
    .line 973
    goto :goto_17

    .line 974
    :cond_2d
    :goto_19
    if-lez v5, :cond_2e

    .line 975
    .line 976
    const/4 v3, 0x0

    .line 977
    invoke-static {v3, v5, v4}, La9/h0;->g(II[B)[B

    .line 978
    .line 979
    .line 980
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    .line 981
    goto :goto_1a

    .line 982
    :cond_2e
    const/4 v5, 0x0

    .line 983
    :goto_1a
    :try_start_2
    invoke-static {v4}, La9/h0;->d([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    .line 984
    .line 985
    .line 986
    const/4 v3, 0x4

    .line 987
    goto :goto_1c

    .line 988
    :catch_2
    move-exception v0

    .line 989
    :goto_1b
    move-object v10, v5

    .line 990
    goto/16 :goto_3b

    .line 991
    .line 992
    :catch_3
    move-exception v0

    .line 993
    goto :goto_1b

    .line 994
    :cond_2f
    :try_start_3
    new-instance v0, La9/n;

    .line 995
    .line 996
    invoke-direct {v0, v9}, La9/n;-><init>(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    throw v0

    .line 1000
    :cond_30
    new-instance v0, La9/n;

    .line 1001
    .line 1002
    invoke-direct {v0, v9}, La9/n;-><init>(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_0

    .line 1006
    :cond_31
    const/4 v3, 0x4

    .line 1007
    const/4 v5, 0x0

    .line 1008
    :goto_1c
    if-ne v15, v3, :cond_32

    .line 1009
    .line 1010
    :try_start_4
    invoke-static {v0, v5}, La9/r;->k(Lm7/e;[B)La9/r;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    return-object v0

    .line 1015
    :cond_32
    if-eqz v5, :cond_35

    .line 1016
    .line 1017
    array-length v4, v5

    .line 1018
    if-le v4, v3, :cond_35

    .line 1019
    .line 1020
    const/4 v3, 0x0

    .line 1021
    aget-byte v4, v5, v3

    .line 1022
    .line 1023
    const/16 v3, 0x3f

    .line 1024
    .line 1025
    if-ne v4, v3, :cond_35

    .line 1026
    .line 1027
    const/4 v3, 0x1

    .line 1028
    aget-byte v4, v5, v3

    .line 1029
    .line 1030
    const/16 v3, 0x6f

    .line 1031
    .line 1032
    if-ne v4, v3, :cond_35

    .line 1033
    .line 1034
    const/4 v3, 0x2

    .line 1035
    aget-byte v4, v5, v3

    .line 1036
    .line 1037
    const/4 v3, -0x7

    .line 1038
    if-ne v4, v3, :cond_35

    .line 1039
    .line 1040
    const/4 v3, 0x3

    .line 1041
    aget-byte v4, v5, v3

    .line 1042
    .line 1043
    const/16 v3, -0x15

    .line 1044
    .line 1045
    if-ne v4, v3, :cond_35

    .line 1046
    .line 1047
    new-instance v3, La9/a;

    .line 1048
    .line 1049
    invoke-direct {v3, v5}, La9/a;-><init>([B)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v3}, La9/a;->g()I

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v3}, La9/a;->g()I

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v3}, La9/a;->l()[B

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v3}, La9/a;->l()[B

    .line 1062
    .line 1063
    .line 1064
    move-result-object v4

    .line 1065
    invoke-static {v4}, La9/h0;->c([B)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v4

    .line 1069
    const-string v6, "3des-cbc"

    .line 1070
    .line 1071
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v6

    .line 1075
    if-nez v6, :cond_34

    .line 1076
    .line 1077
    const-string v6, "none"

    .line 1078
    .line 1079
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v6

    .line 1083
    if-eqz v6, :cond_33

    .line 1084
    .line 1085
    invoke-virtual {v3}, La9/a;->g()I

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v3}, La9/a;->g()I

    .line 1089
    .line 1090
    .line 1091
    array-length v4, v5

    .line 1092
    iget v6, v3, La9/a;->c:I

    .line 1093
    .line 1094
    sub-int/2addr v4, v6

    .line 1095
    new-array v6, v4, [B

    .line 1096
    .line 1097
    invoke-virtual {v3, v4, v6}, La9/a;->e(I[B)V

    .line 1098
    .line 1099
    .line 1100
    move-object v5, v6

    .line 1101
    const/4 v3, 0x0

    .line 1102
    goto :goto_1d

    .line 1103
    :cond_33
    new-instance v0, La9/n;

    .line 1104
    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1108
    .line 1109
    .line 1110
    const-string v2, "cipher "

    .line 1111
    .line 1112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    const-string v2, " is not supported for this privatekey format"

    .line 1119
    .line 1120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    throw v0

    .line 1131
    :cond_34
    invoke-virtual {v3}, La9/a;->g()I

    .line 1132
    .line 1133
    .line 1134
    array-length v0, v5

    .line 1135
    iget v1, v3, La9/a;->c:I

    .line 1136
    .line 1137
    sub-int/2addr v0, v1

    .line 1138
    new-array v10, v0, [B

    .line 1139
    .line 1140
    invoke-virtual {v3, v0, v10}, La9/a;->e(I[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_2

    .line 1141
    .line 1142
    .line 1143
    :try_start_5
    new-instance v0, La9/n;

    .line 1144
    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .line 1149
    .line 1150
    const-string v2, "cipher "

    .line 1151
    .line 1152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    const-string v2, " is not supported for this privatekey format"

    .line 1159
    .line 1160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_4

    .line 1171
    :catch_4
    move-exception v0

    .line 1172
    goto/16 :goto_3b

    .line 1173
    .line 1174
    :catch_5
    move-exception v0

    .line 1175
    goto/16 :goto_3b

    .line 1176
    .line 1177
    :cond_35
    move/from16 v3, v16

    .line 1178
    .line 1179
    :goto_1d
    const-string v7, ""

    .line 1180
    .line 1181
    if-eqz v2, :cond_5e

    .line 1182
    .line 1183
    :try_start_6
    array-length v8, v2

    .line 1184
    array-length v10, v2

    .line 1185
    const/4 v12, 0x4

    .line 1186
    if-le v10, v12, :cond_44

    .line 1187
    .line 1188
    const/4 v10, 0x0

    .line 1189
    aget-byte v12, v2, v10

    .line 1190
    .line 1191
    const/16 v10, 0x2d

    .line 1192
    .line 1193
    if-ne v12, v10, :cond_44

    .line 1194
    .line 1195
    const/4 v12, 0x1

    .line 1196
    aget-byte v13, v2, v12

    .line 1197
    .line 1198
    if-ne v13, v10, :cond_44

    .line 1199
    .line 1200
    const/4 v13, 0x2

    .line 1201
    aget-byte v4, v2, v13

    .line 1202
    .line 1203
    if-ne v4, v10, :cond_44

    .line 1204
    .line 1205
    const/4 v4, 0x3

    .line 1206
    aget-byte v13, v2, v4

    .line 1207
    .line 1208
    if-ne v13, v10, :cond_44

    .line 1209
    .line 1210
    const/4 v4, 0x0

    .line 1211
    :goto_1e
    add-int/2addr v4, v12

    .line 1212
    array-length v10, v2

    .line 1213
    if-le v10, v4, :cond_37

    .line 1214
    .line 1215
    aget-byte v10, v2, v4

    .line 1216
    .line 1217
    const/16 v12, 0xa

    .line 1218
    .line 1219
    if-ne v10, v12, :cond_36

    .line 1220
    .line 1221
    goto :goto_1f

    .line 1222
    :cond_36
    const/4 v12, 0x1

    .line 1223
    goto :goto_1e

    .line 1224
    :catch_6
    const/4 v4, 0x0

    .line 1225
    goto/16 :goto_37

    .line 1226
    .line 1227
    :cond_37
    :goto_1f
    array-length v10, v2

    .line 1228
    if-gt v10, v4, :cond_38

    .line 1229
    .line 1230
    const/4 v10, 0x0

    .line 1231
    goto :goto_20

    .line 1232
    :cond_38
    const/4 v10, 0x1

    .line 1233
    :goto_20
    if-eqz v10, :cond_3d

    .line 1234
    .line 1235
    aget-byte v12, v2, v4

    .line 1236
    .line 1237
    const/16 v13, 0xa

    .line 1238
    .line 1239
    if-ne v12, v13, :cond_3c

    .line 1240
    .line 1241
    add-int/lit8 v12, v4, 0x1

    .line 1242
    .line 1243
    move v6, v12

    .line 1244
    :goto_21
    array-length v11, v2

    .line 1245
    if-ge v6, v11, :cond_3b

    .line 1246
    .line 1247
    aget-byte v11, v2, v6

    .line 1248
    .line 1249
    if-ne v11, v13, :cond_39

    .line 1250
    .line 1251
    goto :goto_22

    .line 1252
    :cond_39
    const/16 v13, 0x3a

    .line 1253
    .line 1254
    if-ne v11, v13, :cond_3a

    .line 1255
    .line 1256
    goto :goto_23

    .line 1257
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    .line 1258
    .line 1259
    const/16 v13, 0xa

    .line 1260
    .line 1261
    goto :goto_21

    .line 1262
    :cond_3b
    :goto_22
    move v4, v12

    .line 1263
    goto :goto_24

    .line 1264
    :cond_3c
    :goto_23
    add-int/lit8 v4, v4, 0x1

    .line 1265
    .line 1266
    goto :goto_20

    .line 1267
    :cond_3d
    :goto_24
    array-length v6, v2

    .line 1268
    if-gt v6, v4, :cond_3e

    .line 1269
    .line 1270
    const/4 v10, 0x0

    .line 1271
    :cond_3e
    move v6, v4

    .line 1272
    :goto_25
    if-eqz v10, :cond_41

    .line 1273
    .line 1274
    if-ge v6, v8, :cond_41

    .line 1275
    .line 1276
    aget-byte v11, v2, v6

    .line 1277
    .line 1278
    const/16 v12, 0xa

    .line 1279
    .line 1280
    if-ne v11, v12, :cond_3f

    .line 1281
    .line 1282
    add-int/lit8 v11, v6, 0x1

    .line 1283
    .line 1284
    sub-int v12, v8, v6

    .line 1285
    .line 1286
    const/4 v13, 0x1

    .line 1287
    sub-int/2addr v12, v13

    .line 1288
    invoke-static {v2, v11, v2, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1289
    .line 1290
    .line 1291
    add-int/lit8 v8, v8, -0x1

    .line 1292
    .line 1293
    goto :goto_25

    .line 1294
    :cond_3f
    const/16 v12, 0x2d

    .line 1295
    .line 1296
    if-ne v11, v12, :cond_40

    .line 1297
    .line 1298
    goto :goto_26

    .line 1299
    :cond_40
    add-int/lit8 v6, v6, 0x1

    .line 1300
    .line 1301
    goto :goto_25

    .line 1302
    :cond_41
    :goto_26
    if-eqz v10, :cond_5c

    .line 1303
    .line 1304
    sub-int/2addr v6, v4

    .line 1305
    invoke-static {v4, v6, v2}, La9/h0;->g(II[B)[B

    .line 1306
    .line 1307
    .line 1308
    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_2

    .line 1309
    if-eqz v1, :cond_42

    .line 1310
    .line 1311
    const/4 v1, 0x4

    .line 1312
    if-ne v14, v1, :cond_5d

    .line 1313
    .line 1314
    :cond_42
    const/16 v1, 0x8

    .line 1315
    .line 1316
    :try_start_7
    aget-byte v1, v4, v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_2

    .line 1317
    .line 1318
    const/16 v6, 0x64

    .line 1319
    .line 1320
    if-ne v1, v6, :cond_43

    .line 1321
    .line 1322
    const/4 v14, 0x1

    .line 1323
    goto/16 :goto_36

    .line 1324
    .line 1325
    :cond_43
    const/16 v6, 0x72

    .line 1326
    .line 1327
    if-ne v1, v6, :cond_5d

    .line 1328
    .line 1329
    const/4 v14, 0x2

    .line 1330
    goto/16 :goto_36

    .line 1331
    .line 1332
    :cond_44
    const/4 v4, 0x0

    .line 1333
    :try_start_8
    aget-byte v6, v2, v4

    .line 1334
    .line 1335
    const/16 v4, 0x65

    .line 1336
    .line 1337
    const/16 v10, 0x73

    .line 1338
    .line 1339
    const/16 v11, 0x20

    .line 1340
    .line 1341
    if-ne v6, v10, :cond_52

    .line 1342
    .line 1343
    const/4 v12, 0x1

    .line 1344
    aget-byte v13, v2, v12

    .line 1345
    .line 1346
    if-ne v13, v10, :cond_52

    .line 1347
    .line 1348
    const/4 v12, 0x2

    .line 1349
    aget-byte v13, v2, v12

    .line 1350
    .line 1351
    const/16 v12, 0x68

    .line 1352
    .line 1353
    if-ne v13, v12, :cond_52

    .line 1354
    .line 1355
    const/4 v12, 0x3

    .line 1356
    aget-byte v13, v2, v12

    .line 1357
    .line 1358
    const/16 v12, 0x2d

    .line 1359
    .line 1360
    if-ne v13, v12, :cond_52

    .line 1361
    .line 1362
    if-nez v1, :cond_49

    .line 1363
    .line 1364
    array-length v1, v2

    .line 1365
    const/4 v6, 0x7

    .line 1366
    if-le v1, v6, :cond_49

    .line 1367
    .line 1368
    const/4 v1, 0x4

    .line 1369
    aget-byte v1, v2, v1

    .line 1370
    .line 1371
    const/16 v6, 0x64

    .line 1372
    .line 1373
    if-ne v1, v6, :cond_45

    .line 1374
    .line 1375
    const/4 v14, 0x1

    .line 1376
    goto :goto_27

    .line 1377
    :cond_45
    const/16 v6, 0x72

    .line 1378
    .line 1379
    if-ne v1, v6, :cond_46

    .line 1380
    .line 1381
    const/4 v14, 0x2

    .line 1382
    goto :goto_27

    .line 1383
    :cond_46
    if-ne v1, v4, :cond_47

    .line 1384
    .line 1385
    const/4 v6, 0x6

    .line 1386
    aget-byte v10, v2, v6

    .line 1387
    .line 1388
    const/16 v12, 0x32

    .line 1389
    .line 1390
    if-ne v10, v12, :cond_48

    .line 1391
    .line 1392
    const/4 v14, 0x5

    .line 1393
    goto :goto_27

    .line 1394
    :cond_47
    const/4 v6, 0x6

    .line 1395
    :cond_48
    if-ne v1, v4, :cond_49

    .line 1396
    .line 1397
    aget-byte v1, v2, v6

    .line 1398
    .line 1399
    const/16 v4, 0x34

    .line 1400
    .line 1401
    if-ne v1, v4, :cond_49

    .line 1402
    .line 1403
    const/4 v14, 0x6

    .line 1404
    :cond_49
    :goto_27
    const/4 v1, 0x0

    .line 1405
    :goto_28
    if-ge v1, v8, :cond_4a

    .line 1406
    .line 1407
    aget-byte v4, v2, v1

    .line 1408
    .line 1409
    if-ne v4, v11, :cond_4b

    .line 1410
    .line 1411
    :cond_4a
    const/4 v4, 0x1

    .line 1412
    goto :goto_29

    .line 1413
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    .line 1414
    .line 1415
    goto :goto_28

    .line 1416
    :goto_29
    add-int/2addr v1, v4

    .line 1417
    if-ge v1, v8, :cond_4e

    .line 1418
    .line 1419
    move v4, v1

    .line 1420
    :goto_2a
    if-ge v4, v8, :cond_4d

    .line 1421
    .line 1422
    aget-byte v6, v2, v4

    .line 1423
    .line 1424
    if-ne v6, v11, :cond_4c

    .line 1425
    .line 1426
    goto :goto_2b

    .line 1427
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    .line 1428
    .line 1429
    goto :goto_2a

    .line 1430
    :cond_4d
    :goto_2b
    sub-int v6, v4, v1

    .line 1431
    .line 1432
    invoke-static {v1, v6, v2}, La9/h0;->g(II[B)[B

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_2

    .line 1436
    move/from16 v19, v4

    .line 1437
    .line 1438
    move-object v4, v1

    .line 1439
    move/from16 v1, v19

    .line 1440
    .line 1441
    goto :goto_2c

    .line 1442
    :cond_4e
    const/4 v4, 0x0

    .line 1443
    :goto_2c
    add-int/lit8 v6, v1, 0x1

    .line 1444
    .line 1445
    if-ge v1, v8, :cond_5d

    .line 1446
    .line 1447
    move v1, v6

    .line 1448
    :goto_2d
    if-ge v1, v8, :cond_50

    .line 1449
    .line 1450
    :try_start_9
    aget-byte v10, v2, v1

    .line 1451
    .line 1452
    const/16 v11, 0xa

    .line 1453
    .line 1454
    if-ne v10, v11, :cond_4f

    .line 1455
    .line 1456
    goto :goto_2e

    .line 1457
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    .line 1458
    .line 1459
    goto :goto_2d

    .line 1460
    :cond_50
    :goto_2e
    if-lez v1, :cond_51

    .line 1461
    .line 1462
    add-int/lit8 v8, v1, -0x1

    .line 1463
    .line 1464
    aget-byte v8, v2, v8

    .line 1465
    .line 1466
    const/16 v10, 0xd

    .line 1467
    .line 1468
    if-ne v8, v10, :cond_51

    .line 1469
    .line 1470
    add-int/lit8 v1, v1, -0x1

    .line 1471
    .line 1472
    :cond_51
    if-ge v6, v1, :cond_5d

    .line 1473
    .line 1474
    sub-int/2addr v1, v6

    .line 1475
    invoke-static {v6, v1, v2}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_2

    .line 1479
    goto/16 :goto_36

    .line 1480
    .line 1481
    :cond_52
    if-ne v6, v4, :cond_5c

    .line 1482
    .line 1483
    const/4 v4, 0x1

    .line 1484
    :try_start_a
    aget-byte v6, v2, v4

    .line 1485
    .line 1486
    const/16 v4, 0x63

    .line 1487
    .line 1488
    if-ne v6, v4, :cond_5c

    .line 1489
    .line 1490
    const/4 v4, 0x2

    .line 1491
    aget-byte v6, v2, v4

    .line 1492
    .line 1493
    const/16 v4, 0x64

    .line 1494
    .line 1495
    if-ne v6, v4, :cond_5c

    .line 1496
    .line 1497
    const/4 v4, 0x3

    .line 1498
    aget-byte v6, v2, v4

    .line 1499
    .line 1500
    if-ne v6, v10, :cond_5c

    .line 1501
    .line 1502
    if-nez v1, :cond_53

    .line 1503
    .line 1504
    array-length v1, v2

    .line 1505
    const/4 v4, 0x7

    .line 1506
    if-le v1, v4, :cond_53

    .line 1507
    .line 1508
    const/4 v14, 0x3

    .line 1509
    :cond_53
    const/4 v1, 0x0

    .line 1510
    :goto_2f
    if-ge v1, v8, :cond_54

    .line 1511
    .line 1512
    aget-byte v4, v2, v1

    .line 1513
    .line 1514
    if-ne v4, v11, :cond_55

    .line 1515
    .line 1516
    :cond_54
    const/4 v4, 0x1

    .line 1517
    goto :goto_30

    .line 1518
    :cond_55
    add-int/lit8 v1, v1, 0x1

    .line 1519
    .line 1520
    goto :goto_2f

    .line 1521
    :goto_30
    add-int/2addr v1, v4

    .line 1522
    if-ge v1, v8, :cond_58

    .line 1523
    .line 1524
    move v4, v1

    .line 1525
    :goto_31
    if-ge v4, v8, :cond_57

    .line 1526
    .line 1527
    aget-byte v6, v2, v4

    .line 1528
    .line 1529
    if-ne v6, v11, :cond_56

    .line 1530
    .line 1531
    goto :goto_32

    .line 1532
    :cond_56
    add-int/lit8 v4, v4, 0x1

    .line 1533
    .line 1534
    goto :goto_31

    .line 1535
    :cond_57
    :goto_32
    sub-int v6, v4, v1

    .line 1536
    .line 1537
    invoke-static {v1, v6, v2}, La9/h0;->g(II[B)[B

    .line 1538
    .line 1539
    .line 1540
    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_a} :catch_2

    .line 1541
    move/from16 v19, v4

    .line 1542
    .line 1543
    move-object v4, v1

    .line 1544
    move/from16 v1, v19

    .line 1545
    .line 1546
    goto :goto_33

    .line 1547
    :cond_58
    const/4 v4, 0x0

    .line 1548
    :goto_33
    add-int/lit8 v6, v1, 0x1

    .line 1549
    .line 1550
    if-ge v1, v8, :cond_5d

    .line 1551
    .line 1552
    move v1, v6

    .line 1553
    :goto_34
    if-ge v1, v8, :cond_5a

    .line 1554
    .line 1555
    :try_start_b
    aget-byte v10, v2, v1

    .line 1556
    .line 1557
    const/16 v11, 0xa

    .line 1558
    .line 1559
    if-ne v10, v11, :cond_59

    .line 1560
    .line 1561
    goto :goto_35

    .line 1562
    :cond_59
    add-int/lit8 v1, v1, 0x1

    .line 1563
    .line 1564
    goto :goto_34

    .line 1565
    :cond_5a
    :goto_35
    if-lez v1, :cond_5b

    .line 1566
    .line 1567
    add-int/lit8 v8, v1, -0x1

    .line 1568
    .line 1569
    aget-byte v8, v2, v8

    .line 1570
    .line 1571
    const/16 v10, 0xd

    .line 1572
    .line 1573
    if-ne v8, v10, :cond_5b

    .line 1574
    .line 1575
    add-int/lit8 v1, v1, -0x1

    .line 1576
    .line 1577
    :cond_5b
    if-ge v6, v1, :cond_5d

    .line 1578
    .line 1579
    sub-int/2addr v1, v6

    .line 1580
    invoke-static {v6, v1, v2}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_2

    .line 1584
    goto :goto_36

    .line 1585
    :cond_5c
    const/4 v4, 0x0

    .line 1586
    :cond_5d
    :goto_36
    const/4 v1, 0x1

    .line 1587
    goto :goto_38

    .line 1588
    :catch_7
    :goto_37
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1589
    .line 1590
    .line 1591
    sget-object v1, La9/l;->f:Lgf/g;

    .line 1592
    .line 1593
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1594
    .line 1595
    .line 1596
    goto :goto_36

    .line 1597
    :cond_5e
    const/4 v1, 0x1

    .line 1598
    const/4 v4, 0x0

    .line 1599
    :goto_38
    if-ne v14, v1, :cond_5f

    .line 1600
    .line 1601
    new-instance v10, La9/s;

    .line 1602
    .line 1603
    invoke-direct {v10, v0}, La9/s;-><init>(Lm7/e;)V

    .line 1604
    .line 1605
    .line 1606
    goto :goto_3a

    .line 1607
    :cond_5f
    const/4 v1, 0x2

    .line 1608
    if-ne v14, v1, :cond_60

    .line 1609
    .line 1610
    new-instance v10, La9/x;

    .line 1611
    .line 1612
    invoke-direct {v10, v0}, La9/x;-><init>(Lm7/e;)V

    .line 1613
    .line 1614
    .line 1615
    goto :goto_3a

    .line 1616
    :cond_60
    const/4 v1, 0x3

    .line 1617
    if-ne v14, v1, :cond_61

    .line 1618
    .line 1619
    new-instance v10, La9/t;

    .line 1620
    .line 1621
    invoke-direct {v10, v0, v2}, La9/t;-><init>(Lm7/e;[B)V

    .line 1622
    .line 1623
    .line 1624
    goto :goto_3a

    .line 1625
    :cond_61
    const/4 v1, 0x5

    .line 1626
    if-ne v14, v1, :cond_62

    .line 1627
    .line 1628
    new-instance v1, La9/u;

    .line 1629
    .line 1630
    const/4 v6, 0x0

    .line 1631
    const/4 v8, 0x0

    .line 1632
    invoke-direct {v1, v0, v2, v8, v6}, La9/u;-><init>(Lm7/e;[B[BI)V

    .line 1633
    .line 1634
    .line 1635
    :goto_39
    move-object v10, v1

    .line 1636
    goto :goto_3a

    .line 1637
    :cond_62
    const/4 v1, 0x6

    .line 1638
    if-ne v14, v1, :cond_63

    .line 1639
    .line 1640
    new-instance v1, La9/u;

    .line 1641
    .line 1642
    const/4 v6, 0x1

    .line 1643
    const/4 v8, 0x0

    .line 1644
    invoke-direct {v1, v0, v2, v8, v6}, La9/u;-><init>(Lm7/e;[B[BI)V

    .line 1645
    .line 1646
    .line 1647
    goto :goto_39

    .line 1648
    :cond_63
    const/4 v1, 0x3

    .line 1649
    const/4 v8, 0x0

    .line 1650
    if-ne v15, v1, :cond_64

    .line 1651
    .line 1652
    new-instance v10, La9/w;

    .line 1653
    .line 1654
    invoke-direct {v10, v0}, La9/w;-><init>(Lm7/e;)V

    .line 1655
    .line 1656
    .line 1657
    goto :goto_3a

    .line 1658
    :cond_64
    move-object v10, v8

    .line 1659
    :goto_3a
    if-eqz v10, :cond_68

    .line 1660
    .line 1661
    iput-boolean v3, v10, La9/r;->d:Z

    .line 1662
    .line 1663
    iput-object v4, v10, La9/r;->f:[B

    .line 1664
    .line 1665
    iput v15, v10, La9/r;->a:I

    .line 1666
    .line 1667
    iput-object v7, v10, La9/r;->b:Ljava/lang/String;

    .line 1668
    .line 1669
    if-eqz v3, :cond_65

    .line 1670
    .line 1671
    const/4 v0, 0x1

    .line 1672
    iput-boolean v0, v10, La9/r;->d:Z

    .line 1673
    .line 1674
    iput-object v5, v10, La9/r;->e:[B

    .line 1675
    .line 1676
    goto :goto_3c

    .line 1677
    :cond_65
    invoke-virtual {v10, v5}, La9/r;->m([B)Z

    .line 1678
    .line 1679
    .line 1680
    move-result v0

    .line 1681
    if-eqz v0, :cond_66

    .line 1682
    .line 1683
    const/4 v0, 0x0

    .line 1684
    iput-boolean v0, v10, La9/r;->d:Z

    .line 1685
    .line 1686
    goto :goto_3c

    .line 1687
    :cond_66
    new-instance v0, La9/n;

    .line 1688
    .line 1689
    invoke-direct {v0, v9}, La9/n;-><init>(Ljava/lang/String;)V

    .line 1690
    .line 1691
    .line 1692
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_c} :catch_2

    .line 1693
    :goto_3b
    invoke-static {v10}, La9/h0;->d([B)V

    .line 1694
    .line 1695
    .line 1696
    instance-of v1, v0, La9/n;

    .line 1697
    .line 1698
    if-eqz v1, :cond_67

    .line 1699
    .line 1700
    check-cast v0, La9/n;

    .line 1701
    .line 1702
    throw v0

    .line 1703
    :cond_67
    new-instance v1, La9/n;

    .line 1704
    .line 1705
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v2

    .line 1709
    invoke-direct {v1, v2, v0}, La9/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1710
    .line 1711
    .line 1712
    throw v1

    .line 1713
    :cond_68
    :goto_3c
    return-object v10
.end method

.method public static k(Lm7/e;[B)La9/r;
    .locals 9

    .line 1
    const-string v0, "cipher "

    .line 2
    .line 3
    const-string v1, "invalid privatekey"

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    new-instance v2, La9/a;

    .line 8
    .line 9
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 10
    .line 11
    .line 12
    sget-object p1, La9/r;->g:[B

    .line 13
    .line 14
    array-length v3, p1

    .line 15
    new-array v4, v3, [B

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, La9/a;->e(I[B)V

    .line 18
    .line 19
    .line 20
    array-length v5, p1

    .line 21
    if-ne v5, v3, :cond_4

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    :goto_0
    array-length v7, p1

    .line 27
    if-ge v5, v7, :cond_0

    .line 28
    .line 29
    aget-byte v7, p1, v5

    .line 30
    .line 31
    aget-byte v8, v4, v5

    .line 32
    .line 33
    xor-int/2addr v7, v8

    .line 34
    or-int/2addr v6, v7

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-nez v6, :cond_4

    .line 39
    .line 40
    invoke-virtual {v2}, La9/a;->l()[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    array-length v4, p1

    .line 45
    sget-object v5, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    new-instance v6, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v6, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, La9/a;->l()[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    array-length v4, p1

    .line 57
    new-instance v7, Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v7, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, La9/a;->l()[B

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, La9/a;->g()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v3, 0x1

    .line 70
    if-ne p1, v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {v2}, La9/a;->l()[B

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static {p0, p1, v4}, La9/r;->p(Lm7/e;[BLjava/lang/String;)La9/r;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v4, "none"

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    xor-int/2addr v3, v4

    .line 88
    iput-boolean v3, p0, La9/r;->d:Z

    .line 89
    .line 90
    iput-object p1, p0, La9/r;->f:[B

    .line 91
    .line 92
    const/4 p1, 0x4

    .line 93
    iput p1, p0, La9/r;->a:I

    .line 94
    .line 95
    const-string p1, ""

    .line 96
    .line 97
    iput-object p1, p0, La9/r;->b:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v2}, La9/a;->l()[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, La9/r;->e:[B

    .line 104
    .line 105
    :try_start_0
    iget-boolean v2, p0, La9/r;->d:Z

    .line 106
    .line 107
    if-nez v2, :cond_2

    .line 108
    .line 109
    invoke-virtual {p0, p1}, La9/r;->m([B)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    iget-object p1, p0, La9/r;->e:[B

    .line 116
    .line 117
    invoke-static {p1}, La9/h0;->d([B)V

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :catch_0
    move-exception p1

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    new-instance p1, La9/n;

    .line 124
    .line 125
    invoke-direct {p1, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_2
    invoke-static {v6}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, La9/f0;->a(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, La9/n;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, " is not available"

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p1, v0}, La9/n;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    iget-object p0, p0, La9/r;->e:[B

    .line 160
    .line 161
    invoke-static {p0}, La9/h0;->d([B)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_3
    new-instance p0, La9/n;

    .line 166
    .line 167
    const-string p1, "We don\'t support having more than 1 key in the file (yet)."

    .line 168
    .line 169
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_4
    new-instance p0, La9/n;

    .line 174
    .line 175
    const-string p1, "Invalid openssh v1 format."

    .line 176
    .line 177
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_5
    new-instance p0, La9/n;

    .line 182
    .line 183
    invoke-direct {p0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :goto_2
    throw p0

    .line 188
    :goto_3
    goto :goto_2
.end method

.method public static l(Lm7/e;[B)La9/r;
    .locals 7

    .line 1
    new-instance v0, La9/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, La9/a;-><init>([B)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {v0, p1}, La9/r;->n(La9/a;Ljava/util/HashMap;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "PuTTY-User-Key-File-2"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const-string v1, "PuTTY-User-Key-File-3"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    const/4 v3, 0x5

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v3, 0x2

    .line 42
    :goto_0
    :try_start_0
    const-string v4, "Public-Lines"

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {v0, v4}, La9/r;->o(La9/a;I)[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    :cond_3
    invoke-static {v0, p1}, La9/r;->n(La9/a;Ljava/util/HashMap;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    const-string v5, "Private-Lines"

    .line 65
    .line 66
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-static {v0, v5}, La9/r;->o(La9/a;I)[B

    .line 77
    .line 78
    .line 79
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :cond_4
    :try_start_1
    invoke-static {v0, p1}, La9/r;->n(La9/a;Ljava/util/HashMap;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    array-length v0, v5

    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static {v6, v0, v5}, La9/h0;->g(II[B)[B

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    array-length v0, v4

    .line 93
    invoke-static {v6, v0, v4}, La9/h0;->g(II[B)[B

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {p0, v0, v1}, La9/r;->p(Lm7/e;[BLjava/lang/String;)La9/r;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string v1, "Encryption"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Ljava/lang/String;

    .line 108
    .line 109
    const-string v4, "none"

    .line 110
    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    xor-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    iput-boolean v1, p0, La9/r;->d:Z

    .line 118
    .line 119
    iput-object v0, p0, La9/r;->f:[B

    .line 120
    .line 121
    iput v3, p0, La9/r;->a:I

    .line 122
    .line 123
    const-string v0, "Comment"

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Ljava/lang/String;

    .line 130
    .line 131
    iput-object p1, p0, La9/r;->b:Ljava/lang/String;

    .line 132
    .line 133
    iget-boolean p1, p0, La9/r;->d:Z

    .line 134
    .line 135
    if-nez p1, :cond_6

    .line 136
    .line 137
    iput-object v2, p0, La9/r;->e:[B

    .line 138
    .line 139
    invoke-virtual {p0, v2}, La9/r;->m([B)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    invoke-static {v2}, La9/h0;->d([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-static {v5}, La9/h0;->d([B)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    move-object v2, v5

    .line 154
    goto :goto_2

    .line 155
    :catch_0
    move-exception p0

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    :try_start_2
    new-instance p0, La9/n;

    .line 158
    .line 159
    const-string p1, "invalid privatekey"

    .line 160
    .line 161
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_6
    const-string p0, "aes256-cbc"

    .line 166
    .line 167
    invoke-static {p0}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p0}, La9/f0;->a(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance p0, La9/n;

    .line 175
    .line 176
    const-string p1, "The cipher \'aes256-cbc\' is required, but it is not available."

    .line 177
    .line 178
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :catchall_1
    move-exception p0

    .line 183
    goto :goto_2

    .line 184
    :catch_1
    move-exception p0

    .line 185
    move-object v5, v2

    .line 186
    :goto_1
    :try_start_3
    invoke-static {v2}, La9/h0;->d([B)V

    .line 187
    .line 188
    .line 189
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :goto_2
    invoke-static {v2}, La9/h0;->d([B)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :goto_3
    throw p0

    .line 195
    :goto_4
    goto :goto_3
.end method

.method public static n(La9/a;Ljava/util/HashMap;)Z
    .locals 10

    .line 1
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, La9/a;->b:I

    .line 6
    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, v0

    .line 9
    const/4 v4, 0x1

    .line 10
    const/16 v5, 0xd

    .line 11
    .line 12
    const/16 v6, 0xa

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    if-ge v2, v3, :cond_4

    .line 16
    .line 17
    aget-byte v3, v0, v2

    .line 18
    .line 19
    if-eq v3, v5, :cond_3

    .line 20
    .line 21
    if-ne v3, v6, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/16 v8, 0x3a

    .line 25
    .line 26
    if-ne v3, v8, :cond_2

    .line 27
    .line 28
    sub-int v3, v2, v1

    .line 29
    .line 30
    invoke-static {v1, v3, v0}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    add-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    array-length v8, v0

    .line 37
    if-ge v3, v8, :cond_1

    .line 38
    .line 39
    aget-byte v8, v0, v3

    .line 40
    .line 41
    const/16 v9, 0x20

    .line 42
    .line 43
    if-ne v8, v9, :cond_1

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move v2, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    add-int/2addr v2, v4

    .line 54
    array-length v3, v0

    .line 55
    if-ge v2, v3, :cond_4

    .line 56
    .line 57
    aget-byte v2, v0, v2

    .line 58
    .line 59
    :cond_4
    move v2, v1

    .line 60
    move-object v1, v7

    .line 61
    :goto_2
    const/4 v3, 0x0

    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    return v3

    .line 65
    :cond_5
    move v8, v2

    .line 66
    :goto_3
    array-length v9, v0

    .line 67
    if-ge v8, v9, :cond_8

    .line 68
    .line 69
    aget-byte v9, v0, v8

    .line 70
    .line 71
    if-eq v9, v5, :cond_7

    .line 72
    .line 73
    if-ne v9, v6, :cond_6

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_7
    :goto_4
    sub-int v5, v8, v2

    .line 80
    .line 81
    invoke-static {v2, v5, v0}, La9/h0;->b(II[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    add-int/lit8 v2, v8, 0x1

    .line 86
    .line 87
    array-length v5, v0

    .line 88
    if-ge v2, v5, :cond_8

    .line 89
    .line 90
    aget-byte v0, v0, v2

    .line 91
    .line 92
    if-ne v0, v6, :cond_8

    .line 93
    .line 94
    add-int/lit8 v8, v8, 0x2

    .line 95
    .line 96
    move v2, v8

    .line 97
    :cond_8
    if-eqz v7, :cond_9

    .line 98
    .line 99
    invoke-virtual {p1, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iput v2, p0, La9/a;->b:I

    .line 103
    .line 104
    :cond_9
    if-eqz v7, :cond_a

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_a
    const/4 v4, 0x0

    .line 108
    :goto_5
    return v4
.end method

.method public static o(La9/a;I)[B
    .locals 9

    .line 1
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, La9/a;->b:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    add-int/lit8 v3, p1, -0x1

    .line 9
    .line 10
    if-lez p1, :cond_6

    .line 11
    .line 12
    move p1, v1

    .line 13
    :goto_1
    array-length v4, v0

    .line 14
    const/16 v5, 0xa

    .line 15
    .line 16
    if-le v4, p1, :cond_4

    .line 17
    .line 18
    add-int/lit8 v4, p1, 0x1

    .line 19
    .line 20
    aget-byte p1, v0, p1

    .line 21
    .line 22
    const/16 v6, 0xd

    .line 23
    .line 24
    if-eq p1, v6, :cond_1

    .line 25
    .line 26
    if-ne p1, v5, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    move p1, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_2
    sub-int p1, v4, v1

    .line 32
    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    new-array v2, p1, [B

    .line 39
    .line 40
    invoke-static {v0, v1, v2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    :cond_2
    move p1, v4

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    if-lez p1, :cond_2

    .line 46
    .line 47
    array-length v7, v2

    .line 48
    add-int/2addr v7, p1

    .line 49
    new-array v7, v7, [B

    .line 50
    .line 51
    array-length v8, v2

    .line 52
    invoke-static {v2, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    array-length v6, v2

    .line 56
    invoke-static {v0, v1, v7, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, La9/h0;->d([B)V

    .line 60
    .line 61
    .line 62
    move p1, v4

    .line 63
    move-object v2, v7

    .line 64
    :cond_4
    :goto_3
    array-length v1, v0

    .line 65
    if-ge p1, v1, :cond_5

    .line 66
    .line 67
    aget-byte v1, v0, p1

    .line 68
    .line 69
    if-ne v1, v5, :cond_5

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    :cond_5
    move v1, p1

    .line 74
    move p1, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_6
    if-eqz v2, :cond_7

    .line 77
    .line 78
    iput v1, p0, La9/a;->b:I

    .line 79
    .line 80
    :cond_7
    return-object v2
.end method

.method public static p(Lm7/e;[BLjava/lang/String;)La9/r;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, La9/a;

    .line 4
    .line 5
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 6
    .line 7
    .line 8
    array-length p1, p1

    .line 9
    invoke-virtual {v2, p1}, La9/a;->r(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, La9/a;->l()[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v3, La9/h0;->a:[B

    .line 17
    .line 18
    array-length v3, p1

    .line 19
    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    new-instance v5, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v5, p1, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    const-string p1, ""

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p0, La9/n;

    .line 45
    .line 46
    const-string p1, "pubkeyblob type ["

    .line 47
    .line 48
    const-string v0, "] does not match expected type ["

    .line 49
    .line 50
    const-string v1, "]"

    .line 51
    .line 52
    invoke-static {p1, v5, v0, p2, v1}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    :goto_0
    move-object p2, v5

    .line 61
    :goto_1
    const-string p1, "ssh-rsa"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v3, 0x0

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, La9/a;->g()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    new-array p2, p1, [B

    .line 75
    .line 76
    invoke-virtual {v2, p1, p2}, La9/a;->e(I[B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, La9/a;->g()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    new-array v0, p1, [B

    .line 84
    .line 85
    invoke-virtual {v2, p1, v0}, La9/a;->e(I[B)V

    .line 86
    .line 87
    .line 88
    new-instance p1, La9/x;

    .line 89
    .line 90
    invoke-direct {p1, p0, v0, p2, v3}, La9/x;-><init>(Lm7/e;[B[B[B)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_3
    const-string p1, "ssh-dss"

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    invoke-virtual {v2}, La9/a;->g()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    new-array v5, p1, [B

    .line 107
    .line 108
    invoke-virtual {v2, p1, v5}, La9/a;->e(I[B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, La9/a;->g()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    new-array v6, p1, [B

    .line 116
    .line 117
    invoke-virtual {v2, p1, v6}, La9/a;->e(I[B)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, La9/a;->g()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    new-array v7, p1, [B

    .line 125
    .line 126
    invoke-virtual {v2, p1, v7}, La9/a;->e(I[B)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, La9/a;->g()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    new-array v8, p1, [B

    .line 134
    .line 135
    invoke-virtual {v2, p1, v8}, La9/a;->e(I[B)V

    .line 136
    .line 137
    .line 138
    new-instance p1, La9/s;

    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    move-object v3, p1

    .line 142
    move-object v4, p0

    .line 143
    invoke-direct/range {v3 .. v9}, La9/s;-><init>(Lm7/e;[B[B[B[B[B)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_4
    const-string p1, "ecdsa-sha2-nistp256"

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_9

    .line 154
    .line 155
    const-string p1, "ecdsa-sha2-nistp384"

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_9

    .line 162
    .line 163
    const-string p1, "ecdsa-sha2-nistp521"

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    const-string p1, "ssh-ed25519"

    .line 173
    .line 174
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_7

    .line 179
    .line 180
    const-string v4, "ssh-ed448"

    .line 181
    .line 182
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_6

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    new-instance p0, La9/n;

    .line 190
    .line 191
    const-string p1, "key type "

    .line 192
    .line 193
    const-string v0, " is not supported"

    .line 194
    .line 195
    invoke-static {p1, p2, v0}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p0

    .line 203
    :cond_7
    :goto_2
    invoke-virtual {v2}, La9/a;->g()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    new-array v5, v4, [B

    .line 208
    .line 209
    invoke-virtual {v2, v4, v5}, La9/a;->e(I[B)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_8

    .line 217
    .line 218
    new-instance p1, La9/u;

    .line 219
    .line 220
    invoke-direct {p1, p0, v5, v3, v1}, La9/u;-><init>(Lm7/e;[B[BI)V

    .line 221
    .line 222
    .line 223
    return-object p1

    .line 224
    :cond_8
    new-instance p1, La9/u;

    .line 225
    .line 226
    invoke-direct {p1, p0, v5, v3, v0}, La9/u;-><init>(Lm7/e;[B[BI)V

    .line 227
    .line 228
    .line 229
    return-object p1

    .line 230
    :cond_9
    :goto_3
    invoke-virtual {v2}, La9/a;->l()[B

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-virtual {v2}, La9/a;->g()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-virtual {v2}, La9/a;->d()I

    .line 239
    .line 240
    .line 241
    sub-int/2addr p1, v0

    .line 242
    div-int/lit8 p1, p1, 0x2

    .line 243
    .line 244
    new-array v9, p1, [B

    .line 245
    .line 246
    new-array v10, p1, [B

    .line 247
    .line 248
    invoke-virtual {v2, p1, v9}, La9/a;->e(I[B)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, p1, v10}, La9/a;->e(I[B)V

    .line 252
    .line 253
    .line 254
    new-instance p1, La9/t;

    .line 255
    .line 256
    const/4 v11, 0x0

    .line 257
    move-object v6, p1

    .line 258
    move-object v7, p0

    .line 259
    invoke-direct/range {v6 .. v11}, La9/t;-><init>(Lm7/e;[B[B[B[B)V

    .line 260
    .line 261
    .line 262
    return-object p1
.end method

.method public static q(I[B[B)I
    .locals 2

    .line 1
    add-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput-byte v1, p1, p0

    .line 5
    .line 6
    array-length p0, p2

    .line 7
    invoke-static {v0, p0, p1}, La9/r;->r(II[B)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    array-length v1, p2

    .line 13
    invoke-static {p2, v0, p1, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    array-length p1, p2

    .line 17
    add-int/2addr p0, p1

    .line 18
    return p0
.end method

.method public static r(II[B)I
    .locals 4

    .line 1
    invoke-static {p1}, La9/r;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p0, 0x1

    .line 10
    .line 11
    int-to-byte p1, p1

    .line 12
    aput-byte p1, p2, p0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, p0, 0x1

    .line 16
    .line 17
    or-int/lit16 v2, v0, 0x80

    .line 18
    .line 19
    int-to-byte v2, v2

    .line 20
    aput-byte v2, p2, p0

    .line 21
    .line 22
    add-int p0, v1, v0

    .line 23
    .line 24
    :goto_0
    if-lez v0, :cond_1

    .line 25
    .line 26
    add-int v2, v1, v0

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    and-int/lit16 v3, p1, 0xff

    .line 31
    .line 32
    int-to-byte v3, v3

    .line 33
    aput-byte v3, p2, v2

    .line 34
    .line 35
    ushr-int/lit8 p1, p1, 0x8

    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return p0
.end method


# virtual methods
.method public final a(La9/w;)V
    .locals 1

    .line 1
    iget-object v0, p1, La9/r;->f:[B

    .line 2
    .line 3
    iput-object v0, p0, La9/r;->f:[B

    .line 4
    .line 5
    iget v0, p1, La9/r;->a:I

    .line 6
    .line 7
    iput v0, p0, La9/r;->a:I

    .line 8
    .line 9
    iget-object p1, p1, La9/r;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, La9/r;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public c([B)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, La9/r;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    new-array v2, v0, [B

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0}, La9/r;->f()V

    .line 16
    .line 17
    .line 18
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :catch_0
    :try_start_1
    iget-object v0, p0, La9/r;->c:Lm7/e;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v0, La9/l;->f:Lgf/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, La9/r;->m([B)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iput-boolean v3, p0, La9/r;->d:Z

    .line 36
    .line 37
    iget-object p1, p0, La9/r;->e:[B

    .line 38
    .line 39
    invoke-static {p1}, La9/h0;->d([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-static {v2}, La9/h0;->d([B)V

    .line 46
    .line 47
    .line 48
    iget-boolean p1, p0, La9/r;->d:Z

    .line 49
    .line 50
    xor-int/2addr p1, v1

    .line 51
    return p1

    .line 52
    :goto_1
    invoke-static {v2}, La9/h0;->d([B)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    return-void
.end method

.method public abstract e()[B
.end method

.method public final declared-synchronized f()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    const-string v1, "3des-cbc"

    .line 4
    .line 5
    invoke-static {v1}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, La9/f;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :catch_0
    :try_start_1
    iget-object v1, p0, La9/r;->c:Lm7/e;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v1, La9/l;->f:Lgf/g;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :goto_0
    :try_start_2
    const-string v1, "md5"

    .line 47
    .line 48
    invoke-static {v1}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-class v2, La9/g;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    throw v0

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :catch_1
    :try_start_3
    iget-object v1, p0, La9/r;->c:Lm7/e;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v1, La9/l;->f:Lgf/g;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    throw v0
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, La9/r;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract g()I
.end method

.method public abstract h()[B
.end method

.method public abstract m([B)Z
.end method
