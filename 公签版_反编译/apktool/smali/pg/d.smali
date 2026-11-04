.class public final Lpg/d;
.super Lmg/a;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public final c:Ljava/util/zip/CRC32;

.field public d:Z

.field public final e:Ljava/io/FilterInputStream;

.field public f:Ljava/util/zip/Inflater;

.field public final g:[B

.field public final h:Lpg/e;

.field public final i:Lwg/c;

.field public final j:Lwg/c;


# direct methods
.method public constructor <init>(Lpg/c;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    invoke-direct/range {p0 .. p0}, Lmg/a;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v5, 0x2000

    .line 12
    .line 13
    new-array v5, v5, [B

    .line 14
    .line 15
    iput-object v5, v0, Lpg/d;->a:[B

    .line 16
    .line 17
    new-instance v5, Ljava/util/zip/CRC32;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v5, v0, Lpg/d;->c:Ljava/util/zip/CRC32;

    .line 23
    .line 24
    new-instance v5, Ljava/util/zip/Inflater;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-direct {v5, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v5, v0, Lpg/d;->f:Ljava/util/zip/Inflater;

    .line 31
    .line 32
    new-array v5, v6, [B

    .line 33
    .line 34
    iput-object v5, v0, Lpg/d;->g:[B

    .line 35
    .line 36
    sget v5, Lxg/b;->i:I

    .line 37
    .line 38
    new-instance v5, Lxg/a;

    .line 39
    .line 40
    invoke-direct {v5}, Lxg/a;-><init>()V

    .line 41
    .line 42
    .line 43
    move-object/from16 v7, p1

    .line 44
    .line 45
    iget-object v8, v7, Ltg/b;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v8, Ltg/b;

    .line 48
    .line 49
    if-eqz v8, :cond_e

    .line 50
    .line 51
    invoke-virtual/range {p1 .. p1}, Ltg/d;->Q0()[Ljava/nio/file/OpenOption;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v8, v7}, Ltg/b;->N0([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v5, v7}, Ltg/b;->P0(Ljava/io/InputStream;)V

    .line 60
    .line 61
    .line 62
    new-instance v7, Lxg/b;

    .line 63
    .line 64
    invoke-direct {v7, v5}, Lxg/b;-><init>(Lxg/a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Lxg/b;->markSupported()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 75
    .line 76
    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .line 78
    .line 79
    move-object v7, v5

    .line 80
    :goto_0
    iput-object v7, v0, Lpg/d;->e:Ljava/io/FilterInputStream;

    .line 81
    .line 82
    sget v5, Lpg/c;->e:I

    .line 83
    .line 84
    sget-object v5, Lpg/f;->a:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    sget-object v8, Lwg/b;->I0:Lwg/c;

    .line 87
    .line 88
    iput-object v8, v0, Lpg/d;->i:Lwg/c;

    .line 89
    .line 90
    iput-object v8, v0, Lpg/d;->j:Lwg/c;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const/16 v9, 0x1f

    .line 97
    .line 98
    if-ne v8, v9, :cond_d

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/16 v9, 0x8b

    .line 105
    .line 106
    if-ne v8, v9, :cond_d

    .line 107
    .line 108
    new-instance v8, Lpg/e;

    .line 109
    .line 110
    invoke-direct {v8}, Lpg/e;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v8, v0, Lpg/d;->h:Lpg/e;

    .line 114
    .line 115
    sget v9, Lsg/a;->a:I

    .line 116
    .line 117
    iput-object v5, v8, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 118
    .line 119
    new-instance v5, Ljava/io/DataInputStream;

    .line 120
    .line 121
    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-ne v7, v3, :cond_c

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    and-int/lit16 v8, v7, 0xe0

    .line 135
    .line 136
    if-nez v8, :cond_b

    .line 137
    .line 138
    iget-object v8, v0, Lpg/d;->h:Lpg/e;

    .line 139
    .line 140
    invoke-static {v5}, Lrg/b;->b(Ljava/io/DataInputStream;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v9

    .line 144
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v9, v10}, Lj$/time/Instant;->ofEpochSecond(J)Lj$/time/Instant;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    iput-object v9, v8, Lpg/e;->g:Lj$/time/Instant;

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    const/16 v9, 0x9

    .line 158
    .line 159
    if-eq v8, v2, :cond_2

    .line 160
    .line 161
    if-eq v8, v4, :cond_1

    .line 162
    .line 163
    iget-object v8, v0, Lpg/d;->h:Lpg/e;

    .line 164
    .line 165
    const/4 v10, -0x1

    .line 166
    invoke-virtual {v8, v10}, Lpg/e;->b(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_1
    iget-object v8, v0, Lpg/d;->h:Lpg/e;

    .line 171
    .line 172
    invoke-virtual {v8, v6}, Lpg/e;->b(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    iget-object v8, v0, Lpg/d;->h:Lpg/e;

    .line 177
    .line 178
    invoke-virtual {v8, v9}, Lpg/e;->b(I)V

    .line 179
    .line 180
    .line 181
    :goto_1
    iget-object v8, v0, Lpg/d;->h:Lpg/e;

    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    const/16 v11, 0xc

    .line 191
    .line 192
    const/16 v12, 0xff

    .line 193
    .line 194
    if-eq v10, v12, :cond_3

    .line 195
    .line 196
    packed-switch v10, :pswitch_data_0

    .line 197
    .line 198
    .line 199
    :cond_3
    const/16 v9, 0xc

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :pswitch_0
    const/4 v9, 0x1

    .line 203
    goto :goto_2

    .line 204
    :pswitch_1
    const/16 v9, 0x8

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :pswitch_2
    const/16 v9, 0xa

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :pswitch_3
    const/4 v9, 0x4

    .line 211
    goto :goto_2

    .line 212
    :pswitch_4
    const/16 v9, 0xf

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :pswitch_5
    const/4 v9, 0x7

    .line 216
    goto :goto_2

    .line 217
    :pswitch_6
    const/4 v9, 0x6

    .line 218
    goto :goto_2

    .line 219
    :pswitch_7
    const/4 v9, 0x3

    .line 220
    goto :goto_2

    .line 221
    :pswitch_8
    const/16 v9, 0xd

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :pswitch_9
    const/16 v9, 0xb

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :pswitch_a
    const/16 v9, 0xe

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :pswitch_b
    const/4 v9, 0x2

    .line 231
    goto :goto_2

    .line 232
    :pswitch_c
    const/4 v9, 0x5

    .line 233
    :goto_2
    :pswitch_d
    iput v9, v8, Lpg/e;->h:I

    .line 234
    .line 235
    and-int/lit8 v8, v7, 0x4

    .line 236
    .line 237
    if-eqz v8, :cond_7

    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    shl-int/2addr v9, v3

    .line 248
    or-int/2addr v8, v9

    .line 249
    new-array v9, v8, [B

    .line 250
    .line 251
    invoke-virtual {v5, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 252
    .line 253
    .line 254
    iget-object v10, v0, Lpg/d;->h:Lpg/e;

    .line 255
    .line 256
    new-instance v11, Lpg/b;

    .line 257
    .line 258
    invoke-direct {v11}, Lpg/b;-><init>()V

    .line 259
    .line 260
    .line 261
    const/4 v13, 0x0

    .line 262
    const/4 v14, 0x0

    .line 263
    :goto_3
    add-int/lit8 v15, v8, -0x4

    .line 264
    .line 265
    if-gt v14, v15, :cond_5

    .line 266
    .line 267
    add-int/lit8 v15, v14, 0x1

    .line 268
    .line 269
    aget-byte v6, v9, v14

    .line 270
    .line 271
    add-int/lit8 v16, v14, 0x2

    .line 272
    .line 273
    aget-byte v15, v9, v15

    .line 274
    .line 275
    add-int/lit8 v17, v14, 0x3

    .line 276
    .line 277
    aget-byte v1, v9, v16

    .line 278
    .line 279
    and-int/2addr v1, v12

    .line 280
    add-int/2addr v14, v4

    .line 281
    aget-byte v4, v9, v17

    .line 282
    .line 283
    and-int/2addr v4, v12

    .line 284
    shl-int/2addr v4, v3

    .line 285
    or-int/2addr v1, v4

    .line 286
    sub-int v4, v8, v14

    .line 287
    .line 288
    if-gt v1, v4, :cond_4

    .line 289
    .line 290
    new-array v4, v1, [B

    .line 291
    .line 292
    invoke-static {v9, v14, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    add-int/2addr v14, v1

    .line 296
    iget-object v1, v11, Lpg/b;->a:Ljava/util/ArrayList;

    .line 297
    .line 298
    new-instance v12, Lpg/a;

    .line 299
    .line 300
    invoke-direct {v12, v4, v6, v15}, Lpg/a;-><init>([BBB)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iput v14, v11, Lpg/b;->b:I

    .line 307
    .line 308
    const/4 v1, 0x3

    .line 309
    const/4 v4, 0x4

    .line 310
    const/4 v6, 0x1

    .line 311
    const/16 v12, 0xff

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_4
    new-instance v2, Ljava/io/IOException;

    .line 315
    .line 316
    const-string v3, "Extra subfield lenght exceeds remaining bytes in extra: "

    .line 317
    .line 318
    const-string v5, " > "

    .line 319
    .line 320
    invoke-static {v3, v1, v4, v5}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v2

    .line 328
    :cond_5
    if-lt v14, v8, :cond_6

    .line 329
    .line 330
    iput-object v11, v10, Lpg/e;->c:Lpg/b;

    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_6
    new-instance v1, Ljava/io/IOException;

    .line 334
    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v3, ""

    .line 338
    .line 339
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sub-int/2addr v8, v14

    .line 343
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v3, " remaining bytes not used to parse an extra subfield."

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v1

    .line 359
    :cond_7
    :goto_4
    and-int/lit8 v1, v7, 0x8

    .line 360
    .line 361
    if-eqz v1, :cond_8

    .line 362
    .line 363
    iget-object v1, v0, Lpg/d;->h:Lpg/e;

    .line 364
    .line 365
    new-instance v3, Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v5}, Lpg/d;->A(Ljava/io/DataInputStream;)[B

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    iget-object v6, v0, Lpg/d;->h:Lpg/e;

    .line 372
    .line 373
    iget-object v6, v6, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 374
    .line 375
    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v3}, Lpg/e;->a(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iput-object v3, v1, Lpg/e;->d:Ljava/lang/String;

    .line 382
    .line 383
    :cond_8
    and-int/lit8 v1, v7, 0x10

    .line 384
    .line 385
    if-eqz v1, :cond_9

    .line 386
    .line 387
    iget-object v1, v0, Lpg/d;->h:Lpg/e;

    .line 388
    .line 389
    new-instance v3, Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {v5}, Lpg/d;->A(Ljava/io/DataInputStream;)[B

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    iget-object v6, v0, Lpg/d;->h:Lpg/e;

    .line 396
    .line 397
    iget-object v6, v6, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 398
    .line 399
    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v3}, Lpg/e;->a(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iput-object v3, v1, Lpg/e;->a:Ljava/lang/String;

    .line 406
    .line 407
    :cond_9
    and-int/lit8 v1, v7, 0x2

    .line 408
    .line 409
    if-eqz v1, :cond_a

    .line 410
    .line 411
    iget-object v1, v0, Lpg/d;->h:Lpg/e;

    .line 412
    .line 413
    const/4 v2, 0x1

    .line 414
    iput-boolean v2, v1, Lpg/e;->f:Z

    .line 415
    .line 416
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    .line 417
    .line 418
    .line 419
    :cond_a
    iget-object v1, v0, Lpg/d;->f:Ljava/util/zip/Inflater;

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lpg/d;->c:Ljava/util/zip/CRC32;

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 427
    .line 428
    .line 429
    iget-object v1, v0, Lpg/d;->i:Lwg/c;

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 436
    .line 437
    const-string v2, "Reserved flags are set in the .gz header."

    .line 438
    .line 439
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v1

    .line 443
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 444
    .line 445
    const-string v2, "Unsupported compression method "

    .line 446
    .line 447
    const-string v3, " in the .gz header"

    .line 448
    .line 449
    invoke-static {v2, v7, v3}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v1

    .line 457
    :cond_d
    new-instance v1, Ljava/io/IOException;

    .line 458
    .line 459
    const-string v2, "Input is not in the .gz format."

    .line 460
    .line 461
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v1

    .line 465
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 466
    .line 467
    const-string v2, "origin == null"

    .line 468
    .line 469
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto :goto_6

    .line 473
    :goto_5
    throw v1

    .line 474
    :goto_6
    goto :goto_5

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method

.method public static A(Ljava/io/DataInputStream;)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :catchall_1
    move-exception v2

    .line 33
    const-class v3, Ljava/lang/Throwable;

    .line 34
    .line 35
    :try_start_2
    const-string v4, "addSuppressed"

    .line 36
    .line 37
    new-array v5, v1, [Ljava/lang/Class;

    .line 38
    .line 39
    aput-object v3, v5, v0

    .line 40
    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v2, v1, v0

    .line 48
    .line 49
    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    :goto_2
    goto :goto_4

    .line 53
    :goto_3
    throw p0

    .line 54
    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    .line 10
    .line 11
    :cond_0
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 12
    .line 13
    iget-object v1, p0, Lpg/d;->e:Ljava/io/FilterInputStream;

    .line 14
    .line 15
    if-eq v1, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lpg/d;->g:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lpg/d;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public final read([BII)I
    .locals 9

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lpg/d;->d:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-lez p3, :cond_9

    .line 3
    iget-object v3, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    iget-object v4, p0, Lpg/d;->e:Ljava/io/FilterInputStream;

    if-eqz v3, :cond_4

    .line 4
    iget-object v3, p0, Lpg/d;->a:[B

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->mark(I)V

    .line 5
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iput v5, p0, Lpg/d;->b:I

    if-eq v5, v2, :cond_3

    .line 6
    iget-object v6, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v6, v3, v0, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 8
    :cond_4
    :goto_0
    :try_start_0
    iget-object v3, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v5, p0, Lpg/d;->c:Ljava/util/zip/CRC32;

    invoke-virtual {v5, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    add-int/2addr v1, v3

    .line 10
    iget-object v3, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 12
    iget p1, p0, Lpg/d;->b:I

    iget-object p2, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    .line 13
    new-instance p3, Lah/a;

    const/16 v3, 0xa

    invoke-direct {p3, v3}, Lah/a;-><init>(I)V

    invoke-static {v4, p1, p2, p3}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    move-result-wide v6

    cmp-long p3, v6, p1

    if-nez p3, :cond_8

    .line 14
    iput v0, p0, Lpg/d;->b:I

    .line 15
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    invoke-static {p1}, Lrg/b;->b(Ljava/io/DataInputStream;)J

    move-result-wide p2

    .line 17
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v0, p2, v3

    if-nez v0, :cond_7

    .line 18
    invoke-static {p1}, Lrg/b;->b(Ljava/io/DataInputStream;)J

    move-result-wide v3

    .line 19
    iget-object p1, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-nez p1, :cond_6

    .line 20
    iget-object p1, p0, Lpg/d;->h:Lpg/e;

    .line 21
    iput-wide p2, p1, Lpg/e;->i:J

    .line 22
    iput-wide v3, p1, Lpg/e;->j:J

    .line 23
    iget-object p1, p0, Lpg/d;->j:Lwg/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object p1, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lpg/d;->f:Ljava/util/zip/Inflater;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lpg/d;->d:Z

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    return v2

    .line 27
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Gzip-compressed data is corrupt (uncompressed size mismatch)."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Gzip-compressed data is corrupt (CRC32 error)."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Gzip-compressed data is corrupt."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    return v1
.end method
