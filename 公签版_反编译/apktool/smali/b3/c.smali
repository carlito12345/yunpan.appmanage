.class public final Lb3/c;
.super Lnh/b;
.source "SourceFile"


# instance fields
.field public final b:Lu1/q;

.field public final c:Lj3/f;

.field public d:Lu1/d0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu1/q;

    .line 5
    .line 6
    invoke-direct {v0}, Lu1/q;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb3/c;->b:Lu1/q;

    .line 10
    .line 11
    new-instance v0, Lj3/f;

    .line 12
    .line 13
    invoke-direct {v0}, Lj3/f;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lb3/c;->c:Lj3/f;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final r(Lu2/a;Ljava/nio/ByteBuffer;)Lr1/d0;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/16 v4, 0x20

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, Lb3/c;->d:Lu1/d0;

    .line 11
    .line 12
    if-eqz v6, :cond_0

    .line 13
    .line 14
    iget-wide v7, v1, Lu2/a;->j:J

    .line 15
    .line 16
    invoke-virtual {v6}, Lu1/d0;->e()J

    .line 17
    .line 18
    .line 19
    move-result-wide v9

    .line 20
    cmp-long v6, v7, v9

    .line 21
    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    :cond_0
    new-instance v6, Lu1/d0;

    .line 25
    .line 26
    iget-wide v7, v1, Lx1/g;->g:J

    .line 27
    .line 28
    invoke-direct {v6, v7, v8}, Lu1/d0;-><init>(J)V

    .line 29
    .line 30
    .line 31
    iput-object v6, v0, Lb3/c;->d:Lu1/d0;

    .line 32
    .line 33
    iget-wide v7, v1, Lx1/g;->g:J

    .line 34
    .line 35
    iget-wide v9, v1, Lu2/a;->j:J

    .line 36
    .line 37
    sub-long/2addr v7, v9

    .line 38
    invoke-virtual {v6, v7, v8}, Lu1/d0;->a(J)J

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v7, v0, Lb3/c;->b:Lu1/q;

    .line 50
    .line 51
    invoke-virtual {v7, v6, v1}, Lu1/q;->M(I[B)V

    .line 52
    .line 53
    .line 54
    iget-object v8, v0, Lb3/c;->c:Lj3/f;

    .line 55
    .line 56
    invoke-virtual {v8, v6, v1}, Lj3/f;->k(I[B)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x27

    .line 60
    .line 61
    invoke-virtual {v8, v1}, Lj3/f;->o(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v5}, Lj3/f;->g(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    int-to-long v9, v1

    .line 69
    shl-long/2addr v9, v4

    .line 70
    invoke-virtual {v8, v4}, Lj3/f;->g(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    int-to-long v11, v1

    .line 75
    or-long/2addr v9, v11

    .line 76
    const/16 v1, 0x14

    .line 77
    .line 78
    invoke-virtual {v8, v1}, Lj3/f;->o(I)V

    .line 79
    .line 80
    .line 81
    const/16 v1, 0xc

    .line 82
    .line 83
    invoke-virtual {v8, v1}, Lj3/f;->g(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v8, v3}, Lj3/f;->g(I)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const/16 v8, 0xe

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Lu1/q;->P(I)V

    .line 94
    .line 95
    .line 96
    if-eqz v6, :cond_19

    .line 97
    .line 98
    const/16 v8, 0xff

    .line 99
    .line 100
    const/4 v11, 0x4

    .line 101
    if-eq v6, v8, :cond_18

    .line 102
    .line 103
    if-eq v6, v11, :cond_e

    .line 104
    .line 105
    const/4 v1, 0x5

    .line 106
    if-eq v6, v1, :cond_3

    .line 107
    .line 108
    const/4 v1, 0x6

    .line 109
    if-eq v6, v1, :cond_2

    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    goto/16 :goto_d

    .line 113
    .line 114
    :cond_2
    iget-object v1, v0, Lb3/c;->d:Lu1/d0;

    .line 115
    .line 116
    invoke-static {v9, v10, v7}, Lb3/a;->d(JLu1/q;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v12

    .line 120
    invoke-virtual {v1, v12, v13}, Lu1/d0;->b(J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v14

    .line 124
    new-instance v1, Lb3/a;

    .line 125
    .line 126
    const/16 v16, 0x2

    .line 127
    .line 128
    move-object v11, v1

    .line 129
    invoke-direct/range {v11 .. v16}, Lb3/a;-><init>(JJI)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_d

    .line 133
    .line 134
    :cond_3
    iget-object v1, v0, Lb3/c;->d:Lu1/d0;

    .line 135
    .line 136
    invoke-virtual {v7}, Lu1/q;->D()J

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    and-int/lit16 v3, v3, 0x80

    .line 144
    .line 145
    if-eqz v3, :cond_4

    .line 146
    .line 147
    const/4 v3, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    const/4 v3, 0x0

    .line 150
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-nez v3, :cond_d

    .line 155
    .line 156
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    and-int/lit8 v8, v3, 0x40

    .line 161
    .line 162
    if-eqz v8, :cond_5

    .line 163
    .line 164
    const/4 v8, 0x1

    .line 165
    goto :goto_1

    .line 166
    :cond_5
    const/4 v8, 0x0

    .line 167
    :goto_1
    and-int/2addr v4, v3

    .line 168
    if-eqz v4, :cond_6

    .line 169
    .line 170
    const/4 v4, 0x1

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    const/4 v4, 0x0

    .line 173
    :goto_2
    and-int/lit8 v3, v3, 0x10

    .line 174
    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    const/4 v3, 0x1

    .line 178
    goto :goto_3

    .line 179
    :cond_7
    const/4 v3, 0x0

    .line 180
    :goto_3
    if-eqz v8, :cond_8

    .line 181
    .line 182
    if-nez v3, :cond_8

    .line 183
    .line 184
    invoke-static {v9, v10, v7}, Lb3/a;->d(JLu1/q;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v13

    .line 188
    goto :goto_4

    .line 189
    :cond_8
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    :goto_4
    if-nez v8, :cond_b

    .line 195
    .line 196
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    new-instance v8, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .line 204
    .line 205
    const/4 v15, 0x0

    .line 206
    :goto_5
    if-ge v15, v6, :cond_a

    .line 207
    .line 208
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 209
    .line 210
    .line 211
    if-nez v3, :cond_9

    .line 212
    .line 213
    invoke-static {v9, v10, v7}, Lb3/a;->d(JLu1/q;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v16

    .line 217
    move-wide/from16 v11, v16

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_9
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :goto_6
    new-instance v2, Lm7/e;

    .line 226
    .line 227
    invoke-virtual {v1, v11, v12}, Lu1/d0;->b(J)J

    .line 228
    .line 229
    .line 230
    const/4 v11, 0x7

    .line 231
    invoke-direct {v2, v11}, Lm7/e;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    add-int/2addr v15, v5

    .line 238
    goto :goto_5

    .line 239
    :cond_a
    move-object v6, v8

    .line 240
    :cond_b
    if-eqz v4, :cond_c

    .line 241
    .line 242
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7}, Lu1/q;->D()J

    .line 246
    .line 247
    .line 248
    :cond_c
    invoke-virtual {v7}, Lu1/q;->I()I

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 255
    .line 256
    .line 257
    move-object/from16 v24, v6

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_d
    move-object/from16 v24, v6

    .line 261
    .line 262
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :goto_7
    new-instance v2, Lb3/a;

    .line 268
    .line 269
    invoke-virtual {v1, v13, v14}, Lu1/d0;->b(J)J

    .line 270
    .line 271
    .line 272
    move-result-wide v22

    .line 273
    move-object/from16 v19, v2

    .line 274
    .line 275
    move-wide/from16 v20, v13

    .line 276
    .line 277
    invoke-direct/range {v19 .. v24}, Lb3/a;-><init>(JJLjava/util/List;)V

    .line 278
    .line 279
    .line 280
    move-object v1, v2

    .line 281
    goto/16 :goto_d

    .line 282
    .line 283
    :cond_e
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .line 291
    .line 292
    const/4 v6, 0x0

    .line 293
    :goto_8
    if-ge v6, v1, :cond_17

    .line 294
    .line 295
    invoke-virtual {v7}, Lu1/q;->D()J

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    and-int/lit16 v8, v8, 0x80

    .line 303
    .line 304
    if-eqz v8, :cond_f

    .line 305
    .line 306
    const/4 v8, 0x1

    .line 307
    goto :goto_9

    .line 308
    :cond_f
    const/4 v8, 0x0

    .line 309
    :goto_9
    new-instance v9, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .line 313
    .line 314
    if-nez v8, :cond_16

    .line 315
    .line 316
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    and-int/lit8 v10, v8, 0x40

    .line 321
    .line 322
    if-eqz v10, :cond_10

    .line 323
    .line 324
    const/4 v10, 0x1

    .line 325
    goto :goto_a

    .line 326
    :cond_10
    const/4 v10, 0x0

    .line 327
    :goto_a
    and-int/2addr v8, v4

    .line 328
    if-eqz v8, :cond_11

    .line 329
    .line 330
    const/4 v8, 0x1

    .line 331
    goto :goto_b

    .line 332
    :cond_11
    const/4 v8, 0x0

    .line 333
    :goto_b
    if-eqz v10, :cond_12

    .line 334
    .line 335
    invoke-virtual {v7}, Lu1/q;->D()J

    .line 336
    .line 337
    .line 338
    :cond_12
    if-nez v10, :cond_14

    .line 339
    .line 340
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    new-instance v10, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .line 348
    .line 349
    const/4 v11, 0x0

    .line 350
    :goto_c
    if-ge v11, v9, :cond_13

    .line 351
    .line 352
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Lu1/q;->D()J

    .line 356
    .line 357
    .line 358
    new-instance v12, Lgf/g;

    .line 359
    .line 360
    invoke-direct {v12, v3}, Lgf/g;-><init>(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    add-int/2addr v11, v5

    .line 367
    goto :goto_c

    .line 368
    :cond_13
    move-object v9, v10

    .line 369
    :cond_14
    if-eqz v8, :cond_15

    .line 370
    .line 371
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7}, Lu1/q;->D()J

    .line 375
    .line 376
    .line 377
    :cond_15
    invoke-virtual {v7}, Lu1/q;->I()I

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 381
    .line 382
    .line 383
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 384
    .line 385
    .line 386
    :cond_16
    new-instance v8, Lm7/e;

    .line 387
    .line 388
    invoke-direct {v8, v9}, Lm7/e;-><init>(Ljava/util/ArrayList;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    add-int/2addr v6, v5

    .line 395
    goto :goto_8

    .line 396
    :cond_17
    new-instance v1, Lb3/d;

    .line 397
    .line 398
    invoke-direct {v1, v2}, Lb3/d;-><init>(Ljava/util/ArrayList;)V

    .line 399
    .line 400
    .line 401
    goto :goto_d

    .line 402
    :cond_18
    invoke-virtual {v7}, Lu1/q;->D()J

    .line 403
    .line 404
    .line 405
    move-result-wide v14

    .line 406
    sub-int/2addr v1, v11

    .line 407
    new-array v2, v1, [B

    .line 408
    .line 409
    const/4 v3, 0x0

    .line 410
    invoke-virtual {v7, v3, v1, v2}, Lu1/q;->l(II[B)V

    .line 411
    .line 412
    .line 413
    new-instance v1, Lb3/a;

    .line 414
    .line 415
    const/16 v18, 0x0

    .line 416
    .line 417
    move-object v13, v1

    .line 418
    move-wide/from16 v16, v9

    .line 419
    .line 420
    invoke-direct/range {v13 .. v18}, Lb3/a;-><init>(JJI)V

    .line 421
    .line 422
    .line 423
    goto :goto_d

    .line 424
    :cond_19
    new-instance v1, Lb3/d;

    .line 425
    .line 426
    invoke-direct {v1}, Lb3/d;-><init>()V

    .line 427
    .line 428
    .line 429
    :goto_d
    if-nez v1, :cond_1a

    .line 430
    .line 431
    new-instance v1, Lr1/d0;

    .line 432
    .line 433
    const/4 v2, 0x0

    .line 434
    new-array v2, v2, [Lr1/c0;

    .line 435
    .line 436
    invoke-direct {v1, v2}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 437
    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_1a
    const/4 v2, 0x0

    .line 441
    new-instance v3, Lr1/d0;

    .line 442
    .line 443
    new-array v4, v5, [Lr1/c0;

    .line 444
    .line 445
    aput-object v1, v4, v2

    .line 446
    .line 447
    invoke-direct {v3, v4}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 448
    .line 449
    .line 450
    move-object v1, v3

    .line 451
    :goto_e
    return-object v1
.end method
