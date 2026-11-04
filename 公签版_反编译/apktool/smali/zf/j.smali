.class public final Lzf/j;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Lzf/d;

.field public final b:[C

.field public final c:Lag/l;

.field public d:Lzf/c;

.field public e:Lag/f;

.field public f:Lag/g;

.field public final g:Ls9/a;

.field public final h:Ls4/a;

.field public final i:Ljava/util/zip/CRC32;

.field public final j:Lv3/f;

.field public k:J

.field public final l:Lag/h;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;[C)V
    .locals 6

    .line 1
    new-instance v0, Lag/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lag/h;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lag/l;

    .line 8
    .line 9
    invoke-direct {v2}, Lag/l;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ls9/a;

    .line 16
    .line 17
    const/16 v4, 0x19

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-direct {v3, v4, v5}, Ls9/a;-><init>(IZ)V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Lzf/j;->g:Ls9/a;

    .line 24
    .line 25
    new-instance v3, Ls4/a;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    invoke-direct {v3, v4}, Ls4/a;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lzf/j;->h:Ls4/a;

    .line 33
    .line 34
    new-instance v3, Ljava/util/zip/CRC32;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lzf/j;->i:Ljava/util/zip/CRC32;

    .line 40
    .line 41
    new-instance v3, Lv3/f;

    .line 42
    .line 43
    invoke-direct {v3, v5, v4}, Lv3/f;-><init>(BI)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lzf/j;->j:Lv3/f;

    .line 47
    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    iput-wide v3, p0, Lzf/j;->k:J

    .line 51
    .line 52
    iput-boolean v1, p0, Lzf/j;->n:Z

    .line 53
    .line 54
    new-instance v1, Lzf/d;

    .line 55
    .line 56
    invoke-direct {v1, p1}, Lzf/d;-><init>(Ljava/io/FileOutputStream;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lzf/j;->a:Lzf/d;

    .line 60
    .line 61
    iput-object p2, p0, Lzf/j;->b:[C

    .line 62
    .line 63
    iput-object v0, p0, Lzf/j;->l:Lag/h;

    .line 64
    .line 65
    iput-object v2, p0, Lzf/j;->c:Lag/l;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lzf/j;->m:Z

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final A(Lag/m;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v6, 0x33

    .line 6
    .line 7
    const/4 v7, 0x2

    .line 8
    const/4 v8, 0x3

    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v10, 0x1

    .line 11
    iget-object v11, v0, Lag/m;->g:Ljava/lang/String;

    .line 12
    .line 13
    const-string v12, "fileNameInZip is null or empty"

    .line 14
    .line 15
    if-eqz v11, :cond_32

    .line 16
    .line 17
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v11

    .line 21
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    if-eqz v11, :cond_32

    .line 26
    .line 27
    iget v11, v0, Lag/m;->a:I

    .line 28
    .line 29
    const-wide/16 v13, 0x0

    .line 30
    .line 31
    if-ne v11, v10, :cond_1

    .line 32
    .line 33
    iget-wide v2, v0, Lag/m;->i:J

    .line 34
    .line 35
    cmp-long v16, v2, v13

    .line 36
    .line 37
    if-gez v16, :cond_1

    .line 38
    .line 39
    iget-object v2, v0, Lag/m;->g:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2}, Leg/c;->i(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-boolean v2, v0, Lag/m;->j:Z

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v2, "uncompressed size should be set for zip entries of compression type store"

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    :goto_0
    new-instance v2, Lag/m;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lag/m;-><init>(Lag/m;)V

    .line 63
    .line 64
    .line 65
    iget v3, v2, Lag/m;->d:I

    .line 66
    .line 67
    iget-object v11, v0, Lag/m;->g:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v11}, Leg/c;->i(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-eqz v11, :cond_2

    .line 74
    .line 75
    iput-boolean v9, v2, Lag/m;->j:Z

    .line 76
    .line 77
    iput v10, v2, Lag/m;->a:I

    .line 78
    .line 79
    iput-boolean v9, v2, Lag/m;->c:Z

    .line 80
    .line 81
    iput-wide v13, v2, Lag/m;->i:J

    .line 82
    .line 83
    :cond_2
    iget-wide v4, v0, Lag/m;->h:J

    .line 84
    .line 85
    cmp-long v0, v4, v13

    .line 86
    .line 87
    if-gtz v0, :cond_4

    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    cmp-long v0, v4, v13

    .line 94
    .line 95
    if-gez v0, :cond_3

    .line 96
    .line 97
    iput-wide v13, v2, Lag/m;->h:J

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iput-wide v4, v2, Lag/m;->h:J

    .line 101
    .line 102
    :cond_4
    :goto_1
    iget-object v0, v1, Lzf/j;->a:Lzf/d;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v4, v1, Lzf/j;->l:Lag/h;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v5, v1, Lzf/j;->g:Ls9/a;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance v5, Lag/f;

    .line 118
    .line 119
    invoke-direct {v5}, Lag/f;-><init>()V

    .line 120
    .line 121
    .line 122
    iput v8, v5, Lab/a;->b:I

    .line 123
    .line 124
    new-array v11, v7, [B

    .line 125
    .line 126
    aput-byte v6, v11, v9

    .line 127
    .line 128
    aput-byte v8, v11, v10

    .line 129
    .line 130
    const-string v18, "os.name"

    .line 131
    .line 132
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v19

    .line 136
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const-string v15, "win"

    .line 141
    .line 142
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_5

    .line 147
    .line 148
    aput-byte v9, v11, v10

    .line 149
    .line 150
    :cond_5
    iget-object v6, v1, Lzf/j;->j:Lv3/f;

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v9, v11}, Lv3/f;->K(I[B)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    iput v6, v5, Lag/f;->v:I

    .line 160
    .line 161
    iget v6, v2, Lag/m;->a:I

    .line 162
    .line 163
    if-ne v6, v7, :cond_6

    .line 164
    .line 165
    const/4 v6, 0x2

    .line 166
    goto :goto_2

    .line 167
    :cond_6
    const/4 v6, 0x1

    .line 168
    :goto_2
    iget-wide v13, v2, Lag/m;->i:J

    .line 169
    .line 170
    const-wide v8, 0xffffffffL

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    cmp-long v11, v13, v8

    .line 176
    .line 177
    if-lez v11, :cond_7

    .line 178
    .line 179
    const/4 v6, 0x3

    .line 180
    :cond_7
    iget-boolean v11, v2, Lag/m;->c:Z

    .line 181
    .line 182
    if-eqz v11, :cond_8

    .line 183
    .line 184
    const/4 v11, 0x4

    .line 185
    invoke-static {v3, v11}, Ld0/f;->a(II)Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_9

    .line 190
    .line 191
    const/4 v6, 0x4

    .line 192
    goto :goto_3

    .line 193
    :cond_8
    const/4 v11, 0x4

    .line 194
    :cond_9
    :goto_3
    if-eq v6, v10, :cond_d

    .line 195
    .line 196
    if-eq v6, v7, :cond_c

    .line 197
    .line 198
    const/4 v13, 0x3

    .line 199
    if-eq v6, v13, :cond_b

    .line 200
    .line 201
    if-ne v6, v11, :cond_a

    .line 202
    .line 203
    const/16 v6, 0x33

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_a
    const/4 v6, 0x0

    .line 207
    throw v6

    .line 208
    :cond_b
    const/16 v6, 0x2d

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_c
    const/16 v6, 0x14

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_d
    const/16 v6, 0xa

    .line 215
    .line 216
    :goto_4
    iput v6, v5, Lag/b;->c:I

    .line 217
    .line 218
    iget-boolean v6, v2, Lag/m;->c:Z

    .line 219
    .line 220
    if-eqz v6, :cond_12

    .line 221
    .line 222
    const/4 v13, 0x4

    .line 223
    if-ne v3, v13, :cond_12

    .line 224
    .line 225
    const/4 v13, 0x3

    .line 226
    iput v13, v5, Lag/b;->e:I

    .line 227
    .line 228
    new-instance v13, Lag/a;

    .line 229
    .line 230
    invoke-direct {v13}, Lag/a;-><init>()V

    .line 231
    .line 232
    .line 233
    iget v14, v2, Lag/m;->f:I

    .line 234
    .line 235
    if-eqz v14, :cond_e

    .line 236
    .line 237
    iput v14, v13, Lag/a;->d:I

    .line 238
    .line 239
    :cond_e
    iget v14, v2, Lag/m;->e:I

    .line 240
    .line 241
    if-ne v14, v10, :cond_f

    .line 242
    .line 243
    iput v10, v13, Lag/a;->f:I

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_f
    if-ne v14, v7, :cond_10

    .line 247
    .line 248
    iput v7, v13, Lag/a;->f:I

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_10
    const/4 v11, 0x3

    .line 252
    if-ne v14, v11, :cond_11

    .line 253
    .line 254
    iput v11, v13, Lag/a;->f:I

    .line 255
    .line 256
    :goto_5
    iget v11, v2, Lag/m;->a:I

    .line 257
    .line 258
    iput v11, v13, Lag/a;->g:I

    .line 259
    .line 260
    iput-object v13, v5, Lag/b;->q:Lag/a;

    .line 261
    .line 262
    iget v11, v5, Lag/b;->j:I

    .line 263
    .line 264
    add-int/lit8 v11, v11, 0xb

    .line 265
    .line 266
    iput v11, v5, Lag/b;->j:I

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_11
    new-instance v0, Lwf/a;

    .line 270
    .line 271
    const-string v2, "invalid AES key strength"

    .line 272
    .line 273
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_12
    iget v11, v2, Lag/m;->a:I

    .line 278
    .line 279
    iput v11, v5, Lag/b;->e:I

    .line 280
    .line 281
    :goto_6
    if-eqz v6, :cond_14

    .line 282
    .line 283
    if-eqz v3, :cond_13

    .line 284
    .line 285
    if-eq v3, v10, :cond_13

    .line 286
    .line 287
    iput-boolean v10, v5, Lag/b;->l:Z

    .line 288
    .line 289
    iput v3, v5, Lag/b;->m:I

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_13
    new-instance v0, Lwf/a;

    .line 293
    .line 294
    const-string v2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    .line 295
    .line 296
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_14
    :goto_7
    iget-object v6, v2, Lag/m;->g:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v6}, Leg/c;->h(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    if-eqz v11, :cond_31

    .line 307
    .line 308
    iput-object v6, v5, Lag/b;->k:Ljava/lang/String;

    .line 309
    .line 310
    sget-object v11, Leg/d;->c:Ljava/nio/charset/Charset;

    .line 311
    .line 312
    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    array-length v12, v12

    .line 317
    const/4 v12, 0x0

    .line 318
    iput v12, v5, Lag/f;->w:I

    .line 319
    .line 320
    iget-wide v12, v2, Lag/m;->h:J

    .line 321
    .line 322
    invoke-static {v12, v13}, Leg/c;->d(J)J

    .line 323
    .line 324
    .line 325
    move-result-wide v12

    .line 326
    iput-wide v12, v5, Lag/b;->f:J

    .line 327
    .line 328
    invoke-static {v6}, Leg/c;->i(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    iput-boolean v6, v5, Lag/b;->t:Z

    .line 333
    .line 334
    const/4 v12, 0x4

    .line 335
    new-array v13, v12, [B

    .line 336
    .line 337
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v12

    .line 345
    const-string v14, "nux"

    .line 346
    .line 347
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-nez v12, :cond_15

    .line 352
    .line 353
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v12

    .line 357
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    const-string v14, "mac"

    .line 362
    .line 363
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    if-eqz v12, :cond_16

    .line 368
    .line 369
    :cond_15
    const/4 v12, 0x0

    .line 370
    const/4 v14, 0x4

    .line 371
    goto :goto_8

    .line 372
    :cond_16
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v12

    .line 376
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    if-eqz v12, :cond_18

    .line 385
    .line 386
    if-eqz v6, :cond_18

    .line 387
    .line 388
    const/4 v12, 0x0

    .line 389
    aget-byte v6, v13, v12

    .line 390
    .line 391
    const/4 v14, 0x4

    .line 392
    invoke-static {v6, v14}, Leg/c;->l(BI)B

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    aput-byte v6, v13, v12

    .line 397
    .line 398
    goto :goto_9

    .line 399
    :goto_8
    if-eqz v6, :cond_17

    .line 400
    .line 401
    sget-object v6, Leg/c;->b:[B

    .line 402
    .line 403
    invoke-static {v6, v12, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_17
    sget-object v6, Leg/c;->a:[B

    .line 408
    .line 409
    invoke-static {v6, v12, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    .line 411
    .line 412
    :cond_18
    :goto_9
    iput-object v13, v5, Lag/f;->x:[B

    .line 413
    .line 414
    iget-boolean v6, v2, Lag/m;->j:Z

    .line 415
    .line 416
    if-eqz v6, :cond_19

    .line 417
    .line 418
    iget-wide v12, v2, Lag/m;->i:J

    .line 419
    .line 420
    const-wide/16 v14, -0x1

    .line 421
    .line 422
    cmp-long v6, v12, v14

    .line 423
    .line 424
    if-nez v6, :cond_19

    .line 425
    .line 426
    const-wide/16 v12, 0x0

    .line 427
    .line 428
    iput-wide v12, v5, Lag/b;->i:J

    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_19
    iget-wide v12, v2, Lag/m;->i:J

    .line 432
    .line 433
    iput-wide v12, v5, Lag/b;->i:J

    .line 434
    .line 435
    :goto_a
    iget-boolean v6, v2, Lag/m;->c:Z

    .line 436
    .line 437
    if-eqz v6, :cond_1a

    .line 438
    .line 439
    if-ne v3, v7, :cond_1a

    .line 440
    .line 441
    const-wide/16 v12, 0x0

    .line 442
    .line 443
    iput-wide v12, v5, Lag/b;->g:J

    .line 444
    .line 445
    :cond_1a
    iget-boolean v6, v5, Lag/b;->l:Z

    .line 446
    .line 447
    new-array v12, v7, [B

    .line 448
    .line 449
    if-eqz v6, :cond_1b

    .line 450
    .line 451
    const/4 v6, 0x0

    .line 452
    invoke-static {v6, v6}, Leg/c;->l(BI)B

    .line 453
    .line 454
    .line 455
    move-result v13

    .line 456
    goto :goto_b

    .line 457
    :cond_1b
    const/4 v13, 0x0

    .line 458
    :goto_b
    iget v6, v2, Lag/m;->a:I

    .line 459
    .line 460
    invoke-static {v7, v6}, Ld0/f;->a(II)Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_20

    .line 465
    .line 466
    iget v6, v2, Lag/m;->b:I

    .line 467
    .line 468
    const/4 v14, 0x6

    .line 469
    invoke-static {v14, v6}, Ld0/f;->a(II)Z

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    if-eqz v6, :cond_1c

    .line 474
    .line 475
    and-int/lit8 v6, v13, -0x3

    .line 476
    .line 477
    int-to-byte v6, v6

    .line 478
    :goto_c
    and-int/lit8 v6, v6, -0x5

    .line 479
    .line 480
    int-to-byte v13, v6

    .line 481
    goto :goto_d

    .line 482
    :cond_1c
    iget v6, v2, Lag/m;->b:I

    .line 483
    .line 484
    const/16 v14, 0x8

    .line 485
    .line 486
    invoke-static {v14, v6}, Ld0/f;->a(II)Z

    .line 487
    .line 488
    .line 489
    move-result v6

    .line 490
    if-eqz v6, :cond_1d

    .line 491
    .line 492
    invoke-static {v13, v10}, Leg/c;->l(BI)B

    .line 493
    .line 494
    .line 495
    move-result v6

    .line 496
    goto :goto_c

    .line 497
    :cond_1d
    iget v6, v2, Lag/m;->b:I

    .line 498
    .line 499
    const/4 v14, 0x4

    .line 500
    invoke-static {v14, v6}, Ld0/f;->a(II)Z

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    if-eqz v6, :cond_1e

    .line 505
    .line 506
    and-int/lit8 v6, v13, -0x3

    .line 507
    .line 508
    int-to-byte v6, v6

    .line 509
    invoke-static {v6, v7}, Leg/c;->l(BI)B

    .line 510
    .line 511
    .line 512
    move-result v13

    .line 513
    goto :goto_d

    .line 514
    :cond_1e
    iget v6, v2, Lag/m;->b:I

    .line 515
    .line 516
    invoke-static {v7, v6}, Ld0/f;->a(II)Z

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    if-nez v6, :cond_1f

    .line 521
    .line 522
    iget v6, v2, Lag/m;->b:I

    .line 523
    .line 524
    const/16 v14, 0xa

    .line 525
    .line 526
    invoke-static {v14, v6}, Ld0/f;->a(II)Z

    .line 527
    .line 528
    .line 529
    move-result v6

    .line 530
    if-eqz v6, :cond_20

    .line 531
    .line 532
    :cond_1f
    invoke-static {v13, v10}, Leg/c;->l(BI)B

    .line 533
    .line 534
    .line 535
    move-result v6

    .line 536
    invoke-static {v6, v7}, Leg/c;->l(BI)B

    .line 537
    .line 538
    .line 539
    move-result v13

    .line 540
    :cond_20
    :goto_d
    iget-boolean v6, v2, Lag/m;->j:Z

    .line 541
    .line 542
    if-eqz v6, :cond_21

    .line 543
    .line 544
    const/4 v6, 0x3

    .line 545
    invoke-static {v13, v6}, Leg/c;->l(BI)B

    .line 546
    .line 547
    .line 548
    move-result v13

    .line 549
    :goto_e
    const/4 v14, 0x0

    .line 550
    goto :goto_f

    .line 551
    :cond_21
    const/4 v6, 0x3

    .line 552
    goto :goto_e

    .line 553
    :goto_f
    aput-byte v13, v12, v14

    .line 554
    .line 555
    aget-byte v13, v12, v10

    .line 556
    .line 557
    invoke-static {v13, v6}, Leg/c;->l(BI)B

    .line 558
    .line 559
    .line 560
    move-result v13

    .line 561
    aput-byte v13, v12, v10

    .line 562
    .line 563
    iput-object v12, v5, Lag/b;->d:[B

    .line 564
    .line 565
    iget-boolean v6, v2, Lag/m;->j:Z

    .line 566
    .line 567
    iput-boolean v6, v5, Lag/b;->n:Z

    .line 568
    .line 569
    const/4 v6, 0x0

    .line 570
    iput-object v6, v5, Lag/f;->z:Ljava/lang/String;

    .line 571
    .line 572
    iput-object v5, v1, Lzf/j;->e:Lag/f;

    .line 573
    .line 574
    iget-wide v13, v0, Lzf/d;->b:J

    .line 575
    .line 576
    iput-wide v13, v5, Lag/f;->y:J

    .line 577
    .line 578
    new-instance v6, Lag/g;

    .line 579
    .line 580
    invoke-direct {v6}, Lag/g;-><init>()V

    .line 581
    .line 582
    .line 583
    iput v10, v6, Lab/a;->b:I

    .line 584
    .line 585
    iget v13, v5, Lag/b;->c:I

    .line 586
    .line 587
    iput v13, v6, Lag/b;->c:I

    .line 588
    .line 589
    iget v13, v5, Lag/b;->e:I

    .line 590
    .line 591
    iput v13, v6, Lag/b;->e:I

    .line 592
    .line 593
    iget-wide v13, v5, Lag/b;->f:J

    .line 594
    .line 595
    iput-wide v13, v6, Lag/b;->f:J

    .line 596
    .line 597
    iget-wide v13, v5, Lag/b;->i:J

    .line 598
    .line 599
    iput-wide v13, v6, Lag/b;->i:J

    .line 600
    .line 601
    iget-object v13, v5, Lag/b;->k:Ljava/lang/String;

    .line 602
    .line 603
    iput-object v13, v6, Lag/b;->k:Ljava/lang/String;

    .line 604
    .line 605
    iget-boolean v13, v5, Lag/b;->l:Z

    .line 606
    .line 607
    iput-boolean v13, v6, Lag/b;->l:Z

    .line 608
    .line 609
    iget v13, v5, Lag/b;->m:I

    .line 610
    .line 611
    iput v13, v6, Lag/b;->m:I

    .line 612
    .line 613
    iget-object v13, v5, Lag/b;->q:Lag/a;

    .line 614
    .line 615
    iput-object v13, v6, Lag/b;->q:Lag/a;

    .line 616
    .line 617
    iget-wide v13, v5, Lag/b;->g:J

    .line 618
    .line 619
    iput-wide v13, v6, Lag/b;->g:J

    .line 620
    .line 621
    iget-wide v13, v5, Lag/b;->h:J

    .line 622
    .line 623
    iput-wide v13, v6, Lag/b;->h:J

    .line 624
    .line 625
    invoke-virtual {v12}, [B->clone()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v12

    .line 629
    check-cast v12, [B

    .line 630
    .line 631
    iput-object v12, v6, Lag/b;->d:[B

    .line 632
    .line 633
    iget-boolean v12, v5, Lag/b;->n:Z

    .line 634
    .line 635
    iput-boolean v12, v6, Lag/b;->n:Z

    .line 636
    .line 637
    iget v5, v5, Lag/b;->j:I

    .line 638
    .line 639
    iput v5, v6, Lag/b;->j:I

    .line 640
    .line 641
    iput-object v6, v1, Lzf/j;->f:Lag/g;

    .line 642
    .line 643
    iget-object v5, v1, Lzf/j;->c:Lag/l;

    .line 644
    .line 645
    iget-object v12, v1, Lzf/j;->h:Ls4/a;

    .line 646
    .line 647
    iget-object v13, v12, Ls4/a;->c:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v13, [B

    .line 650
    .line 651
    iget-object v12, v12, Ls4/a;->b:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v12, Lv3/f;

    .line 654
    .line 655
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    .line 656
    .line 657
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 658
    .line 659
    .line 660
    :try_start_0
    iget v15, v6, Lab/a;->b:I

    .line 661
    .line 662
    move-object/from16 p1, v11

    .line 663
    .line 664
    invoke-static {v15}, Lta/q;->e(I)J

    .line 665
    .line 666
    .line 667
    move-result-wide v10

    .line 668
    long-to-int v11, v10

    .line 669
    invoke-virtual {v12, v14, v11}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 670
    .line 671
    .line 672
    iget v10, v6, Lag/b;->c:I

    .line 673
    .line 674
    invoke-virtual {v12, v14, v10}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 675
    .line 676
    .line 677
    iget-object v10, v6, Lag/b;->d:[B

    .line 678
    .line 679
    invoke-virtual {v14, v10}, Ljava/io/OutputStream;->write([B)V

    .line 680
    .line 681
    .line 682
    iget v10, v6, Lag/b;->e:I

    .line 683
    .line 684
    invoke-static {v10}, Landroid/support/v4/media/session/a;->d(I)I

    .line 685
    .line 686
    .line 687
    move-result v10

    .line 688
    invoke-virtual {v12, v14, v10}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 689
    .line 690
    .line 691
    iget-wide v10, v6, Lag/b;->f:J

    .line 692
    .line 693
    invoke-static {v13, v10, v11}, Lv3/f;->W([BJ)V

    .line 694
    .line 695
    .line 696
    const/4 v10, 0x0

    .line 697
    const/4 v11, 0x4

    .line 698
    invoke-virtual {v14, v13, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 699
    .line 700
    .line 701
    iget-wide v7, v6, Lag/b;->g:J

    .line 702
    .line 703
    invoke-static {v13, v7, v8}, Lv3/f;->W([BJ)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v14, v13, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 707
    .line 708
    .line 709
    iget-wide v7, v6, Lag/b;->h:J

    .line 710
    .line 711
    const-wide v9, 0xffffffffL

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    cmp-long v11, v7, v9

    .line 717
    .line 718
    if-gez v11, :cond_23

    .line 719
    .line 720
    move v11, v3

    .line 721
    move-object/from16 v17, v4

    .line 722
    .line 723
    iget-wide v3, v6, Lag/b;->i:J

    .line 724
    .line 725
    cmp-long v18, v3, v9

    .line 726
    .line 727
    if-ltz v18, :cond_22

    .line 728
    .line 729
    goto :goto_11

    .line 730
    :cond_22
    const/4 v3, 0x0

    .line 731
    goto :goto_12

    .line 732
    :goto_10
    move-object v2, v0

    .line 733
    goto/16 :goto_19

    .line 734
    .line 735
    :cond_23
    move v11, v3

    .line 736
    move-object/from16 v17, v4

    .line 737
    .line 738
    :goto_11
    const/4 v3, 0x1

    .line 739
    :goto_12
    if-eqz v3, :cond_24

    .line 740
    .line 741
    invoke-static {v13, v9, v10}, Lv3/f;->W([BJ)V

    .line 742
    .line 743
    .line 744
    const/4 v4, 0x0

    .line 745
    const/4 v7, 0x4

    .line 746
    invoke-virtual {v14, v13, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v14, v13, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 750
    .line 751
    .line 752
    const/4 v4, 0x1

    .line 753
    iput-boolean v4, v5, Lag/l;->h:Z

    .line 754
    .line 755
    iput-boolean v4, v6, Lag/g;->v:Z

    .line 756
    .line 757
    const/4 v4, 0x0

    .line 758
    goto :goto_13

    .line 759
    :catchall_0
    move-exception v0

    .line 760
    goto :goto_10

    .line 761
    :cond_24
    invoke-static {v13, v7, v8}, Lv3/f;->W([BJ)V

    .line 762
    .line 763
    .line 764
    const/4 v4, 0x0

    .line 765
    const/4 v5, 0x4

    .line 766
    invoke-virtual {v14, v13, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 767
    .line 768
    .line 769
    iget-wide v7, v6, Lag/b;->i:J

    .line 770
    .line 771
    invoke-static {v13, v7, v8}, Lv3/f;->W([BJ)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v14, v13, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 775
    .line 776
    .line 777
    iput-boolean v4, v6, Lag/g;->v:Z

    .line 778
    .line 779
    :goto_13
    new-array v5, v4, [B

    .line 780
    .line 781
    iget-object v4, v6, Lag/b;->k:Ljava/lang/String;

    .line 782
    .line 783
    invoke-static {v4}, Leg/c;->h(Ljava/lang/String;)Z

    .line 784
    .line 785
    .line 786
    move-result v4

    .line 787
    if-eqz v4, :cond_25

    .line 788
    .line 789
    iget-object v4, v6, Lag/b;->k:Ljava/lang/String;

    .line 790
    .line 791
    move-object/from16 v7, p1

    .line 792
    .line 793
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    goto :goto_14

    .line 798
    :cond_25
    move-object/from16 v7, p1

    .line 799
    .line 800
    :goto_14
    array-length v4, v5

    .line 801
    invoke-virtual {v12, v14, v4}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 802
    .line 803
    .line 804
    if-eqz v3, :cond_26

    .line 805
    .line 806
    const/16 v19, 0x14

    .line 807
    .line 808
    goto :goto_15

    .line 809
    :cond_26
    const/16 v19, 0x0

    .line 810
    .line 811
    :goto_15
    iget-object v4, v6, Lag/b;->q:Lag/a;

    .line 812
    .line 813
    if-eqz v4, :cond_27

    .line 814
    .line 815
    add-int/lit8 v19, v19, 0xb

    .line 816
    .line 817
    :cond_27
    move/from16 v4, v19

    .line 818
    .line 819
    invoke-virtual {v12, v14, v4}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 820
    .line 821
    .line 822
    array-length v4, v5

    .line 823
    if-lez v4, :cond_28

    .line 824
    .line 825
    invoke-virtual {v14, v5}, Ljava/io/OutputStream;->write([B)V

    .line 826
    .line 827
    .line 828
    :cond_28
    if-eqz v3, :cond_29

    .line 829
    .line 830
    const-wide/16 v3, 0x1

    .line 831
    .line 832
    long-to-int v4, v3

    .line 833
    invoke-virtual {v12, v14, v4}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 834
    .line 835
    .line 836
    const/16 v3, 0x10

    .line 837
    .line 838
    invoke-virtual {v12, v14, v3}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 839
    .line 840
    .line 841
    iget-wide v3, v6, Lag/b;->i:J

    .line 842
    .line 843
    invoke-virtual {v12, v14, v3, v4}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 844
    .line 845
    .line 846
    iget-wide v3, v6, Lag/b;->h:J

    .line 847
    .line 848
    invoke-virtual {v12, v14, v3, v4}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 849
    .line 850
    .line 851
    :cond_29
    iget-object v3, v6, Lag/b;->q:Lag/a;

    .line 852
    .line 853
    if-eqz v3, :cond_2a

    .line 854
    .line 855
    iget v4, v3, Lab/a;->b:I

    .line 856
    .line 857
    invoke-static {v4}, Lta/q;->e(I)J

    .line 858
    .line 859
    .line 860
    move-result-wide v4

    .line 861
    long-to-int v5, v4

    .line 862
    invoke-virtual {v12, v14, v5}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 863
    .line 864
    .line 865
    iget v4, v3, Lag/a;->c:I

    .line 866
    .line 867
    invoke-virtual {v12, v14, v4}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 868
    .line 869
    .line 870
    iget v4, v3, Lag/a;->d:I

    .line 871
    .line 872
    invoke-static {v4}, Landroid/support/v4/media/session/a;->i(I)I

    .line 873
    .line 874
    .line 875
    move-result v4

    .line 876
    invoke-virtual {v12, v14, v4}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 877
    .line 878
    .line 879
    iget-object v4, v3, Lag/a;->e:Ljava/lang/String;

    .line 880
    .line 881
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    invoke-virtual {v14, v4}, Ljava/io/OutputStream;->write([B)V

    .line 886
    .line 887
    .line 888
    iget v4, v3, Lag/a;->f:I

    .line 889
    .line 890
    invoke-static {v4}, Landroid/support/v4/media/session/a;->g(I)I

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    int-to-byte v4, v4

    .line 895
    const/4 v5, 0x1

    .line 896
    new-array v6, v5, [B

    .line 897
    .line 898
    const/4 v5, 0x0

    .line 899
    aput-byte v4, v6, v5

    .line 900
    .line 901
    invoke-virtual {v14, v6}, Ljava/io/OutputStream;->write([B)V

    .line 902
    .line 903
    .line 904
    iget v3, v3, Lag/a;->g:I

    .line 905
    .line 906
    invoke-static {v3}, Landroid/support/v4/media/session/a;->d(I)I

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    invoke-virtual {v12, v14, v3}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 911
    .line 912
    .line 913
    :cond_2a
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    invoke-virtual {v0, v3}, Lzf/d;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    .line 919
    .line 920
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 921
    .line 922
    .line 923
    new-instance v3, Lzf/i;

    .line 924
    .line 925
    invoke-direct {v3, v0}, Lzf/i;-><init>(Ljava/io/OutputStream;)V

    .line 926
    .line 927
    .line 928
    iget-boolean v0, v2, Lag/m;->c:Z

    .line 929
    .line 930
    if-nez v0, :cond_2b

    .line 931
    .line 932
    new-instance v0, Lzf/f;

    .line 933
    .line 934
    invoke-direct {v0, v3, v2}, Lzf/f;-><init>(Lzf/i;Lag/m;)V

    .line 935
    .line 936
    .line 937
    :goto_16
    const/4 v5, 0x2

    .line 938
    goto :goto_17

    .line 939
    :cond_2b
    iget-object v0, v1, Lzf/j;->b:[C

    .line 940
    .line 941
    if-eqz v0, :cond_30

    .line 942
    .line 943
    array-length v4, v0

    .line 944
    if-eqz v4, :cond_30

    .line 945
    .line 946
    move-object/from16 v4, v17

    .line 947
    .line 948
    iget-boolean v4, v4, Lag/h;->a:Z

    .line 949
    .line 950
    const/4 v5, 0x4

    .line 951
    if-ne v11, v5, :cond_2c

    .line 952
    .line 953
    new-instance v5, Lzf/a;

    .line 954
    .line 955
    invoke-direct {v5, v3, v2, v0, v4}, Lzf/a;-><init>(Lzf/i;Lag/m;[CZ)V

    .line 956
    .line 957
    .line 958
    move-object v0, v5

    .line 959
    goto :goto_16

    .line 960
    :cond_2c
    const/4 v5, 0x2

    .line 961
    if-ne v11, v5, :cond_2e

    .line 962
    .line 963
    new-instance v6, Lzf/f;

    .line 964
    .line 965
    invoke-direct {v6, v3, v2, v0, v4}, Lzf/f;-><init>(Lzf/i;Lag/m;[CZ)V

    .line 966
    .line 967
    .line 968
    move-object v0, v6

    .line 969
    :goto_17
    iget v3, v2, Lag/m;->a:I

    .line 970
    .line 971
    if-ne v3, v5, :cond_2d

    .line 972
    .line 973
    new-instance v3, Lzf/e;

    .line 974
    .line 975
    iget v2, v2, Lag/m;->b:I

    .line 976
    .line 977
    invoke-direct {v3, v0, v2}, Lzf/e;-><init>(Lzf/b;I)V

    .line 978
    .line 979
    .line 980
    goto :goto_18

    .line 981
    :cond_2d
    new-instance v3, Lzf/h;

    .line 982
    .line 983
    invoke-direct {v3, v0}, Lzf/h;-><init>(Lzf/b;)V

    .line 984
    .line 985
    .line 986
    :goto_18
    iput-object v3, v1, Lzf/j;->d:Lzf/c;

    .line 987
    .line 988
    const/4 v2, 0x0

    .line 989
    iput-boolean v2, v1, Lzf/j;->n:Z

    .line 990
    .line 991
    return-void

    .line 992
    :cond_2e
    const/4 v0, 0x3

    .line 993
    if-ne v11, v0, :cond_2f

    .line 994
    .line 995
    new-instance v0, Lwf/a;

    .line 996
    .line 997
    const-string v2, " encryption method is not supported"

    .line 998
    .line 999
    const-string v3, "ZIP_STANDARD_VARIANT_STRONG"

    .line 1000
    .line 1001
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    throw v0

    .line 1009
    :cond_2f
    new-instance v0, Lwf/a;

    .line 1010
    .line 1011
    const-string v2, "Invalid encryption method"

    .line 1012
    .line 1013
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    throw v0

    .line 1017
    :cond_30
    new-instance v0, Lwf/a;

    .line 1018
    .line 1019
    const-string v2, "password not set"

    .line 1020
    .line 1021
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    throw v0

    .line 1025
    :goto_19
    :try_start_1
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1026
    .line 1027
    .line 1028
    goto :goto_1a

    .line 1029
    :catchall_1
    move-exception v0

    .line 1030
    move-object v3, v0

    .line 1031
    const-class v0, Ljava/lang/Throwable;

    .line 1032
    .line 1033
    :try_start_2
    const-string v4, "addSuppressed"

    .line 1034
    .line 1035
    const/4 v5, 0x1

    .line 1036
    new-array v6, v5, [Ljava/lang/Class;

    .line 1037
    .line 1038
    const/4 v7, 0x0

    .line 1039
    aput-object v0, v6, v7

    .line 1040
    .line 1041
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    new-array v4, v5, [Ljava/lang/Object;

    .line 1046
    .line 1047
    aput-object v3, v4, v7

    .line 1048
    .line 1049
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1050
    .line 1051
    .line 1052
    :catch_0
    :goto_1a
    throw v2

    .line 1053
    :cond_31
    new-instance v0, Lwf/a;

    .line 1054
    .line 1055
    invoke-direct {v0, v12}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    throw v0

    .line 1059
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1060
    .line 1061
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_1c

    .line 1065
    :goto_1b
    throw v0

    .line 1066
    :goto_1c
    goto :goto_1b
.end method

.method public final close()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lzf/j;->n:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lzf/j;->r()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v3, p0, Lzf/j;->c:Lag/l;

    .line 11
    .line 12
    iget-object v2, v3, Lag/l;->c:Lag/d;

    .line 13
    .line 14
    iget-object v9, p0, Lzf/j;->a:Lzf/d;

    .line 15
    .line 16
    iget-wide v4, v9, Lzf/d;->b:J

    .line 17
    .line 18
    iput-wide v4, v2, Lag/d;->f:J

    .line 19
    .line 20
    iget-object v2, p0, Lzf/j;->l:Lag/h;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lzf/j;->h:Ls4/a;

    .line 26
    .line 27
    iget-object v4, v2, Ls4/a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v8, v4

    .line 30
    check-cast v8, Lv3/f;

    .line 31
    .line 32
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {v3, v9}, Ls4/a;->m(Lag/l;Ljava/io/OutputStream;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v4, v3, Lag/l;->h:Z

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    iget-object v4, v3, Lag/l;->e:Lag/j;

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    iget-wide v4, v4, Lag/j;->k:J

    .line 49
    .line 50
    const-wide/16 v6, -0x1

    .line 51
    .line 52
    cmp-long v11, v4, v6

    .line 53
    .line 54
    if-eqz v11, :cond_1

    .line 55
    .line 56
    :goto_0
    move-wide v5, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v4, v3, Lag/l;->c:Lag/d;

    .line 59
    .line 60
    iget-wide v4, v4, Lag/d;->f:J

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    invoke-virtual {v2, v3, v10, v8}, Ls4/a;->w(Lag/l;Ljava/io/ByteArrayOutputStream;Lv3/f;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-boolean v2, v3, Lag/l;->h:Z

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    const-wide v11, 0xffffffffL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmp-long v2, v5, v11

    .line 80
    .line 81
    if-gez v2, :cond_2

    .line 82
    .line 83
    iget-object v2, v3, Lag/l;->b:Lag/c;

    .line 84
    .line 85
    iget-object v2, v2, Lag/c;->a:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const v7, 0xffff

    .line 92
    .line 93
    .line 94
    if-lt v2, v7, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v2

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    :goto_2
    iget-object v2, v3, Lag/l;->e:Lag/j;

    .line 100
    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    new-instance v2, Lag/j;

    .line 104
    .line 105
    invoke-direct {v2}, Lag/j;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v2, v3, Lag/l;->e:Lag/j;

    .line 109
    .line 110
    :cond_3
    iget-object v2, v3, Lag/l;->d:Lag/i;

    .line 111
    .line 112
    if-nez v2, :cond_4

    .line 113
    .line 114
    new-instance v2, Lag/i;

    .line 115
    .line 116
    invoke-direct {v2}, Lag/i;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v2, v3, Lag/l;->d:Lag/i;

    .line 120
    .line 121
    :cond_4
    iget-object v2, v3, Lag/l;->d:Lag/i;

    .line 122
    .line 123
    int-to-long v11, v4

    .line 124
    add-long/2addr v11, v5

    .line 125
    iput-wide v11, v2, Lag/i;->d:J

    .line 126
    .line 127
    iput v0, v2, Lag/i;->c:I

    .line 128
    .line 129
    iput v1, v2, Lag/i;->e:I

    .line 130
    .line 131
    invoke-static {v3, v4, v5, v6}, Ls4/a;->a(Lag/l;IJ)Lag/j;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iput-object v2, v3, Lag/l;->e:Lag/j;

    .line 136
    .line 137
    invoke-static {v2, v10, v8}, Ls4/a;->z(Lag/j;Ljava/io/ByteArrayOutputStream;Lv3/f;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v3, Lag/l;->d:Lag/i;

    .line 141
    .line 142
    const-wide/32 v11, 0x7064b50

    .line 143
    .line 144
    .line 145
    long-to-int v7, v11

    .line 146
    invoke-virtual {v8, v10, v7}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 147
    .line 148
    .line 149
    iget v7, v2, Lag/i;->c:I

    .line 150
    .line 151
    invoke-virtual {v8, v10, v7}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 152
    .line 153
    .line 154
    iget-wide v11, v2, Lag/i;->d:J

    .line 155
    .line 156
    invoke-virtual {v8, v10, v11, v12}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 157
    .line 158
    .line 159
    iget v2, v2, Lag/i;->e:I

    .line 160
    .line 161
    invoke-virtual {v8, v10, v2}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 162
    .line 163
    .line 164
    :cond_5
    move-object v7, v10

    .line 165
    invoke-static/range {v3 .. v8}, Ls4/a;->x(Lag/l;IJLjava/io/ByteArrayOutputStream;Lv3/f;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    invoke-virtual {v9, v2}, Lzf/d;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Lzf/d;->close()V

    .line 181
    .line 182
    .line 183
    iput-boolean v1, p0, Lzf/j;->m:Z

    .line 184
    .line 185
    return-void

    .line 186
    :cond_6
    :try_start_1
    new-instance v2, Lwf/a;

    .line 187
    .line 188
    const-string v3, "invalid buff to write as zip headers"

    .line 189
    .line 190
    invoke-direct {v2, v3}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :goto_3
    :try_start_2
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :catchall_1
    move-exception v3

    .line 199
    const-class v4, Ljava/lang/Throwable;

    .line 200
    .line 201
    :try_start_3
    const-string v5, "addSuppressed"

    .line 202
    .line 203
    new-array v6, v1, [Ljava/lang/Class;

    .line 204
    .line 205
    aput-object v4, v6, v0

    .line 206
    .line 207
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    .line 213
    aput-object v3, v1, v0

    .line 214
    .line 215
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 216
    .line 217
    .line 218
    :catch_0
    :goto_4
    goto :goto_6

    .line 219
    :goto_5
    throw v2

    .line 220
    :goto_6
    goto :goto_5
.end method

.method public final r()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lzf/j;->d:Lzf/c;

    .line 4
    .line 5
    invoke-virtual {v2}, Lzf/c;->r()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lzf/j;->d:Lzf/c;

    .line 9
    .line 10
    iget-object v2, v2, Lzf/c;->a:Lzf/b;

    .line 11
    .line 12
    iget-object v2, v2, Lzf/b;->a:Lzf/i;

    .line 13
    .line 14
    iget-wide v2, v2, Lzf/i;->a:J

    .line 15
    .line 16
    iget-object v4, p0, Lzf/j;->e:Lag/f;

    .line 17
    .line 18
    iput-wide v2, v4, Lag/b;->h:J

    .line 19
    .line 20
    iget-object v5, p0, Lzf/j;->f:Lag/g;

    .line 21
    .line 22
    iput-wide v2, v5, Lag/b;->h:J

    .line 23
    .line 24
    iget-wide v2, p0, Lzf/j;->k:J

    .line 25
    .line 26
    iput-wide v2, v4, Lag/b;->i:J

    .line 27
    .line 28
    iput-wide v2, v5, Lag/b;->i:J

    .line 29
    .line 30
    iget-boolean v2, v4, Lag/b;->l:Z

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget v2, v4, Lag/b;->m:I

    .line 36
    .line 37
    invoke-static {v2, v3}, Ld0/f;->a(II)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    iget-object v2, v4, Lag/b;->q:Lag/a;

    .line 44
    .line 45
    iget v2, v2, Lag/a;->d:I

    .line 46
    .line 47
    invoke-static {v2, v1}, Ld0/f;->a(II)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x1

    .line 53
    :goto_0
    iget-object v4, p0, Lzf/j;->i:Ljava/util/zip/CRC32;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lzf/j;->e:Lag/f;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    iput-wide v5, v2, Lag/b;->g:J

    .line 64
    .line 65
    iget-object v2, p0, Lzf/j;->f:Lag/g;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    iput-wide v5, v2, Lag/b;->g:J

    .line 72
    .line 73
    :cond_1
    iget-object v2, p0, Lzf/j;->c:Lag/l;

    .line 74
    .line 75
    iget-object v5, v2, Lag/l;->a:Ljava/util/ArrayList;

    .line 76
    .line 77
    iget-object v6, p0, Lzf/j;->f:Lag/g;

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v2, v2, Lag/l;->b:Lag/c;

    .line 83
    .line 84
    iget-object v2, v2, Lag/c;->a:Ljava/util/ArrayList;

    .line 85
    .line 86
    iget-object v5, p0, Lzf/j;->e:Lag/f;

    .line 87
    .line 88
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lzf/j;->f:Lag/g;

    .line 92
    .line 93
    iget-boolean v5, v2, Lag/b;->n:Z

    .line 94
    .line 95
    if-eqz v5, :cond_4

    .line 96
    .line 97
    iget-object v5, p0, Lzf/j;->h:Ls4/a;

    .line 98
    .line 99
    iget-object v6, v5, Ls4/a;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v6, [B

    .line 102
    .line 103
    iget-object v5, v5, Ls4/a;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Lv3/f;

    .line 106
    .line 107
    iget-object v7, p0, Lzf/j;->a:Lzf/d;

    .line 108
    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 112
    .line 113
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .line 115
    .line 116
    const-wide/32 v9, 0x8074b50

    .line 117
    .line 118
    .line 119
    long-to-int v10, v9

    .line 120
    :try_start_0
    invoke-virtual {v5, v8, v10}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 121
    .line 122
    .line 123
    iget-wide v9, v2, Lag/b;->g:J

    .line 124
    .line 125
    invoke-static {v6, v9, v10}, Lv3/f;->W([BJ)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v6, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 129
    .line 130
    .line 131
    iget-boolean v9, v2, Lag/g;->v:Z

    .line 132
    .line 133
    if-eqz v9, :cond_2

    .line 134
    .line 135
    iget-wide v9, v2, Lag/b;->h:J

    .line 136
    .line 137
    invoke-virtual {v5, v8, v9, v10}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 138
    .line 139
    .line 140
    iget-wide v2, v2, Lag/b;->i:J

    .line 141
    .line 142
    invoke-virtual {v5, v8, v2, v3}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    iget-wide v9, v2, Lag/b;->h:J

    .line 147
    .line 148
    invoke-static {v6, v9, v10}, Lv3/f;->W([BJ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v6, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 152
    .line 153
    .line 154
    iget-wide v9, v2, Lag/b;->i:J

    .line 155
    .line 156
    invoke-static {v6, v9, v10}, Lv3/f;->W([BJ)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v6, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v7, v2}, Lzf/d;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :catchall_0
    move-exception v2

    .line 174
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catchall_1
    move-exception v3

    .line 179
    const-class v4, Ljava/lang/Throwable;

    .line 180
    .line 181
    :try_start_2
    const-string v5, "addSuppressed"

    .line 182
    .line 183
    new-array v6, v1, [Ljava/lang/Class;

    .line 184
    .line 185
    aput-object v4, v6, v0

    .line 186
    .line 187
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    .line 193
    aput-object v3, v1, v0

    .line 194
    .line 195
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .line 197
    .line 198
    :catch_0
    :goto_2
    throw v2

    .line 199
    :cond_3
    new-instance v0, Lwf/a;

    .line 200
    .line 201
    const-string v1, "input parameters is null, cannot write extended local header"

    .line 202
    .line 203
    invoke-direct {v0, v1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_4
    :goto_3
    const-wide/16 v2, 0x0

    .line 208
    .line 209
    iput-wide v2, p0, Lzf/j;->k:J

    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lzf/j;->d:Lzf/c;

    .line 215
    .line 216
    invoke-virtual {v0}, Lzf/c;->close()V

    .line 217
    .line 218
    .line 219
    iput-boolean v1, p0, Lzf/j;->n:Z

    .line 220
    .line 221
    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lzf/j;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lzf/j;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lzf/j;->m:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lzf/j;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 6
    iget-object v0, p0, Lzf/j;->d:Lzf/c;

    invoke-virtual {v0, p1, p2, p3}, Lzf/c;->write([BII)V

    .line 7
    iget-wide p1, p0, Lzf/j;->k:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lzf/j;->k:J

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
