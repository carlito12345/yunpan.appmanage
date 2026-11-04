.class public final Lc2/h;
.super Ly1/a;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:J

.field public C:I

.field public D:I

.field public E:Lr1/p;

.field public F:Lc2/c;

.field public G:Lx1/g;

.field public H:Landroidx/media3/exoplayer/image/ImageOutput;

.field public I:Ly1/y;

.field public K:Landroid/graphics/Bitmap;

.field public L:Z

.field public M:Lc2/g;

.field public N:Lc2/g;

.field public O:I

.field public P:Z

.field public final t:Lc2/b;

.field public final v:Lx1/g;

.field public final w:Ljava/util/ArrayDeque;

.field public x:Z

.field public y:Z

.field public z:Lc2/f;


# direct methods
.method public constructor <init>(Lc2/b;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Ly1/a;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lc2/h;->t:Lc2/b;

    .line 6
    .line 7
    sget-object p1, Landroidx/media3/exoplayer/image/ImageOutput;->a:Lc2/e;

    .line 8
    .line 9
    iput-object p1, p0, Lc2/h;->H:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 10
    .line 11
    new-instance p1, Lx1/g;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Lx1/g;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lc2/h;->v:Lx1/g;

    .line 18
    .line 19
    sget-object p1, Lc2/f;->c:Lc2/f;

    .line 20
    .line 21
    iput-object p1, p0, Lc2/h;->z:Lc2/f;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lc2/h;->w:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide v1, p0, Lc2/h;->B:J

    .line 36
    .line 37
    iput-wide v1, p0, Lc2/h;->A:J

    .line 38
    .line 39
    iput v0, p0, Lc2/h;->C:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lc2/h;->D:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final B(Lr1/p;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/h;->t:Lc2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lc2/b;->a(Lr1/p;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final E(J)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lc2/h;->M:Lc2/g;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget v2, p0, Lc2/h;->D:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget v2, p0, Ly1/a;->h:I

    .line 17
    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iget-object v2, p0, Lc2/h;->w:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x1

    .line 25
    if-nez v0, :cond_6

    .line 26
    .line 27
    iget-object v0, p0, Lc2/h;->F:Lc2/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lc2/h;->F:Lc2/c;

    .line 33
    .line 34
    invoke-virtual {v0}, Lx1/j;->l()Lx1/h;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lc2/a;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    const/4 v6, 0x4

    .line 44
    invoke-virtual {v0, v6}, Lab/a;->c(I)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_5

    .line 49
    .line 50
    iget p1, p0, Lc2/h;->C:I

    .line 51
    .line 52
    if-ne p1, v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lc2/h;->H()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lc2/h;->E:Lr1/p;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lc2/h;->G()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Lc2/a;->i()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    iput-boolean v5, p0, Lc2/h;->y:Z

    .line 76
    .line 77
    :cond_4
    :goto_0
    return v1

    .line 78
    :cond_5
    iget-object v6, v0, Lc2/a;->e:Landroid/graphics/Bitmap;

    .line 79
    .line 80
    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    .line 81
    .line 82
    invoke-static {v6, v7}, La9/o;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v6, v0, Lc2/a;->e:Landroid/graphics/Bitmap;

    .line 86
    .line 87
    iput-object v6, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 88
    .line 89
    invoke-virtual {v0}, Lc2/a;->i()V

    .line 90
    .line 91
    .line 92
    :cond_6
    iget-boolean v0, p0, Lc2/h;->L:Z

    .line 93
    .line 94
    if-eqz v0, :cond_16

    .line 95
    .line 96
    iget-object v0, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 97
    .line 98
    if-eqz v0, :cond_16

    .line 99
    .line 100
    iget-object v0, p0, Lc2/h;->M:Lc2/g;

    .line 101
    .line 102
    if-eqz v0, :cond_16

    .line 103
    .line 104
    iget-object v0, p0, Lc2/h;->E:Lr1/p;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lc2/h;->E:Lr1/p;

    .line 110
    .line 111
    iget v6, v0, Lr1/p;->N:I

    .line 112
    .line 113
    iget v0, v0, Lr1/p;->O:I

    .line 114
    .line 115
    if-ne v6, v5, :cond_7

    .line 116
    .line 117
    if-eq v0, v5, :cond_8

    .line 118
    .line 119
    :cond_7
    const/4 v7, -0x1

    .line 120
    if-eq v6, v7, :cond_8

    .line 121
    .line 122
    if-eq v0, v7, :cond_8

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    goto :goto_1

    .line 126
    :cond_8
    const/4 v0, 0x0

    .line 127
    :goto_1
    iget-object v6, p0, Lc2/h;->M:Lc2/g;

    .line 128
    .line 129
    iget-object v7, v6, Lc2/g;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v7, Landroid/graphics/Bitmap;

    .line 132
    .line 133
    if-eqz v7, :cond_9

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_9
    if-eqz v0, :cond_a

    .line 137
    .line 138
    iget-object v7, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v7, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 144
    .line 145
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    iget-object v8, p0, Lc2/h;->E:Lr1/p;

    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget v8, v8, Lr1/p;->N:I

    .line 155
    .line 156
    div-int/2addr v7, v8

    .line 157
    iget-object v8, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 158
    .line 159
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    iget-object v9, p0, Lc2/h;->E:Lr1/p;

    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget v9, v9, Lr1/p;->O:I

    .line 169
    .line 170
    div-int/2addr v8, v9

    .line 171
    iget-object v9, p0, Lc2/h;->E:Lr1/p;

    .line 172
    .line 173
    iget v9, v9, Lr1/p;->N:I

    .line 174
    .line 175
    iget v10, v6, Lc2/g;->a:I

    .line 176
    .line 177
    rem-int v11, v10, v9

    .line 178
    .line 179
    mul-int v11, v11, v7

    .line 180
    .line 181
    div-int/2addr v10, v9

    .line 182
    mul-int v10, v10, v8

    .line 183
    .line 184
    iget-object v9, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 185
    .line 186
    invoke-static {v9, v11, v10, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    goto :goto_2

    .line 191
    :cond_a
    iget-object v7, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 192
    .line 193
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    :goto_2
    iput-object v7, v6, Lc2/g;->c:Ljava/lang/Object;

    .line 197
    .line 198
    :goto_3
    iget-object v6, p0, Lc2/h;->M:Lc2/g;

    .line 199
    .line 200
    iget-object v6, v6, Lc2/g;->c:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v6, Landroid/graphics/Bitmap;

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iget-object v7, p0, Lc2/h;->M:Lc2/g;

    .line 208
    .line 209
    iget-wide v7, v7, Lc2/g;->b:J

    .line 210
    .line 211
    sub-long p1, v7, p1

    .line 212
    .line 213
    iget v9, p0, Ly1/a;->h:I

    .line 214
    .line 215
    if-ne v9, v3, :cond_b

    .line 216
    .line 217
    const/4 v3, 0x1

    .line 218
    goto :goto_4

    .line 219
    :cond_b
    const/4 v3, 0x0

    .line 220
    :goto_4
    iget v9, p0, Lc2/h;->D:I

    .line 221
    .line 222
    if-eqz v9, :cond_e

    .line 223
    .line 224
    if-eq v9, v5, :cond_d

    .line 225
    .line 226
    if-ne v9, v4, :cond_c

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    goto :goto_5

    .line 230
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_d
    const/4 v3, 0x1

    .line 237
    :cond_e
    :goto_5
    if-nez v3, :cond_10

    .line 238
    .line 239
    const-wide/16 v9, 0x7530

    .line 240
    .line 241
    cmp-long v3, p1, v9

    .line 242
    .line 243
    if-gez v3, :cond_f

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_f
    const/4 p1, 0x0

    .line 247
    goto :goto_7

    .line 248
    :cond_10
    :goto_6
    iget-object p1, p0, Lc2/h;->I:Ly1/y;

    .line 249
    .line 250
    if-eqz p1, :cond_11

    .line 251
    .line 252
    iget-object p2, p0, Lc2/h;->z:Lc2/f;

    .line 253
    .line 254
    iget-wide v9, p2, Lc2/f;->b:J

    .line 255
    .line 256
    iget-object p2, p0, Lc2/h;->E:Lr1/p;

    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iget-object p1, p1, Ly1/y;->a:Ly1/f0;

    .line 262
    .line 263
    iget-boolean p2, p1, Ly1/f0;->G:Z

    .line 264
    .line 265
    if-eqz p2, :cond_11

    .line 266
    .line 267
    iget-object p1, p1, Ly1/f0;->h:Lu1/b0;

    .line 268
    .line 269
    const/16 p2, 0x25

    .line 270
    .line 271
    invoke-virtual {p1, p2}, Lu1/b0;->a(I)Lu1/a0;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lu1/a0;->b()V

    .line 276
    .line 277
    .line 278
    :cond_11
    iget-object p1, p0, Lc2/h;->H:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 279
    .line 280
    iget-object p2, p0, Lc2/h;->z:Lc2/f;

    .line 281
    .line 282
    iget-wide v9, p2, Lc2/f;->b:J

    .line 283
    .line 284
    sub-long/2addr v7, v9

    .line 285
    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    .line 286
    .line 287
    .line 288
    const/4 p1, 0x1

    .line 289
    :goto_7
    if-nez p1, :cond_12

    .line 290
    .line 291
    return v1

    .line 292
    :cond_12
    iget-object p1, p0, Lc2/h;->M:Lc2/g;

    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    iget-wide p1, p1, Lc2/g;->b:J

    .line 298
    .line 299
    iput-wide p1, p0, Lc2/h;->A:J

    .line 300
    .line 301
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_13

    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Lc2/f;

    .line 312
    .line 313
    iget-wide v6, v1, Lc2/f;->a:J

    .line 314
    .line 315
    cmp-long v1, p1, v6

    .line 316
    .line 317
    if-ltz v1, :cond_13

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Lc2/f;

    .line 324
    .line 325
    iput-object v1, p0, Lc2/h;->z:Lc2/f;

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_13
    iput v4, p0, Lc2/h;->D:I

    .line 329
    .line 330
    const/4 p1, 0x0

    .line 331
    if-eqz v0, :cond_14

    .line 332
    .line 333
    iget-object p2, p0, Lc2/h;->M:Lc2/g;

    .line 334
    .line 335
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lc2/h;->E:Lr1/p;

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lc2/h;->E:Lr1/p;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    iget v1, v1, Lr1/p;->N:I

    .line 349
    .line 350
    iget v0, v0, Lr1/p;->O:I

    .line 351
    .line 352
    mul-int v0, v0, v1

    .line 353
    .line 354
    sub-int/2addr v0, v5

    .line 355
    iget p2, p2, Lc2/g;->a:I

    .line 356
    .line 357
    if-ne p2, v0, :cond_15

    .line 358
    .line 359
    :cond_14
    iput-object p1, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 360
    .line 361
    :cond_15
    iget-object p2, p0, Lc2/h;->N:Lc2/g;

    .line 362
    .line 363
    iput-object p2, p0, Lc2/h;->M:Lc2/g;

    .line 364
    .line 365
    iput-object p1, p0, Lc2/h;->N:Lc2/g;

    .line 366
    .line 367
    return v5

    .line 368
    :cond_16
    return v1
.end method

.method public final F(J)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lc2/h;->L:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lc2/h;->M:Lc2/g;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Ly1/a;->c:Lua/i8;

    .line 12
    .line 13
    invoke-virtual {v0}, Lua/i8;->n()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lc2/h;->F:Lc2/c;

    .line 17
    .line 18
    if-eqz v2, :cond_15

    .line 19
    .line 20
    iget v3, p0, Lc2/h;->C:I

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    if-eq v3, v4, :cond_15

    .line 24
    .line 25
    iget-boolean v3, p0, Lc2/h;->x:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_1
    iget-object v3, p0, Lc2/h;->G:Lx1/g;

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Lx1/j;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lx1/g;

    .line 40
    .line 41
    iput-object v2, p0, Lc2/h;->G:Lx1/g;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    iget v2, p0, Lc2/h;->C:I

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x4

    .line 51
    if-ne v2, v3, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lc2/h;->G:Lx1/g;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lc2/h;->G:Lx1/g;

    .line 59
    .line 60
    iput v6, p1, Lab/a;->b:I

    .line 61
    .line 62
    iget-object p1, p0, Lc2/h;->F:Lc2/c;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lc2/h;->G:Lx1/g;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lx1/j;->n(Lx1/g;)V

    .line 70
    .line 71
    .line 72
    iput-object v5, p0, Lc2/h;->G:Lx1/g;

    .line 73
    .line 74
    iput v4, p0, Lc2/h;->C:I

    .line 75
    .line 76
    return v1

    .line 77
    :cond_3
    iget-object v2, p0, Lc2/h;->G:Lx1/g;

    .line 78
    .line 79
    invoke-virtual {p0, v0, v2, v1}, Ly1/a;->w(Lua/i8;Lx1/g;I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v4, -0x5

    .line 84
    const/4 v7, 0x1

    .line 85
    if-eq v2, v4, :cond_14

    .line 86
    .line 87
    const/4 v0, -0x4

    .line 88
    if-eq v2, v0, :cond_5

    .line 89
    .line 90
    const/4 p1, -0x3

    .line 91
    if-ne v2, p1, :cond_4

    .line 92
    .line 93
    return v1

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_5
    iget-object v0, p0, Lc2/h;->G:Lx1/g;

    .line 101
    .line 102
    invoke-virtual {v0}, Lx1/g;->l()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lc2/h;->G:Lx1/g;

    .line 106
    .line 107
    iget-object v0, v0, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-gtz v0, :cond_7

    .line 116
    .line 117
    :cond_6
    iget-object v0, p0, Lc2/h;->G:Lx1/g;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v6}, Lab/a;->c(I)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    :cond_7
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_8
    const/4 v0, 0x0

    .line 131
    :goto_0
    if-eqz v0, :cond_9

    .line 132
    .line 133
    iget-object v2, p0, Lc2/h;->G:Lx1/g;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object v3, p0, Lc2/h;->E:Lr1/p;

    .line 139
    .line 140
    iput-object v3, v2, Lx1/g;->c:Lr1/p;

    .line 141
    .line 142
    iget-object v2, p0, Lc2/h;->F:Lc2/c;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-object v3, p0, Lc2/h;->G:Lx1/g;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Lx1/j;->n(Lx1/g;)V

    .line 153
    .line 154
    .line 155
    iput v1, p0, Lc2/h;->O:I

    .line 156
    .line 157
    :cond_9
    iget-object v2, p0, Lc2/h;->G:Lx1/g;

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v6}, Lab/a;->c(I)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_a

    .line 167
    .line 168
    iput-boolean v7, p0, Lc2/h;->L:Z

    .line 169
    .line 170
    goto/16 :goto_7

    .line 171
    .line 172
    :cond_a
    new-instance v3, Lc2/g;

    .line 173
    .line 174
    iget v4, p0, Lc2/h;->O:I

    .line 175
    .line 176
    iget-wide v8, v2, Lx1/g;->g:J

    .line 177
    .line 178
    invoke-direct {v3, v4, v8, v9}, Lc2/g;-><init>(IJ)V

    .line 179
    .line 180
    .line 181
    iput-object v3, p0, Lc2/h;->N:Lc2/g;

    .line 182
    .line 183
    add-int/lit8 v2, v4, 0x1

    .line 184
    .line 185
    iput v2, p0, Lc2/h;->O:I

    .line 186
    .line 187
    iget-boolean v2, p0, Lc2/h;->L:Z

    .line 188
    .line 189
    if-nez v2, :cond_11

    .line 190
    .line 191
    const-wide/16 v2, 0x7530

    .line 192
    .line 193
    sub-long v10, v8, v2

    .line 194
    .line 195
    cmp-long v12, v10, p1

    .line 196
    .line 197
    if-gtz v12, :cond_b

    .line 198
    .line 199
    add-long/2addr v2, v8

    .line 200
    cmp-long v10, p1, v2

    .line 201
    .line 202
    if-gtz v10, :cond_b

    .line 203
    .line 204
    const/4 v2, 0x1

    .line 205
    goto :goto_1

    .line 206
    :cond_b
    const/4 v2, 0x0

    .line 207
    :goto_1
    iget-object v3, p0, Lc2/h;->M:Lc2/g;

    .line 208
    .line 209
    if-eqz v3, :cond_c

    .line 210
    .line 211
    iget-wide v10, v3, Lc2/g;->b:J

    .line 212
    .line 213
    cmp-long v3, v10, p1

    .line 214
    .line 215
    if-gtz v3, :cond_c

    .line 216
    .line 217
    cmp-long v3, p1, v8

    .line 218
    .line 219
    if-gez v3, :cond_c

    .line 220
    .line 221
    const/4 p1, 0x1

    .line 222
    goto :goto_2

    .line 223
    :cond_c
    const/4 p1, 0x0

    .line 224
    :goto_2
    iget-object p2, p0, Lc2/h;->E:Lr1/p;

    .line 225
    .line 226
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    iget p2, p2, Lr1/p;->N:I

    .line 230
    .line 231
    const/4 v3, -0x1

    .line 232
    if-eq p2, v3, :cond_e

    .line 233
    .line 234
    iget-object p2, p0, Lc2/h;->E:Lr1/p;

    .line 235
    .line 236
    iget v8, p2, Lr1/p;->O:I

    .line 237
    .line 238
    if-eq v8, v3, :cond_e

    .line 239
    .line 240
    iget p2, p2, Lr1/p;->N:I

    .line 241
    .line 242
    mul-int v8, v8, p2

    .line 243
    .line 244
    sub-int/2addr v8, v7

    .line 245
    if-ne v4, v8, :cond_d

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_d
    const/4 p2, 0x0

    .line 249
    goto :goto_4

    .line 250
    :cond_e
    :goto_3
    const/4 p2, 0x1

    .line 251
    :goto_4
    if-nez v2, :cond_10

    .line 252
    .line 253
    if-nez p1, :cond_10

    .line 254
    .line 255
    if-eqz p2, :cond_f

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_f
    const/4 p2, 0x0

    .line 259
    goto :goto_6

    .line 260
    :cond_10
    :goto_5
    const/4 p2, 0x1

    .line 261
    :goto_6
    iput-boolean p2, p0, Lc2/h;->L:Z

    .line 262
    .line 263
    if-eqz p1, :cond_11

    .line 264
    .line 265
    if-nez v2, :cond_11

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_11
    iget-object p1, p0, Lc2/h;->N:Lc2/g;

    .line 269
    .line 270
    iput-object p1, p0, Lc2/h;->M:Lc2/g;

    .line 271
    .line 272
    iput-object v5, p0, Lc2/h;->N:Lc2/g;

    .line 273
    .line 274
    :goto_7
    iget-object p1, p0, Lc2/h;->G:Lx1/g;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v6}, Lab/a;->c(I)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_12

    .line 284
    .line 285
    iput-boolean v7, p0, Lc2/h;->x:Z

    .line 286
    .line 287
    iput-object v5, p0, Lc2/h;->G:Lx1/g;

    .line 288
    .line 289
    return v1

    .line 290
    :cond_12
    iget-wide p1, p0, Lc2/h;->B:J

    .line 291
    .line 292
    iget-object v1, p0, Lc2/h;->G:Lx1/g;

    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    iget-wide v1, v1, Lx1/g;->g:J

    .line 298
    .line 299
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 300
    .line 301
    .line 302
    move-result-wide p1

    .line 303
    iput-wide p1, p0, Lc2/h;->B:J

    .line 304
    .line 305
    if-eqz v0, :cond_13

    .line 306
    .line 307
    iput-object v5, p0, Lc2/h;->G:Lx1/g;

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_13
    iget-object p1, p0, Lc2/h;->G:Lx1/g;

    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Lx1/g;->g()V

    .line 316
    .line 317
    .line 318
    :goto_8
    iget-boolean p1, p0, Lc2/h;->L:Z

    .line 319
    .line 320
    xor-int/2addr p1, v7

    .line 321
    return p1

    .line 322
    :cond_14
    iget-object p1, v0, Lua/i8;->c:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast p1, Lr1/p;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    iput-object p1, p0, Lc2/h;->E:Lr1/p;

    .line 330
    .line 331
    iput-boolean v7, p0, Lc2/h;->P:Z

    .line 332
    .line 333
    iput v3, p0, Lc2/h;->C:I

    .line 334
    .line 335
    return v7

    .line 336
    :cond_15
    :goto_9
    return v1
.end method

.method public final G()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc2/h;->P:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lc2/h;->E:Lr1/p;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lc2/h;->t:Lc2/b;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lc2/b;->a(Lr1/p;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x4

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v2, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq v0, v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-static {v2, v3, v3, v3}, Lta/q;->a(IIII)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lc2/d;

    .line 37
    .line 38
    invoke-direct {v0}, Lc2/d;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lc2/h;->E:Lr1/p;

    .line 42
    .line 43
    const/16 v2, 0xfa5

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1, v3, v2}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    throw v0

    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lc2/h;->F:Lc2/c;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lx1/j;->a()V

    .line 55
    .line 56
    .line 57
    :cond_3
    new-instance v0, Lc2/c;

    .line 58
    .line 59
    iget-object v1, v1, Lc2/b;->a:Landroid/content/ContextWrapper;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lc2/c;-><init>(Landroid/content/ContextWrapper;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lc2/h;->F:Lc2/c;

    .line 65
    .line 66
    iput-boolean v3, p0, Lc2/h;->P:Z

    .line 67
    .line 68
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc2/h;->G:Lx1/g;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lc2/h;->C:I

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v1, p0, Lc2/h;->B:J

    .line 13
    .line 14
    iget-object v1, p0, Lc2/h;->F:Lc2/c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lx1/j;->a()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lc2/h;->F:Lc2/c;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x17

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    check-cast p2, Ly1/y;

    .line 11
    .line 12
    iput-object p2, p0, Lc2/h;->I:Ly1/y;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 p2, 0x0

    .line 23
    :goto_0
    if-nez p2, :cond_3

    .line 24
    .line 25
    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->a:Lc2/e;

    .line 26
    .line 27
    :cond_3
    iput-object p2, p0, Lc2/h;->H:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 28
    .line 29
    :goto_1
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ImageRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc2/h;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget v0, p0, Lc2/h;->D:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lc2/h;->L:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    return v0
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc2/h;->E:Lr1/p;

    .line 3
    .line 4
    sget-object v0, Lc2/f;->c:Lc2/f;

    .line 5
    .line 6
    iput-object v0, p0, Lc2/h;->z:Lc2/f;

    .line 7
    .line 8
    iget-object v0, p0, Lc2/h;->w:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lc2/h;->H()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lc2/h;->H:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final o(ZZ)V
    .locals 0

    .line 1
    iput p2, p0, Lc2/h;->D:I

    .line 2
    .line 3
    return-void
.end method

.method public final p(JZZ)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget p2, p0, Lc2/h;->D:I

    .line 3
    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lc2/h;->D:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lc2/h;->y:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lc2/h;->x:Z

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lc2/h;->K:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    iput-object p2, p0, Lc2/h;->M:Lc2/g;

    .line 19
    .line 20
    iput-object p2, p0, Lc2/h;->N:Lc2/g;

    .line 21
    .line 22
    iput-boolean p1, p0, Lc2/h;->L:Z

    .line 23
    .line 24
    iput-object p2, p0, Lc2/h;->G:Lx1/g;

    .line 25
    .line 26
    iget-object p1, p0, Lc2/h;->F:Lc2/c;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lx1/j;->flush()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lc2/h;->w:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc2/h;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc2/h;->H()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iget v1, p0, Lc2/h;->D:I

    .line 6
    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lc2/h;->D:I

    .line 12
    .line 13
    return-void
.end method

.method public final u([Lr1/p;JJLf2/c0;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lc2/h;->z:Lc2/f;

    .line 2
    .line 3
    iget-wide p1, p1, Lc2/f;->b:J

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p3, p1, v0

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lc2/h;->w:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-wide p2, p0, Lc2/h;->B:J

    .line 23
    .line 24
    cmp-long p6, p2, v0

    .line 25
    .line 26
    if-eqz p6, :cond_1

    .line 27
    .line 28
    iget-wide v2, p0, Lc2/h;->A:J

    .line 29
    .line 30
    cmp-long p6, v2, v0

    .line 31
    .line 32
    if-eqz p6, :cond_0

    .line 33
    .line 34
    cmp-long p6, v2, p2

    .line 35
    .line 36
    if-ltz p6, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p2, Lc2/f;

    .line 40
    .line 41
    iget-wide v0, p0, Lc2/h;->B:J

    .line 42
    .line 43
    invoke-direct {p2, v0, v1, p4, p5}, Lc2/f;-><init>(JJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    new-instance p1, Lc2/f;

    .line 51
    .line 52
    invoke-direct {p1, v0, v1, p4, p5}, Lc2/f;-><init>(JJ)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lc2/h;->z:Lc2/f;

    .line 56
    .line 57
    :goto_1
    return-void
.end method

.method public final x(JJ)V
    .locals 3

    .line 1
    iget-boolean p3, p0, Lc2/h;->y:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p3, p0, Lc2/h;->E:Lr1/p;

    .line 7
    .line 8
    if-nez p3, :cond_3

    .line 9
    .line 10
    iget-object p3, p0, Ly1/a;->c:Lua/i8;

    .line 11
    .line 12
    invoke-virtual {p3}, Lua/i8;->n()V

    .line 13
    .line 14
    .line 15
    iget-object p4, p0, Lc2/h;->v:Lx1/g;

    .line 16
    .line 17
    invoke-virtual {p4}, Lx1/g;->g()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-virtual {p0, p3, p4, v0}, Ly1/a;->w(Lua/i8;Lx1/g;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x5

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget-object p3, p3, Lua/i8;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p3, Lr1/p;

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lc2/h;->E:Lr1/p;

    .line 37
    .line 38
    iput-boolean v2, p0, Lc2/h;->P:Z

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, -0x4

    .line 42
    if-ne v0, p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x4

    .line 45
    invoke-virtual {p4, p1}, Lab/a;->c(I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, La9/o;->t(Z)V

    .line 50
    .line 51
    .line 52
    iput-boolean v2, p0, Lc2/h;->x:Z

    .line 53
    .line 54
    iput-boolean v2, p0, Lc2/h;->y:Z

    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :cond_3
    :goto_0
    iget-object p3, p0, Lc2/h;->F:Lc2/c;

    .line 58
    .line 59
    if-nez p3, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lc2/h;->G()V

    .line 62
    .line 63
    .line 64
    :cond_4
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    .line 65
    .line 66
    invoke-static {p3}, Ltb/a;->k(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {p0, p1, p2}, Lc2/h;->E(J)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_5

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2}, Lc2/h;->F(J)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_6

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_6
    invoke-static {}, Ltb/a;->h()V
    :try_end_0
    .catch Lc2/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    move-exception p1

    .line 88
    const/4 p2, 0x0

    .line 89
    const/16 p3, 0xfa3

    .line 90
    .line 91
    const/4 p4, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, p4, p3}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_4

    .line 97
    :goto_3
    throw p1

    .line 98
    :goto_4
    goto :goto_3
.end method
