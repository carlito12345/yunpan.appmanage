.class public final Ls3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/f;


# instance fields
.field public final a:Lu1/q;

.field public final b:Lj3/f;

.field public final c:Lu1/q;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ll2/j0;

.field public g:D

.field public h:D

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:Z

.field public n:I

.field public o:I

.field public final p:Lf3/a;

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ls3/s;->d:I

    .line 6
    .line 7
    new-instance v0, Lu1/q;

    .line 8
    .line 9
    const/16 v1, 0xf

    .line 10
    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v0, v1, v2}, Lu1/q;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ls3/s;->a:Lu1/q;

    .line 18
    .line 19
    new-instance v0, Lj3/f;

    .line 20
    .line 21
    invoke-direct {v0}, Lj3/f;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ls3/s;->b:Lj3/f;

    .line 25
    .line 26
    new-instance v0, Lu1/q;

    .line 27
    .line 28
    invoke-direct {v0}, Lu1/q;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Ls3/s;->c:Lu1/q;

    .line 32
    .line 33
    new-instance v0, Lf3/a;

    .line 34
    .line 35
    invoke-direct {v0}, Lf3/a;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ls3/s;->p:Lf3/a;

    .line 39
    .line 40
    const v0, -0x7fffffff

    .line 41
    .line 42
    .line 43
    iput v0, p0, Ls3/s;->q:I

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    iput v0, p0, Ls3/s;->r:I

    .line 47
    .line 48
    const-wide/16 v0, -0x1

    .line 49
    .line 50
    iput-wide v0, p0, Ls3/s;->t:J

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Ls3/s;->j:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Ls3/s;->m:Z

    .line 56
    .line 57
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 58
    .line 59
    iput-wide v0, p0, Ls3/s;->g:D

    .line 60
    .line 61
    iput-wide v0, p0, Ls3/s;->h:D

    .line 62
    .line 63
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
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x2

    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    iget-object v7, v0, Ls3/s;->f:Ll2/j0;

    .line 11
    .line 12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-lez v7, :cond_44

    .line 20
    .line 21
    iget v7, v0, Ls3/s;->d:I

    .line 22
    .line 23
    const/4 v8, 0x3

    .line 24
    if-eqz v7, :cond_3f

    .line 25
    .line 26
    iget-object v9, v0, Ls3/s;->p:Lf3/a;

    .line 27
    .line 28
    const/16 v12, 0x18

    .line 29
    .line 30
    const/16 v13, 0x11

    .line 31
    .line 32
    iget-object v14, v0, Ls3/s;->c:Lu1/q;

    .line 33
    .line 34
    if-eq v7, v6, :cond_2e

    .line 35
    .line 36
    if-ne v7, v3, :cond_2d

    .line 37
    .line 38
    iget v7, v9, Lf3/a;->b:I

    .line 39
    .line 40
    if-eq v7, v6, :cond_1

    .line 41
    .line 42
    if-ne v7, v13, :cond_2

    .line 43
    .line 44
    :cond_1
    iget v7, v1, Lu1/q;->b:I

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 47
    .line 48
    .line 49
    move-result v15

    .line 50
    invoke-virtual {v14}, Lu1/q;->a()I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    iget-object v15, v14, Lu1/q;->a:[B

    .line 59
    .line 60
    iget v13, v14, Lu1/q;->b:I

    .line 61
    .line 62
    invoke-virtual {v1, v13, v11, v15}, Lu1/q;->l(II[B)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v14, v11}, Lu1/q;->P(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v7}, Lu1/q;->O(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    iget v11, v9, Lf3/a;->d:I

    .line 76
    .line 77
    iget v13, v0, Ls3/s;->n:I

    .line 78
    .line 79
    sub-int/2addr v11, v13

    .line 80
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    iget-object v11, v0, Ls3/s;->f:Ll2/j0;

    .line 85
    .line 86
    invoke-interface {v11, v7, v1}, Ll2/j0;->a(ILu1/q;)V

    .line 87
    .line 88
    .line 89
    iget v11, v0, Ls3/s;->n:I

    .line 90
    .line 91
    add-int/2addr v11, v7

    .line 92
    iput v11, v0, Ls3/s;->n:I

    .line 93
    .line 94
    iget v7, v9, Lf3/a;->d:I

    .line 95
    .line 96
    if-ne v11, v7, :cond_0

    .line 97
    .line 98
    iget v7, v9, Lf3/a;->b:I

    .line 99
    .line 100
    if-ne v7, v6, :cond_27

    .line 101
    .line 102
    new-instance v7, Lj3/f;

    .line 103
    .line 104
    iget-object v13, v14, Lu1/q;->a:[B

    .line 105
    .line 106
    array-length v14, v13

    .line 107
    invoke-direct {v7, v13, v14}, Lj3/f;-><init>([BI)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v5}, Lj3/f;->g(I)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    const/4 v14, 0x5

    .line 115
    invoke-virtual {v7, v14}, Lj3/f;->g(I)I

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    const/16 v10, 0x1f

    .line 120
    .line 121
    if-ne v15, v10, :cond_3

    .line 122
    .line 123
    invoke-virtual {v7, v12}, Lj3/f;->g(I)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_3
    packed-switch v15, :pswitch_data_0

    .line 130
    .line 131
    .line 132
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "Unsupported sampling rate index "

    .line 135
    .line 136
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    throw v1

    .line 151
    :pswitch_1
    const/16 v10, 0x2580

    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :pswitch_2
    const/16 v10, 0x3200

    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :pswitch_3
    const/16 v10, 0x3840

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :pswitch_4
    const/16 v10, 0x42b3

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :pswitch_5
    const/16 v10, 0x4b00

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :pswitch_6
    const/16 v10, 0x4e20

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_7
    const/16 v10, 0x6400

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :pswitch_8
    const/16 v10, 0x7080

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :pswitch_9
    const v10, 0x8566

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :pswitch_a
    const v10, 0x9600

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :pswitch_b
    const v10, 0x9c40

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :pswitch_c
    const v10, 0xc800

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :pswitch_d
    const v10, 0xe100

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :pswitch_e
    const/16 v10, 0x1cb6

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :pswitch_f
    const/16 v10, 0x1f40

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :pswitch_10
    const/16 v10, 0x2b11

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :pswitch_11
    const/16 v10, 0x2ee0

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :pswitch_12
    const/16 v10, 0x3e80

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :pswitch_13
    const/16 v10, 0x5622

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :pswitch_14
    const/16 v10, 0x5dc0

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :pswitch_15
    const/16 v10, 0x7d00

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :pswitch_16
    const v10, 0xac44

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :pswitch_17
    const v10, 0xbb80

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :pswitch_18
    const v10, 0xfa00

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :pswitch_19
    const v10, 0x15888

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :pswitch_1a
    const v10, 0x17700

    .line 238
    .line 239
    .line 240
    :goto_1
    invoke-virtual {v7, v8}, Lj3/f;->g(I)I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    const-string v15, "Unsupported coreSbrFrameLengthIndex "

    .line 245
    .line 246
    if-eqz v12, :cond_7

    .line 247
    .line 248
    if-eq v12, v6, :cond_6

    .line 249
    .line 250
    if-eq v12, v3, :cond_5

    .line 251
    .line 252
    if-eq v12, v8, :cond_5

    .line 253
    .line 254
    if-ne v12, v2, :cond_4

    .line 255
    .line 256
    const/16 v16, 0x1000

    .line 257
    .line 258
    const/16 v17, 0x1000

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    throw v1

    .line 278
    :cond_5
    const/16 v16, 0x800

    .line 279
    .line 280
    const/16 v17, 0x800

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_6
    const/16 v16, 0x400

    .line 284
    .line 285
    const/16 v17, 0x400

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_7
    const/16 v16, 0x300

    .line 289
    .line 290
    const/16 v17, 0x300

    .line 291
    .line 292
    :goto_2
    if-eqz v12, :cond_b

    .line 293
    .line 294
    if-eq v12, v6, :cond_b

    .line 295
    .line 296
    if-eq v12, v3, :cond_a

    .line 297
    .line 298
    if-eq v12, v8, :cond_9

    .line 299
    .line 300
    if-ne v12, v2, :cond_8

    .line 301
    .line 302
    const/4 v12, 0x1

    .line 303
    goto :goto_3

    .line 304
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    throw v1

    .line 321
    :cond_9
    const/4 v12, 0x3

    .line 322
    goto :goto_3

    .line 323
    :cond_a
    const/4 v12, 0x2

    .line 324
    goto :goto_3

    .line 325
    :cond_b
    const/4 v12, 0x0

    .line 326
    :goto_3
    invoke-virtual {v7, v3}, Lj3/f;->o(I)V

    .line 327
    .line 328
    .line 329
    invoke-static {v7}, Lcom/bumptech/glide/c;->i0(Lj3/f;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7, v14}, Lj3/f;->g(I)I

    .line 333
    .line 334
    .line 335
    move-result v15

    .line 336
    const/4 v11, 0x0

    .line 337
    const/16 v18, 0x0

    .line 338
    .line 339
    :goto_4
    add-int/lit8 v4, v15, 0x1

    .line 340
    .line 341
    const/16 v2, 0x10

    .line 342
    .line 343
    if-ge v11, v4, :cond_e

    .line 344
    .line 345
    invoke-virtual {v7, v8}, Lj3/f;->g(I)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-static {v7, v14, v5, v2}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    add-int/2addr v2, v6

    .line 354
    add-int v18, v2, v18

    .line 355
    .line 356
    if-eqz v4, :cond_c

    .line 357
    .line 358
    if-ne v4, v3, :cond_d

    .line 359
    .line 360
    :cond_c
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_d

    .line 365
    .line 366
    invoke-static {v7}, Lcom/bumptech/glide/c;->i0(Lj3/f;)V

    .line 367
    .line 368
    .line 369
    :cond_d
    add-int/2addr v11, v6

    .line 370
    const/4 v2, 0x4

    .line 371
    goto :goto_4

    .line 372
    :cond_e
    const/4 v4, 0x4

    .line 373
    invoke-static {v7, v4, v5, v2}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 374
    .line 375
    .line 376
    move-result v11

    .line 377
    add-int/2addr v11, v6

    .line 378
    invoke-virtual {v7}, Lj3/f;->n()V

    .line 379
    .line 380
    .line 381
    const/4 v4, 0x0

    .line 382
    :goto_5
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .line 383
    .line 384
    if-ge v4, v11, :cond_1e

    .line 385
    .line 386
    invoke-virtual {v7, v3}, Lj3/f;->g(I)I

    .line 387
    .line 388
    .line 389
    move-result v15

    .line 390
    if-eqz v15, :cond_1c

    .line 391
    .line 392
    if-eq v15, v6, :cond_12

    .line 393
    .line 394
    if-eq v15, v8, :cond_10

    .line 395
    .line 396
    :cond_f
    :goto_6
    const/4 v2, 0x1

    .line 397
    goto/16 :goto_8

    .line 398
    .line 399
    :cond_10
    const/4 v15, 0x4

    .line 400
    invoke-static {v7, v15, v5, v2}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 401
    .line 402
    .line 403
    invoke-static {v7, v15, v5, v2}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 404
    .line 405
    .line 406
    move-result v19

    .line 407
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 408
    .line 409
    .line 410
    move-result v15

    .line 411
    if-eqz v15, :cond_11

    .line 412
    .line 413
    const/4 v15, 0x0

    .line 414
    invoke-static {v7, v5, v2, v15}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 415
    .line 416
    .line 417
    :cond_11
    invoke-virtual {v7}, Lj3/f;->n()V

    .line 418
    .line 419
    .line 420
    if-lez v19, :cond_f

    .line 421
    .line 422
    mul-int/lit8 v15, v19, 0x8

    .line 423
    .line 424
    invoke-virtual {v7, v15}, Lj3/f;->o(I)V

    .line 425
    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_12
    invoke-virtual {v7, v8}, Lj3/f;->o(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 432
    .line 433
    .line 434
    move-result v15

    .line 435
    if-eqz v15, :cond_13

    .line 436
    .line 437
    const/16 v2, 0xd

    .line 438
    .line 439
    invoke-virtual {v7, v2}, Lj3/f;->o(I)V

    .line 440
    .line 441
    .line 442
    :cond_13
    if-eqz v15, :cond_14

    .line 443
    .line 444
    invoke-virtual {v7}, Lj3/f;->n()V

    .line 445
    .line 446
    .line 447
    :cond_14
    if-lez v12, :cond_15

    .line 448
    .line 449
    invoke-static {v7}, Lcom/bumptech/glide/c;->h0(Lj3/f;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v3}, Lj3/f;->g(I)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    goto :goto_7

    .line 457
    :cond_15
    const/4 v2, 0x0

    .line 458
    :goto_7
    if-lez v2, :cond_19

    .line 459
    .line 460
    const/4 v15, 0x6

    .line 461
    invoke-virtual {v7, v15}, Lj3/f;->o(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v7, v3}, Lj3/f;->g(I)I

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    const/4 v6, 0x4

    .line 469
    invoke-virtual {v7, v6}, Lj3/f;->o(I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-eqz v6, :cond_16

    .line 477
    .line 478
    invoke-virtual {v7, v14}, Lj3/f;->o(I)V

    .line 479
    .line 480
    .line 481
    :cond_16
    if-eq v2, v3, :cond_17

    .line 482
    .line 483
    if-ne v2, v8, :cond_18

    .line 484
    .line 485
    :cond_17
    invoke-virtual {v7, v15}, Lj3/f;->o(I)V

    .line 486
    .line 487
    .line 488
    :cond_18
    if-ne v5, v3, :cond_19

    .line 489
    .line 490
    invoke-virtual {v7}, Lj3/f;->n()V

    .line 491
    .line 492
    .line 493
    :cond_19
    const/4 v2, 0x1

    .line 494
    add-int/lit8 v5, v18, -0x1

    .line 495
    .line 496
    int-to-double v5, v5

    .line 497
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    .line 498
    .line 499
    .line 500
    move-result-wide v5

    .line 501
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    .line 502
    .line 503
    .line 504
    move-result-wide v19

    .line 505
    div-double v5, v5, v19

    .line 506
    .line 507
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 508
    .line 509
    .line 510
    move-result-wide v5

    .line 511
    double-to-int v5, v5

    .line 512
    add-int/2addr v5, v2

    .line 513
    invoke-virtual {v7, v3}, Lj3/f;->g(I)I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-lez v2, :cond_1a

    .line 518
    .line 519
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    if-eqz v6, :cond_1a

    .line 524
    .line 525
    invoke-virtual {v7, v5}, Lj3/f;->o(I)V

    .line 526
    .line 527
    .line 528
    :cond_1a
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    if-eqz v6, :cond_1b

    .line 533
    .line 534
    invoke-virtual {v7, v5}, Lj3/f;->o(I)V

    .line 535
    .line 536
    .line 537
    :cond_1b
    if-nez v12, :cond_f

    .line 538
    .line 539
    if-nez v2, :cond_f

    .line 540
    .line 541
    invoke-virtual {v7}, Lj3/f;->n()V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_6

    .line 545
    .line 546
    :cond_1c
    invoke-virtual {v7, v8}, Lj3/f;->o(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-eqz v2, :cond_1d

    .line 554
    .line 555
    const/16 v2, 0xd

    .line 556
    .line 557
    invoke-virtual {v7, v2}, Lj3/f;->o(I)V

    .line 558
    .line 559
    .line 560
    :cond_1d
    if-lez v12, :cond_f

    .line 561
    .line 562
    invoke-static {v7}, Lcom/bumptech/glide/c;->h0(Lj3/f;)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_6

    .line 566
    .line 567
    :goto_8
    add-int/2addr v4, v2

    .line 568
    const/16 v2, 0x10

    .line 569
    .line 570
    const/16 v5, 0x8

    .line 571
    .line 572
    const/4 v6, 0x1

    .line 573
    goto/16 :goto_5

    .line 574
    .line 575
    :cond_1e
    const/4 v2, 0x1

    .line 576
    invoke-virtual {v7}, Lj3/f;->f()Z

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    if-eqz v4, :cond_21

    .line 581
    .line 582
    const/16 v4, 0x8

    .line 583
    .line 584
    const/4 v5, 0x4

    .line 585
    invoke-static {v7, v3, v5, v4}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    add-int/2addr v6, v2

    .line 590
    const/4 v8, 0x0

    .line 591
    const/4 v11, 0x0

    .line 592
    :goto_9
    if-ge v8, v6, :cond_22

    .line 593
    .line 594
    const/16 v12, 0x10

    .line 595
    .line 596
    invoke-static {v7, v5, v4, v12}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 597
    .line 598
    .line 599
    move-result v14

    .line 600
    invoke-static {v7, v5, v4, v12}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 601
    .line 602
    .line 603
    move-result v15

    .line 604
    const/4 v12, 0x7

    .line 605
    if-ne v14, v12, :cond_20

    .line 606
    .line 607
    invoke-virtual {v7, v5}, Lj3/f;->g(I)I

    .line 608
    .line 609
    .line 610
    move-result v11

    .line 611
    add-int/2addr v11, v2

    .line 612
    invoke-virtual {v7, v5}, Lj3/f;->o(I)V

    .line 613
    .line 614
    .line 615
    new-array v5, v11, [B

    .line 616
    .line 617
    const/4 v12, 0x0

    .line 618
    :goto_a
    if-ge v12, v11, :cond_1f

    .line 619
    .line 620
    invoke-virtual {v7, v4}, Lj3/f;->g(I)I

    .line 621
    .line 622
    .line 623
    move-result v14

    .line 624
    int-to-byte v14, v14

    .line 625
    aput-byte v14, v5, v12

    .line 626
    .line 627
    add-int/2addr v12, v2

    .line 628
    goto :goto_a

    .line 629
    :cond_1f
    move-object v11, v5

    .line 630
    goto :goto_b

    .line 631
    :cond_20
    mul-int/lit8 v15, v15, 0x8

    .line 632
    .line 633
    invoke-virtual {v7, v15}, Lj3/f;->o(I)V

    .line 634
    .line 635
    .line 636
    :goto_b
    add-int/2addr v8, v2

    .line 637
    const/16 v4, 0x8

    .line 638
    .line 639
    const/4 v5, 0x4

    .line 640
    goto :goto_9

    .line 641
    :cond_21
    const/4 v11, 0x0

    .line 642
    :cond_22
    sparse-switch v10, :sswitch_data_0

    .line 643
    .line 644
    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    const-string v2, "Unsupported sampling rate "

    .line 648
    .line 649
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    throw v1

    .line 664
    :sswitch_0
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 665
    .line 666
    goto :goto_c

    .line 667
    :sswitch_1
    const-wide/high16 v19, 0x3ff8000000000000L    # 1.5

    .line 668
    .line 669
    goto :goto_c

    .line 670
    :sswitch_2
    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    .line 671
    .line 672
    :goto_c
    :sswitch_3
    int-to-double v4, v10

    .line 673
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 674
    .line 675
    .line 676
    mul-double v4, v4, v19

    .line 677
    .line 678
    double-to-int v2, v4

    .line 679
    move/from16 v4, v17

    .line 680
    .line 681
    int-to-double v4, v4

    .line 682
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 683
    .line 684
    .line 685
    mul-double v4, v4, v19

    .line 686
    .line 687
    double-to-int v4, v4

    .line 688
    iput v2, v0, Ls3/s;->q:I

    .line 689
    .line 690
    iput v4, v0, Ls3/s;->r:I

    .line 691
    .line 692
    iget-wide v4, v0, Ls3/s;->t:J

    .line 693
    .line 694
    iget-wide v6, v9, Lf3/a;->c:J

    .line 695
    .line 696
    cmp-long v2, v4, v6

    .line 697
    .line 698
    if-eqz v2, :cond_25

    .line 699
    .line 700
    iput-wide v6, v0, Ls3/s;->t:J

    .line 701
    .line 702
    const-string v2, "mhm1"

    .line 703
    .line 704
    const/4 v4, -0x1

    .line 705
    if-eq v13, v4, :cond_23

    .line 706
    .line 707
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    const/4 v5, 0x1

    .line 712
    new-array v6, v5, [Ljava/lang/Object;

    .line 713
    .line 714
    const/4 v5, 0x0

    .line 715
    aput-object v4, v6, v5

    .line 716
    .line 717
    const-string v4, ".%02X"

    .line 718
    .line 719
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    :cond_23
    if-eqz v11, :cond_24

    .line 728
    .line 729
    array-length v4, v11

    .line 730
    if-lez v4, :cond_24

    .line 731
    .line 732
    sget-object v4, Lu1/f0;->b:[B

    .line 733
    .line 734
    invoke-static {v4, v11}, Lu7/g0;->s(Ljava/lang/Object;Ljava/lang/Object;)Lu7/y0;

    .line 735
    .line 736
    .line 737
    move-result-object v11

    .line 738
    goto :goto_d

    .line 739
    :cond_24
    const/4 v11, 0x0

    .line 740
    :goto_d
    new-instance v4, Lr1/o;

    .line 741
    .line 742
    invoke-direct {v4}, Lr1/o;-><init>()V

    .line 743
    .line 744
    .line 745
    iget-object v5, v0, Ls3/s;->e:Ljava/lang/String;

    .line 746
    .line 747
    iput-object v5, v4, Lr1/o;->a:Ljava/lang/String;

    .line 748
    .line 749
    const-string v5, "video/mp2t"

    .line 750
    .line 751
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    iput-object v5, v4, Lr1/o;->m:Ljava/lang/String;

    .line 756
    .line 757
    const-string v5, "audio/mhm1"

    .line 758
    .line 759
    invoke-static {v5}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v5

    .line 763
    iput-object v5, v4, Lr1/o;->n:Ljava/lang/String;

    .line 764
    .line 765
    iget v5, v0, Ls3/s;->q:I

    .line 766
    .line 767
    iput v5, v4, Lr1/o;->G:I

    .line 768
    .line 769
    iput-object v2, v4, Lr1/o;->j:Ljava/lang/String;

    .line 770
    .line 771
    iput-object v11, v4, Lr1/o;->q:Ljava/util/List;

    .line 772
    .line 773
    new-instance v2, Lr1/p;

    .line 774
    .line 775
    invoke-direct {v2, v4}, Lr1/p;-><init>(Lr1/o;)V

    .line 776
    .line 777
    .line 778
    iget-object v4, v0, Ls3/s;->f:Ll2/j0;

    .line 779
    .line 780
    invoke-interface {v4, v2}, Ll2/j0;->g(Lr1/p;)V

    .line 781
    .line 782
    .line 783
    :cond_25
    const/4 v2, 0x1

    .line 784
    iput-boolean v2, v0, Ls3/s;->u:Z

    .line 785
    .line 786
    :cond_26
    :goto_e
    const/4 v2, 0x1

    .line 787
    goto/16 :goto_12

    .line 788
    .line 789
    :cond_27
    const/16 v2, 0x11

    .line 790
    .line 791
    if-ne v7, v2, :cond_29

    .line 792
    .line 793
    new-instance v2, Lj3/f;

    .line 794
    .line 795
    iget-object v4, v14, Lu1/q;->a:[B

    .line 796
    .line 797
    array-length v5, v4

    .line 798
    invoke-direct {v2, v4, v5}, Lj3/f;-><init>([BI)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2}, Lj3/f;->f()Z

    .line 802
    .line 803
    .line 804
    move-result v4

    .line 805
    if-eqz v4, :cond_28

    .line 806
    .line 807
    invoke-virtual {v2, v3}, Lj3/f;->o(I)V

    .line 808
    .line 809
    .line 810
    const/16 v4, 0xd

    .line 811
    .line 812
    invoke-virtual {v2, v4}, Lj3/f;->g(I)I

    .line 813
    .line 814
    .line 815
    move-result v2

    .line 816
    goto :goto_f

    .line 817
    :cond_28
    const/4 v2, 0x0

    .line 818
    :goto_f
    iput v2, v0, Ls3/s;->s:I

    .line 819
    .line 820
    goto :goto_e

    .line 821
    :cond_29
    if-ne v7, v3, :cond_26

    .line 822
    .line 823
    iget-boolean v2, v0, Ls3/s;->u:Z

    .line 824
    .line 825
    if-eqz v2, :cond_2a

    .line 826
    .line 827
    const/4 v2, 0x0

    .line 828
    iput-boolean v2, v0, Ls3/s;->j:Z

    .line 829
    .line 830
    const/4 v7, 0x1

    .line 831
    goto :goto_10

    .line 832
    :cond_2a
    const/4 v7, 0x0

    .line 833
    :goto_10
    iget v2, v0, Ls3/s;->r:I

    .line 834
    .line 835
    iget v4, v0, Ls3/s;->s:I

    .line 836
    .line 837
    sub-int/2addr v2, v4

    .line 838
    int-to-double v4, v2

    .line 839
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 845
    .line 846
    .line 847
    mul-double v4, v4, v8

    .line 848
    .line 849
    iget v2, v0, Ls3/s;->q:I

    .line 850
    .line 851
    int-to-double v8, v2

    .line 852
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    .line 853
    .line 854
    .line 855
    div-double/2addr v4, v8

    .line 856
    iget-wide v8, v0, Ls3/s;->g:D

    .line 857
    .line 858
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 859
    .line 860
    .line 861
    move-result-wide v8

    .line 862
    iget-boolean v2, v0, Ls3/s;->i:Z

    .line 863
    .line 864
    if-eqz v2, :cond_2b

    .line 865
    .line 866
    const/4 v2, 0x0

    .line 867
    iput-boolean v2, v0, Ls3/s;->i:Z

    .line 868
    .line 869
    iget-wide v4, v0, Ls3/s;->h:D

    .line 870
    .line 871
    iput-wide v4, v0, Ls3/s;->g:D

    .line 872
    .line 873
    goto :goto_11

    .line 874
    :cond_2b
    iget-wide v10, v0, Ls3/s;->g:D

    .line 875
    .line 876
    add-double/2addr v10, v4

    .line 877
    iput-wide v10, v0, Ls3/s;->g:D

    .line 878
    .line 879
    :goto_11
    iget-object v4, v0, Ls3/s;->f:Ll2/j0;

    .line 880
    .line 881
    iget v2, v0, Ls3/s;->o:I

    .line 882
    .line 883
    const/4 v10, 0x0

    .line 884
    const/4 v11, 0x0

    .line 885
    move-wide v5, v8

    .line 886
    move v8, v2

    .line 887
    move v9, v10

    .line 888
    move-object v10, v11

    .line 889
    invoke-interface/range {v4 .. v10}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 890
    .line 891
    .line 892
    const/4 v2, 0x0

    .line 893
    iput-boolean v2, v0, Ls3/s;->u:Z

    .line 894
    .line 895
    iput v2, v0, Ls3/s;->s:I

    .line 896
    .line 897
    iput v2, v0, Ls3/s;->o:I

    .line 898
    .line 899
    goto :goto_e

    .line 900
    :goto_12
    iput v2, v0, Ls3/s;->d:I

    .line 901
    .line 902
    :cond_2c
    :goto_13
    const/4 v2, 0x4

    .line 903
    const/16 v5, 0x8

    .line 904
    .line 905
    :goto_14
    const/4 v6, 0x1

    .line 906
    goto/16 :goto_0

    .line 907
    .line 908
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 909
    .line 910
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 911
    .line 912
    .line 913
    throw v1

    .line 914
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    iget-object v4, v0, Ls3/s;->a:Lu1/q;

    .line 919
    .line 920
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 921
    .line 922
    .line 923
    move-result v5

    .line 924
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    iget-object v5, v4, Lu1/q;->a:[B

    .line 929
    .line 930
    iget v6, v4, Lu1/q;->b:I

    .line 931
    .line 932
    invoke-virtual {v1, v6, v2, v5}, Lu1/q;->l(II[B)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v4, v2}, Lu1/q;->P(I)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 939
    .line 940
    .line 941
    move-result v2

    .line 942
    if-nez v2, :cond_3e

    .line 943
    .line 944
    iget v2, v4, Lu1/q;->c:I

    .line 945
    .line 946
    iget-object v5, v4, Lu1/q;->a:[B

    .line 947
    .line 948
    iget-object v6, v0, Ls3/s;->b:Lj3/f;

    .line 949
    .line 950
    invoke-virtual {v6, v2, v5}, Lj3/f;->k(I[B)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v6}, Lj3/f;->d()I

    .line 954
    .line 955
    .line 956
    const/16 v5, 0x8

    .line 957
    .line 958
    invoke-static {v6, v8, v5, v5}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 959
    .line 960
    .line 961
    move-result v7

    .line 962
    iput v7, v9, Lf3/a;->b:I

    .line 963
    .line 964
    const/4 v8, -0x1

    .line 965
    if-ne v7, v8, :cond_30

    .line 966
    .line 967
    :cond_2f
    :goto_15
    const/4 v5, 0x0

    .line 968
    goto/16 :goto_1a

    .line 969
    .line 970
    :cond_30
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 971
    .line 972
    .line 973
    move-result v7

    .line 974
    const/16 v5, 0x20

    .line 975
    .line 976
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 977
    .line 978
    .line 979
    move-result v7

    .line 980
    const/16 v8, 0x3f

    .line 981
    .line 982
    if-gt v7, v8, :cond_31

    .line 983
    .line 984
    const/4 v7, 0x1

    .line 985
    goto :goto_16

    .line 986
    :cond_31
    const/4 v7, 0x0

    .line 987
    :goto_16
    invoke-static {v7}, La9/o;->k(Z)V

    .line 988
    .line 989
    .line 990
    const-wide/16 v7, 0x3

    .line 991
    .line 992
    const-wide/16 v10, 0xff

    .line 993
    .line 994
    invoke-static {v7, v8, v10, v11}, Ld/b;->g(JJ)J

    .line 995
    .line 996
    .line 997
    move-result-wide v12

    .line 998
    const-wide v10, 0x100000000L

    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    invoke-static {v12, v13, v10, v11}, Ld/b;->g(JJ)J

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v6}, Lj3/f;->b()I

    .line 1007
    .line 1008
    .line 1009
    move-result v10

    .line 1010
    const-wide/16 v11, -0x1

    .line 1011
    .line 1012
    if-ge v10, v3, :cond_32

    .line 1013
    .line 1014
    :goto_17
    move-wide v7, v11

    .line 1015
    goto :goto_18

    .line 1016
    :cond_32
    invoke-virtual {v6, v3}, Lj3/f;->i(I)J

    .line 1017
    .line 1018
    .line 1019
    move-result-wide v19

    .line 1020
    cmp-long v10, v19, v7

    .line 1021
    .line 1022
    if-nez v10, :cond_35

    .line 1023
    .line 1024
    invoke-virtual {v6}, Lj3/f;->b()I

    .line 1025
    .line 1026
    .line 1027
    move-result v7

    .line 1028
    const/16 v8, 0x8

    .line 1029
    .line 1030
    if-ge v7, v8, :cond_33

    .line 1031
    .line 1032
    goto :goto_17

    .line 1033
    :cond_33
    invoke-virtual {v6, v8}, Lj3/f;->i(I)J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v21

    .line 1037
    add-long v19, v19, v21

    .line 1038
    .line 1039
    const-wide/16 v7, 0xff

    .line 1040
    .line 1041
    cmp-long v10, v21, v7

    .line 1042
    .line 1043
    if-nez v10, :cond_35

    .line 1044
    .line 1045
    invoke-virtual {v6}, Lj3/f;->b()I

    .line 1046
    .line 1047
    .line 1048
    move-result v7

    .line 1049
    if-ge v7, v5, :cond_34

    .line 1050
    .line 1051
    goto :goto_17

    .line 1052
    :cond_34
    invoke-virtual {v6, v5}, Lj3/f;->i(I)J

    .line 1053
    .line 1054
    .line 1055
    move-result-wide v7

    .line 1056
    add-long v19, v7, v19

    .line 1057
    .line 1058
    :cond_35
    move-wide/from16 v7, v19

    .line 1059
    .line 1060
    :goto_18
    iput-wide v7, v9, Lf3/a;->c:J

    .line 1061
    .line 1062
    cmp-long v5, v7, v11

    .line 1063
    .line 1064
    if-nez v5, :cond_36

    .line 1065
    .line 1066
    goto :goto_15

    .line 1067
    :cond_36
    const-wide/16 v10, 0x10

    .line 1068
    .line 1069
    cmp-long v5, v7, v10

    .line 1070
    .line 1071
    if-gtz v5, :cond_3d

    .line 1072
    .line 1073
    const-wide/16 v10, 0x0

    .line 1074
    .line 1075
    cmp-long v5, v7, v10

    .line 1076
    .line 1077
    if-nez v5, :cond_3a

    .line 1078
    .line 1079
    iget v5, v9, Lf3/a;->b:I

    .line 1080
    .line 1081
    const/4 v7, 0x1

    .line 1082
    if-eq v5, v7, :cond_39

    .line 1083
    .line 1084
    if-eq v5, v3, :cond_38

    .line 1085
    .line 1086
    const/16 v7, 0x11

    .line 1087
    .line 1088
    if-eq v5, v7, :cond_37

    .line 1089
    .line 1090
    goto :goto_19

    .line 1091
    :cond_37
    const-string v1, "AudioTruncation packet with invalid packet label 0"

    .line 1092
    .line 1093
    const/4 v2, 0x0

    .line 1094
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v1

    .line 1098
    throw v1

    .line 1099
    :cond_38
    const/4 v2, 0x0

    .line 1100
    const-string v1, "Mpegh3daFrame packet with invalid packet label 0"

    .line 1101
    .line 1102
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v1

    .line 1106
    throw v1

    .line 1107
    :cond_39
    const/4 v2, 0x0

    .line 1108
    const-string v1, "Mpegh3daConfig packet with invalid packet label 0"

    .line 1109
    .line 1110
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v1

    .line 1114
    throw v1

    .line 1115
    :cond_3a
    :goto_19
    const/16 v5, 0xb

    .line 1116
    .line 1117
    const/16 v7, 0x18

    .line 1118
    .line 1119
    invoke-static {v6, v5, v7, v7}, Lcom/bumptech/glide/c;->Y(Lj3/f;III)I

    .line 1120
    .line 1121
    .line 1122
    move-result v5

    .line 1123
    iput v5, v9, Lf3/a;->d:I

    .line 1124
    .line 1125
    const/4 v6, -0x1

    .line 1126
    if-eq v5, v6, :cond_2f

    .line 1127
    .line 1128
    const/4 v5, 0x1

    .line 1129
    :goto_1a
    const/4 v6, 0x0

    .line 1130
    if-eqz v5, :cond_3b

    .line 1131
    .line 1132
    iput v6, v0, Ls3/s;->n:I

    .line 1133
    .line 1134
    iget v7, v0, Ls3/s;->o:I

    .line 1135
    .line 1136
    iget v8, v9, Lf3/a;->d:I

    .line 1137
    .line 1138
    add-int/2addr v8, v2

    .line 1139
    add-int/2addr v8, v7

    .line 1140
    iput v8, v0, Ls3/s;->o:I

    .line 1141
    .line 1142
    :cond_3b
    if-eqz v5, :cond_3c

    .line 1143
    .line 1144
    invoke-virtual {v4, v6}, Lu1/q;->O(I)V

    .line 1145
    .line 1146
    .line 1147
    iget-object v2, v0, Ls3/s;->f:Ll2/j0;

    .line 1148
    .line 1149
    iget v5, v4, Lu1/q;->c:I

    .line 1150
    .line 1151
    invoke-interface {v2, v5, v4}, Ll2/j0;->a(ILu1/q;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v4, v3}, Lu1/q;->L(I)V

    .line 1155
    .line 1156
    .line 1157
    iget v2, v9, Lf3/a;->d:I

    .line 1158
    .line 1159
    invoke-virtual {v14, v2}, Lu1/q;->L(I)V

    .line 1160
    .line 1161
    .line 1162
    const/4 v2, 0x1

    .line 1163
    iput-boolean v2, v0, Ls3/s;->m:Z

    .line 1164
    .line 1165
    iput v3, v0, Ls3/s;->d:I

    .line 1166
    .line 1167
    goto/16 :goto_13

    .line 1168
    .line 1169
    :cond_3c
    const/4 v2, 0x1

    .line 1170
    iget v5, v4, Lu1/q;->c:I

    .line 1171
    .line 1172
    const/16 v6, 0xf

    .line 1173
    .line 1174
    if-ge v5, v6, :cond_2c

    .line 1175
    .line 1176
    add-int/2addr v5, v2

    .line 1177
    invoke-virtual {v4, v5}, Lu1/q;->N(I)V

    .line 1178
    .line 1179
    .line 1180
    const/4 v2, 0x0

    .line 1181
    iput-boolean v2, v0, Ls3/s;->m:Z

    .line 1182
    .line 1183
    goto/16 :goto_13

    .line 1184
    .line 1185
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    const-string v2, "Contains sub-stream with an invalid packet label "

    .line 1188
    .line 1189
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    iget-wide v2, v9, Lf3/a;->c:J

    .line 1193
    .line 1194
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v1

    .line 1201
    invoke-static {v1}, Lr1/f0;->b(Ljava/lang/String;)Lr1/f0;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    throw v1

    .line 1206
    :cond_3e
    const/4 v2, 0x0

    .line 1207
    iput-boolean v2, v0, Ls3/s;->m:Z

    .line 1208
    .line 1209
    goto/16 :goto_13

    .line 1210
    .line 1211
    :cond_3f
    iget v2, v0, Ls3/s;->k:I

    .line 1212
    .line 1213
    and-int/lit8 v4, v2, 0x2

    .line 1214
    .line 1215
    if-nez v4, :cond_40

    .line 1216
    .line 1217
    iget v2, v1, Lu1/q;->c:I

    .line 1218
    .line 1219
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 1220
    .line 1221
    .line 1222
    const/4 v2, 0x0

    .line 1223
    const/4 v4, 0x4

    .line 1224
    :goto_1b
    const/16 v5, 0x8

    .line 1225
    .line 1226
    goto :goto_1d

    .line 1227
    :cond_40
    const/4 v4, 0x4

    .line 1228
    and-int/2addr v2, v4

    .line 1229
    if-nez v2, :cond_43

    .line 1230
    .line 1231
    :cond_41
    invoke-virtual/range {p1 .. p1}, Lu1/q;->a()I

    .line 1232
    .line 1233
    .line 1234
    move-result v2

    .line 1235
    if-lez v2, :cond_42

    .line 1236
    .line 1237
    iget v2, v0, Ls3/s;->l:I

    .line 1238
    .line 1239
    const/16 v5, 0x8

    .line 1240
    .line 1241
    shl-int/2addr v2, v5

    .line 1242
    iput v2, v0, Ls3/s;->l:I

    .line 1243
    .line 1244
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 1245
    .line 1246
    .line 1247
    move-result v6

    .line 1248
    or-int/2addr v2, v6

    .line 1249
    iput v2, v0, Ls3/s;->l:I

    .line 1250
    .line 1251
    const v6, 0xffffff

    .line 1252
    .line 1253
    .line 1254
    and-int/2addr v2, v6

    .line 1255
    const v6, 0xc001a5

    .line 1256
    .line 1257
    .line 1258
    if-ne v2, v6, :cond_41

    .line 1259
    .line 1260
    iget v2, v1, Lu1/q;->b:I

    .line 1261
    .line 1262
    sub-int/2addr v2, v8

    .line 1263
    invoke-virtual {v1, v2}, Lu1/q;->O(I)V

    .line 1264
    .line 1265
    .line 1266
    const/4 v2, 0x0

    .line 1267
    iput v2, v0, Ls3/s;->l:I

    .line 1268
    .line 1269
    :goto_1c
    const/4 v6, 0x1

    .line 1270
    goto :goto_1e

    .line 1271
    :cond_42
    const/4 v2, 0x0

    .line 1272
    goto :goto_1b

    .line 1273
    :goto_1d
    const/4 v2, 0x4

    .line 1274
    goto/16 :goto_14

    .line 1275
    .line 1276
    :cond_43
    const/4 v2, 0x0

    .line 1277
    const/16 v5, 0x8

    .line 1278
    .line 1279
    goto :goto_1c

    .line 1280
    :goto_1e
    iput v6, v0, Ls3/s;->d:I

    .line 1281
    .line 1282
    const/4 v2, 0x4

    .line 1283
    goto/16 :goto_0

    .line 1284
    .line 1285
    :cond_44
    return-void

    .line 1286
    nop

    .line 1287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls3/s;->d:I

    .line 3
    .line 4
    iput v0, p0, Ls3/s;->l:I

    .line 5
    .line 6
    iget-object v1, p0, Ls3/s;->a:Lu1/q;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v1, v2}, Lu1/q;->L(I)V

    .line 10
    .line 11
    .line 12
    iput v0, p0, Ls3/s;->n:I

    .line 13
    .line 14
    iput v0, p0, Ls3/s;->o:I

    .line 15
    .line 16
    const v1, -0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v1, p0, Ls3/s;->q:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Ls3/s;->r:I

    .line 23
    .line 24
    iput v0, p0, Ls3/s;->s:I

    .line 25
    .line 26
    const-wide/16 v1, -0x1

    .line 27
    .line 28
    iput-wide v1, p0, Ls3/s;->t:J

    .line 29
    .line 30
    iput-boolean v0, p0, Ls3/s;->u:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Ls3/s;->i:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Ls3/s;->m:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Ls3/s;->j:Z

    .line 38
    .line 39
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 40
    .line 41
    iput-wide v0, p0, Ls3/s;->g:D

    .line 42
    .line 43
    iput-wide v0, p0, Ls3/s;->h:D

    .line 44
    .line 45
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(IJ)V
    .locals 2

    .line 1
    iput p1, p0, Ls3/s;->k:I

    .line 2
    .line 3
    iget-boolean p1, p0, Ls3/s;->j:Z

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget p1, p0, Ls3/s;->o:I

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Ls3/s;->m:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Ls3/s;->i:Z

    .line 17
    .line 18
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p1, p2, v0

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-boolean p1, p0, Ls3/s;->i:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    long-to-double p1, p2

    .line 32
    iput-wide p1, p0, Ls3/s;->h:D

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    long-to-double p1, p2

    .line 36
    iput-wide p1, p0, Ls3/s;->g:D

    .line 37
    .line 38
    :cond_3
    :goto_0
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
    iput-object v0, p0, Ls3/s;->e:Ljava/lang/String;

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
    iput-object p1, p0, Ls3/s;->f:Ll2/j0;

    .line 24
    .line 25
    return-void
.end method
