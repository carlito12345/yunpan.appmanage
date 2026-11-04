.class public final Lyf/j;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/PushbackInputStream;

.field public b:Lyf/c;

.field public final c:Ls4/a;

.field public final d:[C

.field public e:Lag/g;

.field public final f:Ljava/util/zip/CRC32;

.field public g:[B

.field public h:Z

.field public final i:Lag/h;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;[C)V
    .locals 2

    .line 1
    new-instance v0, Lag/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lag/h;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lyf/j;-><init>(Ljava/io/InputStream;[CLag/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[CLag/h;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    new-instance v0, Ls4/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ls4/a;-><init>(I)V

    iput-object v0, p0, Lyf/j;->c:Ls4/a;

    .line 4
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lyf/j;->f:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lyf/j;->h:Z

    .line 6
    iput-boolean v0, p0, Lyf/j;->j:Z

    .line 7
    iput-boolean v0, p0, Lyf/j;->k:Z

    .line 8
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lyf/j;->a:Ljava/io/PushbackInputStream;

    .line 9
    iput-object p2, p0, Lyf/j;->d:[C

    .line 10
    iput-object p3, p0, Lyf/j;->i:Lag/h;

    return-void
.end method


# virtual methods
.method public final A(Lag/f;Z)Lag/g;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lyf/j;->e:Lag/g;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-object v2, v0, Lyf/j;->g:[B

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x200

    .line 18
    .line 19
    new-array v2, v2, [B

    .line 20
    .line 21
    iput-object v2, v0, Lyf/j;->g:[B

    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v2, v0, Lyf/j;->g:[B

    .line 24
    .line 25
    array-length v5, v2

    .line 26
    invoke-virtual {v0, v2, v4, v5}, Lyf/j;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v5, -0x1

    .line 31
    if-eq v2, v5, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-boolean v3, v0, Lyf/j;->k:Z

    .line 35
    .line 36
    :cond_2
    iget-object v2, v0, Lyf/j;->a:Ljava/io/PushbackInputStream;

    .line 37
    .line 38
    iget-object v5, v0, Lyf/j;->i:Lag/h;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v6, v0, Lyf/j;->c:Ls4/a;

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v7, Lag/g;

    .line 49
    .line 50
    invoke-direct {v7}, Lag/g;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v8, 0x4

    .line 54
    new-array v9, v8, [B

    .line 55
    .line 56
    iget-object v10, v6, Ls4/a;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v10, Lv3/f;

    .line 59
    .line 60
    invoke-virtual {v10, v2}, Lv3/f;->I(Ljava/io/PushbackInputStream;)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    int-to-long v12, v11

    .line 65
    const-wide/32 v14, 0x30304b50

    .line 66
    .line 67
    .line 68
    cmp-long v16, v12, v14

    .line 69
    .line 70
    if-nez v16, :cond_3

    .line 71
    .line 72
    invoke-virtual {v10, v2}, Lv3/f;->I(Ljava/io/PushbackInputStream;)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    :cond_3
    int-to-long v11, v11

    .line 77
    const/4 v13, 0x2

    .line 78
    const-wide/32 v16, 0x4034b50

    .line 79
    .line 80
    .line 81
    const-wide/16 v20, -0x1

    .line 82
    .line 83
    const-string v14, "\\"

    .line 84
    .line 85
    const-string v15, "/"

    .line 86
    .line 87
    cmp-long v18, v11, v16

    .line 88
    .line 89
    if-eqz v18, :cond_4

    .line 90
    .line 91
    move-object v6, v14

    .line 92
    move-object/from16 v22, v15

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    const/4 v4, 0x2

    .line 96
    const/4 v7, 0x0

    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_4
    iput v3, v7, Lab/a;->b:I

    .line 100
    .line 101
    iget-object v11, v10, Lv3/f;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v11, [B

    .line 104
    .line 105
    array-length v12, v11

    .line 106
    invoke-static {v2, v11, v12}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v11}, Lv3/f;->K(I[B)I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    iput v12, v7, Lag/b;->c:I

    .line 114
    .line 115
    new-array v12, v13, [B

    .line 116
    .line 117
    invoke-static {v2, v12}, Leg/c;->j(Ljava/io/InputStream;[B)I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-ne v8, v13, :cond_22

    .line 122
    .line 123
    aget-byte v8, v12, v4

    .line 124
    .line 125
    invoke-static {v8, v4}, Leg/c;->g(BI)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    iput-boolean v8, v7, Lag/b;->l:Z

    .line 130
    .line 131
    aget-byte v8, v12, v4

    .line 132
    .line 133
    const/4 v4, 0x3

    .line 134
    invoke-static {v8, v4}, Leg/c;->g(BI)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    iput-boolean v8, v7, Lag/b;->n:Z

    .line 139
    .line 140
    aget-byte v8, v12, v3

    .line 141
    .line 142
    invoke-static {v8, v4}, Leg/c;->g(BI)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    iput-boolean v8, v7, Lag/b;->r:Z

    .line 147
    .line 148
    invoke-virtual {v12}, [B->clone()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, [B

    .line 153
    .line 154
    iput-object v8, v7, Lag/b;->d:[B

    .line 155
    .line 156
    array-length v8, v11

    .line 157
    invoke-static {v2, v11, v8}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 158
    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    invoke-static {v8, v11}, Lv3/f;->K(I[B)I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    invoke-static {v12}, Landroid/support/v4/media/session/a;->c(I)I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    iput v8, v7, Lag/b;->e:I

    .line 170
    .line 171
    invoke-virtual {v10, v2}, Lv3/f;->I(Ljava/io/PushbackInputStream;)I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    int-to-long v3, v8

    .line 176
    iput-wide v3, v7, Lag/b;->f:J

    .line 177
    .line 178
    invoke-static {v2, v9}, Leg/c;->j(Ljava/io/InputStream;[B)I

    .line 179
    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-virtual {v10, v3, v9}, Lv3/f;->J(I[B)J

    .line 183
    .line 184
    .line 185
    move-result-wide v8

    .line 186
    iput-wide v8, v7, Lag/b;->g:J

    .line 187
    .line 188
    iget-object v4, v10, Lv3/f;->d:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v4, [B

    .line 191
    .line 192
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 193
    .line 194
    .line 195
    const/4 v8, 0x4

    .line 196
    invoke-static {v2, v4, v8}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 197
    .line 198
    .line 199
    move-object/from16 v16, v14

    .line 200
    .line 201
    invoke-virtual {v10, v3, v4}, Lv3/f;->J(I[B)J

    .line 202
    .line 203
    .line 204
    move-result-wide v13

    .line 205
    iput-wide v13, v7, Lag/b;->h:J

    .line 206
    .line 207
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 208
    .line 209
    .line 210
    invoke-static {v2, v4, v8}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10, v3, v4}, Lv3/f;->J(I[B)J

    .line 214
    .line 215
    .line 216
    move-result-wide v12

    .line 217
    iput-wide v12, v7, Lag/b;->i:J

    .line 218
    .line 219
    array-length v4, v11

    .line 220
    invoke-static {v2, v11, v4}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 221
    .line 222
    .line 223
    invoke-static {v3, v11}, Lv3/f;->K(I[B)I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    array-length v8, v11

    .line 228
    invoke-static {v2, v11, v8}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 229
    .line 230
    .line 231
    invoke-static {v3, v11}, Lv3/f;->K(I[B)I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    iput v8, v7, Lag/b;->j:I

    .line 236
    .line 237
    if-lez v4, :cond_21

    .line 238
    .line 239
    new-array v3, v4, [B

    .line 240
    .line 241
    invoke-static {v2, v3}, Leg/c;->j(Ljava/io/InputStream;[B)I

    .line 242
    .line 243
    .line 244
    iget-boolean v4, v7, Lag/b;->r:Z

    .line 245
    .line 246
    const/4 v8, 0x0

    .line 247
    invoke-static {v3, v4, v8}, Lqf/c;->j([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    iput-object v3, v7, Lag/b;->k:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v3, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-nez v4, :cond_6

    .line 258
    .line 259
    move-object/from16 v4, v16

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_5

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_5
    const/4 v3, 0x0

    .line 269
    goto :goto_2

    .line 270
    :cond_6
    move-object/from16 v4, v16

    .line 271
    .line 272
    :goto_1
    const/4 v3, 0x1

    .line 273
    :goto_2
    iput-boolean v3, v7, Lag/b;->t:Z

    .line 274
    .line 275
    iget v3, v7, Lag/b;->j:I

    .line 276
    .line 277
    if-gtz v3, :cond_7

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_7
    const/4 v11, 0x4

    .line 281
    if-ge v3, v11, :cond_9

    .line 282
    .line 283
    if-lez v3, :cond_8

    .line 284
    .line 285
    int-to-long v11, v3

    .line 286
    invoke-virtual {v2, v11, v12}, Ljava/io/InputStream;->skip(J)J

    .line 287
    .line 288
    .line 289
    :cond_8
    move-object v3, v8

    .line 290
    goto :goto_3

    .line 291
    :cond_9
    new-array v11, v3, [B

    .line 292
    .line 293
    invoke-static {v2, v11}, Leg/c;->j(Ljava/io/InputStream;[B)I

    .line 294
    .line 295
    .line 296
    :try_start_0
    invoke-virtual {v6, v3, v11}, Ls4/a;->k(I[B)Ljava/util/ArrayList;

    .line 297
    .line 298
    .line 299
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_3

    .line 301
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    :goto_3
    iput-object v3, v7, Lag/b;->s:Ljava/util/List;

    .line 306
    .line 307
    :goto_4
    iget-object v3, v7, Lag/b;->s:Ljava/util/List;

    .line 308
    .line 309
    if-eqz v3, :cond_a

    .line 310
    .line 311
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-gtz v3, :cond_b

    .line 316
    .line 317
    :cond_a
    move-object v6, v4

    .line 318
    move-object v3, v8

    .line 319
    move-object/from16 v22, v15

    .line 320
    .line 321
    const/4 v4, 0x2

    .line 322
    goto :goto_5

    .line 323
    :cond_b
    iget-object v11, v7, Lag/b;->s:Ljava/util/List;

    .line 324
    .line 325
    iget-wide v13, v7, Lag/b;->i:J

    .line 326
    .line 327
    iget-wide v8, v7, Lag/b;->h:J

    .line 328
    .line 329
    const-wide/16 v17, 0x0

    .line 330
    .line 331
    const/16 v19, 0x0

    .line 332
    .line 333
    move-object v12, v10

    .line 334
    move-object v6, v4

    .line 335
    const/4 v4, 0x2

    .line 336
    move-object/from16 v22, v15

    .line 337
    .line 338
    const/4 v3, 0x0

    .line 339
    move-wide v15, v8

    .line 340
    invoke-static/range {v11 .. v19}, Ls4/a;->q(Ljava/util/List;Lv3/f;JJJI)Lag/k;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    if-nez v8, :cond_c

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_c
    iput-object v8, v7, Lag/b;->p:Lag/k;

    .line 348
    .line 349
    iget-wide v11, v8, Lag/k;->d:J

    .line 350
    .line 351
    cmp-long v9, v11, v20

    .line 352
    .line 353
    if-eqz v9, :cond_d

    .line 354
    .line 355
    iput-wide v11, v7, Lag/b;->i:J

    .line 356
    .line 357
    :cond_d
    iget-wide v8, v8, Lag/k;->c:J

    .line 358
    .line 359
    cmp-long v11, v8, v20

    .line 360
    .line 361
    if-eqz v11, :cond_e

    .line 362
    .line 363
    iput-wide v8, v7, Lag/b;->h:J

    .line 364
    .line 365
    :cond_e
    :goto_5
    invoke-static {v7, v10}, Ls4/a;->n(Lag/b;Lv3/f;)V

    .line 366
    .line 367
    .line 368
    iget-boolean v8, v7, Lag/b;->l:Z

    .line 369
    .line 370
    if-eqz v8, :cond_11

    .line 371
    .line 372
    iget v8, v7, Lag/b;->m:I

    .line 373
    .line 374
    const/4 v9, 0x4

    .line 375
    if-ne v8, v9, :cond_f

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_f
    iget-object v8, v7, Lag/b;->d:[B

    .line 379
    .line 380
    const/4 v9, 0x0

    .line 381
    aget-byte v8, v8, v9

    .line 382
    .line 383
    const/4 v9, 0x6

    .line 384
    invoke-static {v8, v9}, Leg/c;->g(BI)Z

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    if-eqz v8, :cond_10

    .line 389
    .line 390
    const/4 v8, 0x3

    .line 391
    iput v8, v7, Lag/b;->m:I

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_10
    iput v4, v7, Lag/b;->m:I

    .line 395
    .line 396
    :cond_11
    :goto_6
    iput-object v7, v0, Lyf/j;->e:Lag/g;

    .line 397
    .line 398
    if-nez v7, :cond_12

    .line 399
    .line 400
    return-object v3

    .line 401
    :cond_12
    iget-object v3, v7, Lag/b;->k:Ljava/lang/String;

    .line 402
    .line 403
    move-object/from16 v8, v22

    .line 404
    .line 405
    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    if-nez v8, :cond_15

    .line 410
    .line 411
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-eqz v3, :cond_13

    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_13
    iget v3, v7, Lag/b;->e:I

    .line 419
    .line 420
    const/4 v6, 0x1

    .line 421
    if-ne v3, v6, :cond_15

    .line 422
    .line 423
    iget-wide v8, v7, Lag/b;->i:J

    .line 424
    .line 425
    const-wide/16 v10, 0x0

    .line 426
    .line 427
    cmp-long v3, v8, v10

    .line 428
    .line 429
    if-ltz v3, :cond_14

    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_14
    new-instance v1, Ljava/io/IOException;

    .line 433
    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    const-string v3, "Invalid local file header for: "

    .line 437
    .line 438
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    iget-object v3, v7, Lag/b;->k:Ljava/lang/String;

    .line 442
    .line 443
    const-string v4, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    .line 444
    .line 445
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v1

    .line 453
    :cond_15
    :goto_7
    iget-object v3, v0, Lyf/j;->f:Ljava/util/zip/CRC32;

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 456
    .line 457
    .line 458
    if-eqz v1, :cond_16

    .line 459
    .line 460
    iget-object v3, v0, Lyf/j;->e:Lag/g;

    .line 461
    .line 462
    iget-wide v6, v1, Lag/b;->g:J

    .line 463
    .line 464
    iput-wide v6, v3, Lag/b;->g:J

    .line 465
    .line 466
    iget-wide v6, v1, Lag/b;->h:J

    .line 467
    .line 468
    iput-wide v6, v3, Lag/b;->h:J

    .line 469
    .line 470
    iget-wide v6, v1, Lag/b;->i:J

    .line 471
    .line 472
    iput-wide v6, v3, Lag/b;->i:J

    .line 473
    .line 474
    iget-boolean v1, v1, Lag/b;->t:Z

    .line 475
    .line 476
    iput-boolean v1, v3, Lag/b;->t:Z

    .line 477
    .line 478
    const/4 v1, 0x1

    .line 479
    iput-boolean v1, v0, Lyf/j;->h:Z

    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_16
    const/4 v1, 0x1

    .line 483
    const/4 v3, 0x0

    .line 484
    iput-boolean v3, v0, Lyf/j;->h:Z

    .line 485
    .line 486
    :goto_8
    iget-object v3, v0, Lyf/j;->e:Lag/g;

    .line 487
    .line 488
    new-instance v6, Lyf/i;

    .line 489
    .line 490
    invoke-static {v3}, Leg/c;->f(Lag/b;)I

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    invoke-static {v7, v1}, Ld0/f;->a(II)Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_17

    .line 499
    .line 500
    iget-wide v7, v3, Lag/b;->i:J

    .line 501
    .line 502
    goto :goto_b

    .line 503
    :cond_17
    iget-boolean v1, v3, Lag/b;->n:Z

    .line 504
    .line 505
    if-eqz v1, :cond_18

    .line 506
    .line 507
    iget-boolean v1, v0, Lyf/j;->h:Z

    .line 508
    .line 509
    if-nez v1, :cond_18

    .line 510
    .line 511
    :goto_9
    move-wide/from16 v7, v20

    .line 512
    .line 513
    goto :goto_b

    .line 514
    :cond_18
    iget-wide v7, v3, Lag/b;->h:J

    .line 515
    .line 516
    iget-boolean v1, v3, Lag/b;->l:Z

    .line 517
    .line 518
    if-nez v1, :cond_1a

    .line 519
    .line 520
    :cond_19
    const/4 v1, 0x0

    .line 521
    goto :goto_a

    .line 522
    :cond_1a
    iget v1, v3, Lag/b;->m:I

    .line 523
    .line 524
    const/4 v9, 0x4

    .line 525
    invoke-static {v1, v9}, Ld0/f;->a(II)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    const/16 v9, 0xc

    .line 530
    .line 531
    if-eqz v1, :cond_1c

    .line 532
    .line 533
    iget-object v1, v3, Lag/b;->q:Lag/a;

    .line 534
    .line 535
    if-eqz v1, :cond_1b

    .line 536
    .line 537
    iget v1, v1, Lag/a;->f:I

    .line 538
    .line 539
    if-eqz v1, :cond_1b

    .line 540
    .line 541
    invoke-static {v1}, Landroid/support/v4/media/session/a;->h(I)I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    add-int/2addr v1, v9

    .line 546
    goto :goto_a

    .line 547
    :cond_1b
    new-instance v1, Lwf/a;

    .line 548
    .line 549
    const-string v2, "AesExtraDataRecord not found or invalid for Aes encrypted entry"

    .line 550
    .line 551
    invoke-direct {v1, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    throw v1

    .line 555
    :cond_1c
    iget v1, v3, Lag/b;->m:I

    .line 556
    .line 557
    invoke-static {v1, v4}, Ld0/f;->a(II)Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-eqz v1, :cond_19

    .line 562
    .line 563
    const/16 v1, 0xc

    .line 564
    .line 565
    :goto_a
    int-to-long v9, v1

    .line 566
    sub-long v20, v7, v9

    .line 567
    .line 568
    goto :goto_9

    .line 569
    :goto_b
    invoke-direct {v6, v2, v7, v8}, Lyf/i;-><init>(Ljava/io/PushbackInputStream;J)V

    .line 570
    .line 571
    .line 572
    iget-boolean v1, v3, Lag/b;->l:Z

    .line 573
    .line 574
    if-nez v1, :cond_1d

    .line 575
    .line 576
    new-instance v1, Lyf/e;

    .line 577
    .line 578
    iget-object v2, v0, Lyf/j;->d:[C

    .line 579
    .line 580
    invoke-direct {v1, v6, v3, v2}, Lyf/e;-><init>(Lyf/i;Lag/g;[C)V

    .line 581
    .line 582
    .line 583
    goto :goto_c

    .line 584
    :cond_1d
    iget v1, v3, Lag/b;->m:I

    .line 585
    .line 586
    iget-boolean v2, v5, Lag/h;->a:Z

    .line 587
    .line 588
    const/4 v5, 0x4

    .line 589
    if-ne v1, v5, :cond_1e

    .line 590
    .line 591
    new-instance v1, Lyf/a;

    .line 592
    .line 593
    iget-object v5, v0, Lyf/j;->d:[C

    .line 594
    .line 595
    invoke-direct {v1, v6, v3, v5, v2}, Lyf/a;-><init>(Lyf/i;Lag/g;[CZ)V

    .line 596
    .line 597
    .line 598
    goto :goto_c

    .line 599
    :cond_1e
    if-ne v1, v4, :cond_20

    .line 600
    .line 601
    new-instance v1, Lyf/e;

    .line 602
    .line 603
    iget-object v5, v0, Lyf/j;->d:[C

    .line 604
    .line 605
    invoke-direct {v1, v6, v3, v5, v2}, Lyf/e;-><init>(Lyf/i;Lag/g;[CZ)V

    .line 606
    .line 607
    .line 608
    :goto_c
    invoke-static {v3}, Leg/c;->f(Lag/b;)I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-ne v2, v4, :cond_1f

    .line 613
    .line 614
    new-instance v2, Lyf/d;

    .line 615
    .line 616
    invoke-direct {v2, v1}, Lyf/d;-><init>(Lyf/b;)V

    .line 617
    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_1f
    new-instance v2, Lyf/h;

    .line 621
    .line 622
    invoke-direct {v2, v1}, Lyf/h;-><init>(Lyf/b;)V

    .line 623
    .line 624
    .line 625
    :goto_d
    iput-object v2, v0, Lyf/j;->b:Lyf/c;

    .line 626
    .line 627
    const/4 v1, 0x0

    .line 628
    iput-boolean v1, v0, Lyf/j;->k:Z

    .line 629
    .line 630
    iget-object v1, v0, Lyf/j;->e:Lag/g;

    .line 631
    .line 632
    return-object v1

    .line 633
    :cond_20
    const/4 v1, 0x0

    .line 634
    iget-object v2, v3, Lag/b;->k:Ljava/lang/String;

    .line 635
    .line 636
    const-string v3, "Entry ["

    .line 637
    .line 638
    const-string v4, "] Strong Encryption not supported"

    .line 639
    .line 640
    invoke-static {v3, v2, v4}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    new-instance v3, Lwf/a;

    .line 645
    .line 646
    invoke-direct {v3, v2, v1}, Lwf/a;-><init>(Ljava/lang/String;I)V

    .line 647
    .line 648
    .line 649
    throw v3

    .line 650
    :cond_21
    new-instance v1, Lwf/a;

    .line 651
    .line 652
    const-string v2, "Invalid entry name in local file header"

    .line 653
    .line 654
    invoke-direct {v1, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    throw v1

    .line 658
    :cond_22
    new-instance v1, Lwf/a;

    .line 659
    .line 660
    const-string v2, "Could not read enough bytes for generalPurposeFlags"

    .line 661
    .line 662
    invoke-direct {v1, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    goto :goto_f

    .line 666
    :goto_e
    throw v1

    .line 667
    :goto_f
    goto :goto_e
.end method

.method public final available()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lyf/j;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lyf/j;->k:Z

    .line 6
    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 11
    .line 12
    const-string v1, "Stream closed"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyf/j;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lyf/j;->b:Lyf/c;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lyf/c;->close()V

    .line 11
    .line 12
    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lyf/j;->j:Z

    .line 15
    .line 16
    return-void
.end method

.method public final r()V
    .locals 12

    .line 1
    iget-object v0, p0, Lyf/j;->b:Lyf/c;

    .line 2
    .line 3
    iget-object v1, p0, Lyf/j;->a:Ljava/io/PushbackInputStream;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lyf/c;->A(Ljava/io/PushbackInputStream;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lyf/j;->b:Lyf/c;

    .line 10
    .line 11
    invoke-virtual {v2, v1, v0}, Lyf/c;->r(Ljava/io/PushbackInputStream;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lyf/j;->e:Lag/g;

    .line 15
    .line 16
    iget-boolean v2, v0, Lag/b;->n:Z

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v2, :cond_6

    .line 22
    .line 23
    iget-boolean v2, p0, Lyf/j;->h:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v0, v0, Lag/b;->s:Ljava/util/List;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lag/e;

    .line 49
    .line 50
    iget-wide v6, v2, Lag/e;->c:J

    .line 51
    .line 52
    const-wide/16 v8, 0x1

    .line 53
    .line 54
    cmp-long v2, v6, v8

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    :goto_0
    iget-object v2, p0, Lyf/j;->c:Ls4/a;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-array v6, v3, [B

    .line 65
    .line 66
    invoke-static {v1, v6}, Leg/c;->j(Ljava/io/InputStream;[B)I

    .line 67
    .line 68
    .line 69
    iget-object v2, v2, Ls4/a;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lv3/f;

    .line 72
    .line 73
    invoke-virtual {v2, v4, v6}, Lv3/f;->J(I[B)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    const-wide/32 v9, 0x8074b50

    .line 78
    .line 79
    .line 80
    cmp-long v11, v7, v9

    .line 81
    .line 82
    if-nez v11, :cond_4

    .line 83
    .line 84
    invoke-static {v1, v6}, Leg/c;->j(Ljava/io/InputStream;[B)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4, v6}, Lv3/f;->J(I[B)J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    :cond_4
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, v2, Lv3/f;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, [B

    .line 96
    .line 97
    array-length v6, v0

    .line 98
    invoke-static {v1, v0, v6}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v4, v0}, Lv3/f;->J(I[B)J

    .line 102
    .line 103
    .line 104
    move-result-wide v9

    .line 105
    array-length v6, v0

    .line 106
    invoke-static {v1, v0, v6}, Lv3/f;->G(Ljava/io/PushbackInputStream;[BI)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4, v0}, Lv3/f;->J(I[B)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {v2, v1}, Lv3/f;->I(Ljava/io/PushbackInputStream;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    int-to-long v9, v0

    .line 119
    invoke-virtual {v2, v1}, Lv3/f;->I(Ljava/io/PushbackInputStream;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    int-to-long v0, v0

    .line 124
    :goto_1
    iget-object v2, p0, Lyf/j;->e:Lag/g;

    .line 125
    .line 126
    iput-wide v9, v2, Lag/b;->h:J

    .line 127
    .line 128
    iput-wide v0, v2, Lag/b;->i:J

    .line 129
    .line 130
    iput-wide v7, v2, Lag/b;->g:J

    .line 131
    .line 132
    :cond_6
    :goto_2
    iget-object v0, p0, Lyf/j;->e:Lag/g;

    .line 133
    .line 134
    iget v1, v0, Lag/b;->m:I

    .line 135
    .line 136
    iget-object v2, p0, Lyf/j;->f:Ljava/util/zip/CRC32;

    .line 137
    .line 138
    const/4 v6, 0x2

    .line 139
    if-ne v1, v3, :cond_7

    .line 140
    .line 141
    iget-object v0, v0, Lag/b;->q:Lag/a;

    .line 142
    .line 143
    iget v0, v0, Lag/a;->d:I

    .line 144
    .line 145
    invoke-static {v0, v6}, Ld0/f;->a(II)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_7
    iget-object v0, p0, Lyf/j;->e:Lag/g;

    .line 153
    .line 154
    iget-wide v0, v0, Lag/b;->g:J

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v7

    .line 160
    cmp-long v3, v0, v7

    .line 161
    .line 162
    if-eqz v3, :cond_9

    .line 163
    .line 164
    iget-object v0, p0, Lyf/j;->e:Lag/g;

    .line 165
    .line 166
    iget-boolean v1, v0, Lag/b;->l:Z

    .line 167
    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    iget v0, v0, Lag/b;->m:I

    .line 171
    .line 172
    invoke-static {v6, v0}, Ld0/f;->a(II)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    :cond_8
    new-instance v0, Lwf/a;

    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v2, "Reached end of entry, but crc verification failed for "

    .line 181
    .line 182
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lyf/j;->e:Lag/g;

    .line 186
    .line 187
    iget-object v2, v2, Lag/b;->k:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {v0, v1, v4}, Lwf/a;-><init>(Ljava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_9
    :goto_3
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lyf/j;->e:Lag/g;

    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 204
    .line 205
    .line 206
    iput-boolean v5, p0, Lyf/j;->k:Z

    .line 207
    .line 208
    return-void
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lyf/j;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v3

    .line 3
    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyf/j;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 2

    .line 5
    iget-boolean v0, p0, Lyf/j;->j:Z

    if-nez v0, :cond_5

    if-ltz p3, :cond_4

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lyf/j;->e:Lag/g;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lyf/j;->b:Lyf/c;

    invoke-virtual {v0, p1, p2, p3}, Lyf/c;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lyf/j;->r()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lyf/j;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p3

    .line 10
    :goto_1
    iget-object p2, p0, Lyf/j;->e:Lag/g;

    .line 11
    iget-boolean p3, p2, Lag/b;->l:Z

    if-eqz p3, :cond_3

    .line 12
    iget p2, p2, Lag/b;->m:I

    const/4 p3, 0x2

    .line 13
    invoke-static {p3, p2}, Ld0/f;->a(II)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    new-instance p2, Lwf/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lwf/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 15
    :cond_3
    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
