.class public final Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final a:Lu1/q;

.field public final b:Landroidx/media3/exoplayer/video/k;

.field public final c:Z

.field public final d:Lha/l2;

.field public e:I

.field public f:Ll2/q;

.field public g:Ln2/c;

.field public h:J

.field public i:[Ln2/e;

.field public j:J

.field public k:Ln2/e;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(ILha/l2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ln2/b;->d:Lha/l2;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    and-int/2addr p1, p2

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    iput-boolean p2, p0, Ln2/b;->c:Z

    .line 14
    .line 15
    new-instance p1, Lu1/q;

    .line 16
    .line 17
    const/16 p2, 0xc

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Ln2/b;->a:Lu1/q;

    .line 23
    .line 24
    new-instance p1, Landroidx/media3/exoplayer/video/k;

    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/k;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ln2/b;->b:Landroidx/media3/exoplayer/video/k;

    .line 30
    .line 31
    new-instance p1, Lha/l2;

    .line 32
    .line 33
    const/16 p2, 0x11

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lha/l2;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Ln2/b;->f:Ll2/q;

    .line 39
    .line 40
    new-array p1, v0, [Ln2/e;

    .line 41
    .line 42
    iput-object p1, p0, Ln2/b;->i:[Ln2/e;

    .line 43
    .line 44
    const-wide/16 p1, -0x1

    .line 45
    .line 46
    iput-wide p1, p0, Ln2/b;->m:J

    .line 47
    .line 48
    iput-wide p1, p0, Ln2/b;->n:J

    .line 49
    .line 50
    const/4 p1, -0x1

    .line 51
    iput p1, p0, Ln2/b;->l:I

    .line 52
    .line 53
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    iput-wide p1, p0, Ln2/b;->h:J

    .line 59
    .line 60
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
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln2/b;->e:I

    .line 3
    .line 4
    iget-boolean v0, p0, Ln2/b;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/room/i;

    .line 9
    .line 10
    iget-object v1, p0, Ln2/b;->d:Lha/l2;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Landroidx/room/i;-><init>(Ll2/q;Li3/h;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    :cond_0
    iput-object p1, p0, Ln2/b;->f:Ll2/q;

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Ln2/b;->j:J

    .line 21
    .line 22
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    iget-wide v4, v0, Ln2/b;->j:J

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const-wide/16 v7, -0x1

    .line 10
    .line 11
    cmp-long v9, v4, v7

    .line 12
    .line 13
    if-eqz v9, :cond_2

    .line 14
    .line 15
    move-object v9, v1

    .line 16
    check-cast v9, Ll2/l;

    .line 17
    .line 18
    iget-wide v9, v9, Ll2/l;->d:J

    .line 19
    .line 20
    cmp-long v11, v4, v9

    .line 21
    .line 22
    if-ltz v11, :cond_0

    .line 23
    .line 24
    const-wide/32 v11, 0x40000

    .line 25
    .line 26
    .line 27
    add-long/2addr v11, v9

    .line 28
    cmp-long v13, v4, v11

    .line 29
    .line 30
    if-lez v13, :cond_1

    .line 31
    .line 32
    :cond_0
    move-object/from16 v9, p2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sub-long/2addr v4, v9

    .line 36
    long-to-int v5, v4

    .line 37
    move-object v4, v1

    .line 38
    check-cast v4, Ll2/l;

    .line 39
    .line 40
    invoke-virtual {v4, v5, v6}, Ll2/l;->o(IZ)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :goto_0
    iput-wide v4, v9, Ldd/c;->b:J

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 49
    :goto_2
    iput-wide v7, v0, Ln2/b;->j:J

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    return v3

    .line 54
    :cond_3
    iget v4, v0, Ln2/b;->e:I

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    const/16 v12, 0x10

    .line 58
    .line 59
    const/4 v14, 0x4

    .line 60
    const/16 v15, 0x8

    .line 61
    .line 62
    const v9, 0x5453494c

    .line 63
    .line 64
    .line 65
    const-wide/16 v16, 0x8

    .line 66
    .line 67
    const/16 v10, 0xc

    .line 68
    .line 69
    iget-object v2, v0, Ln2/b;->b:Landroidx/media3/exoplayer/video/k;

    .line 70
    .line 71
    iget-object v11, v0, Ln2/b;->a:Lu1/q;

    .line 72
    .line 73
    packed-switch v4, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/AssertionError;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :pswitch_0
    move-object v2, v1

    .line 83
    check-cast v2, Ll2/l;

    .line 84
    .line 85
    iget-wide v7, v2, Ll2/l;->d:J

    .line 86
    .line 87
    iget-wide v13, v0, Ln2/b;->n:J

    .line 88
    .line 89
    cmp-long v2, v7, v13

    .line 90
    .line 91
    if-ltz v2, :cond_4

    .line 92
    .line 93
    const/4 v6, -0x1

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_4
    iget-object v2, v0, Ln2/b;->k:Ln2/e;

    .line 97
    .line 98
    if-eqz v2, :cond_9

    .line 99
    .line 100
    iget v4, v2, Ln2/e;->h:I

    .line 101
    .line 102
    iget-object v7, v2, Ln2/e;->b:Ll2/j0;

    .line 103
    .line 104
    invoke-interface {v7, v1, v4, v6}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    sub-int/2addr v4, v1

    .line 109
    iput v4, v2, Ln2/e;->h:I

    .line 110
    .line 111
    if-nez v4, :cond_5

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    const/4 v1, 0x0

    .line 116
    :goto_3
    if-eqz v1, :cond_8

    .line 117
    .line 118
    iget v4, v2, Ln2/e;->g:I

    .line 119
    .line 120
    if-lez v4, :cond_7

    .line 121
    .line 122
    iget v4, v2, Ln2/e;->i:I

    .line 123
    .line 124
    iget-wide v7, v2, Ln2/e;->e:J

    .line 125
    .line 126
    int-to-long v9, v4

    .line 127
    mul-long v7, v7, v9

    .line 128
    .line 129
    iget v9, v2, Ln2/e;->f:I

    .line 130
    .line 131
    int-to-long v9, v9

    .line 132
    div-long v12, v7, v9

    .line 133
    .line 134
    iget-object v7, v2, Ln2/e;->n:[I

    .line 135
    .line 136
    invoke-static {v7, v4}, Ljava/util/Arrays;->binarySearch([II)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-ltz v4, :cond_6

    .line 141
    .line 142
    const/4 v14, 0x1

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    const/4 v14, 0x0

    .line 145
    :goto_4
    iget v15, v2, Ln2/e;->g:I

    .line 146
    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    iget-object v11, v2, Ln2/e;->b:Ll2/j0;

    .line 152
    .line 153
    invoke-interface/range {v11 .. v17}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    iget v4, v2, Ln2/e;->i:I

    .line 157
    .line 158
    add-int/2addr v4, v3

    .line 159
    iput v4, v2, Ln2/e;->i:I

    .line 160
    .line 161
    :cond_8
    if-eqz v1, :cond_12

    .line 162
    .line 163
    iput-object v5, v0, Ln2/b;->k:Ln2/e;

    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_9
    check-cast v1, Ll2/l;

    .line 168
    .line 169
    iget-wide v7, v1, Ll2/l;->d:J

    .line 170
    .line 171
    const-wide/16 v12, 0x1

    .line 172
    .line 173
    and-long/2addr v7, v12

    .line 174
    cmp-long v2, v7, v12

    .line 175
    .line 176
    if-nez v2, :cond_a

    .line 177
    .line 178
    invoke-virtual {v1, v3, v6}, Ll2/l;->o(IZ)Z

    .line 179
    .line 180
    .line 181
    :cond_a
    iget-object v2, v11, Lu1/q;->a:[B

    .line 182
    .line 183
    invoke-virtual {v1, v2, v6, v10, v6}, Ll2/l;->c([BIIZ)Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v6}, Lu1/q;->O(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-ne v2, v9, :cond_c

    .line 194
    .line 195
    invoke-virtual {v11, v15}, Lu1/q;->O(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    const v3, 0x69766f6d

    .line 203
    .line 204
    .line 205
    if-ne v2, v3, :cond_b

    .line 206
    .line 207
    const/16 v15, 0xc

    .line 208
    .line 209
    :cond_b
    invoke-virtual {v1, v15, v6}, Ll2/l;->o(IZ)Z

    .line 210
    .line 211
    .line 212
    iput v6, v1, Ll2/l;->f:I

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_c
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    const v7, 0x4b4e554a    # 1.352225E7f

    .line 220
    .line 221
    .line 222
    if-ne v2, v7, :cond_d

    .line 223
    .line 224
    iget-wide v1, v1, Ll2/l;->d:J

    .line 225
    .line 226
    int-to-long v3, v4

    .line 227
    add-long/2addr v1, v3

    .line 228
    add-long v1, v1, v16

    .line 229
    .line 230
    iput-wide v1, v0, Ln2/b;->j:J

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_d
    invoke-virtual {v1, v15, v6}, Ll2/l;->o(IZ)Z

    .line 234
    .line 235
    .line 236
    iput v6, v1, Ll2/l;->f:I

    .line 237
    .line 238
    iget-object v7, v0, Ln2/b;->i:[Ln2/e;

    .line 239
    .line 240
    array-length v8, v7

    .line 241
    const/4 v9, 0x0

    .line 242
    :goto_5
    if-ge v9, v8, :cond_10

    .line 243
    .line 244
    aget-object v10, v7, v9

    .line 245
    .line 246
    iget v11, v10, Ln2/e;->c:I

    .line 247
    .line 248
    if-eq v11, v2, :cond_f

    .line 249
    .line 250
    iget v11, v10, Ln2/e;->d:I

    .line 251
    .line 252
    if-ne v11, v2, :cond_e

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_e
    add-int/2addr v9, v3

    .line 256
    goto :goto_5

    .line 257
    :cond_f
    :goto_6
    move-object v5, v10

    .line 258
    :cond_10
    if-nez v5, :cond_11

    .line 259
    .line 260
    iget-wide v1, v1, Ll2/l;->d:J

    .line 261
    .line 262
    int-to-long v3, v4

    .line 263
    add-long/2addr v1, v3

    .line 264
    iput-wide v1, v0, Ln2/b;->j:J

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_11
    iput v4, v5, Ln2/e;->g:I

    .line 268
    .line 269
    iput v4, v5, Ln2/e;->h:I

    .line 270
    .line 271
    iput-object v5, v0, Ln2/b;->k:Ln2/e;

    .line 272
    .line 273
    :cond_12
    :goto_7
    return v6

    .line 274
    :pswitch_1
    new-instance v2, Lu1/q;

    .line 275
    .line 276
    iget v4, v0, Ln2/b;->o:I

    .line 277
    .line 278
    invoke-direct {v2, v4}, Lu1/q;-><init>(I)V

    .line 279
    .line 280
    .line 281
    iget-object v4, v2, Lu1/q;->a:[B

    .line 282
    .line 283
    iget v9, v0, Ln2/b;->o:I

    .line 284
    .line 285
    check-cast v1, Ll2/l;

    .line 286
    .line 287
    invoke-virtual {v1, v4, v6, v9, v6}, Ll2/l;->b([BIIZ)Z

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-ge v1, v12, :cond_13

    .line 295
    .line 296
    const-wide/16 v9, 0x0

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_13
    iget v1, v2, Lu1/q;->b:I

    .line 300
    .line 301
    invoke-virtual {v2, v15}, Lu1/q;->P(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lu1/q;->q()I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    int-to-long v9, v4

    .line 309
    iget-wide v5, v0, Ln2/b;->m:J

    .line 310
    .line 311
    cmp-long v11, v9, v5

    .line 312
    .line 313
    if-lez v11, :cond_14

    .line 314
    .line 315
    const-wide/16 v9, 0x0

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_14
    add-long v9, v5, v16

    .line 319
    .line 320
    :goto_8
    invoke-virtual {v2, v1}, Lu1/q;->O(I)V

    .line 321
    .line 322
    .line 323
    :goto_9
    invoke-virtual {v2}, Lu1/q;->a()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-lt v1, v12, :cond_1d

    .line 328
    .line 329
    invoke-virtual {v2}, Lu1/q;->q()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-virtual {v2}, Lu1/q;->q()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    invoke-virtual {v2}, Lu1/q;->q()I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    int-to-long v7, v6

    .line 342
    add-long/2addr v7, v9

    .line 343
    invoke-virtual {v2, v14}, Lu1/q;->P(I)V

    .line 344
    .line 345
    .line 346
    iget-object v6, v0, Ln2/b;->i:[Ln2/e;

    .line 347
    .line 348
    array-length v11, v6

    .line 349
    const/4 v15, 0x0

    .line 350
    :goto_a
    if-ge v15, v11, :cond_16

    .line 351
    .line 352
    aget-object v4, v6, v15

    .line 353
    .line 354
    iget v13, v4, Ln2/e;->c:I

    .line 355
    .line 356
    if-eq v13, v1, :cond_17

    .line 357
    .line 358
    iget v13, v4, Ln2/e;->d:I

    .line 359
    .line 360
    if-ne v13, v1, :cond_15

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_15
    add-int/2addr v15, v3

    .line 364
    goto :goto_a

    .line 365
    :cond_16
    const/4 v4, 0x0

    .line 366
    :cond_17
    :goto_b
    if-nez v4, :cond_18

    .line 367
    .line 368
    :goto_c
    const-wide/16 v7, -0x1

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_18
    and-int/lit8 v1, v5, 0x10

    .line 372
    .line 373
    if-ne v1, v12, :cond_19

    .line 374
    .line 375
    const/4 v13, 0x1

    .line 376
    goto :goto_d

    .line 377
    :cond_19
    const/4 v13, 0x0

    .line 378
    :goto_d
    iget-wide v5, v4, Ln2/e;->l:J

    .line 379
    .line 380
    const-wide/16 v15, -0x1

    .line 381
    .line 382
    cmp-long v1, v5, v15

    .line 383
    .line 384
    if-nez v1, :cond_1a

    .line 385
    .line 386
    iput-wide v7, v4, Ln2/e;->l:J

    .line 387
    .line 388
    :cond_1a
    if-eqz v13, :cond_1c

    .line 389
    .line 390
    iget v1, v4, Ln2/e;->k:I

    .line 391
    .line 392
    iget-object v5, v4, Ln2/e;->n:[I

    .line 393
    .line 394
    array-length v5, v5

    .line 395
    if-ne v1, v5, :cond_1b

    .line 396
    .line 397
    iget-object v1, v4, Ln2/e;->m:[J

    .line 398
    .line 399
    array-length v5, v1

    .line 400
    const/4 v6, 0x3

    .line 401
    mul-int/lit8 v5, v5, 0x3

    .line 402
    .line 403
    const/4 v11, 0x2

    .line 404
    div-int/2addr v5, v11

    .line 405
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iput-object v1, v4, Ln2/e;->m:[J

    .line 410
    .line 411
    iget-object v1, v4, Ln2/e;->n:[I

    .line 412
    .line 413
    array-length v5, v1

    .line 414
    mul-int/lit8 v5, v5, 0x3

    .line 415
    .line 416
    div-int/2addr v5, v11

    .line 417
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iput-object v1, v4, Ln2/e;->n:[I

    .line 422
    .line 423
    :cond_1b
    iget-object v1, v4, Ln2/e;->m:[J

    .line 424
    .line 425
    iget v5, v4, Ln2/e;->k:I

    .line 426
    .line 427
    aput-wide v7, v1, v5

    .line 428
    .line 429
    iget-object v1, v4, Ln2/e;->n:[I

    .line 430
    .line 431
    iget v6, v4, Ln2/e;->j:I

    .line 432
    .line 433
    aput v6, v1, v5

    .line 434
    .line 435
    add-int/2addr v5, v3

    .line 436
    iput v5, v4, Ln2/e;->k:I

    .line 437
    .line 438
    :cond_1c
    iget v1, v4, Ln2/e;->j:I

    .line 439
    .line 440
    add-int/2addr v1, v3

    .line 441
    iput v1, v4, Ln2/e;->j:I

    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_1d
    iget-object v1, v0, Ln2/b;->i:[Ln2/e;

    .line 445
    .line 446
    array-length v2, v1

    .line 447
    const/4 v13, 0x0

    .line 448
    :goto_e
    if-ge v13, v2, :cond_1f

    .line 449
    .line 450
    aget-object v4, v1, v13

    .line 451
    .line 452
    iget-object v5, v4, Ln2/e;->m:[J

    .line 453
    .line 454
    iget v6, v4, Ln2/e;->k:I

    .line 455
    .line 456
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    iput-object v5, v4, Ln2/e;->m:[J

    .line 461
    .line 462
    iget-object v5, v4, Ln2/e;->n:[I

    .line 463
    .line 464
    iget v6, v4, Ln2/e;->k:I

    .line 465
    .line 466
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    iput-object v5, v4, Ln2/e;->n:[I

    .line 471
    .line 472
    iget v5, v4, Ln2/e;->c:I

    .line 473
    .line 474
    const/high16 v6, 0x62770000

    .line 475
    .line 476
    and-int/2addr v5, v6

    .line 477
    if-ne v5, v6, :cond_1e

    .line 478
    .line 479
    iget-object v5, v4, Ln2/e;->a:Ln2/d;

    .line 480
    .line 481
    iget v5, v5, Ln2/d;->f:I

    .line 482
    .line 483
    if-eqz v5, :cond_1e

    .line 484
    .line 485
    iget v5, v4, Ln2/e;->k:I

    .line 486
    .line 487
    if-lez v5, :cond_1e

    .line 488
    .line 489
    iput v5, v4, Ln2/e;->f:I

    .line 490
    .line 491
    :cond_1e
    add-int/2addr v13, v3

    .line 492
    goto :goto_e

    .line 493
    :cond_1f
    iput-boolean v3, v0, Ln2/b;->p:Z

    .line 494
    .line 495
    iget-object v1, v0, Ln2/b;->i:[Ln2/e;

    .line 496
    .line 497
    array-length v1, v1

    .line 498
    if-nez v1, :cond_20

    .line 499
    .line 500
    iget-object v1, v0, Ln2/b;->f:Ll2/q;

    .line 501
    .line 502
    new-instance v2, Ll2/s;

    .line 503
    .line 504
    iget-wide v3, v0, Ln2/b;->h:J

    .line 505
    .line 506
    invoke-direct {v2, v3, v4}, Ll2/s;-><init>(J)V

    .line 507
    .line 508
    .line 509
    invoke-interface {v1, v2}, Ll2/q;->s(Ll2/c0;)V

    .line 510
    .line 511
    .line 512
    :goto_f
    const/4 v1, 0x6

    .line 513
    goto :goto_10

    .line 514
    :cond_20
    iget-object v1, v0, Ln2/b;->f:Ll2/q;

    .line 515
    .line 516
    new-instance v2, Ll2/s;

    .line 517
    .line 518
    iget-wide v3, v0, Ln2/b;->h:J

    .line 519
    .line 520
    const/4 v5, 0x2

    .line 521
    invoke-direct {v2, v5, v3, v4, v0}, Ll2/s;-><init>(IJLjava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    invoke-interface {v1, v2}, Ll2/q;->s(Ll2/c0;)V

    .line 525
    .line 526
    .line 527
    goto :goto_f

    .line 528
    :goto_10
    iput v1, v0, Ln2/b;->e:I

    .line 529
    .line 530
    iget-wide v1, v0, Ln2/b;->m:J

    .line 531
    .line 532
    iput-wide v1, v0, Ln2/b;->j:J

    .line 533
    .line 534
    const/4 v2, 0x0

    .line 535
    return v2

    .line 536
    :pswitch_2
    const/4 v2, 0x0

    .line 537
    iget-object v3, v11, Lu1/q;->a:[B

    .line 538
    .line 539
    move-object v4, v1

    .line 540
    check-cast v4, Ll2/l;

    .line 541
    .line 542
    invoke-virtual {v4, v3, v2, v15, v2}, Ll2/l;->b([BIIZ)Z

    .line 543
    .line 544
    .line 545
    invoke-virtual {v11, v2}, Lu1/q;->O(I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    const v4, 0x31786469

    .line 557
    .line 558
    .line 559
    if-ne v2, v4, :cond_21

    .line 560
    .line 561
    const/4 v1, 0x5

    .line 562
    iput v1, v0, Ln2/b;->e:I

    .line 563
    .line 564
    iput v3, v0, Ln2/b;->o:I

    .line 565
    .line 566
    :goto_11
    const/4 v5, 0x0

    .line 567
    goto :goto_12

    .line 568
    :cond_21
    check-cast v1, Ll2/l;

    .line 569
    .line 570
    iget-wide v1, v1, Ll2/l;->d:J

    .line 571
    .line 572
    int-to-long v3, v3

    .line 573
    add-long/2addr v1, v3

    .line 574
    iput-wide v1, v0, Ln2/b;->j:J

    .line 575
    .line 576
    goto :goto_11

    .line 577
    :goto_12
    return v5

    .line 578
    :pswitch_3
    const/4 v5, 0x0

    .line 579
    iget-wide v6, v0, Ln2/b;->m:J

    .line 580
    .line 581
    const-wide/16 v18, -0x1

    .line 582
    .line 583
    cmp-long v8, v6, v18

    .line 584
    .line 585
    if-eqz v8, :cond_22

    .line 586
    .line 587
    move-object v8, v1

    .line 588
    check-cast v8, Ll2/l;

    .line 589
    .line 590
    iget-wide v3, v8, Ll2/l;->d:J

    .line 591
    .line 592
    cmp-long v8, v3, v6

    .line 593
    .line 594
    if-eqz v8, :cond_22

    .line 595
    .line 596
    iput-wide v6, v0, Ln2/b;->j:J

    .line 597
    .line 598
    return v5

    .line 599
    :cond_22
    iget-object v3, v11, Lu1/q;->a:[B

    .line 600
    .line 601
    move-object v4, v1

    .line 602
    check-cast v4, Ll2/l;

    .line 603
    .line 604
    invoke-virtual {v4, v3, v5, v10, v5}, Ll2/l;->c([BIIZ)Z

    .line 605
    .line 606
    .line 607
    check-cast v1, Ll2/l;

    .line 608
    .line 609
    iput v5, v1, Ll2/l;->f:I

    .line 610
    .line 611
    invoke-virtual {v11, v5}, Lu1/q;->O(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    iput v3, v2, Landroidx/media3/exoplayer/video/k;->a:I

    .line 622
    .line 623
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    iput v3, v2, Landroidx/media3/exoplayer/video/k;->b:I

    .line 628
    .line 629
    iput v5, v2, Landroidx/media3/exoplayer/video/k;->c:I

    .line 630
    .line 631
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    iget v4, v2, Landroidx/media3/exoplayer/video/k;->a:I

    .line 636
    .line 637
    const v6, 0x46464952

    .line 638
    .line 639
    .line 640
    if-ne v4, v6, :cond_23

    .line 641
    .line 642
    invoke-virtual {v1, v10, v5}, Ll2/l;->o(IZ)Z

    .line 643
    .line 644
    .line 645
    return v5

    .line 646
    :cond_23
    if-ne v4, v9, :cond_24

    .line 647
    .line 648
    const v4, 0x69766f6d

    .line 649
    .line 650
    .line 651
    if-eq v3, v4, :cond_25

    .line 652
    .line 653
    :cond_24
    const/4 v3, 0x0

    .line 654
    goto :goto_13

    .line 655
    :cond_25
    iget-wide v3, v1, Ll2/l;->d:J

    .line 656
    .line 657
    iput-wide v3, v0, Ln2/b;->m:J

    .line 658
    .line 659
    iget v2, v2, Landroidx/media3/exoplayer/video/k;->b:I

    .line 660
    .line 661
    int-to-long v5, v2

    .line 662
    add-long/2addr v3, v5

    .line 663
    add-long v3, v3, v16

    .line 664
    .line 665
    iput-wide v3, v0, Ln2/b;->n:J

    .line 666
    .line 667
    iget-boolean v2, v0, Ln2/b;->p:Z

    .line 668
    .line 669
    if-nez v2, :cond_27

    .line 670
    .line 671
    iget-object v2, v0, Ln2/b;->g:Ln2/c;

    .line 672
    .line 673
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    iget v2, v2, Ln2/c;->b:I

    .line 677
    .line 678
    and-int/2addr v2, v12

    .line 679
    if-ne v2, v12, :cond_26

    .line 680
    .line 681
    iput v14, v0, Ln2/b;->e:I

    .line 682
    .line 683
    iget-wide v1, v0, Ln2/b;->n:J

    .line 684
    .line 685
    iput-wide v1, v0, Ln2/b;->j:J

    .line 686
    .line 687
    const/4 v1, 0x0

    .line 688
    return v1

    .line 689
    :cond_26
    iget-object v2, v0, Ln2/b;->f:Ll2/q;

    .line 690
    .line 691
    new-instance v3, Ll2/s;

    .line 692
    .line 693
    iget-wide v4, v0, Ln2/b;->h:J

    .line 694
    .line 695
    invoke-direct {v3, v4, v5}, Ll2/s;-><init>(J)V

    .line 696
    .line 697
    .line 698
    invoke-interface {v2, v3}, Ll2/q;->s(Ll2/c0;)V

    .line 699
    .line 700
    .line 701
    const/4 v2, 0x1

    .line 702
    iput-boolean v2, v0, Ln2/b;->p:Z

    .line 703
    .line 704
    :cond_27
    iget-wide v1, v1, Ll2/l;->d:J

    .line 705
    .line 706
    const-wide/16 v3, 0xc

    .line 707
    .line 708
    add-long/2addr v1, v3

    .line 709
    iput-wide v1, v0, Ln2/b;->j:J

    .line 710
    .line 711
    const/4 v1, 0x6

    .line 712
    iput v1, v0, Ln2/b;->e:I

    .line 713
    .line 714
    const/4 v3, 0x0

    .line 715
    return v3

    .line 716
    :goto_13
    iget-wide v4, v1, Ll2/l;->d:J

    .line 717
    .line 718
    iget v1, v2, Landroidx/media3/exoplayer/video/k;->b:I

    .line 719
    .line 720
    int-to-long v1, v1

    .line 721
    add-long/2addr v4, v1

    .line 722
    add-long v4, v4, v16

    .line 723
    .line 724
    iput-wide v4, v0, Ln2/b;->j:J

    .line 725
    .line 726
    return v3

    .line 727
    :pswitch_4
    const/4 v3, 0x0

    .line 728
    iget v2, v0, Ln2/b;->l:I

    .line 729
    .line 730
    sub-int/2addr v2, v14

    .line 731
    new-instance v4, Lu1/q;

    .line 732
    .line 733
    invoke-direct {v4, v2}, Lu1/q;-><init>(I)V

    .line 734
    .line 735
    .line 736
    iget-object v5, v4, Lu1/q;->a:[B

    .line 737
    .line 738
    check-cast v1, Ll2/l;

    .line 739
    .line 740
    invoke-virtual {v1, v5, v3, v2, v3}, Ll2/l;->b([BIIZ)Z

    .line 741
    .line 742
    .line 743
    const v1, 0x6c726468

    .line 744
    .line 745
    .line 746
    invoke-static {v1, v4}, Ln2/f;->b(ILu1/q;)Ln2/f;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    iget v3, v2, Ln2/f;->b:I

    .line 751
    .line 752
    if-ne v3, v1, :cond_32

    .line 753
    .line 754
    const-class v1, Ln2/c;

    .line 755
    .line 756
    invoke-virtual {v2, v1}, Ln2/f;->a(Ljava/lang/Class;)Ln2/a;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    check-cast v1, Ln2/c;

    .line 761
    .line 762
    if-eqz v1, :cond_31

    .line 763
    .line 764
    iput-object v1, v0, Ln2/b;->g:Ln2/c;

    .line 765
    .line 766
    iget v3, v1, Ln2/c;->c:I

    .line 767
    .line 768
    int-to-long v3, v3

    .line 769
    iget v1, v1, Ln2/c;->a:I

    .line 770
    .line 771
    int-to-long v5, v1

    .line 772
    mul-long v3, v3, v5

    .line 773
    .line 774
    iput-wide v3, v0, Ln2/b;->h:J

    .line 775
    .line 776
    new-instance v1, Ljava/util/ArrayList;

    .line 777
    .line 778
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .line 780
    .line 781
    iget-object v2, v2, Ln2/f;->a:Lu7/y0;

    .line 782
    .line 783
    const/4 v3, 0x0

    .line 784
    invoke-virtual {v2, v3}, Lu7/g0;->o(I)Lu7/e0;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    const/4 v3, 0x0

    .line 789
    :cond_28
    :goto_14
    invoke-virtual {v2}, Lu7/e0;->hasNext()Z

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    if-eqz v4, :cond_30

    .line 794
    .line 795
    invoke-virtual {v2}, Lu7/e0;->next()Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v4

    .line 799
    check-cast v4, Ln2/a;

    .line 800
    .line 801
    invoke-interface {v4}, Ln2/a;->getType()I

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    const v6, 0x6c727473

    .line 806
    .line 807
    .line 808
    if-ne v5, v6, :cond_28

    .line 809
    .line 810
    check-cast v4, Ln2/f;

    .line 811
    .line 812
    const/4 v5, 0x1

    .line 813
    add-int/lit8 v6, v3, 0x1

    .line 814
    .line 815
    const-class v5, Ln2/d;

    .line 816
    .line 817
    invoke-virtual {v4, v5}, Ln2/f;->a(Ljava/lang/Class;)Ln2/a;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    check-cast v5, Ln2/d;

    .line 822
    .line 823
    const-class v7, Ln2/g;

    .line 824
    .line 825
    invoke-virtual {v4, v7}, Ln2/f;->a(Ljava/lang/Class;)Ln2/a;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    check-cast v7, Ln2/g;

    .line 830
    .line 831
    if-nez v5, :cond_2a

    .line 832
    .line 833
    const-string v3, "Missing Stream Header"

    .line 834
    .line 835
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    :cond_29
    :goto_15
    const/4 v4, 0x0

    .line 839
    goto :goto_16

    .line 840
    :cond_2a
    if-nez v7, :cond_2b

    .line 841
    .line 842
    const-string v3, "Missing Stream Format"

    .line 843
    .line 844
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    goto :goto_15

    .line 848
    :cond_2b
    iget v8, v5, Ln2/d;->d:I

    .line 849
    .line 850
    int-to-long v8, v8

    .line 851
    iget v10, v5, Ln2/d;->b:I

    .line 852
    .line 853
    int-to-long v10, v10

    .line 854
    const-wide/32 v16, 0xf4240

    .line 855
    .line 856
    .line 857
    mul-long v22, v10, v16

    .line 858
    .line 859
    iget v10, v5, Ln2/d;->c:I

    .line 860
    .line 861
    int-to-long v10, v10

    .line 862
    sget-object v12, Lu1/f0;->a:Ljava/lang/String;

    .line 863
    .line 864
    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 865
    .line 866
    move-wide/from16 v20, v8

    .line 867
    .line 868
    move-wide/from16 v24, v10

    .line 869
    .line 870
    invoke-static/range {v20 .. v26}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 871
    .line 872
    .line 873
    move-result-wide v8

    .line 874
    iget-object v7, v7, Ln2/g;->a:Lr1/p;

    .line 875
    .line 876
    new-instance v10, Lr1/o;

    .line 877
    .line 878
    invoke-direct {v10, v7}, Lr1/o;-><init>(Lr1/p;)V

    .line 879
    .line 880
    .line 881
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v11

    .line 885
    iput-object v11, v10, Lr1/o;->a:Ljava/lang/String;

    .line 886
    .line 887
    iget v11, v5, Ln2/d;->e:I

    .line 888
    .line 889
    if-eqz v11, :cond_2c

    .line 890
    .line 891
    iput v11, v10, Lr1/o;->o:I

    .line 892
    .line 893
    :cond_2c
    const-class v11, Ln2/h;

    .line 894
    .line 895
    invoke-virtual {v4, v11}, Ln2/f;->a(Ljava/lang/Class;)Ln2/a;

    .line 896
    .line 897
    .line 898
    move-result-object v4

    .line 899
    check-cast v4, Ln2/h;

    .line 900
    .line 901
    if-eqz v4, :cond_2d

    .line 902
    .line 903
    iget-object v4, v4, Ln2/h;->a:Ljava/lang/String;

    .line 904
    .line 905
    iput-object v4, v10, Lr1/o;->b:Ljava/lang/String;

    .line 906
    .line 907
    :cond_2d
    iget-object v4, v7, Lr1/p;->o:Ljava/lang/String;

    .line 908
    .line 909
    invoke-static {v4}, Lr1/e0;->g(Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    const/4 v7, 0x1

    .line 914
    if-eq v4, v7, :cond_2e

    .line 915
    .line 916
    const/4 v7, 0x2

    .line 917
    if-ne v4, v7, :cond_29

    .line 918
    .line 919
    :cond_2e
    iget-object v7, v0, Ln2/b;->f:Ll2/q;

    .line 920
    .line 921
    invoke-interface {v7, v3, v4}, Ll2/q;->z(II)Ll2/j0;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    new-instance v7, Lr1/p;

    .line 926
    .line 927
    invoke-direct {v7, v10}, Lr1/p;-><init>(Lr1/o;)V

    .line 928
    .line 929
    .line 930
    invoke-interface {v4, v7}, Ll2/j0;->g(Lr1/p;)V

    .line 931
    .line 932
    .line 933
    invoke-interface {v4, v8, v9}, Ll2/j0;->d(J)V

    .line 934
    .line 935
    .line 936
    iget-wide v10, v0, Ln2/b;->h:J

    .line 937
    .line 938
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 939
    .line 940
    .line 941
    move-result-wide v7

    .line 942
    iput-wide v7, v0, Ln2/b;->h:J

    .line 943
    .line 944
    new-instance v7, Ln2/e;

    .line 945
    .line 946
    invoke-direct {v7, v3, v5, v4}, Ln2/e;-><init>(ILn2/d;Ll2/j0;)V

    .line 947
    .line 948
    .line 949
    move-object v4, v7

    .line 950
    :goto_16
    if-eqz v4, :cond_2f

    .line 951
    .line 952
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .line 954
    .line 955
    :cond_2f
    move v3, v6

    .line 956
    goto/16 :goto_14

    .line 957
    .line 958
    :cond_30
    const/4 v3, 0x0

    .line 959
    new-array v2, v3, [Ln2/e;

    .line 960
    .line 961
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    check-cast v1, [Ln2/e;

    .line 966
    .line 967
    iput-object v1, v0, Ln2/b;->i:[Ln2/e;

    .line 968
    .line 969
    iget-object v1, v0, Ln2/b;->f:Ll2/q;

    .line 970
    .line 971
    invoke-interface {v1}, Ll2/q;->q()V

    .line 972
    .line 973
    .line 974
    const/4 v1, 0x3

    .line 975
    iput v1, v0, Ln2/b;->e:I

    .line 976
    .line 977
    return v3

    .line 978
    :cond_31
    const-string v1, "AviHeader not found"

    .line 979
    .line 980
    const/4 v2, 0x0

    .line 981
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    throw v1

    .line 986
    :cond_32
    const/4 v2, 0x0

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    .line 988
    .line 989
    const-string v4, "Unexpected header list type "

    .line 990
    .line 991
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    throw v1

    .line 1006
    :pswitch_5
    iget-object v3, v11, Lu1/q;->a:[B

    .line 1007
    .line 1008
    check-cast v1, Ll2/l;

    .line 1009
    .line 1010
    const/4 v5, 0x0

    .line 1011
    invoke-virtual {v1, v3, v5, v10, v5}, Ll2/l;->b([BIIZ)Z

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v11, v5}, Lu1/q;->O(I)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    iput v1, v2, Landroidx/media3/exoplayer/video/k;->a:I

    .line 1025
    .line 1026
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 1027
    .line 1028
    .line 1029
    move-result v1

    .line 1030
    iput v1, v2, Landroidx/media3/exoplayer/video/k;->b:I

    .line 1031
    .line 1032
    iput v5, v2, Landroidx/media3/exoplayer/video/k;->c:I

    .line 1033
    .line 1034
    iget v1, v2, Landroidx/media3/exoplayer/video/k;->a:I

    .line 1035
    .line 1036
    if-ne v1, v9, :cond_34

    .line 1037
    .line 1038
    invoke-virtual {v11}, Lu1/q;->q()I

    .line 1039
    .line 1040
    .line 1041
    move-result v1

    .line 1042
    iput v1, v2, Landroidx/media3/exoplayer/video/k;->c:I

    .line 1043
    .line 1044
    const v3, 0x6c726468

    .line 1045
    .line 1046
    .line 1047
    if-ne v1, v3, :cond_33

    .line 1048
    .line 1049
    iget v1, v2, Landroidx/media3/exoplayer/video/k;->b:I

    .line 1050
    .line 1051
    iput v1, v0, Ln2/b;->l:I

    .line 1052
    .line 1053
    const/4 v1, 0x2

    .line 1054
    iput v1, v0, Ln2/b;->e:I

    .line 1055
    .line 1056
    return v5

    .line 1057
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    const-string v3, "hdrl expected, found: "

    .line 1060
    .line 1061
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    iget v2, v2, Landroidx/media3/exoplayer/video/k;->c:I

    .line 1065
    .line 1066
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    const/4 v3, 0x0

    .line 1074
    invoke-static {v3, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v1

    .line 1078
    throw v1

    .line 1079
    :cond_34
    const/4 v3, 0x0

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    const-string v4, "LIST expected, found: "

    .line 1083
    .line 1084
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    iget v2, v2, Landroidx/media3/exoplayer/video/k;->a:I

    .line 1088
    .line 1089
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    invoke-static {v3, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    throw v1

    .line 1101
    :pswitch_6
    move-object v3, v5

    .line 1102
    invoke-virtual/range {p0 .. p1}, Ln2/b;->g(Ll2/p;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    if-eqz v2, :cond_35

    .line 1107
    .line 1108
    check-cast v1, Ll2/l;

    .line 1109
    .line 1110
    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v1, v10, v2}, Ll2/l;->o(IZ)Z

    .line 1112
    .line 1113
    .line 1114
    const/4 v1, 0x1

    .line 1115
    iput v1, v0, Ln2/b;->e:I

    .line 1116
    .line 1117
    return v2

    .line 1118
    :cond_35
    const-string v1, "AVI Header List not found"

    .line 1119
    .line 1120
    invoke-static {v3, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v1

    .line 1124
    goto :goto_18

    .line 1125
    :goto_17
    throw v1

    .line 1126
    :goto_18
    goto :goto_17

    .line 1127
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

.method public final e(JJ)V
    .locals 5

    .line 1
    const-wide/16 p3, -0x1

    .line 2
    .line 3
    iput-wide p3, p0, Ln2/b;->j:J

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Ln2/b;->k:Ln2/e;

    .line 7
    .line 8
    iget-object p3, p0, Ln2/b;->i:[Ln2/e;

    .line 9
    .line 10
    array-length p4, p3

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_1

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    iget v3, v2, Ln2/e;->k:I

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iput v0, v2, Ln2/e;->i:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, Ln2/e;->m:[J

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v3, p1, p2, v4}, Lu1/f0;->d([JJZ)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v2, Ln2/e;->n:[I

    .line 32
    .line 33
    aget v3, v4, v3

    .line 34
    .line 35
    iput v3, v2, Ln2/e;->i:I

    .line 36
    .line 37
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-wide/16 p3, 0x0

    .line 41
    .line 42
    cmp-long v1, p1, p3

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Ln2/b;->i:[Ln2/e;

    .line 47
    .line 48
    array-length p1, p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iput v0, p0, Ln2/b;->e:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 p1, 0x3

    .line 55
    iput p1, p0, Ln2/b;->e:I

    .line 56
    .line 57
    :goto_2
    return-void

    .line 58
    :cond_3
    const/4 p1, 0x6

    .line 59
    iput p1, p0, Ln2/b;->e:I

    .line 60
    .line 61
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
    iget-object v0, p0, Ln2/b;->a:Lu1/q;

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
    const/16 v3, 0xc

    .line 9
    .line 10
    invoke-virtual {p1, v1, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lu1/q;->q()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const v1, 0x46464952

    .line 21
    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    const/4 p1, 0x4

    .line 27
    invoke-virtual {v0, p1}, Lu1/q;->P(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lu1/q;->q()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0x20495641

    .line 35
    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    :cond_1
    return v2
.end method
