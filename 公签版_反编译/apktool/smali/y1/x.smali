.class public final Ly1/x;
.super La/b;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# instance fields
.field public final A:Landroidx/room/i;

.field public final B:Lu1/i0;

.field public final C:Lu1/i0;

.field public final D:J

.field public final E:Lb5/i;

.field public final F:Lu1/x;

.field public final G:Ls4/a;

.field public final H:Lua/i8;

.field public final I:Lua/i8;

.field public K:I

.field public L:Z

.field public M:I

.field public M0:Landroid/view/SurfaceHolder;

.field public N:I

.field public N0:Lk2/k;

.field public O:Z

.field public O0:Z

.field public P:Z

.field public P0:Landroid/view/TextureView;

.field public final Q0:I

.field public R:Lu7/j0;

.field public R0:Lu1/r;

.field public final S:Ly1/d1;

.field public S0:Lr1/d;

.field public final T:Ly1/e1;

.field public T0:F

.field public U0:Z

.field public V:Lf2/e1;

.field public V0:Lt1/c;

.field public final W0:Z

.field public final X:Ly1/n;

.field public X0:Z

.field public Y:Lr1/i0;

.field public final Y0:I

.field public Z:Lr1/b0;

.field public Z0:Z

.field public a1:Lr1/b1;

.field public final b:Lh2/r;

.field public final b1:J

.field public final c:Lr1/i0;

.field public final c1:J

.field public final d:Lu1/e;

.field public final d1:J

.field public final e:Landroid/content/Context;

.field public e1:Lr1/b0;

.field public final f:Lr1/m0;

.field public f1:Ly1/v0;

.field public final g:[Ly1/a;

.field public g1:I

.field public final h:[Ly1/a;

.field public h0:Ljava/lang/Object;

.field public h1:J

.field public final i:Lh2/q;

.field public final j:Lu1/b0;

.field public final k:Ly1/r;

.field public final l:Ly1/f0;

.field public final m:Lu1/m;

.field public final n:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final p:Lr1/o0;

.field public final q:Ljava/util/ArrayList;

.field public final r:Z

.field public final s:Lf2/b0;

.field public final t:Lz1/e;

.field public t0:Landroid/view/Surface;

.field public final v:Landroid/os/Looper;

.field public final w:Li2/c;

.field public final x:Lu1/z;

.field public final y:Ly1/t;

.field public final z:Ly1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer"

    .line 2
    .line 3
    invoke-static {v0}, Lr1/z;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ly1/m;)V
    .locals 45

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v7, 0xa

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    const/4 v14, 0x1

    .line 10
    const/4 v15, 0x0

    .line 11
    const-string v2, " [AndroidXMedia3/1.10.1] ["

    .line 12
    .line 13
    const-string v3, "Init "

    .line 14
    .line 15
    const/4 v8, 0x4

    .line 16
    invoke-direct {v9, v8}, La/b;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lu1/e;

    .line 20
    .line 21
    invoke-direct {v4}, Lu1/e;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v4, v9, Ly1/x;->d:Lu1/e;

    .line 25
    .line 26
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, "]"

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Lu1/a;->j(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    iget-object v6, v0, Ly1/m;->a:Landroid/content/ContextWrapper;

    .line 63
    .line 64
    iget-object v2, v0, Ly1/m;->g:Landroid/os/Looper;

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, v9, Ly1/x;->e:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    iget-object v3, v0, Ly1/m;->b:Lu1/z;

    .line 73
    .line 74
    :try_start_2
    new-instance v4, Lz1/e;

    .line 75
    .line 76
    invoke-direct {v4, v3}, Lz1/e;-><init>(Lu1/z;)V

    .line 77
    .line 78
    .line 79
    iput-object v4, v9, Ly1/x;->t:Lz1/e;

    .line 80
    .line 81
    iget v4, v0, Ly1/m;->h:I

    .line 82
    .line 83
    iput v4, v9, Ly1/x;->Y0:I

    .line 84
    .line 85
    iget-object v4, v0, Ly1/m;->i:Lr1/d;

    .line 86
    .line 87
    iput-object v4, v9, Ly1/x;->S0:Lr1/d;

    .line 88
    .line 89
    iget v4, v0, Ly1/m;->j:I

    .line 90
    .line 91
    iput v4, v9, Ly1/x;->Q0:I

    .line 92
    .line 93
    iput-boolean v15, v9, Ly1/x;->U0:Z

    .line 94
    .line 95
    iget-wide v4, v0, Ly1/m;->s:J

    .line 96
    .line 97
    iput-wide v4, v9, Ly1/x;->D:J

    .line 98
    .line 99
    new-instance v4, Ly1/t;

    .line 100
    .line 101
    invoke-direct {v4, v9}, Ly1/t;-><init>(Ly1/x;)V

    .line 102
    .line 103
    .line 104
    iput-object v4, v9, Ly1/x;->y:Ly1/t;

    .line 105
    .line 106
    new-instance v5, Ly1/u;

    .line 107
    .line 108
    invoke-direct {v5}, Ly1/u;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v5, v9, Ly1/x;->z:Ly1/u;

    .line 112
    .line 113
    new-instance v5, Landroid/os/Handler;

    .line 114
    .line 115
    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    .line 117
    .line 118
    iget-object v11, v0, Ly1/m;->c:Ly1/l;

    .line 119
    .line 120
    invoke-virtual {v11}, Ly1/l;->get()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    move-object/from16 v16, v11

    .line 125
    .line 126
    check-cast v16, Ly1/i;

    .line 127
    .line 128
    move-object/from16 v17, v5

    .line 129
    .line 130
    move-object/from16 v18, v4

    .line 131
    .line 132
    move-object/from16 v19, v4

    .line 133
    .line 134
    move-object/from16 v20, v4

    .line 135
    .line 136
    move-object/from16 v21, v4

    .line 137
    .line 138
    invoke-virtual/range {v16 .. v21}, Ly1/i;->a(Landroid/os/Handler;Ly1/t;Ly1/t;Ly1/t;Ly1/t;)[Ly1/a;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iput-object v4, v9, Ly1/x;->g:[Ly1/a;

    .line 143
    .line 144
    array-length v5, v4

    .line 145
    if-lez v5, :cond_0

    .line 146
    .line 147
    const/4 v5, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_0
    const/4 v5, 0x0

    .line 150
    :goto_0
    invoke-static {v5}, La9/o;->t(Z)V

    .line 151
    .line 152
    .line 153
    array-length v4, v4

    .line 154
    new-array v4, v4, [Ly1/a;

    .line 155
    .line 156
    iput-object v4, v9, Ly1/x;->h:[Ly1/a;

    .line 157
    .line 158
    const/4 v4, 0x0

    .line 159
    :goto_1
    iget-object v5, v9, Ly1/x;->h:[Ly1/a;

    .line 160
    .line 161
    array-length v11, v5

    .line 162
    const/4 v12, 0x0

    .line 163
    if-ge v4, v11, :cond_1

    .line 164
    .line 165
    iget-object v11, v9, Ly1/x;->g:[Ly1/a;

    .line 166
    .line 167
    aget-object v11, v11, v4

    .line 168
    .line 169
    iget v11, v11, Ly1/a;->b:I

    .line 170
    .line 171
    aput-object v12, v5, v4

    .line 172
    .line 173
    add-int/2addr v4, v14

    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    move-object v10, v9

    .line 177
    goto/16 :goto_b

    .line 178
    .line 179
    :cond_1
    iget-object v4, v0, Ly1/m;->e:Ly1/l;

    .line 180
    .line 181
    invoke-virtual {v4}, Ly1/l;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Lh2/q;

    .line 186
    .line 187
    iput-object v4, v9, Ly1/x;->i:Lh2/q;

    .line 188
    .line 189
    iget-object v4, v0, Ly1/m;->d:Ly1/l;

    .line 190
    .line 191
    invoke-virtual {v4}, Ly1/l;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Lf2/b0;

    .line 196
    .line 197
    iput-object v4, v9, Ly1/x;->s:Lf2/b0;

    .line 198
    .line 199
    iget-object v4, v0, Ly1/m;->f:Ly1/l;

    .line 200
    .line 201
    invoke-virtual {v4}, Ly1/l;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Li2/c;

    .line 206
    .line 207
    iput-object v4, v9, Ly1/x;->w:Li2/c;

    .line 208
    .line 209
    iget-boolean v4, v0, Ly1/m;->k:Z

    .line 210
    .line 211
    iput-boolean v4, v9, Ly1/x;->r:Z

    .line 212
    .line 213
    iget-object v4, v0, Ly1/m;->l:Ly1/e1;

    .line 214
    .line 215
    iput-object v4, v9, Ly1/x;->T:Ly1/e1;

    .line 216
    .line 217
    iget-wide v4, v0, Ly1/m;->n:J

    .line 218
    .line 219
    iput-wide v4, v9, Ly1/x;->b1:J

    .line 220
    .line 221
    iget-wide v4, v0, Ly1/m;->o:J

    .line 222
    .line 223
    iput-wide v4, v9, Ly1/x;->c1:J

    .line 224
    .line 225
    iget-wide v4, v0, Ly1/m;->p:J

    .line 226
    .line 227
    iput-wide v4, v9, Ly1/x;->d1:J

    .line 228
    .line 229
    iget-object v4, v0, Ly1/m;->m:Ly1/d1;

    .line 230
    .line 231
    iput-object v4, v9, Ly1/x;->S:Ly1/d1;

    .line 232
    .line 233
    iput-object v2, v9, Ly1/x;->v:Landroid/os/Looper;

    .line 234
    .line 235
    iput-object v3, v9, Ly1/x;->x:Lu1/z;

    .line 236
    .line 237
    iput-object v9, v9, Ly1/x;->f:Lr1/m0;

    .line 238
    .line 239
    new-instance v4, Lu1/m;

    .line 240
    .line 241
    new-instance v5, Ly1/r;

    .line 242
    .line 243
    invoke-direct {v5, v9}, Ly1/r;-><init>(Ly1/x;)V

    .line 244
    .line 245
    .line 246
    new-instance v17, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 247
    .line 248
    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 252
    .line 253
    .line 254
    move-result-object v19

    .line 255
    const/16 v22, 0x1

    .line 256
    .line 257
    move-object/from16 v16, v4

    .line 258
    .line 259
    move-object/from16 v18, v2

    .line 260
    .line 261
    move-object/from16 v20, v3

    .line 262
    .line 263
    move-object/from16 v21, v5

    .line 264
    .line 265
    invoke-direct/range {v16 .. v22}, Lu1/m;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Lu1/z;Lu1/k;Z)V

    .line 266
    .line 267
    .line 268
    iput-object v4, v9, Ly1/x;->m:Lu1/m;

    .line 269
    .line 270
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 271
    .line 272
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 273
    .line 274
    .line 275
    iput-object v2, v9, Ly1/x;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 276
    .line 277
    new-instance v2, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .line 281
    .line 282
    iput-object v2, v9, Ly1/x;->q:Ljava/util/ArrayList;

    .line 283
    .line 284
    new-instance v2, Lf2/e1;

    .line 285
    .line 286
    invoke-direct {v2}, Lf2/e1;-><init>()V

    .line 287
    .line 288
    .line 289
    iput-object v2, v9, Ly1/x;->V:Lf2/e1;

    .line 290
    .line 291
    sget-object v2, Ly1/n;->a:Ly1/n;

    .line 292
    .line 293
    iput-object v2, v9, Ly1/x;->X:Ly1/n;

    .line 294
    .line 295
    new-instance v2, Lh2/r;

    .line 296
    .line 297
    iget-object v3, v9, Ly1/x;->g:[Ly1/a;

    .line 298
    .line 299
    array-length v4, v3

    .line 300
    new-array v4, v4, [Ly1/b1;

    .line 301
    .line 302
    array-length v3, v3

    .line 303
    new-array v3, v3, [Lh2/p;

    .line 304
    .line 305
    sget-object v5, Lr1/x0;->b:Lr1/x0;

    .line 306
    .line 307
    invoke-direct {v2, v4, v3, v5, v12}, Lh2/r;-><init>([Ly1/b1;[Lh2/p;Lr1/x0;Lb5/i;)V

    .line 308
    .line 309
    .line 310
    iput-object v2, v9, Ly1/x;->b:Lh2/r;

    .line 311
    .line 312
    new-instance v2, Lr1/o0;

    .line 313
    .line 314
    invoke-direct {v2}, Lr1/o0;-><init>()V

    .line 315
    .line 316
    .line 317
    iput-object v2, v9, Ly1/x;->p:Lr1/o0;

    .line 318
    .line 319
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 320
    .line 321
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 322
    .line 323
    .line 324
    new-array v3, v1, [I

    .line 325
    .line 326
    fill-array-data v3, :array_0

    .line 327
    .line 328
    .line 329
    const/4 v4, 0x0

    .line 330
    :goto_2
    if-ge v4, v1, :cond_2

    .line 331
    .line 332
    aget v5, v3, v4

    .line 333
    .line 334
    xor-int/lit8 v11, v15, 0x1

    .line 335
    .line 336
    invoke-static {v11}, La9/o;->t(Z)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v5, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 340
    .line 341
    .line 342
    add-int/2addr v4, v14

    .line 343
    goto :goto_2

    .line 344
    :cond_2
    iget-object v1, v9, Ly1/x;->i:Lh2/q;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    xor-int/lit8 v1, v15, 0x1

    .line 350
    .line 351
    invoke-static {v1}, La9/o;->t(Z)V

    .line 352
    .line 353
    .line 354
    const/16 v1, 0x1d

    .line 355
    .line 356
    invoke-virtual {v2, v1, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 357
    .line 358
    .line 359
    new-instance v1, Lr1/i0;

    .line 360
    .line 361
    xor-int/lit8 v3, v15, 0x1

    .line 362
    .line 363
    invoke-static {v3}, La9/o;->t(Z)V

    .line 364
    .line 365
    .line 366
    new-instance v3, Lr1/n;

    .line 367
    .line 368
    invoke-direct {v3, v2}, Lr1/n;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 369
    .line 370
    .line 371
    invoke-direct {v1, v3}, Lr1/i0;-><init>(Lr1/n;)V

    .line 372
    .line 373
    .line 374
    iput-object v1, v9, Ly1/x;->c:Lr1/i0;

    .line 375
    .line 376
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 377
    .line 378
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 379
    .line 380
    .line 381
    const/4 v2, 0x0

    .line 382
    :goto_3
    iget-object v4, v3, Lr1/n;->a:Landroid/util/SparseBooleanArray;

    .line 383
    .line 384
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-ge v2, v4, :cond_3

    .line 389
    .line 390
    invoke-virtual {v3, v2}, Lr1/n;->a(I)I

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    xor-int/lit8 v5, v15, 0x1

    .line 395
    .line 396
    invoke-static {v5}, La9/o;->t(Z)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v4, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 400
    .line 401
    .line 402
    add-int/2addr v2, v14

    .line 403
    goto :goto_3

    .line 404
    :cond_3
    xor-int/lit8 v2, v15, 0x1

    .line 405
    .line 406
    invoke-static {v2}, La9/o;->t(Z)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v8, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 410
    .line 411
    .line 412
    xor-int/lit8 v2, v15, 0x1

    .line 413
    .line 414
    invoke-static {v2}, La9/o;->t(Z)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v7, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 418
    .line 419
    .line 420
    new-instance v2, Lr1/i0;

    .line 421
    .line 422
    xor-int/lit8 v3, v15, 0x1

    .line 423
    .line 424
    invoke-static {v3}, La9/o;->t(Z)V

    .line 425
    .line 426
    .line 427
    new-instance v3, Lr1/n;

    .line 428
    .line 429
    invoke-direct {v3, v1}, Lr1/n;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 430
    .line 431
    .line 432
    invoke-direct {v2, v3}, Lr1/i0;-><init>(Lr1/n;)V

    .line 433
    .line 434
    .line 435
    iput-object v2, v9, Ly1/x;->Y:Lr1/i0;

    .line 436
    .line 437
    iget-object v1, v9, Ly1/x;->x:Lu1/z;

    .line 438
    .line 439
    iget-object v2, v9, Ly1/x;->v:Landroid/os/Looper;

    .line 440
    .line 441
    invoke-virtual {v1, v2, v12}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    iput-object v1, v9, Ly1/x;->j:Lu1/b0;

    .line 446
    .line 447
    new-instance v1, Ly1/r;

    .line 448
    .line 449
    invoke-direct {v1, v9}, Ly1/r;-><init>(Ly1/x;)V

    .line 450
    .line 451
    .line 452
    iput-object v1, v9, Ly1/x;->k:Ly1/r;

    .line 453
    .line 454
    iget-object v2, v9, Ly1/x;->b:Lh2/r;

    .line 455
    .line 456
    invoke-static {v2}, Ly1/v0;->k(Lh2/r;)Ly1/v0;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    iput-object v2, v9, Ly1/x;->f1:Ly1/v0;

    .line 461
    .line 462
    iget-object v2, v9, Ly1/x;->t:Lz1/e;

    .line 463
    .line 464
    iget-object v3, v9, Ly1/x;->f:Lr1/m0;

    .line 465
    .line 466
    iget-object v4, v9, Ly1/x;->v:Landroid/os/Looper;

    .line 467
    .line 468
    invoke-virtual {v2, v3, v4}, Lz1/e;->O(Lr1/m0;Landroid/os/Looper;)V

    .line 469
    .line 470
    .line 471
    new-instance v5, Lz1/i;

    .line 472
    .line 473
    iget-object v2, v0, Ly1/m;->z:Ljava/lang/String;

    .line 474
    .line 475
    invoke-direct {v5, v2}, Lz1/i;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    new-instance v2, Ly1/f0;

    .line 479
    .line 480
    iget-object v3, v9, Ly1/x;->e:Landroid/content/Context;

    .line 481
    .line 482
    iget-object v4, v9, Ly1/x;->g:[Ly1/a;

    .line 483
    .line 484
    iget-object v11, v9, Ly1/x;->h:[Ly1/a;

    .line 485
    .line 486
    iget-object v8, v9, Ly1/x;->i:Lh2/q;

    .line 487
    .line 488
    iget-object v7, v9, Ly1/x;->b:Lh2/r;

    .line 489
    .line 490
    new-instance v29, Ly1/g;

    .line 491
    .line 492
    invoke-direct/range {v29 .. v29}, Ly1/g;-><init>()V

    .line 493
    .line 494
    .line 495
    iget-object v13, v9, Ly1/x;->w:Li2/c;

    .line 496
    .line 497
    iget v12, v9, Ly1/x;->K:I

    .line 498
    .line 499
    iget-boolean v10, v9, Ly1/x;->L:Z

    .line 500
    .line 501
    iget-object v14, v9, Ly1/x;->t:Lz1/e;

    .line 502
    .line 503
    iget-object v15, v9, Ly1/x;->T:Ly1/e1;

    .line 504
    .line 505
    move-object/from16 v16, v6

    .line 506
    .line 507
    iget-object v6, v0, Ly1/m;->q:Ly1/e;

    .line 508
    .line 509
    move-object/from16 v17, v5

    .line 510
    .line 511
    move-object/from16 v18, v6

    .line 512
    .line 513
    iget-wide v5, v0, Ly1/m;->r:J

    .line 514
    .line 515
    move-object/from16 v19, v1

    .line 516
    .line 517
    iget-object v1, v9, Ly1/x;->v:Landroid/os/Looper;

    .line 518
    .line 519
    move-object/from16 v20, v1

    .line 520
    .line 521
    iget-object v1, v9, Ly1/x;->x:Lu1/z;

    .line 522
    .line 523
    move-object/from16 v21, v1

    .line 524
    .line 525
    iget-object v1, v9, Ly1/x;->X:Ly1/n;

    .line 526
    .line 527
    move-object/from16 v42, v1

    .line 528
    .line 529
    iget-object v1, v9, Ly1/x;->z:Ly1/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    .line 531
    :try_start_3
    iget-boolean v9, v0, Ly1/m;->A:Z

    .line 532
    .line 533
    move-object/from16 v23, v2

    .line 534
    .line 535
    move-object/from16 v24, v3

    .line 536
    .line 537
    move-object/from16 v25, v4

    .line 538
    .line 539
    move-object/from16 v26, v11

    .line 540
    .line 541
    move-object/from16 v27, v8

    .line 542
    .line 543
    move-object/from16 v28, v7

    .line 544
    .line 545
    move-object/from16 v30, v13

    .line 546
    .line 547
    move/from16 v31, v12

    .line 548
    .line 549
    move/from16 v32, v10

    .line 550
    .line 551
    move-object/from16 v33, v14

    .line 552
    .line 553
    move-object/from16 v34, v15

    .line 554
    .line 555
    move-object/from16 v35, v18

    .line 556
    .line 557
    move-wide/from16 v36, v5

    .line 558
    .line 559
    move-object/from16 v38, v20

    .line 560
    .line 561
    move-object/from16 v39, v21

    .line 562
    .line 563
    move-object/from16 v40, v19

    .line 564
    .line 565
    move-object/from16 v41, v17

    .line 566
    .line 567
    move-object/from16 v43, v1

    .line 568
    .line 569
    move/from16 v44, v9

    .line 570
    .line 571
    invoke-direct/range {v23 .. v44}, Ly1/f0;-><init>(Landroid/content/Context;[Ly1/a;[Ly1/a;Lh2/q;Lh2/r;Ly1/h0;Li2/c;IZLz1/e;Ly1/e1;Ly1/e;JLandroid/os/Looper;Lu1/z;Ly1/r;Lz1/i;Ly1/n;Landroidx/media3/exoplayer/video/x;Z)V

    .line 572
    .line 573
    .line 574
    iget-object v9, v2, Ly1/f0;->h:Lu1/b0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 575
    .line 576
    move-object/from16 v10, p0

    .line 577
    .line 578
    :try_start_4
    iput-object v2, v10, Ly1/x;->l:Ly1/f0;

    .line 579
    .line 580
    iget-object v11, v2, Ly1/f0;->j:Landroid/os/Looper;

    .line 581
    .line 582
    const/high16 v1, 0x3f800000    # 1.0f

    .line 583
    .line 584
    iput v1, v10, Ly1/x;->T0:F

    .line 585
    .line 586
    const/4 v1, 0x0

    .line 587
    iput v1, v10, Ly1/x;->K:I

    .line 588
    .line 589
    sget-object v1, Lr1/b0;->B:Lr1/b0;

    .line 590
    .line 591
    iput-object v1, v10, Ly1/x;->Z:Lr1/b0;

    .line 592
    .line 593
    iput-object v1, v10, Ly1/x;->e1:Lr1/b0;

    .line 594
    .line 595
    const/4 v12, -0x1

    .line 596
    iput v12, v10, Ly1/x;->g1:I

    .line 597
    .line 598
    sget-object v1, Lt1/c;->c:Lt1/c;

    .line 599
    .line 600
    iput-object v1, v10, Ly1/x;->V0:Lt1/c;

    .line 601
    .line 602
    const/4 v1, 0x1

    .line 603
    iput-boolean v1, v10, Ly1/x;->W0:Z

    .line 604
    .line 605
    iget-object v1, v10, Ly1/x;->t:Lz1/e;

    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    iget-object v3, v10, Ly1/x;->m:Lu1/m;

    .line 611
    .line 612
    invoke-virtual {v3, v1}, Lu1/m;->a(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    iget-object v1, v10, Ly1/x;->w:Li2/c;

    .line 616
    .line 617
    new-instance v3, Landroid/os/Handler;

    .line 618
    .line 619
    iget-object v4, v10, Ly1/x;->v:Landroid/os/Looper;

    .line 620
    .line 621
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 622
    .line 623
    .line 624
    iget-object v4, v10, Ly1/x;->t:Lz1/e;

    .line 625
    .line 626
    check-cast v1, Li2/f;

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    iget-object v1, v1, Li2/f;->c:Landroidx/viewpager2/adapter/b;

    .line 635
    .line 636
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 637
    .line 638
    .line 639
    iget-object v1, v1, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 640
    .line 641
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    :cond_4
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 646
    .line 647
    .line 648
    move-result v6

    .line 649
    if-eqz v6, :cond_5

    .line 650
    .line 651
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v6

    .line 655
    check-cast v6, Li2/b;

    .line 656
    .line 657
    iget-object v7, v6, Li2/b;->b:Lz1/e;

    .line 658
    .line 659
    if-ne v7, v4, :cond_4

    .line 660
    .line 661
    const/4 v7, 0x1

    .line 662
    iput-boolean v7, v6, Li2/b;->c:Z

    .line 663
    .line 664
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    goto :goto_4

    .line 668
    :cond_5
    new-instance v5, Li2/b;

    .line 669
    .line 670
    invoke-direct {v5, v3, v4}, Li2/b;-><init>(Landroid/os/Handler;Lz1/e;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    iget-object v1, v10, Ly1/x;->y:Ly1/t;

    .line 677
    .line 678
    iget-object v3, v10, Ly1/x;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 679
    .line 680
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 684
    .line 685
    const/16 v1, 0x1f

    .line 686
    .line 687
    if-lt v13, v1, :cond_6

    .line 688
    .line 689
    iget-object v3, v10, Ly1/x;->e:Landroid/content/Context;

    .line 690
    .line 691
    iget-boolean v6, v0, Ly1/m;->x:Z

    .line 692
    .line 693
    iget-object v1, v10, Ly1/x;->x:Lu1/z;

    .line 694
    .line 695
    iget-object v2, v2, Ly1/f0;->j:Landroid/os/Looper;

    .line 696
    .line 697
    const/4 v14, 0x0

    .line 698
    invoke-virtual {v1, v2, v14}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    new-instance v8, Lfa/t;

    .line 703
    .line 704
    const/4 v2, 0x2

    .line 705
    move-object v1, v8

    .line 706
    move-object/from16 v4, p0

    .line 707
    .line 708
    move-object/from16 v5, v17

    .line 709
    .line 710
    move-object/from16 v15, v16

    .line 711
    .line 712
    invoke-direct/range {v1 .. v6}, Lfa/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v7, v8}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 716
    .line 717
    .line 718
    goto :goto_5

    .line 719
    :catchall_1
    move-exception v0

    .line 720
    goto/16 :goto_b

    .line 721
    .line 722
    :cond_6
    move-object/from16 v15, v16

    .line 723
    .line 724
    const/4 v14, 0x0

    .line 725
    :goto_5
    new-instance v1, Lb5/i;

    .line 726
    .line 727
    const/4 v2, 0x0

    .line 728
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    iget-object v6, v10, Ly1/x;->v:Landroid/os/Looper;

    .line 733
    .line 734
    iget-object v7, v10, Ly1/x;->x:Lu1/z;

    .line 735
    .line 736
    new-instance v8, Ly1/r;

    .line 737
    .line 738
    invoke-direct {v8, v10}, Ly1/r;-><init>(Ly1/x;)V

    .line 739
    .line 740
    .line 741
    move-object v3, v1

    .line 742
    move-object v5, v11

    .line 743
    invoke-direct/range {v3 .. v8}, Lb5/i;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lu1/z;Ly1/r;)V

    .line 744
    .line 745
    .line 746
    iput-object v1, v10, Ly1/x;->E:Lb5/i;

    .line 747
    .line 748
    new-instance v2, Lua/g8;

    .line 749
    .line 750
    const/16 v3, 0xc

    .line 751
    .line 752
    invoke-direct {v2, v3, v10}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v2}, Lb5/i;->l(Ljava/lang/Runnable;)V

    .line 756
    .line 757
    .line 758
    new-instance v1, Landroidx/room/i;

    .line 759
    .line 760
    iget-object v2, v0, Ly1/m;->g:Landroid/os/Looper;

    .line 761
    .line 762
    iget-object v3, v10, Ly1/x;->y:Ly1/t;

    .line 763
    .line 764
    iget-object v4, v10, Ly1/x;->x:Lu1/z;

    .line 765
    .line 766
    move-object/from16 v16, v1

    .line 767
    .line 768
    move-object/from16 v17, v15

    .line 769
    .line 770
    move-object/from16 v18, v11

    .line 771
    .line 772
    move-object/from16 v19, v2

    .line 773
    .line 774
    move-object/from16 v20, v3

    .line 775
    .line 776
    move-object/from16 v21, v4

    .line 777
    .line 778
    invoke-direct/range {v16 .. v21}, Landroidx/room/i;-><init>(Landroid/content/ContextWrapper;Landroid/os/Looper;Landroid/os/Looper;Ly1/t;Lu1/z;)V

    .line 779
    .line 780
    .line 781
    iput-object v1, v10, Ly1/x;->A:Landroidx/room/i;

    .line 782
    .line 783
    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 784
    .line 785
    .line 786
    iget v1, v0, Ly1/m;->t:I

    .line 787
    .line 788
    const v2, 0x7fffffff

    .line 789
    .line 790
    .line 791
    if-eq v1, v2, :cond_8

    .line 792
    .line 793
    iget v1, v0, Ly1/m;->u:I

    .line 794
    .line 795
    if-eq v1, v2, :cond_8

    .line 796
    .line 797
    iget v1, v0, Ly1/m;->v:I

    .line 798
    .line 799
    if-eq v1, v2, :cond_8

    .line 800
    .line 801
    iget v1, v0, Ly1/m;->w:I

    .line 802
    .line 803
    if-ne v1, v2, :cond_7

    .line 804
    .line 805
    goto :goto_6

    .line 806
    :cond_7
    const/4 v1, 0x1

    .line 807
    goto :goto_7

    .line 808
    :cond_8
    :goto_6
    const/4 v1, 0x0

    .line 809
    :goto_7
    new-instance v2, Lu1/i0;

    .line 810
    .line 811
    iget-object v3, v10, Ly1/x;->x:Lu1/z;

    .line 812
    .line 813
    const/4 v4, 0x0

    .line 814
    invoke-direct {v2, v15, v11, v3, v4}, Lu1/i0;-><init>(Landroid/content/ContextWrapper;Landroid/os/Looper;Lu1/z;I)V

    .line 815
    .line 816
    .line 817
    iput-object v2, v10, Ly1/x;->B:Lu1/i0;

    .line 818
    .line 819
    iget-boolean v3, v2, Lu1/i0;->d:Z

    .line 820
    .line 821
    if-ne v3, v1, :cond_9

    .line 822
    .line 823
    goto :goto_8

    .line 824
    :cond_9
    iput-boolean v1, v2, Lu1/i0;->d:Z

    .line 825
    .line 826
    iget-boolean v3, v2, Lu1/i0;->e:Z

    .line 827
    .line 828
    invoke-virtual {v2, v1, v3}, Lu1/i0;->a(ZZ)V

    .line 829
    .line 830
    .line 831
    :goto_8
    new-instance v2, Lu1/i0;

    .line 832
    .line 833
    iget-object v3, v10, Ly1/x;->x:Lu1/z;

    .line 834
    .line 835
    const/4 v4, 0x1

    .line 836
    invoke-direct {v2, v15, v11, v3, v4}, Lu1/i0;-><init>(Landroid/content/ContextWrapper;Landroid/os/Looper;Lu1/z;I)V

    .line 837
    .line 838
    .line 839
    iput-object v2, v10, Ly1/x;->C:Lu1/i0;

    .line 840
    .line 841
    const/4 v3, 0x2

    .line 842
    if-ne v1, v3, :cond_a

    .line 843
    .line 844
    const/4 v1, 0x1

    .line 845
    goto :goto_9

    .line 846
    :cond_a
    const/4 v1, 0x0

    .line 847
    :goto_9
    iget-boolean v3, v2, Lu1/i0;->d:Z

    .line 848
    .line 849
    if-ne v3, v1, :cond_b

    .line 850
    .line 851
    goto :goto_a

    .line 852
    :cond_b
    iput-boolean v1, v2, Lu1/i0;->d:Z

    .line 853
    .line 854
    iget-boolean v3, v2, Lu1/i0;->e:Z

    .line 855
    .line 856
    invoke-virtual {v2, v1, v3}, Lu1/i0;->b(ZZ)V

    .line 857
    .line 858
    .line 859
    :goto_a
    sget v1, Lr1/i;->c:I

    .line 860
    .line 861
    sget-object v1, Lr1/b1;->d:Lr1/b1;

    .line 862
    .line 863
    iput-object v1, v10, Ly1/x;->a1:Lr1/b1;

    .line 864
    .line 865
    sget-object v1, Lu1/r;->c:Lu1/r;

    .line 866
    .line 867
    iput-object v1, v10, Ly1/x;->R0:Lu1/r;

    .line 868
    .line 869
    const/16 v1, 0x22

    .line 870
    .line 871
    if-lt v13, v1, :cond_c

    .line 872
    .line 873
    new-instance v1, Ls4/a;

    .line 874
    .line 875
    invoke-direct {v1, v10, v15}, Ls4/a;-><init>(Ly1/x;Landroid/content/ContextWrapper;)V

    .line 876
    .line 877
    .line 878
    move-object v14, v1

    .line 879
    :cond_c
    iput-object v14, v10, Ly1/x;->G:Ls4/a;

    .line 880
    .line 881
    new-instance v1, Lua/i8;

    .line 882
    .line 883
    const/16 v2, 0xa

    .line 884
    .line 885
    invoke-direct {v1, v2}, Lua/i8;-><init>(I)V

    .line 886
    .line 887
    .line 888
    iput-object v1, v10, Ly1/x;->H:Lua/i8;

    .line 889
    .line 890
    new-instance v1, Lua/i8;

    .line 891
    .line 892
    invoke-direct {v1, v2}, Lua/i8;-><init>(I)V

    .line 893
    .line 894
    .line 895
    iput-object v1, v10, Ly1/x;->I:Lua/i8;

    .line 896
    .line 897
    new-instance v11, Lu1/x;

    .line 898
    .line 899
    iget-object v3, v10, Ly1/x;->y:Ly1/t;

    .line 900
    .line 901
    iget-object v4, v10, Ly1/x;->x:Lu1/z;

    .line 902
    .line 903
    iget v5, v0, Ly1/m;->t:I

    .line 904
    .line 905
    iget v6, v0, Ly1/m;->u:I

    .line 906
    .line 907
    iget v7, v0, Ly1/m;->v:I

    .line 908
    .line 909
    iget v8, v0, Ly1/m;->w:I

    .line 910
    .line 911
    move-object v1, v11

    .line 912
    move-object/from16 v2, p0

    .line 913
    .line 914
    const/4 v0, 0x4

    .line 915
    invoke-direct/range {v1 .. v8}, Lu1/x;-><init>(Ly1/x;Ly1/t;Lu1/z;IIII)V

    .line 916
    .line 917
    .line 918
    iput-object v11, v10, Ly1/x;->F:Lu1/x;

    .line 919
    .line 920
    iget-object v1, v10, Ly1/x;->S:Ly1/d1;

    .line 921
    .line 922
    const/16 v2, 0x26

    .line 923
    .line 924
    invoke-virtual {v9, v2, v1}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    invoke-virtual {v1}, Lu1/a0;->b()V

    .line 929
    .line 930
    .line 931
    iget-object v1, v10, Ly1/x;->S0:Lr1/d;

    .line 932
    .line 933
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    .line 935
    .line 936
    invoke-static {}, Lu1/b0;->c()Lu1/a0;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    iget-object v3, v9, Lu1/b0;->a:Landroid/os/Handler;

    .line 941
    .line 942
    const/4 v4, 0x0

    .line 943
    const/16 v5, 0x1f

    .line 944
    .line 945
    invoke-virtual {v3, v5, v4, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    iput-object v1, v2, Lu1/a0;->a:Landroid/os/Message;

    .line 950
    .line 951
    invoke-virtual {v2}, Lu1/a0;->b()V

    .line 952
    .line 953
    .line 954
    iget-object v1, v10, Ly1/x;->S0:Lr1/d;

    .line 955
    .line 956
    const/4 v2, 0x1

    .line 957
    const/4 v3, 0x3

    .line 958
    invoke-virtual {v10, v2, v3, v1}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 959
    .line 960
    .line 961
    iget v1, v10, Ly1/x;->Q0:I

    .line 962
    .line 963
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    const/4 v2, 0x2

    .line 968
    invoke-virtual {v10, v2, v0, v1}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 969
    .line 970
    .line 971
    const/4 v0, 0x0

    .line 972
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    const/4 v1, 0x5

    .line 977
    invoke-virtual {v10, v2, v1, v0}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 978
    .line 979
    .line 980
    iget-boolean v0, v10, Ly1/x;->U0:Z

    .line 981
    .line 982
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    const/16 v1, 0x9

    .line 987
    .line 988
    const/4 v2, 0x1

    .line 989
    invoke-virtual {v10, v2, v1, v0}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 990
    .line 991
    .line 992
    iget-object v0, v10, Ly1/x;->z:Ly1/u;

    .line 993
    .line 994
    const/4 v1, 0x6

    .line 995
    const/16 v2, 0x8

    .line 996
    .line 997
    invoke-virtual {v10, v1, v2, v0}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 998
    .line 999
    .line 1000
    iget v0, v10, Ly1/x;->Y0:I

    .line 1001
    .line 1002
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    const/16 v1, 0x10

    .line 1007
    .line 1008
    invoke-virtual {v10, v12, v1, v0}, Ly1/x;->W(IILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1009
    .line 1010
    .line 1011
    iget-object v0, v10, Ly1/x;->d:Lu1/e;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Lu1/e;->e()Z

    .line 1014
    .line 1015
    .line 1016
    return-void

    .line 1017
    :catchall_2
    move-exception v0

    .line 1018
    move-object/from16 v10, p0

    .line 1019
    .line 1020
    :goto_b
    iget-object v1, v10, Ly1/x;->d:Lu1/e;

    .line 1021
    .line 1022
    invoke-virtual {v1}, Lu1/e;->e()Z

    .line 1023
    .line 1024
    .line 1025
    goto :goto_d

    .line 1026
    :goto_c
    throw v0

    .line 1027
    :goto_d
    goto :goto_c

    .line 1028
    nop

    .line 1029
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static L(Ly1/v0;)J
    .locals 7

    .line 1
    new-instance v0, Lr1/p0;

    .line 2
    .line 3
    invoke-direct {v0}, Lr1/p0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lr1/o0;

    .line 7
    .line 8
    invoke-direct {v1}, Lr1/o0;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Ly1/v0;->a:Lr1/q0;

    .line 12
    .line 13
    iget-object v3, p0, Ly1/v0;->b:Lf2/c0;

    .line 14
    .line 15
    iget-object v3, v3, Lf2/c0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 18
    .line 19
    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-wide v4, p0, Ly1/v0;->c:J

    .line 26
    .line 27
    cmp-long v6, v4, v2

    .line 28
    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    iget v1, v1, Lr1/o0;->c:I

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    iget-object p0, p0, Ly1/v0;->a:Lr1/q0;

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-wide v0, p0, Lr1/p0;->k:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v0, v1, Lr1/o0;->e:J

    .line 45
    .line 46
    add-long/2addr v0, v4

    .line 47
    :goto_0
    return-wide v0
.end method

.method public static O(Ly1/v0;I)Ly1/v0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ly1/v0;->h(I)Ly1/v0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Ly1/v0;->b(Z)Ly1/v0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final A()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ly1/x;->G(Ly1/v0;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return v0
.end method

.method public final B()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Ly1/x;->g1:I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_0
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 22
    .line 23
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 24
    .line 25
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 26
    .line 27
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public final C()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ly1/x;->D(Ly1/v0;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public final D(Ly1/v0;)J
    .locals 4

    .line 1
    iget-object v0, p1, Ly1/v0;->a:Lr1/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Ly1/x;->h1:J

    .line 10
    .line 11
    invoke-static {v0, v1}, Lu1/f0;->G(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-boolean v0, p1, Ly1/v0;->p:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ly1/v0;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide v0, p1, Ly1/v0;->s:J

    .line 26
    .line 27
    :goto_0
    iget-object v2, p1, Ly1/v0;->b:Lf2/c0;

    .line 28
    .line 29
    invoke-virtual {v2}, Lf2/c0;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    iget-object v2, p1, Ly1/v0;->a:Lr1/q0;

    .line 37
    .line 38
    iget-object p1, p1, Ly1/v0;->b:Lf2/c0;

    .line 39
    .line 40
    iget-object p1, p1, Lf2/c0;->a:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v3, p0, Ly1/x;->p:Lr1/o0;

    .line 43
    .line 44
    invoke-virtual {v2, p1, v3}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 45
    .line 46
    .line 47
    iget-wide v2, v3, Lr1/o0;->e:J

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    return-wide v0
.end method

.method public final E()Lr1/q0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 7
    .line 8
    return-object v0
.end method

.method public final F()Lr1/x0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget-object v0, v0, Ly1/v0;->i:Lh2/r;

    .line 7
    .line 8
    iget-object v0, v0, Lh2/r;->d:Lr1/x0;

    .line 9
    .line 10
    return-object v0
.end method

.method public final G(Ly1/v0;)I
    .locals 2

    .line 1
    iget-object v0, p1, Ly1/v0;->a:Lr1/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Ly1/x;->g1:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p1, Ly1/v0;->b:Lf2/c0;

    .line 13
    .line 14
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Ly1/x;->p:Lr1/o0;

    .line 17
    .line 18
    iget-object p1, p1, Ly1/v0;->a:Lr1/q0;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget p1, p1, Lr1/o0;->c:I

    .line 25
    .line 26
    return p1
.end method

.method public final H()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ly1/x;->N()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 11
    .line 12
    iget-object v1, v0, Ly1/v0;->b:Lf2/c0;

    .line 13
    .line 14
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 15
    .line 16
    iget-object v2, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v3, p0, Ly1/x;->p:Lr1/o0;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 21
    .line 22
    .line 23
    iget v0, v1, Lf2/c0;->b:I

    .line 24
    .line 25
    iget v1, v1, Lf2/c0;->c:I

    .line 26
    .line 27
    invoke-virtual {v3, v0, v1}, Lr1/o0;->a(II)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_0
    invoke-virtual {p0}, La/b;->g()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget-boolean v0, v0, Ly1/v0;->l:Z

    .line 7
    .line 8
    return v0
.end method

.method public final J()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget v0, v0, Ly1/v0;->e:I

    .line 7
    .line 8
    return v0
.end method

.method public final K()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget v0, v0, Ly1/v0;->n:I

    .line 7
    .line 8
    return v0
.end method

.method public final M()Lr1/v0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->i:Lh2/q;

    .line 5
    .line 6
    check-cast v0, Lh2/n;

    .line 7
    .line 8
    invoke-virtual {v0}, Lh2/n;->k()Lh2/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-boolean v1, p0, Ly1/x;->P:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lh2/h;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lh2/h;-><init>(Lh2/i;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ly1/x;->R:Lu7/j0;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lh2/h;->j(Ljava/util/Set;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lh2/i;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lh2/i;-><init>(Lh2/h;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v0
.end method

.method public final N()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lf2/c0;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final P(Ly1/v0;Lr1/q0;Landroid/util/Pair;)Ly1/v0;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lr1/q0;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 21
    :goto_1
    invoke-static {v3}, La9/o;->k(Z)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    iget-object v6, v3, Ly1/v0;->a:Lr1/q0;

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p1}, Ly1/x;->x(Ly1/v0;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    invoke-virtual/range {p1 .. p2}, Ly1/v0;->j(Lr1/q0;)Ly1/v0;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual/range {p2 .. p2}, Lr1/q0;->p()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    sget-object v1, Ly1/v0;->u:Lf2/c0;

    .line 43
    .line 44
    iget-wide v2, v0, Ly1/x;->h1:J

    .line 45
    .line 46
    invoke-static {v2, v3}, Lu1/f0;->G(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v15

    .line 50
    sget-object v19, Lf2/j1;->d:Lf2/j1;

    .line 51
    .line 52
    iget-object v2, v0, Ly1/x;->b:Lh2/r;

    .line 53
    .line 54
    sget-object v21, Lu7/y0;->e:Lu7/y0;

    .line 55
    .line 56
    const-wide/16 v17, 0x0

    .line 57
    .line 58
    move-object v10, v1

    .line 59
    move-wide v11, v15

    .line 60
    move-wide v13, v15

    .line 61
    move-object/from16 v20, v2

    .line 62
    .line 63
    invoke-virtual/range {v9 .. v21}, Ly1/v0;->d(Lf2/c0;JJJJLf2/j1;Lh2/r;Ljava/util/List;)Ly1/v0;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Ly1/v0;->c(Lf2/c0;)Ly1/v0;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-wide v2, v1, Ly1/v0;->s:J

    .line 72
    .line 73
    iput-wide v2, v1, Ly1/v0;->q:J

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_2
    iget-object v3, v9, Ly1/v0;->b:Lf2/c0;

    .line 77
    .line 78
    iget-object v3, v3, Lf2/c0;->a:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-nez v10, :cond_3

    .line 87
    .line 88
    new-instance v11, Lf2/c0;

    .line 89
    .line 90
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-direct {v11, v12}, Lf2/c0;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    move-object v15, v11

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    iget-object v11, v9, Ly1/v0;->b:Lf2/c0;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v2, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v13

    .line 108
    invoke-static {v7, v8}, Lu1/f0;->G(J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    invoke-virtual {v6}, Lr1/q0;->p()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_4

    .line 117
    .line 118
    iget-object v2, v0, Ly1/x;->p:Lr1/o0;

    .line 119
    .line 120
    invoke-virtual {v6, v3, v2}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-wide v11, v2, Lr1/o0;->e:J

    .line 125
    .line 126
    sub-long/2addr v7, v11

    .line 127
    if-eqz v10, :cond_4

    .line 128
    .line 129
    sub-long v11, v7, v13

    .line 130
    .line 131
    const-wide/16 v16, 0x1

    .line 132
    .line 133
    cmp-long v2, v11, v16

    .line 134
    .line 135
    if-nez v2, :cond_4

    .line 136
    .line 137
    iget-object v2, v0, Ly1/x;->p:Lr1/o0;

    .line 138
    .line 139
    invoke-virtual {v6, v3, v2}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget-wide v2, v2, Lr1/o0;->d:J

    .line 144
    .line 145
    cmp-long v6, v7, v2

    .line 146
    .line 147
    if-nez v6, :cond_4

    .line 148
    .line 149
    sub-long v7, v7, v16

    .line 150
    .line 151
    :cond_4
    if-eqz v10, :cond_5

    .line 152
    .line 153
    cmp-long v2, v13, v7

    .line 154
    .line 155
    if-gez v2, :cond_6

    .line 156
    .line 157
    :cond_5
    move-wide v7, v13

    .line 158
    move-object v1, v15

    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_6
    cmp-long v2, v13, v7

    .line 162
    .line 163
    if-nez v2, :cond_9

    .line 164
    .line 165
    iget-object v2, v9, Ly1/v0;->k:Lf2/c0;

    .line 166
    .line 167
    iget-object v2, v2, Lf2/c0;->a:Ljava/lang/Object;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    const/4 v3, -0x1

    .line 174
    if-eq v2, v3, :cond_7

    .line 175
    .line 176
    iget-object v3, v0, Ly1/x;->p:Lr1/o0;

    .line 177
    .line 178
    invoke-virtual {v1, v2, v3, v4}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iget v2, v2, Lr1/o0;->c:I

    .line 183
    .line 184
    iget-object v3, v15, Lf2/c0;->a:Ljava/lang/Object;

    .line 185
    .line 186
    iget-object v4, v0, Ly1/x;->p:Lr1/o0;

    .line 187
    .line 188
    invoke-virtual {v1, v3, v4}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    iget v3, v3, Lr1/o0;->c:I

    .line 193
    .line 194
    if-eq v2, v3, :cond_e

    .line 195
    .line 196
    :cond_7
    iget-object v2, v15, Lf2/c0;->a:Ljava/lang/Object;

    .line 197
    .line 198
    iget-object v3, v0, Ly1/x;->p:Lr1/o0;

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15}, Lf2/c0;->b()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    iget-object v1, v0, Ly1/x;->p:Lr1/o0;

    .line 210
    .line 211
    iget v2, v15, Lf2/c0;->b:I

    .line 212
    .line 213
    iget v3, v15, Lf2/c0;->c:I

    .line 214
    .line 215
    invoke-virtual {v1, v2, v3}, Lr1/o0;->a(II)J

    .line 216
    .line 217
    .line 218
    move-result-wide v1

    .line 219
    goto :goto_4

    .line 220
    :cond_8
    iget-object v1, v0, Ly1/x;->p:Lr1/o0;

    .line 221
    .line 222
    iget-wide v1, v1, Lr1/o0;->d:J

    .line 223
    .line 224
    :goto_4
    iget-wide v11, v9, Ly1/v0;->s:J

    .line 225
    .line 226
    iget-wide v13, v9, Ly1/v0;->s:J

    .line 227
    .line 228
    iget-wide v3, v9, Ly1/v0;->d:J

    .line 229
    .line 230
    iget-wide v5, v9, Ly1/v0;->s:J

    .line 231
    .line 232
    sub-long v17, v1, v5

    .line 233
    .line 234
    iget-object v5, v9, Ly1/v0;->h:Lf2/j1;

    .line 235
    .line 236
    iget-object v6, v9, Ly1/v0;->i:Lh2/r;

    .line 237
    .line 238
    iget-object v7, v9, Ly1/v0;->j:Ljava/util/List;

    .line 239
    .line 240
    move-object v10, v15

    .line 241
    move-object v8, v15

    .line 242
    move-wide v15, v3

    .line 243
    move-object/from16 v19, v5

    .line 244
    .line 245
    move-object/from16 v20, v6

    .line 246
    .line 247
    move-object/from16 v21, v7

    .line 248
    .line 249
    invoke-virtual/range {v9 .. v21}, Ly1/v0;->d(Lf2/c0;JJJJLf2/j1;Lh2/r;Ljava/util/List;)Ly1/v0;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v3, v8}, Ly1/v0;->c(Lf2/c0;)Ly1/v0;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    iput-wide v1, v9, Ly1/v0;->q:J

    .line 258
    .line 259
    goto/16 :goto_c

    .line 260
    .line 261
    :cond_9
    move-object v1, v15

    .line 262
    invoke-virtual {v1}, Lf2/c0;->b()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    xor-int/2addr v2, v5

    .line 267
    invoke-static {v2}, La9/o;->t(Z)V

    .line 268
    .line 269
    .line 270
    iget-wide v2, v9, Ly1/v0;->r:J

    .line 271
    .line 272
    sub-long v4, v13, v7

    .line 273
    .line 274
    sub-long/2addr v2, v4

    .line 275
    const-wide/16 v4, 0x0

    .line 276
    .line 277
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 278
    .line 279
    .line 280
    move-result-wide v17

    .line 281
    iget-wide v2, v9, Ly1/v0;->q:J

    .line 282
    .line 283
    iget-object v4, v9, Ly1/v0;->k:Lf2/c0;

    .line 284
    .line 285
    iget-object v5, v9, Ly1/v0;->b:Lf2/c0;

    .line 286
    .line 287
    invoke-virtual {v4, v5}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_a

    .line 292
    .line 293
    add-long v2, v13, v17

    .line 294
    .line 295
    :cond_a
    iget-object v4, v9, Ly1/v0;->h:Lf2/j1;

    .line 296
    .line 297
    iget-object v5, v9, Ly1/v0;->i:Lh2/r;

    .line 298
    .line 299
    iget-object v6, v9, Ly1/v0;->j:Ljava/util/List;

    .line 300
    .line 301
    move-object v10, v1

    .line 302
    move-wide v11, v13

    .line 303
    move-wide v7, v13

    .line 304
    move-wide v15, v7

    .line 305
    move-object/from16 v19, v4

    .line 306
    .line 307
    move-object/from16 v20, v5

    .line 308
    .line 309
    move-object/from16 v21, v6

    .line 310
    .line 311
    invoke-virtual/range {v9 .. v21}, Ly1/v0;->d(Lf2/c0;JJJJLf2/j1;Lh2/r;Ljava/util/List;)Ly1/v0;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    iput-wide v2, v9, Ly1/v0;->q:J

    .line 316
    .line 317
    goto :goto_c

    .line 318
    :goto_5
    invoke-virtual {v1}, Lf2/c0;->b()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    xor-int/2addr v2, v5

    .line 323
    invoke-static {v2}, La9/o;->t(Z)V

    .line 324
    .line 325
    .line 326
    if-nez v10, :cond_b

    .line 327
    .line 328
    sget-object v2, Lf2/j1;->d:Lf2/j1;

    .line 329
    .line 330
    :goto_6
    move-object/from16 v19, v2

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_b
    iget-object v2, v9, Ly1/v0;->h:Lf2/j1;

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :goto_7
    if-nez v10, :cond_c

    .line 337
    .line 338
    iget-object v2, v0, Ly1/x;->b:Lh2/r;

    .line 339
    .line 340
    :goto_8
    move-object/from16 v20, v2

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_c
    iget-object v2, v9, Ly1/v0;->i:Lh2/r;

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :goto_9
    if-nez v10, :cond_d

    .line 347
    .line 348
    sget-object v2, Lu7/g0;->b:Lu7/e0;

    .line 349
    .line 350
    sget-object v2, Lu7/y0;->e:Lu7/y0;

    .line 351
    .line 352
    :goto_a
    move-object/from16 v21, v2

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_d
    iget-object v2, v9, Ly1/v0;->j:Ljava/util/List;

    .line 356
    .line 357
    goto :goto_a

    .line 358
    :goto_b
    const-wide/16 v17, 0x0

    .line 359
    .line 360
    move-object v10, v1

    .line 361
    move-wide v11, v7

    .line 362
    move-wide v13, v7

    .line 363
    move-wide v15, v7

    .line 364
    invoke-virtual/range {v9 .. v21}, Ly1/v0;->d(Lf2/c0;JJJJLf2/j1;Lh2/r;Ljava/util/List;)Ly1/v0;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v2, v1}, Ly1/v0;->c(Lf2/c0;)Ly1/v0;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    iput-wide v7, v9, Ly1/v0;->q:J

    .line 373
    .line 374
    :cond_e
    :goto_c
    return-object v9
.end method

.method public final Q(Lr1/q0;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lr1/q0;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput p2, p0, Ly1/x;->g1:I

    .line 10
    .line 11
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v0, p3, p1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move-wide p3, v1

    .line 21
    :cond_0
    iput-wide p3, p0, Ly1/x;->h1:J

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_1
    const/4 v0, -0x1

    .line 26
    if-eq p2, v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lr1/q0;->o()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lt p2, v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move v3, p2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    :goto_1
    iget-boolean p2, p0, Ly1/x;->L:Z

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lr1/q0;->a(Z)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget-object p3, p0, La/b;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p3, Lr1/p0;

    .line 46
    .line 47
    invoke-virtual {p1, p2, p3, v1, v2}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    iget-wide p3, p3, Lr1/p0;->k:J

    .line 52
    .line 53
    invoke-static {p3, p4}, Lu1/f0;->R(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide p3

    .line 57
    goto :goto_0

    .line 58
    :goto_2
    iget-object v2, p0, Ly1/x;->p:Lr1/o0;

    .line 59
    .line 60
    invoke-static {p3, p4}, Lu1/f0;->G(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    iget-object p2, p0, La/b;->a:Ljava/lang/Object;

    .line 65
    .line 66
    move-object v1, p2

    .line 67
    check-cast v1, Lr1/p0;

    .line 68
    .line 69
    move-object v0, p1

    .line 70
    invoke-virtual/range {v0 .. v5}, Lr1/q0;->i(Lr1/p0;Lr1/o0;IJ)Landroid/util/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public final R(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/x;->R0:Lu1/r;

    .line 2
    .line 3
    iget v1, v0, Lu1/r;->a:I

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lu1/r;->b:I

    .line 8
    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lu1/r;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lu1/r;-><init>(II)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ly1/x;->R0:Lu1/r;

    .line 17
    .line 18
    new-instance v0, Ly1/q;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Ly1/q;-><init>(II)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ly1/x;->m:Lu1/m;

    .line 24
    .line 25
    const/16 v2, 0x18

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Lu1/m;->e(ILu1/j;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lu1/r;

    .line 31
    .line 32
    invoke-direct {v0, p1, p2}, Lu1/r;-><init>(II)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    const/16 p2, 0xe

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v0}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final S()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget v1, v0, Ly1/v0;->e:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ly1/v0;->f(Ly1/k;)Ly1/v0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 18
    .line 19
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    :goto_0
    invoke-static {v0, v1}, Ly1/x;->O(Ly1/v0;I)Ly1/v0;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v0, p0, Ly1/x;->M:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    iput v0, p0, Ly1/x;->M:I

    .line 36
    .line 37
    iget-object v0, p0, Ly1/x;->l:Ly1/f0;

    .line 38
    .line 39
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 40
    .line 41
    const/16 v1, 0x1d

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lu1/b0;->a(I)Lu1/a0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lu1/a0;->b()V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x5

    .line 51
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v10, -0x1

    .line 59
    const/4 v11, 0x0

    .line 60
    move-object v3, p0

    .line 61
    invoke-virtual/range {v3 .. v11}, Ly1/x;->f0(Ly1/v0;IZIJIZ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final T()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Release "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " [AndroidXMedia3/1.10.1] ["

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "] ["

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lr1/z;->a:Ljava/util/HashSet;

    .line 35
    .line 36
    const-class v1, Lr1/z;

    .line 37
    .line 38
    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v2, Lr1/z;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit v1

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "]"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lu1/a;->j(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Ly1/x;->A:Landroidx/room/i;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Ly1/x;->B:Lu1/i0;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lu1/i0;->c(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Ly1/x;->C:Lu1/i0;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lu1/i0;->c(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Ly1/x;->G:Ls4/a;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v2, 0x22

    .line 83
    .line 84
    if-lt v1, v2, :cond_1

    .line 85
    .line 86
    iget-object v1, v0, Ls4/a;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/content/Context;

    .line 95
    .line 96
    if-nez v1, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Ly1/w;

    .line 102
    .line 103
    invoke-static {v1, v0}, La2/b1;->f(Landroid/content/Context;Ly1/w;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    iget-object v0, p0, Ly1/x;->F:Lu1/x;

    .line 107
    .line 108
    iget-object v1, v0, Lu1/x;->f:Lu1/b0;

    .line 109
    .line 110
    iget-object v1, v1, Lu1/b0;->a:Landroid/os/Handler;

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lu1/x;->b:Lu1/s;

    .line 117
    .line 118
    iget-object v0, v0, Lu1/x;->a:Ly1/x;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ly1/x;->U(Lr1/k0;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Ly1/x;->l:Ly1/f0;

    .line 124
    .line 125
    iget-boolean v1, v0, Ly1/f0;->M:Z

    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    if-nez v1, :cond_3

    .line 129
    .line 130
    iget-object v1, v0, Ly1/f0;->j:Landroid/os/Looper;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_2

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    iput-boolean v3, v0, Ly1/f0;->M:Z

    .line 144
    .line 145
    new-instance v1, Lu1/e;

    .line 146
    .line 147
    iget-object v4, v0, Ly1/f0;->q:Lu1/z;

    .line 148
    .line 149
    invoke-direct {v1, v4}, Lu1/e;-><init>(Lu1/z;)V

    .line 150
    .line 151
    .line 152
    iget-object v4, v0, Ly1/f0;->h:Lu1/b0;

    .line 153
    .line 154
    const/4 v5, 0x7

    .line 155
    invoke-virtual {v4, v5, v1}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Lu1/a0;->b()V

    .line 160
    .line 161
    .line 162
    iget-wide v4, v0, Ly1/f0;->w:J

    .line 163
    .line 164
    invoke-virtual {v1, v4, v5}, Lu1/e;->c(J)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    goto :goto_2

    .line 169
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 170
    :goto_2
    if-nez v0, :cond_4

    .line 171
    .line 172
    iget-object v0, p0, Ly1/x;->m:Lu1/m;

    .line 173
    .line 174
    new-instance v1, Lua/t6;

    .line 175
    .line 176
    const/16 v4, 0xc

    .line 177
    .line 178
    invoke-direct {v1, v4}, Lua/t6;-><init>(I)V

    .line 179
    .line 180
    .line 181
    const/16 v4, 0xa

    .line 182
    .line 183
    invoke-virtual {v0, v4, v1}, Lu1/m;->e(ILu1/j;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    iget-object v0, p0, Ly1/x;->m:Lu1/m;

    .line 187
    .line 188
    invoke-virtual {v0}, Lu1/m;->d()V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Ly1/x;->j:Lu1/b0;

    .line 192
    .line 193
    iget-object v0, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Ly1/x;->w:Li2/c;

    .line 199
    .line 200
    iget-object v1, p0, Ly1/x;->t:Lz1/e;

    .line 201
    .line 202
    check-cast v0, Li2/f;

    .line 203
    .line 204
    iget-object v0, v0, Li2/f;->c:Landroidx/viewpager2/adapter/b;

    .line 205
    .line 206
    iget-object v0, v0, Landroidx/viewpager2/adapter/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_6

    .line 217
    .line 218
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Li2/b;

    .line 223
    .line 224
    iget-object v6, v5, Li2/b;->b:Lz1/e;

    .line 225
    .line 226
    if-ne v6, v1, :cond_5

    .line 227
    .line 228
    iput-boolean v3, v5, Li2/b;->c:Z

    .line 229
    .line 230
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_6
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 235
    .line 236
    iget-boolean v1, v0, Ly1/v0;->p:Z

    .line 237
    .line 238
    if-eqz v1, :cond_7

    .line 239
    .line 240
    invoke-virtual {v0}, Ly1/v0;->a()Ly1/v0;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 245
    .line 246
    :cond_7
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 247
    .line 248
    invoke-static {v0, v3}, Ly1/x;->O(Ly1/v0;I)Ly1/v0;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 253
    .line 254
    iget-object v1, v0, Ly1/v0;->b:Lf2/c0;

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ly1/v0;->c(Lf2/c0;)Ly1/v0;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 261
    .line 262
    iget-wide v4, v0, Ly1/v0;->s:J

    .line 263
    .line 264
    iput-wide v4, v0, Ly1/v0;->q:J

    .line 265
    .line 266
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 267
    .line 268
    const-wide/16 v4, 0x0

    .line 269
    .line 270
    iput-wide v4, v0, Ly1/v0;->r:J

    .line 271
    .line 272
    iget-object v0, p0, Ly1/x;->t:Lz1/e;

    .line 273
    .line 274
    iget-object v1, v0, Lz1/e;->h:Lu1/b0;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    new-instance v4, Lua/g8;

    .line 280
    .line 281
    const/16 v5, 0x10

    .line 282
    .line 283
    invoke-direct {v4, v5, v0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v4}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ly1/x;->V()V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Ly1/x;->t0:Landroid/view/Surface;

    .line 293
    .line 294
    if-eqz v0, :cond_8

    .line 295
    .line 296
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 297
    .line 298
    .line 299
    iput-object v2, p0, Ly1/x;->t0:Landroid/view/Surface;

    .line 300
    .line 301
    :cond_8
    sget-object v0, Lt1/c;->c:Lt1/c;

    .line 302
    .line 303
    iput-object v0, p0, Ly1/x;->V0:Lt1/c;

    .line 304
    .line 305
    iput-boolean v3, p0, Ly1/x;->Z0:Z

    .line 306
    .line 307
    return-void

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    goto :goto_5

    .line 311
    :goto_4
    throw v0

    .line 312
    :goto_5
    goto :goto_4
.end method

.method public final U(Lr1/k0;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly1/x;->m:Lu1/m;

    .line 8
    .line 9
    iget-boolean v1, v0, Lu1/m;->i:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v4, v0, Lu1/m;->a:Ljava/lang/Thread;

    .line 21
    .line 22
    if-ne v1, v4, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {v1}, La9/o;->t(Z)V

    .line 28
    .line 29
    .line 30
    :goto_1
    iget-object v1, v0, Lu1/m;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_4

    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lu1/l;

    .line 47
    .line 48
    iget-object v6, v5, Lu1/l;->a:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    iput-boolean v3, v5, Lu1/l;->d:Z

    .line 57
    .line 58
    iget-object v6, v0, Lu1/m;->c:Lu1/k;

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    iget-boolean v7, v5, Lu1/l;->c:Z

    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    iput-boolean v2, v5, Lu1/l;->c:Z

    .line 67
    .line 68
    iget-object v7, v5, Lu1/l;->b:Lh5/d0;

    .line 69
    .line 70
    invoke-virtual {v7}, Lh5/d0;->b()Lr1/n;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v8, v5, Lu1/l;->a:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-interface {v6, v8, v7}, Lu1/k;->h(Ljava/lang/Object;Lr1/n;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    return-void
.end method

.method public final V()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/x;->N0:Lk2/k;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/x;->y:Ly1/t;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ly1/x;->z:Ly1/u;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ly1/x;->v(Ly1/x0;)Ly1/y0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v3, v0, Ly1/y0;->f:Z

    .line 15
    .line 16
    xor-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    invoke-static {v3}, La9/o;->t(Z)V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x2710

    .line 22
    .line 23
    iput v3, v0, Ly1/y0;->c:I

    .line 24
    .line 25
    iget-boolean v3, v0, Ly1/y0;->f:Z

    .line 26
    .line 27
    xor-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    invoke-static {v3}, La9/o;->t(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v0, Ly1/y0;->d:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0}, Ly1/y0;->b()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ly1/x;->N0:Lk2/k;

    .line 38
    .line 39
    iget-object v0, v0, Lk2/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Ly1/x;->N0:Lk2/k;

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Ly1/x;->P0:Landroid/view/TextureView;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eq v0, v1, :cond_1

    .line 55
    .line 56
    const-string v0, "SurfaceTextureListener already unset or replaced."

    .line 57
    .line 58
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Ly1/x;->P0:Landroid/view/TextureView;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iput-object v2, p0, Ly1/x;->P0:Landroid/view/TextureView;

    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Ly1/x;->M0:Landroid/view/SurfaceHolder;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Ly1/x;->M0:Landroid/view/SurfaceHolder;

    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final W(IILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/x;->g:[Ly1/a;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    const/4 v4, -0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    aget-object v5, v0, v3

    .line 10
    .line 11
    if-eq p1, v4, :cond_0

    .line 12
    .line 13
    iget v4, v5, Ly1/a;->b:I

    .line 14
    .line 15
    if-ne v4, p1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v5}, Ly1/x;->v(Ly1/x0;)Ly1/y0;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v5, v4, Ly1/y0;->f:Z

    .line 22
    .line 23
    xor-int/lit8 v5, v5, 0x1

    .line 24
    .line 25
    invoke-static {v5}, La9/o;->t(Z)V

    .line 26
    .line 27
    .line 28
    iput p2, v4, Ly1/y0;->c:I

    .line 29
    .line 30
    iget-boolean v5, v4, Ly1/y0;->f:Z

    .line 31
    .line 32
    xor-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    invoke-static {v5}, La9/o;->t(Z)V

    .line 35
    .line 36
    .line 37
    iput-object p3, v4, Ly1/y0;->d:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v4}, Ly1/y0;->b()V

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Ly1/x;->h:[Ly1/a;

    .line 46
    .line 47
    array-length v1, v0

    .line 48
    :goto_1
    if-ge v2, v1, :cond_5

    .line 49
    .line 50
    aget-object v3, v0, v2

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    if-eq p1, v4, :cond_3

    .line 55
    .line 56
    iget v5, v3, Ly1/a;->b:I

    .line 57
    .line 58
    if-ne v5, p1, :cond_4

    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0, v3}, Ly1/x;->v(Ly1/x0;)Ly1/y0;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-boolean v5, v3, Ly1/y0;->f:Z

    .line 65
    .line 66
    xor-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    invoke-static {v5}, La9/o;->t(Z)V

    .line 69
    .line 70
    .line 71
    iput p2, v3, Ly1/y0;->c:I

    .line 72
    .line 73
    iget-boolean v5, v3, Ly1/y0;->f:Z

    .line 74
    .line 75
    xor-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    invoke-static {v5}, La9/o;->t(Z)V

    .line 78
    .line 79
    .line 80
    iput-object p3, v3, Ly1/y0;->d:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v3}, Ly1/y0;->b()V

    .line 83
    .line 84
    .line 85
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    return-void
.end method

.method public final X(Lr1/d;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ly1/x;->Z0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Ly1/x;->S0:Lr1/d;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Ly1/x;->m:Lu1/m;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-object p1, p0, Ly1/x;->S0:Lr1/d;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {p0, v0, v2, p1}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lua/g5;

    .line 27
    .line 28
    const/16 v2, 0x15

    .line 29
    .line 30
    invoke-direct {v0, v2, p1}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/16 p1, 0x14

    .line 34
    .line 35
    invoke-virtual {v1, p1, v0}, Lu1/m;->c(ILu1/j;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Ly1/x;->S0:Lr1/d;

    .line 39
    .line 40
    iget-object v0, p0, Ly1/x;->l:Ly1/f0;

    .line 41
    .line 42
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lu1/b0;->c()Lu1/a0;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v0, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 52
    .line 53
    const/16 v3, 0x1f

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-virtual {v0, v3, v4, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, v2, Lu1/a0;->a:Landroid/os/Message;

    .line 61
    .line 62
    invoke-virtual {v2}, Lu1/a0;->b()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lu1/m;->b()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final Y(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly1/x;->O0:Z

    .line 3
    .line 4
    iput-object p1, p0, Ly1/x;->M0:Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    iget-object v1, p0, Ly1/x;->y:Ly1/t;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ly1/x;->M0:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Ly1/x;->M0:Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, v0, p1}, Ly1/x;->R(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v0, v0}, Ly1/x;->R(II)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final Z(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Ly1/x;->K:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Ly1/x;->K:I

    .line 9
    .line 10
    iget-object v0, p0, Ly1/x;->l:Ly1/f0;

    .line 11
    .line 12
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lu1/b0;->c()Lu1/a0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v0, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 22
    .line 23
    const/16 v2, 0xb

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, v1, Lu1/a0;->a:Landroid/os/Message;

    .line 31
    .line 32
    invoke-virtual {v1}, Lu1/a0;->b()V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lfa/d0;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-direct {v0, p1, v1}, Lfa/d0;-><init>(II)V

    .line 39
    .line 40
    .line 41
    const/16 p1, 0x8

    .line 42
    .line 43
    iget-object v1, p0, Ly1/x;->m:Lu1/m;

    .line 44
    .line 45
    invoke-virtual {v1, p1, v0}, Lu1/m;->c(ILu1/j;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ly1/x;->d0()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lu1/m;->b()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final a0(Lr1/v0;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->i:Lh2/q;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ly1/x;->M()Lr1/v0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Ly1/x;->P:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p1, Lr1/v0;->w:Lu7/j0;

    .line 18
    .line 19
    iput-object v2, p0, Ly1/x;->R:Lu7/j0;

    .line 20
    .line 21
    iget-object v2, p0, Ly1/x;->S:Ly1/d1;

    .line 22
    .line 23
    iget-object v2, v2, Ly1/d1;->a:Lu7/j0;

    .line 24
    .line 25
    invoke-virtual {p1}, Lr1/v0;->a()Lr1/u0;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Lu7/b0;->h()Lu7/o1;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-virtual {v3, v4, v5}, Lr1/u0;->i(IZ)Lr1/u0;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v3}, Lr1/u0;->a()Lr1/v0;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v2, p1

    .line 60
    :goto_1
    move-object v3, v0

    .line 61
    check-cast v3, Lh2/n;

    .line 62
    .line 63
    invoke-virtual {v3}, Lh2/n;->k()Lh2/i;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Lr1/v0;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lh2/q;->b(Lr1/v0;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v1, p1}, Lr1/v0;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Lua/g5;

    .line 83
    .line 84
    const/16 v1, 0x16

    .line 85
    .line 86
    invoke-direct {v0, v1, p1}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Ly1/x;->m:Lu1/m;

    .line 90
    .line 91
    const/16 v1, 0x13

    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Lu1/m;->e(ILu1/j;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method public final b0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ly1/x;->h0:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide v4, p0, Ly1/x;->D:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide v4, v2

    .line 22
    :goto_1
    iget-object v6, p0, Ly1/x;->l:Ly1/f0;

    .line 23
    .line 24
    iget-boolean v7, v6, Ly1/f0;->M:Z

    .line 25
    .line 26
    if-nez v7, :cond_3

    .line 27
    .line 28
    iget-object v7, v6, Ly1/f0;->j:Landroid/os/Looper;

    .line 29
    .line 30
    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    new-instance v7, Lu1/e;

    .line 42
    .line 43
    iget-object v8, v6, Ly1/f0;->q:Lu1/z;

    .line 44
    .line 45
    invoke-direct {v7, v8}, Lu1/e;-><init>(Lu1/z;)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Landroid/util/Pair;

    .line 49
    .line 50
    invoke-direct {v8, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/16 v9, 0x1e

    .line 54
    .line 55
    iget-object v6, v6, Ly1/f0;->h:Lu1/b0;

    .line 56
    .line 57
    invoke-virtual {v6, v9, v8}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lu1/a0;->b()V

    .line 62
    .line 63
    .line 64
    cmp-long v6, v4, v2

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {v7, v4, v5}, Lu1/e;->c(J)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Ly1/x;->h0:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v2, p0, Ly1/x;->t0:Landroid/view/Surface;

    .line 77
    .line 78
    if-ne v0, v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Ly1/x;->t0:Landroid/view/Surface;

    .line 85
    .line 86
    :cond_4
    iput-object p1, p0, Ly1/x;->h0:Ljava/lang/Object;

    .line 87
    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    new-instance p1, Landroidx/fragment/app/b0;

    .line 91
    .line 92
    const/4 v0, 0x3

    .line 93
    invoke-direct {p1, v0}, Landroidx/fragment/app/b0;-><init>(I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Ly1/k;

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    const/16 v2, 0x3eb

    .line 100
    .line 101
    invoke-direct {v0, v1, p1, v2}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ly1/x;->c0(Ly1/k;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-void
.end method

.method public final c0(Ly1/k;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 2
    .line 3
    iget-object v1, v0, Ly1/v0;->b:Lf2/c0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ly1/v0;->c(Lf2/c0;)Ly1/v0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, v0, Ly1/v0;->s:J

    .line 10
    .line 11
    iput-wide v1, v0, Ly1/v0;->q:J

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, v0, Ly1/v0;->r:J

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Ly1/x;->O(Ly1/v0;I)Ly1/v0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ly1/v0;->f(Ly1/k;)Ly1/v0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    move-object v3, v0

    .line 29
    iget p1, p0, Ly1/x;->M:I

    .line 30
    .line 31
    add-int/2addr p1, v1

    .line 32
    iput p1, p0, Ly1/x;->M:I

    .line 33
    .line 34
    iget-object p1, p0, Ly1/x;->l:Ly1/f0;

    .line 35
    .line 36
    iget-object p1, p1, Ly1/f0;->h:Lu1/b0;

    .line 37
    .line 38
    const/4 v0, 0x6

    .line 39
    invoke-virtual {p1, v0}, Lu1/b0;->a(I)Lu1/a0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lu1/a0;->b()V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x5

    .line 47
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v9, -0x1

    .line 55
    const/4 v10, 0x0

    .line 56
    move-object v2, p0

    .line 57
    invoke-virtual/range {v2 .. v10}, Ly1/x;->f0(Ly1/v0;IZIJIZ)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final d0()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Ly1/x;->Y:Lr1/i0;

    .line 4
    .line 5
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Ly1/x;->f:Lr1/m0;

    .line 8
    .line 9
    check-cast v3, Ly1/x;

    .line 10
    .line 11
    invoke-virtual {v3}, Ly1/x;->N()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v3}, La/b;->m()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {v3}, Ly1/x;->E()Lr1/q0;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6}, Lr1/q0;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, -0x1

    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    const/4 v6, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v3}, Ly1/x;->A()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {v3}, Ly1/x;->h0()V

    .line 37
    .line 38
    .line 39
    iget v9, v3, Ly1/x;->K:I

    .line 40
    .line 41
    if-ne v9, v1, :cond_1

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    :cond_1
    invoke-virtual {v3}, Ly1/x;->h0()V

    .line 45
    .line 46
    .line 47
    iget-boolean v10, v3, Ly1/x;->L:Z

    .line 48
    .line 49
    invoke-virtual {v6, v7, v9, v10}, Lr1/q0;->k(IIZ)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    :goto_0
    if-eq v6, v8, :cond_2

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v6, 0x0

    .line 58
    :goto_1
    invoke-virtual {v3}, Ly1/x;->E()Lr1/q0;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v7}, Lr1/q0;->p()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_3

    .line 67
    .line 68
    const/4 v7, -0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v3}, Ly1/x;->A()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    invoke-virtual {v3}, Ly1/x;->h0()V

    .line 75
    .line 76
    .line 77
    iget v10, v3, Ly1/x;->K:I

    .line 78
    .line 79
    if-ne v10, v1, :cond_4

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    :cond_4
    invoke-virtual {v3}, Ly1/x;->h0()V

    .line 83
    .line 84
    .line 85
    iget-boolean v11, v3, Ly1/x;->L:Z

    .line 86
    .line 87
    invoke-virtual {v7, v9, v10, v11}, Lr1/q0;->e(IIZ)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    :goto_2
    if-eq v7, v8, :cond_5

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    const/4 v7, 0x0

    .line 96
    :goto_3
    invoke-virtual {v3}, La/b;->k()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v3}, La/b;->j()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-virtual {v3}, Ly1/x;->E()Lr1/q0;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lr1/q0;->p()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    new-instance v10, Ll5/y;

    .line 113
    .line 114
    const/16 v11, 0xe

    .line 115
    .line 116
    invoke-direct {v10, v0, v11}, Ll5/y;-><init>(BI)V

    .line 117
    .line 118
    .line 119
    iget-object v11, p0, Ly1/x;->c:Lr1/i0;

    .line 120
    .line 121
    iget-object v11, v11, Lr1/i0;->a:Lr1/n;

    .line 122
    .line 123
    iget-object v12, v10, Ll5/y;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v12, Lh5/d0;

    .line 126
    .line 127
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const/4 v13, 0x0

    .line 131
    :goto_4
    iget-object v14, v11, Lr1/n;->a:Landroid/util/SparseBooleanArray;

    .line 132
    .line 133
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-ge v13, v14, :cond_6

    .line 138
    .line 139
    invoke-virtual {v11, v13}, Lr1/n;->a(I)I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    invoke-virtual {v12, v14}, Lh5/d0;->a(I)V

    .line 144
    .line 145
    .line 146
    add-int/2addr v13, v1

    .line 147
    goto :goto_4

    .line 148
    :cond_6
    xor-int/lit8 v11, v4, 0x1

    .line 149
    .line 150
    const/4 v13, 0x4

    .line 151
    invoke-virtual {v10, v13, v11}, Ll5/y;->r(IZ)V

    .line 152
    .line 153
    .line 154
    if-eqz v5, :cond_7

    .line 155
    .line 156
    if-nez v4, :cond_7

    .line 157
    .line 158
    const/4 v13, 0x1

    .line 159
    goto :goto_5

    .line 160
    :cond_7
    const/4 v13, 0x0

    .line 161
    :goto_5
    const/4 v14, 0x5

    .line 162
    invoke-virtual {v10, v14, v13}, Ll5/y;->r(IZ)V

    .line 163
    .line 164
    .line 165
    if-eqz v6, :cond_8

    .line 166
    .line 167
    if-nez v4, :cond_8

    .line 168
    .line 169
    const/4 v13, 0x1

    .line 170
    goto :goto_6

    .line 171
    :cond_8
    const/4 v13, 0x0

    .line 172
    :goto_6
    const/4 v14, 0x6

    .line 173
    invoke-virtual {v10, v14, v13}, Ll5/y;->r(IZ)V

    .line 174
    .line 175
    .line 176
    if-nez v3, :cond_a

    .line 177
    .line 178
    if-nez v6, :cond_9

    .line 179
    .line 180
    if-eqz v8, :cond_9

    .line 181
    .line 182
    if-eqz v5, :cond_a

    .line 183
    .line 184
    :cond_9
    if-nez v4, :cond_a

    .line 185
    .line 186
    const/4 v6, 0x1

    .line 187
    goto :goto_7

    .line 188
    :cond_a
    const/4 v6, 0x0

    .line 189
    :goto_7
    const/4 v13, 0x7

    .line 190
    invoke-virtual {v10, v13, v6}, Ll5/y;->r(IZ)V

    .line 191
    .line 192
    .line 193
    if-eqz v7, :cond_b

    .line 194
    .line 195
    if-nez v4, :cond_b

    .line 196
    .line 197
    const/4 v6, 0x1

    .line 198
    goto :goto_8

    .line 199
    :cond_b
    const/4 v6, 0x0

    .line 200
    :goto_8
    const/16 v13, 0x8

    .line 201
    .line 202
    invoke-virtual {v10, v13, v6}, Ll5/y;->r(IZ)V

    .line 203
    .line 204
    .line 205
    if-nez v3, :cond_d

    .line 206
    .line 207
    if-nez v7, :cond_c

    .line 208
    .line 209
    if-eqz v8, :cond_d

    .line 210
    .line 211
    if-eqz v9, :cond_d

    .line 212
    .line 213
    :cond_c
    if-nez v4, :cond_d

    .line 214
    .line 215
    const/4 v3, 0x1

    .line 216
    goto :goto_9

    .line 217
    :cond_d
    const/4 v3, 0x0

    .line 218
    :goto_9
    const/16 v6, 0x9

    .line 219
    .line 220
    invoke-virtual {v10, v6, v3}, Ll5/y;->r(IZ)V

    .line 221
    .line 222
    .line 223
    const/16 v3, 0xa

    .line 224
    .line 225
    invoke-virtual {v10, v3, v11}, Ll5/y;->r(IZ)V

    .line 226
    .line 227
    .line 228
    if-eqz v5, :cond_e

    .line 229
    .line 230
    if-nez v4, :cond_e

    .line 231
    .line 232
    const/4 v3, 0x1

    .line 233
    goto :goto_a

    .line 234
    :cond_e
    const/4 v3, 0x0

    .line 235
    :goto_a
    const/16 v6, 0xb

    .line 236
    .line 237
    invoke-virtual {v10, v6, v3}, Ll5/y;->r(IZ)V

    .line 238
    .line 239
    .line 240
    if-eqz v5, :cond_f

    .line 241
    .line 242
    if-nez v4, :cond_f

    .line 243
    .line 244
    const/4 v0, 0x1

    .line 245
    :cond_f
    const/16 v1, 0xc

    .line 246
    .line 247
    invoke-virtual {v10, v1, v0}, Ll5/y;->r(IZ)V

    .line 248
    .line 249
    .line 250
    new-instance v0, Lr1/i0;

    .line 251
    .line 252
    invoke-virtual {v12}, Lh5/d0;->b()Lr1/n;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Lr1/i0;-><init>(Lr1/n;)V

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Ly1/x;->Y:Lr1/i0;

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Lr1/i0;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_10

    .line 266
    .line 267
    new-instance v0, Ly1/r;

    .line 268
    .line 269
    invoke-direct {v0, p0}, Ly1/r;-><init>(Ly1/x;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Ly1/x;->m:Lu1/m;

    .line 273
    .line 274
    const/16 v2, 0xd

    .line 275
    .line 276
    invoke-virtual {v1, v2, v0}, Lu1/m;->c(ILu1/j;)V

    .line 277
    .line 278
    .line 279
    :cond_10
    return-void
.end method

.method public final e0(IZ)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Ly1/x;->P:Z

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 10
    .line 11
    iget v0, v0, Ly1/v0;->n:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, Ly1/x;->f1:Ly1/v0;

    .line 21
    .line 22
    iget-boolean v4, v3, Ly1/v0;->l:Z

    .line 23
    .line 24
    if-ne v4, p2, :cond_2

    .line 25
    .line 26
    iget v4, v3, Ly1/v0;->n:I

    .line 27
    .line 28
    if-ne v4, v0, :cond_2

    .line 29
    .line 30
    iget v4, v3, Ly1/v0;->m:I

    .line 31
    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget v4, p0, Ly1/x;->M:I

    .line 36
    .line 37
    add-int/2addr v4, v2

    .line 38
    iput v4, p0, Ly1/x;->M:I

    .line 39
    .line 40
    iget-boolean v4, v3, Ly1/v0;->p:Z

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3}, Ly1/v0;->a()Ly1/v0;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_3
    invoke-virtual {v3, p1, v0, p2}, Ly1/v0;->e(IIZ)Ly1/v0;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    shl-int/2addr v0, v1

    .line 53
    or-int/2addr p1, v0

    .line 54
    iget-object v0, p0, Ly1/x;->l:Ly1/f0;

    .line 55
    .line 56
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lu1/b0;->c()Lu1/a0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v0, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, v1, Lu1/a0;->a:Landroid/os/Message;

    .line 72
    .line 73
    invoke-virtual {v1}, Lu1/a0;->b()V

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x5

    .line 77
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v11, -0x1

    .line 85
    const/4 v12, 0x0

    .line 86
    move-object v4, p0

    .line 87
    invoke-virtual/range {v4 .. v12}, Ly1/x;->f0(Ly1/v0;IZIJIZ)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final f0(Ly1/v0;IZIJIZ)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Ly1/x;->f1:Ly1/v0;

    .line 8
    .line 9
    iput-object v1, v0, Ly1/x;->f1:Ly1/v0;

    .line 10
    .line 11
    iget-object v4, v3, Ly1/v0;->a:Lr1/q0;

    .line 12
    .line 13
    iget-object v5, v1, Ly1/v0;->a:Lr1/q0;

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Lr1/q0;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v5, v3, Ly1/v0;->a:Lr1/q0;

    .line 20
    .line 21
    iget-object v6, v1, Ly1/v0;->a:Lr1/q0;

    .line 22
    .line 23
    invoke-virtual {v6}, Lr1/q0;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, -0x1

    .line 28
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    const/4 v10, 0x1

    .line 33
    const/4 v12, 0x3

    .line 34
    const-wide/16 v13, 0x0

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    invoke-virtual {v5}, Lr1/q0;->p()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    new-instance v5, Landroid/util/Pair;

    .line 45
    .line 46
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_0
    invoke-virtual {v6}, Lr1/q0;->p()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual {v5}, Lr1/q0;->p()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eq v7, v8, :cond_1

    .line 62
    .line 63
    new-instance v5, Landroid/util/Pair;

    .line 64
    .line 65
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_1
    iget-object v7, v3, Ly1/v0;->b:Lf2/c0;

    .line 77
    .line 78
    iget-object v8, v7, Lf2/c0;->a:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v12, v0, Ly1/x;->p:Lr1/o0;

    .line 81
    .line 82
    invoke-virtual {v5, v8, v12}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    iget v8, v8, Lr1/o0;->c:I

    .line 87
    .line 88
    iget-object v11, v0, La/b;->a:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v11, Lr1/p0;

    .line 91
    .line 92
    invoke-virtual {v5, v8, v11, v13, v14}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object v5, v5, Lr1/p0;->a:Ljava/lang/Object;

    .line 97
    .line 98
    iget-object v8, v1, Ly1/v0;->b:Lf2/c0;

    .line 99
    .line 100
    iget-object v15, v8, Lf2/c0;->a:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {v6, v15, v12}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    iget v12, v12, Lr1/o0;->c:I

    .line 107
    .line 108
    invoke-virtual {v6, v12, v11, v13, v14}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iget-object v6, v6, Lr1/p0;->a:Ljava/lang/Object;

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    if-eqz p3, :cond_2

    .line 121
    .line 122
    if-nez v2, :cond_2

    .line 123
    .line 124
    const/4 v5, 0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    if-eqz p3, :cond_3

    .line 127
    .line 128
    if-ne v2, v10, :cond_3

    .line 129
    .line 130
    const/4 v5, 0x2

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    if-nez v4, :cond_4

    .line 133
    .line 134
    const/4 v5, 0x3

    .line 135
    :goto_0
    new-instance v6, Landroid/util/Pair;

    .line 136
    .line 137
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    move-object v5, v6

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :cond_5
    if-eqz p3, :cond_6

    .line 155
    .line 156
    if-nez v2, :cond_6

    .line 157
    .line 158
    iget-wide v5, v7, Lf2/c0;->d:J

    .line 159
    .line 160
    iget-wide v7, v8, Lf2/c0;->d:J

    .line 161
    .line 162
    cmp-long v11, v5, v7

    .line 163
    .line 164
    if-gez v11, :cond_6

    .line 165
    .line 166
    new-instance v5, Landroid/util/Pair;

    .line 167
    .line 168
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 169
    .line 170
    const/4 v7, 0x0

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    if-eqz p3, :cond_7

    .line 180
    .line 181
    if-ne v2, v10, :cond_7

    .line 182
    .line 183
    if-eqz p8, :cond_7

    .line 184
    .line 185
    new-instance v5, Landroid/util/Pair;

    .line 186
    .line 187
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 188
    .line 189
    const/4 v7, 0x2

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_7
    new-instance v5, Landroid/util/Pair;

    .line 199
    .line 200
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 201
    .line 202
    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :goto_1
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v6, Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v5, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v6, :cond_9

    .line 222
    .line 223
    iget-object v8, v1, Ly1/v0;->a:Lr1/q0;

    .line 224
    .line 225
    invoke-virtual {v8}, Lr1/q0;->p()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-nez v8, :cond_8

    .line 230
    .line 231
    iget-object v8, v1, Ly1/v0;->a:Lr1/q0;

    .line 232
    .line 233
    iget-object v9, v1, Ly1/v0;->b:Lf2/c0;

    .line 234
    .line 235
    iget-object v9, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 236
    .line 237
    iget-object v11, v0, Ly1/x;->p:Lr1/o0;

    .line 238
    .line 239
    invoke-virtual {v8, v9, v11}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    iget v8, v8, Lr1/o0;->c:I

    .line 244
    .line 245
    iget-object v9, v1, Ly1/v0;->a:Lr1/q0;

    .line 246
    .line 247
    iget-object v11, v0, La/b;->a:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v11, Lr1/p0;

    .line 250
    .line 251
    invoke-virtual {v9, v8, v11, v13, v14}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    iget-object v8, v8, Lr1/p0;->c:Lr1/y;

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_8
    const/4 v8, 0x0

    .line 259
    :goto_2
    sget-object v9, Lr1/b0;->B:Lr1/b0;

    .line 260
    .line 261
    iput-object v9, v0, Ly1/x;->e1:Lr1/b0;

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_9
    const/4 v8, 0x0

    .line 265
    :goto_3
    if-nez v6, :cond_a

    .line 266
    .line 267
    iget-object v9, v3, Ly1/v0;->j:Ljava/util/List;

    .line 268
    .line 269
    iget-object v11, v1, Ly1/v0;->j:Ljava/util/List;

    .line 270
    .line 271
    invoke-interface {v9, v11}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-nez v9, :cond_d

    .line 276
    .line 277
    :cond_a
    iget-object v9, v0, Ly1/x;->e1:Lr1/b0;

    .line 278
    .line 279
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    new-instance v11, Lr1/a0;

    .line 283
    .line 284
    invoke-direct {v11, v9}, Lr1/a0;-><init>(Lr1/b0;)V

    .line 285
    .line 286
    .line 287
    iget-object v9, v1, Ly1/v0;->j:Ljava/util/List;

    .line 288
    .line 289
    const/4 v12, 0x0

    .line 290
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result v15

    .line 294
    if-ge v12, v15, :cond_c

    .line 295
    .line 296
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    check-cast v15, Lr1/d0;

    .line 301
    .line 302
    const/4 v7, 0x0

    .line 303
    :goto_5
    iget-object v10, v15, Lr1/d0;->a:[Lr1/c0;

    .line 304
    .line 305
    array-length v13, v10

    .line 306
    if-ge v7, v13, :cond_b

    .line 307
    .line 308
    aget-object v10, v10, v7

    .line 309
    .line 310
    invoke-interface {v10, v11}, Lr1/c0;->b(Lr1/a0;)V

    .line 311
    .line 312
    .line 313
    add-int/lit8 v7, v7, 0x1

    .line 314
    .line 315
    const-wide/16 v13, 0x0

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 319
    .line 320
    const/4 v10, 0x1

    .line 321
    const-wide/16 v13, 0x0

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_c
    new-instance v7, Lr1/b0;

    .line 325
    .line 326
    invoke-direct {v7, v11}, Lr1/b0;-><init>(Lr1/a0;)V

    .line 327
    .line 328
    .line 329
    iput-object v7, v0, Ly1/x;->e1:Lr1/b0;

    .line 330
    .line 331
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ly1/x;->t()Lr1/b0;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    iget-object v9, v0, Ly1/x;->Z:Lr1/b0;

    .line 336
    .line 337
    invoke-virtual {v7, v9}, Lr1/b0;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    iput-object v7, v0, Ly1/x;->Z:Lr1/b0;

    .line 342
    .line 343
    iget-boolean v7, v3, Ly1/v0;->l:Z

    .line 344
    .line 345
    iget-boolean v10, v1, Ly1/v0;->l:Z

    .line 346
    .line 347
    if-eq v7, v10, :cond_e

    .line 348
    .line 349
    const/4 v7, 0x1

    .line 350
    goto :goto_6

    .line 351
    :cond_e
    const/4 v7, 0x0

    .line 352
    :goto_6
    iget v10, v3, Ly1/v0;->e:I

    .line 353
    .line 354
    iget v11, v1, Ly1/v0;->e:I

    .line 355
    .line 356
    if-eq v10, v11, :cond_f

    .line 357
    .line 358
    const/4 v10, 0x1

    .line 359
    goto :goto_7

    .line 360
    :cond_f
    const/4 v10, 0x0

    .line 361
    :goto_7
    if-nez v10, :cond_10

    .line 362
    .line 363
    if-eqz v7, :cond_11

    .line 364
    .line 365
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ly1/x;->g0()V

    .line 366
    .line 367
    .line 368
    :cond_11
    iget-boolean v11, v3, Ly1/v0;->g:Z

    .line 369
    .line 370
    iget-boolean v12, v1, Ly1/v0;->g:Z

    .line 371
    .line 372
    if-eq v11, v12, :cond_12

    .line 373
    .line 374
    const/4 v11, 0x1

    .line 375
    goto :goto_8

    .line 376
    :cond_12
    const/4 v11, 0x0

    .line 377
    :goto_8
    if-nez v4, :cond_13

    .line 378
    .line 379
    iget-object v4, v0, Ly1/x;->m:Lu1/m;

    .line 380
    .line 381
    new-instance v12, Lha/o;

    .line 382
    .line 383
    const/16 v13, 0x13

    .line 384
    .line 385
    move/from16 v14, p2

    .line 386
    .line 387
    invoke-direct {v12, v14, v13, v1}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    const/4 v13, 0x0

    .line 391
    invoke-virtual {v4, v13, v12}, Lu1/m;->c(ILu1/j;)V

    .line 392
    .line 393
    .line 394
    :cond_13
    if-eqz p3, :cond_1b

    .line 395
    .line 396
    new-instance v4, Lr1/o0;

    .line 397
    .line 398
    invoke-direct {v4}, Lr1/o0;-><init>()V

    .line 399
    .line 400
    .line 401
    iget-object v12, v3, Ly1/v0;->a:Lr1/q0;

    .line 402
    .line 403
    invoke-virtual {v12}, Lr1/q0;->p()Z

    .line 404
    .line 405
    .line 406
    move-result v12

    .line 407
    if-nez v12, :cond_14

    .line 408
    .line 409
    iget-object v12, v3, Ly1/v0;->b:Lf2/c0;

    .line 410
    .line 411
    iget-object v12, v12, Lf2/c0;->a:Ljava/lang/Object;

    .line 412
    .line 413
    iget-object v13, v3, Ly1/v0;->a:Lr1/q0;

    .line 414
    .line 415
    invoke-virtual {v13, v12, v4}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 416
    .line 417
    .line 418
    iget v13, v4, Lr1/o0;->c:I

    .line 419
    .line 420
    iget-object v14, v3, Ly1/v0;->a:Lr1/q0;

    .line 421
    .line 422
    invoke-virtual {v14, v12}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 423
    .line 424
    .line 425
    move-result v14

    .line 426
    iget-object v15, v3, Ly1/v0;->a:Lr1/q0;

    .line 427
    .line 428
    move-object/from16 v16, v12

    .line 429
    .line 430
    iget-object v12, v0, La/b;->a:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v12, Lr1/p0;

    .line 433
    .line 434
    move/from16 v17, v10

    .line 435
    .line 436
    move/from16 v18, v11

    .line 437
    .line 438
    const-wide/16 v10, 0x0

    .line 439
    .line 440
    invoke-virtual {v15, v13, v12, v10, v11}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 441
    .line 442
    .line 443
    move-result-object v12

    .line 444
    iget-object v10, v12, Lr1/p0;->a:Ljava/lang/Object;

    .line 445
    .line 446
    iget-object v11, v0, La/b;->a:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v11, Lr1/p0;

    .line 449
    .line 450
    iget-object v11, v11, Lr1/p0;->c:Lr1/y;

    .line 451
    .line 452
    move-object/from16 v20, v10

    .line 453
    .line 454
    move-object/from16 v22, v11

    .line 455
    .line 456
    move/from16 v21, v13

    .line 457
    .line 458
    move/from16 v24, v14

    .line 459
    .line 460
    move-object/from16 v23, v16

    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_14
    move/from16 v17, v10

    .line 464
    .line 465
    move/from16 v18, v11

    .line 466
    .line 467
    move/from16 v21, p7

    .line 468
    .line 469
    move/from16 v24, v21

    .line 470
    .line 471
    const/16 v20, 0x0

    .line 472
    .line 473
    const/16 v22, 0x0

    .line 474
    .line 475
    const/16 v23, 0x0

    .line 476
    .line 477
    :goto_9
    if-nez v2, :cond_17

    .line 478
    .line 479
    iget-object v10, v3, Ly1/v0;->b:Lf2/c0;

    .line 480
    .line 481
    invoke-virtual {v10}, Lf2/c0;->b()Z

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-eqz v10, :cond_15

    .line 486
    .line 487
    iget-object v10, v3, Ly1/v0;->b:Lf2/c0;

    .line 488
    .line 489
    iget v11, v10, Lf2/c0;->b:I

    .line 490
    .line 491
    iget v10, v10, Lf2/c0;->c:I

    .line 492
    .line 493
    invoke-virtual {v4, v11, v10}, Lr1/o0;->a(II)J

    .line 494
    .line 495
    .line 496
    move-result-wide v10

    .line 497
    invoke-static {v3}, Ly1/x;->L(Ly1/v0;)J

    .line 498
    .line 499
    .line 500
    move-result-wide v12

    .line 501
    goto :goto_c

    .line 502
    :cond_15
    iget-object v10, v3, Ly1/v0;->b:Lf2/c0;

    .line 503
    .line 504
    iget v10, v10, Lf2/c0;->e:I

    .line 505
    .line 506
    const/4 v11, -0x1

    .line 507
    if-eq v10, v11, :cond_16

    .line 508
    .line 509
    iget-object v4, v0, Ly1/x;->f1:Ly1/v0;

    .line 510
    .line 511
    invoke-static {v4}, Ly1/x;->L(Ly1/v0;)J

    .line 512
    .line 513
    .line 514
    move-result-wide v10

    .line 515
    :goto_a
    move-wide v12, v10

    .line 516
    goto :goto_c

    .line 517
    :cond_16
    iget-wide v10, v4, Lr1/o0;->e:J

    .line 518
    .line 519
    iget-wide v12, v4, Lr1/o0;->d:J

    .line 520
    .line 521
    :goto_b
    add-long/2addr v10, v12

    .line 522
    goto :goto_a

    .line 523
    :cond_17
    iget-object v10, v3, Ly1/v0;->b:Lf2/c0;

    .line 524
    .line 525
    invoke-virtual {v10}, Lf2/c0;->b()Z

    .line 526
    .line 527
    .line 528
    move-result v10

    .line 529
    if-eqz v10, :cond_18

    .line 530
    .line 531
    iget-wide v10, v3, Ly1/v0;->s:J

    .line 532
    .line 533
    invoke-static {v3}, Ly1/x;->L(Ly1/v0;)J

    .line 534
    .line 535
    .line 536
    move-result-wide v12

    .line 537
    goto :goto_c

    .line 538
    :cond_18
    iget-wide v10, v4, Lr1/o0;->e:J

    .line 539
    .line 540
    iget-wide v12, v3, Ly1/v0;->s:J

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :goto_c
    new-instance v4, Lr1/l0;

    .line 544
    .line 545
    invoke-static {v10, v11}, Lu1/f0;->R(J)J

    .line 546
    .line 547
    .line 548
    move-result-wide v25

    .line 549
    invoke-static {v12, v13}, Lu1/f0;->R(J)J

    .line 550
    .line 551
    .line 552
    move-result-wide v27

    .line 553
    iget-object v10, v3, Ly1/v0;->b:Lf2/c0;

    .line 554
    .line 555
    iget v11, v10, Lf2/c0;->b:I

    .line 556
    .line 557
    iget v10, v10, Lf2/c0;->c:I

    .line 558
    .line 559
    move-object/from16 v19, v4

    .line 560
    .line 561
    move/from16 v29, v11

    .line 562
    .line 563
    move/from16 v30, v10

    .line 564
    .line 565
    invoke-direct/range {v19 .. v30}, Lr1/l0;-><init>(Ljava/lang/Object;ILr1/y;Ljava/lang/Object;IJJII)V

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {p0 .. p0}, Ly1/x;->A()I

    .line 569
    .line 570
    .line 571
    move-result v10

    .line 572
    invoke-virtual/range {p0 .. p0}, Ly1/x;->B()I

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    iget-object v12, v0, Ly1/x;->f1:Ly1/v0;

    .line 577
    .line 578
    iget-object v12, v12, Ly1/v0;->a:Lr1/q0;

    .line 579
    .line 580
    invoke-virtual {v12}, Lr1/q0;->p()Z

    .line 581
    .line 582
    .line 583
    move-result v12

    .line 584
    if-nez v12, :cond_19

    .line 585
    .line 586
    iget-object v11, v0, Ly1/x;->f1:Ly1/v0;

    .line 587
    .line 588
    iget-object v12, v11, Ly1/v0;->b:Lf2/c0;

    .line 589
    .line 590
    iget-object v12, v12, Lf2/c0;->a:Ljava/lang/Object;

    .line 591
    .line 592
    iget-object v11, v11, Ly1/v0;->a:Lr1/q0;

    .line 593
    .line 594
    iget-object v13, v0, Ly1/x;->p:Lr1/o0;

    .line 595
    .line 596
    invoke-virtual {v11, v12, v13}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 597
    .line 598
    .line 599
    iget-object v11, v0, Ly1/x;->f1:Ly1/v0;

    .line 600
    .line 601
    iget-object v11, v11, Ly1/v0;->a:Lr1/q0;

    .line 602
    .line 603
    invoke-virtual {v11, v12}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 604
    .line 605
    .line 606
    move-result v11

    .line 607
    iget-object v13, v0, Ly1/x;->f1:Ly1/v0;

    .line 608
    .line 609
    iget-object v13, v13, Ly1/v0;->a:Lr1/q0;

    .line 610
    .line 611
    iget-object v14, v0, La/b;->a:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast v14, Lr1/p0;

    .line 614
    .line 615
    move/from16 p2, v11

    .line 616
    .line 617
    move-object v15, v12

    .line 618
    const-wide/16 v11, 0x0

    .line 619
    .line 620
    invoke-virtual {v13, v10, v14, v11, v12}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 621
    .line 622
    .line 623
    move-result-object v11

    .line 624
    iget-object v11, v11, Lr1/p0;->a:Ljava/lang/Object;

    .line 625
    .line 626
    iget-object v12, v14, Lr1/p0;->c:Lr1/y;

    .line 627
    .line 628
    move/from16 v34, p2

    .line 629
    .line 630
    move-object/from16 v30, v11

    .line 631
    .line 632
    move-object/from16 v32, v12

    .line 633
    .line 634
    move-object/from16 v33, v15

    .line 635
    .line 636
    goto :goto_d

    .line 637
    :cond_19
    move/from16 v34, v11

    .line 638
    .line 639
    const/16 v30, 0x0

    .line 640
    .line 641
    const/16 v32, 0x0

    .line 642
    .line 643
    const/16 v33, 0x0

    .line 644
    .line 645
    :goto_d
    invoke-static/range {p5 .. p6}, Lu1/f0;->R(J)J

    .line 646
    .line 647
    .line 648
    move-result-wide v35

    .line 649
    new-instance v11, Lr1/l0;

    .line 650
    .line 651
    iget-object v12, v0, Ly1/x;->f1:Ly1/v0;

    .line 652
    .line 653
    iget-object v12, v12, Ly1/v0;->b:Lf2/c0;

    .line 654
    .line 655
    invoke-virtual {v12}, Lf2/c0;->b()Z

    .line 656
    .line 657
    .line 658
    move-result v12

    .line 659
    if-eqz v12, :cond_1a

    .line 660
    .line 661
    iget-object v12, v0, Ly1/x;->f1:Ly1/v0;

    .line 662
    .line 663
    invoke-static {v12}, Ly1/x;->L(Ly1/v0;)J

    .line 664
    .line 665
    .line 666
    move-result-wide v12

    .line 667
    invoke-static {v12, v13}, Lu1/f0;->R(J)J

    .line 668
    .line 669
    .line 670
    move-result-wide v12

    .line 671
    move-wide/from16 v37, v12

    .line 672
    .line 673
    goto :goto_e

    .line 674
    :cond_1a
    move-wide/from16 v37, v35

    .line 675
    .line 676
    :goto_e
    iget-object v12, v0, Ly1/x;->f1:Ly1/v0;

    .line 677
    .line 678
    iget-object v12, v12, Ly1/v0;->b:Lf2/c0;

    .line 679
    .line 680
    iget v13, v12, Lf2/c0;->b:I

    .line 681
    .line 682
    iget v12, v12, Lf2/c0;->c:I

    .line 683
    .line 684
    move-object/from16 v29, v11

    .line 685
    .line 686
    move/from16 v31, v10

    .line 687
    .line 688
    move/from16 v39, v13

    .line 689
    .line 690
    move/from16 v40, v12

    .line 691
    .line 692
    invoke-direct/range {v29 .. v40}, Lr1/l0;-><init>(Ljava/lang/Object;ILr1/y;Ljava/lang/Object;IJJII)V

    .line 693
    .line 694
    .line 695
    iget-object v10, v0, Ly1/x;->m:Lu1/m;

    .line 696
    .line 697
    new-instance v12, Lha/v1;

    .line 698
    .line 699
    invoke-direct {v12, v2, v4, v11}, Lha/v1;-><init>(ILr1/l0;Lr1/l0;)V

    .line 700
    .line 701
    .line 702
    const/16 v2, 0xb

    .line 703
    .line 704
    invoke-virtual {v10, v2, v12}, Lu1/m;->c(ILu1/j;)V

    .line 705
    .line 706
    .line 707
    goto :goto_f

    .line 708
    :cond_1b
    move/from16 v17, v10

    .line 709
    .line 710
    move/from16 v18, v11

    .line 711
    .line 712
    :goto_f
    if-eqz v6, :cond_1c

    .line 713
    .line 714
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 715
    .line 716
    new-instance v4, Lha/o;

    .line 717
    .line 718
    const/16 v6, 0x14

    .line 719
    .line 720
    invoke-direct {v4, v5, v6, v8}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    const/4 v5, 0x1

    .line 724
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 725
    .line 726
    .line 727
    :cond_1c
    iget-object v2, v3, Ly1/v0;->f:Ly1/k;

    .line 728
    .line 729
    iget-object v4, v1, Ly1/v0;->f:Ly1/k;

    .line 730
    .line 731
    if-eq v2, v4, :cond_1d

    .line 732
    .line 733
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 734
    .line 735
    new-instance v4, Ly1/o;

    .line 736
    .line 737
    const/4 v5, 0x7

    .line 738
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 739
    .line 740
    .line 741
    const/16 v5, 0xa

    .line 742
    .line 743
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 744
    .line 745
    .line 746
    iget-object v2, v1, Ly1/v0;->f:Ly1/k;

    .line 747
    .line 748
    if-eqz v2, :cond_1d

    .line 749
    .line 750
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 751
    .line 752
    new-instance v4, Ly1/o;

    .line 753
    .line 754
    const/16 v6, 0x8

    .line 755
    .line 756
    invoke-direct {v4, v1, v6}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 760
    .line 761
    .line 762
    :cond_1d
    iget-object v2, v3, Ly1/v0;->i:Lh2/r;

    .line 763
    .line 764
    iget-object v4, v1, Ly1/v0;->i:Lh2/r;

    .line 765
    .line 766
    if-eq v2, v4, :cond_1e

    .line 767
    .line 768
    iget-object v2, v0, Ly1/x;->i:Lh2/q;

    .line 769
    .line 770
    iget-object v4, v4, Lh2/r;->e:Lb5/i;

    .line 771
    .line 772
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 776
    .line 777
    new-instance v4, Ly1/o;

    .line 778
    .line 779
    const/16 v5, 0x9

    .line 780
    .line 781
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 782
    .line 783
    .line 784
    const/4 v5, 0x2

    .line 785
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 786
    .line 787
    .line 788
    :cond_1e
    if-nez v9, :cond_1f

    .line 789
    .line 790
    iget-object v2, v0, Ly1/x;->Z:Lr1/b0;

    .line 791
    .line 792
    iget-object v4, v0, Ly1/x;->m:Lu1/m;

    .line 793
    .line 794
    new-instance v5, Lua/g5;

    .line 795
    .line 796
    const/16 v6, 0x14

    .line 797
    .line 798
    invoke-direct {v5, v6, v2}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 799
    .line 800
    .line 801
    const/16 v2, 0xe

    .line 802
    .line 803
    invoke-virtual {v4, v2, v5}, Lu1/m;->c(ILu1/j;)V

    .line 804
    .line 805
    .line 806
    :cond_1f
    if-eqz v18, :cond_20

    .line 807
    .line 808
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 809
    .line 810
    new-instance v4, Ly1/o;

    .line 811
    .line 812
    const/4 v5, 0x0

    .line 813
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 814
    .line 815
    .line 816
    const/4 v5, 0x3

    .line 817
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 818
    .line 819
    .line 820
    :cond_20
    if-nez v17, :cond_21

    .line 821
    .line 822
    if-eqz v7, :cond_22

    .line 823
    .line 824
    :cond_21
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 825
    .line 826
    new-instance v4, Ly1/o;

    .line 827
    .line 828
    const/4 v5, 0x1

    .line 829
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 830
    .line 831
    .line 832
    const/4 v5, -0x1

    .line 833
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 834
    .line 835
    .line 836
    :cond_22
    if-eqz v17, :cond_23

    .line 837
    .line 838
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 839
    .line 840
    new-instance v4, Ly1/o;

    .line 841
    .line 842
    const/4 v5, 0x2

    .line 843
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 844
    .line 845
    .line 846
    const/4 v5, 0x4

    .line 847
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 848
    .line 849
    .line 850
    :cond_23
    if-nez v7, :cond_24

    .line 851
    .line 852
    iget v2, v3, Ly1/v0;->m:I

    .line 853
    .line 854
    iget v4, v1, Ly1/v0;->m:I

    .line 855
    .line 856
    if-eq v2, v4, :cond_25

    .line 857
    .line 858
    :cond_24
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 859
    .line 860
    new-instance v4, Ly1/o;

    .line 861
    .line 862
    const/4 v5, 0x3

    .line 863
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 864
    .line 865
    .line 866
    const/4 v5, 0x5

    .line 867
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 868
    .line 869
    .line 870
    :cond_25
    iget v2, v3, Ly1/v0;->n:I

    .line 871
    .line 872
    iget v4, v1, Ly1/v0;->n:I

    .line 873
    .line 874
    if-eq v2, v4, :cond_26

    .line 875
    .line 876
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 877
    .line 878
    new-instance v4, Ly1/o;

    .line 879
    .line 880
    const/4 v5, 0x4

    .line 881
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 882
    .line 883
    .line 884
    const/4 v5, 0x6

    .line 885
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 886
    .line 887
    .line 888
    :cond_26
    invoke-virtual {v3}, Ly1/v0;->m()Z

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    invoke-virtual/range {p1 .. p1}, Ly1/v0;->m()Z

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    if-eq v2, v4, :cond_27

    .line 897
    .line 898
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 899
    .line 900
    new-instance v4, Ly1/o;

    .line 901
    .line 902
    const/4 v5, 0x5

    .line 903
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 904
    .line 905
    .line 906
    const/4 v5, 0x7

    .line 907
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 908
    .line 909
    .line 910
    :cond_27
    iget-object v2, v3, Ly1/v0;->o:Lr1/h0;

    .line 911
    .line 912
    iget-object v4, v1, Ly1/v0;->o:Lr1/h0;

    .line 913
    .line 914
    invoke-virtual {v2, v4}, Lr1/h0;->equals(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    if-nez v2, :cond_28

    .line 919
    .line 920
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 921
    .line 922
    new-instance v4, Ly1/o;

    .line 923
    .line 924
    const/4 v5, 0x6

    .line 925
    invoke-direct {v4, v1, v5}, Ly1/o;-><init>(Ly1/v0;I)V

    .line 926
    .line 927
    .line 928
    const/16 v5, 0xc

    .line 929
    .line 930
    invoke-virtual {v2, v5, v4}, Lu1/m;->c(ILu1/j;)V

    .line 931
    .line 932
    .line 933
    :cond_28
    invoke-virtual/range {p0 .. p0}, Ly1/x;->d0()V

    .line 934
    .line 935
    .line 936
    iget-object v2, v0, Ly1/x;->m:Lu1/m;

    .line 937
    .line 938
    invoke-virtual {v2}, Lu1/m;->b()V

    .line 939
    .line 940
    .line 941
    iget-boolean v2, v3, Ly1/v0;->p:Z

    .line 942
    .line 943
    iget-boolean v1, v1, Ly1/v0;->p:Z

    .line 944
    .line 945
    if-eq v2, v1, :cond_29

    .line 946
    .line 947
    iget-object v1, v0, Ly1/x;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 948
    .line 949
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 954
    .line 955
    .line 956
    move-result v2

    .line 957
    if-eqz v2, :cond_29

    .line 958
    .line 959
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    check-cast v2, Ly1/t;

    .line 964
    .line 965
    iget-object v2, v2, Ly1/t;->a:Ly1/x;

    .line 966
    .line 967
    invoke-virtual {v2}, Ly1/x;->g0()V

    .line 968
    .line 969
    .line 970
    goto :goto_10

    .line 971
    :cond_29
    return-void
.end method

.method public final g0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ly1/x;->J()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ly1/x;->C:Lu1/i0;

    .line 6
    .line 7
    iget-object v2, p0, Ly1/x;->B:Lu1/i0;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v0, v3, :cond_3

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    if-eq v0, v5, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 33
    .line 34
    iget-boolean v0, v0, Ly1/v0;->p:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Ly1/x;->I()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v3, 0x0

    .line 46
    :goto_0
    invoke-virtual {v2, v3}, Lu1/i0;->c(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ly1/x;->I()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {v1, v0}, Lu1/i0;->c(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Lu1/i0;->c(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lu1/i0;->c(Z)V

    .line 61
    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method public final h0()V
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/x;->d:Lu1/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu1/e;->b()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Ly1/x;->v:Landroid/os/Looper;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    const-string v2, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    .line 39
    .line 40
    const-string v3, "\'\nExpected thread: \'"

    .line 41
    .line 42
    const-string v4, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 43
    .line 44
    invoke-static {v2, v0, v3, v1, v4}, Lta/q;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-boolean v1, p0, Ly1/x;->W0:Z

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-boolean v1, p0, Ly1/x;->X0:Z

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {v0, v1}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Ly1/x;->X0:Z

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    :goto_1
    return-void
.end method

.method public final isScrubbingModeEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ly1/x;->P:Z

    .line 5
    .line 6
    return v0
.end method

.method public final p(IJZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-static {v3}, La9/o;->k(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Ly1/x;->f1:Ly1/v0;

    .line 18
    .line 19
    iget-object v3, v3, Ly1/v0;->a:Lr1/q0;

    .line 20
    .line 21
    invoke-virtual {v3}, Lr1/q0;->p()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3}, Lr1/q0;->o()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-lt p1, v4, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v4, p0, Ly1/x;->t:Lz1/e;

    .line 35
    .line 36
    iget-boolean v5, v4, Lz1/e;->i:Z

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v4}, Lz1/e;->I()Lz1/a;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iput-boolean v2, v4, Lz1/e;->i:Z

    .line 45
    .line 46
    new-instance v6, Lz1/c;

    .line 47
    .line 48
    const/16 v7, 0x19

    .line 49
    .line 50
    invoke-direct {v6, v5, v7}, Lz1/c;-><init>(Lz1/a;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5, v1, v6}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget v1, p0, Ly1/x;->M:I

    .line 57
    .line 58
    add-int/2addr v1, v2

    .line 59
    iput v1, p0, Ly1/x;->M:I

    .line 60
    .line 61
    invoke-virtual {p0}, Ly1/x;->N()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const-string v0, "seekTo ignored because an ad is playing"

    .line 68
    .line 69
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ls3/t;

    .line 73
    .line 74
    iget-object v1, p0, Ly1/x;->f1:Ly1/v0;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ls3/t;-><init>(Ly1/v0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ls3/t;->c(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Ly1/x;->k:Ly1/r;

    .line 83
    .line 84
    iget-object v1, v1, Ly1/r;->a:Ly1/x;

    .line 85
    .line 86
    iget-object v2, v1, Ly1/x;->j:Lu1/b0;

    .line 87
    .line 88
    new-instance v3, Ls1/f;

    .line 89
    .line 90
    const/16 v4, 0xf

    .line 91
    .line 92
    invoke-direct {v3, v1, v4, v0}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    iget-object v1, p0, Ly1/x;->f1:Ly1/v0;

    .line 100
    .line 101
    iget v2, v1, Ly1/v0;->e:I

    .line 102
    .line 103
    const/4 v4, 0x3

    .line 104
    if-eq v2, v4, :cond_5

    .line 105
    .line 106
    const/4 v5, 0x4

    .line 107
    if-ne v2, v5, :cond_6

    .line 108
    .line 109
    invoke-virtual {v3}, Lr1/q0;->p()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    :cond_5
    iget-object v1, p0, Ly1/x;->f1:Ly1/v0;

    .line 116
    .line 117
    const/4 v2, 0x2

    .line 118
    invoke-virtual {v1, v2}, Ly1/v0;->h(I)Ly1/v0;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :cond_6
    invoke-virtual {p0}, Ly1/x;->A()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-virtual {p0, v3, p1, p2, p3}, Ly1/x;->Q(Lr1/q0;IJ)Landroid/util/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p0, v1, v3, v2}, Ly1/x;->P(Ly1/v0;Lr1/q0;Landroid/util/Pair;)Ly1/v0;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {p2, p3}, Lu1/f0;->G(J)J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    iget-object v2, p0, Ly1/x;->l:Ly1/f0;

    .line 139
    .line 140
    iget-object v2, v2, Ly1/f0;->h:Lu1/b0;

    .line 141
    .line 142
    new-instance v8, Ly1/e0;

    .line 143
    .line 144
    invoke-direct {v8, v3, p1, v5, v6}, Ly1/e0;-><init>(Lr1/q0;IJ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v4, v8}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lu1/a0;->b()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ly1/x;->D(Ly1/v0;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    const/4 v2, 0x0

    .line 159
    const/4 v3, 0x1

    .line 160
    const/4 v4, 0x1

    .line 161
    move-object v0, p0

    .line 162
    move v8, p4

    .line 163
    invoke-virtual/range {v0 .. v8}, Ly1/x;->f0(Ly1/v0;IZIJIZ)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Ly1/x;->W(IILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setScrubbingModeEnabled(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ly1/x;->P:Z

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Ly1/x;->P:Z

    .line 10
    .line 11
    iget-object v0, p0, Ly1/x;->S:Ly1/d1;

    .line 12
    .line 13
    iget-object v1, v0, Ly1/d1;->a:Lu7/j0;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Ly1/x;->i:Lh2/q;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Lh2/n;

    .line 28
    .line 29
    invoke-virtual {v2}, Lh2/n;->k()Lh2/i;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object v3, v2, Lr1/v0;->w:Lu7/j0;

    .line 36
    .line 37
    iput-object v3, p0, Ly1/x;->R:Lu7/j0;

    .line 38
    .line 39
    invoke-virtual {v2}, Lh2/i;->a()Lr1/u0;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v0, v0, Ly1/d1;->a:Lu7/j0;

    .line 44
    .line 45
    invoke-virtual {v0}, Lu7/b0;->h()Lu7/o1;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-virtual {v3, v4, v5}, Lr1/u0;->i(IZ)Lr1/u0;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v3}, Lr1/u0;->a()Lr1/v0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lh2/h;

    .line 79
    .line 80
    invoke-direct {v0, v2}, Lh2/h;-><init>(Lh2/i;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Ly1/x;->R:Lu7/j0;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Lh2/h;->j(Ljava/util/Set;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lh2/i;

    .line 89
    .line 90
    invoke-direct {v3, v0}, Lh2/i;-><init>(Lh2/h;)V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Ly1/x;->R:Lu7/j0;

    .line 95
    .line 96
    move-object v0, v3

    .line 97
    :goto_1
    invoke-virtual {v0, v2}, Lr1/v0;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lh2/q;->b(Lr1/v0;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v0, p0, Ly1/x;->l:Ly1/f0;

    .line 107
    .line 108
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/16 v1, 0x24

    .line 115
    .line 116
    invoke-virtual {v0, v1, p1}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lu1/a0;->b()V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Ly1/x;->f1:Ly1/v0;

    .line 124
    .line 125
    iget-boolean v0, p1, Ly1/v0;->l:Z

    .line 126
    .line 127
    iget p1, p1, Ly1/v0;->m:I

    .line 128
    .line 129
    invoke-virtual {p0, p1, v0}, Ly1/x;->e0(IZ)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final t()Lr1/b0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ly1/x;->E()Lr1/q0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ly1/x;->e1:Lr1/b0;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ly1/x;->A()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, La/b;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lr1/p0;

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3, v4}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lr1/p0;->c:Lr1/y;

    .line 29
    .line 30
    iget-object v1, p0, Ly1/x;->e1:Lr1/b0;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v2, Lr1/a0;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lr1/a0;-><init>(Lr1/b0;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lr1/y;->d:Lr1/b0;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    iget-object v1, v0, Lr1/b0;->a:Ljava/lang/CharSequence;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iput-object v1, v2, Lr1/a0;->a:Ljava/lang/CharSequence;

    .line 51
    .line 52
    :cond_2
    iget-object v1, v0, Lr1/b0;->b:Ljava/lang/CharSequence;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iput-object v1, v2, Lr1/a0;->b:Ljava/lang/CharSequence;

    .line 57
    .line 58
    :cond_3
    iget-object v1, v0, Lr1/b0;->c:Ljava/lang/CharSequence;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    iput-object v1, v2, Lr1/a0;->c:Ljava/lang/CharSequence;

    .line 63
    .line 64
    :cond_4
    iget-object v1, v0, Lr1/b0;->d:Ljava/lang/CharSequence;

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    iput-object v1, v2, Lr1/a0;->d:Ljava/lang/CharSequence;

    .line 69
    .line 70
    :cond_5
    iget-object v1, v0, Lr1/b0;->e:Ljava/lang/CharSequence;

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    iput-object v1, v2, Lr1/a0;->e:Ljava/lang/CharSequence;

    .line 75
    .line 76
    :cond_6
    iget-object v1, v0, Lr1/b0;->f:[B

    .line 77
    .line 78
    if-eqz v1, :cond_8

    .line 79
    .line 80
    if-nez v1, :cond_7

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    goto :goto_0

    .line 84
    :cond_7
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, [B

    .line 89
    .line 90
    :goto_0
    iput-object v1, v2, Lr1/a0;->f:[B

    .line 91
    .line 92
    iget-object v1, v0, Lr1/b0;->g:Ljava/lang/Integer;

    .line 93
    .line 94
    iput-object v1, v2, Lr1/a0;->g:Ljava/lang/Integer;

    .line 95
    .line 96
    sget-object v1, Lr1/b0;->B:Lr1/b0;

    .line 97
    .line 98
    :cond_8
    iget-object v1, v0, Lr1/b0;->h:Ljava/lang/Integer;

    .line 99
    .line 100
    if-eqz v1, :cond_9

    .line 101
    .line 102
    iput-object v1, v2, Lr1/a0;->h:Ljava/lang/Integer;

    .line 103
    .line 104
    :cond_9
    iget-object v1, v0, Lr1/b0;->i:Ljava/lang/Integer;

    .line 105
    .line 106
    if-eqz v1, :cond_a

    .line 107
    .line 108
    iput-object v1, v2, Lr1/a0;->i:Ljava/lang/Integer;

    .line 109
    .line 110
    :cond_a
    iget-object v1, v0, Lr1/b0;->j:Ljava/lang/Integer;

    .line 111
    .line 112
    if-eqz v1, :cond_b

    .line 113
    .line 114
    iput-object v1, v2, Lr1/a0;->j:Ljava/lang/Integer;

    .line 115
    .line 116
    :cond_b
    iget-object v1, v0, Lr1/b0;->k:Ljava/lang/Boolean;

    .line 117
    .line 118
    if-eqz v1, :cond_c

    .line 119
    .line 120
    iput-object v1, v2, Lr1/a0;->k:Ljava/lang/Boolean;

    .line 121
    .line 122
    :cond_c
    iget-object v1, v0, Lr1/b0;->l:Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz v1, :cond_d

    .line 125
    .line 126
    iput-object v1, v2, Lr1/a0;->l:Ljava/lang/Integer;

    .line 127
    .line 128
    :cond_d
    iget-object v1, v0, Lr1/b0;->m:Ljava/lang/Integer;

    .line 129
    .line 130
    if-eqz v1, :cond_e

    .line 131
    .line 132
    iput-object v1, v2, Lr1/a0;->l:Ljava/lang/Integer;

    .line 133
    .line 134
    :cond_e
    iget-object v1, v0, Lr1/b0;->n:Ljava/lang/Integer;

    .line 135
    .line 136
    if-eqz v1, :cond_f

    .line 137
    .line 138
    iput-object v1, v2, Lr1/a0;->m:Ljava/lang/Integer;

    .line 139
    .line 140
    :cond_f
    iget-object v1, v0, Lr1/b0;->o:Ljava/lang/Integer;

    .line 141
    .line 142
    if-eqz v1, :cond_10

    .line 143
    .line 144
    iput-object v1, v2, Lr1/a0;->n:Ljava/lang/Integer;

    .line 145
    .line 146
    :cond_10
    iget-object v1, v0, Lr1/b0;->p:Ljava/lang/Integer;

    .line 147
    .line 148
    if-eqz v1, :cond_11

    .line 149
    .line 150
    iput-object v1, v2, Lr1/a0;->o:Ljava/lang/Integer;

    .line 151
    .line 152
    :cond_11
    iget-object v1, v0, Lr1/b0;->q:Ljava/lang/Integer;

    .line 153
    .line 154
    if-eqz v1, :cond_12

    .line 155
    .line 156
    iput-object v1, v2, Lr1/a0;->p:Ljava/lang/Integer;

    .line 157
    .line 158
    :cond_12
    iget-object v1, v0, Lr1/b0;->r:Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v1, :cond_13

    .line 161
    .line 162
    iput-object v1, v2, Lr1/a0;->q:Ljava/lang/Integer;

    .line 163
    .line 164
    :cond_13
    iget-object v1, v0, Lr1/b0;->s:Ljava/lang/CharSequence;

    .line 165
    .line 166
    if-eqz v1, :cond_14

    .line 167
    .line 168
    iput-object v1, v2, Lr1/a0;->r:Ljava/lang/CharSequence;

    .line 169
    .line 170
    :cond_14
    iget-object v1, v0, Lr1/b0;->t:Ljava/lang/CharSequence;

    .line 171
    .line 172
    if-eqz v1, :cond_15

    .line 173
    .line 174
    iput-object v1, v2, Lr1/a0;->s:Ljava/lang/CharSequence;

    .line 175
    .line 176
    :cond_15
    iget-object v1, v0, Lr1/b0;->u:Ljava/lang/CharSequence;

    .line 177
    .line 178
    if-eqz v1, :cond_16

    .line 179
    .line 180
    iput-object v1, v2, Lr1/a0;->t:Ljava/lang/CharSequence;

    .line 181
    .line 182
    :cond_16
    iget-object v1, v0, Lr1/b0;->v:Ljava/lang/Integer;

    .line 183
    .line 184
    if-eqz v1, :cond_17

    .line 185
    .line 186
    iput-object v1, v2, Lr1/a0;->u:Ljava/lang/Integer;

    .line 187
    .line 188
    :cond_17
    iget-object v1, v0, Lr1/b0;->w:Ljava/lang/Integer;

    .line 189
    .line 190
    if-eqz v1, :cond_18

    .line 191
    .line 192
    iput-object v1, v2, Lr1/a0;->v:Ljava/lang/Integer;

    .line 193
    .line 194
    :cond_18
    iget-object v1, v0, Lr1/b0;->x:Ljava/lang/CharSequence;

    .line 195
    .line 196
    if-eqz v1, :cond_19

    .line 197
    .line 198
    iput-object v1, v2, Lr1/a0;->w:Ljava/lang/CharSequence;

    .line 199
    .line 200
    :cond_19
    iget-object v1, v0, Lr1/b0;->y:Ljava/lang/CharSequence;

    .line 201
    .line 202
    if-eqz v1, :cond_1a

    .line 203
    .line 204
    iput-object v1, v2, Lr1/a0;->x:Ljava/lang/CharSequence;

    .line 205
    .line 206
    :cond_1a
    iget-object v1, v0, Lr1/b0;->z:Ljava/lang/Integer;

    .line 207
    .line 208
    if-eqz v1, :cond_1b

    .line 209
    .line 210
    iput-object v1, v2, Lr1/a0;->y:Ljava/lang/Integer;

    .line 211
    .line 212
    :cond_1b
    iget-object v0, v0, Lr1/b0;->A:Lu7/g0;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_1c

    .line 219
    .line 220
    invoke-static {v0}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iput-object v0, v2, Lr1/a0;->z:Lu7/g0;

    .line 225
    .line 226
    :cond_1c
    :goto_1
    new-instance v0, Lr1/b0;

    .line 227
    .line 228
    invoke-direct {v0, v2}, Lr1/b0;-><init>(Lr1/a0;)V

    .line 229
    .line 230
    .line 231
    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ly1/x;->V()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ly1/x;->b0(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, Ly1/x;->R(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final v(Ly1/x0;)Ly1/y0;
    .locals 8

    .line 1
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly1/x;->G(Ly1/v0;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v7, Ly1/y0;

    .line 8
    .line 9
    iget-object v1, p0, Ly1/x;->f1:Ly1/v0;

    .line 10
    .line 11
    iget-object v4, v1, Ly1/v0;->a:Lr1/q0;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v5, v0

    .line 20
    :goto_0
    iget-object v2, p0, Ly1/x;->l:Ly1/f0;

    .line 21
    .line 22
    iget-object v6, v2, Ly1/f0;->j:Landroid/os/Looper;

    .line 23
    .line 24
    move-object v1, v7

    .line 25
    move-object v3, p1

    .line 26
    invoke-direct/range {v1 .. v6}, Ly1/y0;-><init>(Ly1/w0;Ly1/x0;Lr1/q0;ILandroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    return-object v7
.end method

.method public final w()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 5
    .line 6
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Ly1/x;->h1:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 18
    .line 19
    iget-object v1, v0, Ly1/v0;->k:Lf2/c0;

    .line 20
    .line 21
    iget-wide v1, v1, Lf2/c0;->d:J

    .line 22
    .line 23
    iget-object v3, v0, Ly1/v0;->b:Lf2/c0;

    .line 24
    .line 25
    iget-wide v3, v3, Lf2/c0;->d:J

    .line 26
    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    cmp-long v7, v1, v3

    .line 30
    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 34
    .line 35
    invoke-virtual {p0}, Ly1/x;->A()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, La/b;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lr1/p0;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v5, v6}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-wide v0, v0, Lr1/p0;->l:J

    .line 48
    .line 49
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    return-wide v0

    .line 54
    :cond_1
    iget-wide v0, v0, Ly1/v0;->q:J

    .line 55
    .line 56
    iget-object v2, p0, Ly1/x;->f1:Ly1/v0;

    .line 57
    .line 58
    iget-object v2, v2, Ly1/v0;->k:Lf2/c0;

    .line 59
    .line 60
    invoke-virtual {v2}, Lf2/c0;->b()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 67
    .line 68
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 69
    .line 70
    iget-object v0, v0, Ly1/v0;->k:Lf2/c0;

    .line 71
    .line 72
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v2, p0, Ly1/x;->p:Lr1/o0;

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Ly1/x;->f1:Ly1/v0;

    .line 81
    .line 82
    iget-object v1, v1, Ly1/v0;->k:Lf2/c0;

    .line 83
    .line 84
    iget v1, v1, Lf2/c0;->b:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lr1/o0;->d(I)J

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move-wide v5, v0

    .line 91
    :goto_0
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 92
    .line 93
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 94
    .line 95
    iget-object v0, v0, Ly1/v0;->k:Lf2/c0;

    .line 96
    .line 97
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 98
    .line 99
    iget-object v2, p0, Ly1/x;->p:Lr1/o0;

    .line 100
    .line 101
    invoke-virtual {v1, v0, v2}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 102
    .line 103
    .line 104
    iget-wide v0, v2, Lr1/o0;->e:J

    .line 105
    .line 106
    add-long/2addr v5, v0

    .line 107
    invoke-static {v5, v6}, Lu1/f0;->R(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    return-wide v0
.end method

.method public final x(Ly1/v0;)J
    .locals 7

    .line 1
    iget-object v0, p1, Ly1/v0;->b:Lf2/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf2/c0;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Ly1/v0;->b:Lf2/c0;

    .line 10
    .line 11
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p1, Ly1/v0;->a:Lr1/q0;

    .line 14
    .line 15
    iget-object v2, p0, Ly1/x;->p:Lr1/o0;

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 18
    .line 19
    .line 20
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-wide v5, p1, Ly1/v0;->c:J

    .line 26
    .line 27
    cmp-long v0, v5, v3

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ly1/x;->G(Ly1/v0;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    iget-object v0, p0, La/b;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lr1/p0;

    .line 40
    .line 41
    invoke-virtual {v1, p1, v0, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-wide v0, p1, Lr1/p0;->k:J

    .line 46
    .line 47
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-wide v0, v2, Lr1/o0;->e:J

    .line 53
    .line 54
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-static {v5, v6}, Lu1/f0;->R(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    add-long/2addr v0, v2

    .line 63
    :goto_0
    return-wide v0

    .line 64
    :cond_1
    invoke-virtual {p0, p1}, Ly1/x;->D(Ly1/v0;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    return-wide v0
.end method

.method public final y()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ly1/x;->N()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 11
    .line 12
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 13
    .line 14
    iget v0, v0, Lf2/c0;->b:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public final z()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/x;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ly1/x;->N()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ly1/x;->f1:Ly1/v0;

    .line 11
    .line 12
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 13
    .line 14
    iget v0, v0, Lf2/c0;->c:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method
