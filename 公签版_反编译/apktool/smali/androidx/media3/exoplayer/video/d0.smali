.class public final Landroidx/media3/exoplayer/video/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La2/g1;

.field public final b:Landroidx/media3/exoplayer/video/z;

.field public final c:Landroidx/media3/exoplayer/video/y;

.field public final d:Lu1/c0;

.field public final e:Lu1/c0;

.field public final f:Lf3/d;

.field public final g:Landroidx/media3/exoplayer/video/a0;

.field public h:J

.field public i:J

.field public j:J

.field public k:Lr1/b1;

.field public l:J


# direct methods
.method public constructor <init>(La2/g1;Landroidx/media3/exoplayer/video/z;Landroidx/media3/exoplayer/video/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d0;->a:La2/g1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/d0;->b:Landroidx/media3/exoplayer/video/z;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/video/d0;->g:Landroidx/media3/exoplayer/video/a0;

    .line 9
    .line 10
    new-instance p1, Landroidx/media3/exoplayer/video/y;

    .line 11
    .line 12
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/y;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d0;->c:Landroidx/media3/exoplayer/video/y;

    .line 16
    .line 17
    new-instance p1, Lu1/c0;

    .line 18
    .line 19
    invoke-direct {p1}, Lu1/c0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d0;->d:Lu1/c0;

    .line 23
    .line 24
    new-instance p1, Lu1/c0;

    .line 25
    .line 26
    invoke-direct {p1}, Lu1/c0;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d0;->e:Lu1/c0;

    .line 30
    .line 31
    new-instance p1, Lf3/d;

    .line 32
    .line 33
    invoke-direct {p1}, Lf3/d;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/media3/exoplayer/video/d0;->f:Lf3/d;

    .line 37
    .line 38
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/d0;->h:J

    .line 44
    .line 45
    sget-object p3, Lr1/b1;->d:Lr1/b1;

    .line 46
    .line 47
    iput-object p3, p0, Landroidx/media3/exoplayer/video/d0;->k:Lr1/b1;

    .line 48
    .line 49
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/d0;->i:J

    .line 50
    .line 51
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/d0;->j:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/video/d0;->f:Lf3/d;

    .line 4
    .line 5
    iget v2, v1, Lf3/d;->c:I

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz v2, :cond_d

    .line 11
    .line 12
    iget-object v2, v1, Lf3/d;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [J

    .line 15
    .line 16
    iget v3, v1, Lf3/d;->a:I

    .line 17
    .line 18
    aget-wide v14, v2, v3

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/media3/exoplayer/video/d0;->e:Lu1/c0;

    .line 21
    .line 22
    invoke-virtual {v2, v14, v15}, Lu1/c0;->f(J)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Long;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    iget-object v13, v0, Landroidx/media3/exoplayer/video/d0;->b:Landroidx/media3/exoplayer/video/z;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-wide v6, v0, Landroidx/media3/exoplayer/video/d0;->l:J

    .line 38
    .line 39
    cmp-long v8, v4, v6

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    iput-wide v4, v0, Landroidx/media3/exoplayer/video/d0;->l:J

    .line 48
    .line 49
    invoke-virtual {v13, v3}, Landroidx/media3/exoplayer/video/z;->d(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-wide v11, v0, Landroidx/media3/exoplayer/video/d0;->l:J

    .line 53
    .line 54
    iget-object v2, v0, Landroidx/media3/exoplayer/video/d0;->c:Landroidx/media3/exoplayer/video/y;

    .line 55
    .line 56
    iget-object v4, v0, Landroidx/media3/exoplayer/video/d0;->b:Landroidx/media3/exoplayer/video/z;

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    move-wide v5, v14

    .line 63
    move-wide/from16 v7, p1

    .line 64
    .line 65
    move-wide/from16 v9, p3

    .line 66
    .line 67
    move-object/from16 v18, v13

    .line 68
    .line 69
    move/from16 v13, v16

    .line 70
    .line 71
    move-wide/from16 v19, v14

    .line 72
    .line 73
    move/from16 v14, v17

    .line 74
    .line 75
    move-object v15, v2

    .line 76
    invoke-virtual/range {v4 .. v15}, Landroidx/media3/exoplayer/video/z;->a(JJJJZZLandroidx/media3/exoplayer/video/y;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/4 v5, 0x4

    .line 81
    const/4 v6, 0x5

    .line 82
    if-eq v4, v6, :cond_2

    .line 83
    .line 84
    if-eq v4, v5, :cond_2

    .line 85
    .line 86
    iget-wide v7, v2, Landroidx/media3/exoplayer/video/y;->b:J

    .line 87
    .line 88
    iget-object v9, v0, Landroidx/media3/exoplayer/video/d0;->g:Landroidx/media3/exoplayer/video/a0;

    .line 89
    .line 90
    move-wide/from16 v10, v19

    .line 91
    .line 92
    invoke-virtual {v9, v10, v11, v7, v8}, Landroidx/media3/exoplayer/video/a0;->a(JJ)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-wide/from16 v10, v19

    .line 97
    .line 98
    :goto_1
    iget-object v7, v0, Landroidx/media3/exoplayer/video/d0;->a:La2/g1;

    .line 99
    .line 100
    const/4 v8, 0x3

    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v12, 0x1

    .line 103
    iget-object v13, v7, La2/g1;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v13, Landroidx/media3/exoplayer/video/d;

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    if-eq v4, v12, :cond_6

    .line 110
    .line 111
    if-eq v4, v3, :cond_5

    .line 112
    .line 113
    if-eq v4, v8, :cond_5

    .line 114
    .line 115
    if-eq v4, v5, :cond_4

    .line 116
    .line 117
    if-ne v4, v6, :cond_3

    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_4
    iput-wide v10, v0, Landroidx/media3/exoplayer/video/d0;->i:J

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_5
    iput-wide v10, v0, Landroidx/media3/exoplayer/video/d0;->i:J

    .line 135
    .line 136
    invoke-virtual {v1}, Lf3/d;->a()J

    .line 137
    .line 138
    .line 139
    iget-object v1, v13, Landroidx/media3/exoplayer/video/d;->i:Ljava/util/concurrent/Executor;

    .line 140
    .line 141
    new-instance v2, Landroidx/media3/exoplayer/video/c;

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    invoke-direct {v2, v7, v3}, Landroidx/media3/exoplayer/video/c;-><init>(La2/g1;I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v13, Landroidx/media3/exoplayer/video/d;->d:Ljava/util/ArrayDeque;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Landroidx/media3/exoplayer/video/h;

    .line 157
    .line 158
    iget-object v2, v1, Landroidx/media3/exoplayer/video/h;->c:Landroidx/media3/exoplayer/video/m;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    const-string v3, "dropVideoBuffer"

    .line 164
    .line 165
    invoke-static {v3}, Ltb/a;->k(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, v1, Landroidx/media3/exoplayer/video/h;->a:Ld2/n;

    .line 169
    .line 170
    iget v1, v1, Landroidx/media3/exoplayer/video/h;->b:I

    .line 171
    .line 172
    invoke-interface {v3, v1}, Ld2/n;->h(I)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Ltb/a;->h()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v9, v12}, Landroidx/media3/exoplayer/video/m;->Q0(II)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_6
    iput-wide v10, v0, Landroidx/media3/exoplayer/video/d0;->i:J

    .line 184
    .line 185
    if-nez v4, :cond_7

    .line 186
    .line 187
    const/4 v3, 0x1

    .line 188
    goto :goto_2

    .line 189
    :cond_7
    const/4 v3, 0x0

    .line 190
    :goto_2
    invoke-virtual {v1}, Lf3/d;->a()J

    .line 191
    .line 192
    .line 193
    move-result-wide v4

    .line 194
    iget-object v1, v0, Landroidx/media3/exoplayer/video/d0;->d:Lu1/c0;

    .line 195
    .line 196
    invoke-virtual {v1, v4, v5}, Lu1/c0;->f(J)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Lr1/b1;

    .line 201
    .line 202
    if-eqz v1, :cond_8

    .line 203
    .line 204
    sget-object v6, Lr1/b1;->d:Lr1/b1;

    .line 205
    .line 206
    invoke-virtual {v1, v6}, Lr1/b1;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-nez v6, :cond_8

    .line 211
    .line 212
    iget-object v6, v0, Landroidx/media3/exoplayer/video/d0;->k:Lr1/b1;

    .line 213
    .line 214
    invoke-virtual {v1, v6}, Lr1/b1;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_8

    .line 219
    .line 220
    iput-object v1, v0, Landroidx/media3/exoplayer/video/d0;->k:Lr1/b1;

    .line 221
    .line 222
    new-instance v6, Lr1/o;

    .line 223
    .line 224
    invoke-direct {v6}, Lr1/o;-><init>()V

    .line 225
    .line 226
    .line 227
    iget v10, v1, Lr1/b1;->a:I

    .line 228
    .line 229
    iput v10, v6, Lr1/o;->u:I

    .line 230
    .line 231
    iget v10, v1, Lr1/b1;->b:I

    .line 232
    .line 233
    iput v10, v6, Lr1/o;->v:I

    .line 234
    .line 235
    const-string v10, "video/raw"

    .line 236
    .line 237
    invoke-static {v10}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    iput-object v10, v6, Lr1/o;->n:Ljava/lang/String;

    .line 242
    .line 243
    new-instance v10, Lr1/p;

    .line 244
    .line 245
    invoke-direct {v10, v6}, Lr1/p;-><init>(Lr1/o;)V

    .line 246
    .line 247
    .line 248
    iput-object v10, v7, La2/g1;->b:Ljava/lang/Object;

    .line 249
    .line 250
    iget-object v6, v13, Landroidx/media3/exoplayer/video/d;->i:Ljava/util/concurrent/Executor;

    .line 251
    .line 252
    new-instance v10, La2/c0;

    .line 253
    .line 254
    const/4 v11, 0x4

    .line 255
    invoke-direct {v10, v7, v11, v1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v6, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 259
    .line 260
    .line 261
    :cond_8
    if-eqz v3, :cond_9

    .line 262
    .line 263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 264
    .line 265
    .line 266
    move-result-wide v1

    .line 267
    :goto_3
    move-object/from16 v3, v18

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_9
    iget-wide v1, v2, Landroidx/media3/exoplayer/video/y;->c:J

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :goto_4
    iget v6, v3, Landroidx/media3/exoplayer/video/z;->e:I

    .line 274
    .line 275
    if-eq v6, v8, :cond_a

    .line 276
    .line 277
    const/4 v9, 0x1

    .line 278
    :cond_a
    iput v8, v3, Landroidx/media3/exoplayer/video/z;->e:I

    .line 279
    .line 280
    iget-object v6, v3, Landroidx/media3/exoplayer/video/z;->l:Lu1/z;

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 286
    .line 287
    .line 288
    move-result-wide v10

    .line 289
    invoke-static {v10, v11}, Lu1/f0;->G(J)J

    .line 290
    .line 291
    .line 292
    move-result-wide v10

    .line 293
    iput-wide v10, v3, Landroidx/media3/exoplayer/video/z;->g:J

    .line 294
    .line 295
    if-eqz v9, :cond_b

    .line 296
    .line 297
    iget-object v3, v13, Landroidx/media3/exoplayer/video/d;->e:Landroid/view/Surface;

    .line 298
    .line 299
    if-eqz v3, :cond_b

    .line 300
    .line 301
    iget-object v3, v13, Landroidx/media3/exoplayer/video/d;->i:Ljava/util/concurrent/Executor;

    .line 302
    .line 303
    new-instance v6, Landroidx/media3/exoplayer/video/c;

    .line 304
    .line 305
    const/4 v8, 0x0

    .line 306
    invoke-direct {v6, v7, v8}, Landroidx/media3/exoplayer/video/c;-><init>(La2/g1;I)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 310
    .line 311
    .line 312
    :cond_b
    iget-object v3, v7, La2/g1;->b:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v3, Lr1/p;

    .line 315
    .line 316
    if-nez v3, :cond_c

    .line 317
    .line 318
    new-instance v3, Lr1/o;

    .line 319
    .line 320
    invoke-direct {v3}, Lr1/o;-><init>()V

    .line 321
    .line 322
    .line 323
    new-instance v6, Lr1/p;

    .line 324
    .line 325
    invoke-direct {v6, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 326
    .line 327
    .line 328
    move-object/from16 v24, v6

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_c
    move-object/from16 v24, v3

    .line 332
    .line 333
    :goto_5
    iget-object v3, v13, Landroidx/media3/exoplayer/video/d;->j:Landroidx/media3/exoplayer/video/x;

    .line 334
    .line 335
    const/16 v25, 0x0

    .line 336
    .line 337
    move-object/from16 v19, v3

    .line 338
    .line 339
    move-wide/from16 v20, v4

    .line 340
    .line 341
    move-wide/from16 v22, v1

    .line 342
    .line 343
    invoke-interface/range {v19 .. v25}, Landroidx/media3/exoplayer/video/x;->c(JJLr1/p;Landroid/media/MediaFormat;)V

    .line 344
    .line 345
    .line 346
    iget-object v3, v13, Landroidx/media3/exoplayer/video/d;->d:Ljava/util/ArrayDeque;

    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    check-cast v3, Landroidx/media3/exoplayer/video/h;

    .line 353
    .line 354
    iget-object v4, v3, Landroidx/media3/exoplayer/video/h;->a:Ld2/n;

    .line 355
    .line 356
    iget v5, v3, Landroidx/media3/exoplayer/video/h;->b:I

    .line 357
    .line 358
    iget-object v3, v3, Landroidx/media3/exoplayer/video/h;->c:Landroidx/media3/exoplayer/video/m;

    .line 359
    .line 360
    invoke-virtual {v3, v4, v5, v1, v2}, Landroidx/media3/exoplayer/video/m;->L0(Ld2/n;IJ)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_0

    .line 364
    .line 365
    :cond_d
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 366
    .line 367
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 368
    .line 369
    .line 370
    goto :goto_7

    .line 371
    :goto_6
    throw v1

    .line 372
    :goto_7
    goto :goto_6
.end method
