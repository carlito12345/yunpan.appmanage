.class public final Lt2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final a:Lu1/q;

.field public b:Lf2/u0;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Lu2/b;

.field public h:Ll2/l;

.field public i:Landroidx/recyclerview/widget/h;

.field public j:Lf3/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu1/q;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lt2/a;->a:Lu1/q;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lt2/a;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/a;->j:Lf3/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b()Ll2/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Ll2/q;)V
    .locals 0

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iput-object p1, p0, Lt2/a;->b:Lf2/u0;

    .line 4
    .line 5
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 26

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
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget v6, v0, Lt2/a;->c:I

    .line 11
    .line 12
    const/4 v7, 0x2

    .line 13
    const-wide/16 v8, -0x1

    .line 14
    .line 15
    iget-object v10, v0, Lt2/a;->a:Lu1/q;

    .line 16
    .line 17
    const/4 v11, 0x4

    .line 18
    if-eqz v6, :cond_19

    .line 19
    .line 20
    if-eq v6, v4, :cond_18

    .line 21
    .line 22
    if-eq v6, v7, :cond_a

    .line 23
    .line 24
    const/4 v7, 0x5

    .line 25
    if-eq v6, v11, :cond_5

    .line 26
    .line 27
    if-eq v6, v7, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    if-ne v6, v1, :cond_0

    .line 31
    .line 32
    return v3

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_1
    iget-object v3, v0, Lt2/a;->i:Landroidx/recyclerview/widget/h;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v3, v0, Lt2/a;->h:Ll2/l;

    .line 44
    .line 45
    if-eq v1, v3, :cond_3

    .line 46
    .line 47
    :cond_2
    check-cast v1, Ll2/l;

    .line 48
    .line 49
    iput-object v1, v0, Lt2/a;->h:Ll2/l;

    .line 50
    .line 51
    new-instance v3, Landroidx/recyclerview/widget/h;

    .line 52
    .line 53
    iget-wide v5, v0, Lt2/a;->f:J

    .line 54
    .line 55
    invoke-direct {v3, v1, v5, v6}, Landroidx/recyclerview/widget/h;-><init>(Ll2/l;J)V

    .line 56
    .line 57
    .line 58
    iput-object v3, v0, Lt2/a;->i:Landroidx/recyclerview/widget/h;

    .line 59
    .line 60
    :cond_3
    iget-object v1, v0, Lt2/a;->j:Lf3/n;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v3, v0, Lt2/a;->i:Landroidx/recyclerview/widget/h;

    .line 66
    .line 67
    invoke-virtual {v1, v3, v2}, Lf3/n;->d(Ll2/p;Ldd/c;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v1, v4, :cond_4

    .line 72
    .line 73
    iget-wide v3, v2, Ldd/c;->b:J

    .line 74
    .line 75
    iget-wide v5, v0, Lt2/a;->f:J

    .line 76
    .line 77
    add-long/2addr v3, v5

    .line 78
    iput-wide v3, v2, Ldd/c;->b:J

    .line 79
    .line 80
    :cond_4
    return v1

    .line 81
    :cond_5
    move-object v3, v1

    .line 82
    check-cast v3, Ll2/l;

    .line 83
    .line 84
    iget-wide v8, v3, Ll2/l;->d:J

    .line 85
    .line 86
    iget-wide v12, v0, Lt2/a;->f:J

    .line 87
    .line 88
    cmp-long v3, v8, v12

    .line 89
    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    iput-wide v12, v2, Ldd/c;->b:J

    .line 93
    .line 94
    return v4

    .line 95
    :cond_6
    iget-object v2, v10, Lu1/q;->a:[B

    .line 96
    .line 97
    check-cast v1, Ll2/l;

    .line 98
    .line 99
    invoke-virtual {v1, v2, v5, v4, v4}, Ll2/l;->c([BIIZ)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_7

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lt2/a;->h()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    iput v5, v1, Ll2/l;->f:I

    .line 110
    .line 111
    iget-object v2, v0, Lt2/a;->j:Lf3/n;

    .line 112
    .line 113
    if-nez v2, :cond_8

    .line 114
    .line 115
    new-instance v2, Lf3/n;

    .line 116
    .line 117
    sget-object v3, Li3/h;->B0:Lha/j2;

    .line 118
    .line 119
    const/16 v6, 0x8

    .line 120
    .line 121
    invoke-direct {v2, v3, v6}, Lf3/n;-><init>(Li3/h;I)V

    .line 122
    .line 123
    .line 124
    iput-object v2, v0, Lt2/a;->j:Lf3/n;

    .line 125
    .line 126
    :cond_8
    new-instance v2, Landroidx/recyclerview/widget/h;

    .line 127
    .line 128
    iget-wide v8, v0, Lt2/a;->f:J

    .line 129
    .line 130
    invoke-direct {v2, v1, v8, v9}, Landroidx/recyclerview/widget/h;-><init>(Ll2/l;J)V

    .line 131
    .line 132
    .line 133
    iput-object v2, v0, Lt2/a;->i:Landroidx/recyclerview/widget/h;

    .line 134
    .line 135
    iget-object v1, v0, Lt2/a;->j:Lf3/n;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lf3/n;->g(Ll2/p;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    iget-object v1, v0, Lt2/a;->j:Lf3/n;

    .line 144
    .line 145
    new-instance v2, Landroidx/recyclerview/widget/h;

    .line 146
    .line 147
    iget-wide v8, v0, Lt2/a;->f:J

    .line 148
    .line 149
    iget-object v3, v0, Lt2/a;->b:Lf2/u0;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const/4 v6, 0x3

    .line 155
    invoke-direct {v2, v6, v8, v9, v3}, Landroidx/recyclerview/widget/h;-><init>(IJLjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lf3/n;->c(Ll2/q;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lt2/a;->g:Lu2/b;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Lt2/a;->b:Lf2/u0;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    const/16 v3, 0x400

    .line 172
    .line 173
    invoke-virtual {v2, v3, v11}, Lf2/u0;->z(II)Ll2/j0;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-instance v3, Lr1/o;

    .line 178
    .line 179
    invoke-direct {v3}, Lr1/o;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v6, "image/jpeg"

    .line 183
    .line 184
    invoke-static {v6}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iput-object v6, v3, Lr1/o;->m:Ljava/lang/String;

    .line 189
    .line 190
    new-instance v6, Lr1/d0;

    .line 191
    .line 192
    new-array v4, v4, [Lr1/c0;

    .line 193
    .line 194
    aput-object v1, v4, v5

    .line 195
    .line 196
    invoke-direct {v6, v4}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 197
    .line 198
    .line 199
    iput-object v6, v3, Lr1/o;->k:Lr1/d0;

    .line 200
    .line 201
    new-instance v1, Lr1/p;

    .line 202
    .line 203
    invoke-direct {v1, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v2, v1}, Ll2/j0;->g(Lr1/p;)V

    .line 207
    .line 208
    .line 209
    iput v7, v0, Lt2/a;->c:I

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lt2/a;->h()V

    .line 213
    .line 214
    .line 215
    :goto_0
    return v5

    .line 216
    :cond_a
    iget v2, v0, Lt2/a;->d:I

    .line 217
    .line 218
    const v6, 0xffe1

    .line 219
    .line 220
    .line 221
    if-ne v2, v6, :cond_17

    .line 222
    .line 223
    new-instance v2, Lu1/q;

    .line 224
    .line 225
    iget v6, v0, Lt2/a;->e:I

    .line 226
    .line 227
    invoke-direct {v2, v6}, Lu1/q;-><init>(I)V

    .line 228
    .line 229
    .line 230
    iget-object v6, v2, Lu1/q;->a:[B

    .line 231
    .line 232
    iget v10, v0, Lt2/a;->e:I

    .line 233
    .line 234
    move-object v11, v1

    .line 235
    check-cast v11, Ll2/l;

    .line 236
    .line 237
    invoke-virtual {v11, v6, v5, v10, v5}, Ll2/l;->b([BIIZ)Z

    .line 238
    .line 239
    .line 240
    iget-object v6, v0, Lt2/a;->g:Lu2/b;

    .line 241
    .line 242
    if-nez v6, :cond_16

    .line 243
    .line 244
    const-string v6, "http://ns.adobe.com/xap/1.0/"

    .line 245
    .line 246
    invoke-virtual {v2}, Lu1/q;->w()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_16

    .line 255
    .line 256
    invoke-virtual {v2}, Lu1/q;->w()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-eqz v2, :cond_16

    .line 261
    .line 262
    check-cast v1, Ll2/l;

    .line 263
    .line 264
    iget-wide v10, v1, Ll2/l;->c:J

    .line 265
    .line 266
    cmp-long v6, v10, v8

    .line 267
    .line 268
    if-nez v6, :cond_c

    .line 269
    .line 270
    :cond_b
    :goto_1
    const/4 v1, 0x0

    .line 271
    goto/16 :goto_8

    .line 272
    .line 273
    :cond_c
    :try_start_0
    invoke-static {v2}, Lt2/c;->a(Ljava/lang/String;)Landroidx/recyclerview/widget/h;

    .line 274
    .line 275
    .line 276
    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lr1/f0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_2

    .line 278
    :catch_0
    const-string v2, "Ignoring unexpected XMP metadata"

    .line 279
    .line 280
    invoke-static {v2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    :goto_2
    if-nez v2, :cond_d

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_d
    iget-object v6, v2, Landroidx/recyclerview/widget/h;->c:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v6, Lu7/y0;

    .line 290
    .line 291
    iget v12, v6, Lu7/y0;->d:I

    .line 292
    .line 293
    if-ge v12, v7, :cond_e

    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_e
    sub-int/2addr v12, v4

    .line 297
    move-wide v14, v8

    .line 298
    move-wide/from16 v16, v14

    .line 299
    .line 300
    move-wide/from16 v20, v16

    .line 301
    .line 302
    move-wide/from16 v22, v20

    .line 303
    .line 304
    :goto_3
    if-ltz v12, :cond_14

    .line 305
    .line 306
    invoke-virtual {v6, v12}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    check-cast v7, Lt2/b;

    .line 311
    .line 312
    iget-object v13, v7, Lt2/b;->a:Ljava/lang/String;

    .line 313
    .line 314
    const-string v1, "video/mp4"

    .line 315
    .line 316
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_10

    .line 321
    .line 322
    const-string v1, "video/quicktime"

    .line 323
    .line 324
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_f

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_f
    const/4 v1, 0x0

    .line 332
    goto :goto_5

    .line 333
    :cond_10
    :goto_4
    const/4 v1, 0x1

    .line 334
    :goto_5
    if-nez v12, :cond_11

    .line 335
    .line 336
    iget-wide v4, v7, Lt2/b;->c:J

    .line 337
    .line 338
    sub-long/2addr v10, v4

    .line 339
    const-wide/16 v4, 0x0

    .line 340
    .line 341
    :goto_6
    move-wide/from16 v24, v4

    .line 342
    .line 343
    move-wide v4, v10

    .line 344
    move-wide/from16 v10, v24

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_11
    iget-wide v4, v7, Lt2/b;->b:J

    .line 348
    .line 349
    sub-long v4, v10, v4

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :goto_7
    if-eqz v1, :cond_12

    .line 353
    .line 354
    cmp-long v1, v10, v4

    .line 355
    .line 356
    if-eqz v1, :cond_12

    .line 357
    .line 358
    sub-long v22, v4, v10

    .line 359
    .line 360
    move-wide/from16 v20, v10

    .line 361
    .line 362
    :cond_12
    if-nez v12, :cond_13

    .line 363
    .line 364
    move-wide/from16 v16, v4

    .line 365
    .line 366
    move-wide v14, v10

    .line 367
    :cond_13
    add-int/2addr v12, v3

    .line 368
    const/4 v4, 0x1

    .line 369
    const/4 v5, 0x0

    .line 370
    goto :goto_3

    .line 371
    :cond_14
    cmp-long v1, v20, v8

    .line 372
    .line 373
    if-eqz v1, :cond_b

    .line 374
    .line 375
    cmp-long v1, v22, v8

    .line 376
    .line 377
    if-eqz v1, :cond_b

    .line 378
    .line 379
    cmp-long v1, v14, v8

    .line 380
    .line 381
    if-eqz v1, :cond_b

    .line 382
    .line 383
    cmp-long v1, v16, v8

    .line 384
    .line 385
    if-nez v1, :cond_15

    .line 386
    .line 387
    goto :goto_1

    .line 388
    :cond_15
    new-instance v1, Lu2/b;

    .line 389
    .line 390
    iget-wide v2, v2, Landroidx/recyclerview/widget/h;->b:J

    .line 391
    .line 392
    move-object v13, v1

    .line 393
    move-wide/from16 v18, v2

    .line 394
    .line 395
    invoke-direct/range {v13 .. v23}, Lu2/b;-><init>(JJJJJ)V

    .line 396
    .line 397
    .line 398
    :goto_8
    iput-object v1, v0, Lt2/a;->g:Lu2/b;

    .line 399
    .line 400
    if-eqz v1, :cond_16

    .line 401
    .line 402
    iget-wide v1, v1, Lu2/b;->d:J

    .line 403
    .line 404
    iput-wide v1, v0, Lt2/a;->f:J

    .line 405
    .line 406
    :cond_16
    const/4 v3, 0x0

    .line 407
    goto :goto_9

    .line 408
    :cond_17
    iget v2, v0, Lt2/a;->e:I

    .line 409
    .line 410
    check-cast v1, Ll2/l;

    .line 411
    .line 412
    const/4 v3, 0x0

    .line 413
    invoke-virtual {v1, v2, v3}, Ll2/l;->o(IZ)Z

    .line 414
    .line 415
    .line 416
    :goto_9
    iput v3, v0, Lt2/a;->c:I

    .line 417
    .line 418
    return v3

    .line 419
    :cond_18
    const/4 v3, 0x0

    .line 420
    check-cast v1, Ll2/l;

    .line 421
    .line 422
    invoke-virtual {v10, v7}, Lu1/q;->L(I)V

    .line 423
    .line 424
    .line 425
    iget-object v2, v10, Lu1/q;->a:[B

    .line 426
    .line 427
    invoke-virtual {v1, v2, v3, v7, v3}, Ll2/l;->c([BIIZ)Z

    .line 428
    .line 429
    .line 430
    invoke-virtual {v10}, Lu1/q;->I()I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    sub-int/2addr v2, v7

    .line 435
    iput v2, v0, Lt2/a;->e:I

    .line 436
    .line 437
    invoke-virtual {v1, v7, v3}, Ll2/l;->o(IZ)Z

    .line 438
    .line 439
    .line 440
    iput v7, v0, Lt2/a;->c:I

    .line 441
    .line 442
    return v3

    .line 443
    :cond_19
    const/4 v3, 0x0

    .line 444
    invoke-virtual {v10, v7}, Lu1/q;->L(I)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v10, Lu1/q;->a:[B

    .line 448
    .line 449
    check-cast v1, Ll2/l;

    .line 450
    .line 451
    invoke-virtual {v1, v2, v3, v7, v3}, Ll2/l;->b([BIIZ)Z

    .line 452
    .line 453
    .line 454
    invoke-virtual {v10}, Lu1/q;->I()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    iput v1, v0, Lt2/a;->d:I

    .line 459
    .line 460
    const v2, 0xffda

    .line 461
    .line 462
    .line 463
    if-ne v1, v2, :cond_1c

    .line 464
    .line 465
    iget-wide v1, v0, Lt2/a;->f:J

    .line 466
    .line 467
    cmp-long v3, v1, v8

    .line 468
    .line 469
    if-eqz v3, :cond_1b

    .line 470
    .line 471
    iput v11, v0, Lt2/a;->c:I

    .line 472
    .line 473
    :cond_1a
    :goto_a
    const/4 v1, 0x0

    .line 474
    goto :goto_b

    .line 475
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lt2/a;->h()V

    .line 476
    .line 477
    .line 478
    goto :goto_a

    .line 479
    :cond_1c
    const v2, 0xffd0

    .line 480
    .line 481
    .line 482
    if-lt v1, v2, :cond_1d

    .line 483
    .line 484
    const v2, 0xffd9

    .line 485
    .line 486
    .line 487
    if-le v1, v2, :cond_1a

    .line 488
    .line 489
    :cond_1d
    const v2, 0xff01

    .line 490
    .line 491
    .line 492
    if-eq v1, v2, :cond_1a

    .line 493
    .line 494
    const/4 v1, 0x1

    .line 495
    iput v1, v0, Lt2/a;->c:I

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :goto_b
    return v1
.end method

.method public final e(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lt2/a;->c:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lt2/a;->j:Lf3/n;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lt2/a;->c:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lt2/a;->j:Lf3/n;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lf3/n;->e(JJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
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
    .locals 8

    .line 1
    check-cast p1, Ll2/l;

    .line 2
    .line 3
    iget-object v0, p0, Lt2/a;->a:Lu1/q;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lu1/q;->L(I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lu1/q;->a:[B

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p1, v2, v3, v1, v3}, Ll2/l;->c([BIIZ)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const v4, 0xffd8

    .line 20
    .line 21
    .line 22
    if-eq v2, v4, :cond_0

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lu1/q;->L(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lu1/q;->a:[B

    .line 29
    .line 30
    invoke-virtual {p1, v2, v3, v1, v3}, Ll2/l;->c([BIIZ)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput v2, p0, Lt2/a;->d:I

    .line 38
    .line 39
    const v4, 0xffda

    .line 40
    .line 41
    .line 42
    if-ne v2, v4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v0, v1}, Lu1/q;->L(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lu1/q;->a:[B

    .line 49
    .line 50
    invoke-virtual {p1, v2, v3, v1, v3}, Ll2/l;->c([BIIZ)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sub-int/2addr v2, v1

    .line 58
    if-gez v2, :cond_2

    .line 59
    .line 60
    :goto_1
    return v3

    .line 61
    :cond_2
    iget v4, p0, Lt2/a;->d:I

    .line 62
    .line 63
    const v5, 0xffe1

    .line 64
    .line 65
    .line 66
    if-eq v4, v5, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1, v2, v3}, Ll2/l;->k(IZ)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v0, v2}, Lu1/q;->L(I)V

    .line 73
    .line 74
    .line 75
    iget-object v4, v0, Lu1/q;->a:[B

    .line 76
    .line 77
    invoke-virtual {p1, v4, v3, v2, v3}, Ll2/l;->c([BIIZ)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lu1/q;->w()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 85
    .line 86
    invoke-static {v2, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {v0}, Lu1/q;->w()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    sget-object v4, Lt2/c;->a:[Ljava/lang/String;

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    :goto_2
    const/4 v6, 0x4

    .line 104
    if-ge v5, v6, :cond_0

    .line 105
    .line 106
    aget-object v6, v4, v5

    .line 107
    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v6, "=\"1\""

    .line 117
    .line 118
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    return p1

    .line 133
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    goto :goto_2
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt2/a;->b:Lf2/u0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lf2/u0;->q()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lt2/a;->b:Lf2/u0;

    .line 10
    .line 11
    new-instance v1, Ll2/s;

    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Ll2/s;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lf2/u0;->s(Ll2/c0;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    iput v0, p0, Lt2/a;->c:I

    .line 26
    .line 27
    return-void
.end method
