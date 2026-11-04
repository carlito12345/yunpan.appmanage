.class public final Lf2/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/j0;


# instance fields
.field public A:Z

.field public B:Lr1/p;

.field public C:Z

.field public D:Z

.field public final a:Lf2/z0;

.field public final b:Lc2/g;

.field public final c:Landroidx/room/s;

.field public final d:Lb2/g;

.field public final e:Lb2/d;

.field public f:Lf2/u0;

.field public g:Lr1/p;

.field public h:La1/i;

.field public i:I

.field public j:[J

.field public k:[J

.field public l:[I

.field public m:[I

.field public n:[J

.field public o:[Ll2/i0;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Ls4/a;Lb2/g;Lb2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lf2/b1;->d:Lb2/g;

    .line 5
    .line 6
    iput-object p3, p0, Lf2/b1;->e:Lb2/d;

    .line 7
    .line 8
    new-instance p2, Lf2/z0;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lf2/z0;-><init>(Ls4/a;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lf2/b1;->a:Lf2/z0;

    .line 14
    .line 15
    new-instance p1, Lc2/g;

    .line 16
    .line 17
    invoke-direct {p1}, Lc2/g;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lf2/b1;->b:Lc2/g;

    .line 21
    .line 22
    const/16 p1, 0x3e8

    .line 23
    .line 24
    iput p1, p0, Lf2/b1;->i:I

    .line 25
    .line 26
    new-array p2, p1, [J

    .line 27
    .line 28
    iput-object p2, p0, Lf2/b1;->j:[J

    .line 29
    .line 30
    new-array p2, p1, [J

    .line 31
    .line 32
    iput-object p2, p0, Lf2/b1;->k:[J

    .line 33
    .line 34
    new-array p2, p1, [J

    .line 35
    .line 36
    iput-object p2, p0, Lf2/b1;->n:[J

    .line 37
    .line 38
    new-array p2, p1, [I

    .line 39
    .line 40
    iput-object p2, p0, Lf2/b1;->m:[I

    .line 41
    .line 42
    new-array p2, p1, [I

    .line 43
    .line 44
    iput-object p2, p0, Lf2/b1;->l:[I

    .line 45
    .line 46
    new-array p1, p1, [Ll2/i0;

    .line 47
    .line 48
    iput-object p1, p0, Lf2/b1;->o:[Ll2/i0;

    .line 49
    .line 50
    new-instance p1, Landroidx/room/s;

    .line 51
    .line 52
    new-instance p2, La2/u0;

    .line 53
    .line 54
    const/16 p3, 0x15

    .line 55
    .line 56
    invoke-direct {p2, p3}, La2/u0;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Landroidx/room/s;-><init>(La2/u0;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 63
    .line 64
    const-wide/high16 p1, -0x8000000000000000L

    .line 65
    .line 66
    iput-wide p1, p0, Lf2/b1;->t:J

    .line 67
    .line 68
    iput-wide p1, p0, Lf2/b1;->v:J

    .line 69
    .line 70
    iput-wide p1, p0, Lf2/b1;->w:J

    .line 71
    .line 72
    const/4 p3, 0x1

    .line 73
    iput-boolean p3, p0, Lf2/b1;->A:Z

    .line 74
    .line 75
    iput-boolean p3, p0, Lf2/b1;->z:Z

    .line 76
    .line 77
    iput-boolean p3, p0, Lf2/b1;->C:Z

    .line 78
    .line 79
    iput-wide p1, p0, Lf2/b1;->u:J

    .line 80
    .line 81
    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lf2/b1;->x:I

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a(ILu1/q;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, p1, v0}, Lf2/b1;->c(Lu1/q;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b(JIIILl2/i0;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    iget-boolean v4, p0, Lf2/b1;->z:Z

    .line 11
    .line 12
    if-eqz v4, :cond_2

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iput-boolean v2, p0, Lf2/b1;->z:Z

    .line 18
    .line 19
    :cond_2
    iget-boolean v2, p0, Lf2/b1;->C:Z

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    iget-wide v2, p0, Lf2/b1;->t:J

    .line 24
    .line 25
    cmp-long v4, p1, v2

    .line 26
    .line 27
    if-gez v4, :cond_3

    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    if-nez v0, :cond_5

    .line 31
    .line 32
    iget-boolean v0, p0, Lf2/b1;->D:Z

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "Overriding unexpected non-sync sample for format: "

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lf2/b1;->B:Lr1/p;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-boolean v1, p0, Lf2/b1;->D:Z

    .line 56
    .line 57
    :cond_4
    or-int/lit8 p3, p3, 0x1

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lf2/b1;->a:Lf2/z0;

    .line 60
    .line 61
    iget-wide v0, v0, Lf2/z0;->g:J

    .line 62
    .line 63
    int-to-long v2, p4

    .line 64
    sub-long/2addr v0, v2

    .line 65
    int-to-long v2, p5

    .line 66
    sub-long/2addr v0, v2

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget p5, p0, Lf2/b1;->p:I

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x1

    .line 72
    if-lez p5, :cond_7

    .line 73
    .line 74
    sub-int/2addr p5, v3

    .line 75
    invoke-virtual {p0, p5}, Lf2/b1;->m(I)I

    .line 76
    .line 77
    .line 78
    move-result p5

    .line 79
    iget-object v4, p0, Lf2/b1;->k:[J

    .line 80
    .line 81
    aget-wide v5, v4, p5

    .line 82
    .line 83
    iget-object v4, p0, Lf2/b1;->l:[I

    .line 84
    .line 85
    aget p5, v4, p5

    .line 86
    .line 87
    int-to-long v7, p5

    .line 88
    add-long/2addr v5, v7

    .line 89
    cmp-long p5, v5, v0

    .line 90
    .line 91
    if-gtz p5, :cond_6

    .line 92
    .line 93
    const/4 p5, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    const/4 p5, 0x0

    .line 96
    :goto_1
    invoke-static {p5}, La9/o;->k(Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    goto/16 :goto_8

    .line 102
    .line 103
    :cond_7
    :goto_2
    const/high16 p5, 0x20000000

    .line 104
    .line 105
    and-int/2addr p5, p3

    .line 106
    if-eqz p5, :cond_8

    .line 107
    .line 108
    const/4 p5, 0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_8
    const/4 p5, 0x0

    .line 111
    :goto_3
    iput-boolean p5, p0, Lf2/b1;->y:Z

    .line 112
    .line 113
    iget-wide v4, p0, Lf2/b1;->w:J

    .line 114
    .line 115
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    iput-wide v4, p0, Lf2/b1;->w:J

    .line 120
    .line 121
    iget-wide v4, p0, Lf2/b1;->u:J

    .line 122
    .line 123
    const-wide/high16 v6, -0x8000000000000000L

    .line 124
    .line 125
    const/4 p5, -0x1

    .line 126
    cmp-long v8, v4, v6

    .line 127
    .line 128
    if-eqz v8, :cond_9

    .line 129
    .line 130
    iget v6, p0, Lf2/b1;->x:I

    .line 131
    .line 132
    if-ne v6, p5, :cond_9

    .line 133
    .line 134
    cmp-long v6, p1, v4

    .line 135
    .line 136
    if-ltz v6, :cond_9

    .line 137
    .line 138
    iget v4, p0, Lf2/b1;->q:I

    .line 139
    .line 140
    iget v5, p0, Lf2/b1;->p:I

    .line 141
    .line 142
    add-int/2addr v4, v5

    .line 143
    iput v4, p0, Lf2/b1;->x:I

    .line 144
    .line 145
    :cond_9
    iget v4, p0, Lf2/b1;->p:I

    .line 146
    .line 147
    invoke-virtual {p0, v4}, Lf2/b1;->m(I)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    iget-object v5, p0, Lf2/b1;->n:[J

    .line 152
    .line 153
    aput-wide p1, v5, v4

    .line 154
    .line 155
    iget-object p1, p0, Lf2/b1;->k:[J

    .line 156
    .line 157
    aput-wide v0, p1, v4

    .line 158
    .line 159
    iget-object p1, p0, Lf2/b1;->l:[I

    .line 160
    .line 161
    aput p4, p1, v4

    .line 162
    .line 163
    iget-object p1, p0, Lf2/b1;->m:[I

    .line 164
    .line 165
    aput p3, p1, v4

    .line 166
    .line 167
    iget-object p1, p0, Lf2/b1;->o:[Ll2/i0;

    .line 168
    .line 169
    aput-object p6, p1, v4

    .line 170
    .line 171
    iget-object p1, p0, Lf2/b1;->j:[J

    .line 172
    .line 173
    const-wide/16 p2, 0x0

    .line 174
    .line 175
    aput-wide p2, p1, v4

    .line 176
    .line 177
    iget-object p1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 178
    .line 179
    iget-object p1, p1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p1, Landroid/util/SparseArray;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-nez p1, :cond_a

    .line 188
    .line 189
    const/4 p1, 0x1

    .line 190
    goto :goto_4

    .line 191
    :cond_a
    const/4 p1, 0x0

    .line 192
    :goto_4
    if-nez p1, :cond_b

    .line 193
    .line 194
    iget-object p1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 195
    .line 196
    iget-object p1, p1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast p1, Landroid/util/SparseArray;

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    sub-int/2addr p2, v3

    .line 205
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lf2/a1;

    .line 210
    .line 211
    iget-object p1, p1, Lf2/a1;->a:Lr1/p;

    .line 212
    .line 213
    iget-object p2, p0, Lf2/b1;->B:Lr1/p;

    .line 214
    .line 215
    invoke-virtual {p1, p2}, Lr1/p;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_11

    .line 220
    .line 221
    :cond_b
    iget-object p1, p0, Lf2/b1;->B:Lr1/p;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    iget-object p2, p0, Lf2/b1;->d:Lb2/g;

    .line 227
    .line 228
    if-eqz p2, :cond_c

    .line 229
    .line 230
    iget-object p3, p0, Lf2/b1;->e:Lb2/d;

    .line 231
    .line 232
    invoke-interface {p2, p3, p1}, Lb2/g;->u(Lb2/d;Lr1/p;)Lb2/f;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    goto :goto_5

    .line 237
    :cond_c
    sget-object p2, Lb2/f;->a:Lb2/f;

    .line 238
    .line 239
    :goto_5
    iget-object p3, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 240
    .line 241
    iget p4, p0, Lf2/b1;->q:I

    .line 242
    .line 243
    iget p6, p0, Lf2/b1;->p:I

    .line 244
    .line 245
    add-int/2addr p4, p6

    .line 246
    new-instance p6, Lf2/a1;

    .line 247
    .line 248
    invoke-direct {p6, p1, p2}, Lf2/a1;-><init>(Lr1/p;Lb2/f;)V

    .line 249
    .line 250
    .line 251
    iget p1, p3, Landroidx/room/s;->b:I

    .line 252
    .line 253
    iget-object p2, p3, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p2, Landroid/util/SparseArray;

    .line 256
    .line 257
    if-ne p1, p5, :cond_e

    .line 258
    .line 259
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_d

    .line 264
    .line 265
    const/4 p1, 0x1

    .line 266
    goto :goto_6

    .line 267
    :cond_d
    const/4 p1, 0x0

    .line 268
    :goto_6
    invoke-static {p1}, La9/o;->t(Z)V

    .line 269
    .line 270
    .line 271
    iput v2, p3, Landroidx/room/s;->b:I

    .line 272
    .line 273
    :cond_e
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-lez p1, :cond_10

    .line 278
    .line 279
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    sub-int/2addr p1, v3

    .line 284
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-lt p4, p1, :cond_f

    .line 289
    .line 290
    const/4 p5, 0x1

    .line 291
    goto :goto_7

    .line 292
    :cond_f
    const/4 p5, 0x0

    .line 293
    :goto_7
    invoke-static {p5}, La9/o;->k(Z)V

    .line 294
    .line 295
    .line 296
    if-ne p1, p4, :cond_10

    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    sub-int/2addr p1, v3

    .line 303
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iget-object p3, p3, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast p3, La2/u0;

    .line 310
    .line 311
    invoke-virtual {p3, p1}, La2/u0;->accept(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_10
    invoke-virtual {p2, p4, p6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :cond_11
    iget p1, p0, Lf2/b1;->p:I

    .line 318
    .line 319
    add-int/2addr p1, v3

    .line 320
    iput p1, p0, Lf2/b1;->p:I

    .line 321
    .line 322
    iget p2, p0, Lf2/b1;->i:I

    .line 323
    .line 324
    if-ne p1, p2, :cond_12

    .line 325
    .line 326
    add-int/lit16 p1, p2, 0x3e8

    .line 327
    .line 328
    new-array p3, p1, [J

    .line 329
    .line 330
    new-array p4, p1, [J

    .line 331
    .line 332
    new-array p5, p1, [J

    .line 333
    .line 334
    new-array p6, p1, [I

    .line 335
    .line 336
    new-array v0, p1, [I

    .line 337
    .line 338
    new-array v1, p1, [Ll2/i0;

    .line 339
    .line 340
    iget v3, p0, Lf2/b1;->r:I

    .line 341
    .line 342
    sub-int/2addr p2, v3

    .line 343
    iget-object v4, p0, Lf2/b1;->k:[J

    .line 344
    .line 345
    invoke-static {v4, v3, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    .line 347
    .line 348
    iget-object v3, p0, Lf2/b1;->n:[J

    .line 349
    .line 350
    iget v4, p0, Lf2/b1;->r:I

    .line 351
    .line 352
    invoke-static {v3, v4, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    .line 354
    .line 355
    iget-object v3, p0, Lf2/b1;->m:[I

    .line 356
    .line 357
    iget v4, p0, Lf2/b1;->r:I

    .line 358
    .line 359
    invoke-static {v3, v4, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    .line 361
    .line 362
    iget-object v3, p0, Lf2/b1;->l:[I

    .line 363
    .line 364
    iget v4, p0, Lf2/b1;->r:I

    .line 365
    .line 366
    invoke-static {v3, v4, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    .line 368
    .line 369
    iget-object v3, p0, Lf2/b1;->o:[Ll2/i0;

    .line 370
    .line 371
    iget v4, p0, Lf2/b1;->r:I

    .line 372
    .line 373
    invoke-static {v3, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    .line 375
    .line 376
    iget-object v3, p0, Lf2/b1;->j:[J

    .line 377
    .line 378
    iget v4, p0, Lf2/b1;->r:I

    .line 379
    .line 380
    invoke-static {v3, v4, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    .line 382
    .line 383
    iget v3, p0, Lf2/b1;->r:I

    .line 384
    .line 385
    iget-object v4, p0, Lf2/b1;->k:[J

    .line 386
    .line 387
    invoke-static {v4, v2, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    .line 389
    .line 390
    iget-object v4, p0, Lf2/b1;->n:[J

    .line 391
    .line 392
    invoke-static {v4, v2, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    .line 394
    .line 395
    iget-object v4, p0, Lf2/b1;->m:[I

    .line 396
    .line 397
    invoke-static {v4, v2, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    .line 399
    .line 400
    iget-object v4, p0, Lf2/b1;->l:[I

    .line 401
    .line 402
    invoke-static {v4, v2, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    .line 404
    .line 405
    iget-object v4, p0, Lf2/b1;->o:[Ll2/i0;

    .line 406
    .line 407
    invoke-static {v4, v2, v1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    .line 409
    .line 410
    iget-object v4, p0, Lf2/b1;->j:[J

    .line 411
    .line 412
    invoke-static {v4, v2, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    .line 414
    .line 415
    iput-object p4, p0, Lf2/b1;->k:[J

    .line 416
    .line 417
    iput-object p5, p0, Lf2/b1;->n:[J

    .line 418
    .line 419
    iput-object p6, p0, Lf2/b1;->m:[I

    .line 420
    .line 421
    iput-object v0, p0, Lf2/b1;->l:[I

    .line 422
    .line 423
    iput-object v1, p0, Lf2/b1;->o:[Ll2/i0;

    .line 424
    .line 425
    iput-object p3, p0, Lf2/b1;->j:[J

    .line 426
    .line 427
    iput v2, p0, Lf2/b1;->r:I

    .line 428
    .line 429
    iput p1, p0, Lf2/b1;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .line 431
    :cond_12
    monitor-exit p0

    .line 432
    return-void

    .line 433
    :goto_8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    throw p1
.end method

.method public final c(Lu1/q;II)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object p3, p0, Lf2/b1;->a:Lf2/z0;

    .line 2
    .line 3
    if-lez p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p3, p2}, Lf2/z0;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p3, Lf2/z0;->f:Lf2/y0;

    .line 10
    .line 11
    iget-object v2, v1, Lf2/y0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Li2/a;

    .line 14
    .line 15
    iget-object v3, v2, Li2/a;->a:[B

    .line 16
    .line 17
    iget-wide v4, p3, Lf2/z0;->g:J

    .line 18
    .line 19
    iget-wide v6, v1, Lf2/y0;->a:J

    .line 20
    .line 21
    sub-long/2addr v4, v6

    .line 22
    long-to-int v1, v4

    .line 23
    iget v2, v2, Li2/a;->b:I

    .line 24
    .line 25
    add-int/2addr v1, v2

    .line 26
    invoke-virtual {p1, v1, v0, v3}, Lu1/q;->l(II[B)V

    .line 27
    .line 28
    .line 29
    sub-int/2addr p2, v0

    .line 30
    iget-wide v1, p3, Lf2/z0;->g:J

    .line 31
    .line 32
    int-to-long v3, v0

    .line 33
    add-long/2addr v1, v3

    .line 34
    iput-wide v1, p3, Lf2/z0;->g:J

    .line 35
    .line 36
    iget-object v0, p3, Lf2/z0;->f:Lf2/y0;

    .line 37
    .line 38
    iget-wide v3, v0, Lf2/y0;->b:J

    .line 39
    .line 40
    cmp-long v5, v1, v3

    .line 41
    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    iget-object v0, v0, Lf2/y0;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lf2/y0;

    .line 47
    .line 48
    iput-object v0, p3, Lf2/z0;->f:Lf2/y0;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final synthetic d(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Lr1/h;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf2/b1;->f(Lr1/h;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(Lr1/h;IZ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lf2/b1;->a:Lf2/z0;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lf2/z0;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v1, v0, Lf2/z0;->f:Lf2/y0;

    .line 8
    .line 9
    iget-object v2, v1, Lf2/y0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Li2/a;

    .line 12
    .line 13
    iget-object v3, v2, Li2/a;->a:[B

    .line 14
    .line 15
    iget-wide v4, v0, Lf2/z0;->g:J

    .line 16
    .line 17
    iget-wide v6, v1, Lf2/y0;->a:J

    .line 18
    .line 19
    sub-long/2addr v4, v6

    .line 20
    long-to-int v1, v4

    .line 21
    iget v2, v2, Li2/a;->b:I

    .line 22
    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-interface {p1, v3, v1, p2}, Lr1/h;->read([BII)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, -0x1

    .line 29
    if-ne p1, p2, :cond_1

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    iget-wide p2, v0, Lf2/z0;->g:J

    .line 42
    .line 43
    int-to-long v1, p1

    .line 44
    add-long/2addr p2, v1

    .line 45
    iput-wide p2, v0, Lf2/z0;->g:J

    .line 46
    .line 47
    iget-object v1, v0, Lf2/z0;->f:Lf2/y0;

    .line 48
    .line 49
    iget-wide v2, v1, Lf2/y0;->b:J

    .line 50
    .line 51
    cmp-long v4, p2, v2

    .line 52
    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    iget-object p2, v1, Lf2/y0;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Lf2/y0;

    .line 58
    .line 59
    iput-object p2, v0, Lf2/z0;->f:Lf2/y0;

    .line 60
    .line 61
    :cond_2
    :goto_0
    return p1
.end method

.method public final g(Lr1/p;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lf2/b1;->A:Z

    .line 4
    .line 5
    iget-object v1, p0, Lf2/b1;->B:Lr1/p;

    .line 6
    .line 7
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    sub-int/2addr v3, v2

    .line 44
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lf2/a1;

    .line 49
    .line 50
    iget-object v1, v1, Lf2/a1;->a:Lr1/p;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lr1/p;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 59
    .line 60
    iget-object p1, p1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sub-int/2addr v1, v2

    .line 69
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lf2/a1;

    .line 74
    .line 75
    iget-object p1, p1, Lf2/a1;->a:Lr1/p;

    .line 76
    .line 77
    iput-object p1, p0, Lf2/b1;->B:Lr1/p;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_4

    .line 82
    :cond_2
    iput-object p1, p0, Lf2/b1;->B:Lr1/p;

    .line 83
    .line 84
    :goto_1
    iget-boolean p1, p0, Lf2/b1;->C:Z

    .line 85
    .line 86
    iget-object v1, p0, Lf2/b1;->B:Lr1/p;

    .line 87
    .line 88
    iget-object v3, v1, Lr1/p;->o:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v1, v1, Lr1/p;->k:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v3}, Lr1/e0;->g(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-ne v4, v2, :cond_3

    .line 97
    .line 98
    invoke-static {v3, v1}, Lr1/e0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const/4 v1, 0x0

    .line 107
    :goto_2
    and-int/2addr p1, v1

    .line 108
    iput-boolean p1, p0, Lf2/b1;->C:Z

    .line 109
    .line 110
    iput-boolean v0, p0, Lf2/b1;->D:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    monitor-exit p0

    .line 113
    const/4 v0, 0x1

    .line 114
    :goto_3
    iget-object p1, p0, Lf2/b1;->f:Lf2/u0;

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p1, Lf2/u0;->r:Landroid/os/Handler;

    .line 121
    .line 122
    iget-object p1, p1, Lf2/u0;->p:Lf2/n0;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .line 126
    .line 127
    :cond_4
    return-void

    .line 128
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    throw p1
.end method

.method public final h(I)J
    .locals 9

    .line 1
    iget-wide v0, p0, Lf2/b1;->v:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    add-int/lit8 v4, p1, -0x1

    .line 9
    .line 10
    invoke-virtual {p0, v4}, Lf2/b1;->m(I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    if-ge v5, p1, :cond_3

    .line 16
    .line 17
    iget-object v6, p0, Lf2/b1;->n:[J

    .line 18
    .line 19
    aget-wide v7, v6, v4

    .line 20
    .line 21
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object v6, p0, Lf2/b1;->m:[I

    .line 26
    .line 27
    aget v6, v6, v4

    .line 28
    .line 29
    and-int/lit8 v6, v6, 0x1

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 35
    .line 36
    const/4 v6, -0x1

    .line 37
    if-ne v4, v6, :cond_2

    .line 38
    .line 39
    iget v4, p0, Lf2/b1;->i:I

    .line 40
    .line 41
    add-int/lit8 v4, v4, -0x1

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iput-wide v0, p0, Lf2/b1;->v:J

    .line 51
    .line 52
    iget v0, p0, Lf2/b1;->p:I

    .line 53
    .line 54
    sub-int/2addr v0, p1

    .line 55
    iput v0, p0, Lf2/b1;->p:I

    .line 56
    .line 57
    iget v0, p0, Lf2/b1;->q:I

    .line 58
    .line 59
    add-int/2addr v0, p1

    .line 60
    iput v0, p0, Lf2/b1;->q:I

    .line 61
    .line 62
    iget v1, p0, Lf2/b1;->r:I

    .line 63
    .line 64
    add-int/2addr v1, p1

    .line 65
    iput v1, p0, Lf2/b1;->r:I

    .line 66
    .line 67
    iget v2, p0, Lf2/b1;->i:I

    .line 68
    .line 69
    if-lt v1, v2, :cond_4

    .line 70
    .line 71
    sub-int/2addr v1, v2

    .line 72
    iput v1, p0, Lf2/b1;->r:I

    .line 73
    .line 74
    :cond_4
    iget v1, p0, Lf2/b1;->s:I

    .line 75
    .line 76
    sub-int/2addr v1, p1

    .line 77
    iput v1, p0, Lf2/b1;->s:I

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    if-gez v1, :cond_5

    .line 81
    .line 82
    iput p1, p0, Lf2/b1;->s:I

    .line 83
    .line 84
    :cond_5
    :goto_2
    iget-object v1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 85
    .line 86
    iget-object v2, v1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    add-int/lit8 v3, v3, -0x1

    .line 95
    .line 96
    if-ge p1, v3, :cond_7

    .line 97
    .line 98
    add-int/lit8 v3, p1, 0x1

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-lt v0, v4, :cond_7

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-object v5, v1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v5, La2/u0;

    .line 113
    .line 114
    invoke-virtual {v5, v4}, La2/u0;->accept(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 118
    .line 119
    .line 120
    iget p1, v1, Landroidx/room/s;->b:I

    .line 121
    .line 122
    if-lez p1, :cond_6

    .line 123
    .line 124
    add-int/lit8 p1, p1, -0x1

    .line 125
    .line 126
    iput p1, v1, Landroidx/room/s;->b:I

    .line 127
    .line 128
    :cond_6
    move p1, v3

    .line 129
    goto :goto_2

    .line 130
    :cond_7
    iget p1, p0, Lf2/b1;->p:I

    .line 131
    .line 132
    if-nez p1, :cond_9

    .line 133
    .line 134
    iget p1, p0, Lf2/b1;->r:I

    .line 135
    .line 136
    if-nez p1, :cond_8

    .line 137
    .line 138
    iget p1, p0, Lf2/b1;->i:I

    .line 139
    .line 140
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 141
    .line 142
    iget-object v0, p0, Lf2/b1;->k:[J

    .line 143
    .line 144
    aget-wide v1, v0, p1

    .line 145
    .line 146
    iget-object v0, p0, Lf2/b1;->l:[I

    .line 147
    .line 148
    aget p1, v0, p1

    .line 149
    .line 150
    int-to-long v3, p1

    .line 151
    add-long/2addr v1, v3

    .line 152
    return-wide v1

    .line 153
    :cond_9
    iget-object p1, p0, Lf2/b1;->k:[J

    .line 154
    .line 155
    iget v0, p0, Lf2/b1;->r:I

    .line 156
    .line 157
    aget-wide v0, p1, v0

    .line 158
    .line 159
    return-wide v0
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/b1;->a:Lf2/z0;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Lf2/b1;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lf2/b1;->h(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    :goto_0
    invoke-virtual {v0, v1, v2}, Lf2/z0;->a(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw v0
.end method

.method public final j(IIJZ)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p2, :cond_2

    .line 4
    .line 5
    iget-object v2, p0, Lf2/b1;->n:[J

    .line 6
    .line 7
    aget-wide v3, v2, p1

    .line 8
    .line 9
    cmp-long v2, v3, p3

    .line 10
    .line 11
    if-ltz v2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iget v2, p0, Lf2/b1;->i:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-eqz p5, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    const/4 p2, -0x1

    .line 28
    :goto_1
    return p2
.end method

.method public final k(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, p2, :cond_4

    .line 5
    .line 6
    iget-object v3, p0, Lf2/b1;->n:[J

    .line 7
    .line 8
    aget-wide v4, v3, p1

    .line 9
    .line 10
    cmp-long v3, v4, p3

    .line 11
    .line 12
    if-gtz v3, :cond_4

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lf2/b1;->m:[I

    .line 17
    .line 18
    aget v3, v3, p1

    .line 19
    .line 20
    and-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    :cond_0
    cmp-long v0, v4, p3

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iget v3, p0, Lf2/b1;->i:I

    .line 34
    .line 35
    if-ne p1, v3, :cond_3

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    :goto_1
    return v0
.end method

.method public final declared-synchronized l()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lf2/b1;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final m(I)I
    .locals 1

    .line 1
    iget v0, p0, Lf2/b1;->r:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p1, p0, Lf2/b1;->i:I

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-int/2addr v0, p1

    .line 10
    :goto_0
    return v0
.end method

.method public final declared-synchronized n()Lr1/p;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lf2/b1;->A:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lf2/b1;->B:Lr1/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final declared-synchronized o(Z)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lf2/b1;->q:I

    .line 3
    .line 4
    iget v1, p0, Lf2/b1;->s:I

    .line 5
    .line 6
    add-int/2addr v0, v1

    .line 7
    iget v2, p0, Lf2/b1;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    if-lt v0, v2, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return v4

    .line 17
    :cond_0
    :try_start_1
    iget v2, p0, Lf2/b1;->p:I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-nez v1, :cond_4

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    iget-boolean p1, p0, Lf2/b1;->y:Z

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lf2/b1;->B:Lr1/p;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lf2/b1;->g:Lr1/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v4, 0x0

    .line 45
    :cond_3
    :goto_1
    monitor-exit p0

    .line 46
    return v4

    .line 47
    :cond_4
    :try_start_2
    iget-object p1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/room/s;->g(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lf2/a1;

    .line 54
    .line 55
    iget-object p1, p1, Lf2/a1;->a:Lr1/p;

    .line 56
    .line 57
    iget-object v0, p0, Lf2/b1;->g:Lr1/p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    if-eq p1, v0, :cond_5

    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return v4

    .line 63
    :cond_5
    :try_start_3
    iget p1, p0, Lf2/b1;->s:I

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lf2/b1;->m(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lf2/b1;->p(I)Z

    .line 70
    .line 71
    .line 72
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    monitor-exit p0

    .line 74
    return p1

    .line 75
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    throw p1
.end method

.method public final p(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/b1;->h:La1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, La1/i;->t()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lf2/b1;->m:[I

    .line 13
    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    and-int/2addr p1, v0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lf2/b1;->h:La1/i;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x1

    .line 29
    :goto_0
    return p1
.end method

.method public final q(Lr1/p;Lua/i8;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/b1;->g:Lr1/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, Lr1/p;->s:Lr1/l;

    .line 13
    .line 14
    :goto_1
    iput-object p1, p0, Lf2/b1;->g:Lr1/p;

    .line 15
    .line 16
    iget-object v2, p1, Lr1/p;->s:Lr1/l;

    .line 17
    .line 18
    iget-object v3, p0, Lf2/b1;->d:Lb2/g;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v3, p1}, Lb2/g;->q(Lr1/p;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    new-instance v5, Lr1/o;

    .line 27
    .line 28
    invoke-direct {v5, p1}, Lr1/o;-><init>(Lr1/p;)V

    .line 29
    .line 30
    .line 31
    iput v4, v5, Lr1/o;->O:I

    .line 32
    .line 33
    new-instance v4, Lr1/p;

    .line 34
    .line 35
    invoke-direct {v4, v5}, Lr1/p;-><init>(Lr1/o;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-object v4, p1

    .line 40
    :goto_2
    iput-object v4, p2, Lua/i8;->c:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v4, p0, Lf2/b1;->h:La1/i;

    .line 43
    .line 44
    iput-object v4, p2, Lua/i8;->b:Ljava/lang/Object;

    .line 45
    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    if-nez v1, :cond_4

    .line 50
    .line 51
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iget-object v0, p0, Lf2/b1;->h:La1/i;

    .line 59
    .line 60
    iget-object v1, p0, Lf2/b1;->e:Lb2/d;

    .line 61
    .line 62
    invoke-interface {v3, v1, p1}, Lb2/g;->o(Lb2/d;Lr1/p;)La1/i;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lf2/b1;->h:La1/i;

    .line 67
    .line 68
    iput-object p1, p2, Lua/i8;->b:Ljava/lang/Object;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0, v1}, La1/i;->C(Lb2/d;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    return-void
.end method

.method public final r(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lf2/b1;->a:Lf2/z0;

    .line 2
    .line 3
    iget-object v1, v0, Lf2/z0;->d:Lf2/y0;

    .line 4
    .line 5
    iget-object v2, v1, Lf2/y0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Li2/a;

    .line 8
    .line 9
    iget-object v3, v0, Lf2/z0;->a:Ls4/a;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    monitor-enter v3

    .line 16
    :try_start_0
    iget-object v2, v3, Ls4/a;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ly1/g;

    .line 19
    .line 20
    iget-object v2, v2, Ly1/g;->c:Li2/d;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Li2/d;->b(Lf2/y0;)V

    .line 23
    .line 24
    .line 25
    move-object v2, v1

    .line 26
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 27
    .line 28
    iget-object v5, v2, Lf2/y0;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Li2/a;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v5}, Ls4/a;->s(Li2/a;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v2, Lf2/y0;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lf2/y0;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v5, v2, Lf2/y0;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Li2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    :cond_2
    move-object v2, v4

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    monitor-exit v3

    .line 55
    iput-object v4, v1, Lf2/y0;->c:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v4, v1, Lf2/y0;->d:Ljava/lang/Object;

    .line 58
    .line 59
    :goto_1
    iget-object v1, v0, Lf2/z0;->d:Lf2/y0;

    .line 60
    .line 61
    iget v2, v0, Lf2/z0;->b:I

    .line 62
    .line 63
    iget-object v5, v1, Lf2/y0;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Li2/a;

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x1

    .line 69
    if-nez v5, :cond_4

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const/4 v5, 0x0

    .line 74
    :goto_2
    invoke-static {v5}, La9/o;->t(Z)V

    .line 75
    .line 76
    .line 77
    const-wide/16 v8, 0x0

    .line 78
    .line 79
    iput-wide v8, v1, Lf2/y0;->a:J

    .line 80
    .line 81
    int-to-long v10, v2

    .line 82
    iput-wide v10, v1, Lf2/y0;->b:J

    .line 83
    .line 84
    iget-object v1, v0, Lf2/z0;->d:Lf2/y0;

    .line 85
    .line 86
    iput-object v1, v0, Lf2/z0;->e:Lf2/y0;

    .line 87
    .line 88
    iput-object v1, v0, Lf2/z0;->f:Lf2/y0;

    .line 89
    .line 90
    iput-wide v8, v0, Lf2/z0;->g:J

    .line 91
    .line 92
    invoke-virtual {v3}, Ls4/a;->v()V

    .line 93
    .line 94
    .line 95
    iput v6, p0, Lf2/b1;->p:I

    .line 96
    .line 97
    iput v6, p0, Lf2/b1;->q:I

    .line 98
    .line 99
    iput v6, p0, Lf2/b1;->r:I

    .line 100
    .line 101
    iput v6, p0, Lf2/b1;->s:I

    .line 102
    .line 103
    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lf2/b1;->x:I

    .line 105
    .line 106
    iput-boolean v7, p0, Lf2/b1;->z:Z

    .line 107
    .line 108
    const-wide/high16 v1, -0x8000000000000000L

    .line 109
    .line 110
    iput-wide v1, p0, Lf2/b1;->t:J

    .line 111
    .line 112
    iput-wide v1, p0, Lf2/b1;->v:J

    .line 113
    .line 114
    iput-wide v1, p0, Lf2/b1;->w:J

    .line 115
    .line 116
    iput-boolean v6, p0, Lf2/b1;->y:Z

    .line 117
    .line 118
    :goto_3
    iget-object v1, p0, Lf2/b1;->c:Landroidx/room/s;

    .line 119
    .line 120
    iget-object v2, v1, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, Landroid/util/SparseArray;

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-ge v6, v3, :cond_5

    .line 129
    .line 130
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object v1, v1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v1, La2/u0;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, La2/u0;->accept(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v6, v6, 0x1

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    iput v0, v1, Landroidx/room/s;->b:I

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 147
    .line 148
    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    iput-object v4, p0, Lf2/b1;->B:Lr1/p;

    .line 152
    .line 153
    iput-boolean v7, p0, Lf2/b1;->A:Z

    .line 154
    .line 155
    iput-boolean v7, p0, Lf2/b1;->C:Z

    .line 156
    .line 157
    :cond_6
    return-void

    .line 158
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    goto :goto_6

    .line 160
    :goto_5
    throw p1

    .line 161
    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized s()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lf2/b1;->s:I

    .line 4
    .line 5
    iget-object v0, p0, Lf2/b1;->a:Lf2/z0;

    .line 6
    .line 7
    iget-object v1, v0, Lf2/z0;->d:Lf2/y0;

    .line 8
    .line 9
    iput-object v1, v0, Lf2/z0;->e:Lf2/y0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public final declared-synchronized t(JZ)Z
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lf2/b1;->s()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lf2/b1;->s:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lf2/b1;->m(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-wide v0, p0, Lf2/b1;->u:J

    .line 12
    .line 13
    const-wide/high16 v3, -0x8000000000000000L

    .line 14
    .line 15
    cmp-long v5, v0, v3

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    iget-wide v3, p0, Lf2/b1;->w:J

    .line 20
    .line 21
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_4

    .line 28
    :cond_0
    iget-wide v0, p0, Lf2/b1;->w:J

    .line 29
    .line 30
    :goto_0
    iget v3, p0, Lf2/b1;->s:I

    .line 31
    .line 32
    iget v4, p0, Lf2/b1;->p:I

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x1

    .line 36
    if-eq v3, v4, :cond_1

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v5, 0x0

    .line 41
    :goto_1
    if-eqz v5, :cond_5

    .line 42
    .line 43
    iget-object v5, p0, Lf2/b1;->n:[J

    .line 44
    .line 45
    aget-wide v9, v5, v2

    .line 46
    .line 47
    cmp-long v5, p1, v9

    .line 48
    .line 49
    if-ltz v5, :cond_5

    .line 50
    .line 51
    cmp-long v5, p1, v0

    .line 52
    .line 53
    if-lez v5, :cond_2

    .line 54
    .line 55
    if-nez p3, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iget-boolean v0, p0, Lf2/b1;->C:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    sub-int v3, v4, v3

    .line 63
    .line 64
    move-object v1, p0

    .line 65
    move-wide v4, p1

    .line 66
    move v6, p3

    .line 67
    invoke-virtual/range {v1 .. v6}, Lf2/b1;->j(IIJZ)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    sub-int v3, v4, v3

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    move-object v1, p0

    .line 76
    move-wide v4, p1

    .line 77
    invoke-virtual/range {v1 .. v6}, Lf2/b1;->k(IIJZ)I

    .line 78
    .line 79
    .line 80
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_2
    const/4 v0, -0x1

    .line 82
    if-ne p3, v0, :cond_4

    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return v7

    .line 86
    :cond_4
    :try_start_1
    iput-wide p1, p0, Lf2/b1;->t:J

    .line 87
    .line 88
    iget p1, p0, Lf2/b1;->s:I

    .line 89
    .line 90
    add-int/2addr p1, p3

    .line 91
    iput p1, p0, Lf2/b1;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    monitor-exit p0

    .line 94
    return v8

    .line 95
    :cond_5
    :goto_3
    monitor-exit p0

    .line 96
    return v7

    .line 97
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p1
.end method

.method public final declared-synchronized u(J)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lf2/b1;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    cmp-long v3, p1, v0

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    :try_start_1
    iput v2, p0, Lf2/b1;->x:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lf2/b1;->w:J

    .line 24
    .line 25
    cmp-long v3, p1, v0

    .line 26
    .line 27
    if-gtz v3, :cond_2

    .line 28
    .line 29
    iget v5, p0, Lf2/b1;->r:I

    .line 30
    .line 31
    iget v6, p0, Lf2/b1;->p:I

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v4, p0

    .line 35
    move-wide v7, p1

    .line 36
    invoke-virtual/range {v4 .. v9}, Lf2/b1;->j(IIJZ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, -0x1

    .line 42
    :goto_0
    if-ne v0, v2, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget v1, p0, Lf2/b1;->q:I

    .line 46
    .line 47
    add-int v2, v1, v0

    .line 48
    .line 49
    :goto_1
    iput v2, p0, Lf2/b1;->x:I

    .line 50
    .line 51
    iput-wide p1, p0, Lf2/b1;->u:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    throw p1
.end method

.method public final declared-synchronized v(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lf2/b1;->s:I

    .line 5
    .line 6
    add-int/2addr v0, p1

    .line 7
    iget v1, p0, Lf2/b1;->p:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, La9/o;->k(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lf2/b1;->s:I

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p0, Lf2/b1;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method
