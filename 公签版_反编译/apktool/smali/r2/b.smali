.class public final Lr2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final a:Lu1/q;

.field public final b:Lu1/q;

.field public final c:Lu1/q;

.field public final d:Lu1/q;

.field public final e:Lr2/c;

.field public f:Lf2/u0;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Lr2/a;

.field public p:Lr2/e;


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
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lr2/b;->a:Lu1/q;

    .line 11
    .line 12
    new-instance v0, Lu1/q;

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lr2/b;->b:Lu1/q;

    .line 20
    .line 21
    new-instance v0, Lu1/q;

    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lr2/b;->c:Lu1/q;

    .line 29
    .line 30
    new-instance v0, Lu1/q;

    .line 31
    .line 32
    invoke-direct {v0}, Lu1/q;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lr2/b;->d:Lu1/q;

    .line 36
    .line 37
    new-instance v0, Lr2/c;

    .line 38
    .line 39
    invoke-direct {v0}, Lr2/c;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lr2/b;->e:Lr2/c;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lr2/b;->g:I

    .line 46
    .line 47
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
    .locals 0

    .line 1
    check-cast p1, Lf2/u0;

    .line 2
    .line 3
    iput-object p1, p0, Lr2/b;->f:Lf2/u0;

    .line 4
    .line 5
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lr2/b;->f:Lf2/u0;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    iget v1, v0, Lr2/b;->g:I

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, -0x1

    .line 13
    const/16 v6, 0x9

    .line 14
    .line 15
    const/16 v7, 0x8

    .line 16
    .line 17
    const/4 v8, 0x2

    .line 18
    if-eq v1, v4, :cond_27

    .line 19
    .line 20
    const/4 v9, 0x3

    .line 21
    if-eq v1, v8, :cond_26

    .line 22
    .line 23
    if-eq v1, v9, :cond_24

    .line 24
    .line 25
    if-ne v1, v2, :cond_23

    .line 26
    .line 27
    iget-boolean v1, v0, Lr2/b;->h:Z

    .line 28
    .line 29
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    iget-object v5, v0, Lr2/b;->e:Lr2/c;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-wide v13, v0, Lr2/b;->i:J

    .line 39
    .line 40
    iget-wide v11, v0, Lr2/b;->m:J

    .line 41
    .line 42
    add-long/2addr v13, v11

    .line 43
    :goto_1
    move-wide/from16 v17, v13

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    iget-wide v11, v5, Lr2/c;->b:J

    .line 47
    .line 48
    cmp-long v1, v11, v9

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    const-wide/16 v17, 0x0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iget-wide v13, v0, Lr2/b;->m:J

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_2
    iget v1, v0, Lr2/b;->k:I

    .line 59
    .line 60
    if-ne v1, v7, :cond_d

    .line 61
    .line 62
    iget-object v7, v0, Lr2/b;->o:Lr2/a;

    .line 63
    .line 64
    if-eqz v7, :cond_d

    .line 65
    .line 66
    iget-boolean v1, v0, Lr2/b;->n:Z

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    iget-object v1, v0, Lr2/b;->f:Lf2/u0;

    .line 71
    .line 72
    new-instance v6, Ll2/s;

    .line 73
    .line 74
    invoke-direct {v6, v9, v10}, Ll2/s;-><init>(J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v6}, Lf2/u0;->s(Ll2/c0;)V

    .line 78
    .line 79
    .line 80
    iput-boolean v4, v0, Lr2/b;->n:Z

    .line 81
    .line 82
    :cond_3
    iget-object v1, v0, Lr2/b;->o:Lr2/a;

    .line 83
    .line 84
    move-object/from16 v6, p1

    .line 85
    .line 86
    check-cast v6, Ll2/l;

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Lr2/b;->h(Ll2/l;)Lu1/q;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iget-boolean v7, v1, Lr2/a;->b:Z

    .line 93
    .line 94
    const/4 v11, 0x1

    .line 95
    if-nez v7, :cond_9

    .line 96
    .line 97
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    shr-int/lit8 v12, v7, 0x4

    .line 102
    .line 103
    and-int/lit8 v12, v12, 0xf

    .line 104
    .line 105
    iput v12, v1, Lr2/a;->d:I

    .line 106
    .line 107
    iget-object v13, v1, La/b;->a:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v13, Ll2/j0;

    .line 110
    .line 111
    const-string v14, "video/x-flv"

    .line 112
    .line 113
    const/4 v15, 0x2

    .line 114
    if-ne v12, v15, :cond_4

    .line 115
    .line 116
    shr-int/2addr v7, v15

    .line 117
    and-int/lit8 v7, v7, 0x3

    .line 118
    .line 119
    sget-object v12, Lr2/a;->e:[I

    .line 120
    .line 121
    aget v7, v12, v7

    .line 122
    .line 123
    new-instance v12, Lr1/o;

    .line 124
    .line 125
    invoke-direct {v12}, Lr1/o;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-static {v14}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    iput-object v14, v12, Lr1/o;->m:Ljava/lang/String;

    .line 133
    .line 134
    const-string v14, "audio/mpeg"

    .line 135
    .line 136
    invoke-static {v14}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    iput-object v14, v12, Lr1/o;->n:Ljava/lang/String;

    .line 141
    .line 142
    iput v11, v12, Lr1/o;->F:I

    .line 143
    .line 144
    iput v7, v12, Lr1/o;->G:I

    .line 145
    .line 146
    new-instance v7, Lr1/p;

    .line 147
    .line 148
    invoke-direct {v7, v12}, Lr1/p;-><init>(Lr1/o;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v13, v7}, Ll2/j0;->g(Lr1/p;)V

    .line 152
    .line 153
    .line 154
    iput-boolean v11, v1, Lr2/a;->c:Z

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_4
    const/4 v7, 0x7

    .line 158
    if-eq v12, v7, :cond_7

    .line 159
    .line 160
    const/16 v15, 0x8

    .line 161
    .line 162
    if-ne v12, v15, :cond_5

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    const/16 v7, 0xa

    .line 166
    .line 167
    if-ne v12, v7, :cond_6

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_6
    new-instance v2, Lr2/d;

    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v4, "Audio format not supported: "

    .line 175
    .line 176
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget v1, v1, Lr2/a;->d:I

    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {v2, v1}, Lr2/d;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v2

    .line 192
    :cond_7
    :goto_3
    if-ne v12, v7, :cond_8

    .line 193
    .line 194
    const-string v7, "audio/g711-alaw"

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    const-string v7, "audio/g711-mlaw"

    .line 198
    .line 199
    :goto_4
    new-instance v12, Lr1/o;

    .line 200
    .line 201
    invoke-direct {v12}, Lr1/o;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-static {v14}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    iput-object v14, v12, Lr1/o;->m:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    iput-object v7, v12, Lr1/o;->n:Ljava/lang/String;

    .line 215
    .line 216
    iput v11, v12, Lr1/o;->F:I

    .line 217
    .line 218
    const/16 v7, 0x1f40

    .line 219
    .line 220
    iput v7, v12, Lr1/o;->G:I

    .line 221
    .line 222
    new-instance v7, Lr1/p;

    .line 223
    .line 224
    invoke-direct {v7, v12}, Lr1/p;-><init>(Lr1/o;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v13, v7}, Ll2/j0;->g(Lr1/p;)V

    .line 228
    .line 229
    .line 230
    iput-boolean v11, v1, Lr2/a;->c:Z

    .line 231
    .line 232
    :goto_5
    iput-boolean v11, v1, Lr2/a;->b:Z

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_9
    invoke-virtual {v6, v11}, Lu1/q;->P(I)V

    .line 236
    .line 237
    .line 238
    :goto_6
    iget v7, v1, Lr2/a;->d:I

    .line 239
    .line 240
    const/4 v11, 0x2

    .line 241
    iget-object v12, v1, La/b;->a:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v12, Ll2/j0;

    .line 244
    .line 245
    const/4 v13, 0x1

    .line 246
    if-ne v7, v11, :cond_a

    .line 247
    .line 248
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    invoke-interface {v12, v7, v6}, Ll2/j0;->a(ILu1/q;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v1, La/b;->a:Ljava/lang/Object;

    .line 256
    .line 257
    move-object/from16 v16, v1

    .line 258
    .line 259
    check-cast v16, Ll2/j0;

    .line 260
    .line 261
    const/16 v19, 0x1

    .line 262
    .line 263
    const/16 v21, 0x0

    .line 264
    .line 265
    const/16 v22, 0x0

    .line 266
    .line 267
    move/from16 v20, v7

    .line 268
    .line 269
    invoke-interface/range {v16 .. v22}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_f

    .line 273
    .line 274
    :cond_a
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    const/4 v11, 0x0

    .line 279
    if-nez v7, :cond_b

    .line 280
    .line 281
    iget-boolean v14, v1, Lr2/a;->c:Z

    .line 282
    .line 283
    if-nez v14, :cond_b

    .line 284
    .line 285
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    new-array v14, v7, [B

    .line 290
    .line 291
    invoke-virtual {v6, v11, v7, v14}, Lu1/q;->l(II[B)V

    .line 292
    .line 293
    .line 294
    new-instance v6, Lj3/f;

    .line 295
    .line 296
    invoke-direct {v6, v14, v7}, Lj3/f;-><init>([BI)V

    .line 297
    .line 298
    .line 299
    invoke-static {v6, v11}, Ll2/b;->o(Lj3/f;Z)Ll2/a;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    new-instance v7, Lr1/o;

    .line 304
    .line 305
    invoke-direct {v7}, Lr1/o;-><init>()V

    .line 306
    .line 307
    .line 308
    const-string v15, "video/x-flv"

    .line 309
    .line 310
    invoke-static {v15}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    iput-object v15, v7, Lr1/o;->m:Ljava/lang/String;

    .line 315
    .line 316
    const-string v15, "audio/mp4a-latm"

    .line 317
    .line 318
    invoke-static {v15}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    iput-object v15, v7, Lr1/o;->n:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v15, v6, Ll2/a;->a:Ljava/lang/String;

    .line 325
    .line 326
    iput-object v15, v7, Lr1/o;->j:Ljava/lang/String;

    .line 327
    .line 328
    iget v15, v6, Ll2/a;->c:I

    .line 329
    .line 330
    iput v15, v7, Lr1/o;->F:I

    .line 331
    .line 332
    iget v6, v6, Ll2/a;->b:I

    .line 333
    .line 334
    iput v6, v7, Lr1/o;->G:I

    .line 335
    .line 336
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    iput-object v6, v7, Lr1/o;->q:Ljava/util/List;

    .line 341
    .line 342
    new-instance v6, Lr1/p;

    .line 343
    .line 344
    invoke-direct {v6, v7}, Lr1/p;-><init>(Lr1/o;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v12, v6}, Ll2/j0;->g(Lr1/p;)V

    .line 348
    .line 349
    .line 350
    iput-boolean v13, v1, Lr2/a;->c:Z

    .line 351
    .line 352
    goto/16 :goto_e

    .line 353
    .line 354
    :cond_b
    iget v14, v1, Lr2/a;->d:I

    .line 355
    .line 356
    const/16 v15, 0xa

    .line 357
    .line 358
    if-ne v14, v15, :cond_c

    .line 359
    .line 360
    if-ne v7, v13, :cond_1f

    .line 361
    .line 362
    :cond_c
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    invoke-interface {v12, v7, v6}, Ll2/j0;->a(ILu1/q;)V

    .line 367
    .line 368
    .line 369
    iget-object v1, v1, La/b;->a:Ljava/lang/Object;

    .line 370
    .line 371
    move-object/from16 v16, v1

    .line 372
    .line 373
    check-cast v16, Ll2/j0;

    .line 374
    .line 375
    const/16 v19, 0x1

    .line 376
    .line 377
    const/16 v21, 0x0

    .line 378
    .line 379
    const/16 v22, 0x0

    .line 380
    .line 381
    move/from16 v20, v7

    .line 382
    .line 383
    invoke-interface/range {v16 .. v22}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_f

    .line 387
    .line 388
    :cond_d
    if-ne v1, v6, :cond_16

    .line 389
    .line 390
    iget-object v6, v0, Lr2/b;->p:Lr2/e;

    .line 391
    .line 392
    if-eqz v6, :cond_16

    .line 393
    .line 394
    iget-boolean v1, v0, Lr2/b;->n:Z

    .line 395
    .line 396
    if-nez v1, :cond_e

    .line 397
    .line 398
    iget-object v1, v0, Lr2/b;->f:Lf2/u0;

    .line 399
    .line 400
    new-instance v6, Ll2/s;

    .line 401
    .line 402
    invoke-direct {v6, v9, v10}, Ll2/s;-><init>(J)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v6}, Lf2/u0;->s(Ll2/c0;)V

    .line 406
    .line 407
    .line 408
    iput-boolean v4, v0, Lr2/b;->n:Z

    .line 409
    .line 410
    :cond_e
    iget-object v1, v0, Lr2/b;->p:Lr2/e;

    .line 411
    .line 412
    move-object/from16 v6, p1

    .line 413
    .line 414
    check-cast v6, Ll2/l;

    .line 415
    .line 416
    invoke-virtual {v0, v6}, Lr2/b;->h(Ll2/l;)Lu1/q;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    shr-int/lit8 v11, v7, 0x4

    .line 428
    .line 429
    and-int/lit8 v11, v11, 0xf

    .line 430
    .line 431
    and-int/lit8 v7, v7, 0xf

    .line 432
    .line 433
    const/4 v12, 0x7

    .line 434
    if-ne v7, v12, :cond_15

    .line 435
    .line 436
    iput v11, v1, Lr2/e;->g:I

    .line 437
    .line 438
    const/4 v7, 0x5

    .line 439
    if-eq v11, v7, :cond_f

    .line 440
    .line 441
    const/4 v7, 0x1

    .line 442
    goto :goto_7

    .line 443
    :cond_f
    const/4 v7, 0x0

    .line 444
    :goto_7
    if-eqz v7, :cond_1f

    .line 445
    .line 446
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 447
    .line 448
    .line 449
    move-result v7

    .line 450
    const/4 v11, 0x3

    .line 451
    invoke-virtual {v6, v11}, Lu1/q;->g(I)V

    .line 452
    .line 453
    .line 454
    iget-object v12, v6, Lu1/q;->a:[B

    .line 455
    .line 456
    iget v13, v6, Lu1/q;->b:I

    .line 457
    .line 458
    add-int/lit8 v14, v13, 0x1

    .line 459
    .line 460
    iput v14, v6, Lu1/q;->b:I

    .line 461
    .line 462
    aget-byte v15, v12, v13

    .line 463
    .line 464
    and-int/lit16 v15, v15, 0xff

    .line 465
    .line 466
    shl-int/lit8 v15, v15, 0x18

    .line 467
    .line 468
    shr-int/lit8 v15, v15, 0x8

    .line 469
    .line 470
    add-int/lit8 v8, v13, 0x2

    .line 471
    .line 472
    iput v8, v6, Lu1/q;->b:I

    .line 473
    .line 474
    aget-byte v14, v12, v14

    .line 475
    .line 476
    and-int/lit16 v14, v14, 0xff

    .line 477
    .line 478
    shl-int/lit8 v14, v14, 0x8

    .line 479
    .line 480
    or-int/2addr v14, v15

    .line 481
    add-int/2addr v13, v11

    .line 482
    iput v13, v6, Lu1/q;->b:I

    .line 483
    .line 484
    aget-byte v8, v12, v8

    .line 485
    .line 486
    and-int/lit16 v8, v8, 0xff

    .line 487
    .line 488
    or-int/2addr v8, v14

    .line 489
    int-to-long v11, v8

    .line 490
    const-wide/16 v13, 0x3e8

    .line 491
    .line 492
    mul-long v11, v11, v13

    .line 493
    .line 494
    add-long v24, v11, v17

    .line 495
    .line 496
    const/4 v8, 0x1

    .line 497
    iget-object v11, v1, La/b;->a:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v11, Ll2/j0;

    .line 500
    .line 501
    const/4 v12, 0x0

    .line 502
    if-nez v7, :cond_11

    .line 503
    .line 504
    iget-boolean v13, v1, Lr2/e;->e:Z

    .line 505
    .line 506
    if-nez v13, :cond_11

    .line 507
    .line 508
    new-instance v7, Lu1/q;

    .line 509
    .line 510
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 511
    .line 512
    .line 513
    move-result v13

    .line 514
    new-array v13, v13, [B

    .line 515
    .line 516
    invoke-direct {v7, v13}, Lu1/q;-><init>([B)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 520
    .line 521
    .line 522
    move-result v14

    .line 523
    invoke-virtual {v6, v12, v14, v13}, Lu1/q;->l(II[B)V

    .line 524
    .line 525
    .line 526
    invoke-static {v7}, Ll2/d;->a(Lu1/q;)Ll2/d;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    iget v7, v6, Ll2/d;->b:I

    .line 531
    .line 532
    iput v7, v1, Lr2/e;->d:I

    .line 533
    .line 534
    new-instance v7, Lr1/o;

    .line 535
    .line 536
    invoke-direct {v7}, Lr1/o;-><init>()V

    .line 537
    .line 538
    .line 539
    const-string v13, "video/x-flv"

    .line 540
    .line 541
    invoke-static {v13}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v13

    .line 545
    iput-object v13, v7, Lr1/o;->m:Ljava/lang/String;

    .line 546
    .line 547
    const-string v13, "video/avc"

    .line 548
    .line 549
    invoke-static {v13}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v13

    .line 553
    iput-object v13, v7, Lr1/o;->n:Ljava/lang/String;

    .line 554
    .line 555
    iget-object v13, v6, Ll2/d;->l:Ljava/lang/String;

    .line 556
    .line 557
    iput-object v13, v7, Lr1/o;->j:Ljava/lang/String;

    .line 558
    .line 559
    iget v13, v6, Ll2/d;->c:I

    .line 560
    .line 561
    iput v13, v7, Lr1/o;->u:I

    .line 562
    .line 563
    iget v13, v6, Ll2/d;->d:I

    .line 564
    .line 565
    iput v13, v7, Lr1/o;->v:I

    .line 566
    .line 567
    iget v13, v6, Ll2/d;->k:F

    .line 568
    .line 569
    iput v13, v7, Lr1/o;->A:F

    .line 570
    .line 571
    iget-object v6, v6, Ll2/d;->a:Ljava/util/ArrayList;

    .line 572
    .line 573
    iput-object v6, v7, Lr1/o;->q:Ljava/util/List;

    .line 574
    .line 575
    new-instance v6, Lr1/p;

    .line 576
    .line 577
    invoke-direct {v6, v7}, Lr1/p;-><init>(Lr1/o;)V

    .line 578
    .line 579
    .line 580
    invoke-interface {v11, v6}, Ll2/j0;->g(Lr1/p;)V

    .line 581
    .line 582
    .line 583
    iput-boolean v8, v1, Lr2/e;->e:Z

    .line 584
    .line 585
    :cond_10
    :goto_8
    const/4 v8, 0x0

    .line 586
    goto :goto_b

    .line 587
    :cond_11
    if-ne v7, v8, :cond_10

    .line 588
    .line 589
    iget-boolean v7, v1, Lr2/e;->e:Z

    .line 590
    .line 591
    if-eqz v7, :cond_10

    .line 592
    .line 593
    iget v7, v1, Lr2/e;->g:I

    .line 594
    .line 595
    if-ne v7, v8, :cond_12

    .line 596
    .line 597
    const/16 v26, 0x1

    .line 598
    .line 599
    goto :goto_9

    .line 600
    :cond_12
    const/16 v26, 0x0

    .line 601
    .line 602
    :goto_9
    iget-boolean v7, v1, Lr2/e;->f:Z

    .line 603
    .line 604
    if-nez v7, :cond_13

    .line 605
    .line 606
    if-nez v26, :cond_13

    .line 607
    .line 608
    goto :goto_8

    .line 609
    :cond_13
    iget-object v7, v1, Lr2/e;->c:Lu1/q;

    .line 610
    .line 611
    iget-object v13, v7, Lu1/q;->a:[B

    .line 612
    .line 613
    aput-byte v12, v13, v12

    .line 614
    .line 615
    aput-byte v12, v13, v8

    .line 616
    .line 617
    const/4 v14, 0x2

    .line 618
    aput-byte v12, v13, v14

    .line 619
    .line 620
    iget v13, v1, Lr2/e;->d:I

    .line 621
    .line 622
    const/4 v14, 0x4

    .line 623
    rsub-int/lit8 v13, v13, 0x4

    .line 624
    .line 625
    const/16 v27, 0x0

    .line 626
    .line 627
    :goto_a
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 628
    .line 629
    .line 630
    move-result v15

    .line 631
    if-lez v15, :cond_14

    .line 632
    .line 633
    iget-object v15, v7, Lu1/q;->a:[B

    .line 634
    .line 635
    iget v2, v1, Lr2/e;->d:I

    .line 636
    .line 637
    invoke-virtual {v6, v13, v2, v15}, Lu1/q;->l(II[B)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v7, v12}, Lu1/q;->O(I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v7}, Lu1/q;->F()I

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    iget-object v15, v1, Lr2/e;->b:Lu1/q;

    .line 648
    .line 649
    invoke-virtual {v15, v12}, Lu1/q;->O(I)V

    .line 650
    .line 651
    .line 652
    invoke-interface {v11, v14, v15}, Ll2/j0;->a(ILu1/q;)V

    .line 653
    .line 654
    .line 655
    add-int/lit8 v27, v27, 0x4

    .line 656
    .line 657
    invoke-interface {v11, v2, v6}, Ll2/j0;->a(ILu1/q;)V

    .line 658
    .line 659
    .line 660
    add-int v27, v27, v2

    .line 661
    .line 662
    const/4 v2, 0x4

    .line 663
    goto :goto_a

    .line 664
    :cond_14
    const/16 v29, 0x0

    .line 665
    .line 666
    iget-object v2, v1, La/b;->a:Ljava/lang/Object;

    .line 667
    .line 668
    move-object/from16 v23, v2

    .line 669
    .line 670
    check-cast v23, Ll2/j0;

    .line 671
    .line 672
    const/16 v28, 0x0

    .line 673
    .line 674
    invoke-interface/range {v23 .. v29}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 675
    .line 676
    .line 677
    iput-boolean v8, v1, Lr2/e;->f:Z

    .line 678
    .line 679
    :goto_b
    if-eqz v8, :cond_1f

    .line 680
    .line 681
    const/4 v13, 0x1

    .line 682
    goto/16 :goto_f

    .line 683
    .line 684
    :cond_15
    new-instance v1, Lr2/d;

    .line 685
    .line 686
    const-string v2, "Video format not supported: "

    .line 687
    .line 688
    invoke-static {v7, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-direct {v1, v2}, Lr2/d;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    throw v1

    .line 696
    :cond_16
    const/16 v2, 0x12

    .line 697
    .line 698
    if-ne v1, v2, :cond_20

    .line 699
    .line 700
    iget-boolean v1, v0, Lr2/b;->n:Z

    .line 701
    .line 702
    if-nez v1, :cond_20

    .line 703
    .line 704
    move-object/from16 v1, p1

    .line 705
    .line 706
    check-cast v1, Ll2/l;

    .line 707
    .line 708
    invoke-virtual {v0, v1}, Lr2/b;->h(Ll2/l;)Lu1/q;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    const/4 v6, 0x2

    .line 723
    const/4 v7, 0x0

    .line 724
    if-eq v2, v6, :cond_17

    .line 725
    .line 726
    goto/16 :goto_d

    .line 727
    .line 728
    :cond_17
    invoke-static {v1}, Lr2/c;->v(Lu1/q;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    const-string v6, "onMetaData"

    .line 733
    .line 734
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    if-nez v2, :cond_18

    .line 739
    .line 740
    goto/16 :goto_d

    .line 741
    .line 742
    :cond_18
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    if-nez v2, :cond_19

    .line 747
    .line 748
    goto/16 :goto_d

    .line 749
    .line 750
    :cond_19
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    const/16 v6, 0x8

    .line 755
    .line 756
    if-eq v2, v6, :cond_1a

    .line 757
    .line 758
    goto/16 :goto_d

    .line 759
    .line 760
    :cond_1a
    invoke-static {v1}, Lr2/c;->u(Lu1/q;)Ljava/util/HashMap;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    const-string v2, "duration"

    .line 765
    .line 766
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    instance-of v6, v2, Ljava/lang/Double;

    .line 771
    .line 772
    const-wide v11, 0x412e848000000000L    # 1000000.0

    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    if-eqz v6, :cond_1b

    .line 778
    .line 779
    check-cast v2, Ljava/lang/Double;

    .line 780
    .line 781
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 782
    .line 783
    .line 784
    move-result-wide v13

    .line 785
    const-wide/16 v16, 0x0

    .line 786
    .line 787
    cmpl-double v2, v13, v16

    .line 788
    .line 789
    if-lez v2, :cond_1b

    .line 790
    .line 791
    mul-double v13, v13, v11

    .line 792
    .line 793
    double-to-long v13, v13

    .line 794
    iput-wide v13, v5, Lr2/c;->b:J

    .line 795
    .line 796
    :cond_1b
    const-string v2, "keyframes"

    .line 797
    .line 798
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    instance-of v2, v1, Ljava/util/Map;

    .line 803
    .line 804
    if-eqz v2, :cond_1d

    .line 805
    .line 806
    check-cast v1, Ljava/util/Map;

    .line 807
    .line 808
    const-string v2, "filepositions"

    .line 809
    .line 810
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    const-string v6, "times"

    .line 815
    .line 816
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    instance-of v6, v2, Ljava/util/List;

    .line 821
    .line 822
    if-eqz v6, :cond_1d

    .line 823
    .line 824
    instance-of v6, v1, Ljava/util/List;

    .line 825
    .line 826
    if-eqz v6, :cond_1d

    .line 827
    .line 828
    check-cast v2, Ljava/util/List;

    .line 829
    .line 830
    check-cast v1, Ljava/util/List;

    .line 831
    .line 832
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 833
    .line 834
    .line 835
    move-result v6

    .line 836
    new-array v8, v6, [J

    .line 837
    .line 838
    iput-object v8, v5, Lr2/c;->c:[J

    .line 839
    .line 840
    new-array v8, v6, [J

    .line 841
    .line 842
    iput-object v8, v5, Lr2/c;->d:[J

    .line 843
    .line 844
    const/4 v8, 0x0

    .line 845
    :goto_c
    if-ge v8, v6, :cond_1d

    .line 846
    .line 847
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v13

    .line 851
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v14

    .line 855
    instance-of v15, v14, Ljava/lang/Double;

    .line 856
    .line 857
    if-eqz v15, :cond_1c

    .line 858
    .line 859
    instance-of v15, v13, Ljava/lang/Double;

    .line 860
    .line 861
    if-eqz v15, :cond_1c

    .line 862
    .line 863
    iget-object v15, v5, Lr2/c;->c:[J

    .line 864
    .line 865
    check-cast v14, Ljava/lang/Double;

    .line 866
    .line 867
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    .line 868
    .line 869
    .line 870
    move-result-wide v16

    .line 871
    mul-double v3, v16, v11

    .line 872
    .line 873
    double-to-long v3, v3

    .line 874
    aput-wide v3, v15, v8

    .line 875
    .line 876
    iget-object v3, v5, Lr2/c;->d:[J

    .line 877
    .line 878
    check-cast v13, Ljava/lang/Double;

    .line 879
    .line 880
    invoke-virtual {v13}, Ljava/lang/Double;->longValue()J

    .line 881
    .line 882
    .line 883
    move-result-wide v16

    .line 884
    aput-wide v16, v3, v8

    .line 885
    .line 886
    add-int/lit8 v8, v8, 0x1

    .line 887
    .line 888
    const/4 v4, 0x1

    .line 889
    goto :goto_c

    .line 890
    :cond_1c
    new-array v1, v7, [J

    .line 891
    .line 892
    iput-object v1, v5, Lr2/c;->c:[J

    .line 893
    .line 894
    new-array v1, v7, [J

    .line 895
    .line 896
    iput-object v1, v5, Lr2/c;->d:[J

    .line 897
    .line 898
    :cond_1d
    :goto_d
    iget-wide v1, v5, Lr2/c;->b:J

    .line 899
    .line 900
    cmp-long v3, v1, v9

    .line 901
    .line 902
    if-eqz v3, :cond_1e

    .line 903
    .line 904
    iget-object v3, v0, Lr2/b;->f:Lf2/u0;

    .line 905
    .line 906
    new-instance v4, Ll2/y;

    .line 907
    .line 908
    iget-object v6, v5, Lr2/c;->d:[J

    .line 909
    .line 910
    iget-object v7, v5, Lr2/c;->c:[J

    .line 911
    .line 912
    invoke-direct {v4, v1, v2, v6, v7}, Ll2/y;-><init>(J[J[J)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v3, v4}, Lf2/u0;->s(Ll2/c0;)V

    .line 916
    .line 917
    .line 918
    const/4 v1, 0x1

    .line 919
    iput-boolean v1, v0, Lr2/b;->n:Z

    .line 920
    .line 921
    :cond_1e
    const/4 v4, 0x1

    .line 922
    :cond_1f
    :goto_e
    const/4 v13, 0x0

    .line 923
    goto :goto_f

    .line 924
    :cond_20
    iget v1, v0, Lr2/b;->l:I

    .line 925
    .line 926
    move-object/from16 v2, p1

    .line 927
    .line 928
    check-cast v2, Ll2/l;

    .line 929
    .line 930
    const/4 v3, 0x0

    .line 931
    invoke-virtual {v2, v1, v3}, Ll2/l;->o(IZ)Z

    .line 932
    .line 933
    .line 934
    const/4 v4, 0x0

    .line 935
    goto :goto_e

    .line 936
    :goto_f
    iget-boolean v1, v0, Lr2/b;->h:Z

    .line 937
    .line 938
    if-nez v1, :cond_22

    .line 939
    .line 940
    if-eqz v13, :cond_22

    .line 941
    .line 942
    const/4 v1, 0x1

    .line 943
    iput-boolean v1, v0, Lr2/b;->h:Z

    .line 944
    .line 945
    iget-wide v1, v5, Lr2/c;->b:J

    .line 946
    .line 947
    cmp-long v3, v1, v9

    .line 948
    .line 949
    if-nez v3, :cond_21

    .line 950
    .line 951
    iget-wide v1, v0, Lr2/b;->m:J

    .line 952
    .line 953
    neg-long v11, v1

    .line 954
    goto :goto_10

    .line 955
    :cond_21
    const-wide/16 v11, 0x0

    .line 956
    .line 957
    :goto_10
    iput-wide v11, v0, Lr2/b;->i:J

    .line 958
    .line 959
    :cond_22
    const/4 v1, 0x4

    .line 960
    iput v1, v0, Lr2/b;->j:I

    .line 961
    .line 962
    const/4 v1, 0x2

    .line 963
    iput v1, v0, Lr2/b;->g:I

    .line 964
    .line 965
    if-eqz v4, :cond_0

    .line 966
    .line 967
    const/4 v1, 0x0

    .line 968
    return v1

    .line 969
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 970
    .line 971
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 972
    .line 973
    .line 974
    throw v1

    .line 975
    :cond_24
    const/4 v1, 0x0

    .line 976
    iget-object v2, v0, Lr2/b;->c:Lu1/q;

    .line 977
    .line 978
    iget-object v3, v2, Lu1/q;->a:[B

    .line 979
    .line 980
    const/16 v4, 0xb

    .line 981
    .line 982
    move-object/from16 v6, p1

    .line 983
    .line 984
    check-cast v6, Ll2/l;

    .line 985
    .line 986
    const/4 v7, 0x1

    .line 987
    invoke-virtual {v6, v3, v1, v4, v7}, Ll2/l;->b([BIIZ)Z

    .line 988
    .line 989
    .line 990
    move-result v3

    .line 991
    if-nez v3, :cond_25

    .line 992
    .line 993
    return v5

    .line 994
    :cond_25
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v2}, Lu1/q;->B()I

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    iput v1, v0, Lr2/b;->k:I

    .line 1002
    .line 1003
    invoke-virtual {v2}, Lu1/q;->E()I

    .line 1004
    .line 1005
    .line 1006
    move-result v1

    .line 1007
    iput v1, v0, Lr2/b;->l:I

    .line 1008
    .line 1009
    invoke-virtual {v2}, Lu1/q;->E()I

    .line 1010
    .line 1011
    .line 1012
    move-result v1

    .line 1013
    int-to-long v3, v1

    .line 1014
    iput-wide v3, v0, Lr2/b;->m:J

    .line 1015
    .line 1016
    invoke-virtual {v2}, Lu1/q;->B()I

    .line 1017
    .line 1018
    .line 1019
    move-result v1

    .line 1020
    shl-int/lit8 v1, v1, 0x18

    .line 1021
    .line 1022
    int-to-long v3, v1

    .line 1023
    iget-wide v5, v0, Lr2/b;->m:J

    .line 1024
    .line 1025
    or-long/2addr v3, v5

    .line 1026
    const-wide/16 v5, 0x3e8

    .line 1027
    .line 1028
    mul-long v3, v3, v5

    .line 1029
    .line 1030
    iput-wide v3, v0, Lr2/b;->m:J

    .line 1031
    .line 1032
    invoke-virtual {v2, v9}, Lu1/q;->P(I)V

    .line 1033
    .line 1034
    .line 1035
    const/4 v1, 0x4

    .line 1036
    iput v1, v0, Lr2/b;->g:I

    .line 1037
    .line 1038
    goto/16 :goto_0

    .line 1039
    .line 1040
    :cond_26
    iget v1, v0, Lr2/b;->j:I

    .line 1041
    .line 1042
    move-object/from16 v2, p1

    .line 1043
    .line 1044
    check-cast v2, Ll2/l;

    .line 1045
    .line 1046
    const/4 v3, 0x0

    .line 1047
    invoke-virtual {v2, v1, v3}, Ll2/l;->o(IZ)Z

    .line 1048
    .line 1049
    .line 1050
    iput v3, v0, Lr2/b;->j:I

    .line 1051
    .line 1052
    iput v9, v0, Lr2/b;->g:I

    .line 1053
    .line 1054
    goto/16 :goto_0

    .line 1055
    .line 1056
    :cond_27
    const/4 v3, 0x0

    .line 1057
    iget-object v1, v0, Lr2/b;->b:Lu1/q;

    .line 1058
    .line 1059
    iget-object v2, v1, Lu1/q;->a:[B

    .line 1060
    .line 1061
    move-object/from16 v4, p1

    .line 1062
    .line 1063
    check-cast v4, Ll2/l;

    .line 1064
    .line 1065
    const/4 v8, 0x1

    .line 1066
    invoke-virtual {v4, v2, v3, v6, v8}, Ll2/l;->b([BIIZ)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    if-nez v2, :cond_28

    .line 1071
    .line 1072
    return v5

    .line 1073
    :cond_28
    invoke-virtual {v1, v3}, Lu1/q;->O(I)V

    .line 1074
    .line 1075
    .line 1076
    const/4 v2, 0x4

    .line 1077
    invoke-virtual {v1, v2}, Lu1/q;->P(I)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    and-int/lit8 v4, v2, 0x4

    .line 1085
    .line 1086
    if-eqz v4, :cond_29

    .line 1087
    .line 1088
    const/4 v4, 0x1

    .line 1089
    goto :goto_11

    .line 1090
    :cond_29
    const/4 v4, 0x0

    .line 1091
    :goto_11
    and-int/lit8 v2, v2, 0x1

    .line 1092
    .line 1093
    if-eqz v2, :cond_2a

    .line 1094
    .line 1095
    const/4 v3, 0x1

    .line 1096
    :cond_2a
    if-eqz v4, :cond_2b

    .line 1097
    .line 1098
    iget-object v2, v0, Lr2/b;->o:Lr2/a;

    .line 1099
    .line 1100
    if-nez v2, :cond_2b

    .line 1101
    .line 1102
    new-instance v2, Lr2/a;

    .line 1103
    .line 1104
    iget-object v4, v0, Lr2/b;->f:Lf2/u0;

    .line 1105
    .line 1106
    const/4 v5, 0x1

    .line 1107
    invoke-virtual {v4, v7, v5}, Lf2/u0;->z(II)Ll2/j0;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v4

    .line 1111
    invoke-direct {v2, v4}, Lr2/a;-><init>(Ll2/j0;)V

    .line 1112
    .line 1113
    .line 1114
    iput-object v2, v0, Lr2/b;->o:Lr2/a;

    .line 1115
    .line 1116
    :cond_2b
    if-eqz v3, :cond_2c

    .line 1117
    .line 1118
    iget-object v2, v0, Lr2/b;->p:Lr2/e;

    .line 1119
    .line 1120
    if-nez v2, :cond_2c

    .line 1121
    .line 1122
    new-instance v2, Lr2/e;

    .line 1123
    .line 1124
    iget-object v3, v0, Lr2/b;->f:Lf2/u0;

    .line 1125
    .line 1126
    const/4 v4, 0x2

    .line 1127
    invoke-virtual {v3, v6, v4}, Lf2/u0;->z(II)Ll2/j0;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    invoke-direct {v2, v3}, Lr2/e;-><init>(Ll2/j0;)V

    .line 1132
    .line 1133
    .line 1134
    iput-object v2, v0, Lr2/b;->p:Lr2/e;

    .line 1135
    .line 1136
    :cond_2c
    iget-object v2, v0, Lr2/b;->f:Lf2/u0;

    .line 1137
    .line 1138
    invoke-virtual {v2}, Lf2/u0;->q()V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 1142
    .line 1143
    .line 1144
    move-result v1

    .line 1145
    add-int/lit8 v1, v1, -0x5

    .line 1146
    .line 1147
    iput v1, v0, Lr2/b;->j:I

    .line 1148
    .line 1149
    const/4 v1, 0x2

    .line 1150
    iput v1, v0, Lr2/b;->g:I

    .line 1151
    .line 1152
    goto/16 :goto_0
.end method

.method public final e(JJ)V
    .locals 2

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmp-long v1, p1, p3

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lr2/b;->g:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lr2/b;->h:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x3

    .line 15
    iput p1, p0, Lr2/b;->g:I

    .line 16
    .line 17
    :goto_0
    iput v0, p0, Lr2/b;->j:I

    .line 18
    .line 19
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
    .locals 4

    .line 1
    iget-object v0, p0, Lr2/b;->a:Lu1/q;

    .line 2
    .line 3
    iget-object v1, v0, Lu1/q;->a:[B

    .line 4
    .line 5
    check-cast p1, Ll2/l;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    invoke-virtual {p1, v1, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lu1/q;->E()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v3, 0x464c56

    .line 20
    .line 21
    .line 22
    if-eq v1, v3, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    iget-object v1, v0, Lu1/q;->a:[B

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-virtual {p1, v1, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    and-int/lit16 v1, v1, 0xfa

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    iget-object v1, v0, Lu1/q;->a:[B

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    invoke-virtual {p1, v1, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v2, p1, Ll2/l;->f:I

    .line 57
    .line 58
    invoke-virtual {p1, v1, v2}, Ll2/l;->k(IZ)Z

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lu1/q;->a:[B

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    :cond_2
    return v2
.end method

.method public final h(Ll2/l;)Lu1/q;
    .locals 5

    .line 1
    iget v0, p0, Lr2/b;->l:I

    .line 2
    .line 3
    iget-object v1, p0, Lr2/b;->d:Lu1/q;

    .line 4
    .line 5
    iget-object v2, v1, Lu1/q;->a:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    if-le v0, v3, :cond_0

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    mul-int/lit8 v2, v2, 0x2

    .line 13
    .line 14
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    invoke-virtual {v1, v4, v0}, Lu1/q;->M(I[B)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget v0, p0, Lr2/b;->l:I

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lu1/q;->N(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v1, Lu1/q;->a:[B

    .line 33
    .line 34
    iget v2, p0, Lr2/b;->l:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v4, v2, v4}, Ll2/l;->b([BIIZ)Z

    .line 37
    .line 38
    .line 39
    return-object v1
.end method
