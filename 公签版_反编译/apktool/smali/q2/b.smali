.class public final Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final a:[B

.field public final b:Lu1/q;

.field public final c:Z

.field public final d:Ldd/c;

.field public e:Lf2/u0;

.field public f:Ll2/j0;

.field public g:I

.field public h:Lr1/d0;

.field public i:Ll2/t;

.field public j:I

.field public k:I

.field public l:Lq2/a;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2a

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lq2/b;->a:[B

    .line 9
    .line 10
    new-instance v0, Lu1/q;

    .line 11
    .line 12
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v1, v2}, Lu1/q;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lq2/b;->b:Lu1/q;

    .line 22
    .line 23
    iput-boolean v2, p0, Lq2/b;->c:Z

    .line 24
    .line 25
    new-instance v0, Ldd/c;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v0, v1, v3}, Ldd/c;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lq2/b;->d:Ldd/c;

    .line 33
    .line 34
    iput v2, p0, Lq2/b;->g:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 2

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iput-object p1, p0, Lq2/b;->e:Lf2/u0;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lf2/u0;->z(II)Ll2/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lq2/b;->f:Ll2/j0;

    .line 12
    .line 13
    invoke-interface {p1}, Ll2/q;->q()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    iget v5, v0, Lq2/b;->g:I

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    if-eqz v5, :cond_29

    .line 11
    .line 12
    iget-object v7, v0, Lq2/b;->a:[B

    .line 13
    .line 14
    if-eq v5, v4, :cond_28

    .line 15
    .line 16
    const/4 v8, 0x4

    .line 17
    const/4 v9, 0x3

    .line 18
    if-eq v5, v2, :cond_26

    .line 19
    .line 20
    const/4 v10, 0x7

    .line 21
    if-eq v5, v9, :cond_1d

    .line 22
    .line 23
    const-wide/16 v11, 0x0

    .line 24
    .line 25
    const-wide/16 v13, -0x1

    .line 26
    .line 27
    const/4 v7, 0x5

    .line 28
    if-eq v5, v8, :cond_17

    .line 29
    .line 30
    if-ne v5, v7, :cond_16

    .line 31
    .line 32
    iget-object v5, v0, Lq2/b;->f:Ll2/j0;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v5, v0, Lq2/b;->i:Ll2/t;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v5, v0, Lq2/b;->l:Lq2/a;

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    iget-object v7, v5, Lq2/a;->c:Ll2/f;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    move-object/from16 v1, p1

    .line 51
    .line 52
    check-cast v1, Ll2/l;

    .line 53
    .line 54
    move-object/from16 v2, p2

    .line 55
    .line 56
    invoke-virtual {v5, v1, v2}, Lq2/a;->b(Ll2/l;Ldd/c;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto/16 :goto_d

    .line 61
    .line 62
    :cond_0
    iget-wide v7, v0, Lq2/b;->n:J

    .line 63
    .line 64
    const/4 v5, -0x1

    .line 65
    cmp-long v9, v7, v13

    .line 66
    .line 67
    if-nez v9, :cond_8

    .line 68
    .line 69
    iget-object v7, v0, Lq2/b;->i:Ll2/t;

    .line 70
    .line 71
    move-object/from16 v8, p1

    .line 72
    .line 73
    check-cast v8, Ll2/l;

    .line 74
    .line 75
    iput v3, v8, Ll2/l;->f:I

    .line 76
    .line 77
    move-object/from16 v8, p1

    .line 78
    .line 79
    check-cast v8, Ll2/l;

    .line 80
    .line 81
    invoke-virtual {v8, v4, v3}, Ll2/l;->k(IZ)Z

    .line 82
    .line 83
    .line 84
    new-array v9, v4, [B

    .line 85
    .line 86
    invoke-virtual {v8, v9, v3, v4, v3}, Ll2/l;->c([BIIZ)Z

    .line 87
    .line 88
    .line 89
    aget-byte v9, v9, v3

    .line 90
    .line 91
    and-int/2addr v9, v4

    .line 92
    if-ne v9, v4, :cond_1

    .line 93
    .line 94
    const/4 v9, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 v9, 0x0

    .line 97
    :goto_0
    invoke-virtual {v8, v2, v3}, Ll2/l;->k(IZ)Z

    .line 98
    .line 99
    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    const/4 v1, 0x7

    .line 103
    :cond_2
    new-instance v2, Lu1/q;

    .line 104
    .line 105
    invoke-direct {v2, v1}, Lu1/q;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iget-object v10, v2, Lu1/q;->a:[B

    .line 109
    .line 110
    const/4 v13, 0x0

    .line 111
    :goto_1
    if-ge v13, v1, :cond_4

    .line 112
    .line 113
    sub-int v14, v1, v13

    .line 114
    .line 115
    invoke-virtual {v8, v13, v14, v10}, Ll2/l;->m(II[B)I

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-ne v14, v5, :cond_3

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    add-int/2addr v13, v14

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :goto_2
    invoke-virtual {v2, v13}, Lu1/q;->N(I)V

    .line 125
    .line 126
    .line 127
    iput v3, v8, Ll2/l;->f:I

    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v2}, Lu1/q;->J()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    if-eqz v9, :cond_5

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    iget v5, v7, Ll2/t;->b:I

    .line 137
    .line 138
    int-to-long v8, v5

    .line 139
    mul-long v1, v1, v8

    .line 140
    .line 141
    :goto_3
    iget-wide v7, v7, Ll2/t;->j:J

    .line 142
    .line 143
    cmp-long v5, v7, v11

    .line 144
    .line 145
    if-eqz v5, :cond_6

    .line 146
    .line 147
    cmp-long v5, v1, v7

    .line 148
    .line 149
    if-lez v5, :cond_6

    .line 150
    .line 151
    :goto_4
    const/4 v4, 0x0

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    move-wide v11, v1

    .line 154
    goto :goto_5

    .line 155
    :catch_0
    nop

    .line 156
    goto :goto_4

    .line 157
    :goto_5
    if-eqz v4, :cond_7

    .line 158
    .line 159
    iput-wide v11, v0, Lq2/b;->n:J

    .line 160
    .line 161
    goto/16 :goto_d

    .line 162
    .line 163
    :cond_7
    invoke-static {v6, v6}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    throw v1

    .line 168
    :cond_8
    iget-object v1, v0, Lq2/b;->b:Lu1/q;

    .line 169
    .line 170
    iget v2, v1, Lu1/q;->c:I

    .line 171
    .line 172
    const-wide/32 v6, 0xf4240

    .line 173
    .line 174
    .line 175
    const v8, 0x8000

    .line 176
    .line 177
    .line 178
    if-ge v2, v8, :cond_b

    .line 179
    .line 180
    iget-object v9, v1, Lu1/q;->a:[B

    .line 181
    .line 182
    sub-int/2addr v8, v2

    .line 183
    move-object/from16 v10, p1

    .line 184
    .line 185
    check-cast v10, Ll2/l;

    .line 186
    .line 187
    invoke-virtual {v10, v9, v2, v8}, Ll2/l;->read([BII)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-ne v8, v5, :cond_9

    .line 192
    .line 193
    const/4 v9, 0x1

    .line 194
    goto :goto_6

    .line 195
    :cond_9
    const/4 v9, 0x0

    .line 196
    :goto_6
    if-nez v9, :cond_a

    .line 197
    .line 198
    add-int/2addr v2, v8

    .line 199
    invoke-virtual {v1, v2}, Lu1/q;->N(I)V

    .line 200
    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_a
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_c

    .line 208
    .line 209
    iget-wide v1, v0, Lq2/b;->n:J

    .line 210
    .line 211
    mul-long v1, v1, v6

    .line 212
    .line 213
    iget-object v3, v0, Lq2/b;->i:Ll2/t;

    .line 214
    .line 215
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 216
    .line 217
    iget v3, v3, Ll2/t;->e:I

    .line 218
    .line 219
    int-to-long v3, v3

    .line 220
    div-long v7, v1, v3

    .line 221
    .line 222
    iget-object v6, v0, Lq2/b;->f:Ll2/j0;

    .line 223
    .line 224
    iget v10, v0, Lq2/b;->m:I

    .line 225
    .line 226
    const/4 v12, 0x0

    .line 227
    const/4 v9, 0x1

    .line 228
    const/4 v11, 0x0

    .line 229
    invoke-interface/range {v6 .. v12}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 230
    .line 231
    .line 232
    const/4 v3, -0x1

    .line 233
    goto/16 :goto_d

    .line 234
    .line 235
    :cond_b
    const/4 v9, 0x0

    .line 236
    :cond_c
    :goto_7
    iget v2, v1, Lu1/q;->b:I

    .line 237
    .line 238
    iget v5, v0, Lq2/b;->m:I

    .line 239
    .line 240
    iget v8, v0, Lq2/b;->j:I

    .line 241
    .line 242
    if-ge v5, v8, :cond_d

    .line 243
    .line 244
    sub-int/2addr v8, v5

    .line 245
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    invoke-virtual {v1, v5}, Lu1/q;->P(I)V

    .line 254
    .line 255
    .line 256
    :cond_d
    iget-object v5, v0, Lq2/b;->i:Ll2/t;

    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iget v5, v1, Lu1/q;->b:I

    .line 262
    .line 263
    :goto_8
    iget v8, v1, Lu1/q;->c:I

    .line 264
    .line 265
    const/16 v10, 0x10

    .line 266
    .line 267
    sub-int/2addr v8, v10

    .line 268
    iget-object v11, v0, Lq2/b;->d:Ldd/c;

    .line 269
    .line 270
    if-gt v5, v8, :cond_f

    .line 271
    .line 272
    invoke-virtual {v1, v5}, Lu1/q;->O(I)V

    .line 273
    .line 274
    .line 275
    iget-object v8, v0, Lq2/b;->i:Ll2/t;

    .line 276
    .line 277
    iget v12, v0, Lq2/b;->k:I

    .line 278
    .line 279
    invoke-static {v1, v8, v12, v11}, Ll2/b;->a(Lu1/q;Ll2/t;ILdd/c;)Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_e

    .line 284
    .line 285
    invoke-virtual {v1, v5}, Lu1/q;->O(I)V

    .line 286
    .line 287
    .line 288
    iget-wide v4, v11, Ldd/c;->b:J

    .line 289
    .line 290
    goto :goto_c

    .line 291
    :cond_e
    add-int/2addr v5, v4

    .line 292
    goto :goto_8

    .line 293
    :cond_f
    if-eqz v9, :cond_13

    .line 294
    .line 295
    :goto_9
    iget v8, v1, Lu1/q;->c:I

    .line 296
    .line 297
    iget v9, v0, Lq2/b;->j:I

    .line 298
    .line 299
    sub-int v9, v8, v9

    .line 300
    .line 301
    if-gt v5, v9, :cond_12

    .line 302
    .line 303
    invoke-virtual {v1, v5}, Lu1/q;->O(I)V

    .line 304
    .line 305
    .line 306
    :try_start_1
    iget-object v8, v0, Lq2/b;->i:Ll2/t;

    .line 307
    .line 308
    iget v9, v0, Lq2/b;->k:I

    .line 309
    .line 310
    invoke-static {v1, v8, v9, v11}, Ll2/b;->a(Lu1/q;Ll2/t;ILdd/c;)Z

    .line 311
    .line 312
    .line 313
    move-result v8
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    goto :goto_a

    .line 315
    :catch_1
    const/4 v8, 0x0

    .line 316
    :goto_a
    iget v9, v1, Lu1/q;->b:I

    .line 317
    .line 318
    iget v12, v1, Lu1/q;->c:I

    .line 319
    .line 320
    if-le v9, v12, :cond_10

    .line 321
    .line 322
    const/4 v8, 0x0

    .line 323
    :cond_10
    if-eqz v8, :cond_11

    .line 324
    .line 325
    invoke-virtual {v1, v5}, Lu1/q;->O(I)V

    .line 326
    .line 327
    .line 328
    iget-wide v4, v11, Ldd/c;->b:J

    .line 329
    .line 330
    goto :goto_c

    .line 331
    :cond_11
    add-int/2addr v5, v4

    .line 332
    goto :goto_9

    .line 333
    :cond_12
    invoke-virtual {v1, v8}, Lu1/q;->O(I)V

    .line 334
    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_13
    invoke-virtual {v1, v5}, Lu1/q;->O(I)V

    .line 338
    .line 339
    .line 340
    :goto_b
    move-wide v4, v13

    .line 341
    :goto_c
    iget v8, v1, Lu1/q;->b:I

    .line 342
    .line 343
    sub-int/2addr v8, v2

    .line 344
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 345
    .line 346
    .line 347
    iget-object v2, v0, Lq2/b;->f:Ll2/j0;

    .line 348
    .line 349
    invoke-interface {v2, v8, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 350
    .line 351
    .line 352
    iget v2, v0, Lq2/b;->m:I

    .line 353
    .line 354
    add-int/2addr v2, v8

    .line 355
    iput v2, v0, Lq2/b;->m:I

    .line 356
    .line 357
    cmp-long v8, v4, v13

    .line 358
    .line 359
    if-eqz v8, :cond_14

    .line 360
    .line 361
    iget-wide v8, v0, Lq2/b;->n:J

    .line 362
    .line 363
    mul-long v8, v8, v6

    .line 364
    .line 365
    iget-object v6, v0, Lq2/b;->i:Ll2/t;

    .line 366
    .line 367
    sget-object v7, Lu1/f0;->a:Ljava/lang/String;

    .line 368
    .line 369
    iget v6, v6, Ll2/t;->e:I

    .line 370
    .line 371
    int-to-long v6, v6

    .line 372
    div-long v16, v8, v6

    .line 373
    .line 374
    iget-object v15, v0, Lq2/b;->f:Ll2/j0;

    .line 375
    .line 376
    const/16 v21, 0x0

    .line 377
    .line 378
    const/16 v18, 0x1

    .line 379
    .line 380
    const/16 v20, 0x0

    .line 381
    .line 382
    move/from16 v19, v2

    .line 383
    .line 384
    invoke-interface/range {v15 .. v21}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 385
    .line 386
    .line 387
    iput v3, v0, Lq2/b;->m:I

    .line 388
    .line 389
    iput-wide v4, v0, Lq2/b;->n:J

    .line 390
    .line 391
    :cond_14
    iget-object v2, v1, Lu1/q;->a:[B

    .line 392
    .line 393
    array-length v2, v2

    .line 394
    iget v4, v1, Lu1/q;->c:I

    .line 395
    .line 396
    sub-int/2addr v2, v4

    .line 397
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-ge v4, v10, :cond_15

    .line 402
    .line 403
    if-ge v2, v10, :cond_15

    .line 404
    .line 405
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    iget-object v4, v1, Lu1/q;->a:[B

    .line 410
    .line 411
    iget v5, v1, Lu1/q;->b:I

    .line 412
    .line 413
    invoke-static {v4, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v3}, Lu1/q;->O(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v2}, Lu1/q;->N(I)V

    .line 420
    .line 421
    .line 422
    :cond_15
    :goto_d
    return v3

    .line 423
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 424
    .line 425
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 426
    .line 427
    .line 428
    throw v1

    .line 429
    :cond_17
    move-object/from16 v5, p1

    .line 430
    .line 431
    check-cast v5, Ll2/l;

    .line 432
    .line 433
    iput v3, v5, Ll2/l;->f:I

    .line 434
    .line 435
    new-instance v5, Lu1/q;

    .line 436
    .line 437
    invoke-direct {v5, v2}, Lu1/q;-><init>(I)V

    .line 438
    .line 439
    .line 440
    iget-object v8, v5, Lu1/q;->a:[B

    .line 441
    .line 442
    move-object/from16 v9, p1

    .line 443
    .line 444
    check-cast v9, Ll2/l;

    .line 445
    .line 446
    invoke-virtual {v9, v8, v3, v2, v3}, Ll2/l;->c([BIIZ)Z

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5}, Lu1/q;->I()I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    shr-int/lit8 v2, v5, 0x2

    .line 454
    .line 455
    const/16 v8, 0x3ffe

    .line 456
    .line 457
    if-ne v2, v8, :cond_1c

    .line 458
    .line 459
    iput v3, v9, Ll2/l;->f:I

    .line 460
    .line 461
    iput v5, v0, Lq2/b;->k:I

    .line 462
    .line 463
    iget-object v2, v0, Lq2/b;->e:Lf2/u0;

    .line 464
    .line 465
    sget-object v5, Lu1/f0;->a:Ljava/lang/String;

    .line 466
    .line 467
    iget-wide v5, v9, Ll2/l;->d:J

    .line 468
    .line 469
    iget-object v8, v0, Lq2/b;->i:Ll2/t;

    .line 470
    .line 471
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    iget-object v8, v0, Lq2/b;->i:Ll2/t;

    .line 475
    .line 476
    iget-object v10, v8, Ll2/t;->k:Lkf/d;

    .line 477
    .line 478
    if-eqz v10, :cond_18

    .line 479
    .line 480
    iget-object v10, v10, Lkf/d;->b:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v10, [J

    .line 483
    .line 484
    array-length v10, v10

    .line 485
    if-lez v10, :cond_18

    .line 486
    .line 487
    new-instance v1, Ll2/s;

    .line 488
    .line 489
    invoke-direct {v1, v3, v5, v6, v8}, Ll2/s;-><init>(IJLjava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_10

    .line 493
    .line 494
    :cond_18
    iget-wide v9, v9, Ll2/l;->c:J

    .line 495
    .line 496
    cmp-long v15, v9, v13

    .line 497
    .line 498
    if-eqz v15, :cond_1b

    .line 499
    .line 500
    iget-wide v13, v8, Ll2/t;->j:J

    .line 501
    .line 502
    cmp-long v15, v13, v11

    .line 503
    .line 504
    if-lez v15, :cond_1b

    .line 505
    .line 506
    new-instance v11, Lq2/a;

    .line 507
    .line 508
    iget v12, v0, Lq2/b;->k:I

    .line 509
    .line 510
    invoke-static {v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    new-instance v13, Lph/j;

    .line 514
    .line 515
    invoke-direct {v13, v4, v8}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    new-instance v4, Landroidx/room/s;

    .line 519
    .line 520
    invoke-direct {v4, v8, v12}, Landroidx/room/s;-><init>(Ll2/t;I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v8}, Ll2/t;->b()J

    .line 524
    .line 525
    .line 526
    move-result-wide v18

    .line 527
    iget v12, v8, Ll2/t;->c:I

    .line 528
    .line 529
    iget v14, v8, Ll2/t;->d:I

    .line 530
    .line 531
    if-lez v14, :cond_19

    .line 532
    .line 533
    int-to-long v14, v14

    .line 534
    move-object/from16 p1, v4

    .line 535
    .line 536
    int-to-long v3, v12

    .line 537
    add-long/2addr v14, v3

    .line 538
    const-wide/16 v3, 0x2

    .line 539
    .line 540
    div-long/2addr v14, v3

    .line 541
    const-wide/16 v3, 0x1

    .line 542
    .line 543
    add-long/2addr v14, v3

    .line 544
    move-wide/from16 v26, v14

    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_19
    move-object/from16 p1, v4

    .line 548
    .line 549
    iget v3, v8, Ll2/t;->b:I

    .line 550
    .line 551
    iget v4, v8, Ll2/t;->a:I

    .line 552
    .line 553
    if-ne v4, v3, :cond_1a

    .line 554
    .line 555
    if-lez v4, :cond_1a

    .line 556
    .line 557
    int-to-long v3, v4

    .line 558
    goto :goto_e

    .line 559
    :cond_1a
    const-wide/16 v3, 0x1000

    .line 560
    .line 561
    :goto_e
    iget v14, v8, Ll2/t;->g:I

    .line 562
    .line 563
    int-to-long v14, v14

    .line 564
    mul-long v3, v3, v14

    .line 565
    .line 566
    iget v14, v8, Ll2/t;->h:I

    .line 567
    .line 568
    int-to-long v14, v14

    .line 569
    mul-long v3, v3, v14

    .line 570
    .line 571
    const-wide/16 v14, 0x8

    .line 572
    .line 573
    div-long/2addr v3, v14

    .line 574
    const-wide/16 v14, 0x40

    .line 575
    .line 576
    add-long/2addr v3, v14

    .line 577
    move-wide/from16 v26, v3

    .line 578
    .line 579
    :goto_f
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    .line 580
    .line 581
    .line 582
    move-result v28

    .line 583
    iget-wide v3, v8, Ll2/t;->j:J

    .line 584
    .line 585
    move-object v15, v11

    .line 586
    move-object/from16 v16, v13

    .line 587
    .line 588
    move-object/from16 v17, p1

    .line 589
    .line 590
    move-wide/from16 v20, v3

    .line 591
    .line 592
    move-wide/from16 v22, v5

    .line 593
    .line 594
    move-wide/from16 v24, v9

    .line 595
    .line 596
    invoke-direct/range {v15 .. v28}, Lq2/a;-><init>(Ll2/g;Ll2/i;JJJJJI)V

    .line 597
    .line 598
    .line 599
    iput-object v11, v0, Lq2/b;->l:Lq2/a;

    .line 600
    .line 601
    iget-object v1, v11, Lq2/a;->a:Ll2/e;

    .line 602
    .line 603
    goto :goto_10

    .line 604
    :cond_1b
    new-instance v1, Ll2/s;

    .line 605
    .line 606
    invoke-virtual {v8}, Ll2/t;->b()J

    .line 607
    .line 608
    .line 609
    move-result-wide v3

    .line 610
    invoke-direct {v1, v3, v4}, Ll2/s;-><init>(J)V

    .line 611
    .line 612
    .line 613
    :goto_10
    invoke-virtual {v2, v1}, Lf2/u0;->s(Ll2/c0;)V

    .line 614
    .line 615
    .line 616
    iput v7, v0, Lq2/b;->g:I

    .line 617
    .line 618
    const/4 v2, 0x0

    .line 619
    return v2

    .line 620
    :cond_1c
    const/4 v2, 0x0

    .line 621
    iput v2, v9, Ll2/l;->f:I

    .line 622
    .line 623
    const-string v1, "First frame does not start with sync code."

    .line 624
    .line 625
    invoke-static {v6, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    throw v1

    .line 630
    :cond_1d
    const/4 v2, 0x0

    .line 631
    iget-object v3, v0, Lq2/b;->i:Ll2/t;

    .line 632
    .line 633
    const/16 v29, 0x0

    .line 634
    .line 635
    :goto_11
    if-nez v29, :cond_25

    .line 636
    .line 637
    move-object/from16 v4, p1

    .line 638
    .line 639
    check-cast v4, Ll2/l;

    .line 640
    .line 641
    iput v2, v4, Ll2/l;->f:I

    .line 642
    .line 643
    new-instance v4, Lj3/f;

    .line 644
    .line 645
    new-array v5, v8, [B

    .line 646
    .line 647
    invoke-direct {v4, v5, v8}, Lj3/f;-><init>([BI)V

    .line 648
    .line 649
    .line 650
    move-object/from16 v6, p1

    .line 651
    .line 652
    check-cast v6, Ll2/l;

    .line 653
    .line 654
    invoke-virtual {v6, v5, v2, v8, v2}, Ll2/l;->c([BIIZ)Z

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4}, Lj3/f;->f()Z

    .line 658
    .line 659
    .line 660
    move-result v5

    .line 661
    invoke-virtual {v4, v10}, Lj3/f;->g(I)I

    .line 662
    .line 663
    .line 664
    move-result v11

    .line 665
    const/16 v12, 0x18

    .line 666
    .line 667
    invoke-virtual {v4, v12}, Lj3/f;->g(I)I

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    add-int/2addr v4, v8

    .line 672
    if-nez v11, :cond_1e

    .line 673
    .line 674
    const/16 v3, 0x26

    .line 675
    .line 676
    new-array v4, v3, [B

    .line 677
    .line 678
    invoke-virtual {v6, v4, v2, v3, v2}, Ll2/l;->b([BIIZ)Z

    .line 679
    .line 680
    .line 681
    new-instance v2, Ll2/t;

    .line 682
    .line 683
    invoke-direct {v2, v4, v8}, Ll2/t;-><init>([BI)V

    .line 684
    .line 685
    .line 686
    :goto_12
    move-object v3, v2

    .line 687
    goto/16 :goto_17

    .line 688
    .line 689
    :cond_1e
    if-eqz v3, :cond_24

    .line 690
    .line 691
    if-ne v11, v9, :cond_1f

    .line 692
    .line 693
    new-instance v2, Lu1/q;

    .line 694
    .line 695
    invoke-direct {v2, v4}, Lu1/q;-><init>(I)V

    .line 696
    .line 697
    .line 698
    iget-object v11, v2, Lu1/q;->a:[B

    .line 699
    .line 700
    const/4 v12, 0x0

    .line 701
    invoke-virtual {v6, v11, v12, v4, v12}, Ll2/l;->b([BIIZ)Z

    .line 702
    .line 703
    .line 704
    invoke-static {v2}, Ll2/b;->u(Lu1/q;)Lkf/d;

    .line 705
    .line 706
    .line 707
    move-result-object v23

    .line 708
    new-instance v2, Ll2/t;

    .line 709
    .line 710
    iget-wide v11, v3, Ll2/t;->j:J

    .line 711
    .line 712
    iget-object v4, v3, Ll2/t;->l:Lr1/d0;

    .line 713
    .line 714
    iget v14, v3, Ll2/t;->a:I

    .line 715
    .line 716
    iget v15, v3, Ll2/t;->b:I

    .line 717
    .line 718
    iget v6, v3, Ll2/t;->c:I

    .line 719
    .line 720
    iget v13, v3, Ll2/t;->d:I

    .line 721
    .line 722
    iget v10, v3, Ll2/t;->e:I

    .line 723
    .line 724
    iget v9, v3, Ll2/t;->g:I

    .line 725
    .line 726
    iget v3, v3, Ll2/t;->h:I

    .line 727
    .line 728
    move/from16 v17, v13

    .line 729
    .line 730
    move-object v13, v2

    .line 731
    move/from16 v16, v6

    .line 732
    .line 733
    move/from16 v18, v10

    .line 734
    .line 735
    move/from16 v19, v9

    .line 736
    .line 737
    move/from16 v20, v3

    .line 738
    .line 739
    move-wide/from16 v21, v11

    .line 740
    .line 741
    move-object/from16 v24, v4

    .line 742
    .line 743
    invoke-direct/range {v13 .. v24}, Ll2/t;-><init>(IIIIIIIJLkf/d;Lr1/d0;)V

    .line 744
    .line 745
    .line 746
    goto :goto_12

    .line 747
    :cond_1f
    iget-object v2, v3, Ll2/t;->l:Lr1/d0;

    .line 748
    .line 749
    if-ne v11, v8, :cond_21

    .line 750
    .line 751
    new-instance v9, Lu1/q;

    .line 752
    .line 753
    invoke-direct {v9, v4}, Lu1/q;-><init>(I)V

    .line 754
    .line 755
    .line 756
    iget-object v10, v9, Lu1/q;->a:[B

    .line 757
    .line 758
    const/4 v11, 0x0

    .line 759
    invoke-virtual {v6, v10, v11, v4, v11}, Ll2/l;->b([BIIZ)Z

    .line 760
    .line 761
    .line 762
    invoke-virtual {v9, v8}, Lu1/q;->P(I)V

    .line 763
    .line 764
    .line 765
    invoke-static {v9, v11, v11}, Ll2/b;->v(Lu1/q;ZZ)Ll2/l0;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    iget-object v4, v4, Ll2/l0;->a:[Ljava/lang/String;

    .line 770
    .line 771
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    invoke-static {v4}, Ll2/b;->s(Ljava/util/List;)Lr1/d0;

    .line 776
    .line 777
    .line 778
    move-result-object v4

    .line 779
    if-nez v2, :cond_20

    .line 780
    .line 781
    :goto_13
    move-object/from16 v20, v4

    .line 782
    .line 783
    goto :goto_14

    .line 784
    :cond_20
    invoke-virtual {v2, v4}, Lr1/d0;->b(Lr1/d0;)Lr1/d0;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    goto :goto_13

    .line 789
    :goto_14
    new-instance v2, Ll2/t;

    .line 790
    .line 791
    iget-wide v14, v3, Ll2/t;->j:J

    .line 792
    .line 793
    iget-object v4, v3, Ll2/t;->k:Lkf/d;

    .line 794
    .line 795
    iget v10, v3, Ll2/t;->a:I

    .line 796
    .line 797
    iget v11, v3, Ll2/t;->b:I

    .line 798
    .line 799
    iget v12, v3, Ll2/t;->c:I

    .line 800
    .line 801
    iget v13, v3, Ll2/t;->d:I

    .line 802
    .line 803
    iget v6, v3, Ll2/t;->e:I

    .line 804
    .line 805
    iget v9, v3, Ll2/t;->g:I

    .line 806
    .line 807
    iget v3, v3, Ll2/t;->h:I

    .line 808
    .line 809
    move/from16 v16, v9

    .line 810
    .line 811
    move-object v9, v2

    .line 812
    move-wide/from16 v17, v14

    .line 813
    .line 814
    move v14, v6

    .line 815
    move/from16 v15, v16

    .line 816
    .line 817
    move/from16 v16, v3

    .line 818
    .line 819
    move-object/from16 v19, v4

    .line 820
    .line 821
    invoke-direct/range {v9 .. v20}, Ll2/t;-><init>(IIIIIIIJLkf/d;Lr1/d0;)V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_12

    .line 825
    .line 826
    :cond_21
    if-ne v11, v1, :cond_23

    .line 827
    .line 828
    new-instance v9, Lu1/q;

    .line 829
    .line 830
    invoke-direct {v9, v4}, Lu1/q;-><init>(I)V

    .line 831
    .line 832
    .line 833
    iget-object v10, v9, Lu1/q;->a:[B

    .line 834
    .line 835
    const/4 v11, 0x0

    .line 836
    invoke-virtual {v6, v10, v11, v4, v11}, Ll2/l;->b([BIIZ)Z

    .line 837
    .line 838
    .line 839
    invoke-virtual {v9, v8}, Lu1/q;->P(I)V

    .line 840
    .line 841
    .line 842
    invoke-static {v9}, Lx2/a;->d(Lu1/q;)Lx2/a;

    .line 843
    .line 844
    .line 845
    move-result-object v4

    .line 846
    invoke-static {v4}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    new-instance v6, Lr1/d0;

    .line 851
    .line 852
    invoke-direct {v6, v4}, Lr1/d0;-><init>(Ljava/util/List;)V

    .line 853
    .line 854
    .line 855
    if-nez v2, :cond_22

    .line 856
    .line 857
    :goto_15
    move-object/from16 v20, v6

    .line 858
    .line 859
    goto :goto_16

    .line 860
    :cond_22
    invoke-virtual {v2, v6}, Lr1/d0;->b(Lr1/d0;)Lr1/d0;

    .line 861
    .line 862
    .line 863
    move-result-object v6

    .line 864
    goto :goto_15

    .line 865
    :goto_16
    new-instance v2, Ll2/t;

    .line 866
    .line 867
    iget-wide v14, v3, Ll2/t;->j:J

    .line 868
    .line 869
    iget-object v4, v3, Ll2/t;->k:Lkf/d;

    .line 870
    .line 871
    iget v10, v3, Ll2/t;->a:I

    .line 872
    .line 873
    iget v11, v3, Ll2/t;->b:I

    .line 874
    .line 875
    iget v12, v3, Ll2/t;->c:I

    .line 876
    .line 877
    iget v13, v3, Ll2/t;->d:I

    .line 878
    .line 879
    iget v6, v3, Ll2/t;->e:I

    .line 880
    .line 881
    iget v9, v3, Ll2/t;->g:I

    .line 882
    .line 883
    iget v3, v3, Ll2/t;->h:I

    .line 884
    .line 885
    move/from16 v16, v9

    .line 886
    .line 887
    move-object v9, v2

    .line 888
    move-wide/from16 v17, v14

    .line 889
    .line 890
    move v14, v6

    .line 891
    move/from16 v15, v16

    .line 892
    .line 893
    move/from16 v16, v3

    .line 894
    .line 895
    move-object/from16 v19, v4

    .line 896
    .line 897
    invoke-direct/range {v9 .. v20}, Ll2/t;-><init>(IIIIIIIJLkf/d;Lr1/d0;)V

    .line 898
    .line 899
    .line 900
    goto/16 :goto_12

    .line 901
    .line 902
    :cond_23
    const/4 v2, 0x0

    .line 903
    invoke-virtual {v6, v4, v2}, Ll2/l;->o(IZ)Z

    .line 904
    .line 905
    .line 906
    :goto_17
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 907
    .line 908
    iput-object v3, v0, Lq2/b;->i:Ll2/t;

    .line 909
    .line 910
    move/from16 v29, v5

    .line 911
    .line 912
    const/4 v2, 0x0

    .line 913
    const/4 v9, 0x3

    .line 914
    const/4 v10, 0x7

    .line 915
    goto/16 :goto_11

    .line 916
    .line 917
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 918
    .line 919
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 920
    .line 921
    .line 922
    throw v1

    .line 923
    :cond_25
    iget-object v2, v0, Lq2/b;->i:Ll2/t;

    .line 924
    .line 925
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 926
    .line 927
    .line 928
    iget-object v2, v0, Lq2/b;->i:Ll2/t;

    .line 929
    .line 930
    iget v2, v2, Ll2/t;->c:I

    .line 931
    .line 932
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 933
    .line 934
    .line 935
    move-result v1

    .line 936
    iput v1, v0, Lq2/b;->j:I

    .line 937
    .line 938
    iget-object v1, v0, Lq2/b;->i:Ll2/t;

    .line 939
    .line 940
    iget-object v2, v0, Lq2/b;->h:Lr1/d0;

    .line 941
    .line 942
    invoke-virtual {v1, v7, v2}, Ll2/t;->c([BLr1/d0;)Lr1/p;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    iget-object v2, v0, Lq2/b;->f:Ll2/j0;

    .line 947
    .line 948
    new-instance v3, Lr1/o;

    .line 949
    .line 950
    invoke-direct {v3, v1}, Lr1/o;-><init>(Lr1/p;)V

    .line 951
    .line 952
    .line 953
    const-string v1, "audio/flac"

    .line 954
    .line 955
    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    iput-object v1, v3, Lr1/o;->m:Ljava/lang/String;

    .line 960
    .line 961
    new-instance v1, Lr1/p;

    .line 962
    .line 963
    invoke-direct {v1, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 964
    .line 965
    .line 966
    invoke-interface {v2, v1}, Ll2/j0;->g(Lr1/p;)V

    .line 967
    .line 968
    .line 969
    iget-object v1, v0, Lq2/b;->f:Ll2/j0;

    .line 970
    .line 971
    iget-object v2, v0, Lq2/b;->i:Ll2/t;

    .line 972
    .line 973
    invoke-virtual {v2}, Ll2/t;->b()J

    .line 974
    .line 975
    .line 976
    move-result-wide v2

    .line 977
    invoke-interface {v1, v2, v3}, Ll2/j0;->d(J)V

    .line 978
    .line 979
    .line 980
    iput v8, v0, Lq2/b;->g:I

    .line 981
    .line 982
    const/4 v1, 0x0

    .line 983
    return v1

    .line 984
    :cond_26
    const/4 v1, 0x0

    .line 985
    new-instance v2, Lu1/q;

    .line 986
    .line 987
    invoke-direct {v2, v8}, Lu1/q;-><init>(I)V

    .line 988
    .line 989
    .line 990
    iget-object v3, v2, Lu1/q;->a:[B

    .line 991
    .line 992
    move-object/from16 v4, p1

    .line 993
    .line 994
    check-cast v4, Ll2/l;

    .line 995
    .line 996
    invoke-virtual {v4, v3, v1, v8, v1}, Ll2/l;->b([BIIZ)Z

    .line 997
    .line 998
    .line 999
    invoke-virtual {v2}, Lu1/q;->D()J

    .line 1000
    .line 1001
    .line 1002
    move-result-wide v2

    .line 1003
    const-wide/32 v4, 0x664c6143

    .line 1004
    .line 1005
    .line 1006
    cmp-long v7, v2, v4

    .line 1007
    .line 1008
    if-nez v7, :cond_27

    .line 1009
    .line 1010
    const/4 v2, 0x3

    .line 1011
    iput v2, v0, Lq2/b;->g:I

    .line 1012
    .line 1013
    return v1

    .line 1014
    :cond_27
    const-string v1, "Failed to read FLAC stream marker."

    .line 1015
    .line 1016
    invoke-static {v6, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v1

    .line 1020
    throw v1

    .line 1021
    :cond_28
    const/4 v1, 0x0

    .line 1022
    array-length v3, v7

    .line 1023
    move-object/from16 v4, p1

    .line 1024
    .line 1025
    check-cast v4, Ll2/l;

    .line 1026
    .line 1027
    invoke-virtual {v4, v7, v1, v3, v1}, Ll2/l;->c([BIIZ)Z

    .line 1028
    .line 1029
    .line 1030
    move-object/from16 v3, p1

    .line 1031
    .line 1032
    check-cast v3, Ll2/l;

    .line 1033
    .line 1034
    iput v1, v3, Ll2/l;->f:I

    .line 1035
    .line 1036
    iput v2, v0, Lq2/b;->g:I

    .line 1037
    .line 1038
    return v1

    .line 1039
    :cond_29
    const/4 v1, 0x0

    .line 1040
    move-object/from16 v2, p1

    .line 1041
    .line 1042
    check-cast v2, Ll2/l;

    .line 1043
    .line 1044
    iput v1, v2, Ll2/l;->f:I

    .line 1045
    .line 1046
    move-object/from16 v2, p1

    .line 1047
    .line 1048
    check-cast v2, Ll2/l;

    .line 1049
    .line 1050
    invoke-virtual {v2}, Ll2/l;->d()J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v7

    .line 1054
    iget-boolean v3, v0, Lq2/b;->c:Z

    .line 1055
    .line 1056
    if-nez v3, :cond_2a

    .line 1057
    .line 1058
    move-object v3, v6

    .line 1059
    goto :goto_18

    .line 1060
    :cond_2a
    sget-object v3, Lz2/h;->c:Lz1/d;

    .line 1061
    .line 1062
    :goto_18
    new-instance v5, Ll2/x;

    .line 1063
    .line 1064
    invoke-direct {v5, v1}, Ll2/x;-><init>(I)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v5, v2, v3, v1}, Ll2/x;->a(Ll2/l;Lz2/g;I)Lr1/d0;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v3

    .line 1071
    if-eqz v3, :cond_2c

    .line 1072
    .line 1073
    iget-object v1, v3, Lr1/d0;->a:[Lr1/c0;

    .line 1074
    .line 1075
    array-length v1, v1

    .line 1076
    if-nez v1, :cond_2b

    .line 1077
    .line 1078
    goto :goto_19

    .line 1079
    :cond_2b
    move-object v6, v3

    .line 1080
    :cond_2c
    :goto_19
    invoke-virtual {v2}, Ll2/l;->d()J

    .line 1081
    .line 1082
    .line 1083
    move-result-wide v9

    .line 1084
    sub-long/2addr v9, v7

    .line 1085
    long-to-int v1, v9

    .line 1086
    const/4 v3, 0x0

    .line 1087
    invoke-virtual {v2, v1, v3}, Ll2/l;->o(IZ)Z

    .line 1088
    .line 1089
    .line 1090
    iput-object v6, v0, Lq2/b;->h:Lr1/d0;

    .line 1091
    .line 1092
    iput v4, v0, Lq2/b;->g:I

    .line 1093
    .line 1094
    return v3
.end method

.method public final e(JJ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    cmp-long v3, p1, v1

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lq2/b;->g:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lq2/b;->l:Lq2/a;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Lq2/a;->d(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v1, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v1, p0, Lq2/b;->n:J

    .line 26
    .line 27
    iput v0, p0, Lq2/b;->m:I

    .line 28
    .line 29
    iget-object p1, p0, Lq2/b;->b:Lu1/q;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lu1/q;->L(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final g(Ll2/p;)Z
    .locals 5

    .line 1
    check-cast p1, Ll2/l;

    .line 2
    .line 3
    sget-object v0, Lz2/h;->c:Lz1/d;

    .line 4
    .line 5
    new-instance v1, Ll2/x;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Ll2/x;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, v0, v2}, Ll2/x;->a(Ll2/l;Lz2/g;I)Lr1/d0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lr1/d0;->a:[Lr1/c0;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    :cond_0
    new-instance v0, Lu1/q;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lu1/q;->a:[B

    .line 27
    .line 28
    invoke-virtual {p1, v3, v2, v1, v2}, Ll2/l;->c([BIIZ)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lu1/q;->D()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/32 v3, 0x664c6143

    .line 36
    .line 37
    .line 38
    cmp-long p1, v0, v3

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    :cond_1
    return v2
.end method
