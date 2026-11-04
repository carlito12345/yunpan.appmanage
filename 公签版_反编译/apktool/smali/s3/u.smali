.class public final Ls3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/e0;


# instance fields
.field public final a:Ls3/f;

.field public final b:Lj3/f;

.field public c:I

.field public d:I

.field public e:Lu1/d0;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Ls3/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls3/u;->a:Ls3/f;

    .line 5
    .line 6
    new-instance p1, Lj3/f;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    invoke-direct {p1, v1, v0}, Lj3/f;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ls3/u;->b:Lj3/f;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Ls3/u;->c:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(ILu1/q;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Ls3/u;->e:Lu1/d0;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v2, p1, 0x1

    .line 11
    .line 12
    iget-object v3, v0, Ls3/u;->a:Ls3/f;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, -0x1

    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x3

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    iget v2, v0, Ls3/u;->c:I

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    if-eq v2, v6, :cond_4

    .line 26
    .line 27
    if-eq v2, v4, :cond_3

    .line 28
    .line 29
    if-ne v2, v8, :cond_2

    .line 30
    .line 31
    iget v2, v0, Ls3/u;->j:I

    .line 32
    .line 33
    if-eq v2, v5, :cond_0

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v9, "Unexpected start indicator: expected "

    .line 38
    .line 39
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v9, v0, Ls3/u;->j:I

    .line 43
    .line 44
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v9, " more bytes"

    .line 48
    .line 49
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget v2, v1, Lu1/q;->c:I

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    :goto_0
    invoke-interface {v3, v2}, Ls3/f;->c(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_3
    const-string v2, "Unexpected start indicator reading extended header"

    .line 77
    .line 78
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_1
    iput v6, v0, Ls3/u;->c:I

    .line 82
    .line 83
    iput v7, v0, Ls3/u;->d:I

    .line 84
    .line 85
    :cond_5
    move/from16 v2, p1

    .line 86
    .line 87
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lu1/q;->a()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-lez v9, :cond_14

    .line 92
    .line 93
    iget v9, v0, Ls3/u;->c:I

    .line 94
    .line 95
    if-eqz v9, :cond_13

    .line 96
    .line 97
    iget-object v10, v0, Ls3/u;->b:Lj3/f;

    .line 98
    .line 99
    if-eq v9, v6, :cond_e

    .line 100
    .line 101
    if-eq v9, v4, :cond_a

    .line 102
    .line 103
    if-ne v9, v8, :cond_9

    .line 104
    .line 105
    invoke-virtual/range {p2 .. p2}, Lu1/q;->a()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    iget v10, v0, Ls3/u;->j:I

    .line 110
    .line 111
    if-ne v10, v5, :cond_6

    .line 112
    .line 113
    const/4 v10, 0x0

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    sub-int v10, v9, v10

    .line 116
    .line 117
    :goto_3
    if-lez v10, :cond_7

    .line 118
    .line 119
    sub-int/2addr v9, v10

    .line 120
    iget v10, v1, Lu1/q;->b:I

    .line 121
    .line 122
    add-int/2addr v10, v9

    .line 123
    invoke-virtual {v1, v10}, Lu1/q;->N(I)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-interface {v3, v1}, Ls3/f;->a(Lu1/q;)V

    .line 127
    .line 128
    .line 129
    iget v10, v0, Ls3/u;->j:I

    .line 130
    .line 131
    if-eq v10, v5, :cond_8

    .line 132
    .line 133
    sub-int/2addr v10, v9

    .line 134
    iput v10, v0, Ls3/u;->j:I

    .line 135
    .line 136
    if-nez v10, :cond_8

    .line 137
    .line 138
    invoke-interface {v3, v7}, Ls3/f;->c(Z)V

    .line 139
    .line 140
    .line 141
    iput v6, v0, Ls3/u;->c:I

    .line 142
    .line 143
    iput v7, v0, Ls3/u;->d:I

    .line 144
    .line 145
    :cond_8
    const/4 v4, 0x3

    .line 146
    :goto_4
    const/4 v8, 0x2

    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :cond_a
    const/16 v9, 0xa

    .line 156
    .line 157
    iget v11, v0, Ls3/u;->i:I

    .line 158
    .line 159
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    iget-object v11, v10, Lj3/f;->b:[B

    .line 164
    .line 165
    invoke-virtual {v0, v1, v11, v9}, Ls3/u;->d(Lu1/q;[BI)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_8

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    iget v11, v0, Ls3/u;->i:I

    .line 173
    .line 174
    invoke-virtual {v0, v1, v9, v11}, Ls3/u;->d(Lu1/q;[BI)Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_8

    .line 179
    .line 180
    invoke-virtual {v10, v7}, Lj3/f;->m(I)V

    .line 181
    .line 182
    .line 183
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    iput-wide v11, v0, Ls3/u;->l:J

    .line 189
    .line 190
    iget-boolean v9, v0, Ls3/u;->f:Z

    .line 191
    .line 192
    const/4 v11, 0x4

    .line 193
    if-eqz v9, :cond_c

    .line 194
    .line 195
    invoke-virtual {v10, v11}, Lj3/f;->o(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v8}, Lj3/f;->g(I)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    int-to-long v12, v9

    .line 203
    const/16 v9, 0x1e

    .line 204
    .line 205
    shl-long/2addr v12, v9

    .line 206
    invoke-virtual {v10, v6}, Lj3/f;->o(I)V

    .line 207
    .line 208
    .line 209
    const/16 v14, 0xf

    .line 210
    .line 211
    invoke-virtual {v10, v14}, Lj3/f;->g(I)I

    .line 212
    .line 213
    .line 214
    move-result v15

    .line 215
    shl-int/2addr v15, v14

    .line 216
    int-to-long v4, v15

    .line 217
    or-long/2addr v4, v12

    .line 218
    invoke-virtual {v10, v6}, Lj3/f;->o(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v14}, Lj3/f;->g(I)I

    .line 222
    .line 223
    .line 224
    move-result v12

    .line 225
    int-to-long v12, v12

    .line 226
    or-long/2addr v4, v12

    .line 227
    invoke-virtual {v10, v6}, Lj3/f;->o(I)V

    .line 228
    .line 229
    .line 230
    iget-boolean v12, v0, Ls3/u;->h:Z

    .line 231
    .line 232
    if-nez v12, :cond_b

    .line 233
    .line 234
    iget-boolean v12, v0, Ls3/u;->g:Z

    .line 235
    .line 236
    if-eqz v12, :cond_b

    .line 237
    .line 238
    invoke-virtual {v10, v11}, Lj3/f;->o(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v10, v8}, Lj3/f;->g(I)I

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    int-to-long v12, v12

    .line 246
    shl-long/2addr v12, v9

    .line 247
    invoke-virtual {v10, v6}, Lj3/f;->o(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v14}, Lj3/f;->g(I)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    shl-int/2addr v9, v14

    .line 255
    int-to-long v7, v9

    .line 256
    or-long/2addr v7, v12

    .line 257
    invoke-virtual {v10, v6}, Lj3/f;->o(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10, v14}, Lj3/f;->g(I)I

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    int-to-long v12, v9

    .line 265
    or-long/2addr v7, v12

    .line 266
    invoke-virtual {v10, v6}, Lj3/f;->o(I)V

    .line 267
    .line 268
    .line 269
    iget-object v9, v0, Ls3/u;->e:Lu1/d0;

    .line 270
    .line 271
    invoke-virtual {v9, v7, v8}, Lu1/d0;->b(J)J

    .line 272
    .line 273
    .line 274
    iput-boolean v6, v0, Ls3/u;->h:Z

    .line 275
    .line 276
    :cond_b
    iget-object v7, v0, Ls3/u;->e:Lu1/d0;

    .line 277
    .line 278
    invoke-virtual {v7, v4, v5}, Lu1/d0;->b(J)J

    .line 279
    .line 280
    .line 281
    move-result-wide v4

    .line 282
    iput-wide v4, v0, Ls3/u;->l:J

    .line 283
    .line 284
    :cond_c
    iget-boolean v4, v0, Ls3/u;->k:Z

    .line 285
    .line 286
    if-eqz v4, :cond_d

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_d
    const/4 v11, 0x0

    .line 290
    :goto_5
    or-int/2addr v2, v11

    .line 291
    iget-wide v4, v0, Ls3/u;->l:J

    .line 292
    .line 293
    invoke-interface {v3, v2, v4, v5}, Ls3/f;->d(IJ)V

    .line 294
    .line 295
    .line 296
    const/4 v4, 0x3

    .line 297
    iput v4, v0, Ls3/u;->c:I

    .line 298
    .line 299
    const/4 v5, 0x0

    .line 300
    iput v5, v0, Ls3/u;->d:I

    .line 301
    .line 302
    const/4 v4, 0x2

    .line 303
    const/4 v5, -0x1

    .line 304
    const/4 v7, 0x0

    .line 305
    :goto_6
    const/4 v8, 0x3

    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :cond_e
    const/4 v4, 0x3

    .line 309
    const/4 v5, 0x0

    .line 310
    iget-object v7, v10, Lj3/f;->b:[B

    .line 311
    .line 312
    const/16 v8, 0x9

    .line 313
    .line 314
    invoke-virtual {v0, v1, v7, v8}, Ls3/u;->d(Lu1/q;[BI)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_12

    .line 319
    .line 320
    invoke-virtual {v10, v5}, Lj3/f;->m(I)V

    .line 321
    .line 322
    .line 323
    const/16 v5, 0x18

    .line 324
    .line 325
    invoke-virtual {v10, v5}, Lj3/f;->g(I)I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eq v5, v6, :cond_f

    .line 330
    .line 331
    const-string v7, "Unexpected start code prefix: "

    .line 332
    .line 333
    invoke-static {v5, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const/4 v5, -0x1

    .line 337
    iput v5, v0, Ls3/u;->j:I

    .line 338
    .line 339
    const/4 v5, -0x1

    .line 340
    const/4 v7, 0x0

    .line 341
    const/4 v8, 0x2

    .line 342
    goto :goto_8

    .line 343
    :cond_f
    const/16 v5, 0x8

    .line 344
    .line 345
    invoke-virtual {v10, v5}, Lj3/f;->o(I)V

    .line 346
    .line 347
    .line 348
    const/16 v7, 0x10

    .line 349
    .line 350
    invoke-virtual {v10, v7}, Lj3/f;->g(I)I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    const/4 v8, 0x5

    .line 355
    invoke-virtual {v10, v8}, Lj3/f;->o(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v10}, Lj3/f;->f()Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    iput-boolean v8, v0, Ls3/u;->k:Z

    .line 363
    .line 364
    const/4 v8, 0x2

    .line 365
    invoke-virtual {v10, v8}, Lj3/f;->o(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10}, Lj3/f;->f()Z

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    iput-boolean v9, v0, Ls3/u;->f:Z

    .line 373
    .line 374
    invoke-virtual {v10}, Lj3/f;->f()Z

    .line 375
    .line 376
    .line 377
    move-result v9

    .line 378
    iput-boolean v9, v0, Ls3/u;->g:Z

    .line 379
    .line 380
    const/4 v9, 0x6

    .line 381
    invoke-virtual {v10, v9}, Lj3/f;->o(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10, v5}, Lj3/f;->g(I)I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    iput v5, v0, Ls3/u;->i:I

    .line 389
    .line 390
    if-nez v7, :cond_11

    .line 391
    .line 392
    const/4 v9, -0x1

    .line 393
    iput v9, v0, Ls3/u;->j:I

    .line 394
    .line 395
    :cond_10
    const/4 v5, -0x1

    .line 396
    goto :goto_7

    .line 397
    :cond_11
    add-int/lit8 v7, v7, -0x3

    .line 398
    .line 399
    sub-int/2addr v7, v5

    .line 400
    iput v7, v0, Ls3/u;->j:I

    .line 401
    .line 402
    if-gez v7, :cond_10

    .line 403
    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v7, "Found negative packet payload size: "

    .line 407
    .line 408
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget v7, v0, Ls3/u;->j:I

    .line 412
    .line 413
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-static {v5}, Lu1/a;->p(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    const/4 v5, -0x1

    .line 424
    iput v5, v0, Ls3/u;->j:I

    .line 425
    .line 426
    :goto_7
    const/4 v7, 0x2

    .line 427
    :goto_8
    iput v7, v0, Ls3/u;->c:I

    .line 428
    .line 429
    const/4 v7, 0x0

    .line 430
    iput v7, v0, Ls3/u;->d:I

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_12
    const/4 v5, -0x1

    .line 434
    const/4 v7, 0x0

    .line 435
    goto/16 :goto_4

    .line 436
    .line 437
    :cond_13
    const/4 v4, 0x3

    .line 438
    const/4 v8, 0x2

    .line 439
    invoke-virtual/range {p2 .. p2}, Lu1/q;->a()I

    .line 440
    .line 441
    .line 442
    move-result v9

    .line 443
    invoke-virtual {v1, v9}, Lu1/q;->P(I)V

    .line 444
    .line 445
    .line 446
    :goto_9
    const/4 v4, 0x2

    .line 447
    goto/16 :goto_6

    .line 448
    .line 449
    :cond_14
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls3/u;->c:I

    .line 3
    .line 4
    iput v0, p0, Ls3/u;->d:I

    .line 5
    .line 6
    iput-boolean v0, p0, Ls3/u;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Ls3/u;->a:Ls3/f;

    .line 9
    .line 10
    invoke-interface {v0}, Ls3/f;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(Lu1/d0;Ll2/q;Ls3/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls3/u;->e:Lu1/d0;

    .line 2
    .line 3
    iget-object p1, p0, Ls3/u;->a:Ls3/f;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, Ls3/f;->e(Ll2/q;Ls3/d0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Lu1/q;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lu1/q;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Ls3/u;->d:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lu1/q;->P(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Ls3/u;->d:I

    .line 24
    .line 25
    invoke-virtual {p1, v2, v0, p2}, Lu1/q;->l(II[B)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Ls3/u;->d:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Ls3/u;->d:I

    .line 32
    .line 33
    if-ne p1, p3, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    :goto_1
    return v1
.end method
