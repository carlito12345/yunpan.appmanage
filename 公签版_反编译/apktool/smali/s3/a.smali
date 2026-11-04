.class public final Ls3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# instance fields
.field public final synthetic a:I

.field public final b:Lj3/f;

.field public final c:Lu1/q;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ll2/j0;

.field public i:I

.field public j:I

.field public k:Z

.field public l:J

.field public m:Lr1/p;

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ls3/a;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1, v2}, Ls3/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iput p4, p0, Ls3/a;->a:I

    packed-switch p4, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p4, Lj3/f;

    const/16 v0, 0x80

    new-array v1, v0, [B

    .line 4
    invoke-direct {p4, v1, v0}, Lj3/f;-><init>([BI)V

    .line 5
    iput-object p4, p0, Ls3/a;->b:Lj3/f;

    .line 6
    new-instance v0, Lu1/q;

    iget-object p4, p4, Lj3/f;->b:[B

    invoke-direct {v0, p4}, Lu1/q;-><init>([B)V

    iput-object v0, p0, Ls3/a;->c:Lu1/q;

    const/4 p4, 0x0

    .line 7
    iput p4, p0, Ls3/a;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Ls3/a;->o:J

    .line 9
    iput-object p1, p0, Ls3/a;->d:Ljava/lang/String;

    .line 10
    iput p2, p0, Ls3/a;->e:I

    .line 11
    iput-object p3, p0, Ls3/a;->f:Ljava/lang/String;

    return-void

    .line 12
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p4, Lj3/f;

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 14
    invoke-direct {p4, v1, v0}, Lj3/f;-><init>([BI)V

    .line 15
    iput-object p4, p0, Ls3/a;->b:Lj3/f;

    .line 16
    new-instance v0, Lu1/q;

    iget-object p4, p4, Lj3/f;->b:[B

    invoke-direct {v0, p4}, Lu1/q;-><init>([B)V

    iput-object v0, p0, Ls3/a;->c:Lu1/q;

    const/4 p4, 0x0

    .line 17
    iput p4, p0, Ls3/a;->i:I

    .line 18
    iput p4, p0, Ls3/a;->j:I

    .line 19
    iput-boolean p4, p0, Ls3/a;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide v0, p0, Ls3/a;->o:J

    .line 21
    iput-object p1, p0, Ls3/a;->d:Ljava/lang/String;

    .line 22
    iput p2, p0, Ls3/a;->e:I

    .line 23
    iput-object p3, p0, Ls3/a;->f:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final f(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(Z)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lu1/q;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ls3/a;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Ls3/a;->h:Ll2/j0;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_d

    .line 20
    .line 21
    iget v2, v0, Ls3/a;->i:I

    .line 22
    .line 23
    iget-object v3, v0, Ls3/a;->c:Lu1/q;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v2, :cond_6

    .line 29
    .line 30
    if-eq v2, v5, :cond_3

    .line 31
    .line 32
    if-eq v2, v4, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v3, v0, Ls3/a;->n:I

    .line 40
    .line 41
    iget v4, v0, Ls3/a;->j:I

    .line 42
    .line 43
    sub-int/2addr v3, v4

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, v0, Ls3/a;->h:Ll2/j0;

    .line 49
    .line 50
    invoke-interface {v3, v2, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 51
    .line 52
    .line 53
    iget v3, v0, Ls3/a;->j:I

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    iput v3, v0, Ls3/a;->j:I

    .line 57
    .line 58
    iget v2, v0, Ls3/a;->n:I

    .line 59
    .line 60
    if-ne v3, v2, :cond_0

    .line 61
    .line 62
    iget-wide v2, v0, Ls3/a;->o:J

    .line 63
    .line 64
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmp-long v4, v2, v7

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v5, 0x0

    .line 75
    :goto_1
    invoke-static {v5}, La9/o;->t(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v7, v0, Ls3/a;->h:Ll2/j0;

    .line 79
    .line 80
    iget-wide v8, v0, Ls3/a;->o:J

    .line 81
    .line 82
    iget v11, v0, Ls3/a;->n:I

    .line 83
    .line 84
    const/4 v13, 0x0

    .line 85
    const/4 v10, 0x1

    .line 86
    const/4 v12, 0x0

    .line 87
    invoke-interface/range {v7 .. v13}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 88
    .line 89
    .line 90
    iget-wide v2, v0, Ls3/a;->o:J

    .line 91
    .line 92
    iget-wide v4, v0, Ls3/a;->l:J

    .line 93
    .line 94
    add-long/2addr v2, v4

    .line 95
    iput-wide v2, v0, Ls3/a;->o:J

    .line 96
    .line 97
    iput v6, v0, Ls3/a;->i:I

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    iget-object v2, v3, Lu1/q;->a:[B

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget v7, v0, Ls3/a;->j:I

    .line 107
    .line 108
    const/16 v8, 0x10

    .line 109
    .line 110
    rsub-int/lit8 v7, v7, 0x10

    .line 111
    .line 112
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    iget v7, v0, Ls3/a;->j:I

    .line 117
    .line 118
    invoke-virtual {v1, v7, v5, v2}, Lu1/q;->l(II[B)V

    .line 119
    .line 120
    .line 121
    iget v2, v0, Ls3/a;->j:I

    .line 122
    .line 123
    add-int/2addr v2, v5

    .line 124
    iput v2, v0, Ls3/a;->j:I

    .line 125
    .line 126
    if-ne v2, v8, :cond_0

    .line 127
    .line 128
    iget-object v2, v0, Ls3/a;->b:Lj3/f;

    .line 129
    .line 130
    invoke-virtual {v2, v6}, Lj3/f;->m(I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Ll2/b;->n(Lj3/f;)Landroidx/media3/exoplayer/video/k;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget-object v5, v0, Ls3/a;->m:Lr1/p;

    .line 138
    .line 139
    const-string v7, "audio/ac4"

    .line 140
    .line 141
    iget v9, v2, Landroidx/media3/exoplayer/video/k;->a:I

    .line 142
    .line 143
    if-eqz v5, :cond_4

    .line 144
    .line 145
    iget v10, v5, Lr1/p;->G:I

    .line 146
    .line 147
    if-ne v4, v10, :cond_4

    .line 148
    .line 149
    iget v10, v5, Lr1/p;->H:I

    .line 150
    .line 151
    if-ne v9, v10, :cond_4

    .line 152
    .line 153
    iget-object v5, v5, Lr1/p;->o:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_5

    .line 160
    .line 161
    :cond_4
    new-instance v5, Lr1/o;

    .line 162
    .line 163
    invoke-direct {v5}, Lr1/o;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v10, v0, Ls3/a;->g:Ljava/lang/String;

    .line 167
    .line 168
    iput-object v10, v5, Lr1/o;->a:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v10, v0, Ls3/a;->f:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v10}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    iput-object v10, v5, Lr1/o;->m:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    iput-object v7, v5, Lr1/o;->n:Ljava/lang/String;

    .line 183
    .line 184
    iput v4, v5, Lr1/o;->F:I

    .line 185
    .line 186
    iput v9, v5, Lr1/o;->G:I

    .line 187
    .line 188
    iget-object v7, v0, Ls3/a;->d:Ljava/lang/String;

    .line 189
    .line 190
    iput-object v7, v5, Lr1/o;->d:Ljava/lang/String;

    .line 191
    .line 192
    iget v7, v0, Ls3/a;->e:I

    .line 193
    .line 194
    iput v7, v5, Lr1/o;->f:I

    .line 195
    .line 196
    new-instance v7, Lr1/p;

    .line 197
    .line 198
    invoke-direct {v7, v5}, Lr1/p;-><init>(Lr1/o;)V

    .line 199
    .line 200
    .line 201
    iput-object v7, v0, Ls3/a;->m:Lr1/p;

    .line 202
    .line 203
    iget-object v5, v0, Ls3/a;->h:Ll2/j0;

    .line 204
    .line 205
    invoke-interface {v5, v7}, Ll2/j0;->g(Lr1/p;)V

    .line 206
    .line 207
    .line 208
    :cond_5
    iget v5, v2, Landroidx/media3/exoplayer/video/k;->b:I

    .line 209
    .line 210
    iput v5, v0, Ls3/a;->n:I

    .line 211
    .line 212
    iget v2, v2, Landroidx/media3/exoplayer/video/k;->c:I

    .line 213
    .line 214
    int-to-long v9, v2

    .line 215
    const-wide/32 v11, 0xf4240

    .line 216
    .line 217
    .line 218
    mul-long v9, v9, v11

    .line 219
    .line 220
    iget-object v2, v0, Ls3/a;->m:Lr1/p;

    .line 221
    .line 222
    iget v2, v2, Lr1/p;->H:I

    .line 223
    .line 224
    int-to-long v11, v2

    .line 225
    div-long/2addr v9, v11

    .line 226
    iput-wide v9, v0, Ls3/a;->l:J

    .line 227
    .line 228
    invoke-virtual {v3, v6}, Lu1/q;->O(I)V

    .line 229
    .line 230
    .line 231
    iget-object v2, v0, Ls3/a;->h:Ll2/j0;

    .line 232
    .line 233
    invoke-interface {v2, v8, v3}, Ll2/j0;->a(ILu1/q;)V

    .line 234
    .line 235
    .line 236
    iput v4, v0, Ls3/a;->i:I

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-lez v2, :cond_0

    .line 245
    .line 246
    iget-boolean v2, v0, Ls3/a;->k:Z

    .line 247
    .line 248
    const/16 v7, 0xac

    .line 249
    .line 250
    if-nez v2, :cond_8

    .line 251
    .line 252
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-ne v2, v7, :cond_7

    .line 257
    .line 258
    const/4 v2, 0x1

    .line 259
    goto :goto_3

    .line 260
    :cond_7
    const/4 v2, 0x0

    .line 261
    :goto_3
    iput-boolean v2, v0, Ls3/a;->k:Z

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-ne v2, v7, :cond_9

    .line 269
    .line 270
    const/4 v7, 0x1

    .line 271
    goto :goto_4

    .line 272
    :cond_9
    const/4 v7, 0x0

    .line 273
    :goto_4
    iput-boolean v7, v0, Ls3/a;->k:Z

    .line 274
    .line 275
    const/16 v7, 0x41

    .line 276
    .line 277
    const/16 v8, 0x40

    .line 278
    .line 279
    if-eq v2, v8, :cond_a

    .line 280
    .line 281
    if-ne v2, v7, :cond_6

    .line 282
    .line 283
    :cond_a
    if-ne v2, v7, :cond_b

    .line 284
    .line 285
    const/4 v2, 0x1

    .line 286
    goto :goto_5

    .line 287
    :cond_b
    const/4 v2, 0x0

    .line 288
    :goto_5
    iput v5, v0, Ls3/a;->i:I

    .line 289
    .line 290
    iget-object v3, v3, Lu1/q;->a:[B

    .line 291
    .line 292
    const/16 v9, -0x54

    .line 293
    .line 294
    aput-byte v9, v3, v6

    .line 295
    .line 296
    if-eqz v2, :cond_c

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_c
    const/16 v7, 0x40

    .line 300
    .line 301
    :goto_6
    int-to-byte v2, v7

    .line 302
    aput-byte v2, v3, v5

    .line 303
    .line 304
    iput v4, v0, Ls3/a;->j:I

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_d
    return-void

    .line 309
    :pswitch_0
    iget-object v2, v0, Ls3/a;->h:Ll2/j0;

    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    :cond_e
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-lez v2, :cond_4c

    .line 319
    .line 320
    iget v2, v0, Ls3/a;->i:I

    .line 321
    .line 322
    const/4 v3, 0x2

    .line 323
    const/4 v4, 0x1

    .line 324
    const/16 v5, 0xb

    .line 325
    .line 326
    iget-object v6, v0, Ls3/a;->c:Lu1/q;

    .line 327
    .line 328
    const/4 v7, 0x0

    .line 329
    if-eqz v2, :cond_47

    .line 330
    .line 331
    if-eq v2, v4, :cond_11

    .line 332
    .line 333
    if-eq v2, v3, :cond_f

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    iget v3, v0, Ls3/a;->n:I

    .line 341
    .line 342
    iget v5, v0, Ls3/a;->j:I

    .line 343
    .line 344
    sub-int/2addr v3, v5

    .line 345
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    iget-object v3, v0, Ls3/a;->h:Ll2/j0;

    .line 350
    .line 351
    invoke-interface {v3, v2, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 352
    .line 353
    .line 354
    iget v3, v0, Ls3/a;->j:I

    .line 355
    .line 356
    add-int/2addr v3, v2

    .line 357
    iput v3, v0, Ls3/a;->j:I

    .line 358
    .line 359
    iget v2, v0, Ls3/a;->n:I

    .line 360
    .line 361
    if-ne v3, v2, :cond_e

    .line 362
    .line 363
    iget-wide v2, v0, Ls3/a;->o:J

    .line 364
    .line 365
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    cmp-long v8, v2, v5

    .line 371
    .line 372
    if-eqz v8, :cond_10

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_10
    const/4 v4, 0x0

    .line 376
    :goto_8
    invoke-static {v4}, La9/o;->t(Z)V

    .line 377
    .line 378
    .line 379
    iget-object v8, v0, Ls3/a;->h:Ll2/j0;

    .line 380
    .line 381
    iget-wide v9, v0, Ls3/a;->o:J

    .line 382
    .line 383
    iget v12, v0, Ls3/a;->n:I

    .line 384
    .line 385
    const/4 v14, 0x0

    .line 386
    const/4 v11, 0x1

    .line 387
    const/4 v13, 0x0

    .line 388
    invoke-interface/range {v8 .. v14}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 389
    .line 390
    .line 391
    iget-wide v2, v0, Ls3/a;->o:J

    .line 392
    .line 393
    iget-wide v4, v0, Ls3/a;->l:J

    .line 394
    .line 395
    add-long/2addr v2, v4

    .line 396
    iput-wide v2, v0, Ls3/a;->o:J

    .line 397
    .line 398
    iput v7, v0, Ls3/a;->i:I

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_11
    iget-object v2, v6, Lu1/q;->a:[B

    .line 402
    .line 403
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    iget v9, v0, Ls3/a;->j:I

    .line 408
    .line 409
    const/16 v10, 0x80

    .line 410
    .line 411
    rsub-int v9, v9, 0x80

    .line 412
    .line 413
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    iget v9, v0, Ls3/a;->j:I

    .line 418
    .line 419
    invoke-virtual {v1, v9, v8, v2}, Lu1/q;->l(II[B)V

    .line 420
    .line 421
    .line 422
    iget v2, v0, Ls3/a;->j:I

    .line 423
    .line 424
    add-int/2addr v2, v8

    .line 425
    iput v2, v0, Ls3/a;->j:I

    .line 426
    .line 427
    if-ne v2, v10, :cond_e

    .line 428
    .line 429
    iget-object v2, v0, Ls3/a;->b:Lj3/f;

    .line 430
    .line 431
    invoke-virtual {v2, v7}, Lj3/f;->m(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Lj3/f;->e()I

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    const/16 v9, 0x28

    .line 439
    .line 440
    invoke-virtual {v2, v9}, Lj3/f;->o(I)V

    .line 441
    .line 442
    .line 443
    const/4 v9, 0x5

    .line 444
    invoke-virtual {v2, v9}, Lj3/f;->g(I)I

    .line 445
    .line 446
    .line 447
    move-result v11

    .line 448
    const/16 v12, 0xa

    .line 449
    .line 450
    if-le v11, v12, :cond_12

    .line 451
    .line 452
    const/4 v11, 0x1

    .line 453
    goto :goto_9

    .line 454
    :cond_12
    const/4 v11, 0x0

    .line 455
    :goto_9
    invoke-virtual {v2, v8}, Lj3/f;->m(I)V

    .line 456
    .line 457
    .line 458
    sget-object v8, Ll2/b;->f:[I

    .line 459
    .line 460
    sget-object v13, Ll2/b;->d:[I

    .line 461
    .line 462
    const-string v14, "audio/ac3"

    .line 463
    .line 464
    const/16 v15, 0x8

    .line 465
    .line 466
    const/4 v7, 0x3

    .line 467
    if-eqz v11, :cond_3e

    .line 468
    .line 469
    const/16 v11, 0x10

    .line 470
    .line 471
    invoke-virtual {v2, v11}, Lj3/f;->o(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 475
    .line 476
    .line 477
    move-result v10

    .line 478
    if-eqz v10, :cond_15

    .line 479
    .line 480
    if-eq v10, v4, :cond_14

    .line 481
    .line 482
    if-eq v10, v3, :cond_13

    .line 483
    .line 484
    const/4 v10, -0x1

    .line 485
    goto :goto_a

    .line 486
    :cond_13
    const/4 v10, 0x2

    .line 487
    goto :goto_a

    .line 488
    :cond_14
    const/4 v10, 0x1

    .line 489
    goto :goto_a

    .line 490
    :cond_15
    const/4 v10, 0x0

    .line 491
    :goto_a
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v5}, Lj3/f;->g(I)I

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    add-int/2addr v5, v4

    .line 499
    mul-int/lit8 v5, v5, 0x2

    .line 500
    .line 501
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 502
    .line 503
    .line 504
    move-result v11

    .line 505
    if-ne v11, v7, :cond_16

    .line 506
    .line 507
    sget-object v13, Ll2/b;->e:[I

    .line 508
    .line 509
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 510
    .line 511
    .line 512
    move-result v16

    .line 513
    aget v13, v13, v16

    .line 514
    .line 515
    const/4 v3, 0x6

    .line 516
    const/16 v19, 0x3

    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_16
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 520
    .line 521
    .line 522
    move-result v16

    .line 523
    sget-object v18, Ll2/b;->c:[I

    .line 524
    .line 525
    aget v18, v18, v16

    .line 526
    .line 527
    aget v13, v13, v11

    .line 528
    .line 529
    move/from16 v19, v16

    .line 530
    .line 531
    move/from16 v3, v18

    .line 532
    .line 533
    :goto_b
    mul-int/lit16 v4, v3, 0x100

    .line 534
    .line 535
    mul-int v16, v5, v13

    .line 536
    .line 537
    mul-int/lit8 v20, v3, 0x20

    .line 538
    .line 539
    div-int v16, v16, v20

    .line 540
    .line 541
    invoke-virtual {v2, v7}, Lj3/f;->g(I)I

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 546
    .line 547
    .line 548
    move-result v21

    .line 549
    aget v8, v8, v9

    .line 550
    .line 551
    add-int v8, v8, v21

    .line 552
    .line 553
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 557
    .line 558
    .line 559
    move-result v12

    .line 560
    if-eqz v12, :cond_17

    .line 561
    .line 562
    invoke-virtual {v2, v15}, Lj3/f;->o(I)V

    .line 563
    .line 564
    .line 565
    :cond_17
    if-nez v9, :cond_18

    .line 566
    .line 567
    const/4 v12, 0x5

    .line 568
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 572
    .line 573
    .line 574
    move-result v12

    .line 575
    if-eqz v12, :cond_18

    .line 576
    .line 577
    invoke-virtual {v2, v15}, Lj3/f;->o(I)V

    .line 578
    .line 579
    .line 580
    :cond_18
    const/4 v12, 0x1

    .line 581
    if-ne v10, v12, :cond_19

    .line 582
    .line 583
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 584
    .line 585
    .line 586
    move-result v12

    .line 587
    if-eqz v12, :cond_19

    .line 588
    .line 589
    const/16 v12, 0x10

    .line 590
    .line 591
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 592
    .line 593
    .line 594
    :cond_19
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 595
    .line 596
    .line 597
    move-result v12

    .line 598
    if-eqz v12, :cond_32

    .line 599
    .line 600
    const/4 v12, 0x2

    .line 601
    if-le v9, v12, :cond_1a

    .line 602
    .line 603
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 604
    .line 605
    .line 606
    :cond_1a
    and-int/lit8 v18, v9, 0x1

    .line 607
    .line 608
    if-eqz v18, :cond_1b

    .line 609
    .line 610
    if-le v9, v12, :cond_1b

    .line 611
    .line 612
    const/4 v12, 0x6

    .line 613
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 614
    .line 615
    .line 616
    goto :goto_c

    .line 617
    :cond_1b
    const/4 v12, 0x6

    .line 618
    :goto_c
    and-int/lit8 v17, v9, 0x4

    .line 619
    .line 620
    if-eqz v17, :cond_1c

    .line 621
    .line 622
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 623
    .line 624
    .line 625
    :cond_1c
    if-eqz v21, :cond_1d

    .line 626
    .line 627
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 628
    .line 629
    .line 630
    move-result v12

    .line 631
    if-eqz v12, :cond_1d

    .line 632
    .line 633
    const/4 v12, 0x5

    .line 634
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 635
    .line 636
    .line 637
    :cond_1d
    if-nez v10, :cond_32

    .line 638
    .line 639
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 640
    .line 641
    .line 642
    move-result v12

    .line 643
    if-eqz v12, :cond_1e

    .line 644
    .line 645
    const/4 v12, 0x6

    .line 646
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 647
    .line 648
    .line 649
    goto :goto_d

    .line 650
    :cond_1e
    const/4 v12, 0x6

    .line 651
    :goto_d
    if-nez v9, :cond_1f

    .line 652
    .line 653
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 654
    .line 655
    .line 656
    move-result v17

    .line 657
    if-eqz v17, :cond_1f

    .line 658
    .line 659
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 660
    .line 661
    .line 662
    :cond_1f
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 663
    .line 664
    .line 665
    move-result v17

    .line 666
    if-eqz v17, :cond_20

    .line 667
    .line 668
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 669
    .line 670
    .line 671
    :cond_20
    const/4 v12, 0x2

    .line 672
    invoke-virtual {v2, v12}, Lj3/f;->g(I)I

    .line 673
    .line 674
    .line 675
    move-result v15

    .line 676
    const/4 v7, 0x1

    .line 677
    if-ne v15, v7, :cond_22

    .line 678
    .line 679
    const/4 v7, 0x5

    .line 680
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 681
    .line 682
    .line 683
    :cond_21
    :goto_e
    const/4 v15, 0x2

    .line 684
    goto/16 :goto_12

    .line 685
    .line 686
    :cond_22
    const/4 v7, 0x5

    .line 687
    if-ne v15, v12, :cond_23

    .line 688
    .line 689
    const/16 v12, 0xc

    .line 690
    .line 691
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 692
    .line 693
    .line 694
    goto :goto_e

    .line 695
    :cond_23
    const/4 v12, 0x3

    .line 696
    if-ne v15, v12, :cond_21

    .line 697
    .line 698
    invoke-virtual {v2, v7}, Lj3/f;->g(I)I

    .line 699
    .line 700
    .line 701
    move-result v12

    .line 702
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 703
    .line 704
    .line 705
    move-result v15

    .line 706
    if-eqz v15, :cond_2c

    .line 707
    .line 708
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 712
    .line 713
    .line 714
    move-result v7

    .line 715
    if-eqz v7, :cond_24

    .line 716
    .line 717
    const/4 v7, 0x4

    .line 718
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 719
    .line 720
    .line 721
    goto :goto_f

    .line 722
    :cond_24
    const/4 v7, 0x4

    .line 723
    :goto_f
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 724
    .line 725
    .line 726
    move-result v15

    .line 727
    if-eqz v15, :cond_25

    .line 728
    .line 729
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 730
    .line 731
    .line 732
    :cond_25
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 733
    .line 734
    .line 735
    move-result v15

    .line 736
    if-eqz v15, :cond_26

    .line 737
    .line 738
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 739
    .line 740
    .line 741
    :cond_26
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 742
    .line 743
    .line 744
    move-result v15

    .line 745
    if-eqz v15, :cond_27

    .line 746
    .line 747
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 748
    .line 749
    .line 750
    :cond_27
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 751
    .line 752
    .line 753
    move-result v15

    .line 754
    if-eqz v15, :cond_28

    .line 755
    .line 756
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 757
    .line 758
    .line 759
    :cond_28
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 760
    .line 761
    .line 762
    move-result v15

    .line 763
    if-eqz v15, :cond_29

    .line 764
    .line 765
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 766
    .line 767
    .line 768
    :cond_29
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 769
    .line 770
    .line 771
    move-result v15

    .line 772
    if-eqz v15, :cond_2a

    .line 773
    .line 774
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 775
    .line 776
    .line 777
    :cond_2a
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 778
    .line 779
    .line 780
    move-result v15

    .line 781
    if-eqz v15, :cond_2c

    .line 782
    .line 783
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 784
    .line 785
    .line 786
    move-result v15

    .line 787
    if-eqz v15, :cond_2b

    .line 788
    .line 789
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 790
    .line 791
    .line 792
    :cond_2b
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 793
    .line 794
    .line 795
    move-result v15

    .line 796
    if-eqz v15, :cond_2c

    .line 797
    .line 798
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 799
    .line 800
    .line 801
    :cond_2c
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    if-eqz v7, :cond_2d

    .line 806
    .line 807
    const/4 v7, 0x5

    .line 808
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 812
    .line 813
    .line 814
    move-result v7

    .line 815
    if-eqz v7, :cond_2d

    .line 816
    .line 817
    const/4 v7, 0x7

    .line 818
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 822
    .line 823
    .line 824
    move-result v7

    .line 825
    if-eqz v7, :cond_2d

    .line 826
    .line 827
    const/16 v7, 0x8

    .line 828
    .line 829
    invoke-virtual {v2, v7}, Lj3/f;->o(I)V

    .line 830
    .line 831
    .line 832
    :goto_10
    const/4 v15, 0x2

    .line 833
    goto :goto_11

    .line 834
    :cond_2d
    const/16 v7, 0x8

    .line 835
    .line 836
    goto :goto_10

    .line 837
    :goto_11
    add-int/2addr v12, v15

    .line 838
    mul-int/lit8 v12, v12, 0x8

    .line 839
    .line 840
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v2}, Lj3/f;->c()V

    .line 844
    .line 845
    .line 846
    :goto_12
    if-ge v9, v15, :cond_2f

    .line 847
    .line 848
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 849
    .line 850
    .line 851
    move-result v7

    .line 852
    const/16 v12, 0xe

    .line 853
    .line 854
    if-eqz v7, :cond_2e

    .line 855
    .line 856
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 857
    .line 858
    .line 859
    :cond_2e
    if-nez v9, :cond_2f

    .line 860
    .line 861
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 862
    .line 863
    .line 864
    move-result v7

    .line 865
    if-eqz v7, :cond_2f

    .line 866
    .line 867
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 868
    .line 869
    .line 870
    :cond_2f
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 871
    .line 872
    .line 873
    move-result v7

    .line 874
    if-eqz v7, :cond_32

    .line 875
    .line 876
    move/from16 v7, v19

    .line 877
    .line 878
    if-nez v7, :cond_30

    .line 879
    .line 880
    const/4 v12, 0x5

    .line 881
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 882
    .line 883
    .line 884
    goto :goto_14

    .line 885
    :cond_30
    const/4 v12, 0x5

    .line 886
    const/4 v15, 0x0

    .line 887
    :goto_13
    if-ge v15, v3, :cond_33

    .line 888
    .line 889
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 890
    .line 891
    .line 892
    move-result v19

    .line 893
    if-eqz v19, :cond_31

    .line 894
    .line 895
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 896
    .line 897
    .line 898
    :cond_31
    add-int/lit8 v15, v15, 0x1

    .line 899
    .line 900
    const/4 v12, 0x5

    .line 901
    goto :goto_13

    .line 902
    :cond_32
    move/from16 v7, v19

    .line 903
    .line 904
    :cond_33
    :goto_14
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    if-eqz v3, :cond_38

    .line 909
    .line 910
    const/4 v3, 0x5

    .line 911
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 912
    .line 913
    .line 914
    const/4 v3, 0x2

    .line 915
    if-ne v9, v3, :cond_34

    .line 916
    .line 917
    const/4 v12, 0x4

    .line 918
    invoke-virtual {v2, v12}, Lj3/f;->o(I)V

    .line 919
    .line 920
    .line 921
    :cond_34
    const/4 v12, 0x6

    .line 922
    if-lt v9, v12, :cond_35

    .line 923
    .line 924
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 925
    .line 926
    .line 927
    :cond_35
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    if-eqz v3, :cond_36

    .line 932
    .line 933
    const/16 v3, 0x8

    .line 934
    .line 935
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 936
    .line 937
    .line 938
    goto :goto_15

    .line 939
    :cond_36
    const/16 v3, 0x8

    .line 940
    .line 941
    :goto_15
    if-nez v9, :cond_37

    .line 942
    .line 943
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 944
    .line 945
    .line 946
    move-result v9

    .line 947
    if-eqz v9, :cond_37

    .line 948
    .line 949
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 950
    .line 951
    .line 952
    :cond_37
    const/4 v3, 0x3

    .line 953
    if-ge v11, v3, :cond_39

    .line 954
    .line 955
    invoke-virtual {v2}, Lj3/f;->n()V

    .line 956
    .line 957
    .line 958
    goto :goto_16

    .line 959
    :cond_38
    const/4 v3, 0x3

    .line 960
    :cond_39
    :goto_16
    if-nez v10, :cond_3a

    .line 961
    .line 962
    if-eq v7, v3, :cond_3a

    .line 963
    .line 964
    invoke-virtual {v2}, Lj3/f;->n()V

    .line 965
    .line 966
    .line 967
    :cond_3a
    const/4 v9, 0x2

    .line 968
    if-ne v10, v9, :cond_3c

    .line 969
    .line 970
    if-eq v7, v3, :cond_3b

    .line 971
    .line 972
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 973
    .line 974
    .line 975
    move-result v3

    .line 976
    if-eqz v3, :cond_3c

    .line 977
    .line 978
    :cond_3b
    const/4 v3, 0x6

    .line 979
    goto :goto_17

    .line 980
    :cond_3c
    const/4 v3, 0x6

    .line 981
    goto :goto_18

    .line 982
    :goto_17
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 983
    .line 984
    .line 985
    :goto_18
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 986
    .line 987
    .line 988
    move-result v7

    .line 989
    if-eqz v7, :cond_3d

    .line 990
    .line 991
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    const/4 v7, 0x1

    .line 996
    if-ne v3, v7, :cond_3d

    .line 997
    .line 998
    const/16 v3, 0x8

    .line 999
    .line 1000
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    if-ne v2, v7, :cond_3d

    .line 1005
    .line 1006
    const-string v2, "audio/eac3-joc"

    .line 1007
    .line 1008
    goto :goto_19

    .line 1009
    :cond_3d
    const-string v2, "audio/eac3"

    .line 1010
    .line 1011
    :goto_19
    move/from16 v7, v16

    .line 1012
    .line 1013
    goto :goto_1e

    .line 1014
    :cond_3e
    const/16 v3, 0x20

    .line 1015
    .line 1016
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 1017
    .line 1018
    .line 1019
    const/4 v3, 0x2

    .line 1020
    invoke-virtual {v2, v3}, Lj3/f;->g(I)I

    .line 1021
    .line 1022
    .line 1023
    move-result v4

    .line 1024
    const/4 v3, 0x3

    .line 1025
    if-ne v4, v3, :cond_3f

    .line 1026
    .line 1027
    const/4 v3, 0x0

    .line 1028
    :goto_1a
    const/4 v5, 0x6

    .line 1029
    goto :goto_1b

    .line 1030
    :cond_3f
    move-object v3, v14

    .line 1031
    goto :goto_1a

    .line 1032
    :goto_1b
    invoke-virtual {v2, v5}, Lj3/f;->g(I)I

    .line 1033
    .line 1034
    .line 1035
    move-result v5

    .line 1036
    sget-object v7, Ll2/b;->g:[I

    .line 1037
    .line 1038
    div-int/lit8 v9, v5, 0x2

    .line 1039
    .line 1040
    aget v7, v7, v9

    .line 1041
    .line 1042
    mul-int/lit16 v7, v7, 0x3e8

    .line 1043
    .line 1044
    invoke-static {v4, v5}, Ll2/b;->e(II)I

    .line 1045
    .line 1046
    .line 1047
    move-result v5

    .line 1048
    const/16 v9, 0x8

    .line 1049
    .line 1050
    invoke-virtual {v2, v9}, Lj3/f;->o(I)V

    .line 1051
    .line 1052
    .line 1053
    const/4 v9, 0x3

    .line 1054
    invoke-virtual {v2, v9}, Lj3/f;->g(I)I

    .line 1055
    .line 1056
    .line 1057
    move-result v10

    .line 1058
    and-int/lit8 v9, v10, 0x1

    .line 1059
    .line 1060
    if-eqz v9, :cond_40

    .line 1061
    .line 1062
    const/4 v9, 0x1

    .line 1063
    if-eq v10, v9, :cond_40

    .line 1064
    .line 1065
    const/4 v9, 0x2

    .line 1066
    invoke-virtual {v2, v9}, Lj3/f;->o(I)V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_1c

    .line 1070
    :cond_40
    const/4 v9, 0x2

    .line 1071
    :goto_1c
    and-int/lit8 v11, v10, 0x4

    .line 1072
    .line 1073
    if-eqz v11, :cond_41

    .line 1074
    .line 1075
    invoke-virtual {v2, v9}, Lj3/f;->o(I)V

    .line 1076
    .line 1077
    .line 1078
    :cond_41
    if-ne v10, v9, :cond_42

    .line 1079
    .line 1080
    invoke-virtual {v2, v9}, Lj3/f;->o(I)V

    .line 1081
    .line 1082
    .line 1083
    :cond_42
    const/4 v9, 0x3

    .line 1084
    if-ge v4, v9, :cond_43

    .line 1085
    .line 1086
    aget v15, v13, v4

    .line 1087
    .line 1088
    goto :goto_1d

    .line 1089
    :cond_43
    const/4 v15, -0x1

    .line 1090
    :goto_1d
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 1091
    .line 1092
    .line 1093
    move-result v2

    .line 1094
    aget v4, v8, v10

    .line 1095
    .line 1096
    add-int v8, v4, v2

    .line 1097
    .line 1098
    const/16 v4, 0x600

    .line 1099
    .line 1100
    move-object v2, v3

    .line 1101
    move v13, v15

    .line 1102
    :goto_1e
    iget-object v3, v0, Ls3/a;->m:Lr1/p;

    .line 1103
    .line 1104
    if-eqz v3, :cond_44

    .line 1105
    .line 1106
    iget v9, v3, Lr1/p;->G:I

    .line 1107
    .line 1108
    if-ne v8, v9, :cond_44

    .line 1109
    .line 1110
    iget v9, v3, Lr1/p;->H:I

    .line 1111
    .line 1112
    if-ne v13, v9, :cond_44

    .line 1113
    .line 1114
    iget-object v3, v3, Lr1/p;->o:Ljava/lang/String;

    .line 1115
    .line 1116
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v3

    .line 1120
    if-nez v3, :cond_46

    .line 1121
    .line 1122
    :cond_44
    new-instance v3, Lr1/o;

    .line 1123
    .line 1124
    invoke-direct {v3}, Lr1/o;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    iget-object v9, v0, Ls3/a;->g:Ljava/lang/String;

    .line 1128
    .line 1129
    iput-object v9, v3, Lr1/o;->a:Ljava/lang/String;

    .line 1130
    .line 1131
    iget-object v9, v0, Ls3/a;->f:Ljava/lang/String;

    .line 1132
    .line 1133
    invoke-static {v9}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v9

    .line 1137
    iput-object v9, v3, Lr1/o;->m:Ljava/lang/String;

    .line 1138
    .line 1139
    invoke-static {v2}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v9

    .line 1143
    iput-object v9, v3, Lr1/o;->n:Ljava/lang/String;

    .line 1144
    .line 1145
    iput v8, v3, Lr1/o;->F:I

    .line 1146
    .line 1147
    iput v13, v3, Lr1/o;->G:I

    .line 1148
    .line 1149
    iget-object v8, v0, Ls3/a;->d:Ljava/lang/String;

    .line 1150
    .line 1151
    iput-object v8, v3, Lr1/o;->d:Ljava/lang/String;

    .line 1152
    .line 1153
    iget v8, v0, Ls3/a;->e:I

    .line 1154
    .line 1155
    iput v8, v3, Lr1/o;->f:I

    .line 1156
    .line 1157
    iput v7, v3, Lr1/o;->i:I

    .line 1158
    .line 1159
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v2

    .line 1163
    if-eqz v2, :cond_45

    .line 1164
    .line 1165
    iput v7, v3, Lr1/o;->h:I

    .line 1166
    .line 1167
    :cond_45
    new-instance v2, Lr1/p;

    .line 1168
    .line 1169
    invoke-direct {v2, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 1170
    .line 1171
    .line 1172
    iput-object v2, v0, Ls3/a;->m:Lr1/p;

    .line 1173
    .line 1174
    iget-object v3, v0, Ls3/a;->h:Ll2/j0;

    .line 1175
    .line 1176
    invoke-interface {v3, v2}, Ll2/j0;->g(Lr1/p;)V

    .line 1177
    .line 1178
    .line 1179
    :cond_46
    iput v5, v0, Ls3/a;->n:I

    .line 1180
    .line 1181
    const-wide/32 v2, 0xf4240

    .line 1182
    .line 1183
    .line 1184
    int-to-long v4, v4

    .line 1185
    mul-long v4, v4, v2

    .line 1186
    .line 1187
    iget-object v2, v0, Ls3/a;->m:Lr1/p;

    .line 1188
    .line 1189
    iget v2, v2, Lr1/p;->H:I

    .line 1190
    .line 1191
    int-to-long v2, v2

    .line 1192
    div-long/2addr v4, v2

    .line 1193
    iput-wide v4, v0, Ls3/a;->l:J

    .line 1194
    .line 1195
    const/4 v2, 0x0

    .line 1196
    invoke-virtual {v6, v2}, Lu1/q;->O(I)V

    .line 1197
    .line 1198
    .line 1199
    iget-object v2, v0, Ls3/a;->h:Ll2/j0;

    .line 1200
    .line 1201
    const/16 v3, 0x80

    .line 1202
    .line 1203
    invoke-interface {v2, v3, v6}, Ll2/j0;->a(ILu1/q;)V

    .line 1204
    .line 1205
    .line 1206
    const/4 v2, 0x2

    .line 1207
    iput v2, v0, Ls3/a;->i:I

    .line 1208
    .line 1209
    goto/16 :goto_7

    .line 1210
    .line 1211
    :cond_47
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 1212
    .line 1213
    .line 1214
    move-result v2

    .line 1215
    if-lez v2, :cond_e

    .line 1216
    .line 1217
    iget-boolean v2, v0, Ls3/a;->k:Z

    .line 1218
    .line 1219
    if-nez v2, :cond_49

    .line 1220
    .line 1221
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 1222
    .line 1223
    .line 1224
    move-result v2

    .line 1225
    if-ne v2, v5, :cond_48

    .line 1226
    .line 1227
    const/4 v12, 0x1

    .line 1228
    goto :goto_20

    .line 1229
    :cond_48
    const/4 v12, 0x0

    .line 1230
    :goto_20
    iput-boolean v12, v0, Ls3/a;->k:Z

    .line 1231
    .line 1232
    goto :goto_1f

    .line 1233
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 1234
    .line 1235
    .line 1236
    move-result v2

    .line 1237
    const/16 v3, 0x77

    .line 1238
    .line 1239
    if-ne v2, v3, :cond_4a

    .line 1240
    .line 1241
    const/4 v12, 0x0

    .line 1242
    iput-boolean v12, v0, Ls3/a;->k:Z

    .line 1243
    .line 1244
    const/4 v4, 0x1

    .line 1245
    iput v4, v0, Ls3/a;->i:I

    .line 1246
    .line 1247
    iget-object v2, v6, Lu1/q;->a:[B

    .line 1248
    .line 1249
    aput-byte v5, v2, v12

    .line 1250
    .line 1251
    aput-byte v3, v2, v4

    .line 1252
    .line 1253
    const/4 v3, 0x2

    .line 1254
    iput v3, v0, Ls3/a;->j:I

    .line 1255
    .line 1256
    goto/16 :goto_7

    .line 1257
    .line 1258
    :cond_4a
    const/4 v3, 0x2

    .line 1259
    const/4 v4, 0x1

    .line 1260
    const/4 v12, 0x0

    .line 1261
    if-ne v2, v5, :cond_4b

    .line 1262
    .line 1263
    const/4 v2, 0x1

    .line 1264
    goto :goto_21

    .line 1265
    :cond_4b
    const/4 v2, 0x0

    .line 1266
    :goto_21
    iput-boolean v2, v0, Ls3/a;->k:Z

    .line 1267
    .line 1268
    goto :goto_1f

    .line 1269
    :cond_4c
    return-void

    .line 1270
    nop

    .line 1271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Ls3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ls3/a;->i:I

    .line 8
    .line 9
    iput v0, p0, Ls3/a;->j:I

    .line 10
    .line 11
    iput-boolean v0, p0, Ls3/a;->k:Z

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Ls3/a;->o:J

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Ls3/a;->i:I

    .line 23
    .line 24
    iput v0, p0, Ls3/a;->j:I

    .line 25
    .line 26
    iput-boolean v0, p0, Ls3/a;->k:Z

    .line 27
    .line 28
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide v0, p0, Ls3/a;->o:J

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iget p1, p0, Ls3/a;->a:I

    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iget p1, p0, Ls3/a;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Ls3/a;->o:J

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    iput-wide p2, p0, Ls3/a;->o:J

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ll2/q;Ls3/d0;)V
    .locals 1

    .line 1
    iget v0, p0, Ls3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Ls3/a;->g:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 19
    .line 20
    .line 21
    iget p2, p2, Ls3/d0;->d:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-interface {p1, p2, v0}, Ll2/q;->z(II)Ll2/j0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Ls3/a;->h:Ll2/j0;

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Ls3/a;->g:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 44
    .line 45
    .line 46
    iget p2, p2, Ls3/d0;->d:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-interface {p1, p2, v0}, Ll2/q;->z(II)Ll2/j0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Ls3/a;->h:Ll2/j0;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
