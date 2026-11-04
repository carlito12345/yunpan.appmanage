.class public final Ls3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# instance fields
.field public final a:Lu1/q;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ll2/j0;

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Lr1/p;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu1/q;

    .line 5
    .line 6
    new-array p3, p3, [B

    .line 7
    .line 8
    invoke-direct {v0, p3}, Lu1/q;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ls3/d;->a:Lu1/q;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    iput p3, p0, Ls3/d;->h:I

    .line 15
    .line 16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Ls3/d;->q:J

    .line 22
    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Ls3/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 p3, -0x1

    .line 31
    iput p3, p0, Ls3/d;->o:I

    .line 32
    .line 33
    iput p3, p0, Ls3/d;->p:I

    .line 34
    .line 35
    iput-object p1, p0, Ls3/d;->c:Ljava/lang/String;

    .line 36
    .line 37
    iput p2, p0, Ls3/d;->d:I

    .line 38
    .line 39
    const-string p1, "video/mp2t"

    .line 40
    .line 41
    iput-object p1, p0, Ls3/d;->e:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lu1/q;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, -0x1

    .line 7
    const/16 v6, 0x8

    .line 8
    .line 9
    const/16 v7, 0xc

    .line 10
    .line 11
    const/4 v8, 0x1

    .line 12
    iget-object v9, v0, Ls3/d;->g:Ll2/j0;

    .line 13
    .line 14
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    if-lez v9, :cond_31

    .line 22
    .line 23
    iget v9, v0, Ls3/d;->h:I

    .line 24
    .line 25
    const/16 v16, 0x7d00

    .line 26
    .line 27
    const v17, 0xac44

    .line 28
    .line 29
    .line 30
    const v18, 0xbb80

    .line 31
    .line 32
    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const/4 v12, 0x0

    .line 41
    iget-object v13, v0, Ls3/d;->a:Lu1/q;

    .line 42
    .line 43
    packed-switch v9, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget v3, v0, Ls3/d;->m:I

    .line 57
    .line 58
    iget v9, v0, Ls3/d;->i:I

    .line 59
    .line 60
    sub-int/2addr v3, v9

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget-object v3, v0, Ls3/d;->g:Ll2/j0;

    .line 66
    .line 67
    invoke-interface {v3, v2, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 68
    .line 69
    .line 70
    iget v3, v0, Ls3/d;->i:I

    .line 71
    .line 72
    add-int/2addr v3, v2

    .line 73
    iput v3, v0, Ls3/d;->i:I

    .line 74
    .line 75
    iget v2, v0, Ls3/d;->m:I

    .line 76
    .line 77
    if-ne v3, v2, :cond_0

    .line 78
    .line 79
    iget-wide v2, v0, Ls3/d;->q:J

    .line 80
    .line 81
    cmp-long v9, v2, v21

    .line 82
    .line 83
    if-eqz v9, :cond_1

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const/4 v2, 0x0

    .line 88
    :goto_1
    invoke-static {v2}, La9/o;->t(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v13, v0, Ls3/d;->g:Ll2/j0;

    .line 92
    .line 93
    iget-wide v14, v0, Ls3/d;->q:J

    .line 94
    .line 95
    iget v2, v0, Ls3/d;->n:I

    .line 96
    .line 97
    if-ne v2, v4, :cond_2

    .line 98
    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const/16 v16, 0x1

    .line 103
    .line 104
    :goto_2
    iget v2, v0, Ls3/d;->m:I

    .line 105
    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    const/16 v19, 0x0

    .line 109
    .line 110
    move/from16 v17, v2

    .line 111
    .line 112
    invoke-interface/range {v13 .. v19}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 113
    .line 114
    .line 115
    iget-wide v2, v0, Ls3/d;->q:J

    .line 116
    .line 117
    iget-wide v9, v0, Ls3/d;->k:J

    .line 118
    .line 119
    add-long/2addr v2, v9

    .line 120
    iput-wide v2, v0, Ls3/d;->q:J

    .line 121
    .line 122
    iput v12, v0, Ls3/d;->h:I

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v9, v13, Lu1/q;->a:[B

    .line 126
    .line 127
    iget v10, v0, Ls3/d;->p:I

    .line 128
    .line 129
    invoke-virtual {v0, v1, v9, v10}, Ls3/d;->f(Lu1/q;[BI)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_0

    .line 134
    .line 135
    iget-object v9, v13, Lu1/q;->a:[B

    .line 136
    .line 137
    iget-object v10, v0, Ls3/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    .line 139
    invoke-static {v9}, Ll2/b;->k([B)Lj3/f;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    invoke-virtual {v12, v3}, Lj3/f;->g(I)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const v15, 0x40411bf2

    .line 148
    .line 149
    .line 150
    if-ne v3, v15, :cond_3

    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    goto :goto_3

    .line 154
    :cond_3
    const/4 v3, 0x0

    .line 155
    :goto_3
    sget-object v15, Ll2/b;->n:[I

    .line 156
    .line 157
    invoke-static {v12, v15}, Ll2/b;->r(Lj3/f;[I)I

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    add-int/lit8 v23, v15, 0x1

    .line 162
    .line 163
    if-eqz v3, :cond_e

    .line 164
    .line 165
    invoke-virtual {v12}, Lj3/f;->f()Z

    .line 166
    .line 167
    .line 168
    move-result v20

    .line 169
    if-eqz v20, :cond_d

    .line 170
    .line 171
    add-int/lit8 v2, v15, -0x1

    .line 172
    .line 173
    aget-byte v20, v9, v2

    .line 174
    .line 175
    shl-int/lit8 v20, v20, 0x8

    .line 176
    .line 177
    const v24, 0xffff

    .line 178
    .line 179
    .line 180
    and-int v20, v20, v24

    .line 181
    .line 182
    aget-byte v15, v9, v15

    .line 183
    .line 184
    and-int/lit16 v15, v15, 0xff

    .line 185
    .line 186
    or-int v15, v20, v15

    .line 187
    .line 188
    sget-object v20, Lu1/f0;->a:Ljava/lang/String;

    .line 189
    .line 190
    const/4 v5, 0x0

    .line 191
    const v6, 0xffff

    .line 192
    .line 193
    .line 194
    :goto_4
    if-ge v5, v2, :cond_4

    .line 195
    .line 196
    aget-byte v14, v9, v5

    .line 197
    .line 198
    and-int/lit16 v11, v14, 0xff

    .line 199
    .line 200
    shr-int/2addr v11, v4

    .line 201
    shr-int/lit8 v8, v6, 0xc

    .line 202
    .line 203
    and-int/lit16 v8, v8, 0xff

    .line 204
    .line 205
    xor-int/2addr v8, v11

    .line 206
    and-int/lit16 v8, v8, 0xff

    .line 207
    .line 208
    shl-int/2addr v6, v4

    .line 209
    and-int v6, v6, v24

    .line 210
    .line 211
    sget-object v11, Lu1/f0;->h:[I

    .line 212
    .line 213
    aget v8, v11, v8

    .line 214
    .line 215
    xor-int/2addr v6, v8

    .line 216
    and-int v6, v6, v24

    .line 217
    .line 218
    and-int/lit8 v8, v14, 0xf

    .line 219
    .line 220
    shr-int/lit8 v14, v6, 0xc

    .line 221
    .line 222
    and-int/lit16 v14, v14, 0xff

    .line 223
    .line 224
    xor-int/2addr v8, v14

    .line 225
    and-int/lit16 v8, v8, 0xff

    .line 226
    .line 227
    shl-int/2addr v6, v4

    .line 228
    and-int v6, v6, v24

    .line 229
    .line 230
    aget v8, v11, v8

    .line 231
    .line 232
    xor-int/2addr v6, v8

    .line 233
    and-int v6, v6, v24

    .line 234
    .line 235
    const/4 v8, 0x1

    .line 236
    add-int/2addr v5, v8

    .line 237
    goto :goto_4

    .line 238
    :cond_4
    if-ne v15, v6, :cond_c

    .line 239
    .line 240
    const/4 v2, 0x2

    .line 241
    invoke-virtual {v12, v2}, Lj3/f;->g(I)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_7

    .line 246
    .line 247
    if-eq v5, v8, :cond_6

    .line 248
    .line 249
    if-ne v5, v2, :cond_5

    .line 250
    .line 251
    const/16 v2, 0x180

    .line 252
    .line 253
    :goto_5
    const/4 v5, 0x3

    .line 254
    goto :goto_6

    .line 255
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v2, "Unsupported base duration index in DTS UHD header: "

    .line 258
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    const/4 v2, 0x0

    .line 270
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    throw v1

    .line 275
    :cond_6
    const/16 v2, 0x1e0

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_7
    const/16 v2, 0x200

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :goto_6
    invoke-virtual {v12, v5}, Lj3/f;->g(I)I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    const/4 v5, 0x1

    .line 286
    add-int/2addr v6, v5

    .line 287
    mul-int v6, v6, v2

    .line 288
    .line 289
    const/4 v2, 0x2

    .line 290
    invoke-virtual {v12, v2}, Lj3/f;->g(I)I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    if-eqz v8, :cond_a

    .line 295
    .line 296
    if-eq v8, v5, :cond_9

    .line 297
    .line 298
    if-ne v8, v2, :cond_8

    .line 299
    .line 300
    const v2, 0xbb80

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v2, "Unsupported clock rate index in DTS UHD header: "

    .line 307
    .line 308
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    const/4 v2, 0x0

    .line 319
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    throw v1

    .line 324
    :cond_9
    const v2, 0xac44

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_a
    const/16 v2, 0x7d00

    .line 329
    .line 330
    :goto_7
    invoke-virtual {v12}, Lj3/f;->f()Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_b

    .line 335
    .line 336
    const/16 v5, 0x24

    .line 337
    .line 338
    invoke-virtual {v12, v5}, Lj3/f;->o(I)V

    .line 339
    .line 340
    .line 341
    :cond_b
    const/4 v5, 0x2

    .line 342
    invoke-virtual {v12, v5}, Lj3/f;->g(I)I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    const/4 v8, 0x1

    .line 347
    shl-int v5, v8, v5

    .line 348
    .line 349
    mul-int v14, v2, v5

    .line 350
    .line 351
    int-to-long v5, v6

    .line 352
    int-to-long v8, v2

    .line 353
    sget-object v31, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 354
    .line 355
    const-wide/32 v27, 0xf4240

    .line 356
    .line 357
    .line 358
    move-wide/from16 v25, v5

    .line 359
    .line 360
    move-wide/from16 v29, v8

    .line 361
    .line 362
    invoke-static/range {v25 .. v31}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 363
    .line 364
    .line 365
    move-result-wide v5

    .line 366
    move/from16 v28, v14

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_c
    const-string v1, "CRC check failed"

    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    throw v1

    .line 377
    :cond_d
    const-string v1, "Only supports full channel mask-based audio presentation"

    .line 378
    .line 379
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    throw v1

    .line 384
    :cond_e
    move-wide/from16 v5, v21

    .line 385
    .line 386
    const v28, -0x7fffffff

    .line 387
    .line 388
    .line 389
    :goto_8
    const/4 v2, 0x0

    .line 390
    const/4 v8, 0x0

    .line 391
    :goto_9
    if-ge v2, v3, :cond_f

    .line 392
    .line 393
    sget-object v9, Ll2/b;->o:[I

    .line 394
    .line 395
    invoke-static {v12, v9}, Ll2/b;->r(Lj3/f;[I)I

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    add-int/2addr v8, v9

    .line 400
    const/4 v9, 0x1

    .line 401
    add-int/2addr v2, v9

    .line 402
    goto :goto_9

    .line 403
    :cond_f
    if-eqz v3, :cond_10

    .line 404
    .line 405
    sget-object v2, Ll2/b;->p:[I

    .line 406
    .line 407
    invoke-static {v12, v2}, Ll2/b;->r(Lj3/f;[I)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-virtual {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 412
    .line 413
    .line 414
    :cond_10
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eqz v2, :cond_11

    .line 419
    .line 420
    sget-object v2, Ll2/b;->q:[I

    .line 421
    .line 422
    invoke-static {v12, v2}, Ll2/b;->r(Lj3/f;[I)I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    goto :goto_a

    .line 427
    :cond_11
    const/4 v2, 0x0

    .line 428
    :goto_a
    add-int/2addr v8, v2

    .line 429
    add-int v8, v8, v23

    .line 430
    .line 431
    new-instance v2, Ll2/a;

    .line 432
    .line 433
    const-string v26, "audio/vnd.dts.uhd;profile=p2"

    .line 434
    .line 435
    const/16 v27, 0x2

    .line 436
    .line 437
    move-object/from16 v25, v2

    .line 438
    .line 439
    move/from16 v29, v8

    .line 440
    .line 441
    move-wide/from16 v30, v5

    .line 442
    .line 443
    invoke-direct/range {v25 .. v31}, Ll2/a;-><init>(Ljava/lang/String;IIIJ)V

    .line 444
    .line 445
    .line 446
    iget v3, v0, Ls3/d;->n:I

    .line 447
    .line 448
    const/4 v9, 0x3

    .line 449
    if-ne v3, v9, :cond_12

    .line 450
    .line 451
    invoke-virtual {v0, v2}, Ls3/d;->g(Ll2/a;)V

    .line 452
    .line 453
    .line 454
    :cond_12
    iput v8, v0, Ls3/d;->m:I

    .line 455
    .line 456
    cmp-long v2, v5, v21

    .line 457
    .line 458
    if-nez v2, :cond_13

    .line 459
    .line 460
    const-wide/16 v5, 0x0

    .line 461
    .line 462
    :cond_13
    iput-wide v5, v0, Ls3/d;->k:J

    .line 463
    .line 464
    const/4 v2, 0x0

    .line 465
    invoke-virtual {v13, v2}, Lu1/q;->O(I)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v0, Ls3/d;->g:Ll2/j0;

    .line 469
    .line 470
    iget v3, v0, Ls3/d;->p:I

    .line 471
    .line 472
    invoke-interface {v2, v3, v13}, Ll2/j0;->a(ILu1/q;)V

    .line 473
    .line 474
    .line 475
    const/4 v2, 0x6

    .line 476
    iput v2, v0, Ls3/d;->h:I

    .line 477
    .line 478
    :cond_14
    :goto_b
    const/4 v5, -0x1

    .line 479
    const/16 v6, 0x8

    .line 480
    .line 481
    const/4 v8, 0x1

    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :pswitch_2
    const/4 v2, 0x6

    .line 485
    iget-object v5, v13, Lu1/q;->a:[B

    .line 486
    .line 487
    invoke-virtual {v0, v1, v5, v2}, Ls3/d;->f(Lu1/q;[BI)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_14

    .line 492
    .line 493
    iget-object v2, v13, Lu1/q;->a:[B

    .line 494
    .line 495
    invoke-static {v2}, Ll2/b;->k([B)Lj3/f;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 500
    .line 501
    .line 502
    sget-object v3, Ll2/b;->r:[I

    .line 503
    .line 504
    invoke-static {v2, v3}, Ll2/b;->r(Lj3/f;[I)I

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    const/4 v3, 0x1

    .line 509
    add-int/2addr v2, v3

    .line 510
    iput v2, v0, Ls3/d;->p:I

    .line 511
    .line 512
    iget v3, v0, Ls3/d;->i:I

    .line 513
    .line 514
    if-le v3, v2, :cond_15

    .line 515
    .line 516
    sub-int v2, v3, v2

    .line 517
    .line 518
    sub-int/2addr v3, v2

    .line 519
    iput v3, v0, Ls3/d;->i:I

    .line 520
    .line 521
    iget v3, v1, Lu1/q;->b:I

    .line 522
    .line 523
    sub-int/2addr v3, v2

    .line 524
    invoke-virtual {v1, v3}, Lu1/q;->O(I)V

    .line 525
    .line 526
    .line 527
    :cond_15
    const/4 v2, 0x5

    .line 528
    iput v2, v0, Ls3/d;->h:I

    .line 529
    .line 530
    goto :goto_b

    .line 531
    :pswitch_3
    iget-object v2, v13, Lu1/q;->a:[B

    .line 532
    .line 533
    iget v3, v0, Ls3/d;->o:I

    .line 534
    .line 535
    invoke-virtual {v0, v1, v2, v3}, Ls3/d;->f(Lu1/q;[BI)Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-eqz v2, :cond_14

    .line 540
    .line 541
    iget-object v2, v13, Lu1/q;->a:[B

    .line 542
    .line 543
    invoke-static {v2}, Ll2/b;->k([B)Lj3/f;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    const/16 v3, 0x28

    .line 548
    .line 549
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 550
    .line 551
    .line 552
    const/4 v3, 0x2

    .line 553
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    if-nez v6, :cond_16

    .line 562
    .line 563
    const/16 v6, 0x10

    .line 564
    .line 565
    const/16 v8, 0x8

    .line 566
    .line 567
    goto :goto_c

    .line 568
    :cond_16
    const/16 v6, 0x14

    .line 569
    .line 570
    const/16 v8, 0xc

    .line 571
    .line 572
    :goto_c
    invoke-virtual {v2, v8}, Lj3/f;->o(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v6}, Lj3/f;->g(I)I

    .line 576
    .line 577
    .line 578
    move-result v8

    .line 579
    const/4 v9, 0x1

    .line 580
    add-int/2addr v8, v9

    .line 581
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 582
    .line 583
    .line 584
    move-result v10

    .line 585
    if-eqz v10, :cond_1b

    .line 586
    .line 587
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 588
    .line 589
    .line 590
    move-result v11

    .line 591
    const/4 v3, 0x3

    .line 592
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 593
    .line 594
    .line 595
    move-result v12

    .line 596
    add-int/2addr v12, v9

    .line 597
    const/16 v14, 0x200

    .line 598
    .line 599
    mul-int/lit16 v12, v12, 0x200

    .line 600
    .line 601
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 602
    .line 603
    .line 604
    move-result v14

    .line 605
    if-eqz v14, :cond_17

    .line 606
    .line 607
    const/16 v14, 0x24

    .line 608
    .line 609
    invoke-virtual {v2, v14}, Lj3/f;->o(I)V

    .line 610
    .line 611
    .line 612
    :cond_17
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 613
    .line 614
    .line 615
    move-result v14

    .line 616
    add-int/2addr v14, v9

    .line 617
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    add-int/2addr v3, v9

    .line 622
    if-ne v14, v9, :cond_1a

    .line 623
    .line 624
    if-ne v3, v9, :cond_1a

    .line 625
    .line 626
    add-int/2addr v5, v9

    .line 627
    invoke-virtual {v2, v5}, Lj3/f;->g(I)I

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    const/4 v14, 0x0

    .line 632
    :goto_d
    if-ge v14, v5, :cond_19

    .line 633
    .line 634
    shr-int v15, v3, v14

    .line 635
    .line 636
    and-int/2addr v15, v9

    .line 637
    if-ne v15, v9, :cond_18

    .line 638
    .line 639
    const/16 v15, 0x8

    .line 640
    .line 641
    invoke-virtual {v2, v15}, Lj3/f;->o(I)V

    .line 642
    .line 643
    .line 644
    :cond_18
    add-int/2addr v14, v9

    .line 645
    goto :goto_d

    .line 646
    :cond_19
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_1c

    .line 651
    .line 652
    const/4 v3, 0x2

    .line 653
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 657
    .line 658
    .line 659
    move-result v5

    .line 660
    add-int/2addr v5, v9

    .line 661
    shl-int/2addr v5, v3

    .line 662
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 663
    .line 664
    .line 665
    move-result v14

    .line 666
    add-int/2addr v14, v9

    .line 667
    const/4 v3, 0x0

    .line 668
    :goto_e
    if-ge v3, v14, :cond_1c

    .line 669
    .line 670
    invoke-virtual {v2, v5}, Lj3/f;->o(I)V

    .line 671
    .line 672
    .line 673
    add-int/2addr v3, v9

    .line 674
    goto :goto_e

    .line 675
    :cond_1a
    const-string v1, "Multiple audio presentations or assets not supported"

    .line 676
    .line 677
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    throw v1

    .line 682
    :cond_1b
    const/4 v11, -0x1

    .line 683
    const/4 v12, 0x0

    .line 684
    :cond_1c
    invoke-virtual {v2, v6}, Lj3/f;->o(I)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 688
    .line 689
    .line 690
    if-eqz v10, :cond_20

    .line 691
    .line 692
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-eqz v3, :cond_1d

    .line 697
    .line 698
    invoke-virtual {v2, v4}, Lj3/f;->o(I)V

    .line 699
    .line 700
    .line 701
    :cond_1d
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    if-eqz v3, :cond_1e

    .line 706
    .line 707
    const/16 v3, 0x18

    .line 708
    .line 709
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 710
    .line 711
    .line 712
    :cond_1e
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_1f

    .line 717
    .line 718
    const/16 v3, 0xa

    .line 719
    .line 720
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    const/4 v5, 0x1

    .line 725
    add-int/2addr v3, v5

    .line 726
    invoke-virtual {v2, v3}, Lj3/f;->p(I)V

    .line 727
    .line 728
    .line 729
    :goto_f
    const/4 v3, 0x5

    .line 730
    goto :goto_10

    .line 731
    :cond_1f
    const/4 v5, 0x1

    .line 732
    goto :goto_f

    .line 733
    :goto_10
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 734
    .line 735
    .line 736
    sget-object v3, Ll2/b;->m:[I

    .line 737
    .line 738
    invoke-virtual {v2, v4}, Lj3/f;->g(I)I

    .line 739
    .line 740
    .line 741
    move-result v6

    .line 742
    aget v14, v3, v6

    .line 743
    .line 744
    const/16 v3, 0x8

    .line 745
    .line 746
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    add-int/2addr v2, v5

    .line 751
    move/from16 v27, v2

    .line 752
    .line 753
    move/from16 v28, v14

    .line 754
    .line 755
    goto :goto_11

    .line 756
    :cond_20
    const/4 v5, 0x1

    .line 757
    const/16 v27, -0x1

    .line 758
    .line 759
    const v28, -0x7fffffff

    .line 760
    .line 761
    .line 762
    :goto_11
    if-eqz v10, :cond_24

    .line 763
    .line 764
    if-eqz v11, :cond_23

    .line 765
    .line 766
    if-eq v11, v5, :cond_22

    .line 767
    .line 768
    const/4 v2, 0x2

    .line 769
    if-ne v11, v2, :cond_21

    .line 770
    .line 771
    const v2, 0xbb80

    .line 772
    .line 773
    .line 774
    goto :goto_12

    .line 775
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 776
    .line 777
    const-string v2, "Unsupported reference clock code in DTS HD header: "

    .line 778
    .line 779
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    const/4 v2, 0x0

    .line 790
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    throw v1

    .line 795
    :cond_22
    const v2, 0xac44

    .line 796
    .line 797
    .line 798
    goto :goto_12

    .line 799
    :cond_23
    const/16 v2, 0x7d00

    .line 800
    .line 801
    :goto_12
    int-to-long v5, v12

    .line 802
    int-to-long v2, v2

    .line 803
    sget-object v9, Lu1/f0;->a:Ljava/lang/String;

    .line 804
    .line 805
    sget-object v35, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 806
    .line 807
    const-wide/32 v31, 0xf4240

    .line 808
    .line 809
    .line 810
    move-wide/from16 v29, v5

    .line 811
    .line 812
    move-wide/from16 v33, v2

    .line 813
    .line 814
    invoke-static/range {v29 .. v35}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 815
    .line 816
    .line 817
    move-result-wide v2

    .line 818
    goto :goto_13

    .line 819
    :cond_24
    move-wide/from16 v2, v21

    .line 820
    .line 821
    :goto_13
    new-instance v5, Ll2/a;

    .line 822
    .line 823
    const-string v26, "audio/vnd.dts.hd;profile=lbr"

    .line 824
    .line 825
    move-object/from16 v25, v5

    .line 826
    .line 827
    move/from16 v29, v8

    .line 828
    .line 829
    move-wide/from16 v30, v2

    .line 830
    .line 831
    invoke-direct/range {v25 .. v31}, Ll2/a;-><init>(Ljava/lang/String;IIIJ)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v5}, Ls3/d;->g(Ll2/a;)V

    .line 835
    .line 836
    .line 837
    iput v8, v0, Ls3/d;->m:I

    .line 838
    .line 839
    cmp-long v5, v2, v21

    .line 840
    .line 841
    if-nez v5, :cond_25

    .line 842
    .line 843
    const-wide/16 v2, 0x0

    .line 844
    .line 845
    :cond_25
    iput-wide v2, v0, Ls3/d;->k:J

    .line 846
    .line 847
    const/4 v2, 0x0

    .line 848
    invoke-virtual {v13, v2}, Lu1/q;->O(I)V

    .line 849
    .line 850
    .line 851
    iget-object v2, v0, Ls3/d;->g:Ll2/j0;

    .line 852
    .line 853
    iget v3, v0, Ls3/d;->o:I

    .line 854
    .line 855
    invoke-interface {v2, v3, v13}, Ll2/j0;->a(ILu1/q;)V

    .line 856
    .line 857
    .line 858
    const/4 v2, 0x6

    .line 859
    iput v2, v0, Ls3/d;->h:I

    .line 860
    .line 861
    goto/16 :goto_b

    .line 862
    .line 863
    :pswitch_4
    iget-object v2, v13, Lu1/q;->a:[B

    .line 864
    .line 865
    const/4 v3, 0x7

    .line 866
    invoke-virtual {v0, v1, v2, v3}, Ls3/d;->f(Lu1/q;[BI)Z

    .line 867
    .line 868
    .line 869
    move-result v2

    .line 870
    if-eqz v2, :cond_14

    .line 871
    .line 872
    iget-object v2, v13, Lu1/q;->a:[B

    .line 873
    .line 874
    invoke-static {v2}, Ll2/b;->k([B)Lj3/f;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    const/16 v3, 0x2a

    .line 879
    .line 880
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    if-eqz v3, :cond_26

    .line 888
    .line 889
    const/16 v3, 0xc

    .line 890
    .line 891
    goto :goto_14

    .line 892
    :cond_26
    const/16 v3, 0x8

    .line 893
    .line 894
    :goto_14
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    const/4 v3, 0x1

    .line 899
    add-int/2addr v2, v3

    .line 900
    iput v2, v0, Ls3/d;->o:I

    .line 901
    .line 902
    const/4 v2, 0x3

    .line 903
    iput v2, v0, Ls3/d;->h:I

    .line 904
    .line 905
    goto/16 :goto_b

    .line 906
    .line 907
    :pswitch_5
    iget-object v2, v13, Lu1/q;->a:[B

    .line 908
    .line 909
    const/16 v5, 0x12

    .line 910
    .line 911
    invoke-virtual {v0, v1, v2, v5}, Ls3/d;->f(Lu1/q;[BI)Z

    .line 912
    .line 913
    .line 914
    move-result v2

    .line 915
    if-eqz v2, :cond_14

    .line 916
    .line 917
    iget-object v2, v13, Lu1/q;->a:[B

    .line 918
    .line 919
    iget-object v6, v0, Ls3/d;->l:Lr1/p;

    .line 920
    .line 921
    const/16 v8, 0x3c

    .line 922
    .line 923
    if-nez v6, :cond_29

    .line 924
    .line 925
    iget-object v6, v0, Ls3/d;->f:Ljava/lang/String;

    .line 926
    .line 927
    invoke-static {v2}, Ll2/b;->k([B)Lj3/f;

    .line 928
    .line 929
    .line 930
    move-result-object v9

    .line 931
    invoke-virtual {v9, v8}, Lj3/f;->o(I)V

    .line 932
    .line 933
    .line 934
    const/4 v10, 0x6

    .line 935
    invoke-virtual {v9, v10}, Lj3/f;->g(I)I

    .line 936
    .line 937
    .line 938
    move-result v11

    .line 939
    sget-object v10, Ll2/b;->j:[I

    .line 940
    .line 941
    aget v10, v10, v11

    .line 942
    .line 943
    invoke-virtual {v9, v4}, Lj3/f;->g(I)I

    .line 944
    .line 945
    .line 946
    move-result v11

    .line 947
    sget-object v12, Ll2/b;->k:[I

    .line 948
    .line 949
    aget v11, v12, v11

    .line 950
    .line 951
    const/4 v12, 0x5

    .line 952
    invoke-virtual {v9, v12}, Lj3/f;->g(I)I

    .line 953
    .line 954
    .line 955
    move-result v14

    .line 956
    const/16 v12, 0x1d

    .line 957
    .line 958
    if-lt v14, v12, :cond_27

    .line 959
    .line 960
    const/4 v12, -0x1

    .line 961
    const/4 v14, 0x2

    .line 962
    :goto_15
    const/16 v15, 0xa

    .line 963
    .line 964
    goto :goto_16

    .line 965
    :cond_27
    sget-object v12, Ll2/b;->l:[I

    .line 966
    .line 967
    aget v12, v12, v14

    .line 968
    .line 969
    mul-int/lit16 v12, v12, 0x3e8

    .line 970
    .line 971
    const/4 v14, 0x2

    .line 972
    div-int/2addr v12, v14

    .line 973
    goto :goto_15

    .line 974
    :goto_16
    invoke-virtual {v9, v15}, Lj3/f;->o(I)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v9, v14}, Lj3/f;->g(I)I

    .line 978
    .line 979
    .line 980
    move-result v9

    .line 981
    if-lez v9, :cond_28

    .line 982
    .line 983
    const/4 v9, 0x1

    .line 984
    goto :goto_17

    .line 985
    :cond_28
    const/4 v9, 0x0

    .line 986
    :goto_17
    add-int/2addr v10, v9

    .line 987
    new-instance v9, Lr1/o;

    .line 988
    .line 989
    invoke-direct {v9}, Lr1/o;-><init>()V

    .line 990
    .line 991
    .line 992
    iput-object v6, v9, Lr1/o;->a:Ljava/lang/String;

    .line 993
    .line 994
    iget-object v6, v0, Ls3/d;->e:Ljava/lang/String;

    .line 995
    .line 996
    invoke-static {v6}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v6

    .line 1000
    iput-object v6, v9, Lr1/o;->m:Ljava/lang/String;

    .line 1001
    .line 1002
    const-string v6, "audio/vnd.dts"

    .line 1003
    .line 1004
    invoke-static {v6}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v6

    .line 1008
    iput-object v6, v9, Lr1/o;->n:Ljava/lang/String;

    .line 1009
    .line 1010
    iput v12, v9, Lr1/o;->h:I

    .line 1011
    .line 1012
    iput v10, v9, Lr1/o;->F:I

    .line 1013
    .line 1014
    iput v11, v9, Lr1/o;->G:I

    .line 1015
    .line 1016
    const/4 v6, 0x0

    .line 1017
    iput-object v6, v9, Lr1/o;->r:Lr1/l;

    .line 1018
    .line 1019
    iget-object v6, v0, Ls3/d;->c:Ljava/lang/String;

    .line 1020
    .line 1021
    iput-object v6, v9, Lr1/o;->d:Ljava/lang/String;

    .line 1022
    .line 1023
    iget v6, v0, Ls3/d;->d:I

    .line 1024
    .line 1025
    iput v6, v9, Lr1/o;->f:I

    .line 1026
    .line 1027
    new-instance v6, Lr1/p;

    .line 1028
    .line 1029
    invoke-direct {v6, v9}, Lr1/p;-><init>(Lr1/o;)V

    .line 1030
    .line 1031
    .line 1032
    iput-object v6, v0, Ls3/d;->l:Lr1/p;

    .line 1033
    .line 1034
    iget-object v9, v0, Ls3/d;->g:Ll2/j0;

    .line 1035
    .line 1036
    invoke-interface {v9, v6}, Ll2/j0;->g(Lr1/p;)V

    .line 1037
    .line 1038
    .line 1039
    :cond_29
    invoke-static {v2}, Ll2/b;->g([B)I

    .line 1040
    .line 1041
    .line 1042
    move-result v6

    .line 1043
    iput v6, v0, Ls3/d;->m:I

    .line 1044
    .line 1045
    const/4 v6, 0x0

    .line 1046
    aget-byte v9, v2, v6

    .line 1047
    .line 1048
    const/4 v6, -0x2

    .line 1049
    if-eq v9, v6, :cond_2c

    .line 1050
    .line 1051
    const/4 v6, -0x1

    .line 1052
    if-eq v9, v6, :cond_2b

    .line 1053
    .line 1054
    const/16 v10, 0x1f

    .line 1055
    .line 1056
    if-eq v9, v10, :cond_2a

    .line 1057
    .line 1058
    aget-byte v8, v2, v4

    .line 1059
    .line 1060
    const/4 v9, 0x1

    .line 1061
    and-int/2addr v8, v9

    .line 1062
    const/4 v9, 0x6

    .line 1063
    shl-int/2addr v8, v9

    .line 1064
    const/4 v10, 0x5

    .line 1065
    aget-byte v2, v2, v10

    .line 1066
    .line 1067
    and-int/lit16 v2, v2, 0xfc

    .line 1068
    .line 1069
    const/4 v11, 0x2

    .line 1070
    shr-int/2addr v2, v11

    .line 1071
    or-int/2addr v2, v8

    .line 1072
    :goto_18
    const/4 v9, 0x1

    .line 1073
    goto :goto_19

    .line 1074
    :cond_2a
    const/4 v9, 0x6

    .line 1075
    const/4 v10, 0x5

    .line 1076
    const/4 v11, 0x2

    .line 1077
    aget-byte v10, v2, v10

    .line 1078
    .line 1079
    const/4 v12, 0x7

    .line 1080
    and-int/2addr v10, v12

    .line 1081
    shl-int/2addr v10, v4

    .line 1082
    aget-byte v2, v2, v9

    .line 1083
    .line 1084
    and-int/2addr v2, v8

    .line 1085
    shr-int/2addr v2, v11

    .line 1086
    or-int/2addr v2, v10

    .line 1087
    goto :goto_18

    .line 1088
    :cond_2b
    const/4 v11, 0x2

    .line 1089
    const/4 v12, 0x7

    .line 1090
    aget-byte v9, v2, v4

    .line 1091
    .line 1092
    and-int/2addr v9, v12

    .line 1093
    shl-int/2addr v9, v4

    .line 1094
    aget-byte v2, v2, v12

    .line 1095
    .line 1096
    and-int/2addr v2, v8

    .line 1097
    shr-int/2addr v2, v11

    .line 1098
    or-int/2addr v2, v9

    .line 1099
    goto :goto_18

    .line 1100
    :cond_2c
    const/4 v6, -0x1

    .line 1101
    const/4 v8, 0x5

    .line 1102
    const/4 v11, 0x2

    .line 1103
    aget-byte v8, v2, v8

    .line 1104
    .line 1105
    const/4 v9, 0x1

    .line 1106
    and-int/2addr v8, v9

    .line 1107
    const/4 v10, 0x6

    .line 1108
    shl-int/2addr v8, v10

    .line 1109
    aget-byte v2, v2, v4

    .line 1110
    .line 1111
    and-int/lit16 v2, v2, 0xfc

    .line 1112
    .line 1113
    shr-int/2addr v2, v11

    .line 1114
    or-int/2addr v2, v8

    .line 1115
    :goto_19
    add-int/2addr v2, v9

    .line 1116
    mul-int/lit8 v2, v2, 0x20

    .line 1117
    .line 1118
    int-to-long v2, v2

    .line 1119
    iget-object v8, v0, Ls3/d;->l:Lr1/p;

    .line 1120
    .line 1121
    iget v8, v8, Lr1/p;->H:I

    .line 1122
    .line 1123
    invoke-static {v8, v2, v3}, Lu1/f0;->K(IJ)J

    .line 1124
    .line 1125
    .line 1126
    move-result-wide v2

    .line 1127
    invoke-static {v2, v3}, Ld/b;->h(J)I

    .line 1128
    .line 1129
    .line 1130
    move-result v2

    .line 1131
    int-to-long v2, v2

    .line 1132
    iput-wide v2, v0, Ls3/d;->k:J

    .line 1133
    .line 1134
    const/4 v2, 0x0

    .line 1135
    invoke-virtual {v13, v2}, Lu1/q;->O(I)V

    .line 1136
    .line 1137
    .line 1138
    iget-object v2, v0, Ls3/d;->g:Ll2/j0;

    .line 1139
    .line 1140
    invoke-interface {v2, v5, v13}, Ll2/j0;->a(ILu1/q;)V

    .line 1141
    .line 1142
    .line 1143
    const/4 v2, 0x6

    .line 1144
    iput v2, v0, Ls3/d;->h:I

    .line 1145
    .line 1146
    goto/16 :goto_b

    .line 1147
    .line 1148
    :pswitch_6
    const/4 v6, -0x1

    .line 1149
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 1150
    .line 1151
    .line 1152
    move-result v2

    .line 1153
    if-lez v2, :cond_14

    .line 1154
    .line 1155
    iget v2, v0, Ls3/d;->j:I

    .line 1156
    .line 1157
    const/16 v3, 0x8

    .line 1158
    .line 1159
    shl-int/2addr v2, v3

    .line 1160
    iput v2, v0, Ls3/d;->j:I

    .line 1161
    .line 1162
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 1163
    .line 1164
    .line 1165
    move-result v3

    .line 1166
    or-int/2addr v2, v3

    .line 1167
    iput v2, v0, Ls3/d;->j:I

    .line 1168
    .line 1169
    invoke-static {v2}, Ll2/b;->i(I)I

    .line 1170
    .line 1171
    .line 1172
    move-result v2

    .line 1173
    iput v2, v0, Ls3/d;->n:I

    .line 1174
    .line 1175
    if-eqz v2, :cond_2d

    .line 1176
    .line 1177
    iget-object v3, v13, Lu1/q;->a:[B

    .line 1178
    .line 1179
    iget v5, v0, Ls3/d;->j:I

    .line 1180
    .line 1181
    const/16 v8, 0x18

    .line 1182
    .line 1183
    shr-int/lit8 v9, v5, 0x18

    .line 1184
    .line 1185
    and-int/lit16 v9, v9, 0xff

    .line 1186
    .line 1187
    int-to-byte v9, v9

    .line 1188
    const/4 v10, 0x0

    .line 1189
    aput-byte v9, v3, v10

    .line 1190
    .line 1191
    const/16 v9, 0x10

    .line 1192
    .line 1193
    shr-int/lit8 v10, v5, 0x10

    .line 1194
    .line 1195
    and-int/lit16 v10, v10, 0xff

    .line 1196
    .line 1197
    int-to-byte v10, v10

    .line 1198
    const/4 v11, 0x1

    .line 1199
    aput-byte v10, v3, v11

    .line 1200
    .line 1201
    const/16 v10, 0x8

    .line 1202
    .line 1203
    shr-int/lit8 v11, v5, 0x8

    .line 1204
    .line 1205
    and-int/lit16 v11, v11, 0xff

    .line 1206
    .line 1207
    int-to-byte v11, v11

    .line 1208
    const/4 v12, 0x2

    .line 1209
    aput-byte v11, v3, v12

    .line 1210
    .line 1211
    and-int/lit16 v5, v5, 0xff

    .line 1212
    .line 1213
    int-to-byte v5, v5

    .line 1214
    const/4 v11, 0x3

    .line 1215
    aput-byte v5, v3, v11

    .line 1216
    .line 1217
    iput v4, v0, Ls3/d;->i:I

    .line 1218
    .line 1219
    const/4 v3, 0x0

    .line 1220
    iput v3, v0, Ls3/d;->j:I

    .line 1221
    .line 1222
    if-eq v2, v11, :cond_2e

    .line 1223
    .line 1224
    if-ne v2, v4, :cond_2f

    .line 1225
    .line 1226
    :cond_2e
    const/4 v5, 0x1

    .line 1227
    goto :goto_1a

    .line 1228
    :cond_2f
    const/4 v5, 0x1

    .line 1229
    if-ne v2, v5, :cond_30

    .line 1230
    .line 1231
    iput v5, v0, Ls3/d;->h:I

    .line 1232
    .line 1233
    goto/16 :goto_b

    .line 1234
    .line 1235
    :cond_30
    const/4 v2, 0x2

    .line 1236
    iput v2, v0, Ls3/d;->h:I

    .line 1237
    .line 1238
    goto/16 :goto_b

    .line 1239
    .line 1240
    :goto_1a
    iput v4, v0, Ls3/d;->h:I

    .line 1241
    .line 1242
    goto/16 :goto_b

    .line 1243
    .line 1244
    :cond_31
    return-void

    .line 1245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls3/d;->h:I

    .line 3
    .line 4
    iput v0, p0, Ls3/d;->i:I

    .line 5
    .line 6
    iput v0, p0, Ls3/d;->j:I

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Ls3/d;->q:J

    .line 14
    .line 15
    iget-object v1, p0, Ls3/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Ls3/d;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ll2/q;Ls3/d0;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Ls3/d;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 14
    .line 15
    .line 16
    iget p2, p2, Ls3/d0;->d:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-interface {p1, p2, v0}, Ll2/q;->z(II)Ll2/j0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Ls3/d;->g:Ll2/j0;

    .line 24
    .line 25
    return-void
.end method

.method public final f(Lu1/q;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lu1/q;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Ls3/d;->i:I

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
    iget v1, p0, Ls3/d;->i:I

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0, p2}, Lu1/q;->l(II[B)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Ls3/d;->i:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Ls3/d;->i:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public final g(Ll2/a;)V
    .locals 4

    .line 1
    const v0, -0x7fffffff

    .line 2
    .line 3
    .line 4
    iget v1, p1, Ll2/a;->b:I

    .line 5
    .line 6
    if-eq v1, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iget v2, p1, Ll2/a;->c:I

    .line 10
    .line 11
    if-ne v2, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Ls3/d;->l:Lr1/p;

    .line 15
    .line 16
    iget-object p1, p1, Ll2/a;->a:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v3, v0, Lr1/p;->G:I

    .line 21
    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    iget v3, v0, Lr1/p;->H:I

    .line 25
    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lr1/p;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Ls3/d;->l:Lr1/p;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lr1/o;

    .line 41
    .line 42
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v3, Lr1/o;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Lr1/o;-><init>(Lr1/p;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v3

    .line 52
    :goto_0
    iget-object v3, p0, Ls3/d;->f:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v3, v0, Lr1/o;->a:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p0, Ls3/d;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v3}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, v0, Lr1/o;->m:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, v0, Lr1/o;->n:Ljava/lang/String;

    .line 69
    .line 70
    iput v2, v0, Lr1/o;->F:I

    .line 71
    .line 72
    iput v1, v0, Lr1/o;->G:I

    .line 73
    .line 74
    iget-object p1, p0, Ls3/d;->c:Ljava/lang/String;

    .line 75
    .line 76
    iput-object p1, v0, Lr1/o;->d:Ljava/lang/String;

    .line 77
    .line 78
    iget p1, p0, Ls3/d;->d:I

    .line 79
    .line 80
    iput p1, v0, Lr1/o;->f:I

    .line 81
    .line 82
    new-instance p1, Lr1/p;

    .line 83
    .line 84
    invoke-direct {p1, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Ls3/d;->l:Lr1/p;

    .line 88
    .line 89
    iget-object v0, p0, Ls3/d;->g:Ll2/j0;

    .line 90
    .line 91
    invoke-interface {v0, p1}, Ll2/j0;->g(Lr1/p;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    return-void
.end method
