.class public final Le3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# static fields
.field public static final v:La2/u0;


# instance fields
.field public final a:I

.field public final b:Lu1/q;

.field public final c:Ll2/a0;

.field public final d:Ll2/v;

.field public final e:Ll2/x;

.field public final f:Ll2/n;

.field public g:Lf2/u0;

.field public h:Ll2/j0;

.field public i:Ll2/j0;

.field public j:I

.field public k:Lr1/d0;

.field public l:Lr1/d0;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:I

.field public r:Le3/i;

.field public s:Z

.field public t:Z

.field public u:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La2/u0;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, La2/u0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Le3/e;->v:La2/u0;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le3/e;->a:I

    .line 6
    .line 7
    new-instance v0, Lu1/q;

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lu1/q;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Le3/e;->b:Lu1/q;

    .line 15
    .line 16
    new-instance v0, Ll2/a0;

    .line 17
    .line 18
    invoke-direct {v0}, Ll2/a0;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Le3/e;->c:Ll2/a0;

    .line 22
    .line 23
    new-instance v0, Ll2/v;

    .line 24
    .line 25
    invoke-direct {v0}, Ll2/v;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Le3/e;->d:Ll2/v;

    .line 29
    .line 30
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide v0, p0, Le3/e;->m:J

    .line 36
    .line 37
    new-instance v0, Ll2/x;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, v1}, Ll2/x;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Le3/e;->e:Ll2/x;

    .line 44
    .line 45
    new-instance v0, Ll2/n;

    .line 46
    .line 47
    invoke-direct {v0}, Ll2/n;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Le3/e;->f:Ll2/n;

    .line 51
    .line 52
    iput-object v0, p0, Le3/e;->i:Ll2/j0;

    .line 53
    .line 54
    const-wide/16 v0, -0x1

    .line 55
    .line 56
    iput-wide v0, p0, Le3/e;->p:J

    .line 57
    .line 58
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
    iput-object p1, p0, Le3/e;->g:Lf2/u0;

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
    move-result-object p1

    .line 11
    iput-object p1, p0, Le3/e;->h:Ll2/j0;

    .line 12
    .line 13
    iput-object p1, p0, Le3/e;->i:Ll2/j0;

    .line 14
    .line 15
    iget-object p1, p0, Le3/e;->g:Lf2/u0;

    .line 16
    .line 17
    invoke-virtual {p1}, Lf2/u0;->q()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x4

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x1

    .line 9
    iget-object v8, v0, Le3/e;->h:Ll2/j0;

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v8, Lu1/f0;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget v8, v0, Le3/e;->j:I

    .line 17
    .line 18
    iget-object v11, v0, Le3/e;->c:Ll2/a0;

    .line 19
    .line 20
    if-nez v8, :cond_0

    .line 21
    .line 22
    :try_start_0
    move-object v8, v1

    .line 23
    check-cast v8, Ll2/l;

    .line 24
    .line 25
    invoke-virtual {v0, v8, v6}, Le3/e;->k(Ll2/l;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    nop

    .line 30
    move-object v7, v0

    .line 31
    move-object v1, v11

    .line 32
    const/4 v0, -0x1

    .line 33
    const/4 v8, -0x1

    .line 34
    goto/16 :goto_33

    .line 35
    .line 36
    :cond_0
    :goto_0
    iget-object v8, v0, Le3/e;->r:Le3/i;

    .line 37
    .line 38
    if-nez v8, :cond_38

    .line 39
    .line 40
    new-instance v8, Lu1/q;

    .line 41
    .line 42
    iget v15, v11, Ll2/a0;->b:I

    .line 43
    .line 44
    invoke-direct {v8, v15}, Lu1/q;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iget-object v15, v8, Lu1/q;->a:[B

    .line 48
    .line 49
    iget v9, v11, Ll2/a0;->b:I

    .line 50
    .line 51
    move-object v10, v1

    .line 52
    check-cast v10, Ll2/l;

    .line 53
    .line 54
    invoke-virtual {v10, v6, v9, v15}, Ll2/l;->a(II[B)V

    .line 55
    .line 56
    .line 57
    iget v9, v11, Ll2/a0;->a:I

    .line 58
    .line 59
    and-int/2addr v9, v7

    .line 60
    const/16 v15, 0x24

    .line 61
    .line 62
    if-eqz v9, :cond_2

    .line 63
    .line 64
    iget v9, v11, Ll2/a0;->d:I

    .line 65
    .line 66
    if-eq v9, v7, :cond_1

    .line 67
    .line 68
    const/16 v9, 0x24

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    const/16 v9, 0x15

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget v9, v11, Ll2/a0;->d:I

    .line 75
    .line 76
    if-eq v9, v7, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/16 v9, 0xd

    .line 80
    .line 81
    :goto_2
    iget v13, v8, Lu1/q;->c:I

    .line 82
    .line 83
    add-int/lit8 v14, v9, 0x4

    .line 84
    .line 85
    const v2, 0x56425249

    .line 86
    .line 87
    .line 88
    const v3, 0x496e666f

    .line 89
    .line 90
    .line 91
    const v6, 0x58696e67

    .line 92
    .line 93
    .line 94
    if-lt v13, v14, :cond_4

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Lu1/q;->O(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eq v9, v6, :cond_6

    .line 104
    .line 105
    if-ne v9, v3, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    iget v9, v8, Lu1/q;->c:I

    .line 109
    .line 110
    const/16 v13, 0x28

    .line 111
    .line 112
    if-lt v9, v13, :cond_5

    .line 113
    .line 114
    invoke-virtual {v8, v15}, Lu1/q;->O(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-ne v9, v2, :cond_5

    .line 122
    .line 123
    const v9, 0x56425249

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    const/4 v9, 0x0

    .line 128
    :cond_6
    :goto_3
    iget-object v13, v0, Le3/e;->d:Ll2/v;

    .line 129
    .line 130
    const-wide/16 v18, -0x1

    .line 131
    .line 132
    const-wide/16 v20, 0x1

    .line 133
    .line 134
    if-eq v9, v3, :cond_8

    .line 135
    .line 136
    if-eq v9, v2, :cond_9

    .line 137
    .line 138
    if-eq v9, v6, :cond_8

    .line 139
    .line 140
    invoke-interface {v10}, Ll2/p;->h()V

    .line 141
    .line 142
    .line 143
    move-object v7, v0

    .line 144
    move-object v3, v10

    .line 145
    move-object v1, v11

    .line 146
    move-object v8, v13

    .line 147
    :cond_7
    :goto_4
    const/4 v0, 0x0

    .line 148
    goto/16 :goto_1e

    .line 149
    .line 150
    :cond_8
    move-object/from16 v23, v8

    .line 151
    .line 152
    move-object v3, v10

    .line 153
    move-object v1, v11

    .line 154
    move-object/from16 v35, v13

    .line 155
    .line 156
    goto/16 :goto_a

    .line 157
    .line 158
    :cond_9
    invoke-interface {v10}, Ll2/p;->getLength()J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    invoke-interface {v10}, Ll2/p;->getPosition()J

    .line 163
    .line 164
    .line 165
    move-result-wide v22

    .line 166
    const/4 v6, 0x6

    .line 167
    invoke-virtual {v8, v6}, Lu1/q;->P(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    iget v9, v11, Ll2/a0;->b:I

    .line 175
    .line 176
    int-to-long v14, v9

    .line 177
    add-long v30, v22, v14

    .line 178
    .line 179
    int-to-long v14, v6

    .line 180
    add-long v14, v30, v14

    .line 181
    .line 182
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-gtz v6, :cond_a

    .line 187
    .line 188
    move-object/from16 v37, v10

    .line 189
    .line 190
    move-object v1, v11

    .line 191
    move-object/from16 v35, v13

    .line 192
    .line 193
    :goto_5
    const/4 v0, 0x0

    .line 194
    goto/16 :goto_9

    .line 195
    .line 196
    :cond_a
    iget v9, v11, Ll2/a0;->c:I

    .line 197
    .line 198
    move-object/from16 v35, v13

    .line 199
    .line 200
    int-to-long v12, v6

    .line 201
    iget v6, v11, Ll2/a0;->f:I

    .line 202
    .line 203
    int-to-long v5, v6

    .line 204
    mul-long v12, v12, v5

    .line 205
    .line 206
    sub-long v12, v12, v20

    .line 207
    .line 208
    invoke-static {v9, v12, v13}, Lu1/f0;->K(IJ)J

    .line 209
    .line 210
    .line 211
    move-result-wide v28

    .line 212
    invoke-virtual {v8}, Lu1/q;->I()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-virtual {v8}, Lu1/q;->I()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    invoke-virtual {v8}, Lu1/q;->I()I

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    invoke-virtual {v8, v4}, Lu1/q;->P(I)V

    .line 225
    .line 226
    .line 227
    iget v12, v11, Ll2/a0;->b:I

    .line 228
    .line 229
    int-to-long v12, v12

    .line 230
    add-long v22, v22, v12

    .line 231
    .line 232
    new-array v12, v5, [J

    .line 233
    .line 234
    new-array v13, v5, [J

    .line 235
    .line 236
    const/4 v4, 0x0

    .line 237
    move-wide/from16 v45, v22

    .line 238
    .line 239
    move-object/from16 v23, v8

    .line 240
    .line 241
    move-wide/from16 v7, v45

    .line 242
    .line 243
    :goto_6
    if-ge v4, v5, :cond_f

    .line 244
    .line 245
    int-to-long v0, v4

    .line 246
    mul-long v0, v0, v28

    .line 247
    .line 248
    move-object/from16 v37, v10

    .line 249
    .line 250
    move-object/from16 v36, v11

    .line 251
    .line 252
    int-to-long v10, v5

    .line 253
    div-long/2addr v0, v10

    .line 254
    aput-wide v0, v12, v4

    .line 255
    .line 256
    aput-wide v7, v13, v4

    .line 257
    .line 258
    const/4 v0, 0x1

    .line 259
    if-eq v9, v0, :cond_e

    .line 260
    .line 261
    const/4 v0, 0x2

    .line 262
    if-eq v9, v0, :cond_d

    .line 263
    .line 264
    const/4 v0, 0x3

    .line 265
    if-eq v9, v0, :cond_c

    .line 266
    .line 267
    const/4 v0, 0x4

    .line 268
    if-eq v9, v0, :cond_b

    .line 269
    .line 270
    move-object/from16 v1, v36

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lu1/q;->F()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    goto :goto_7

    .line 278
    :cond_c
    invoke-virtual/range {v23 .. v23}, Lu1/q;->E()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    goto :goto_7

    .line 283
    :cond_d
    invoke-virtual/range {v23 .. v23}, Lu1/q;->I()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    goto :goto_7

    .line 288
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lu1/q;->B()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    :goto_7
    int-to-long v0, v0

    .line 293
    int-to-long v10, v6

    .line 294
    mul-long v0, v0, v10

    .line 295
    .line 296
    add-long/2addr v7, v0

    .line 297
    const/4 v0, 0x1

    .line 298
    add-int/2addr v4, v0

    .line 299
    move-object/from16 v0, p0

    .line 300
    .line 301
    move-object/from16 v1, p1

    .line 302
    .line 303
    move-object/from16 v11, v36

    .line 304
    .line 305
    move-object/from16 v10, v37

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_f
    move-object/from16 v37, v10

    .line 309
    .line 310
    move-object/from16 v36, v11

    .line 311
    .line 312
    const-string v0, ", "

    .line 313
    .line 314
    cmp-long v1, v2, v18

    .line 315
    .line 316
    if-eqz v1, :cond_10

    .line 317
    .line 318
    cmp-long v1, v2, v14

    .line 319
    .line 320
    if-eqz v1, :cond_10

    .line 321
    .line 322
    const-string v1, "VBRI data size mismatch: "

    .line 323
    .line 324
    invoke-static {v2, v3, v1, v0}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-static {v1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :cond_10
    cmp-long v1, v14, v7

    .line 339
    .line 340
    if-eqz v1, :cond_11

    .line 341
    .line 342
    const-string v1, "VBRI bytes and ToC mismatch (using max): "

    .line 343
    .line 344
    invoke-static {v14, v15, v1, v0}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v1, "\nSeeking will be inaccurate."

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 364
    .line 365
    .line 366
    move-result-wide v0

    .line 367
    move-wide/from16 v32, v0

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_11
    move-wide/from16 v32, v14

    .line 371
    .line 372
    :goto_8
    new-instance v0, Le3/j;

    .line 373
    .line 374
    move-object/from16 v1, v36

    .line 375
    .line 376
    iget v2, v1, Ll2/a0;->e:I

    .line 377
    .line 378
    move-object/from16 v25, v0

    .line 379
    .line 380
    move-object/from16 v26, v12

    .line 381
    .line 382
    move-object/from16 v27, v13

    .line 383
    .line 384
    move/from16 v34, v2

    .line 385
    .line 386
    invoke-direct/range {v25 .. v34}, Le3/j;-><init>([J[JJJJI)V

    .line 387
    .line 388
    .line 389
    :goto_9
    iget v2, v1, Ll2/a0;->b:I

    .line 390
    .line 391
    move-object/from16 v3, v37

    .line 392
    .line 393
    invoke-interface {v3, v2}, Ll2/p;->i(I)V

    .line 394
    .line 395
    .line 396
    move-object/from16 v7, p0

    .line 397
    .line 398
    move-object/from16 v8, v35

    .line 399
    .line 400
    goto/16 :goto_1e

    .line 401
    .line 402
    :goto_a
    invoke-virtual/range {v23 .. v23}, Lu1/q;->o()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    const/4 v2, 0x1

    .line 407
    and-int/lit8 v4, v0, 0x1

    .line 408
    .line 409
    if-eqz v4, :cond_12

    .line 410
    .line 411
    invoke-virtual/range {v23 .. v23}, Lu1/q;->F()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    :goto_b
    const/4 v4, 0x2

    .line 416
    goto :goto_c

    .line 417
    :cond_12
    const/4 v2, -0x1

    .line 418
    goto :goto_b

    .line 419
    :goto_c
    and-int/lit8 v5, v0, 0x2

    .line 420
    .line 421
    if-eqz v5, :cond_13

    .line 422
    .line 423
    invoke-virtual/range {v23 .. v23}, Lu1/q;->D()J

    .line 424
    .line 425
    .line 426
    move-result-wide v4

    .line 427
    :goto_d
    const/4 v7, 0x4

    .line 428
    goto :goto_e

    .line 429
    :cond_13
    move-wide/from16 v4, v18

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :goto_e
    and-int/lit8 v8, v0, 0x4

    .line 433
    .line 434
    if-ne v8, v7, :cond_15

    .line 435
    .line 436
    const/16 v7, 0x64

    .line 437
    .line 438
    new-array v8, v7, [J

    .line 439
    .line 440
    const/4 v10, 0x0

    .line 441
    :goto_f
    if-ge v10, v7, :cond_14

    .line 442
    .line 443
    invoke-virtual/range {v23 .. v23}, Lu1/q;->B()I

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    int-to-long v11, v11

    .line 448
    aput-wide v11, v8, v10

    .line 449
    .line 450
    const/4 v11, 0x1

    .line 451
    add-int/2addr v10, v11

    .line 452
    goto :goto_f

    .line 453
    :cond_14
    move-object/from16 v34, v8

    .line 454
    .line 455
    goto :goto_10

    .line 456
    :cond_15
    const/16 v34, 0x0

    .line 457
    .line 458
    :goto_10
    and-int/lit8 v0, v0, 0x8

    .line 459
    .line 460
    if-eqz v0, :cond_16

    .line 461
    .line 462
    move-object/from16 v0, v23

    .line 463
    .line 464
    const/4 v7, 0x4

    .line 465
    invoke-virtual {v0, v7}, Lu1/q;->P(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_11

    .line 469
    :cond_16
    move-object/from16 v0, v23

    .line 470
    .line 471
    :goto_11
    invoke-virtual {v0}, Lu1/q;->a()I

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    const/16 v8, 0x18

    .line 476
    .line 477
    if-lt v7, v8, :cond_18

    .line 478
    .line 479
    const/16 v7, 0xb

    .line 480
    .line 481
    invoke-virtual {v0, v7}, Lu1/q;->P(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Lu1/q;->n()F

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 489
    .line 490
    .line 491
    move-result v8

    .line 492
    invoke-virtual {v0}, Lu1/q;->I()I

    .line 493
    .line 494
    .line 495
    move-result v10

    .line 496
    invoke-static {v8}, Le3/f;->a(I)Le3/f;

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    invoke-static {v10}, Le3/f;->a(I)Le3/f;

    .line 501
    .line 502
    .line 503
    move-result-object v10

    .line 504
    const/4 v11, 0x0

    .line 505
    cmpg-float v11, v7, v11

    .line 506
    .line 507
    if-gtz v11, :cond_17

    .line 508
    .line 509
    if-nez v8, :cond_17

    .line 510
    .line 511
    if-nez v10, :cond_17

    .line 512
    .line 513
    const/4 v7, 0x2

    .line 514
    const/4 v11, 0x0

    .line 515
    goto :goto_12

    .line 516
    :cond_17
    new-instance v11, Le3/g;

    .line 517
    .line 518
    invoke-direct {v11, v7, v8, v10}, Le3/g;-><init>(FLe3/f;Le3/f;)V

    .line 519
    .line 520
    .line 521
    const/4 v7, 0x2

    .line 522
    :goto_12
    invoke-virtual {v0, v7}, Lu1/q;->P(I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Lu1/q;->E()I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    const v7, 0xfff000

    .line 530
    .line 531
    .line 532
    and-int/2addr v7, v0

    .line 533
    shr-int/lit8 v7, v7, 0xc

    .line 534
    .line 535
    and-int/lit16 v0, v0, 0xfff

    .line 536
    .line 537
    goto :goto_13

    .line 538
    :cond_18
    const/4 v0, -0x1

    .line 539
    const/4 v7, -0x1

    .line 540
    const/4 v11, 0x0

    .line 541
    :goto_13
    int-to-long v12, v2

    .line 542
    new-instance v2, Ll2/a0;

    .line 543
    .line 544
    invoke-direct {v2, v1}, Ll2/a0;-><init>(Ll2/a0;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {v35 .. v35}, Ll2/v;->a()Z

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-nez v8, :cond_19

    .line 552
    .line 553
    const/4 v8, -0x1

    .line 554
    if-eq v7, v8, :cond_19

    .line 555
    .line 556
    if-eq v0, v8, :cond_19

    .line 557
    .line 558
    move-object/from16 v8, v35

    .line 559
    .line 560
    iput v7, v8, Ll2/v;->a:I

    .line 561
    .line 562
    iput v0, v8, Ll2/v;->b:I

    .line 563
    .line 564
    goto :goto_14

    .line 565
    :cond_19
    move-object/from16 v8, v35

    .line 566
    .line 567
    :goto_14
    if-eqz v11, :cond_1a

    .line 568
    .line 569
    new-instance v0, Lr1/d0;

    .line 570
    .line 571
    const/4 v7, 0x1

    .line 572
    new-array v10, v7, [Lr1/c0;

    .line 573
    .line 574
    const/4 v7, 0x0

    .line 575
    aput-object v11, v10, v7

    .line 576
    .line 577
    invoke-direct {v0, v10}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 578
    .line 579
    .line 580
    :goto_15
    move-object/from16 v7, p0

    .line 581
    .line 582
    goto :goto_16

    .line 583
    :cond_1a
    const/4 v0, 0x0

    .line 584
    goto :goto_15

    .line 585
    :goto_16
    iput-object v0, v7, Le3/e;->l:Lr1/d0;

    .line 586
    .line 587
    invoke-interface {v3}, Ll2/p;->getPosition()J

    .line 588
    .line 589
    .line 590
    move-result-wide v26

    .line 591
    iget v0, v1, Ll2/a0;->b:I

    .line 592
    .line 593
    invoke-interface {v3, v0}, Ll2/p;->i(I)V

    .line 594
    .line 595
    .line 596
    if-ne v9, v6, :cond_1f

    .line 597
    .line 598
    invoke-interface {v3}, Ll2/p;->getLength()J

    .line 599
    .line 600
    .line 601
    move-result-wide v9

    .line 602
    cmp-long v0, v12, v18

    .line 603
    .line 604
    if-eqz v0, :cond_1c

    .line 605
    .line 606
    const-wide/16 v14, 0x0

    .line 607
    .line 608
    cmp-long v0, v12, v14

    .line 609
    .line 610
    if-nez v0, :cond_1b

    .line 611
    .line 612
    goto :goto_17

    .line 613
    :cond_1b
    iget v0, v2, Ll2/a0;->f:I

    .line 614
    .line 615
    int-to-long v14, v0

    .line 616
    mul-long v12, v12, v14

    .line 617
    .line 618
    sub-long v12, v12, v20

    .line 619
    .line 620
    iget v0, v2, Ll2/a0;->c:I

    .line 621
    .line 622
    invoke-static {v0, v12, v13}, Lu1/f0;->K(IJ)J

    .line 623
    .line 624
    .line 625
    move-result-wide v11

    .line 626
    move-wide/from16 v29, v11

    .line 627
    .line 628
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    goto :goto_18

    .line 634
    :cond_1c
    :goto_17
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    :goto_18
    cmp-long v0, v29, v11

    .line 645
    .line 646
    if-nez v0, :cond_1d

    .line 647
    .line 648
    :goto_19
    goto/16 :goto_4

    .line 649
    .line 650
    :cond_1d
    cmp-long v0, v4, v18

    .line 651
    .line 652
    if-eqz v0, :cond_1e

    .line 653
    .line 654
    cmp-long v0, v9, v18

    .line 655
    .line 656
    if-eqz v0, :cond_1e

    .line 657
    .line 658
    add-long v11, v26, v4

    .line 659
    .line 660
    cmp-long v0, v11, v9

    .line 661
    .line 662
    if-eqz v0, :cond_1e

    .line 663
    .line 664
    sub-long v9, v9, v26

    .line 665
    .line 666
    const-string v0, "Data size mismatch between stream ("

    .line 667
    .line 668
    const-string v6, ") and Xing frame ("

    .line 669
    .line 670
    invoke-static {v9, v10, v0, v6}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const-string v6, "), using smaller value."

    .line 678
    .line 679
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-static {v0}, Lu1/a;->j(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 690
    .line 691
    .line 692
    move-result-wide v4

    .line 693
    :cond_1e
    move-wide/from16 v32, v4

    .line 694
    .line 695
    new-instance v0, Le3/k;

    .line 696
    .line 697
    iget v4, v2, Ll2/a0;->b:I

    .line 698
    .line 699
    iget v2, v2, Ll2/a0;->e:I

    .line 700
    .line 701
    move-object/from16 v25, v0

    .line 702
    .line 703
    move/from16 v28, v4

    .line 704
    .line 705
    move/from16 v31, v2

    .line 706
    .line 707
    invoke-direct/range {v25 .. v34}, Le3/k;-><init>(JIJIJ[J)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_1e

    .line 711
    .line 712
    :cond_1f
    invoke-interface {v3}, Ll2/p;->getLength()J

    .line 713
    .line 714
    .line 715
    move-result-wide v9

    .line 716
    cmp-long v0, v12, v18

    .line 717
    .line 718
    if-eqz v0, :cond_21

    .line 719
    .line 720
    const-wide/16 v14, 0x0

    .line 721
    .line 722
    cmp-long v0, v12, v14

    .line 723
    .line 724
    if-nez v0, :cond_20

    .line 725
    .line 726
    goto :goto_1a

    .line 727
    :cond_20
    iget v0, v2, Ll2/a0;->f:I

    .line 728
    .line 729
    int-to-long v14, v0

    .line 730
    mul-long v14, v14, v12

    .line 731
    .line 732
    sub-long v14, v14, v20

    .line 733
    .line 734
    iget v0, v2, Ll2/a0;->c:I

    .line 735
    .line 736
    invoke-static {v0, v14, v15}, Lu1/f0;->K(IJ)J

    .line 737
    .line 738
    .line 739
    move-result-wide v14

    .line 740
    move-wide/from16 v32, v14

    .line 741
    .line 742
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    goto :goto_1b

    .line 748
    :cond_21
    :goto_1a
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    :goto_1b
    cmp-long v0, v32, v14

    .line 759
    .line 760
    if-nez v0, :cond_22

    .line 761
    .line 762
    goto :goto_19

    .line 763
    :cond_22
    cmp-long v0, v4, v18

    .line 764
    .line 765
    if-eqz v0, :cond_23

    .line 766
    .line 767
    add-long v9, v26, v4

    .line 768
    .line 769
    iget v0, v2, Ll2/a0;->b:I

    .line 770
    .line 771
    :goto_1c
    int-to-long v14, v0

    .line 772
    sub-long/2addr v4, v14

    .line 773
    move-wide/from16 v37, v9

    .line 774
    .line 775
    goto :goto_1d

    .line 776
    :cond_23
    cmp-long v0, v9, v18

    .line 777
    .line 778
    if-eqz v0, :cond_7

    .line 779
    .line 780
    sub-long v4, v9, v26

    .line 781
    .line 782
    iget v0, v2, Ll2/a0;->b:I

    .line 783
    .line 784
    goto :goto_1c

    .line 785
    :goto_1d
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 786
    .line 787
    const-wide/32 v30, 0x7a1200

    .line 788
    .line 789
    .line 790
    move-wide/from16 v28, v4

    .line 791
    .line 792
    move-object/from16 v34, v0

    .line 793
    .line 794
    invoke-static/range {v28 .. v34}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 795
    .line 796
    .line 797
    move-result-wide v9

    .line 798
    invoke-static {v9, v10}, Ld/b;->h(J)I

    .line 799
    .line 800
    .line 801
    move-result v41

    .line 802
    invoke-static {v4, v5, v12, v13, v0}, Ld/b;->q(JJLjava/math/RoundingMode;)J

    .line 803
    .line 804
    .line 805
    move-result-wide v4

    .line 806
    invoke-static {v4, v5}, Ld/b;->h(J)I

    .line 807
    .line 808
    .line 809
    move-result v42

    .line 810
    new-instance v0, Le3/a;

    .line 811
    .line 812
    iget v2, v2, Ll2/a0;->b:I

    .line 813
    .line 814
    int-to-long v4, v2

    .line 815
    add-long v39, v26, v4

    .line 816
    .line 817
    const/16 v44, 0x1

    .line 818
    .line 819
    const/16 v43, 0x0

    .line 820
    .line 821
    move-object/from16 v36, v0

    .line 822
    .line 823
    invoke-direct/range {v36 .. v44}, Le3/a;-><init>(JJIIZZ)V

    .line 824
    .line 825
    .line 826
    :goto_1e
    iget-object v2, v7, Le3/e;->k:Lr1/d0;

    .line 827
    .line 828
    invoke-interface {v3}, Ll2/p;->getPosition()J

    .line 829
    .line 830
    .line 831
    move-result-wide v4

    .line 832
    if-nez v2, :cond_24

    .line 833
    .line 834
    :goto_1f
    move-object/from16 v35, v8

    .line 835
    .line 836
    const/4 v2, 0x0

    .line 837
    goto/16 :goto_22

    .line 838
    .line 839
    :cond_24
    sget-object v6, Lt7/k;->a:Lt7/g;

    .line 840
    .line 841
    const-class v9, Lz2/l;

    .line 842
    .line 843
    invoke-virtual {v2, v9, v6}, Lr1/d0;->c(Ljava/lang/Class;Lt7/e;)Lr1/c0;

    .line 844
    .line 845
    .line 846
    move-result-object v6

    .line 847
    check-cast v6, Lz2/l;

    .line 848
    .line 849
    if-nez v6, :cond_25

    .line 850
    .line 851
    goto :goto_1f

    .line 852
    :cond_25
    new-instance v9, Le3/d;

    .line 853
    .line 854
    const/4 v10, 0x0

    .line 855
    invoke-direct {v9, v10}, Le3/d;-><init>(I)V

    .line 856
    .line 857
    .line 858
    const-class v11, Lz2/n;

    .line 859
    .line 860
    invoke-virtual {v2, v11, v9}, Lr1/d0;->c(Ljava/lang/Class;Lt7/e;)Lr1/c0;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    check-cast v2, Lz2/n;

    .line 865
    .line 866
    if-nez v2, :cond_26

    .line 867
    .line 868
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    goto :goto_20

    .line 874
    :cond_26
    iget-object v2, v2, Lz2/n;->c:Lu7/g0;

    .line 875
    .line 876
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    check-cast v2, Ljava/lang/String;

    .line 881
    .line 882
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 883
    .line 884
    .line 885
    move-result-wide v11

    .line 886
    invoke-static {v11, v12}, Lu1/f0;->G(J)J

    .line 887
    .line 888
    .line 889
    move-result-wide v11

    .line 890
    :goto_20
    iget-object v2, v6, Lz2/l;->e:[I

    .line 891
    .line 892
    array-length v9, v2

    .line 893
    const/16 v22, 0x1

    .line 894
    .line 895
    add-int/lit8 v13, v9, 0x1

    .line 896
    .line 897
    new-array v14, v13, [J

    .line 898
    .line 899
    new-array v13, v13, [J

    .line 900
    .line 901
    aput-wide v4, v14, v10

    .line 902
    .line 903
    const-wide/16 v16, 0x0

    .line 904
    .line 905
    aput-wide v16, v13, v10

    .line 906
    .line 907
    const/4 v10, 0x1

    .line 908
    const-wide/16 v20, 0x0

    .line 909
    .line 910
    :goto_21
    if-gt v10, v9, :cond_27

    .line 911
    .line 912
    add-int/lit8 v15, v10, -0x1

    .line 913
    .line 914
    aget v23, v2, v15

    .line 915
    .line 916
    move-object/from16 v25, v2

    .line 917
    .line 918
    iget v2, v6, Lz2/l;->c:I

    .line 919
    .line 920
    add-int v2, v2, v23

    .line 921
    .line 922
    move-object/from16 v35, v8

    .line 923
    .line 924
    move/from16 v23, v9

    .line 925
    .line 926
    int-to-long v8, v2

    .line 927
    add-long/2addr v4, v8

    .line 928
    iget-object v2, v6, Lz2/l;->f:[I

    .line 929
    .line 930
    aget v2, v2, v15

    .line 931
    .line 932
    iget v8, v6, Lz2/l;->d:I

    .line 933
    .line 934
    add-int/2addr v8, v2

    .line 935
    int-to-long v8, v8

    .line 936
    add-long v20, v20, v8

    .line 937
    .line 938
    aput-wide v4, v14, v10

    .line 939
    .line 940
    aput-wide v20, v13, v10

    .line 941
    .line 942
    const/4 v2, 0x1

    .line 943
    add-int/2addr v10, v2

    .line 944
    move/from16 v9, v23

    .line 945
    .line 946
    move-object/from16 v2, v25

    .line 947
    .line 948
    move-object/from16 v8, v35

    .line 949
    .line 950
    const/16 v22, 0x1

    .line 951
    .line 952
    goto :goto_21

    .line 953
    :cond_27
    move-object/from16 v35, v8

    .line 954
    .line 955
    new-instance v2, Le3/c;

    .line 956
    .line 957
    invoke-direct {v2, v11, v12, v14, v13}, Le3/c;-><init>(J[J[J)V

    .line 958
    .line 959
    .line 960
    :goto_22
    iget-boolean v4, v7, Le3/e;->s:Z

    .line 961
    .line 962
    iget v5, v7, Le3/e;->a:I

    .line 963
    .line 964
    if-eqz v4, :cond_28

    .line 965
    .line 966
    new-instance v0, Le3/h;

    .line 967
    .line 968
    invoke-direct {v0}, Le3/h;-><init>()V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_2a

    .line 972
    .line 973
    :cond_28
    if-eqz v2, :cond_29

    .line 974
    .line 975
    move-object v14, v2

    .line 976
    goto :goto_23

    .line 977
    :cond_29
    if-eqz v0, :cond_2a

    .line 978
    .line 979
    move-object v14, v0

    .line 980
    goto :goto_23

    .line 981
    :cond_2a
    const/4 v14, 0x0

    .line 982
    :goto_23
    if-nez v14, :cond_2c

    .line 983
    .line 984
    const/4 v0, 0x2

    .line 985
    and-int/lit8 v2, v5, 0x2

    .line 986
    .line 987
    if-eqz v2, :cond_2b

    .line 988
    .line 989
    const/4 v0, 0x1

    .line 990
    goto :goto_24

    .line 991
    :cond_2b
    const/4 v0, 0x0

    .line 992
    :goto_24
    invoke-virtual {v7, v3, v0}, Le3/e;->h(Ll2/l;Z)Le3/a;

    .line 993
    .line 994
    .line 995
    move-result-object v14

    .line 996
    :cond_2c
    const/4 v0, 0x4

    .line 997
    and-int/2addr v0, v5

    .line 998
    if-eqz v0, :cond_2d

    .line 999
    .line 1000
    invoke-interface {v14}, Ll2/c0;->c()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v0

    .line 1004
    if-nez v0, :cond_2d

    .line 1005
    .line 1006
    new-instance v0, Le3/b;

    .line 1007
    .line 1008
    invoke-interface {v14}, Ll2/c0;->h()J

    .line 1009
    .line 1010
    .line 1011
    move-result-wide v24

    .line 1012
    invoke-interface {v3}, Ll2/p;->getPosition()J

    .line 1013
    .line 1014
    .line 1015
    move-result-wide v26

    .line 1016
    invoke-interface {v14}, Le3/i;->a()J

    .line 1017
    .line 1018
    .line 1019
    move-result-wide v28

    .line 1020
    move-object/from16 v23, v0

    .line 1021
    .line 1022
    invoke-direct/range {v23 .. v29}, Le3/b;-><init>(JJJ)V

    .line 1023
    .line 1024
    .line 1025
    move-object v14, v0

    .line 1026
    :cond_2d
    invoke-interface {v14}, Ll2/c0;->c()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v0

    .line 1030
    if-nez v0, :cond_31

    .line 1031
    .line 1032
    instance-of v0, v14, Le3/a;

    .line 1033
    .line 1034
    if-nez v0, :cond_31

    .line 1035
    .line 1036
    const/4 v0, 0x1

    .line 1037
    and-int/lit8 v2, v5, 0x1

    .line 1038
    .line 1039
    if-eqz v2, :cond_31

    .line 1040
    .line 1041
    invoke-interface {v14}, Ll2/c0;->h()J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v8

    .line 1045
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    cmp-long v0, v8, v10

    .line 1051
    .line 1052
    if-eqz v0, :cond_31

    .line 1053
    .line 1054
    invoke-interface {v14}, Le3/i;->a()J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v8

    .line 1058
    cmp-long v0, v8, v18

    .line 1059
    .line 1060
    if-nez v0, :cond_2e

    .line 1061
    .line 1062
    invoke-interface {v3}, Ll2/p;->getLength()J

    .line 1063
    .line 1064
    .line 1065
    move-result-wide v8

    .line 1066
    cmp-long v0, v8, v18

    .line 1067
    .line 1068
    if-eqz v0, :cond_31

    .line 1069
    .line 1070
    :cond_2e
    invoke-interface {v14}, Le3/i;->b()J

    .line 1071
    .line 1072
    .line 1073
    move-result-wide v8

    .line 1074
    cmp-long v0, v8, v18

    .line 1075
    .line 1076
    if-eqz v0, :cond_2f

    .line 1077
    .line 1078
    invoke-interface {v14}, Le3/i;->b()J

    .line 1079
    .line 1080
    .line 1081
    move-result-wide v8

    .line 1082
    move-wide/from16 v26, v8

    .line 1083
    .line 1084
    goto :goto_25

    .line 1085
    :cond_2f
    const-wide/16 v26, 0x0

    .line 1086
    .line 1087
    :goto_25
    invoke-interface {v14}, Le3/i;->a()J

    .line 1088
    .line 1089
    .line 1090
    move-result-wide v8

    .line 1091
    cmp-long v0, v8, v18

    .line 1092
    .line 1093
    if-eqz v0, :cond_30

    .line 1094
    .line 1095
    invoke-interface {v14}, Le3/i;->a()J

    .line 1096
    .line 1097
    .line 1098
    move-result-wide v8

    .line 1099
    :goto_26
    move-wide/from16 v24, v8

    .line 1100
    .line 1101
    goto :goto_27

    .line 1102
    :cond_30
    invoke-interface {v3}, Ll2/p;->getLength()J

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v8

    .line 1106
    goto :goto_26

    .line 1107
    :goto_27
    sub-long v28, v24, v26

    .line 1108
    .line 1109
    invoke-interface {v14}, Ll2/c0;->h()J

    .line 1110
    .line 1111
    .line 1112
    move-result-wide v32

    .line 1113
    sget-object v34, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 1114
    .line 1115
    const-wide/32 v30, 0x7a1200

    .line 1116
    .line 1117
    .line 1118
    invoke-static/range {v28 .. v34}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 1119
    .line 1120
    .line 1121
    move-result-wide v8

    .line 1122
    invoke-static {v8, v9}, Ld/b;->i0(J)I

    .line 1123
    .line 1124
    .line 1125
    move-result v28

    .line 1126
    new-instance v0, Le3/a;

    .line 1127
    .line 1128
    const/16 v30, 0x0

    .line 1129
    .line 1130
    const/16 v31, 0x1

    .line 1131
    .line 1132
    const/16 v29, -0x1

    .line 1133
    .line 1134
    move-object/from16 v23, v0

    .line 1135
    .line 1136
    invoke-direct/range {v23 .. v31}, Le3/a;-><init>(JJIIZZ)V

    .line 1137
    .line 1138
    .line 1139
    goto :goto_29

    .line 1140
    :cond_31
    invoke-interface {v14}, Ll2/c0;->c()Z

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    if-nez v0, :cond_33

    .line 1145
    .line 1146
    instance-of v0, v14, Le3/a;

    .line 1147
    .line 1148
    if-nez v0, :cond_33

    .line 1149
    .line 1150
    const/4 v0, 0x1

    .line 1151
    and-int/lit8 v2, v5, 0x1

    .line 1152
    .line 1153
    if-eqz v2, :cond_33

    .line 1154
    .line 1155
    const/4 v0, 0x2

    .line 1156
    and-int/2addr v0, v5

    .line 1157
    if-eqz v0, :cond_32

    .line 1158
    .line 1159
    const/4 v0, 0x1

    .line 1160
    goto :goto_28

    .line 1161
    :cond_32
    const/4 v0, 0x0

    .line 1162
    :goto_28
    invoke-virtual {v7, v3, v0}, Le3/e;->h(Ll2/l;Z)Le3/a;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    goto :goto_29

    .line 1167
    :cond_33
    move-object v0, v14

    .line 1168
    :goto_29
    iget-object v2, v7, Le3/e;->h:Ll2/j0;

    .line 1169
    .line 1170
    invoke-interface {v0}, Ll2/c0;->h()J

    .line 1171
    .line 1172
    .line 1173
    move-result-wide v8

    .line 1174
    invoke-interface {v2, v8, v9}, Ll2/j0;->d(J)V

    .line 1175
    .line 1176
    .line 1177
    :goto_2a
    iput-object v0, v7, Le3/e;->r:Le3/i;

    .line 1178
    .line 1179
    iget-object v2, v7, Le3/e;->g:Lf2/u0;

    .line 1180
    .line 1181
    invoke-virtual {v2, v0}, Lf2/u0;->s(Ll2/c0;)V

    .line 1182
    .line 1183
    .line 1184
    iget-object v0, v7, Le3/e;->k:Lr1/d0;

    .line 1185
    .line 1186
    if-eqz v0, :cond_34

    .line 1187
    .line 1188
    and-int/lit8 v2, v5, 0x8

    .line 1189
    .line 1190
    if-nez v2, :cond_34

    .line 1191
    .line 1192
    iget-object v2, v7, Le3/e;->l:Lr1/d0;

    .line 1193
    .line 1194
    if-eqz v2, :cond_35

    .line 1195
    .line 1196
    invoke-virtual {v0, v2}, Lr1/d0;->b(Lr1/d0;)Lr1/d0;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    goto :goto_2b

    .line 1201
    :cond_34
    iget-object v0, v7, Le3/e;->l:Lr1/d0;

    .line 1202
    .line 1203
    :cond_35
    :goto_2b
    new-instance v2, Lr1/o;

    .line 1204
    .line 1205
    invoke-direct {v2}, Lr1/o;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    const-string v4, "audio/mpeg"

    .line 1209
    .line 1210
    invoke-virtual {v2, v4}, Lr1/o;->b(Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    iget-object v4, v1, Ll2/a0;->g:Ljava/io/Serializable;

    .line 1214
    .line 1215
    check-cast v4, Ljava/lang/String;

    .line 1216
    .line 1217
    invoke-virtual {v2, v4}, Lr1/o;->c(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    const/16 v4, 0x1000

    .line 1221
    .line 1222
    iput v4, v2, Lr1/o;->o:I

    .line 1223
    .line 1224
    iget v4, v1, Ll2/a0;->d:I

    .line 1225
    .line 1226
    iput v4, v2, Lr1/o;->F:I

    .line 1227
    .line 1228
    iget v4, v1, Ll2/a0;->c:I

    .line 1229
    .line 1230
    iput v4, v2, Lr1/o;->G:I

    .line 1231
    .line 1232
    move-object/from16 v4, v35

    .line 1233
    .line 1234
    iget v5, v4, Ll2/v;->a:I

    .line 1235
    .line 1236
    iput v5, v2, Lr1/o;->I:I

    .line 1237
    .line 1238
    iget v4, v4, Ll2/v;->b:I

    .line 1239
    .line 1240
    iput v4, v2, Lr1/o;->J:I

    .line 1241
    .line 1242
    iput-object v0, v2, Lr1/o;->k:Lr1/d0;

    .line 1243
    .line 1244
    iget-object v0, v7, Le3/e;->r:Le3/i;

    .line 1245
    .line 1246
    invoke-interface {v0}, Le3/i;->g()I

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    const v4, -0x7fffffff

    .line 1251
    .line 1252
    .line 1253
    if-eq v0, v4, :cond_36

    .line 1254
    .line 1255
    iget-object v0, v7, Le3/e;->r:Le3/i;

    .line 1256
    .line 1257
    invoke-interface {v0}, Le3/i;->g()I

    .line 1258
    .line 1259
    .line 1260
    move-result v0

    .line 1261
    iput v0, v2, Lr1/o;->h:I

    .line 1262
    .line 1263
    :cond_36
    iget-object v0, v7, Le3/e;->i:Ll2/j0;

    .line 1264
    .line 1265
    invoke-virtual {v2}, Lr1/o;->a()Lr1/p;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    invoke-interface {v0, v2}, Ll2/j0;->g(Lr1/p;)V

    .line 1270
    .line 1271
    .line 1272
    invoke-interface {v3}, Ll2/p;->getPosition()J

    .line 1273
    .line 1274
    .line 1275
    move-result-wide v2

    .line 1276
    iput-wide v2, v7, Le3/e;->o:J

    .line 1277
    .line 1278
    :cond_37
    move-object/from16 v0, p1

    .line 1279
    .line 1280
    goto :goto_2c

    .line 1281
    :cond_38
    move-object v7, v0

    .line 1282
    move-object v1, v11

    .line 1283
    iget-wide v2, v7, Le3/e;->o:J

    .line 1284
    .line 1285
    const-wide/16 v4, 0x0

    .line 1286
    .line 1287
    cmp-long v0, v2, v4

    .line 1288
    .line 1289
    if-eqz v0, :cond_37

    .line 1290
    .line 1291
    move-object/from16 v0, p1

    .line 1292
    .line 1293
    move-object v2, v0

    .line 1294
    check-cast v2, Ll2/l;

    .line 1295
    .line 1296
    invoke-virtual {v2}, Ll2/l;->getPosition()J

    .line 1297
    .line 1298
    .line 1299
    move-result-wide v3

    .line 1300
    iget-wide v5, v7, Le3/e;->o:J

    .line 1301
    .line 1302
    cmp-long v8, v3, v5

    .line 1303
    .line 1304
    if-gez v8, :cond_39

    .line 1305
    .line 1306
    sub-long/2addr v5, v3

    .line 1307
    long-to-int v3, v5

    .line 1308
    invoke-interface {v2, v3}, Ll2/p;->i(I)V

    .line 1309
    .line 1310
    .line 1311
    :cond_39
    :goto_2c
    iget v2, v7, Le3/e;->q:I

    .line 1312
    .line 1313
    if-nez v2, :cond_3f

    .line 1314
    .line 1315
    move-object v2, v0

    .line 1316
    check-cast v2, Ll2/l;

    .line 1317
    .line 1318
    invoke-virtual {v2}, Ll2/l;->h()V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v7, v2}, Le3/e;->j(Ll2/l;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v3

    .line 1325
    if-eqz v3, :cond_3a

    .line 1326
    .line 1327
    :goto_2d
    const/4 v6, -0x1

    .line 1328
    goto/16 :goto_32

    .line 1329
    .line 1330
    :cond_3a
    iget-object v3, v7, Le3/e;->b:Lu1/q;

    .line 1331
    .line 1332
    const/4 v4, 0x0

    .line 1333
    invoke-virtual {v3, v4}, Lu1/q;->O(I)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v3}, Lu1/q;->o()I

    .line 1337
    .line 1338
    .line 1339
    move-result v3

    .line 1340
    iget v4, v7, Le3/e;->j:I

    .line 1341
    .line 1342
    int-to-long v4, v4

    .line 1343
    const v6, -0x1f400

    .line 1344
    .line 1345
    .line 1346
    and-int/2addr v6, v3

    .line 1347
    int-to-long v8, v6

    .line 1348
    const-wide/32 v10, -0x1f400

    .line 1349
    .line 1350
    .line 1351
    and-long/2addr v4, v10

    .line 1352
    cmp-long v6, v8, v4

    .line 1353
    .line 1354
    if-nez v6, :cond_3b

    .line 1355
    .line 1356
    invoke-static {v3}, Ll2/b;->h(I)I

    .line 1357
    .line 1358
    .line 1359
    move-result v4

    .line 1360
    const/4 v5, -0x1

    .line 1361
    if-ne v4, v5, :cond_3c

    .line 1362
    .line 1363
    :cond_3b
    const/4 v3, 0x0

    .line 1364
    const/4 v4, 0x1

    .line 1365
    goto :goto_2f

    .line 1366
    :cond_3c
    invoke-virtual {v1, v3}, Ll2/a0;->a(I)Z

    .line 1367
    .line 1368
    .line 1369
    iget-wide v3, v7, Le3/e;->m:J

    .line 1370
    .line 1371
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    cmp-long v8, v3, v5

    .line 1377
    .line 1378
    if-nez v8, :cond_3d

    .line 1379
    .line 1380
    iget-object v3, v7, Le3/e;->r:Le3/i;

    .line 1381
    .line 1382
    invoke-interface {v2}, Ll2/p;->getPosition()J

    .line 1383
    .line 1384
    .line 1385
    move-result-wide v4

    .line 1386
    invoke-interface {v3, v4, v5}, Le3/i;->d(J)J

    .line 1387
    .line 1388
    .line 1389
    move-result-wide v3

    .line 1390
    iput-wide v3, v7, Le3/e;->m:J

    .line 1391
    .line 1392
    :cond_3d
    iget v3, v1, Ll2/a0;->b:I

    .line 1393
    .line 1394
    iput v3, v7, Le3/e;->q:I

    .line 1395
    .line 1396
    invoke-interface {v2}, Ll2/p;->getPosition()J

    .line 1397
    .line 1398
    .line 1399
    move-result-wide v2

    .line 1400
    iget v4, v1, Ll2/a0;->b:I

    .line 1401
    .line 1402
    int-to-long v4, v4

    .line 1403
    add-long/2addr v2, v4

    .line 1404
    iput-wide v2, v7, Le3/e;->p:J

    .line 1405
    .line 1406
    iget-object v4, v7, Le3/e;->r:Le3/i;

    .line 1407
    .line 1408
    instance-of v5, v4, Le3/b;

    .line 1409
    .line 1410
    if-eqz v5, :cond_3f

    .line 1411
    .line 1412
    check-cast v4, Le3/b;

    .line 1413
    .line 1414
    iget-wide v5, v7, Le3/e;->n:J

    .line 1415
    .line 1416
    iget v8, v1, Ll2/a0;->f:I

    .line 1417
    .line 1418
    int-to-long v8, v8

    .line 1419
    add-long/2addr v5, v8

    .line 1420
    iget-wide v8, v7, Le3/e;->m:J

    .line 1421
    .line 1422
    const-wide/32 v10, 0xf4240

    .line 1423
    .line 1424
    .line 1425
    mul-long v5, v5, v10

    .line 1426
    .line 1427
    iget v10, v1, Ll2/a0;->c:I

    .line 1428
    .line 1429
    int-to-long v10, v10

    .line 1430
    div-long/2addr v5, v10

    .line 1431
    add-long/2addr v5, v8

    .line 1432
    invoke-virtual {v4, v5, v6}, Le3/b;->i(J)Z

    .line 1433
    .line 1434
    .line 1435
    move-result v8

    .line 1436
    if-eqz v8, :cond_3e

    .line 1437
    .line 1438
    goto :goto_2e

    .line 1439
    :cond_3e
    iget-object v8, v4, Le3/b;->d:Ll2/y;

    .line 1440
    .line 1441
    invoke-virtual {v8, v5, v6, v2, v3}, Ll2/y;->i(JJ)V

    .line 1442
    .line 1443
    .line 1444
    :goto_2e
    iget-boolean v2, v7, Le3/e;->t:Z

    .line 1445
    .line 1446
    if-eqz v2, :cond_3f

    .line 1447
    .line 1448
    iget-wide v2, v7, Le3/e;->u:J

    .line 1449
    .line 1450
    invoke-virtual {v4, v2, v3}, Le3/b;->i(J)Z

    .line 1451
    .line 1452
    .line 1453
    move-result v2

    .line 1454
    if-eqz v2, :cond_3f

    .line 1455
    .line 1456
    const/4 v3, 0x0

    .line 1457
    iput-boolean v3, v7, Le3/e;->t:Z

    .line 1458
    .line 1459
    iget-object v2, v7, Le3/e;->h:Ll2/j0;

    .line 1460
    .line 1461
    iput-object v2, v7, Le3/e;->i:Ll2/j0;

    .line 1462
    .line 1463
    :cond_3f
    const/4 v4, 0x1

    .line 1464
    goto :goto_31

    .line 1465
    :goto_2f
    invoke-interface {v2, v4}, Ll2/p;->i(I)V

    .line 1466
    .line 1467
    .line 1468
    iput v3, v7, Le3/e;->j:I

    .line 1469
    .line 1470
    :goto_30
    const/4 v6, 0x0

    .line 1471
    goto :goto_32

    .line 1472
    :goto_31
    iget-object v2, v7, Le3/e;->i:Ll2/j0;

    .line 1473
    .line 1474
    iget v3, v7, Le3/e;->q:I

    .line 1475
    .line 1476
    invoke-interface {v2, v0, v3, v4}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 1477
    .line 1478
    .line 1479
    move-result v0

    .line 1480
    const/4 v2, -0x1

    .line 1481
    if-ne v0, v2, :cond_40

    .line 1482
    .line 1483
    goto/16 :goto_2d

    .line 1484
    .line 1485
    :cond_40
    iget v2, v7, Le3/e;->q:I

    .line 1486
    .line 1487
    sub-int/2addr v2, v0

    .line 1488
    iput v2, v7, Le3/e;->q:I

    .line 1489
    .line 1490
    if-lez v2, :cond_41

    .line 1491
    .line 1492
    goto :goto_30

    .line 1493
    :cond_41
    iget-object v8, v7, Le3/e;->i:Ll2/j0;

    .line 1494
    .line 1495
    iget-wide v2, v7, Le3/e;->n:J

    .line 1496
    .line 1497
    iget-wide v4, v7, Le3/e;->m:J

    .line 1498
    .line 1499
    const-wide/32 v9, 0xf4240

    .line 1500
    .line 1501
    .line 1502
    mul-long v2, v2, v9

    .line 1503
    .line 1504
    iget v0, v1, Ll2/a0;->c:I

    .line 1505
    .line 1506
    int-to-long v9, v0

    .line 1507
    div-long/2addr v2, v9

    .line 1508
    add-long v9, v2, v4

    .line 1509
    .line 1510
    iget v12, v1, Ll2/a0;->b:I

    .line 1511
    .line 1512
    const/4 v13, 0x0

    .line 1513
    const/4 v14, 0x0

    .line 1514
    const/4 v11, 0x1

    .line 1515
    invoke-interface/range {v8 .. v14}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 1516
    .line 1517
    .line 1518
    iget-wide v2, v7, Le3/e;->n:J

    .line 1519
    .line 1520
    iget v0, v1, Ll2/a0;->f:I

    .line 1521
    .line 1522
    int-to-long v4, v0

    .line 1523
    add-long/2addr v2, v4

    .line 1524
    iput-wide v2, v7, Le3/e;->n:J

    .line 1525
    .line 1526
    const/4 v0, 0x0

    .line 1527
    iput v0, v7, Le3/e;->q:I

    .line 1528
    .line 1529
    goto :goto_30

    .line 1530
    :goto_32
    move v8, v6

    .line 1531
    const/4 v0, -0x1

    .line 1532
    :goto_33
    if-ne v8, v0, :cond_42

    .line 1533
    .line 1534
    iget-object v0, v7, Le3/e;->r:Le3/i;

    .line 1535
    .line 1536
    instance-of v2, v0, Le3/b;

    .line 1537
    .line 1538
    if-eqz v2, :cond_42

    .line 1539
    .line 1540
    iget-wide v2, v7, Le3/e;->n:J

    .line 1541
    .line 1542
    iget-wide v4, v7, Le3/e;->m:J

    .line 1543
    .line 1544
    const-wide/32 v9, 0xf4240

    .line 1545
    .line 1546
    .line 1547
    mul-long v2, v2, v9

    .line 1548
    .line 1549
    iget v1, v1, Ll2/a0;->c:I

    .line 1550
    .line 1551
    int-to-long v9, v1

    .line 1552
    div-long/2addr v2, v9

    .line 1553
    add-long/2addr v2, v4

    .line 1554
    invoke-interface {v0}, Ll2/c0;->h()J

    .line 1555
    .line 1556
    .line 1557
    move-result-wide v0

    .line 1558
    cmp-long v4, v0, v2

    .line 1559
    .line 1560
    if-eqz v4, :cond_42

    .line 1561
    .line 1562
    iget-object v0, v7, Le3/e;->r:Le3/i;

    .line 1563
    .line 1564
    check-cast v0, Le3/b;

    .line 1565
    .line 1566
    iget-object v0, v0, Le3/b;->d:Ll2/y;

    .line 1567
    .line 1568
    iput-wide v2, v0, Ll2/y;->c:J

    .line 1569
    .line 1570
    iget-object v0, v7, Le3/e;->g:Lf2/u0;

    .line 1571
    .line 1572
    iget-object v1, v7, Le3/e;->r:Le3/i;

    .line 1573
    .line 1574
    invoke-virtual {v0, v1}, Lf2/u0;->s(Ll2/c0;)V

    .line 1575
    .line 1576
    .line 1577
    iget-object v0, v7, Le3/e;->h:Ll2/j0;

    .line 1578
    .line 1579
    iget-object v1, v7, Le3/e;->r:Le3/i;

    .line 1580
    .line 1581
    invoke-interface {v1}, Ll2/c0;->h()J

    .line 1582
    .line 1583
    .line 1584
    move-result-wide v1

    .line 1585
    invoke-interface {v0, v1, v2}, Ll2/j0;->d(J)V

    .line 1586
    .line 1587
    .line 1588
    :cond_42
    return v8
.end method

.method public final e(JJ)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le3/e;->j:I

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Le3/e;->m:J

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Le3/e;->n:J

    .line 14
    .line 15
    iput p1, p0, Le3/e;->q:I

    .line 16
    .line 17
    const-wide/16 p1, -0x1

    .line 18
    .line 19
    iput-wide p1, p0, Le3/e;->p:J

    .line 20
    .line 21
    iput-wide p3, p0, Le3/e;->u:J

    .line 22
    .line 23
    iget-object p1, p0, Le3/e;->r:Le3/i;

    .line 24
    .line 25
    instance-of p2, p1, Le3/b;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    check-cast p1, Le3/b;

    .line 30
    .line 31
    invoke-virtual {p1, p3, p4}, Le3/b;->i(J)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Le3/e;->t:Z

    .line 39
    .line 40
    iget-object p1, p0, Le3/e;->f:Ll2/n;

    .line 41
    .line 42
    iput-object p1, p0, Le3/e;->i:Ll2/j0;

    .line 43
    .line 44
    :cond_0
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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    check-cast p1, Ll2/l;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Le3/e;->k(Ll2/l;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final h(Ll2/l;Z)Le3/a;
    .locals 11

    .line 1
    iget-object v0, p0, Le3/e;->b:Lu1/q;

    .line 2
    .line 3
    iget-object v1, v0, Lu1/q;->a:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    invoke-virtual {p1, v1, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lu1/q;->O(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lu1/q;->o()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Le3/e;->c:Ll2/a0;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ll2/a0;->a(I)Z

    .line 20
    .line 21
    .line 22
    new-instance v0, Le3/a;

    .line 23
    .line 24
    iget-wide v5, p1, Ll2/l;->d:J

    .line 25
    .line 26
    iget v7, v1, Ll2/a0;->e:I

    .line 27
    .line 28
    iget v8, v1, Ll2/a0;->b:I

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    iget-wide v3, p1, Ll2/l;->c:J

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    move v9, p2

    .line 35
    invoke-direct/range {v2 .. v10}, Le3/a;-><init>(JJIIZZ)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final i()V
    .locals 11

    .line 1
    iget-object v0, p0, Le3/e;->r:Le3/i;

    .line 2
    .line 3
    instance-of v1, v0, Le3/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ll2/k;

    .line 8
    .line 9
    invoke-virtual {v0}, Ll2/k;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Le3/e;->p:J

    .line 16
    .line 17
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Le3/e;->r:Le3/i;

    .line 24
    .line 25
    invoke-interface {v2}, Le3/i;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Le3/e;->r:Le3/i;

    .line 34
    .line 35
    check-cast v0, Le3/a;

    .line 36
    .line 37
    iget-wide v2, p0, Le3/e;->p:J

    .line 38
    .line 39
    new-instance v10, Le3/a;

    .line 40
    .line 41
    iget-boolean v8, v0, Le3/a;->l:Z

    .line 42
    .line 43
    iget-wide v4, v0, Le3/a;->i:J

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    iget v6, v0, Le3/a;->j:I

    .line 47
    .line 48
    iget v7, v0, Le3/a;->k:I

    .line 49
    .line 50
    move-object v1, v10

    .line 51
    invoke-direct/range {v1 .. v9}, Le3/a;-><init>(JJIIZZ)V

    .line 52
    .line 53
    .line 54
    iput-object v10, p0, Le3/e;->r:Le3/i;

    .line 55
    .line 56
    iget-object v0, p0, Le3/e;->g:Lf2/u0;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Le3/e;->r:Le3/i;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lf2/u0;->s(Ll2/c0;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Le3/e;->h:Ll2/j0;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Le3/e;->r:Le3/i;

    .line 72
    .line 73
    invoke-interface {v1}, Ll2/c0;->h()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    invoke-interface {v0, v1, v2}, Ll2/j0;->d(J)V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public final j(Ll2/l;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Le3/e;->r:Le3/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Le3/i;->a()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ll2/l;->d()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, 0x4

    .line 21
    .line 22
    sub-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Le3/e;->b:Lu1/q;

    .line 29
    .line 30
    iget-object v0, v0, Lu1/q;->a:[B

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-virtual {p1, v0, v2, v3, v1}, Ll2/l;->c([BIIZ)Z

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    xor-int/2addr p1, v1

    .line 39
    return p1

    .line 40
    :catch_0
    return v1
.end method

.method public final k(Ll2/l;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v1, Ll2/l;->f:I

    .line 7
    .line 8
    iget-wide v3, v1, Ll2/l;->d:J

    .line 9
    .line 10
    const-wide/16 v5, 0x0

    .line 11
    .line 12
    const/high16 v7, 0x20000

    .line 13
    .line 14
    cmp-long v8, v3, v5

    .line 15
    .line 16
    if-nez v8, :cond_3

    .line 17
    .line 18
    iget v3, v0, Le3/e;->a:I

    .line 19
    .line 20
    and-int/lit8 v3, v3, 0x8

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v3, Le3/e;->v:La2/u0;

    .line 27
    .line 28
    :goto_0
    iget-object v4, v0, Le3/e;->e:Ll2/x;

    .line 29
    .line 30
    invoke-virtual {v4, v1, v3, v7}, Ll2/x;->a(Ll2/l;Lz2/g;I)Lr1/d0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v0, Le3/e;->k:Lr1/d0;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget-object v4, v0, Le3/e;->d:Ll2/v;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ll2/v;->c(Lr1/d0;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ll2/l;->d()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    long-to-int v4, v3

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v4, v2}, Ll2/l;->o(IZ)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    const/4 v3, 0x0

    .line 54
    :goto_1
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    invoke-virtual/range {p0 .. p1}, Le3/e;->j(Ll2/l;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const/4 v9, 0x1

    .line 65
    if-eqz v8, :cond_5

    .line 66
    .line 67
    if-lez v5, :cond_4

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    invoke-virtual/range {p0 .. p0}, Le3/e;->i()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/io/EOFException;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_5
    iget-object v8, v0, Le3/e;->b:Lu1/q;

    .line 80
    .line 81
    invoke-virtual {v8, v2}, Lu1/q;->O(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8}, Lu1/q;->o()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v3, :cond_6

    .line 89
    .line 90
    int-to-long v10, v3

    .line 91
    const v12, -0x1f400

    .line 92
    .line 93
    .line 94
    and-int/2addr v12, v8

    .line 95
    int-to-long v12, v12

    .line 96
    const-wide/32 v14, -0x1f400

    .line 97
    .line 98
    .line 99
    and-long/2addr v10, v14

    .line 100
    cmp-long v14, v12, v10

    .line 101
    .line 102
    if-nez v14, :cond_7

    .line 103
    .line 104
    :cond_6
    invoke-static {v8}, Ll2/b;->h(I)I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    const/4 v11, -0x1

    .line 109
    if-ne v10, v11, :cond_b

    .line 110
    .line 111
    :cond_7
    add-int/lit8 v3, v6, 0x1

    .line 112
    .line 113
    if-ne v6, v7, :cond_9

    .line 114
    .line 115
    if-eqz p2, :cond_8

    .line 116
    .line 117
    return v2

    .line 118
    :cond_8
    invoke-virtual/range {p0 .. p0}, Le3/e;->i()V

    .line 119
    .line 120
    .line 121
    new-instance v1, Ljava/io/EOFException;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :cond_9
    if-eqz p2, :cond_a

    .line 128
    .line 129
    iput v2, v1, Ll2/l;->f:I

    .line 130
    .line 131
    add-int v5, v4, v3

    .line 132
    .line 133
    invoke-virtual {v1, v5, v2}, Ll2/l;->k(IZ)Z

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    invoke-virtual {v1, v9, v2}, Ll2/l;->o(IZ)Z

    .line 138
    .line 139
    .line 140
    :goto_3
    move v6, v3

    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v5, 0x0

    .line 143
    goto :goto_2

    .line 144
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 145
    .line 146
    if-ne v5, v9, :cond_c

    .line 147
    .line 148
    iget-object v3, v0, Le3/e;->c:Ll2/a0;

    .line 149
    .line 150
    invoke-virtual {v3, v8}, Ll2/a0;->a(I)Z

    .line 151
    .line 152
    .line 153
    move v3, v8

    .line 154
    goto :goto_6

    .line 155
    :cond_c
    const/4 v8, 0x4

    .line 156
    if-ne v5, v8, :cond_e

    .line 157
    .line 158
    :goto_4
    if-eqz p2, :cond_d

    .line 159
    .line 160
    add-int/2addr v4, v6

    .line 161
    invoke-virtual {v1, v4, v2}, Ll2/l;->o(IZ)Z

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_d
    iput v2, v1, Ll2/l;->f:I

    .line 166
    .line 167
    :goto_5
    iput v3, v0, Le3/e;->j:I

    .line 168
    .line 169
    return v9

    .line 170
    :cond_e
    :goto_6
    add-int/lit8 v10, v10, -0x4

    .line 171
    .line 172
    invoke-virtual {v1, v10, v2}, Ll2/l;->k(IZ)Z

    .line 173
    .line 174
    .line 175
    goto :goto_2
.end method
