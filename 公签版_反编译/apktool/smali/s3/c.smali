.class public final Ls3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# static fields
.field public static final x:[B


# instance fields
.field public final a:Z

.field public final b:Lj3/f;

.field public final c:Lu1/q;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ll2/j0;

.field public i:Ll2/j0;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:Ll2/j0;

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls3/c;->x:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj3/f;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lj3/f;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ls3/c;->b:Lj3/f;

    .line 13
    .line 14
    new-instance v0, Lu1/q;

    .line 15
    .line 16
    sget-object v1, Ls3/c;->x:[B

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lu1/q;-><init>([B)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ls3/c;->c:Lu1/q;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Ls3/c;->o:I

    .line 31
    .line 32
    iput v0, p0, Ls3/c;->p:I

    .line 33
    .line 34
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iput-wide v0, p0, Ls3/c;->s:J

    .line 40
    .line 41
    iput-wide v0, p0, Ls3/c;->u:J

    .line 42
    .line 43
    iput-boolean p4, p0, Ls3/c;->a:Z

    .line 44
    .line 45
    iput-object p1, p0, Ls3/c;->d:Ljava/lang/String;

    .line 46
    .line 47
    iput p2, p0, Ls3/c;->e:I

    .line 48
    .line 49
    iput-object p3, p0, Ls3/c;->f:Ljava/lang/String;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Ls3/c;->j:I

    .line 53
    .line 54
    iput p1, p0, Ls3/c;->k:I

    .line 55
    .line 56
    const/16 p1, 0x100

    .line 57
    .line 58
    iput p1, p0, Ls3/c;->l:I

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lu1/q;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v4, 0x7

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x1

    .line 9
    iget-object v7, v0, Ls3/c;->h:Ll2/j0;

    .line 10
    .line 11
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v7, Lu1/f0;->a:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-lez v7, :cond_27

    .line 21
    .line 22
    iget v7, v0, Ls3/c;->j:I

    .line 23
    .line 24
    iget-object v8, v0, Ls3/c;->b:Lj3/f;

    .line 25
    .line 26
    const/16 v9, 0x100

    .line 27
    .line 28
    const/4 v10, 0x4

    .line 29
    const/4 v11, 0x3

    .line 30
    const/16 v12, 0xd

    .line 31
    .line 32
    iget-object v13, v0, Ls3/c;->c:Lu1/q;

    .line 33
    .line 34
    if-eqz v7, :cond_d

    .line 35
    .line 36
    if-eq v7, v6, :cond_9

    .line 37
    .line 38
    const/16 v14, 0xa

    .line 39
    .line 40
    if-eq v7, v5, :cond_8

    .line 41
    .line 42
    if-eq v7, v11, :cond_3

    .line 43
    .line 44
    if-ne v7, v10, :cond_2

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iget v8, v0, Ls3/c;->t:I

    .line 51
    .line 52
    iget v10, v0, Ls3/c;->k:I

    .line 53
    .line 54
    sub-int/2addr v8, v10

    .line 55
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget-object v8, v0, Ls3/c;->v:Ll2/j0;

    .line 60
    .line 61
    invoke-interface {v8, v7, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 62
    .line 63
    .line 64
    iget v8, v0, Ls3/c;->k:I

    .line 65
    .line 66
    add-int/2addr v8, v7

    .line 67
    iput v8, v0, Ls3/c;->k:I

    .line 68
    .line 69
    iget v7, v0, Ls3/c;->t:I

    .line 70
    .line 71
    if-ne v8, v7, :cond_0

    .line 72
    .line 73
    iget-wide v7, v0, Ls3/c;->u:J

    .line 74
    .line 75
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmp-long v12, v7, v10

    .line 81
    .line 82
    if-eqz v12, :cond_1

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v7, 0x0

    .line 87
    :goto_1
    invoke-static {v7}, La9/o;->t(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v10, v0, Ls3/c;->v:Ll2/j0;

    .line 91
    .line 92
    iget-wide v11, v0, Ls3/c;->u:J

    .line 93
    .line 94
    iget v14, v0, Ls3/c;->t:I

    .line 95
    .line 96
    const/4 v13, 0x1

    .line 97
    const/4 v15, 0x0

    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    invoke-interface/range {v10 .. v16}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 101
    .line 102
    .line 103
    iget-wide v7, v0, Ls3/c;->u:J

    .line 104
    .line 105
    iget-wide v10, v0, Ls3/c;->w:J

    .line 106
    .line 107
    add-long/2addr v7, v10

    .line 108
    iput-wide v7, v0, Ls3/c;->u:J

    .line 109
    .line 110
    iput v2, v0, Ls3/c;->j:I

    .line 111
    .line 112
    iput v2, v0, Ls3/c;->k:I

    .line 113
    .line 114
    iput v9, v0, Ls3/c;->l:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw v1

    .line 123
    :cond_3
    iget-boolean v7, v0, Ls3/c;->m:Z

    .line 124
    .line 125
    const/4 v9, 0x5

    .line 126
    if-eqz v7, :cond_4

    .line 127
    .line 128
    const/4 v7, 0x7

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 v7, 0x5

    .line 131
    :goto_2
    iget-object v13, v8, Lj3/f;->b:[B

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    iget v3, v0, Ls3/c;->k:I

    .line 138
    .line 139
    sub-int v3, v7, v3

    .line 140
    .line 141
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    iget v15, v0, Ls3/c;->k:I

    .line 146
    .line 147
    invoke-virtual {v1, v15, v3, v13}, Lu1/q;->l(II[B)V

    .line 148
    .line 149
    .line 150
    iget v13, v0, Ls3/c;->k:I

    .line 151
    .line 152
    add-int/2addr v13, v3

    .line 153
    iput v13, v0, Ls3/c;->k:I

    .line 154
    .line 155
    if-ne v13, v7, :cond_0

    .line 156
    .line 157
    invoke-virtual {v8, v2}, Lj3/f;->m(I)V

    .line 158
    .line 159
    .line 160
    iget-boolean v3, v0, Ls3/c;->r:Z

    .line 161
    .line 162
    if-nez v3, :cond_6

    .line 163
    .line 164
    invoke-virtual {v8, v5}, Lj3/f;->g(I)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    add-int/2addr v3, v6

    .line 169
    if-eq v3, v5, :cond_5

    .line 170
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v13, "Detected audio object type: "

    .line 174
    .line 175
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v3, ", but assuming AAC LC."

    .line 182
    .line 183
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-static {v3}, Lu1/a;->p(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const/4 v3, 0x2

    .line 194
    :cond_5
    invoke-virtual {v8, v9}, Lj3/f;->o(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8, v11}, Lj3/f;->g(I)I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    iget v9, v0, Ls3/c;->p:I

    .line 202
    .line 203
    shl-int/2addr v3, v11

    .line 204
    and-int/lit16 v3, v3, 0xf8

    .line 205
    .line 206
    shr-int/lit8 v13, v9, 0x1

    .line 207
    .line 208
    and-int/2addr v13, v4

    .line 209
    or-int/2addr v3, v13

    .line 210
    int-to-byte v3, v3

    .line 211
    shl-int/2addr v9, v4

    .line 212
    and-int/lit16 v9, v9, 0x80

    .line 213
    .line 214
    shl-int/2addr v7, v11

    .line 215
    and-int/lit8 v7, v7, 0x78

    .line 216
    .line 217
    or-int/2addr v7, v9

    .line 218
    int-to-byte v7, v7

    .line 219
    new-array v9, v5, [B

    .line 220
    .line 221
    aput-byte v3, v9, v2

    .line 222
    .line 223
    aput-byte v7, v9, v6

    .line 224
    .line 225
    new-instance v3, Lj3/f;

    .line 226
    .line 227
    invoke-direct {v3, v9, v5}, Lj3/f;-><init>([BI)V

    .line 228
    .line 229
    .line 230
    invoke-static {v3, v2}, Ll2/b;->o(Lj3/f;Z)Ll2/a;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    new-instance v7, Lr1/o;

    .line 235
    .line 236
    invoke-direct {v7}, Lr1/o;-><init>()V

    .line 237
    .line 238
    .line 239
    iget-object v11, v0, Ls3/c;->g:Ljava/lang/String;

    .line 240
    .line 241
    iput-object v11, v7, Lr1/o;->a:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v11, v0, Ls3/c;->f:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {v11}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    iput-object v11, v7, Lr1/o;->m:Ljava/lang/String;

    .line 250
    .line 251
    const-string v11, "audio/mp4a-latm"

    .line 252
    .line 253
    invoke-static {v11}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    iput-object v11, v7, Lr1/o;->n:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v11, v3, Ll2/a;->a:Ljava/lang/String;

    .line 260
    .line 261
    iput-object v11, v7, Lr1/o;->j:Ljava/lang/String;

    .line 262
    .line 263
    iget v11, v3, Ll2/a;->c:I

    .line 264
    .line 265
    iput v11, v7, Lr1/o;->F:I

    .line 266
    .line 267
    iget v3, v3, Ll2/a;->b:I

    .line 268
    .line 269
    iput v3, v7, Lr1/o;->G:I

    .line 270
    .line 271
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    iput-object v3, v7, Lr1/o;->q:Ljava/util/List;

    .line 276
    .line 277
    iget-object v3, v0, Ls3/c;->d:Ljava/lang/String;

    .line 278
    .line 279
    iput-object v3, v7, Lr1/o;->d:Ljava/lang/String;

    .line 280
    .line 281
    iget v3, v0, Ls3/c;->e:I

    .line 282
    .line 283
    iput v3, v7, Lr1/o;->f:I

    .line 284
    .line 285
    new-instance v3, Lr1/p;

    .line 286
    .line 287
    invoke-direct {v3, v7}, Lr1/p;-><init>(Lr1/o;)V

    .line 288
    .line 289
    .line 290
    iget v7, v3, Lr1/p;->H:I

    .line 291
    .line 292
    int-to-long v13, v7

    .line 293
    const-wide/32 v17, 0x3d090000

    .line 294
    .line 295
    .line 296
    div-long v13, v17, v13

    .line 297
    .line 298
    iput-wide v13, v0, Ls3/c;->s:J

    .line 299
    .line 300
    iget-object v7, v0, Ls3/c;->h:Ll2/j0;

    .line 301
    .line 302
    invoke-interface {v7, v3}, Ll2/j0;->g(Lr1/p;)V

    .line 303
    .line 304
    .line 305
    iput-boolean v6, v0, Ls3/c;->r:Z

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_6
    invoke-virtual {v8, v14}, Lj3/f;->o(I)V

    .line 309
    .line 310
    .line 311
    :goto_3
    invoke-virtual {v8, v10}, Lj3/f;->o(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8, v12}, Lj3/f;->g(I)I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    add-int/lit8 v7, v3, -0x7

    .line 319
    .line 320
    iget-boolean v8, v0, Ls3/c;->m:Z

    .line 321
    .line 322
    if-eqz v8, :cond_7

    .line 323
    .line 324
    add-int/lit8 v7, v3, -0x9

    .line 325
    .line 326
    :cond_7
    iget-object v3, v0, Ls3/c;->h:Ll2/j0;

    .line 327
    .line 328
    iget-wide v8, v0, Ls3/c;->s:J

    .line 329
    .line 330
    iput v10, v0, Ls3/c;->j:I

    .line 331
    .line 332
    iput v2, v0, Ls3/c;->k:I

    .line 333
    .line 334
    iput-object v3, v0, Ls3/c;->v:Ll2/j0;

    .line 335
    .line 336
    iput-wide v8, v0, Ls3/c;->w:J

    .line 337
    .line 338
    iput v7, v0, Ls3/c;->t:I

    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_8
    iget-object v3, v13, Lu1/q;->a:[B

    .line 343
    .line 344
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    iget v8, v0, Ls3/c;->k:I

    .line 349
    .line 350
    rsub-int/lit8 v8, v8, 0xa

    .line 351
    .line 352
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    iget v8, v0, Ls3/c;->k:I

    .line 357
    .line 358
    invoke-virtual {v1, v8, v7, v3}, Lu1/q;->l(II[B)V

    .line 359
    .line 360
    .line 361
    iget v3, v0, Ls3/c;->k:I

    .line 362
    .line 363
    add-int/2addr v3, v7

    .line 364
    iput v3, v0, Ls3/c;->k:I

    .line 365
    .line 366
    if-ne v3, v14, :cond_0

    .line 367
    .line 368
    iget-object v3, v0, Ls3/c;->i:Ll2/j0;

    .line 369
    .line 370
    invoke-interface {v3, v14, v13}, Ll2/j0;->a(ILu1/q;)V

    .line 371
    .line 372
    .line 373
    const/4 v3, 0x6

    .line 374
    invoke-virtual {v13, v3}, Lu1/q;->O(I)V

    .line 375
    .line 376
    .line 377
    iget-object v3, v0, Ls3/c;->i:Ll2/j0;

    .line 378
    .line 379
    invoke-virtual {v13}, Lu1/q;->A()I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    add-int/2addr v7, v14

    .line 384
    iput v10, v0, Ls3/c;->j:I

    .line 385
    .line 386
    iput v14, v0, Ls3/c;->k:I

    .line 387
    .line 388
    iput-object v3, v0, Ls3/c;->v:Ll2/j0;

    .line 389
    .line 390
    const-wide/16 v8, 0x0

    .line 391
    .line 392
    iput-wide v8, v0, Ls3/c;->w:J

    .line 393
    .line 394
    iput v7, v0, Ls3/c;->t:I

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-nez v3, :cond_a

    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_a
    iget-object v3, v8, Lj3/f;->b:[B

    .line 407
    .line 408
    iget-object v7, v1, Lu1/q;->a:[B

    .line 409
    .line 410
    iget v12, v1, Lu1/q;->b:I

    .line 411
    .line 412
    aget-byte v7, v7, v12

    .line 413
    .line 414
    aput-byte v7, v3, v2

    .line 415
    .line 416
    invoke-virtual {v8, v5}, Lj3/f;->m(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v8, v10}, Lj3/f;->g(I)I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    iget v7, v0, Ls3/c;->p:I

    .line 424
    .line 425
    const/4 v8, -0x1

    .line 426
    if-eq v7, v8, :cond_b

    .line 427
    .line 428
    if-eq v3, v7, :cond_b

    .line 429
    .line 430
    iput-boolean v2, v0, Ls3/c;->n:Z

    .line 431
    .line 432
    iput v2, v0, Ls3/c;->j:I

    .line 433
    .line 434
    iput v2, v0, Ls3/c;->k:I

    .line 435
    .line 436
    iput v9, v0, Ls3/c;->l:I

    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_b
    iget-boolean v7, v0, Ls3/c;->n:Z

    .line 441
    .line 442
    if-nez v7, :cond_c

    .line 443
    .line 444
    iput-boolean v6, v0, Ls3/c;->n:Z

    .line 445
    .line 446
    iget v7, v0, Ls3/c;->q:I

    .line 447
    .line 448
    iput v7, v0, Ls3/c;->o:I

    .line 449
    .line 450
    iput v3, v0, Ls3/c;->p:I

    .line 451
    .line 452
    :cond_c
    iput v11, v0, Ls3/c;->j:I

    .line 453
    .line 454
    iput v2, v0, Ls3/c;->k:I

    .line 455
    .line 456
    goto/16 :goto_0

    .line 457
    .line 458
    :cond_d
    iget-object v3, v1, Lu1/q;->a:[B

    .line 459
    .line 460
    iget v7, v1, Lu1/q;->b:I

    .line 461
    .line 462
    iget v14, v1, Lu1/q;->c:I

    .line 463
    .line 464
    :goto_4
    if-ge v7, v14, :cond_26

    .line 465
    .line 466
    add-int/lit8 v15, v7, 0x1

    .line 467
    .line 468
    aget-byte v9, v3, v7

    .line 469
    .line 470
    and-int/lit16 v11, v9, 0xff

    .line 471
    .line 472
    iget v4, v0, Ls3/c;->l:I

    .line 473
    .line 474
    const/16 v12, 0x200

    .line 475
    .line 476
    if-ne v4, v12, :cond_1f

    .line 477
    .line 478
    int-to-byte v4, v11

    .line 479
    and-int/lit16 v4, v4, 0xff

    .line 480
    .line 481
    const v19, 0xff00

    .line 482
    .line 483
    .line 484
    or-int v4, v19, v4

    .line 485
    .line 486
    const v20, 0xfff6

    .line 487
    .line 488
    .line 489
    and-int v4, v4, v20

    .line 490
    .line 491
    const v12, 0xfff0

    .line 492
    .line 493
    .line 494
    if-ne v4, v12, :cond_1f

    .line 495
    .line 496
    iget-boolean v4, v0, Ls3/c;->n:Z

    .line 497
    .line 498
    if-nez v4, :cond_1c

    .line 499
    .line 500
    const/4 v4, -0x1

    .line 501
    add-int/lit8 v21, v7, -0x1

    .line 502
    .line 503
    invoke-virtual {v1, v7}, Lu1/q;->O(I)V

    .line 504
    .line 505
    .line 506
    iget-object v4, v8, Lj3/f;->b:[B

    .line 507
    .line 508
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 509
    .line 510
    .line 511
    move-result v12

    .line 512
    if-ge v12, v6, :cond_e

    .line 513
    .line 514
    goto/16 :goto_a

    .line 515
    .line 516
    :cond_e
    invoke-virtual {v1, v2, v6, v4}, Lu1/q;->l(II[B)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v8, v10}, Lj3/f;->m(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v8, v6}, Lj3/f;->g(I)I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    iget v12, v0, Ls3/c;->o:I

    .line 527
    .line 528
    const/4 v10, -0x1

    .line 529
    if-eq v12, v10, :cond_f

    .line 530
    .line 531
    if-eq v4, v12, :cond_f

    .line 532
    .line 533
    goto/16 :goto_a

    .line 534
    .line 535
    :cond_f
    iget v12, v0, Ls3/c;->p:I

    .line 536
    .line 537
    if-eq v12, v10, :cond_12

    .line 538
    .line 539
    iget-object v10, v8, Lj3/f;->b:[B

    .line 540
    .line 541
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 542
    .line 543
    .line 544
    move-result v12

    .line 545
    if-ge v12, v6, :cond_10

    .line 546
    .line 547
    goto/16 :goto_6

    .line 548
    .line 549
    :cond_10
    invoke-virtual {v1, v2, v6, v10}, Lu1/q;->l(II[B)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v8, v5}, Lj3/f;->m(I)V

    .line 553
    .line 554
    .line 555
    const/4 v10, 0x4

    .line 556
    invoke-virtual {v8, v10}, Lj3/f;->g(I)I

    .line 557
    .line 558
    .line 559
    move-result v12

    .line 560
    iget v5, v0, Ls3/c;->p:I

    .line 561
    .line 562
    if-eq v12, v5, :cond_11

    .line 563
    .line 564
    goto/16 :goto_a

    .line 565
    .line 566
    :cond_11
    invoke-virtual {v1, v15}, Lu1/q;->O(I)V

    .line 567
    .line 568
    .line 569
    goto :goto_5

    .line 570
    :cond_12
    const/4 v10, 0x4

    .line 571
    :goto_5
    iget-object v5, v8, Lj3/f;->b:[B

    .line 572
    .line 573
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 574
    .line 575
    .line 576
    move-result v12

    .line 577
    if-ge v12, v10, :cond_13

    .line 578
    .line 579
    goto :goto_6

    .line 580
    :cond_13
    invoke-virtual {v1, v2, v10, v5}, Lu1/q;->l(II[B)V

    .line 581
    .line 582
    .line 583
    const/16 v5, 0xe

    .line 584
    .line 585
    invoke-virtual {v8, v5}, Lj3/f;->m(I)V

    .line 586
    .line 587
    .line 588
    const/16 v5, 0xd

    .line 589
    .line 590
    invoke-virtual {v8, v5}, Lj3/f;->g(I)I

    .line 591
    .line 592
    .line 593
    move-result v12

    .line 594
    const/4 v5, 0x7

    .line 595
    if-ge v12, v5, :cond_14

    .line 596
    .line 597
    goto/16 :goto_a

    .line 598
    .line 599
    :cond_14
    iget-object v5, v1, Lu1/q;->a:[B

    .line 600
    .line 601
    iget v10, v1, Lu1/q;->c:I

    .line 602
    .line 603
    add-int v12, v21, v12

    .line 604
    .line 605
    if-lt v12, v10, :cond_15

    .line 606
    .line 607
    goto :goto_6

    .line 608
    :cond_15
    aget-byte v2, v5, v12

    .line 609
    .line 610
    move-object/from16 v22, v3

    .line 611
    .line 612
    const/4 v3, -0x1

    .line 613
    if-ne v2, v3, :cond_17

    .line 614
    .line 615
    add-int/2addr v12, v6

    .line 616
    if-ne v12, v10, :cond_16

    .line 617
    .line 618
    goto :goto_7

    .line 619
    :cond_16
    aget-byte v2, v5, v12

    .line 620
    .line 621
    and-int/lit16 v5, v2, 0xff

    .line 622
    .line 623
    or-int v5, v19, v5

    .line 624
    .line 625
    and-int v5, v5, v20

    .line 626
    .line 627
    const v10, 0xfff0

    .line 628
    .line 629
    .line 630
    if-ne v5, v10, :cond_20

    .line 631
    .line 632
    and-int/lit8 v2, v2, 0x8

    .line 633
    .line 634
    const/4 v5, 0x3

    .line 635
    shr-int/2addr v2, v5

    .line 636
    if-ne v2, v4, :cond_20

    .line 637
    .line 638
    goto :goto_7

    .line 639
    :cond_17
    const/16 v4, 0x49

    .line 640
    .line 641
    if-eq v2, v4, :cond_18

    .line 642
    .line 643
    goto :goto_b

    .line 644
    :cond_18
    add-int/lit8 v2, v12, 0x1

    .line 645
    .line 646
    if-ne v2, v10, :cond_19

    .line 647
    .line 648
    goto :goto_7

    .line 649
    :cond_19
    aget-byte v2, v5, v2

    .line 650
    .line 651
    const/16 v4, 0x44

    .line 652
    .line 653
    if-eq v2, v4, :cond_1a

    .line 654
    .line 655
    goto :goto_b

    .line 656
    :cond_1a
    const/4 v2, 0x2

    .line 657
    add-int/2addr v12, v2

    .line 658
    if-ne v12, v10, :cond_1b

    .line 659
    .line 660
    goto :goto_7

    .line 661
    :cond_1b
    aget-byte v2, v5, v12

    .line 662
    .line 663
    const/16 v4, 0x33

    .line 664
    .line 665
    if-ne v2, v4, :cond_20

    .line 666
    .line 667
    goto :goto_7

    .line 668
    :cond_1c
    :goto_6
    const/4 v3, -0x1

    .line 669
    :goto_7
    and-int/lit8 v2, v9, 0x8

    .line 670
    .line 671
    const/4 v4, 0x3

    .line 672
    shr-int/2addr v2, v4

    .line 673
    iput v2, v0, Ls3/c;->q:I

    .line 674
    .line 675
    and-int/lit8 v2, v9, 0x1

    .line 676
    .line 677
    if-nez v2, :cond_1d

    .line 678
    .line 679
    const/4 v2, 0x1

    .line 680
    goto :goto_8

    .line 681
    :cond_1d
    const/4 v2, 0x0

    .line 682
    :goto_8
    iput-boolean v2, v0, Ls3/c;->m:Z

    .line 683
    .line 684
    iget-boolean v2, v0, Ls3/c;->n:Z

    .line 685
    .line 686
    if-nez v2, :cond_1e

    .line 687
    .line 688
    iput v6, v0, Ls3/c;->j:I

    .line 689
    .line 690
    const/4 v2, 0x0

    .line 691
    iput v2, v0, Ls3/c;->k:I

    .line 692
    .line 693
    goto :goto_9

    .line 694
    :cond_1e
    const/4 v2, 0x0

    .line 695
    const/4 v4, 0x3

    .line 696
    iput v4, v0, Ls3/c;->j:I

    .line 697
    .line 698
    iput v2, v0, Ls3/c;->k:I

    .line 699
    .line 700
    :goto_9
    invoke-virtual {v1, v15}, Lu1/q;->O(I)V

    .line 701
    .line 702
    .line 703
    const/4 v2, 0x2

    .line 704
    const/4 v9, 0x0

    .line 705
    goto :goto_e

    .line 706
    :cond_1f
    :goto_a
    move-object/from16 v22, v3

    .line 707
    .line 708
    const/4 v3, -0x1

    .line 709
    :cond_20
    :goto_b
    iget v2, v0, Ls3/c;->l:I

    .line 710
    .line 711
    or-int v4, v2, v11

    .line 712
    .line 713
    const/16 v5, 0x149

    .line 714
    .line 715
    if-eq v4, v5, :cond_25

    .line 716
    .line 717
    const/16 v5, 0x1ff

    .line 718
    .line 719
    if-eq v4, v5, :cond_24

    .line 720
    .line 721
    const/16 v5, 0x344

    .line 722
    .line 723
    if-eq v4, v5, :cond_23

    .line 724
    .line 725
    const/16 v5, 0x433

    .line 726
    .line 727
    if-eq v4, v5, :cond_22

    .line 728
    .line 729
    const/16 v4, 0x100

    .line 730
    .line 731
    if-eq v2, v4, :cond_21

    .line 732
    .line 733
    iput v4, v0, Ls3/c;->l:I

    .line 734
    .line 735
    const/4 v2, 0x2

    .line 736
    const/4 v5, 0x3

    .line 737
    const/4 v9, 0x0

    .line 738
    goto :goto_d

    .line 739
    :cond_21
    const/4 v2, 0x2

    .line 740
    const/4 v5, 0x3

    .line 741
    const/4 v9, 0x0

    .line 742
    goto :goto_c

    .line 743
    :cond_22
    const/4 v2, 0x2

    .line 744
    iput v2, v0, Ls3/c;->j:I

    .line 745
    .line 746
    const/4 v5, 0x3

    .line 747
    iput v5, v0, Ls3/c;->k:I

    .line 748
    .line 749
    const/4 v9, 0x0

    .line 750
    iput v9, v0, Ls3/c;->t:I

    .line 751
    .line 752
    invoke-virtual {v13, v9}, Lu1/q;->O(I)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v15}, Lu1/q;->O(I)V

    .line 756
    .line 757
    .line 758
    goto :goto_e

    .line 759
    :cond_23
    const/4 v2, 0x2

    .line 760
    const/16 v4, 0x100

    .line 761
    .line 762
    const/4 v5, 0x3

    .line 763
    const/4 v9, 0x0

    .line 764
    const/16 v7, 0x400

    .line 765
    .line 766
    iput v7, v0, Ls3/c;->l:I

    .line 767
    .line 768
    goto :goto_c

    .line 769
    :cond_24
    const/4 v2, 0x2

    .line 770
    const/16 v4, 0x100

    .line 771
    .line 772
    const/4 v5, 0x3

    .line 773
    const/16 v7, 0x200

    .line 774
    .line 775
    const/4 v9, 0x0

    .line 776
    iput v7, v0, Ls3/c;->l:I

    .line 777
    .line 778
    goto :goto_c

    .line 779
    :cond_25
    const/4 v2, 0x2

    .line 780
    const/16 v4, 0x100

    .line 781
    .line 782
    const/4 v5, 0x3

    .line 783
    const/4 v9, 0x0

    .line 784
    const/16 v7, 0x300

    .line 785
    .line 786
    iput v7, v0, Ls3/c;->l:I

    .line 787
    .line 788
    :goto_c
    move v7, v15

    .line 789
    :goto_d
    move-object/from16 v3, v22

    .line 790
    .line 791
    const/4 v2, 0x0

    .line 792
    const/4 v4, 0x7

    .line 793
    const/4 v5, 0x2

    .line 794
    const/16 v9, 0x100

    .line 795
    .line 796
    const/4 v10, 0x4

    .line 797
    const/4 v11, 0x3

    .line 798
    const/16 v12, 0xd

    .line 799
    .line 800
    goto/16 :goto_4

    .line 801
    .line 802
    :cond_26
    const/4 v2, 0x2

    .line 803
    const/4 v3, -0x1

    .line 804
    const/4 v9, 0x0

    .line 805
    invoke-virtual {v1, v7}, Lu1/q;->O(I)V

    .line 806
    .line 807
    .line 808
    :goto_e
    const/4 v2, 0x0

    .line 809
    const/4 v4, 0x7

    .line 810
    const/4 v5, 0x2

    .line 811
    goto/16 :goto_0

    .line 812
    .line 813
    :cond_27
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Ls3/c;->u:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Ls3/c;->n:Z

    .line 10
    .line 11
    iput v0, p0, Ls3/c;->j:I

    .line 12
    .line 13
    iput v0, p0, Ls3/c;->k:I

    .line 14
    .line 15
    const/16 v0, 0x100

    .line 16
    .line 17
    iput v0, p0, Ls3/c;->l:I

    .line 18
    .line 19
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
    iput-wide p2, p0, Ls3/c;->u:J

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ll2/q;Ls3/d0;)V
    .locals 2

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
    iput-object v0, p0, Ls3/c;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 14
    .line 15
    .line 16
    iget v0, p2, Ls3/d0;->d:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-interface {p1, v0, v1}, Ll2/q;->z(II)Ll2/j0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Ls3/c;->h:Ll2/j0;

    .line 24
    .line 25
    iput-object v0, p0, Ls3/c;->v:Ll2/j0;

    .line 26
    .line 27
    iget-boolean v0, p0, Ls3/c;->a:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Ls3/d0;->m()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 35
    .line 36
    .line 37
    iget v0, p2, Ls3/d0;->d:I

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    invoke-interface {p1, v0, v1}, Ll2/q;->z(II)Ll2/j0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Ls3/c;->i:Ll2/j0;

    .line 45
    .line 46
    new-instance v0, Lr1/o;

    .line 47
    .line 48
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ls3/d0;->n()V

    .line 52
    .line 53
    .line 54
    iget-object p2, p2, Ls3/d0;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Ljava/lang/String;

    .line 57
    .line 58
    iput-object p2, v0, Lr1/o;->a:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p2, p0, Ls3/c;->f:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p2}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, v0, Lr1/o;->m:Ljava/lang/String;

    .line 67
    .line 68
    const-string p2, "application/id3"

    .line 69
    .line 70
    invoke-static {p2}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, v0, Lr1/o;->n:Ljava/lang/String;

    .line 75
    .line 76
    new-instance p2, Lr1/p;

    .line 77
    .line 78
    invoke-direct {p2, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, p2}, Ll2/j0;->g(Lr1/p;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ll2/n;

    .line 86
    .line 87
    invoke-direct {p1}, Ll2/n;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Ls3/c;->i:Ll2/j0;

    .line 91
    .line 92
    :goto_0
    return-void
.end method
