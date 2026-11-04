.class public final Ljg/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final j:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/nio/channels/SeekableByteChannel;

.field public final c:Ljg/e;

.field public d:I

.field public e:I

.field public f:Ljava/io/InputStream;

.field public g:[B

.field public final h:Ljava/util/ArrayList;

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Ljg/t;->j:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BI)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const-wide/16 v2, 0x20

    .line 6
    .line 7
    const-wide/16 v10, 0x0

    .line 8
    .line 9
    const/4 v12, -0x1

    .line 10
    const/4 v14, 0x0

    .line 11
    const/4 v15, 0x1

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput v12, v1, Ljg/t;->d:I

    .line 16
    .line 17
    iput v12, v1, Ljg/t;->e:I

    .line 18
    .line 19
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v4, v1, Ljg/t;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    move-object/from16 v4, p1

    .line 27
    .line 28
    iput-object v4, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 29
    .line 30
    move-object/from16 v4, p2

    .line 31
    .line 32
    iput-object v4, v1, Ljg/t;->a:Ljava/lang/String;

    .line 33
    .line 34
    move/from16 v4, p4

    .line 35
    .line 36
    iput v4, v1, Ljg/t;->i:I

    .line 37
    .line 38
    const/16 v4, 0xc

    .line 39
    .line 40
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1, v4}, Ljg/t;->O(Ljava/nio/ByteBuffer;)V

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x6

    .line 54
    new-array v5, v5, [B

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    sget-object v6, Ljg/t;->j:[B

    .line 60
    .line 61
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_4f

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v5, :cond_4e

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    int-to-long v4, v4

    .line 82
    const-wide v6, 0xffffffffL

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    and-long/2addr v4, v6

    .line 88
    cmp-long v8, v4, v10

    .line 89
    .line 90
    if-nez v8, :cond_2

    .line 91
    .line 92
    iget-object v8, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 93
    .line 94
    invoke-static {v8}, La2/s0;->c(Ljava/nio/channels/SeekableByteChannel;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v12

    .line 98
    const/16 v8, 0x14

    .line 99
    .line 100
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v1, v8}, Ljg/t;->O(Ljava/nio/ByteBuffer;)V

    .line 105
    .line 106
    .line 107
    iget-object v9, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 108
    .line 109
    invoke-static {v9, v12, v13}, La2/s0;->v(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 110
    .line 111
    .line 112
    :cond_0
    invoke-virtual {v8}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_1

    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 126
    .line 127
    const-string v2, "archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely."

    .line 128
    .line 129
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_2
    :goto_0
    new-instance v8, Ljava/io/DataInputStream;

    .line 134
    .line 135
    sget v9, Lxg/d;->g:I

    .line 136
    .line 137
    new-instance v9, Lxg/c;

    .line 138
    .line 139
    invoke-direct {v9}, Lxg/c;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v12, Ljava/util/zip/CRC32;

    .line 143
    .line 144
    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v12, v9, Lxg/c;->e:Ljava/util/zip/CRC32;

    .line 148
    .line 149
    new-instance v12, Ljg/f;

    .line 150
    .line 151
    iget-object v13, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 152
    .line 153
    const-wide/16 v6, 0x14

    .line 154
    .line 155
    invoke-direct {v12, v13, v6, v7}, Ljg/f;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 156
    .line 157
    .line 158
    new-instance v13, Ltg/a;

    .line 159
    .line 160
    invoke-direct {v13, v15, v12}, Ltg/a;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iput-object v13, v9, Ltg/b;->b:Ljava/lang/Object;

    .line 164
    .line 165
    iput-wide v6, v9, Lxg/c;->f:J

    .line 166
    .line 167
    iput-wide v4, v9, Lxg/c;->g:J

    .line 168
    .line 169
    new-instance v4, Lxg/d;

    .line 170
    .line 171
    invoke-direct {v4, v9}, Lxg/d;-><init>(Lxg/c;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {v8, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 175
    .line 176
    .line 177
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v19

    .line 185
    cmp-long v4, v19, v10

    .line 186
    .line 187
    if-ltz v4, :cond_4d

    .line 188
    .line 189
    add-long v4, v19, v2

    .line 190
    .line 191
    iget-object v6, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 192
    .line 193
    invoke-static {v6}, La2/s0;->C(Ljava/nio/channels/SeekableByteChannel;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v6

    .line 197
    cmp-long v9, v4, v6

    .line 198
    .line 199
    if-gtz v9, :cond_4d

    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    .line 202
    .line 203
    .line 204
    move-result-wide v4

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v21

    .line 209
    add-long v4, v19, v21

    .line 210
    .line 211
    cmp-long v6, v4, v19

    .line 212
    .line 213
    if-ltz v6, :cond_4c

    .line 214
    .line 215
    add-long/2addr v4, v2

    .line 216
    iget-object v6, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 217
    .line 218
    invoke-static {v6}, La2/s0;->C(Ljava/nio/channels/SeekableByteChannel;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v6

    .line 222
    cmp-long v9, v4, v6

    .line 223
    .line 224
    if-gtz v9, :cond_4c

    .line 225
    .line 226
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    int-to-long v4, v4

    .line 235
    const-wide v6, 0xffffffffL

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    and-long v23, v4, v6

    .line 241
    .line 242
    new-instance v4, Ljg/a0;

    .line 243
    .line 244
    move-object/from16 v18, v4

    .line 245
    .line 246
    invoke-direct/range {v18 .. v24}, Ljg/a0;-><init>(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 250
    .line 251
    .line 252
    const-string v5, "nextHeaderSize"

    .line 253
    .line 254
    iget-wide v6, v4, Ljg/a0;->b:J

    .line 255
    .line 256
    invoke-static {v6, v7, v5}, Ljg/t;->r(JLjava/lang/String;)I

    .line 257
    .line 258
    .line 259
    long-to-int v5, v6

    .line 260
    iget-object v6, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 261
    .line 262
    iget-wide v7, v4, Ljg/a0;->a:J

    .line 263
    .line 264
    add-long/2addr v7, v2

    .line 265
    invoke-static {v6, v7, v8}, La2/s0;->v(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 266
    .line 267
    .line 268
    iget-object v6, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 269
    .line 270
    invoke-static {v6}, La2/s0;->c(Ljava/nio/channels/SeekableByteChannel;)J

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    new-instance v8, Ljava/util/zip/CheckedInputStream;

    .line 275
    .line 276
    iget-object v9, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 277
    .line 278
    invoke-static {v9}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    new-instance v12, Ljava/util/zip/CRC32;

    .line 283
    .line 284
    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-direct {v8, v9, v12}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 288
    .line 289
    .line 290
    int-to-long v12, v5

    .line 291
    invoke-virtual {v8, v12, v13}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    .line 292
    .line 293
    .line 294
    move-result-wide v18

    .line 295
    cmp-long v9, v18, v12

    .line 296
    .line 297
    if-nez v9, :cond_4b

    .line 298
    .line 299
    invoke-virtual {v8}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-interface {v8}, Ljava/util/zip/Checksum;->getValue()J

    .line 304
    .line 305
    .line 306
    move-result-wide v8

    .line 307
    iget-wide v12, v4, Ljg/a0;->c:J

    .line 308
    .line 309
    cmp-long v4, v12, v8

    .line 310
    .line 311
    if-nez v4, :cond_4a

    .line 312
    .line 313
    iget-object v4, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 314
    .line 315
    invoke-static {v4, v6, v7}, La2/s0;->v(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 316
    .line 317
    .line 318
    new-instance v4, Ljg/e;

    .line 319
    .line 320
    invoke-direct {v4}, Ljg/e;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 328
    .line 329
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-virtual {v1, v5}, Ljg/t;->O(Ljava/nio/ByteBuffer;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    const/16 v7, 0x17

    .line 341
    .line 342
    const-wide/16 v12, 0x1

    .line 343
    .line 344
    iget v9, v1, Ljg/t;->i:I

    .line 345
    .line 346
    if-ne v6, v7, :cond_b

    .line 347
    .line 348
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    new-instance v7, Ljg/r;

    .line 353
    .line 354
    invoke-direct {v7}, Ljg/r;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v5, v7}, Ljg/t;->R(Ljava/nio/ByteBuffer;Ljg/r;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v9}, Ljg/r;->a(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    .line 365
    .line 366
    invoke-static {v5, v4}, Ljg/t;->P(Ljava/nio/ByteBuffer;Ljg/e;)V

    .line 367
    .line 368
    .line 369
    iget-object v5, v4, Ljg/e;->e:[Ljg/m;

    .line 370
    .line 371
    invoke-static {v5}, Lzg/a;->b(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    if-nez v5, :cond_a

    .line 376
    .line 377
    iget-object v5, v4, Ljg/e;->b:[J

    .line 378
    .line 379
    invoke-static {v5}, Lzg/a;->b(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-nez v5, :cond_9

    .line 384
    .line 385
    iget-object v5, v4, Ljg/e;->e:[Ljg/m;

    .line 386
    .line 387
    aget-object v8, v5, v14

    .line 388
    .line 389
    iget-wide v5, v4, Ljg/e;->a:J

    .line 390
    .line 391
    add-long/2addr v5, v2

    .line 392
    iget-object v2, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 393
    .line 394
    invoke-static {v2, v5, v6}, La2/s0;->v(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 395
    .line 396
    .line 397
    new-instance v2, Ljg/f;

    .line 398
    .line 399
    iget-object v3, v1, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 400
    .line 401
    iget-object v4, v4, Ljg/e;->b:[J

    .line 402
    .line 403
    aget-wide v5, v4, v14

    .line 404
    .line 405
    invoke-direct {v2, v3, v5, v6}, Ljg/f;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v8}, Ljg/m;->a()Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v18

    .line 416
    move-object v3, v2

    .line 417
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_6

    .line 422
    .line 423
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    move-object v6, v2

    .line 428
    check-cast v6, Ljg/g;

    .line 429
    .line 430
    iget-wide v4, v6, Ljg/g;->b:J

    .line 431
    .line 432
    cmp-long v2, v4, v12

    .line 433
    .line 434
    if-nez v2, :cond_5

    .line 435
    .line 436
    iget-wide v4, v6, Ljg/g;->c:J

    .line 437
    .line 438
    cmp-long v2, v4, v12

    .line 439
    .line 440
    if-nez v2, :cond_5

    .line 441
    .line 442
    iget-object v2, v8, Ljg/m;->a:[Ljg/g;

    .line 443
    .line 444
    if-eqz v2, :cond_4

    .line 445
    .line 446
    const/4 v2, 0x0

    .line 447
    :goto_2
    iget-object v4, v8, Ljg/m;->a:[Ljg/g;

    .line 448
    .line 449
    array-length v5, v4

    .line 450
    if-ge v2, v5, :cond_4

    .line 451
    .line 452
    aget-object v4, v4, v2

    .line 453
    .line 454
    if-ne v4, v6, :cond_3

    .line 455
    .line 456
    iget-object v4, v8, Ljg/m;->f:[J

    .line 457
    .line 458
    aget-wide v19, v4, v2

    .line 459
    .line 460
    move-wide/from16 v4, v19

    .line 461
    .line 462
    goto :goto_3

    .line 463
    :cond_3
    add-int/2addr v2, v15

    .line 464
    goto :goto_2

    .line 465
    :cond_4
    move-wide v4, v10

    .line 466
    :goto_3
    iget v7, v1, Ljg/t;->i:I

    .line 467
    .line 468
    iget-object v2, v1, Ljg/t;->a:Ljava/lang/String;

    .line 469
    .line 470
    move/from16 v19, v7

    .line 471
    .line 472
    move-object/from16 v7, p3

    .line 473
    .line 474
    move-object v12, v8

    .line 475
    move/from16 v8, v19

    .line 476
    .line 477
    invoke-static/range {v2 .. v8}, Ljg/l;->a(Ljava/lang/String;Ljava/io/InputStream;JLjg/g;[BI)Ljava/io/InputStream;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    move-object v8, v12

    .line 482
    const-wide/16 v12, 0x1

    .line 483
    .line 484
    goto :goto_1

    .line 485
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 486
    .line 487
    const-string v2, "Multi input/output stream coders are not yet supported"

    .line 488
    .line 489
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v0

    .line 493
    :cond_6
    move-object v12, v8

    .line 494
    iget-boolean v2, v12, Ljg/m;->g:Z

    .line 495
    .line 496
    if-eqz v2, :cond_7

    .line 497
    .line 498
    sget v2, Lxg/d;->g:I

    .line 499
    .line 500
    new-instance v2, Lxg/c;

    .line 501
    .line 502
    invoke-direct {v2}, Lxg/c;-><init>()V

    .line 503
    .line 504
    .line 505
    new-instance v4, Ljava/util/zip/CRC32;

    .line 506
    .line 507
    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 508
    .line 509
    .line 510
    iput-object v4, v2, Lxg/c;->e:Ljava/util/zip/CRC32;

    .line 511
    .line 512
    invoke-virtual {v2, v3}, Ltg/b;->P0(Ljava/io/InputStream;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v12}, Ljg/m;->b()J

    .line 516
    .line 517
    .line 518
    move-result-wide v3

    .line 519
    iput-wide v3, v2, Lxg/c;->f:J

    .line 520
    .line 521
    iget-wide v3, v12, Ljg/m;->h:J

    .line 522
    .line 523
    iput-wide v3, v2, Lxg/c;->g:J

    .line 524
    .line 525
    new-instance v3, Lxg/d;

    .line 526
    .line 527
    invoke-direct {v3, v2}, Lxg/d;-><init>(Lxg/c;)V

    .line 528
    .line 529
    .line 530
    :cond_7
    const-string v2, "unpackSize"

    .line 531
    .line 532
    invoke-virtual {v12}, Ljg/m;->b()J

    .line 533
    .line 534
    .line 535
    move-result-wide v4

    .line 536
    invoke-static {v4, v5, v2}, Ljg/t;->r(JLjava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    invoke-static {v2, v3}, Lrg/d;->a(ILjava/io/InputStream;)[B

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    array-length v5, v4

    .line 545
    if-lt v5, v2, :cond_8

    .line 546
    .line 547
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 548
    .line 549
    .line 550
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 555
    .line 556
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    new-instance v4, Ljg/e;

    .line 561
    .line 562
    invoke-direct {v4}, Ljg/e;-><init>()V

    .line 563
    .line 564
    .line 565
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    goto :goto_4

    .line 570
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 571
    .line 572
    const-string v2, "premature end of stream"

    .line 573
    .line 574
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v0

    .line 578
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 579
    .line 580
    const-string v2, "no packed streams, can\'t read encoded header"

    .line 581
    .line 582
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v0

    .line 586
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 587
    .line 588
    const-string v2, "no folders, can\'t read encoded header"

    .line 589
    .line 590
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    throw v0

    .line 594
    :cond_b
    :goto_4
    if-ne v6, v15, :cond_49

    .line 595
    .line 596
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    new-instance v3, Ljg/r;

    .line 601
    .line 602
    invoke-direct {v3}, Ljg/r;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 606
    .line 607
    .line 608
    move-result v6

    .line 609
    const/4 v7, 0x2

    .line 610
    if-ne v6, v7, :cond_e

    .line 611
    .line 612
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 613
    .line 614
    .line 615
    move-result-wide v6

    .line 616
    :goto_5
    cmp-long v8, v6, v10

    .line 617
    .line 618
    if-eqz v8, :cond_d

    .line 619
    .line 620
    const-string v6, "propertySize"

    .line 621
    .line 622
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 623
    .line 624
    .line 625
    move-result-wide v7

    .line 626
    invoke-static {v7, v8, v6}, Ljg/t;->r(JLjava/lang/String;)I

    .line 627
    .line 628
    .line 629
    move-result v6

    .line 630
    int-to-long v6, v6

    .line 631
    invoke-static {v5, v6, v7}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 632
    .line 633
    .line 634
    move-result-wide v12

    .line 635
    cmp-long v8, v12, v6

    .line 636
    .line 637
    if-ltz v8, :cond_c

    .line 638
    .line 639
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 640
    .line 641
    .line 642
    move-result-wide v6

    .line 643
    goto :goto_5

    .line 644
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 645
    .line 646
    const-string v2, "invalid property size"

    .line 647
    .line 648
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw v0

    .line 652
    :cond_d
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 653
    .line 654
    .line 655
    move-result v6

    .line 656
    :cond_e
    const-string v7, "Additional streams unsupported"

    .line 657
    .line 658
    const/4 v8, 0x3

    .line 659
    if-eq v6, v8, :cond_48

    .line 660
    .line 661
    const/4 v12, 0x4

    .line 662
    if-ne v6, v12, :cond_f

    .line 663
    .line 664
    invoke-virtual {v1, v5, v3}, Ljg/t;->R(Ljava/nio/ByteBuffer;Ljg/r;)V

    .line 665
    .line 666
    .line 667
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 668
    .line 669
    .line 670
    move-result v6

    .line 671
    :cond_f
    const/16 v13, 0x8

    .line 672
    .line 673
    const/4 v8, 0x5

    .line 674
    if-ne v6, v8, :cond_10

    .line 675
    .line 676
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 677
    .line 678
    .line 679
    move-result-wide v10

    .line 680
    const-string v6, "numFiles"

    .line 681
    .line 682
    invoke-static {v10, v11, v6}, Ljg/t;->r(JLjava/lang/String;)I

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    iput v6, v3, Ljg/r;->h:I

    .line 687
    .line 688
    const/4 v6, -0x1

    .line 689
    :goto_6
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 690
    .line 691
    .line 692
    move-result v10

    .line 693
    if-nez v10, :cond_11

    .line 694
    .line 695
    iget v10, v3, Ljg/r;->h:I

    .line 696
    .line 697
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    .line 698
    .line 699
    .line 700
    move-result v6

    .line 701
    sub-int/2addr v10, v6

    .line 702
    iput v10, v3, Ljg/r;->i:I

    .line 703
    .line 704
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 705
    .line 706
    .line 707
    move-result v6

    .line 708
    :cond_10
    move v11, v9

    .line 709
    goto/16 :goto_9

    .line 710
    .line 711
    :cond_11
    move v11, v9

    .line 712
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 713
    .line 714
    .line 715
    move-result-wide v8

    .line 716
    const-string v14, "Not implemented"

    .line 717
    .line 718
    packed-switch v10, :pswitch_data_0

    .line 719
    .line 720
    .line 721
    :pswitch_0
    invoke-static {v5, v8, v9}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 722
    .line 723
    .line 724
    move-result-wide v22

    .line 725
    cmp-long v14, v22, v8

    .line 726
    .line 727
    if-ltz v14, :cond_12

    .line 728
    .line 729
    goto/16 :goto_8

    .line 730
    .line 731
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 732
    .line 733
    const-string v2, "Incomplete property of type "

    .line 734
    .line 735
    invoke-static {v10, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    throw v0

    .line 743
    :pswitch_1
    invoke-static {v5, v8, v9}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 744
    .line 745
    .line 746
    move-result-wide v22

    .line 747
    cmp-long v10, v22, v8

    .line 748
    .line 749
    if-ltz v10, :cond_13

    .line 750
    .line 751
    goto/16 :goto_8

    .line 752
    .line 753
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 754
    .line 755
    const-string v2, "Incomplete kDummy property"

    .line 756
    .line 757
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    throw v0

    .line 761
    :pswitch_2
    new-instance v0, Ljava/io/IOException;

    .line 762
    .line 763
    const-string v2, "kStartPos is unsupported, please report"

    .line 764
    .line 765
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    throw v0

    .line 769
    :pswitch_3
    iget v8, v3, Ljg/r;->h:I

    .line 770
    .line 771
    invoke-static {v5, v8}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 772
    .line 773
    .line 774
    move-result-object v8

    .line 775
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    .line 776
    .line 777
    .line 778
    move-result v8

    .line 779
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 780
    .line 781
    .line 782
    move-result v9

    .line 783
    if-nez v9, :cond_15

    .line 784
    .line 785
    mul-int/lit8 v8, v8, 0x4

    .line 786
    .line 787
    int-to-long v8, v8

    .line 788
    invoke-static {v5, v8, v9}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 789
    .line 790
    .line 791
    move-result-wide v22

    .line 792
    cmp-long v10, v22, v8

    .line 793
    .line 794
    if-ltz v10, :cond_14

    .line 795
    .line 796
    goto/16 :goto_8

    .line 797
    .line 798
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 799
    .line 800
    const-string v2, "invalid windows attributes size"

    .line 801
    .line 802
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    throw v0

    .line 806
    :cond_15
    new-instance v0, Ljava/io/IOException;

    .line 807
    .line 808
    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    throw v0

    .line 812
    :pswitch_4
    iget v8, v3, Ljg/r;->h:I

    .line 813
    .line 814
    invoke-static {v5, v8}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 815
    .line 816
    .line 817
    move-result-object v8

    .line 818
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    .line 819
    .line 820
    .line 821
    move-result v8

    .line 822
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 823
    .line 824
    .line 825
    move-result v9

    .line 826
    if-nez v9, :cond_17

    .line 827
    .line 828
    mul-int/lit8 v8, v8, 0x8

    .line 829
    .line 830
    int-to-long v8, v8

    .line 831
    invoke-static {v5, v8, v9}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 832
    .line 833
    .line 834
    move-result-wide v22

    .line 835
    cmp-long v10, v22, v8

    .line 836
    .line 837
    if-ltz v10, :cond_16

    .line 838
    .line 839
    goto/16 :goto_8

    .line 840
    .line 841
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 842
    .line 843
    const-string v2, "invalid modification dates size"

    .line 844
    .line 845
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    throw v0

    .line 849
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 850
    .line 851
    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    throw v0

    .line 855
    :pswitch_5
    iget v8, v3, Ljg/r;->h:I

    .line 856
    .line 857
    invoke-static {v5, v8}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 858
    .line 859
    .line 860
    move-result-object v8

    .line 861
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    .line 862
    .line 863
    .line 864
    move-result v8

    .line 865
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 866
    .line 867
    .line 868
    move-result v9

    .line 869
    if-nez v9, :cond_19

    .line 870
    .line 871
    mul-int/lit8 v8, v8, 0x8

    .line 872
    .line 873
    int-to-long v8, v8

    .line 874
    invoke-static {v5, v8, v9}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 875
    .line 876
    .line 877
    move-result-wide v22

    .line 878
    cmp-long v10, v22, v8

    .line 879
    .line 880
    if-ltz v10, :cond_18

    .line 881
    .line 882
    goto/16 :goto_8

    .line 883
    .line 884
    :cond_18
    new-instance v0, Ljava/io/IOException;

    .line 885
    .line 886
    const-string v2, "invalid access dates size"

    .line 887
    .line 888
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    throw v0

    .line 892
    :cond_19
    new-instance v0, Ljava/io/IOException;

    .line 893
    .line 894
    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    throw v0

    .line 898
    :pswitch_6
    iget v8, v3, Ljg/r;->h:I

    .line 899
    .line 900
    invoke-static {v5, v8}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 901
    .line 902
    .line 903
    move-result-object v8

    .line 904
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    .line 905
    .line 906
    .line 907
    move-result v8

    .line 908
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 909
    .line 910
    .line 911
    move-result v9

    .line 912
    if-nez v9, :cond_1b

    .line 913
    .line 914
    mul-int/lit8 v8, v8, 0x8

    .line 915
    .line 916
    int-to-long v8, v8

    .line 917
    invoke-static {v5, v8, v9}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 918
    .line 919
    .line 920
    move-result-wide v22

    .line 921
    cmp-long v10, v22, v8

    .line 922
    .line 923
    if-ltz v10, :cond_1a

    .line 924
    .line 925
    goto/16 :goto_8

    .line 926
    .line 927
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    .line 928
    .line 929
    const-string v2, "invalid creation dates size"

    .line 930
    .line 931
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    throw v0

    .line 935
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    .line 936
    .line 937
    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    throw v0

    .line 941
    :pswitch_7
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 942
    .line 943
    .line 944
    move-result v10

    .line 945
    if-nez v10, :cond_20

    .line 946
    .line 947
    const-wide/16 v22, 0x1

    .line 948
    .line 949
    sub-long v8, v8, v22

    .line 950
    .line 951
    const-string v10, "file names length"

    .line 952
    .line 953
    invoke-static {v8, v9, v10}, Ljg/t;->r(JLjava/lang/String;)I

    .line 954
    .line 955
    .line 956
    move-result v8

    .line 957
    and-int/lit8 v9, v8, 0x1

    .line 958
    .line 959
    if-nez v9, :cond_1f

    .line 960
    .line 961
    const/4 v9, 0x0

    .line 962
    const/4 v10, 0x0

    .line 963
    :goto_7
    if-ge v9, v8, :cond_1d

    .line 964
    .line 965
    const/4 v14, 0x2

    .line 966
    invoke-static {v5, v14}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getChar()C

    .line 970
    .line 971
    .line 972
    move-result v17

    .line 973
    if-nez v17, :cond_1c

    .line 974
    .line 975
    add-int/2addr v10, v15

    .line 976
    :cond_1c
    add-int/2addr v9, v14

    .line 977
    goto :goto_7

    .line 978
    :cond_1d
    iget v8, v3, Ljg/r;->h:I

    .line 979
    .line 980
    if-ne v10, v8, :cond_1e

    .line 981
    .line 982
    goto :goto_8

    .line 983
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    .line 984
    .line 985
    const-string v2, "Invalid number of file names ("

    .line 986
    .line 987
    const-string v4, " instead of "

    .line 988
    .line 989
    invoke-static {v2, v10, v4}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    move-result-object v2

    .line 993
    iget v3, v3, Ljg/r;->h:I

    .line 994
    .line 995
    const-string v4, ")"

    .line 996
    .line 997
    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw v0

    .line 1005
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    .line 1006
    .line 1007
    const-string v2, "File names length invalid"

    .line 1008
    .line 1009
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    throw v0

    .line 1013
    :cond_20
    new-instance v0, Ljava/io/IOException;

    .line 1014
    .line 1015
    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    throw v0

    .line 1019
    :pswitch_8
    const/4 v8, -0x1

    .line 1020
    if-eq v6, v8, :cond_21

    .line 1021
    .line 1022
    invoke-static {v5, v6}, Ljg/t;->N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1023
    .line 1024
    .line 1025
    goto :goto_8

    .line 1026
    :cond_21
    new-instance v0, Ljava/io/IOException;

    .line 1027
    .line 1028
    const-string v2, "Header format error: kEmptyStream must appear before kAnti"

    .line 1029
    .line 1030
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    throw v0

    .line 1034
    :pswitch_9
    const/4 v8, -0x1

    .line 1035
    if-eq v6, v8, :cond_22

    .line 1036
    .line 1037
    invoke-static {v5, v6}, Ljg/t;->N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1038
    .line 1039
    .line 1040
    goto :goto_8

    .line 1041
    :cond_22
    new-instance v0, Ljava/io/IOException;

    .line 1042
    .line 1043
    const-string v2, "Header format error: kEmptyStream must appear before kEmptyFile"

    .line 1044
    .line 1045
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    throw v0

    .line 1049
    :pswitch_a
    iget v6, v3, Ljg/r;->h:I

    .line 1050
    .line 1051
    invoke-static {v5, v6}, Ljg/t;->N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v6

    .line 1055
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 1056
    .line 1057
    .line 1058
    move-result v6

    .line 1059
    :goto_8
    move v9, v11

    .line 1060
    const/4 v8, 0x5

    .line 1061
    const/4 v14, 0x0

    .line 1062
    goto/16 :goto_6

    .line 1063
    .line 1064
    :goto_9
    if-nez v6, :cond_47

    .line 1065
    .line 1066
    move v8, v11

    .line 1067
    invoke-virtual {v3, v8}, Ljg/r;->a(I)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1071
    .line 1072
    .line 1073
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1074
    .line 1075
    .line 1076
    move-result v2

    .line 1077
    const/4 v3, 0x2

    .line 1078
    if-ne v2, v3, :cond_24

    .line 1079
    .line 1080
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 1081
    .line 1082
    .line 1083
    move-result-wide v2

    .line 1084
    :goto_a
    const-wide/16 v8, 0x0

    .line 1085
    .line 1086
    cmp-long v6, v2, v8

    .line 1087
    .line 1088
    if-eqz v6, :cond_23

    .line 1089
    .line 1090
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v2

    .line 1094
    long-to-int v3, v2

    .line 1095
    new-array v2, v3, [B

    .line 1096
    .line 1097
    invoke-static {v5, v3}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1101
    .line 1102
    .line 1103
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 1104
    .line 1105
    .line 1106
    move-result-wide v2

    .line 1107
    goto :goto_a

    .line 1108
    :cond_23
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1109
    .line 1110
    .line 1111
    move-result v2

    .line 1112
    :cond_24
    const/4 v3, 0x3

    .line 1113
    if-eq v2, v3, :cond_46

    .line 1114
    .line 1115
    if-ne v2, v12, :cond_25

    .line 1116
    .line 1117
    invoke-static {v5, v4}, Ljg/t;->P(Ljava/nio/ByteBuffer;Ljg/e;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1121
    .line 1122
    .line 1123
    move-result v2

    .line 1124
    :cond_25
    const/4 v3, 0x5

    .line 1125
    if-ne v2, v3, :cond_3a

    .line 1126
    .line 1127
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 1128
    .line 1129
    .line 1130
    move-result-wide v2

    .line 1131
    long-to-int v3, v2

    .line 1132
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1133
    .line 1134
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    const/4 v6, 0x0

    .line 1138
    const/4 v7, 0x0

    .line 1139
    const/4 v8, 0x0

    .line 1140
    :goto_b
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1141
    .line 1142
    .line 1143
    move-result v9

    .line 1144
    if-nez v9, :cond_3b

    .line 1145
    .line 1146
    const/4 v9, 0x0

    .line 1147
    const/4 v10, 0x0

    .line 1148
    const/4 v11, 0x0

    .line 1149
    :goto_c
    if-ge v9, v3, :cond_2f

    .line 1150
    .line 1151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v12

    .line 1155
    invoke-virtual {v2, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v12

    .line 1159
    check-cast v12, Ljg/n;

    .line 1160
    .line 1161
    if-nez v12, :cond_26

    .line 1162
    .line 1163
    :goto_d
    const-wide/16 v0, 0x0

    .line 1164
    .line 1165
    goto/16 :goto_13

    .line 1166
    .line 1167
    :cond_26
    if-eqz v6, :cond_28

    .line 1168
    .line 1169
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v13

    .line 1173
    if-nez v13, :cond_27

    .line 1174
    .line 1175
    goto :goto_e

    .line 1176
    :cond_27
    const/4 v13, 0x0

    .line 1177
    goto :goto_f

    .line 1178
    :cond_28
    :goto_e
    const/4 v13, 0x1

    .line 1179
    :goto_f
    iput-boolean v13, v12, Ljg/n;->b:Z

    .line 1180
    .line 1181
    if-eqz v13, :cond_2b

    .line 1182
    .line 1183
    iget-object v13, v4, Ljg/e;->f:Lv3/f;

    .line 1184
    .line 1185
    if-eqz v13, :cond_2a

    .line 1186
    .line 1187
    const/4 v14, 0x0

    .line 1188
    iput-boolean v14, v12, Ljg/n;->c:Z

    .line 1189
    .line 1190
    iput-boolean v14, v12, Ljg/n;->d:Z

    .line 1191
    .line 1192
    iget-object v13, v13, Lv3/f;->c:Ljava/lang/Object;

    .line 1193
    .line 1194
    check-cast v13, Ljava/util/BitSet;

    .line 1195
    .line 1196
    invoke-virtual {v13, v11}, Ljava/util/BitSet;->get(I)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v13

    .line 1200
    iput-boolean v13, v12, Ljg/n;->m:Z

    .line 1201
    .line 1202
    iget-object v13, v4, Ljg/e;->f:Lv3/f;

    .line 1203
    .line 1204
    iget-object v14, v13, Lv3/f;->d:Ljava/lang/Object;

    .line 1205
    .line 1206
    check-cast v14, [J

    .line 1207
    .line 1208
    aget-wide v0, v14, v11

    .line 1209
    .line 1210
    iput-wide v0, v12, Ljg/n;->n:J

    .line 1211
    .line 1212
    iget-object v0, v13, Lv3/f;->b:Ljava/lang/Object;

    .line 1213
    .line 1214
    check-cast v0, [J

    .line 1215
    .line 1216
    aget-wide v13, v0, v11

    .line 1217
    .line 1218
    iput-wide v13, v12, Ljg/n;->p:J

    .line 1219
    .line 1220
    const-wide/16 v0, 0x0

    .line 1221
    .line 1222
    cmp-long v12, v13, v0

    .line 1223
    .line 1224
    if-ltz v12, :cond_29

    .line 1225
    .line 1226
    add-int/2addr v11, v15

    .line 1227
    goto :goto_d

    .line 1228
    :cond_29
    new-instance v0, Ljava/io/IOException;

    .line 1229
    .line 1230
    const-string v1, "broken archive, entry with negative size"

    .line 1231
    .line 1232
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    throw v0

    .line 1236
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    .line 1237
    .line 1238
    const-string v1, "Archive contains file with streams but no subStreamsInfo"

    .line 1239
    .line 1240
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    throw v0

    .line 1244
    :cond_2b
    if-eqz v7, :cond_2d

    .line 1245
    .line 1246
    invoke-virtual {v7, v10}, Ljava/util/BitSet;->get(I)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    if-nez v0, :cond_2c

    .line 1251
    .line 1252
    goto :goto_10

    .line 1253
    :cond_2c
    const/4 v0, 0x0

    .line 1254
    goto :goto_11

    .line 1255
    :cond_2d
    :goto_10
    const/4 v0, 0x1

    .line 1256
    :goto_11
    iput-boolean v0, v12, Ljg/n;->c:Z

    .line 1257
    .line 1258
    if-eqz v8, :cond_2e

    .line 1259
    .line 1260
    invoke-virtual {v8, v10}, Ljava/util/BitSet;->get(I)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v0

    .line 1264
    if-eqz v0, :cond_2e

    .line 1265
    .line 1266
    const/4 v0, 0x1

    .line 1267
    goto :goto_12

    .line 1268
    :cond_2e
    const/4 v0, 0x0

    .line 1269
    :goto_12
    iput-boolean v0, v12, Ljg/n;->d:Z

    .line 1270
    .line 1271
    const/4 v1, 0x0

    .line 1272
    iput-boolean v1, v12, Ljg/n;->m:Z

    .line 1273
    .line 1274
    const-wide/16 v0, 0x0

    .line 1275
    .line 1276
    iput-wide v0, v12, Ljg/n;->p:J

    .line 1277
    .line 1278
    add-int/2addr v10, v15

    .line 1279
    :goto_13
    add-int/2addr v9, v15

    .line 1280
    move-object/from16 v1, p0

    .line 1281
    .line 1282
    move-object/from16 v0, p3

    .line 1283
    .line 1284
    goto/16 :goto_c

    .line 1285
    .line 1286
    :cond_2f
    const-wide/16 v0, 0x0

    .line 1287
    .line 1288
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v2

    .line 1292
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v2

    .line 1296
    new-instance v3, Leh/h;

    .line 1297
    .line 1298
    invoke-direct {v3, v15}, Leh/h;-><init>(I)V

    .line 1299
    .line 1300
    .line 1301
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    new-instance v3, Ljg/p;

    .line 1306
    .line 1307
    invoke-direct {v3}, Ljg/p;-><init>()V

    .line 1308
    .line 1309
    .line 1310
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v2

    .line 1314
    check-cast v2, [Ljg/n;

    .line 1315
    .line 1316
    iput-object v2, v4, Ljg/e;->g:[Ljg/n;

    .line 1317
    .line 1318
    iget-object v2, v4, Ljg/e;->e:[Ljg/m;

    .line 1319
    .line 1320
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 1321
    .line 1322
    .line 1323
    move-result v2

    .line 1324
    new-array v7, v2, [I

    .line 1325
    .line 1326
    const/4 v3, 0x0

    .line 1327
    const/4 v6, 0x0

    .line 1328
    :goto_14
    if-ge v3, v2, :cond_30

    .line 1329
    .line 1330
    aput v6, v7, v3

    .line 1331
    .line 1332
    iget-object v8, v4, Ljg/e;->e:[Ljg/m;

    .line 1333
    .line 1334
    aget-object v8, v8, v3

    .line 1335
    .line 1336
    iget-object v8, v8, Ljg/m;->e:[J

    .line 1337
    .line 1338
    array-length v8, v8

    .line 1339
    add-int/2addr v6, v8

    .line 1340
    add-int/2addr v3, v15

    .line 1341
    goto :goto_14

    .line 1342
    :cond_30
    iget-object v3, v4, Ljg/e;->b:[J

    .line 1343
    .line 1344
    array-length v3, v3

    .line 1345
    new-array v8, v3, [J

    .line 1346
    .line 1347
    move-wide v10, v0

    .line 1348
    const/4 v0, 0x0

    .line 1349
    :goto_15
    if-ge v0, v3, :cond_31

    .line 1350
    .line 1351
    aput-wide v10, v8, v0

    .line 1352
    .line 1353
    iget-object v1, v4, Ljg/e;->b:[J

    .line 1354
    .line 1355
    aget-wide v12, v1, v0

    .line 1356
    .line 1357
    add-long/2addr v10, v12

    .line 1358
    add-int/2addr v0, v15

    .line 1359
    goto :goto_15

    .line 1360
    :cond_31
    new-array v9, v2, [I

    .line 1361
    .line 1362
    iget-object v0, v4, Ljg/e;->g:[Ljg/n;

    .line 1363
    .line 1364
    array-length v0, v0

    .line 1365
    new-array v10, v0, [I

    .line 1366
    .line 1367
    const/4 v0, 0x0

    .line 1368
    const/4 v1, 0x0

    .line 1369
    const/4 v2, 0x0

    .line 1370
    :goto_16
    iget-object v3, v4, Ljg/e;->g:[Ljg/n;

    .line 1371
    .line 1372
    array-length v6, v3

    .line 1373
    if-ge v0, v6, :cond_39

    .line 1374
    .line 1375
    aget-object v3, v3, v0

    .line 1376
    .line 1377
    iget-boolean v3, v3, Ljg/n;->b:Z

    .line 1378
    .line 1379
    if-nez v3, :cond_32

    .line 1380
    .line 1381
    if-nez v1, :cond_32

    .line 1382
    .line 1383
    const/4 v11, -0x1

    .line 1384
    aput v11, v10, v0

    .line 1385
    .line 1386
    goto :goto_1a

    .line 1387
    :cond_32
    const/4 v11, -0x1

    .line 1388
    if-nez v1, :cond_36

    .line 1389
    .line 1390
    :goto_17
    iget-object v3, v4, Ljg/e;->e:[Ljg/m;

    .line 1391
    .line 1392
    array-length v6, v3

    .line 1393
    if-ge v2, v6, :cond_34

    .line 1394
    .line 1395
    aput v0, v9, v2

    .line 1396
    .line 1397
    aget-object v6, v3, v2

    .line 1398
    .line 1399
    iget v6, v6, Ljg/m;->i:I

    .line 1400
    .line 1401
    if-lez v6, :cond_33

    .line 1402
    .line 1403
    goto :goto_18

    .line 1404
    :cond_33
    add-int/2addr v2, v15

    .line 1405
    goto :goto_17

    .line 1406
    :cond_34
    :goto_18
    array-length v3, v3

    .line 1407
    if-ge v2, v3, :cond_35

    .line 1408
    .line 1409
    goto :goto_19

    .line 1410
    :cond_35
    new-instance v0, Ljava/io/IOException;

    .line 1411
    .line 1412
    const-string v1, "Too few folders in archive"

    .line 1413
    .line 1414
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    throw v0

    .line 1418
    :cond_36
    :goto_19
    aput v2, v10, v0

    .line 1419
    .line 1420
    iget-object v3, v4, Ljg/e;->g:[Ljg/n;

    .line 1421
    .line 1422
    aget-object v3, v3, v0

    .line 1423
    .line 1424
    iget-boolean v3, v3, Ljg/n;->b:Z

    .line 1425
    .line 1426
    if-nez v3, :cond_37

    .line 1427
    .line 1428
    goto :goto_1a

    .line 1429
    :cond_37
    add-int/2addr v1, v15

    .line 1430
    iget-object v3, v4, Ljg/e;->e:[Ljg/m;

    .line 1431
    .line 1432
    aget-object v3, v3, v2

    .line 1433
    .line 1434
    iget v3, v3, Ljg/m;->i:I

    .line 1435
    .line 1436
    if-lt v1, v3, :cond_38

    .line 1437
    .line 1438
    add-int/2addr v2, v15

    .line 1439
    const/4 v1, 0x0

    .line 1440
    :cond_38
    :goto_1a
    add-int/2addr v0, v15

    .line 1441
    goto :goto_16

    .line 1442
    :cond_39
    new-instance v0, La2/w0;

    .line 1443
    .line 1444
    const/4 v11, 0x7

    .line 1445
    move-object v6, v0

    .line 1446
    invoke-direct/range {v6 .. v11}, La2/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1447
    .line 1448
    .line 1449
    iput-object v0, v4, Ljg/e;->h:La2/w0;

    .line 1450
    .line 1451
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1452
    .line 1453
    .line 1454
    :cond_3a
    const/4 v0, 0x0

    .line 1455
    goto/16 :goto_22

    .line 1456
    .line 1457
    :cond_3b
    const/4 v11, -0x1

    .line 1458
    invoke-static {v5}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 1459
    .line 1460
    .line 1461
    move-result-wide v0

    .line 1462
    const/16 v10, 0x19

    .line 1463
    .line 1464
    if-eq v9, v10, :cond_43

    .line 1465
    .line 1466
    packed-switch v9, :pswitch_data_1

    .line 1467
    .line 1468
    .line 1469
    invoke-static {v5, v0, v1}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 1470
    .line 1471
    .line 1472
    goto/16 :goto_21

    .line 1473
    .line 1474
    :pswitch_b
    invoke-static {v5, v3}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v0

    .line 1478
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1479
    .line 1480
    .line 1481
    const/4 v1, 0x0

    .line 1482
    :goto_1b
    if-ge v1, v3, :cond_44

    .line 1483
    .line 1484
    invoke-static {v2, v1}, Ljg/t;->J(Ljava/util/LinkedHashMap;I)V

    .line 1485
    .line 1486
    .line 1487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v9

    .line 1491
    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v9

    .line 1495
    check-cast v9, Ljg/n;

    .line 1496
    .line 1497
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 1498
    .line 1499
    .line 1500
    move-result v10

    .line 1501
    iput-boolean v10, v9, Ljg/n;->k:Z

    .line 1502
    .line 1503
    if-eqz v10, :cond_3c

    .line 1504
    .line 1505
    invoke-static {v5, v12}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1509
    .line 1510
    .line 1511
    move-result v10

    .line 1512
    iput v10, v9, Ljg/n;->l:I

    .line 1513
    .line 1514
    :cond_3c
    add-int/2addr v1, v15

    .line 1515
    goto :goto_1b

    .line 1516
    :pswitch_c
    invoke-static {v5, v3}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1521
    .line 1522
    .line 1523
    const/4 v1, 0x0

    .line 1524
    :goto_1c
    if-ge v1, v3, :cond_44

    .line 1525
    .line 1526
    invoke-static {v2, v1}, Ljg/t;->J(Ljava/util/LinkedHashMap;I)V

    .line 1527
    .line 1528
    .line 1529
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v9

    .line 1533
    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v9

    .line 1537
    check-cast v9, Ljg/n;

    .line 1538
    .line 1539
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 1540
    .line 1541
    .line 1542
    move-result v10

    .line 1543
    iput-boolean v10, v9, Ljg/n;->f:Z

    .line 1544
    .line 1545
    if-eqz v10, :cond_3d

    .line 1546
    .line 1547
    invoke-static {v5, v13}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1551
    .line 1552
    .line 1553
    move-result-wide v22

    .line 1554
    invoke-static/range {v22 .. v23}, Lvg/b;->a(J)Ljava/nio/file/attribute/FileTime;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v10

    .line 1558
    iput-object v10, v9, Ljg/n;->i:Ljava/nio/file/attribute/FileTime;

    .line 1559
    .line 1560
    :cond_3d
    add-int/2addr v1, v15

    .line 1561
    goto :goto_1c

    .line 1562
    :pswitch_d
    invoke-static {v5, v3}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1567
    .line 1568
    .line 1569
    const/4 v1, 0x0

    .line 1570
    :goto_1d
    if-ge v1, v3, :cond_44

    .line 1571
    .line 1572
    invoke-static {v2, v1}, Ljg/t;->J(Ljava/util/LinkedHashMap;I)V

    .line 1573
    .line 1574
    .line 1575
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v9

    .line 1579
    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v9

    .line 1583
    check-cast v9, Ljg/n;

    .line 1584
    .line 1585
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v10

    .line 1589
    iput-boolean v10, v9, Ljg/n;->g:Z

    .line 1590
    .line 1591
    if-eqz v10, :cond_3e

    .line 1592
    .line 1593
    invoke-static {v5, v13}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1597
    .line 1598
    .line 1599
    move-result-wide v22

    .line 1600
    invoke-static/range {v22 .. v23}, Lvg/b;->a(J)Ljava/nio/file/attribute/FileTime;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v10

    .line 1604
    iput-object v10, v9, Ljg/n;->j:Ljava/nio/file/attribute/FileTime;

    .line 1605
    .line 1606
    :cond_3e
    add-int/2addr v1, v15

    .line 1607
    goto :goto_1d

    .line 1608
    :pswitch_e
    invoke-static {v5, v3}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v0

    .line 1612
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1613
    .line 1614
    .line 1615
    const/4 v1, 0x0

    .line 1616
    :goto_1e
    if-ge v1, v3, :cond_44

    .line 1617
    .line 1618
    invoke-static {v2, v1}, Ljg/t;->J(Ljava/util/LinkedHashMap;I)V

    .line 1619
    .line 1620
    .line 1621
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v9

    .line 1625
    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v9

    .line 1629
    check-cast v9, Ljg/n;

    .line 1630
    .line 1631
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 1632
    .line 1633
    .line 1634
    move-result v10

    .line 1635
    iput-boolean v10, v9, Ljg/n;->e:Z

    .line 1636
    .line 1637
    if-eqz v10, :cond_3f

    .line 1638
    .line 1639
    invoke-static {v5, v13}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1643
    .line 1644
    .line 1645
    move-result-wide v22

    .line 1646
    invoke-static/range {v22 .. v23}, Lvg/b;->a(J)Ljava/nio/file/attribute/FileTime;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v10

    .line 1650
    iput-object v10, v9, Ljg/n;->h:Ljava/nio/file/attribute/FileTime;

    .line 1651
    .line 1652
    :cond_3f
    add-int/2addr v1, v15

    .line 1653
    goto :goto_1e

    .line 1654
    :pswitch_f
    invoke-static {v5}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1655
    .line 1656
    .line 1657
    const-wide/16 v9, 0x1

    .line 1658
    .line 1659
    sub-long/2addr v0, v9

    .line 1660
    long-to-int v1, v0

    .line 1661
    new-array v0, v1, [B

    .line 1662
    .line 1663
    invoke-static {v5, v1}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 1664
    .line 1665
    .line 1666
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1667
    .line 1668
    .line 1669
    const/4 v9, 0x0

    .line 1670
    const/4 v10, 0x0

    .line 1671
    const/4 v14, 0x0

    .line 1672
    :goto_1f
    if-ge v14, v1, :cond_41

    .line 1673
    .line 1674
    aget-byte v16, v0, v14

    .line 1675
    .line 1676
    if-nez v16, :cond_40

    .line 1677
    .line 1678
    add-int/lit8 v16, v14, 0x1

    .line 1679
    .line 1680
    aget-byte v16, v0, v16

    .line 1681
    .line 1682
    if-nez v16, :cond_40

    .line 1683
    .line 1684
    invoke-static {v2, v10}, Ljg/t;->J(Ljava/util/LinkedHashMap;I)V

    .line 1685
    .line 1686
    .line 1687
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v11

    .line 1691
    invoke-virtual {v2, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v11

    .line 1695
    check-cast v11, Ljg/n;

    .line 1696
    .line 1697
    new-instance v12, Ljava/lang/String;

    .line 1698
    .line 1699
    sub-int v13, v14, v9

    .line 1700
    .line 1701
    sget-object v15, Lj$/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 1702
    .line 1703
    invoke-direct {v12, v0, v9, v13, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1704
    .line 1705
    .line 1706
    iput-object v12, v11, Ljg/n;->a:Ljava/lang/String;

    .line 1707
    .line 1708
    const/4 v11, 0x2

    .line 1709
    add-int/lit8 v13, v14, 0x2

    .line 1710
    .line 1711
    const/4 v9, 0x1

    .line 1712
    add-int/2addr v10, v9

    .line 1713
    move v9, v13

    .line 1714
    goto :goto_20

    .line 1715
    :cond_40
    const/4 v11, 0x2

    .line 1716
    :goto_20
    add-int/2addr v14, v11

    .line 1717
    const/4 v11, -0x1

    .line 1718
    const/4 v12, 0x4

    .line 1719
    const/16 v13, 0x8

    .line 1720
    .line 1721
    const/4 v15, 0x1

    .line 1722
    goto :goto_1f

    .line 1723
    :cond_41
    if-ne v9, v1, :cond_42

    .line 1724
    .line 1725
    if-ne v10, v3, :cond_42

    .line 1726
    .line 1727
    goto :goto_21

    .line 1728
    :cond_42
    new-instance v0, Ljava/io/IOException;

    .line 1729
    .line 1730
    const-string v1, "Error parsing file names"

    .line 1731
    .line 1732
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1733
    .line 1734
    .line 1735
    throw v0

    .line 1736
    :pswitch_10
    new-instance v0, Ljg/o;

    .line 1737
    .line 1738
    const/4 v1, 0x1

    .line 1739
    invoke-direct {v0, v1, v4}, Ljg/o;-><init>(ILjava/lang/Object;)V

    .line 1740
    .line 1741
    .line 1742
    sget v1, Lig/a;->a:I

    .line 1743
    .line 1744
    invoke-static {v6, v0}, Lhg/a;->a(Ljava/util/BitSet;Ljava/util/function/Supplier;)V

    .line 1745
    .line 1746
    .line 1747
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 1748
    .line 1749
    .line 1750
    move-result v0

    .line 1751
    invoke-static {v5, v0}, Ljg/t;->N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v0

    .line 1755
    move-object v8, v0

    .line 1756
    goto :goto_21

    .line 1757
    :pswitch_11
    new-instance v0, Ljg/o;

    .line 1758
    .line 1759
    const/4 v1, 0x0

    .line 1760
    invoke-direct {v0, v1, v4}, Ljg/o;-><init>(ILjava/lang/Object;)V

    .line 1761
    .line 1762
    .line 1763
    sget v1, Lig/a;->a:I

    .line 1764
    .line 1765
    invoke-static {v6, v0}, Lhg/a;->a(Ljava/util/BitSet;Ljava/util/function/Supplier;)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 1769
    .line 1770
    .line 1771
    move-result v0

    .line 1772
    invoke-static {v5, v0}, Ljg/t;->N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v0

    .line 1776
    move-object v7, v0

    .line 1777
    goto :goto_21

    .line 1778
    :pswitch_12
    invoke-static {v5, v3}, Ljg/t;->N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v0

    .line 1782
    move-object v6, v0

    .line 1783
    goto :goto_21

    .line 1784
    :cond_43
    invoke-static {v5, v0, v1}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 1785
    .line 1786
    .line 1787
    :cond_44
    :goto_21
    move-object/from16 v1, p0

    .line 1788
    .line 1789
    move-object/from16 v0, p3

    .line 1790
    .line 1791
    const/4 v12, 0x4

    .line 1792
    const/16 v13, 0x8

    .line 1793
    .line 1794
    const/4 v15, 0x1

    .line 1795
    goto/16 :goto_b

    .line 1796
    .line 1797
    :goto_22
    iput-object v0, v4, Ljg/e;->f:Lv3/f;

    .line 1798
    .line 1799
    move-object/from16 v1, p0

    .line 1800
    .line 1801
    iput-object v4, v1, Ljg/t;->c:Ljg/e;

    .line 1802
    .line 1803
    move-object/from16 v0, p3

    .line 1804
    .line 1805
    if-eqz v0, :cond_45

    .line 1806
    .line 1807
    array-length v2, v0

    .line 1808
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 1809
    .line 1810
    .line 1811
    move-result-object v0

    .line 1812
    iput-object v0, v1, Ljg/t;->g:[B

    .line 1813
    .line 1814
    goto :goto_23

    .line 1815
    :cond_45
    const/4 v0, 0x0

    .line 1816
    iput-object v0, v1, Ljg/t;->g:[B

    .line 1817
    .line 1818
    :goto_23
    return-void

    .line 1819
    :cond_46
    new-instance v0, Ljava/io/IOException;

    .line 1820
    .line 1821
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1822
    .line 1823
    .line 1824
    throw v0

    .line 1825
    :cond_47
    new-instance v0, Ljava/io/IOException;

    .line 1826
    .line 1827
    const-string v2, "Badly terminated header, found "

    .line 1828
    .line 1829
    invoke-static {v6, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v2

    .line 1833
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1834
    .line 1835
    .line 1836
    throw v0

    .line 1837
    :cond_48
    new-instance v0, Ljava/io/IOException;

    .line 1838
    .line 1839
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1840
    .line 1841
    .line 1842
    throw v0

    .line 1843
    :cond_49
    new-instance v0, Ljava/io/IOException;

    .line 1844
    .line 1845
    const-string v2, "Broken or unsupported archive: no Header"

    .line 1846
    .line 1847
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    throw v0

    .line 1851
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    .line 1852
    .line 1853
    const-string v2, "NextHeader CRC-32 mismatch"

    .line 1854
    .line 1855
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1856
    .line 1857
    .line 1858
    throw v0

    .line 1859
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    .line 1860
    .line 1861
    const-string v2, "Problem computing NextHeader CRC-32"

    .line 1862
    .line 1863
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1864
    .line 1865
    .line 1866
    throw v0

    .line 1867
    :catchall_0
    move-exception v0

    .line 1868
    move-object v2, v0

    .line 1869
    goto :goto_24

    .line 1870
    :cond_4c
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 1871
    .line 1872
    const-string v2, "nextHeaderSize is out of bounds"

    .line 1873
    .line 1874
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1875
    .line 1876
    .line 1877
    throw v0

    .line 1878
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    .line 1879
    .line 1880
    const-string v2, "nextHeaderOffset is out of bounds"

    .line 1881
    .line 1882
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1886
    :goto_24
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1887
    .line 1888
    .line 1889
    goto :goto_25

    .line 1890
    :catchall_1
    move-exception v0

    .line 1891
    move-object v3, v0

    .line 1892
    const-class v0, Ljava/lang/Throwable;

    .line 1893
    .line 1894
    :try_start_3
    const-string v4, "addSuppressed"

    .line 1895
    .line 1896
    const/4 v5, 0x1

    .line 1897
    new-array v6, v5, [Ljava/lang/Class;

    .line 1898
    .line 1899
    const/4 v7, 0x0

    .line 1900
    aput-object v0, v6, v7

    .line 1901
    .line 1902
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v0

    .line 1906
    new-array v4, v5, [Ljava/lang/Object;

    .line 1907
    .line 1908
    aput-object v3, v4, v7

    .line 1909
    .line 1910
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1911
    .line 1912
    .line 1913
    :catch_0
    :goto_25
    throw v2

    .line 1914
    :cond_4e
    new-instance v0, Ljava/io/IOException;

    .line 1915
    .line 1916
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v2

    .line 1920
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v3

    .line 1924
    const/4 v4, 0x2

    .line 1925
    new-array v4, v4, [Ljava/lang/Object;

    .line 1926
    .line 1927
    const/4 v5, 0x0

    .line 1928
    aput-object v2, v4, v5

    .line 1929
    .line 1930
    const/4 v2, 0x1

    .line 1931
    aput-object v3, v4, v2

    .line 1932
    .line 1933
    const-string v2, "Unsupported 7z version (%d,%d)"

    .line 1934
    .line 1935
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v2

    .line 1939
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1940
    .line 1941
    .line 1942
    throw v0

    .line 1943
    :cond_4f
    new-instance v0, Ljava/io/IOException;

    .line 1944
    .line 1945
    const-string v2, "Bad 7z signature"

    .line 1946
    .line 1947
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1948
    .line 1949
    .line 1950
    goto :goto_27

    .line 1951
    :goto_26
    throw v0

    .line 1952
    :goto_27
    goto :goto_26

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static A(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-lt p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p0, v1, v2

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    aput-object p1, v1, p0

    .line 26
    .line 27
    const-string p0, "remaining %,d < expectRemaining %,d"

    .line 28
    .line 29
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static J(Ljava/util/LinkedHashMap;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, La2/n;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, La2/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static L(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 2

    .line 1
    invoke-static {p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/util/BitSet;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0, p1}, Ljg/t;->N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_1
    return-object p0
.end method

.method public static N(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v2, p1, :cond_2

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v3, 0x80

    .line 19
    .line 20
    :cond_0
    and-int v5, v4, v3

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v5, 0x0

    .line 27
    :goto_1
    invoke-virtual {v0, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 28
    .line 29
    .line 30
    ushr-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-object v0
.end method

.method public static P(Ljava/nio/ByteBuffer;Ljg/e;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x6

    .line 10
    const/16 v4, 0x9

    .line 11
    .line 12
    const-wide v5, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v7, 0x4

    .line 18
    const/16 v8, 0xa

    .line 19
    .line 20
    if-ne v2, v3, :cond_5

    .line 21
    .line 22
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, v1, Ljg/e;->a:J

    .line 27
    .line 28
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    long-to-int v3, v2

    .line 33
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    new-array v2, v3, [J

    .line 40
    .line 41
    iput-object v2, v1, Ljg/e;->b:[J

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_0
    iget-object v10, v1, Ljg/e;->b:[J

    .line 45
    .line 46
    array-length v11, v10

    .line 47
    if-ge v2, v11, :cond_0

    .line 48
    .line 49
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v11

    .line 53
    aput-wide v11, v10, v2

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :cond_1
    if-ne v2, v8, :cond_4

    .line 63
    .line 64
    invoke-static {v0, v3}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, v1, Ljg/e;->c:Ljava/util/BitSet;

    .line 69
    .line 70
    new-array v2, v3, [J

    .line 71
    .line 72
    iput-object v2, v1, Ljg/e;->d:[J

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    :goto_1
    if-ge v2, v3, :cond_3

    .line 76
    .line 77
    iget-object v10, v1, Ljg/e;->c:Ljava/util/BitSet;

    .line 78
    .line 79
    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    iget-object v10, v1, Ljg/e;->d:[J

    .line 86
    .line 87
    invoke-static {v0, v7}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    int-to-long v11, v11

    .line 95
    and-long/2addr v11, v5

    .line 96
    aput-wide v11, v10, v2

    .line 97
    .line 98
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    :cond_5
    const/4 v10, 0x7

    .line 109
    if-ne v2, v10, :cond_1a

    .line 110
    .line 111
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 112
    .line 113
    .line 114
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v13

    .line 118
    long-to-int v2, v13

    .line 119
    new-array v10, v2, [Ljg/m;

    .line 120
    .line 121
    iput-object v10, v1, Ljg/e;->e:[Ljg/m;

    .line 122
    .line 123
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 124
    .line 125
    .line 126
    const/4 v13, 0x0

    .line 127
    :goto_2
    if-ge v13, v2, :cond_14

    .line 128
    .line 129
    new-instance v14, Ljg/m;

    .line 130
    .line 131
    invoke-direct {v14}, Ljg/m;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v11

    .line 138
    long-to-int v12, v11

    .line 139
    new-array v11, v12, [Ljg/g;

    .line 140
    .line 141
    const-wide/16 v4, 0x0

    .line 142
    .line 143
    const-wide/16 v7, 0x0

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    :goto_3
    const-wide/16 v18, 0x1

    .line 147
    .line 148
    if-ge v15, v12, :cond_c

    .line 149
    .line 150
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    and-int/lit8 v3, v6, 0xf

    .line 155
    .line 156
    and-int/lit8 v20, v6, 0x10

    .line 157
    .line 158
    if-nez v20, :cond_6

    .line 159
    .line 160
    const/16 v20, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_6
    const/16 v20, 0x0

    .line 164
    .line 165
    :goto_4
    and-int/lit8 v21, v6, 0x20

    .line 166
    .line 167
    if-eqz v21, :cond_7

    .line 168
    .line 169
    const/16 v21, 0x1

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    const/16 v21, 0x0

    .line 173
    .line 174
    :goto_5
    and-int/lit16 v6, v6, 0x80

    .line 175
    .line 176
    if-eqz v6, :cond_8

    .line 177
    .line 178
    const/4 v6, 0x1

    .line 179
    goto :goto_6

    .line 180
    :cond_8
    const/4 v6, 0x0

    .line 181
    :goto_6
    new-array v9, v3, [B

    .line 182
    .line 183
    invoke-static {v0, v3}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 187
    .line 188
    .line 189
    if-eqz v20, :cond_9

    .line 190
    .line 191
    move-wide/from16 v24, v18

    .line 192
    .line 193
    move-wide/from16 v26, v24

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_9
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v18

    .line 200
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v22

    .line 204
    move-wide/from16 v24, v18

    .line 205
    .line 206
    move-wide/from16 v26, v22

    .line 207
    .line 208
    :goto_7
    add-long v4, v4, v24

    .line 209
    .line 210
    add-long v7, v7, v26

    .line 211
    .line 212
    move-wide/from16 v18, v4

    .line 213
    .line 214
    if-eqz v21, :cond_a

    .line 215
    .line 216
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v3

    .line 220
    long-to-int v4, v3

    .line 221
    new-array v3, v4, [B

    .line 222
    .line 223
    invoke-static {v0, v4}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 227
    .line 228
    .line 229
    :goto_8
    move-object/from16 v28, v3

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_a
    const/4 v3, 0x0

    .line 233
    goto :goto_8

    .line 234
    :goto_9
    if-nez v6, :cond_b

    .line 235
    .line 236
    new-instance v3, Ljg/g;

    .line 237
    .line 238
    move-object/from16 v22, v3

    .line 239
    .line 240
    move-object/from16 v23, v9

    .line 241
    .line 242
    invoke-direct/range {v22 .. v28}, Ljg/g;-><init>([BJJ[B)V

    .line 243
    .line 244
    .line 245
    aput-object v3, v11, v15

    .line 246
    .line 247
    add-int/lit8 v15, v15, 0x1

    .line 248
    .line 249
    move-wide/from16 v4, v18

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 253
    .line 254
    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    .line 255
    .line 256
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_c
    iput-object v11, v14, Ljg/m;->a:[Ljg/g;

    .line 261
    .line 262
    iput-wide v4, v14, Ljg/m;->b:J

    .line 263
    .line 264
    iput-wide v7, v14, Ljg/m;->c:J

    .line 265
    .line 266
    sub-long v7, v7, v18

    .line 267
    .line 268
    long-to-int v3, v7

    .line 269
    new-array v6, v3, [Landroidx/media3/exoplayer/video/y;

    .line 270
    .line 271
    const/4 v9, 0x0

    .line 272
    :goto_a
    if-ge v9, v3, :cond_d

    .line 273
    .line 274
    new-instance v11, Landroidx/media3/exoplayer/video/y;

    .line 275
    .line 276
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 277
    .line 278
    .line 279
    move-result-wide v21

    .line 280
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v23

    .line 284
    const/16 v25, 0x2

    .line 285
    .line 286
    move-object/from16 v20, v11

    .line 287
    .line 288
    invoke-direct/range {v20 .. v25}, Landroidx/media3/exoplayer/video/y;-><init>(JJI)V

    .line 289
    .line 290
    .line 291
    aput-object v11, v6, v9

    .line 292
    .line 293
    add-int/lit8 v9, v9, 0x1

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_d
    iput-object v6, v14, Ljg/m;->d:[Landroidx/media3/exoplayer/video/y;

    .line 297
    .line 298
    sub-long v7, v4, v7

    .line 299
    .line 300
    long-to-int v3, v7

    .line 301
    new-array v6, v3, [J

    .line 302
    .line 303
    cmp-long v9, v7, v18

    .line 304
    .line 305
    if-nez v9, :cond_12

    .line 306
    .line 307
    const/4 v3, 0x0

    .line 308
    :goto_b
    long-to-int v7, v4

    .line 309
    if-ge v3, v7, :cond_11

    .line 310
    .line 311
    iget-object v7, v14, Ljg/m;->d:[Landroidx/media3/exoplayer/video/y;

    .line 312
    .line 313
    if-eqz v7, :cond_f

    .line 314
    .line 315
    const/4 v7, 0x0

    .line 316
    :goto_c
    iget-object v8, v14, Ljg/m;->d:[Landroidx/media3/exoplayer/video/y;

    .line 317
    .line 318
    array-length v9, v8

    .line 319
    if-ge v7, v9, :cond_f

    .line 320
    .line 321
    aget-object v8, v8, v7

    .line 322
    .line 323
    iget-wide v8, v8, Landroidx/media3/exoplayer/video/y;->b:J

    .line 324
    .line 325
    int-to-long v11, v3

    .line 326
    cmp-long v15, v8, v11

    .line 327
    .line 328
    if-nez v15, :cond_e

    .line 329
    .line 330
    goto :goto_d

    .line 331
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 332
    .line 333
    goto :goto_c

    .line 334
    :cond_f
    const/4 v7, -0x1

    .line 335
    :goto_d
    if-gez v7, :cond_10

    .line 336
    .line 337
    goto :goto_e

    .line 338
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_11
    :goto_e
    int-to-long v3, v3

    .line 342
    const/4 v5, 0x0

    .line 343
    aput-wide v3, v6, v5

    .line 344
    .line 345
    goto :goto_10

    .line 346
    :cond_12
    const/4 v5, 0x0

    .line 347
    :goto_f
    if-ge v5, v3, :cond_13

    .line 348
    .line 349
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 350
    .line 351
    .line 352
    move-result-wide v7

    .line 353
    aput-wide v7, v6, v5

    .line 354
    .line 355
    add-int/lit8 v5, v5, 0x1

    .line 356
    .line 357
    goto :goto_f

    .line 358
    :cond_13
    :goto_10
    iput-object v6, v14, Ljg/m;->e:[J

    .line 359
    .line 360
    aput-object v14, v10, v13

    .line 361
    .line 362
    add-int/lit8 v13, v13, 0x1

    .line 363
    .line 364
    const/16 v4, 0x9

    .line 365
    .line 366
    const-wide v5, 0xffffffffL

    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    const/4 v7, 0x4

    .line 372
    const/16 v8, 0xa

    .line 373
    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :cond_14
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 377
    .line 378
    .line 379
    const/4 v5, 0x0

    .line 380
    :goto_11
    if-ge v5, v2, :cond_16

    .line 381
    .line 382
    aget-object v3, v10, v5

    .line 383
    .line 384
    iget-wide v6, v3, Ljg/m;->c:J

    .line 385
    .line 386
    const-string v4, "totalOutputStreams"

    .line 387
    .line 388
    invoke-static {v6, v7, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 389
    .line 390
    .line 391
    iget-wide v6, v3, Ljg/m;->c:J

    .line 392
    .line 393
    long-to-int v4, v6

    .line 394
    new-array v4, v4, [J

    .line 395
    .line 396
    iput-object v4, v3, Ljg/m;->f:[J

    .line 397
    .line 398
    const/4 v4, 0x0

    .line 399
    :goto_12
    int-to-long v6, v4

    .line 400
    iget-wide v8, v3, Ljg/m;->c:J

    .line 401
    .line 402
    cmp-long v11, v6, v8

    .line 403
    .line 404
    if-gez v11, :cond_15

    .line 405
    .line 406
    iget-object v6, v3, Ljg/m;->f:[J

    .line 407
    .line 408
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 409
    .line 410
    .line 411
    move-result-wide v7

    .line 412
    aput-wide v7, v6, v4

    .line 413
    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 415
    .line 416
    goto :goto_12

    .line 417
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 418
    .line 419
    goto :goto_11

    .line 420
    :cond_16
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    const/16 v4, 0xa

    .line 425
    .line 426
    if-ne v3, v4, :cond_19

    .line 427
    .line 428
    invoke-static {v0, v2}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    const/4 v5, 0x0

    .line 433
    :goto_13
    if-ge v5, v2, :cond_18

    .line 434
    .line 435
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-eqz v4, :cond_17

    .line 440
    .line 441
    aget-object v4, v10, v5

    .line 442
    .line 443
    const/4 v6, 0x1

    .line 444
    iput-boolean v6, v4, Ljg/m;->g:Z

    .line 445
    .line 446
    const/4 v6, 0x4

    .line 447
    invoke-static {v0, v6}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    int-to-long v7, v7

    .line 455
    const-wide v11, 0xffffffffL

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    and-long/2addr v7, v11

    .line 461
    iput-wide v7, v4, Ljg/m;->h:J

    .line 462
    .line 463
    const/4 v7, 0x0

    .line 464
    goto :goto_14

    .line 465
    :cond_17
    aget-object v4, v10, v5

    .line 466
    .line 467
    const/4 v7, 0x0

    .line 468
    iput-boolean v7, v4, Ljg/m;->g:Z

    .line 469
    .line 470
    :goto_14
    add-int/lit8 v5, v5, 0x1

    .line 471
    .line 472
    goto :goto_13

    .line 473
    :cond_18
    const/4 v7, 0x0

    .line 474
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 475
    .line 476
    .line 477
    goto :goto_15

    .line 478
    :cond_19
    const/4 v7, 0x0

    .line 479
    :goto_15
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    goto :goto_16

    .line 484
    :cond_1a
    const/4 v7, 0x0

    .line 485
    sget-object v3, Ljg/m;->j:[Ljg/m;

    .line 486
    .line 487
    iput-object v3, v1, Ljg/e;->e:[Ljg/m;

    .line 488
    .line 489
    :goto_16
    const/16 v3, 0x8

    .line 490
    .line 491
    if-ne v2, v3, :cond_2d

    .line 492
    .line 493
    iget-object v2, v1, Ljg/e;->e:[Ljg/m;

    .line 494
    .line 495
    array-length v3, v2

    .line 496
    const/4 v5, 0x0

    .line 497
    :goto_17
    if-ge v5, v3, :cond_1b

    .line 498
    .line 499
    aget-object v4, v2, v5

    .line 500
    .line 501
    const/4 v8, 0x1

    .line 502
    iput v8, v4, Ljg/m;->i:I

    .line 503
    .line 504
    add-int/lit8 v5, v5, 0x1

    .line 505
    .line 506
    goto :goto_17

    .line 507
    :cond_1b
    iget-object v2, v1, Ljg/e;->e:[Ljg/m;

    .line 508
    .line 509
    array-length v2, v2

    .line 510
    int-to-long v2, v2

    .line 511
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    const/16 v5, 0xd

    .line 516
    .line 517
    if-ne v4, v5, :cond_1d

    .line 518
    .line 519
    iget-object v2, v1, Ljg/e;->e:[Ljg/m;

    .line 520
    .line 521
    array-length v3, v2

    .line 522
    const-wide/16 v4, 0x0

    .line 523
    .line 524
    const/4 v8, 0x0

    .line 525
    :goto_18
    if-ge v8, v3, :cond_1c

    .line 526
    .line 527
    aget-object v9, v2, v8

    .line 528
    .line 529
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 530
    .line 531
    .line 532
    move-result-wide v10

    .line 533
    long-to-int v12, v10

    .line 534
    iput v12, v9, Ljg/m;->i:I

    .line 535
    .line 536
    add-long/2addr v4, v10

    .line 537
    add-int/lit8 v8, v8, 0x1

    .line 538
    .line 539
    goto :goto_18

    .line 540
    :cond_1c
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    move-wide/from16 v29, v4

    .line 545
    .line 546
    move v4, v2

    .line 547
    move-wide/from16 v2, v29

    .line 548
    .line 549
    :cond_1d
    long-to-int v3, v2

    .line 550
    new-instance v2, Lv3/f;

    .line 551
    .line 552
    invoke-direct {v2, v3}, Lv3/f;-><init>(I)V

    .line 553
    .line 554
    .line 555
    iget-object v3, v1, Ljg/e;->e:[Ljg/m;

    .line 556
    .line 557
    array-length v5, v3

    .line 558
    const/4 v8, 0x0

    .line 559
    const/4 v9, 0x0

    .line 560
    :goto_19
    if-ge v8, v5, :cond_22

    .line 561
    .line 562
    aget-object v10, v3, v8

    .line 563
    .line 564
    iget v11, v10, Ljg/m;->i:I

    .line 565
    .line 566
    if-nez v11, :cond_1e

    .line 567
    .line 568
    goto :goto_1c

    .line 569
    :cond_1e
    iget-object v11, v2, Lv3/f;->b:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v11, [J

    .line 572
    .line 573
    const/16 v12, 0x9

    .line 574
    .line 575
    if-ne v4, v12, :cond_20

    .line 576
    .line 577
    move v12, v9

    .line 578
    const/4 v9, 0x0

    .line 579
    const-wide/16 v13, 0x0

    .line 580
    .line 581
    :goto_1a
    iget v15, v10, Ljg/m;->i:I

    .line 582
    .line 583
    const/16 v18, 0x1

    .line 584
    .line 585
    add-int/lit8 v15, v15, -0x1

    .line 586
    .line 587
    if-ge v9, v15, :cond_1f

    .line 588
    .line 589
    invoke-static/range {p0 .. p0}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 590
    .line 591
    .line 592
    move-result-wide v18

    .line 593
    add-int/lit8 v15, v12, 0x1

    .line 594
    .line 595
    aput-wide v18, v11, v12

    .line 596
    .line 597
    add-long v13, v13, v18

    .line 598
    .line 599
    add-int/lit8 v9, v9, 0x1

    .line 600
    .line 601
    move v12, v15

    .line 602
    goto :goto_1a

    .line 603
    :cond_1f
    move v9, v12

    .line 604
    goto :goto_1b

    .line 605
    :cond_20
    const-wide/16 v13, 0x0

    .line 606
    .line 607
    :goto_1b
    invoke-virtual {v10}, Ljg/m;->b()J

    .line 608
    .line 609
    .line 610
    move-result-wide v18

    .line 611
    cmp-long v12, v13, v18

    .line 612
    .line 613
    if-gtz v12, :cond_21

    .line 614
    .line 615
    add-int/lit8 v12, v9, 0x1

    .line 616
    .line 617
    invoke-virtual {v10}, Ljg/m;->b()J

    .line 618
    .line 619
    .line 620
    move-result-wide v18

    .line 621
    sub-long v18, v18, v13

    .line 622
    .line 623
    aput-wide v18, v11, v9

    .line 624
    .line 625
    move v9, v12

    .line 626
    :goto_1c
    add-int/lit8 v8, v8, 0x1

    .line 627
    .line 628
    goto :goto_19

    .line 629
    :cond_21
    new-instance v0, Ljava/io/IOException;

    .line 630
    .line 631
    const-string v1, "sum of unpack sizes of folder exceeds total unpack size"

    .line 632
    .line 633
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v0

    .line 637
    :cond_22
    const/16 v3, 0x9

    .line 638
    .line 639
    if-ne v4, v3, :cond_23

    .line 640
    .line 641
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 642
    .line 643
    .line 644
    move-result v4

    .line 645
    :cond_23
    iget-object v3, v1, Ljg/e;->e:[Ljg/m;

    .line 646
    .line 647
    array-length v5, v3

    .line 648
    const/4 v8, 0x0

    .line 649
    const/4 v9, 0x0

    .line 650
    :goto_1d
    if-ge v8, v5, :cond_26

    .line 651
    .line 652
    aget-object v10, v3, v8

    .line 653
    .line 654
    iget v11, v10, Ljg/m;->i:I

    .line 655
    .line 656
    const/4 v12, 0x1

    .line 657
    if-ne v11, v12, :cond_24

    .line 658
    .line 659
    iget-boolean v10, v10, Ljg/m;->g:Z

    .line 660
    .line 661
    if-nez v10, :cond_25

    .line 662
    .line 663
    :cond_24
    add-int/2addr v9, v11

    .line 664
    :cond_25
    add-int/lit8 v8, v8, 0x1

    .line 665
    .line 666
    goto :goto_1d

    .line 667
    :cond_26
    const/16 v8, 0xa

    .line 668
    .line 669
    if-ne v4, v8, :cond_2c

    .line 670
    .line 671
    invoke-static {v0, v9}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    new-array v4, v9, [J

    .line 676
    .line 677
    const/4 v5, 0x0

    .line 678
    :goto_1e
    if-ge v5, v9, :cond_28

    .line 679
    .line 680
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    const/4 v6, 0x4

    .line 685
    if-eqz v8, :cond_27

    .line 686
    .line 687
    invoke-static {v0, v6}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 691
    .line 692
    .line 693
    move-result v8

    .line 694
    int-to-long v10, v8

    .line 695
    const-wide v12, 0xffffffffL

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    and-long/2addr v10, v12

    .line 701
    aput-wide v10, v4, v5

    .line 702
    .line 703
    goto :goto_1f

    .line 704
    :cond_27
    const-wide v12, 0xffffffffL

    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    .line 710
    .line 711
    goto :goto_1e

    .line 712
    :cond_28
    iget-object v5, v1, Ljg/e;->e:[Ljg/m;

    .line 713
    .line 714
    array-length v6, v5

    .line 715
    const/4 v8, 0x0

    .line 716
    const/4 v9, 0x0

    .line 717
    const/4 v10, 0x0

    .line 718
    :goto_20
    if-ge v8, v6, :cond_2b

    .line 719
    .line 720
    aget-object v11, v5, v8

    .line 721
    .line 722
    iget v12, v11, Ljg/m;->i:I

    .line 723
    .line 724
    iget-object v13, v2, Lv3/f;->c:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v13, Ljava/util/BitSet;

    .line 727
    .line 728
    iget-object v14, v2, Lv3/f;->d:Ljava/lang/Object;

    .line 729
    .line 730
    check-cast v14, [J

    .line 731
    .line 732
    const/4 v15, 0x1

    .line 733
    if-ne v12, v15, :cond_29

    .line 734
    .line 735
    iget-boolean v12, v11, Ljg/m;->g:Z

    .line 736
    .line 737
    if-eqz v12, :cond_29

    .line 738
    .line 739
    invoke-virtual {v13, v9, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 740
    .line 741
    .line 742
    iget-wide v11, v11, Ljg/m;->h:J

    .line 743
    .line 744
    aput-wide v11, v14, v9

    .line 745
    .line 746
    add-int/lit8 v9, v9, 0x1

    .line 747
    .line 748
    goto :goto_22

    .line 749
    :cond_29
    move v12, v10

    .line 750
    move v10, v9

    .line 751
    const/4 v9, 0x0

    .line 752
    :goto_21
    iget v7, v11, Ljg/m;->i:I

    .line 753
    .line 754
    if-ge v9, v7, :cond_2a

    .line 755
    .line 756
    invoke-virtual {v3, v12}, Ljava/util/BitSet;->get(I)Z

    .line 757
    .line 758
    .line 759
    move-result v7

    .line 760
    invoke-virtual {v13, v10, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 761
    .line 762
    .line 763
    aget-wide v16, v4, v12

    .line 764
    .line 765
    aput-wide v16, v14, v10

    .line 766
    .line 767
    add-int/lit8 v10, v10, 0x1

    .line 768
    .line 769
    add-int/lit8 v12, v12, 0x1

    .line 770
    .line 771
    add-int/lit8 v9, v9, 0x1

    .line 772
    .line 773
    goto :goto_21

    .line 774
    :cond_2a
    move v9, v10

    .line 775
    move v10, v12

    .line 776
    :goto_22
    add-int/lit8 v8, v8, 0x1

    .line 777
    .line 778
    const/4 v7, 0x0

    .line 779
    goto :goto_20

    .line 780
    :cond_2b
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 781
    .line 782
    .line 783
    :cond_2c
    iput-object v2, v1, Ljg/e;->f:Lv3/f;

    .line 784
    .line 785
    invoke-static/range {p0 .. p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 786
    .line 787
    .line 788
    :cond_2d
    return-void
.end method

.method public static Q(Ljava/nio/ByteBuffer;)J
    .locals 12

    .line 1
    invoke-static {p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x80

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-wide v6, v3

    .line 12
    :goto_0
    const/16 v8, 0x8

    .line 13
    .line 14
    if-ge v5, v8, :cond_1

    .line 15
    .line 16
    int-to-long v9, v2

    .line 17
    and-long/2addr v9, v0

    .line 18
    cmp-long v11, v9, v3

    .line 19
    .line 20
    if-nez v11, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    int-to-long v2, v2

    .line 25
    and-long/2addr v0, v2

    .line 26
    mul-int/lit8 v5, v5, 0x8

    .line 27
    .line 28
    shl-long/2addr v0, v5

    .line 29
    or-long/2addr v0, v6

    .line 30
    return-wide v0

    .line 31
    :cond_0
    invoke-static {p0}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    int-to-long v8, v8

    .line 36
    mul-int/lit8 v10, v5, 0x8

    .line 37
    .line 38
    shl-long/2addr v8, v10

    .line 39
    or-long/2addr v6, v8

    .line 40
    ushr-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-wide v6
.end method

.method public static S(Ljava/nio/ByteBuffer;J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    cmp-long v3, v1, p1

    .line 20
    .line 21
    if-gez v3, :cond_1

    .line 22
    .line 23
    move-wide p1, v1

    .line 24
    :cond_1
    long-to-int v1, p1

    .line 25
    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    return-wide p1
.end method

.method public static r(JLjava/lang/String;)I
    .locals 3

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    cmp-long v2, p0, v0

    .line 5
    .line 6
    if-gtz v2, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v2, p0, v0

    .line 11
    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    long-to-int p1, p0

    .line 15
    return p1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    .line 18
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aput-object p2, p1, v1

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p0, p1, p2

    .line 30
    .line 31
    const-string p0, "Cannot handle % %,d"

    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method


# virtual methods
.method public final K()Ljg/n;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ljg/t;->d:I

    .line 4
    .line 5
    iget-object v2, v0, Ljg/t;->c:Ljg/e;

    .line 6
    .line 7
    iget-object v3, v2, Ljg/e;->g:[Ljg/n;

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    const/4 v5, 0x1

    .line 11
    sub-int/2addr v4, v5

    .line 12
    const/4 v6, 0x0

    .line 13
    if-lt v1, v4, :cond_0

    .line 14
    .line 15
    return-object v6

    .line 16
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 17
    .line 18
    iput v4, v0, Ljg/t;->d:I

    .line 19
    .line 20
    aget-object v7, v3, v4

    .line 21
    .line 22
    iget-object v8, v7, Ljg/n;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v8, v2, Ljg/e;->h:La2/w0;

    .line 25
    .line 26
    if-eqz v8, :cond_e

    .line 27
    .line 28
    iget-object v8, v8, La2/w0;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v8, [I

    .line 31
    .line 32
    aget v8, v8, v4

    .line 33
    .line 34
    iget-object v9, v0, Ljg/t;->h:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-gez v8, :cond_1

    .line 37
    .line 38
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_1
    iget v10, v0, Ljg/t;->e:I

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    if-ne v10, v8, :cond_3

    .line 47
    .line 48
    if-lez v4, :cond_c

    .line 49
    .line 50
    aget-object v1, v3, v1

    .line 51
    .line 52
    iget-object v1, v1, Ljg/n;->r:Ljava/util/List;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lcom/yunpan/appmanage/db/b;

    .line 65
    .line 66
    invoke-direct {v3, v5, v2}, Lcom/yunpan/appmanage/db/b;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v3}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v7, Ljg/n;->r:Ljava/util/List;

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_2
    iput-object v6, v7, Ljg/n;->r:Ljava/util/List;

    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_3
    iput v8, v0, Ljg/t;->e:I

    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Ljg/t;->f:Ljava/io/InputStream;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 94
    .line 95
    .line 96
    iput-object v6, v0, Ljg/t;->f:Ljava/io/InputStream;

    .line 97
    .line 98
    :cond_4
    iget-object v1, v2, Ljg/e;->e:[Ljg/m;

    .line 99
    .line 100
    aget-object v1, v1, v8

    .line 101
    .line 102
    iget-object v3, v2, Ljg/e;->h:La2/w0;

    .line 103
    .line 104
    iget-object v4, v3, La2/w0;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v4, [I

    .line 107
    .line 108
    aget v4, v4, v8

    .line 109
    .line 110
    const-wide/16 v12, 0x20

    .line 111
    .line 112
    iget-wide v14, v2, Ljg/e;->a:J

    .line 113
    .line 114
    add-long/2addr v14, v12

    .line 115
    iget-object v3, v3, La2/w0;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v3, [J

    .line 118
    .line 119
    aget-wide v12, v3, v4

    .line 120
    .line 121
    add-long/2addr v14, v12

    .line 122
    iget-object v3, v0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 123
    .line 124
    invoke-static {v3, v14, v15}, La2/s0;->v(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Lfh/c;

    .line 128
    .line 129
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 130
    .line 131
    new-instance v10, Ljg/f;

    .line 132
    .line 133
    iget-object v12, v0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 134
    .line 135
    iget-object v2, v2, Ljg/e;->b:[J

    .line 136
    .line 137
    aget-wide v13, v2, v4

    .line 138
    .line 139
    invoke-direct {v10, v12, v13, v14}, Ljg/f;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v8, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {v3, v0, v8}, Lfh/c;-><init>(Ljg/t;Ljava/io/BufferedInputStream;)V

    .line 146
    .line 147
    .line 148
    new-instance v2, Ljava/util/LinkedList;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljg/m;->a()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    move-object v13, v3

    .line 162
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_a

    .line 167
    .line 168
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Ljg/g;

    .line 173
    .line 174
    iget-wide v14, v3, Ljg/g;->b:J

    .line 175
    .line 176
    const-wide/16 v16, 0x1

    .line 177
    .line 178
    cmp-long v8, v14, v16

    .line 179
    .line 180
    if-nez v8, :cond_9

    .line 181
    .line 182
    iget-wide v14, v3, Ljg/g;->c:J

    .line 183
    .line 184
    cmp-long v8, v14, v16

    .line 185
    .line 186
    if-nez v8, :cond_9

    .line 187
    .line 188
    iget-object v8, v3, Ljg/g;->a:[B

    .line 189
    .line 190
    const-class v10, Ljg/u;

    .line 191
    .line 192
    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v10, [Ljg/u;

    .line 197
    .line 198
    array-length v12, v10

    .line 199
    const/4 v14, 0x0

    .line 200
    :goto_1
    if-ge v14, v12, :cond_6

    .line 201
    .line 202
    aget-object v15, v10, v14

    .line 203
    .line 204
    iget-object v6, v15, Ljg/u;->a:[B

    .line 205
    .line 206
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_5

    .line 211
    .line 212
    move-object v6, v15

    .line 213
    goto :goto_2

    .line 214
    :cond_5
    add-int/2addr v14, v5

    .line 215
    const/4 v6, 0x0

    .line 216
    goto :goto_1

    .line 217
    :cond_6
    const/4 v6, 0x0

    .line 218
    :goto_2
    iget-object v8, v1, Ljg/m;->a:[Ljg/g;

    .line 219
    .line 220
    if-eqz v8, :cond_8

    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    :goto_3
    iget-object v10, v1, Ljg/m;->a:[Ljg/g;

    .line 224
    .line 225
    array-length v12, v10

    .line 226
    if-ge v8, v12, :cond_8

    .line 227
    .line 228
    aget-object v10, v10, v8

    .line 229
    .line 230
    if-ne v10, v3, :cond_7

    .line 231
    .line 232
    iget-object v10, v1, Ljg/m;->f:[J

    .line 233
    .line 234
    aget-wide v14, v10, v8

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_7
    add-int/2addr v8, v5

    .line 238
    goto :goto_3

    .line 239
    :cond_8
    const-wide/16 v14, 0x0

    .line 240
    .line 241
    :goto_4
    iget-object v8, v0, Ljg/t;->g:[B

    .line 242
    .line 243
    iget v10, v0, Ljg/t;->i:I

    .line 244
    .line 245
    iget-object v12, v0, Ljg/t;->a:Ljava/lang/String;

    .line 246
    .line 247
    move-object/from16 v16, v3

    .line 248
    .line 249
    move-object/from16 v17, v8

    .line 250
    .line 251
    move/from16 v18, v10

    .line 252
    .line 253
    invoke-static/range {v12 .. v18}, Ljg/l;->a(Ljava/lang/String;Ljava/io/InputStream;JLjg/g;[BI)Ljava/io/InputStream;

    .line 254
    .line 255
    .line 256
    move-result-object v13

    .line 257
    new-instance v8, Ljg/v;

    .line 258
    .line 259
    sget-object v10, Ljg/l;->a:Ljg/h;

    .line 260
    .line 261
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    check-cast v10, Ljg/d;

    .line 266
    .line 267
    invoke-virtual {v10, v3}, Ljg/d;->d(Ljg/g;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-direct {v8, v6, v3}, Ljg/v;-><init>(Ljg/u;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    const/4 v6, 0x0

    .line 278
    goto :goto_0

    .line 279
    :cond_9
    new-instance v1, Ljava/io/IOException;

    .line 280
    .line 281
    const-string v2, "Multi input/output stream coders are not yet supported"

    .line 282
    .line 283
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v1

    .line 287
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    new-instance v3, Ljava/util/LinkedList;

    .line 291
    .line 292
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 293
    .line 294
    .line 295
    new-instance v4, Lcom/yunpan/appmanage/db/b;

    .line 296
    .line 297
    invoke-direct {v4, v5, v3}, Lcom/yunpan/appmanage/db/b;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v2, v4}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    iput-object v2, v7, Ljg/n;->r:Ljava/util/List;

    .line 308
    .line 309
    iget-boolean v2, v1, Ljg/m;->g:Z

    .line 310
    .line 311
    if-eqz v2, :cond_b

    .line 312
    .line 313
    sget v2, Lxg/d;->g:I

    .line 314
    .line 315
    new-instance v2, Lxg/c;

    .line 316
    .line 317
    invoke-direct {v2}, Lxg/c;-><init>()V

    .line 318
    .line 319
    .line 320
    new-instance v3, Ljava/util/zip/CRC32;

    .line 321
    .line 322
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 323
    .line 324
    .line 325
    iput-object v3, v2, Lxg/c;->e:Ljava/util/zip/CRC32;

    .line 326
    .line 327
    invoke-virtual {v2, v13}, Ltg/b;->P0(Ljava/io/InputStream;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Ljg/m;->b()J

    .line 331
    .line 332
    .line 333
    move-result-wide v3

    .line 334
    iput-wide v3, v2, Lxg/c;->f:J

    .line 335
    .line 336
    iget-wide v3, v1, Ljg/m;->h:J

    .line 337
    .line 338
    iput-wide v3, v2, Lxg/c;->g:J

    .line 339
    .line 340
    new-instance v13, Lxg/d;

    .line 341
    .line 342
    invoke-direct {v13, v2}, Lxg/d;-><init>(Lxg/c;)V

    .line 343
    .line 344
    .line 345
    :cond_b
    iput-object v13, v0, Ljg/t;->f:Ljava/io/InputStream;

    .line 346
    .line 347
    :cond_c
    :goto_5
    sget v1, Lxg/b;->i:I

    .line 348
    .line 349
    new-instance v1, Lxg/a;

    .line 350
    .line 351
    invoke-direct {v1}, Lxg/a;-><init>()V

    .line 352
    .line 353
    .line 354
    iget-object v2, v0, Ljg/t;->f:Ljava/io/InputStream;

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Ltg/b;->P0(Ljava/io/InputStream;)V

    .line 357
    .line 358
    .line 359
    iget-wide v2, v7, Ljg/n;->p:J

    .line 360
    .line 361
    const-wide/16 v12, -0x1

    .line 362
    .line 363
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 364
    .line 365
    .line 366
    move-result-wide v2

    .line 367
    iput-wide v2, v1, Lxg/a;->e:J

    .line 368
    .line 369
    iput-boolean v11, v1, Lxg/a;->g:Z

    .line 370
    .line 371
    new-instance v2, Lxg/b;

    .line 372
    .line 373
    invoke-direct {v2, v1}, Lxg/b;-><init>(Lxg/a;)V

    .line 374
    .line 375
    .line 376
    iget-boolean v1, v7, Ljg/n;->m:Z

    .line 377
    .line 378
    if-eqz v1, :cond_d

    .line 379
    .line 380
    sget v1, Lxg/d;->g:I

    .line 381
    .line 382
    new-instance v1, Lxg/c;

    .line 383
    .line 384
    invoke-direct {v1}, Lxg/c;-><init>()V

    .line 385
    .line 386
    .line 387
    new-instance v3, Ljava/util/zip/CRC32;

    .line 388
    .line 389
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 390
    .line 391
    .line 392
    iput-object v3, v1, Lxg/c;->e:Ljava/util/zip/CRC32;

    .line 393
    .line 394
    new-instance v3, Ltg/a;

    .line 395
    .line 396
    invoke-direct {v3, v5, v2}, Ltg/a;-><init>(ILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iput-object v3, v1, Ltg/b;->b:Ljava/lang/Object;

    .line 400
    .line 401
    iget-wide v2, v7, Ljg/n;->n:J

    .line 402
    .line 403
    iput-wide v2, v1, Lxg/c;->g:J

    .line 404
    .line 405
    new-instance v2, Lxg/d;

    .line 406
    .line 407
    invoke-direct {v2, v1}, Lxg/d;-><init>(Lxg/c;)V

    .line 408
    .line 409
    .line 410
    :cond_d
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    :goto_6
    return-object v7

    .line 414
    :cond_e
    new-instance v1, Ljava/io/IOException;

    .line 415
    .line 416
    const-string v2, "Archive doesn\'t contain stream information to read entries"

    .line 417
    .line 418
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_8

    .line 422
    :goto_7
    throw v1

    .line 423
    :goto_8
    goto :goto_7
.end method

.method public final O(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    sget v1, Lrg/d;->a:I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v2, Lsg/b;->a:[B

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, -0x1

    .line 29
    if-ne v4, v3, :cond_0

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int/2addr v2, v0

    .line 36
    if-lt v2, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    throw p1

    .line 49
    :goto_1
    goto :goto_0
.end method

.method public final R(Ljava/nio/ByteBuffer;Ljg/r;)V
    .locals 21

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
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x6

    .line 12
    const/16 v5, 0x9

    .line 13
    .line 14
    const-wide/16 v8, 0x0

    .line 15
    .line 16
    if-ne v3, v4, :cond_7

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    const-string v10, ") is out of range"

    .line 23
    .line 24
    cmp-long v11, v3, v8

    .line 25
    .line 26
    if-ltz v11, :cond_6

    .line 27
    .line 28
    const-wide/16 v11, 0x20

    .line 29
    .line 30
    add-long/2addr v11, v3

    .line 31
    iget-object v13, v0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 32
    .line 33
    invoke-static {v13}, La2/s0;->C(Ljava/nio/channels/SeekableByteChannel;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v13

    .line 37
    cmp-long v15, v11, v13

    .line 38
    .line 39
    if-gtz v15, :cond_6

    .line 40
    .line 41
    cmp-long v13, v11, v8

    .line 42
    .line 43
    if-ltz v13, :cond_6

    .line 44
    .line 45
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v13

    .line 49
    const-string v15, "numPackStreams"

    .line 50
    .line 51
    invoke-static {v13, v14, v15}, Ljg/t;->r(JLjava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    iput v13, v2, Ljg/r;->a:I

    .line 56
    .line 57
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    if-ne v13, v5, :cond_2

    .line 62
    .line 63
    move-wide v14, v8

    .line 64
    const/4 v13, 0x0

    .line 65
    :goto_0
    iget v5, v2, Ljg/r;->a:I

    .line 66
    .line 67
    if-ge v13, v5, :cond_1

    .line 68
    .line 69
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    add-long/2addr v14, v6

    .line 74
    add-long v16, v11, v14

    .line 75
    .line 76
    cmp-long v18, v6, v8

    .line 77
    .line 78
    if-ltz v18, :cond_0

    .line 79
    .line 80
    iget-object v5, v0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 81
    .line 82
    invoke-static {v5}, La2/s0;->C(Ljava/nio/channels/SeekableByteChannel;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v19

    .line 86
    cmp-long v5, v16, v19

    .line 87
    .line 88
    if-gtz v5, :cond_0

    .line 89
    .line 90
    cmp-long v5, v16, v3

    .line 91
    .line 92
    if-ltz v5, :cond_0

    .line 93
    .line 94
    add-int/lit8 v13, v13, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "packSize ("

    .line 102
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_1
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    :cond_2
    const/16 v3, 0xa

    .line 125
    .line 126
    if-ne v13, v3, :cond_4

    .line 127
    .line 128
    iget v3, v2, Ljg/r;->a:I

    .line 129
    .line 130
    invoke-static {v1, v3}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    mul-int/lit8 v3, v3, 0x4

    .line 139
    .line 140
    int-to-long v3, v3

    .line 141
    invoke-static {v1, v3, v4}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 142
    .line 143
    .line 144
    move-result-wide v6

    .line 145
    cmp-long v10, v6, v3

    .line 146
    .line 147
    if-ltz v10, :cond_3

    .line 148
    .line 149
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 155
    .line 156
    const-string v2, "invalid number of CRCs in PackInfo"

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v1

    .line 162
    :cond_4
    :goto_1
    if-nez v13, :cond_5

    .line 163
    .line 164
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    new-instance v1, Ljava/io/IOException;

    .line 170
    .line 171
    const-string v2, "Badly terminated PackInfo ("

    .line 172
    .line 173
    const-string v3, ")"

    .line 174
    .line 175
    invoke-static {v2, v13, v3}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v1

    .line 183
    :cond_6
    new-instance v1, Ljava/io/IOException;

    .line 184
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v5, "packPos ("

    .line 188
    .line 189
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v1

    .line 206
    :cond_7
    :goto_2
    const/4 v6, 0x7

    .line 207
    const-string v7, "negative unpackSize"

    .line 208
    .line 209
    if-ne v3, v6, :cond_24

    .line 210
    .line 211
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    const/16 v6, 0xb

    .line 216
    .line 217
    if-ne v3, v6, :cond_23

    .line 218
    .line 219
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 220
    .line 221
    .line 222
    move-result-wide v10

    .line 223
    const-string v3, "numFolders"

    .line 224
    .line 225
    invoke-static {v10, v11, v3}, Ljg/t;->r(JLjava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    iput v3, v2, Ljg/r;->f:I

    .line 230
    .line 231
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_22

    .line 236
    .line 237
    new-instance v3, Ljava/util/LinkedList;

    .line 238
    .line 239
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 240
    .line 241
    .line 242
    const/4 v6, 0x0

    .line 243
    :goto_3
    iget v10, v2, Ljg/r;->f:I

    .line 244
    .line 245
    if-ge v6, v10, :cond_19

    .line 246
    .line 247
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v10

    .line 251
    const-string v12, "numCoders"

    .line 252
    .line 253
    invoke-static {v10, v11, v12}, Ljg/t;->r(JLjava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    if-eqz v10, :cond_18

    .line 258
    .line 259
    int-to-long v11, v10

    .line 260
    iget-wide v13, v2, Ljg/r;->b:J

    .line 261
    .line 262
    add-long/2addr v13, v11

    .line 263
    iput-wide v13, v2, Ljg/r;->b:J

    .line 264
    .line 265
    move-wide v12, v8

    .line 266
    move-wide v14, v12

    .line 267
    const/4 v11, 0x0

    .line 268
    :goto_4
    const-wide/16 v16, 0x1

    .line 269
    .line 270
    if-ge v11, v10, :cond_e

    .line 271
    .line 272
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    and-int/lit8 v4, v5, 0xf

    .line 277
    .line 278
    new-array v8, v4, [B

    .line 279
    .line 280
    invoke-static {v1, v4}, Ljg/t;->A(Ljava/nio/ByteBuffer;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 284
    .line 285
    .line 286
    and-int/lit8 v4, v5, 0x10

    .line 287
    .line 288
    if-nez v4, :cond_8

    .line 289
    .line 290
    const/4 v4, 0x1

    .line 291
    goto :goto_5

    .line 292
    :cond_8
    const/4 v4, 0x0

    .line 293
    :goto_5
    and-int/lit8 v8, v5, 0x20

    .line 294
    .line 295
    if-eqz v8, :cond_9

    .line 296
    .line 297
    const/4 v8, 0x1

    .line 298
    goto :goto_6

    .line 299
    :cond_9
    const/4 v8, 0x0

    .line 300
    :goto_6
    and-int/lit16 v5, v5, 0x80

    .line 301
    .line 302
    if-nez v5, :cond_d

    .line 303
    .line 304
    if-eqz v4, :cond_a

    .line 305
    .line 306
    add-long v12, v12, v16

    .line 307
    .line 308
    add-long v14, v14, v16

    .line 309
    .line 310
    move v5, v10

    .line 311
    goto :goto_7

    .line 312
    :cond_a
    const-string v4, "numInStreams"

    .line 313
    .line 314
    move v5, v10

    .line 315
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 316
    .line 317
    .line 318
    move-result-wide v9

    .line 319
    invoke-static {v9, v10, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    int-to-long v9, v4

    .line 324
    add-long/2addr v12, v9

    .line 325
    const-string v4, "numOutStreams"

    .line 326
    .line 327
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 328
    .line 329
    .line 330
    move-result-wide v9

    .line 331
    invoke-static {v9, v10, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    int-to-long v9, v4

    .line 336
    add-long/2addr v14, v9

    .line 337
    :goto_7
    if-eqz v8, :cond_c

    .line 338
    .line 339
    const-string v4, "propertiesSize"

    .line 340
    .line 341
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 342
    .line 343
    .line 344
    move-result-wide v8

    .line 345
    invoke-static {v8, v9, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    int-to-long v8, v4

    .line 350
    invoke-static {v1, v8, v9}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 351
    .line 352
    .line 353
    move-result-wide v16

    .line 354
    cmp-long v4, v16, v8

    .line 355
    .line 356
    if-ltz v4, :cond_b

    .line 357
    .line 358
    goto :goto_8

    .line 359
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 360
    .line 361
    const-string v2, "invalid propertiesSize in folder"

    .line 362
    .line 363
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v1

    .line 367
    :cond_c
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 368
    .line 369
    move v10, v5

    .line 370
    const-wide/16 v8, 0x0

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_d
    new-instance v1, Ljava/io/IOException;

    .line 374
    .line 375
    const-string v2, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    .line 376
    .line 377
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v1

    .line 381
    :cond_e
    const-string v4, "totalInStreams"

    .line 382
    .line 383
    invoke-static {v12, v13, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 384
    .line 385
    .line 386
    const-string v4, "totalOutStreams"

    .line 387
    .line 388
    invoke-static {v14, v15, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 389
    .line 390
    .line 391
    iget-wide v4, v2, Ljg/r;->c:J

    .line 392
    .line 393
    add-long/2addr v4, v14

    .line 394
    iput-wide v4, v2, Ljg/r;->c:J

    .line 395
    .line 396
    iget-wide v4, v2, Ljg/r;->d:J

    .line 397
    .line 398
    add-long/2addr v4, v12

    .line 399
    iput-wide v4, v2, Ljg/r;->d:J

    .line 400
    .line 401
    const-wide/16 v4, 0x0

    .line 402
    .line 403
    cmp-long v8, v14, v4

    .line 404
    .line 405
    if-eqz v8, :cond_17

    .line 406
    .line 407
    const-string v4, "numBindPairs"

    .line 408
    .line 409
    sub-long v8, v14, v16

    .line 410
    .line 411
    invoke-static {v8, v9, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    int-to-long v8, v4

    .line 416
    cmp-long v5, v12, v8

    .line 417
    .line 418
    if-ltz v5, :cond_16

    .line 419
    .line 420
    new-instance v5, Ljava/util/BitSet;

    .line 421
    .line 422
    long-to-int v10, v12

    .line 423
    invoke-direct {v5, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 424
    .line 425
    .line 426
    const/4 v10, 0x0

    .line 427
    :goto_9
    if-ge v10, v4, :cond_11

    .line 428
    .line 429
    const-string v11, "inIndex"

    .line 430
    .line 431
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 432
    .line 433
    .line 434
    move-result-wide v0

    .line 435
    invoke-static {v0, v1, v11}, Ljg/t;->r(JLjava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    int-to-long v1, v0

    .line 440
    cmp-long v11, v12, v1

    .line 441
    .line 442
    if-lez v11, :cond_10

    .line 443
    .line 444
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    .line 445
    .line 446
    .line 447
    const-string v0, "outIndex"

    .line 448
    .line 449
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 450
    .line 451
    .line 452
    move-result-wide v1

    .line 453
    invoke-static {v1, v2, v0}, Ljg/t;->r(JLjava/lang/String;)I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    int-to-long v0, v0

    .line 458
    cmp-long v2, v14, v0

    .line 459
    .line 460
    if-lez v2, :cond_f

    .line 461
    .line 462
    add-int/lit8 v10, v10, 0x1

    .line 463
    .line 464
    move-object/from16 v0, p0

    .line 465
    .line 466
    move-object/from16 v1, p1

    .line 467
    .line 468
    move-object/from16 v2, p2

    .line 469
    .line 470
    goto :goto_9

    .line 471
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 472
    .line 473
    const-string v1, "outIndex is bigger than number of outStreams"

    .line 474
    .line 475
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v0

    .line 479
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 480
    .line 481
    const-string v1, "inIndex is bigger than number of inStreams"

    .line 482
    .line 483
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v0

    .line 487
    :cond_11
    const-string v0, "numPackedStreams"

    .line 488
    .line 489
    sub-long v1, v12, v8

    .line 490
    .line 491
    invoke-static {v1, v2, v0}, Ljg/t;->r(JLjava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    const/4 v1, 0x1

    .line 496
    if-ne v0, v1, :cond_13

    .line 497
    .line 498
    const/4 v1, 0x0

    .line 499
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    const/4 v2, -0x1

    .line 504
    if-eq v0, v2, :cond_12

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 508
    .line 509
    const-string v1, "Couldn\'t find stream\'s bind pair index"

    .line 510
    .line 511
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v0

    .line 515
    :cond_13
    const/4 v1, 0x0

    .line 516
    const/4 v2, 0x0

    .line 517
    :goto_a
    if-ge v2, v0, :cond_15

    .line 518
    .line 519
    const-string v4, "packedStreamIndex"

    .line 520
    .line 521
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 522
    .line 523
    .line 524
    move-result-wide v8

    .line 525
    invoke-static {v8, v9, v4}, Ljg/t;->r(JLjava/lang/String;)I

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    int-to-long v4, v4

    .line 530
    cmp-long v8, v4, v12

    .line 531
    .line 532
    if-gez v8, :cond_14

    .line 533
    .line 534
    add-int/lit8 v2, v2, 0x1

    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 538
    .line 539
    const-string v1, "packedStreamIndex is bigger than number of totalInStreams"

    .line 540
    .line 541
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw v0

    .line 545
    :cond_15
    :goto_b
    long-to-int v0, v14

    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    add-int/lit8 v6, v6, 0x1

    .line 554
    .line 555
    move-object/from16 v0, p0

    .line 556
    .line 557
    move-object/from16 v1, p1

    .line 558
    .line 559
    move-object/from16 v2, p2

    .line 560
    .line 561
    const-wide/16 v8, 0x0

    .line 562
    .line 563
    goto/16 :goto_3

    .line 564
    .line 565
    :cond_16
    new-instance v0, Ljava/io/IOException;

    .line 566
    .line 567
    const-string v1, "Total input streams can\'t be less than the number of bind pairs"

    .line 568
    .line 569
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw v0

    .line 573
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 574
    .line 575
    const-string v1, "Total output streams can\'t be 0"

    .line 576
    .line 577
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v0

    .line 581
    :cond_18
    new-instance v0, Ljava/io/IOException;

    .line 582
    .line 583
    const-string v1, "Folder without coders"

    .line 584
    .line 585
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    throw v0

    .line 589
    :cond_19
    move-object v0, v2

    .line 590
    const/4 v1, 0x0

    .line 591
    iget-wide v4, v0, Ljg/r;->c:J

    .line 592
    .line 593
    int-to-long v8, v10

    .line 594
    sub-long/2addr v4, v8

    .line 595
    iget-wide v8, v0, Ljg/r;->d:J

    .line 596
    .line 597
    sub-long/2addr v8, v4

    .line 598
    iget v2, v0, Ljg/r;->a:I

    .line 599
    .line 600
    int-to-long v4, v2

    .line 601
    cmp-long v2, v8, v4

    .line 602
    .line 603
    if-ltz v2, :cond_21

    .line 604
    .line 605
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    const/16 v4, 0xc

    .line 610
    .line 611
    if-ne v2, v4, :cond_20

    .line 612
    .line 613
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-eqz v3, :cond_1c

    .line 622
    .line 623
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    check-cast v3, Ljava/lang/Integer;

    .line 628
    .line 629
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    const/4 v4, 0x0

    .line 634
    :goto_c
    if-ge v4, v3, :cond_1a

    .line 635
    .line 636
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 637
    .line 638
    .line 639
    move-result-wide v5

    .line 640
    const-wide/16 v8, 0x0

    .line 641
    .line 642
    cmp-long v10, v5, v8

    .line 643
    .line 644
    if-ltz v10, :cond_1b

    .line 645
    .line 646
    add-int/lit8 v4, v4, 0x1

    .line 647
    .line 648
    goto :goto_c

    .line 649
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 650
    .line 651
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    throw v0

    .line 655
    :cond_1c
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    const/16 v3, 0xa

    .line 660
    .line 661
    if-ne v2, v3, :cond_1e

    .line 662
    .line 663
    iget v2, v0, Ljg/r;->f:I

    .line 664
    .line 665
    move-object/from16 v4, p1

    .line 666
    .line 667
    invoke-static {v4, v2}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    iput-object v2, v0, Ljg/r;->g:Ljava/util/BitSet;

    .line 672
    .line 673
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    mul-int/lit8 v2, v2, 0x4

    .line 678
    .line 679
    int-to-long v2, v2

    .line 680
    invoke-static {v4, v2, v3}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 681
    .line 682
    .line 683
    move-result-wide v8

    .line 684
    cmp-long v6, v8, v2

    .line 685
    .line 686
    if-ltz v6, :cond_1d

    .line 687
    .line 688
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    goto :goto_d

    .line 693
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    .line 694
    .line 695
    const-string v1, "invalid number of CRCs in UnpackInfo"

    .line 696
    .line 697
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    throw v0

    .line 701
    :cond_1e
    move-object/from16 v4, p1

    .line 702
    .line 703
    :goto_d
    if-nez v2, :cond_1f

    .line 704
    .line 705
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 706
    .line 707
    .line 708
    move-result v3

    .line 709
    goto :goto_e

    .line 710
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    .line 711
    .line 712
    const-string v1, "Badly terminated UnpackInfo"

    .line 713
    .line 714
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    throw v0

    .line 718
    :cond_20
    new-instance v0, Ljava/io/IOException;

    .line 719
    .line 720
    const-string v1, "Expected kCodersUnpackSize, got "

    .line 721
    .line 722
    invoke-static {v2, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    throw v0

    .line 730
    :cond_21
    new-instance v0, Ljava/io/IOException;

    .line 731
    .line 732
    const-string v1, "archive doesn\'t contain enough packed streams"

    .line 733
    .line 734
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v0

    .line 738
    :cond_22
    new-instance v0, Ljava/io/IOException;

    .line 739
    .line 740
    const-string v1, "External unsupported"

    .line 741
    .line 742
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw v0

    .line 746
    :cond_23
    new-instance v0, Ljava/io/IOException;

    .line 747
    .line 748
    const-string v1, "Expected kFolder, got "

    .line 749
    .line 750
    invoke-static {v3, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    throw v0

    .line 758
    :cond_24
    move-object v4, v1

    .line 759
    move-object v0, v2

    .line 760
    const/4 v1, 0x0

    .line 761
    :goto_e
    const/16 v2, 0x8

    .line 762
    .line 763
    if-ne v3, v2, :cond_34

    .line 764
    .line 765
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    new-instance v3, Ljava/util/LinkedList;

    .line 770
    .line 771
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 772
    .line 773
    .line 774
    const/16 v6, 0xd

    .line 775
    .line 776
    if-ne v2, v6, :cond_26

    .line 777
    .line 778
    const/4 v2, 0x0

    .line 779
    :goto_f
    iget v6, v0, Ljg/r;->f:I

    .line 780
    .line 781
    if-ge v2, v6, :cond_25

    .line 782
    .line 783
    const-string v6, "numStreams"

    .line 784
    .line 785
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 786
    .line 787
    .line 788
    move-result-wide v8

    .line 789
    invoke-static {v8, v9, v6}, Ljg/t;->r(JLjava/lang/String;)I

    .line 790
    .line 791
    .line 792
    move-result v6

    .line 793
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    add-int/lit8 v2, v2, 0x1

    .line 801
    .line 802
    goto :goto_f

    .line 803
    :cond_25
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    new-instance v6, Ljg/q;

    .line 808
    .line 809
    const/4 v8, 0x0

    .line 810
    invoke-direct {v6, v8}, Ljg/q;-><init>(I)V

    .line 811
    .line 812
    .line 813
    invoke-interface {v2, v6}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-interface {v2}, Lj$/util/stream/LongStream;->sum()J

    .line 818
    .line 819
    .line 820
    move-result-wide v8

    .line 821
    iput-wide v8, v0, Ljg/r;->e:J

    .line 822
    .line 823
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 824
    .line 825
    .line 826
    move-result v2

    .line 827
    goto :goto_10

    .line 828
    :cond_26
    iget v6, v0, Ljg/r;->f:I

    .line 829
    .line 830
    int-to-long v8, v6

    .line 831
    iput-wide v8, v0, Ljg/r;->e:J

    .line 832
    .line 833
    :goto_10
    iget-wide v8, v0, Ljg/r;->e:J

    .line 834
    .line 835
    const-string v6, "totalUnpackStreams"

    .line 836
    .line 837
    invoke-static {v8, v9, v6}, Ljg/t;->r(JLjava/lang/String;)I

    .line 838
    .line 839
    .line 840
    const/16 v6, 0x9

    .line 841
    .line 842
    if-ne v2, v6, :cond_2b

    .line 843
    .line 844
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    :cond_27
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 849
    .line 850
    .line 851
    move-result v6

    .line 852
    if-eqz v6, :cond_2a

    .line 853
    .line 854
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v6

    .line 858
    check-cast v6, Ljava/lang/Integer;

    .line 859
    .line 860
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 861
    .line 862
    .line 863
    move-result v6

    .line 864
    if-nez v6, :cond_28

    .line 865
    .line 866
    goto :goto_11

    .line 867
    :cond_28
    const/4 v8, 0x0

    .line 868
    :goto_12
    add-int/lit8 v9, v6, -0x1

    .line 869
    .line 870
    if-ge v8, v9, :cond_27

    .line 871
    .line 872
    invoke-static/range {p1 .. p1}, Ljg/t;->Q(Ljava/nio/ByteBuffer;)J

    .line 873
    .line 874
    .line 875
    move-result-wide v9

    .line 876
    const-wide/16 v11, 0x0

    .line 877
    .line 878
    cmp-long v13, v9, v11

    .line 879
    .line 880
    if-ltz v13, :cond_29

    .line 881
    .line 882
    add-int/lit8 v8, v8, 0x1

    .line 883
    .line 884
    goto :goto_12

    .line 885
    :cond_29
    new-instance v0, Ljava/io/IOException;

    .line 886
    .line 887
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    throw v0

    .line 891
    :cond_2a
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 892
    .line 893
    .line 894
    move-result v2

    .line 895
    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    if-eqz v6, :cond_2d

    .line 900
    .line 901
    iget-object v1, v0, Ljg/r;->g:Ljava/util/BitSet;

    .line 902
    .line 903
    if-nez v1, :cond_2c

    .line 904
    .line 905
    iget v0, v0, Ljg/r;->f:I

    .line 906
    .line 907
    goto :goto_13

    .line 908
    :cond_2c
    iget v0, v0, Ljg/r;->f:I

    .line 909
    .line 910
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    .line 911
    .line 912
    .line 913
    move-result v1

    .line 914
    sub-int/2addr v0, v1

    .line 915
    :goto_13
    const/16 v1, 0xa

    .line 916
    .line 917
    goto :goto_16

    .line 918
    :cond_2d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    const/4 v7, 0x0

    .line 923
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 924
    .line 925
    .line 926
    move-result v6

    .line 927
    if-eqz v6, :cond_30

    .line 928
    .line 929
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v6

    .line 933
    check-cast v6, Ljava/lang/Integer;

    .line 934
    .line 935
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 936
    .line 937
    .line 938
    move-result v6

    .line 939
    const/4 v8, 0x1

    .line 940
    if-ne v6, v8, :cond_2f

    .line 941
    .line 942
    iget-object v9, v0, Ljg/r;->g:Ljava/util/BitSet;

    .line 943
    .line 944
    if-eqz v9, :cond_2f

    .line 945
    .line 946
    add-int/lit8 v10, v1, 0x1

    .line 947
    .line 948
    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    if-nez v1, :cond_2e

    .line 953
    .line 954
    move v1, v10

    .line 955
    goto :goto_15

    .line 956
    :cond_2e
    move v1, v10

    .line 957
    goto :goto_14

    .line 958
    :cond_2f
    :goto_15
    add-int/2addr v7, v6

    .line 959
    goto :goto_14

    .line 960
    :cond_30
    move v0, v7

    .line 961
    goto :goto_13

    .line 962
    :goto_16
    if-ne v2, v1, :cond_32

    .line 963
    .line 964
    const-string v1, "numDigests"

    .line 965
    .line 966
    int-to-long v2, v0

    .line 967
    invoke-static {v2, v3, v1}, Ljg/t;->r(JLjava/lang/String;)I

    .line 968
    .line 969
    .line 970
    invoke-static {v4, v0}, Ljg/t;->M(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    mul-int/lit8 v0, v0, 0x4

    .line 979
    .line 980
    int-to-long v0, v0

    .line 981
    invoke-static {v4, v0, v1}, Ljg/t;->S(Ljava/nio/ByteBuffer;J)J

    .line 982
    .line 983
    .line 984
    move-result-wide v2

    .line 985
    cmp-long v5, v2, v0

    .line 986
    .line 987
    if-ltz v5, :cond_31

    .line 988
    .line 989
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 990
    .line 991
    .line 992
    move-result v2

    .line 993
    goto :goto_17

    .line 994
    :cond_31
    new-instance v0, Ljava/io/IOException;

    .line 995
    .line 996
    const-string v1, "invalid number of missing CRCs in SubStreamInfo"

    .line 997
    .line 998
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    throw v0

    .line 1002
    :cond_32
    :goto_17
    if-nez v2, :cond_33

    .line 1003
    .line 1004
    invoke-static/range {p1 .. p1}, Ljg/t;->L(Ljava/nio/ByteBuffer;)I

    .line 1005
    .line 1006
    .line 1007
    move-result v3

    .line 1008
    goto :goto_18

    .line 1009
    :cond_33
    new-instance v0, Ljava/io/IOException;

    .line 1010
    .line 1011
    const-string v1, "Badly terminated SubStreamsInfo"

    .line 1012
    .line 1013
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    throw v0

    .line 1017
    :cond_34
    :goto_18
    if-nez v3, :cond_35

    .line 1018
    .line 1019
    return-void

    .line 1020
    :cond_35
    new-instance v0, Ljava/io/IOException;

    .line 1021
    .line 1022
    const-string v1, "Badly terminated StreamsInfo"

    .line 1023
    .line 1024
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    goto :goto_1a

    .line 1028
    :goto_19
    throw v0

    .line 1029
    :goto_1a
    goto :goto_19
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-static {v0}, La2/s0;->u(Ljava/nio/channels/SeekableByteChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 11
    .line 12
    iget-object v0, p0, Ljg/t;->g:[B

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v2, p0, Ljg/t;->g:[B

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iput-object v2, p0, Ljg/t;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 24
    .line 25
    iget-object v3, p0, Ljg/t;->g:[B

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object v2, p0, Ljg/t;->g:[B

    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final read([B)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    array-length v2, p1

    .line 4
    if-nez v2, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    iget-object v3, p0, Ljg/t;->c:Ljg/e;

    .line 8
    .line 9
    iget-object v3, v3, Ljg/e;->g:[Ljg/n;

    .line 10
    .line 11
    iget v4, p0, Ljg/t;->d:I

    .line 12
    .line 13
    aget-object v3, v3, v4

    .line 14
    .line 15
    iget-wide v3, v3, Ljg/n;->p:J

    .line 16
    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v7, v3, v5

    .line 20
    .line 21
    if-nez v7, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 24
    .line 25
    sget-object v3, Lrg/b;->a:[B

    .line 26
    .line 27
    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v3, p0, Ljg/t;->h:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_5

    .line 38
    .line 39
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-le v4, v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/io/InputStream;

    .line 50
    .line 51
    :try_start_0
    new-instance v5, Lah/a;

    .line 52
    .line 53
    invoke-direct {v5, v1}, Lah/a;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-wide v6, 0x7fffffffffffffffL

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    invoke-static {v4, v6, v7, v5}, Lsg/b;->a(Ljava/io/InputStream;JLjava/util/function/Supplier;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception v2

    .line 78
    const-class v3, Ljava/lang/Throwable;

    .line 79
    .line 80
    :try_start_2
    const-string v4, "addSuppressed"

    .line 81
    .line 82
    new-array v5, v1, [Ljava/lang/Class;

    .line 83
    .line 84
    aput-object v3, v5, v0

    .line 85
    .line 86
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v2, v1, v0

    .line 93
    .line 94
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .line 96
    .line 97
    :catch_0
    :cond_3
    :goto_1
    throw p1

    .line 98
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/io/InputStream;

    .line 103
    .line 104
    :goto_2
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :goto_3
    return v0

    .line 109
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v0, "No current 7z entry (call getNextEntry() first)."

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :goto_4
    throw p1

    .line 118
    :goto_5
    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljg/t;->c:Ljg/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljg/e;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
