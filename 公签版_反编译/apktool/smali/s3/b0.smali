.class public final Ls3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/o;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Lu1/q;

.field public final d:Landroid/util/SparseIntArray;

.field public final e:Ll5/y;

.field public final f:Li3/h;

.field public final g:Landroid/util/SparseArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Ls3/v;

.field public k:Lq2/a;

.field public l:Ll2/q;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I


# direct methods
.method public constructor <init>(ILi3/h;Lu1/d0;Ll5/y;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Ls3/b0;->e:Ll5/y;

    .line 5
    .line 6
    iput p1, p0, Ls3/b0;->a:I

    .line 7
    .line 8
    iput-object p2, p0, Ls3/b0;->f:Li3/h;

    .line 9
    .line 10
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Ls3/b0;->b:Ljava/util/List;

    .line 15
    .line 16
    new-instance p1, Lu1/q;

    .line 17
    .line 18
    const/16 p2, 0x24b8

    .line 19
    .line 20
    new-array p2, p2, [B

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-direct {p1, p2, p3}, Lu1/q;-><init>([BI)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Ls3/b0;->c:Lu1/q;

    .line 27
    .line 28
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Ls3/b0;->h:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Ls3/b0;->i:Landroid/util/SparseBooleanArray;

    .line 41
    .line 42
    new-instance p2, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Ls3/b0;->g:Landroid/util/SparseArray;

    .line 48
    .line 49
    new-instance p4, Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p4, p0, Ls3/b0;->d:Landroid/util/SparseIntArray;

    .line 55
    .line 56
    new-instance p4, Ls3/v;

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-direct {p4, v0}, Ls3/v;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iput-object p4, p0, Ls3/b0;->j:Ls3/v;

    .line 63
    .line 64
    sget-object p4, Ll2/q;->C0:Lha/j2;

    .line 65
    .line 66
    iput-object p4, p0, Ls3/b0;->l:Ll2/q;

    .line 67
    .line 68
    const/4 p4, -0x1

    .line 69
    iput p4, p0, Ls3/b0;->q:I

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 75
    .line 76
    .line 77
    new-instance p1, Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    const/4 v0, 0x0

    .line 87
    :goto_0
    if-ge v0, p4, :cond_0

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ls3/e0;

    .line 98
    .line 99
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Ls3/z;

    .line 106
    .line 107
    new-instance p4, Lkf/d;

    .line 108
    .line 109
    invoke-direct {p4, p0}, Lkf/d;-><init>(Ls3/b0;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p4}, Ls3/z;-><init>(Ls3/y;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
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
    iget v0, p0, Ls3/b0;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/room/i;

    .line 8
    .line 9
    iget-object v1, p0, Ls3/b0;->f:Li3/h;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Landroidx/room/i;-><init>(Ll2/q;Li3/h;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Ls3/b0;->l:Ll2/q;

    .line 16
    .line 17
    return-void
.end method

.method public final d(Ll2/p;Ldd/c;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Ll2/l;

    .line 8
    .line 9
    iget-wide v14, v2, Ll2/l;->c:J

    .line 10
    .line 11
    iget-boolean v2, v0, Ls3/b0;->n:Z

    .line 12
    .line 13
    const/16 v12, 0x47

    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v10, 0x1

    .line 17
    const-wide/16 v17, -0x1

    .line 18
    .line 19
    if-eqz v2, :cond_14

    .line 20
    .line 21
    iget-object v4, v0, Ls3/b0;->j:Ls3/v;

    .line 22
    .line 23
    cmp-long v5, v14, v17

    .line 24
    .line 25
    if-eqz v5, :cond_f

    .line 26
    .line 27
    iget-boolean v5, v4, Ls3/v;->d:Z

    .line 28
    .line 29
    if-nez v5, :cond_f

    .line 30
    .line 31
    iget v5, v0, Ls3/b0;->q:I

    .line 32
    .line 33
    if-gtz v5, :cond_0

    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Ll2/l;

    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ls3/v;->a(Ll2/l;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_0
    iget-boolean v6, v4, Ls3/v;->f:Z

    .line 45
    .line 46
    iget-object v7, v4, Ls3/v;->c:Lu1/q;

    .line 47
    .line 48
    const v8, 0x1b8a0

    .line 49
    .line 50
    .line 51
    if-nez v6, :cond_7

    .line 52
    .line 53
    move-object/from16 v6, p1

    .line 54
    .line 55
    check-cast v6, Ll2/l;

    .line 56
    .line 57
    int-to-long v8, v8

    .line 58
    iget-wide v14, v6, Ll2/l;->c:J

    .line 59
    .line 60
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    long-to-int v9, v8

    .line 65
    int-to-long v2, v9

    .line 66
    sub-long/2addr v14, v2

    .line 67
    iget-wide v2, v6, Ll2/l;->d:J

    .line 68
    .line 69
    cmp-long v8, v2, v14

    .line 70
    .line 71
    if-eqz v8, :cond_1

    .line 72
    .line 73
    iput-wide v14, v1, Ldd/c;->b:J

    .line 74
    .line 75
    :goto_0
    const/4 v13, 0x1

    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :cond_1
    invoke-virtual {v7, v9}, Lu1/q;->L(I)V

    .line 79
    .line 80
    .line 81
    iput v13, v6, Ll2/l;->f:I

    .line 82
    .line 83
    iget-object v1, v7, Lu1/q;->a:[B

    .line 84
    .line 85
    invoke-virtual {v6, v1, v13, v9, v13}, Ll2/l;->c([BIIZ)Z

    .line 86
    .line 87
    .line 88
    iget v1, v7, Lu1/q;->b:I

    .line 89
    .line 90
    iget v2, v7, Lu1/q;->c:I

    .line 91
    .line 92
    add-int/lit16 v3, v2, -0xbc

    .line 93
    .line 94
    :goto_1
    if-lt v3, v1, :cond_6

    .line 95
    .line 96
    iget-object v6, v7, Lu1/q;->a:[B

    .line 97
    .line 98
    const/4 v8, -0x4

    .line 99
    const/4 v9, 0x0

    .line 100
    :goto_2
    const/4 v11, 0x4

    .line 101
    if-gt v8, v11, :cond_5

    .line 102
    .line 103
    mul-int/lit16 v11, v8, 0xbc

    .line 104
    .line 105
    add-int/2addr v11, v3

    .line 106
    if-lt v11, v1, :cond_3

    .line 107
    .line 108
    if-ge v11, v2, :cond_3

    .line 109
    .line 110
    aget-byte v11, v6, v11

    .line 111
    .line 112
    if-eq v11, v12, :cond_2

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_2
    add-int/2addr v9, v10

    .line 116
    const/4 v11, 0x5

    .line 117
    if-ne v9, v11, :cond_4

    .line 118
    .line 119
    invoke-static {v7, v3, v5}, Lcom/bumptech/glide/d;->Y(Lu1/q;II)J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long v6, v8, v14

    .line 129
    .line 130
    if-eqz v6, :cond_5

    .line 131
    .line 132
    move-wide v2, v8

    .line 133
    goto :goto_4

    .line 134
    :cond_3
    :goto_3
    const/4 v9, 0x0

    .line 135
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    :goto_4
    iput-wide v2, v4, Ls3/v;->h:J

    .line 147
    .line 148
    iput-boolean v10, v4, Ls3/v;->f:Z

    .line 149
    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :cond_7
    iget-wide v2, v4, Ls3/v;->h:J

    .line 153
    .line 154
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    cmp-long v6, v2, v14

    .line 160
    .line 161
    if-nez v6, :cond_8

    .line 162
    .line 163
    move-object/from16 v1, p1

    .line 164
    .line 165
    check-cast v1, Ll2/l;

    .line 166
    .line 167
    invoke-virtual {v4, v1}, Ls3/v;->a(Ll2/l;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_8

    .line 171
    .line 172
    :cond_8
    iget-boolean v2, v4, Ls3/v;->e:Z

    .line 173
    .line 174
    if-nez v2, :cond_d

    .line 175
    .line 176
    int-to-long v2, v8

    .line 177
    move-object/from16 v6, p1

    .line 178
    .line 179
    check-cast v6, Ll2/l;

    .line 180
    .line 181
    iget-wide v8, v6, Ll2/l;->c:J

    .line 182
    .line 183
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 184
    .line 185
    .line 186
    move-result-wide v2

    .line 187
    long-to-int v3, v2

    .line 188
    iget-wide v8, v6, Ll2/l;->d:J

    .line 189
    .line 190
    int-to-long v14, v13

    .line 191
    cmp-long v2, v8, v14

    .line 192
    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    iput-wide v14, v1, Ldd/c;->b:J

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_9
    invoke-virtual {v7, v3}, Lu1/q;->L(I)V

    .line 199
    .line 200
    .line 201
    iput v13, v6, Ll2/l;->f:I

    .line 202
    .line 203
    iget-object v1, v7, Lu1/q;->a:[B

    .line 204
    .line 205
    invoke-virtual {v6, v1, v13, v3, v13}, Ll2/l;->c([BIIZ)Z

    .line 206
    .line 207
    .line 208
    iget v1, v7, Lu1/q;->b:I

    .line 209
    .line 210
    iget v2, v7, Lu1/q;->c:I

    .line 211
    .line 212
    :goto_5
    if-ge v1, v2, :cond_c

    .line 213
    .line 214
    iget-object v3, v7, Lu1/q;->a:[B

    .line 215
    .line 216
    aget-byte v3, v3, v1

    .line 217
    .line 218
    if-eq v3, v12, :cond_a

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_a
    invoke-static {v7, v1, v5}, Lcom/bumptech/glide/d;->Y(Lu1/q;II)J

    .line 222
    .line 223
    .line 224
    move-result-wide v8

    .line 225
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    cmp-long v3, v8, v14

    .line 231
    .line 232
    if-eqz v3, :cond_b

    .line 233
    .line 234
    move-wide v2, v8

    .line 235
    goto :goto_7

    .line 236
    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_c
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    :goto_7
    iput-wide v2, v4, Ls3/v;->g:J

    .line 245
    .line 246
    iput-boolean v10, v4, Ls3/v;->e:Z

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_d
    iget-wide v1, v4, Ls3/v;->g:J

    .line 250
    .line 251
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    cmp-long v3, v1, v5

    .line 257
    .line 258
    if-nez v3, :cond_e

    .line 259
    .line 260
    move-object/from16 v1, p1

    .line 261
    .line 262
    check-cast v1, Ll2/l;

    .line 263
    .line 264
    invoke-virtual {v4, v1}, Ls3/v;->a(Ll2/l;)V

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_e
    iget-object v3, v4, Ls3/v;->b:Lu1/d0;

    .line 269
    .line 270
    invoke-virtual {v3, v1, v2}, Lu1/d0;->b(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v1

    .line 274
    iget-wide v5, v4, Ls3/v;->h:J

    .line 275
    .line 276
    invoke-virtual {v3, v5, v6}, Lu1/d0;->c(J)J

    .line 277
    .line 278
    .line 279
    move-result-wide v5

    .line 280
    sub-long/2addr v5, v1

    .line 281
    iput-wide v5, v4, Ls3/v;->i:J

    .line 282
    .line 283
    move-object/from16 v1, p1

    .line 284
    .line 285
    check-cast v1, Ll2/l;

    .line 286
    .line 287
    invoke-virtual {v4, v1}, Ls3/v;->a(Ll2/l;)V

    .line 288
    .line 289
    .line 290
    :goto_8
    return v13

    .line 291
    :cond_f
    iget-boolean v2, v0, Ls3/b0;->o:Z

    .line 292
    .line 293
    if-nez v2, :cond_11

    .line 294
    .line 295
    iput-boolean v10, v0, Ls3/b0;->o:Z

    .line 296
    .line 297
    iget-wide v6, v4, Ls3/v;->i:J

    .line 298
    .line 299
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    cmp-long v5, v6, v2

    .line 305
    .line 306
    if-eqz v5, :cond_10

    .line 307
    .line 308
    new-instance v2, Lq2/a;

    .line 309
    .line 310
    iget v3, v0, Ls3/b0;->q:I

    .line 311
    .line 312
    iget-object v4, v4, Ls3/v;->b:Lu1/d0;

    .line 313
    .line 314
    new-instance v5, Lha/l2;

    .line 315
    .line 316
    const/16 v8, 0x10

    .line 317
    .line 318
    invoke-direct {v5, v8}, Lha/l2;-><init>(I)V

    .line 319
    .line 320
    .line 321
    new-instance v8, Landroidx/room/s;

    .line 322
    .line 323
    invoke-direct {v8, v3, v4}, Landroidx/room/s;-><init>(ILu1/d0;)V

    .line 324
    .line 325
    .line 326
    const-wide/16 v3, 0x1

    .line 327
    .line 328
    add-long v19, v6, v3

    .line 329
    .line 330
    const/16 v16, 0x3ac

    .line 331
    .line 332
    const-wide/16 v21, 0x0

    .line 333
    .line 334
    const-wide/16 v23, 0xbc

    .line 335
    .line 336
    move-object v3, v2

    .line 337
    move-object v4, v5

    .line 338
    move-object v5, v8

    .line 339
    move-wide/from16 v8, v19

    .line 340
    .line 341
    move-wide/from16 v10, v21

    .line 342
    .line 343
    move-wide v12, v14

    .line 344
    move-wide/from16 v19, v14

    .line 345
    .line 346
    move-wide/from16 v14, v23

    .line 347
    .line 348
    invoke-direct/range {v3 .. v16}, Lq2/a;-><init>(Ll2/g;Ll2/i;JJJJJI)V

    .line 349
    .line 350
    .line 351
    iput-object v2, v0, Ls3/b0;->k:Lq2/a;

    .line 352
    .line 353
    iget-object v3, v0, Ls3/b0;->l:Ll2/q;

    .line 354
    .line 355
    iget-object v2, v2, Lq2/a;->a:Ll2/e;

    .line 356
    .line 357
    invoke-interface {v3, v2}, Ll2/q;->s(Ll2/c0;)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_10
    move-wide/from16 v19, v14

    .line 362
    .line 363
    iget-object v2, v0, Ls3/b0;->l:Ll2/q;

    .line 364
    .line 365
    new-instance v3, Ll2/s;

    .line 366
    .line 367
    invoke-direct {v3, v6, v7}, Ll2/s;-><init>(J)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v2, v3}, Ll2/q;->s(Ll2/c0;)V

    .line 371
    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_11
    move-wide/from16 v19, v14

    .line 375
    .line 376
    :goto_9
    iget-boolean v2, v0, Ls3/b0;->p:Z

    .line 377
    .line 378
    if-eqz v2, :cond_13

    .line 379
    .line 380
    const/4 v2, 0x0

    .line 381
    iput-boolean v2, v0, Ls3/b0;->p:Z

    .line 382
    .line 383
    const-wide/16 v3, 0x0

    .line 384
    .line 385
    invoke-virtual {v0, v3, v4, v3, v4}, Ls3/b0;->e(JJ)V

    .line 386
    .line 387
    .line 388
    move-object/from16 v5, p1

    .line 389
    .line 390
    check-cast v5, Ll2/l;

    .line 391
    .line 392
    iget-wide v5, v5, Ll2/l;->d:J

    .line 393
    .line 394
    cmp-long v7, v5, v3

    .line 395
    .line 396
    if-eqz v7, :cond_12

    .line 397
    .line 398
    iput-wide v3, v1, Ldd/c;->b:J

    .line 399
    .line 400
    const/4 v3, 0x1

    .line 401
    return v3

    .line 402
    :cond_12
    :goto_a
    const/4 v3, 0x1

    .line 403
    goto :goto_b

    .line 404
    :cond_13
    const/4 v2, 0x0

    .line 405
    goto :goto_a

    .line 406
    :goto_b
    iget-object v4, v0, Ls3/b0;->k:Lq2/a;

    .line 407
    .line 408
    if-eqz v4, :cond_15

    .line 409
    .line 410
    iget-object v5, v4, Lq2/a;->c:Ll2/f;

    .line 411
    .line 412
    if-eqz v5, :cond_15

    .line 413
    .line 414
    move-object/from16 v2, p1

    .line 415
    .line 416
    check-cast v2, Ll2/l;

    .line 417
    .line 418
    invoke-virtual {v4, v2, v1}, Lq2/a;->b(Ll2/l;Ldd/c;)I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    return v1

    .line 423
    :cond_14
    move-wide/from16 v19, v14

    .line 424
    .line 425
    const/4 v2, 0x0

    .line 426
    const/4 v3, 0x1

    .line 427
    :cond_15
    iget-object v1, v0, Ls3/b0;->c:Lu1/q;

    .line 428
    .line 429
    iget-object v4, v1, Lu1/q;->a:[B

    .line 430
    .line 431
    iget v5, v1, Lu1/q;->b:I

    .line 432
    .line 433
    rsub-int v5, v5, 0x24b8

    .line 434
    .line 435
    const/16 v6, 0xbc

    .line 436
    .line 437
    if-ge v5, v6, :cond_17

    .line 438
    .line 439
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    if-lez v5, :cond_16

    .line 444
    .line 445
    iget v7, v1, Lu1/q;->b:I

    .line 446
    .line 447
    invoke-static {v4, v7, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    .line 449
    .line 450
    :cond_16
    invoke-virtual {v1, v5, v4}, Lu1/q;->M(I[B)V

    .line 451
    .line 452
    .line 453
    :cond_17
    :goto_c
    invoke-virtual {v1}, Lu1/q;->a()I

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    iget-object v7, v0, Ls3/b0;->g:Landroid/util/SparseArray;

    .line 458
    .line 459
    if-ge v5, v6, :cond_1b

    .line 460
    .line 461
    iget v5, v1, Lu1/q;->c:I

    .line 462
    .line 463
    rsub-int v8, v5, 0x24b8

    .line 464
    .line 465
    move-object/from16 v9, p1

    .line 466
    .line 467
    check-cast v9, Ll2/l;

    .line 468
    .line 469
    invoke-virtual {v9, v4, v5, v8}, Ll2/l;->read([BII)I

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    const/4 v9, -0x1

    .line 474
    if-ne v8, v9, :cond_1a

    .line 475
    .line 476
    const/4 v13, 0x0

    .line 477
    :goto_d
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-ge v13, v1, :cond_19

    .line 482
    .line 483
    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    check-cast v1, Ls3/e0;

    .line 488
    .line 489
    instance-of v2, v1, Ls3/u;

    .line 490
    .line 491
    if-eqz v2, :cond_18

    .line 492
    .line 493
    check-cast v1, Ls3/u;

    .line 494
    .line 495
    iget v2, v1, Ls3/u;->c:I

    .line 496
    .line 497
    const/4 v4, 0x3

    .line 498
    if-ne v2, v4, :cond_18

    .line 499
    .line 500
    iget v2, v1, Ls3/u;->j:I

    .line 501
    .line 502
    if-ne v2, v9, :cond_18

    .line 503
    .line 504
    new-instance v2, Lu1/q;

    .line 505
    .line 506
    invoke-direct {v2}, Lu1/q;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v3, v2}, Ls3/u;->a(ILu1/q;)V

    .line 510
    .line 511
    .line 512
    :cond_18
    add-int/lit8 v13, v13, 0x1

    .line 513
    .line 514
    goto :goto_d

    .line 515
    :cond_19
    return v9

    .line 516
    :cond_1a
    add-int/2addr v5, v8

    .line 517
    invoke-virtual {v1, v5}, Lu1/q;->N(I)V

    .line 518
    .line 519
    .line 520
    goto :goto_c

    .line 521
    :cond_1b
    iget v4, v1, Lu1/q;->b:I

    .line 522
    .line 523
    iget v5, v1, Lu1/q;->c:I

    .line 524
    .line 525
    iget-object v8, v1, Lu1/q;->a:[B

    .line 526
    .line 527
    :goto_e
    if-ge v4, v5, :cond_1c

    .line 528
    .line 529
    aget-byte v9, v8, v4

    .line 530
    .line 531
    const/16 v10, 0x47

    .line 532
    .line 533
    if-eq v9, v10, :cond_1c

    .line 534
    .line 535
    add-int/lit8 v4, v4, 0x1

    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_1c
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 539
    .line 540
    .line 541
    add-int/2addr v4, v6

    .line 542
    iget v5, v1, Lu1/q;->c:I

    .line 543
    .line 544
    if-le v4, v5, :cond_1d

    .line 545
    .line 546
    return v2

    .line 547
    :cond_1d
    invoke-virtual {v1}, Lu1/q;->o()I

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    const/high16 v8, 0x800000

    .line 552
    .line 553
    and-int/2addr v8, v6

    .line 554
    if-eqz v8, :cond_1e

    .line 555
    .line 556
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 557
    .line 558
    .line 559
    return v2

    .line 560
    :cond_1e
    const/high16 v8, 0x400000

    .line 561
    .line 562
    and-int/2addr v8, v6

    .line 563
    if-eqz v8, :cond_1f

    .line 564
    .line 565
    const/4 v13, 0x1

    .line 566
    goto :goto_f

    .line 567
    :cond_1f
    const/4 v13, 0x0

    .line 568
    :goto_f
    const v8, 0x1fff00

    .line 569
    .line 570
    .line 571
    and-int/2addr v8, v6

    .line 572
    shr-int/lit8 v8, v8, 0x8

    .line 573
    .line 574
    and-int/lit8 v9, v6, 0x20

    .line 575
    .line 576
    if-eqz v9, :cond_20

    .line 577
    .line 578
    const/4 v9, 0x1

    .line 579
    goto :goto_10

    .line 580
    :cond_20
    const/4 v9, 0x0

    .line 581
    :goto_10
    and-int/lit8 v10, v6, 0x10

    .line 582
    .line 583
    if-eqz v10, :cond_21

    .line 584
    .line 585
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    check-cast v7, Ls3/e0;

    .line 590
    .line 591
    goto :goto_11

    .line 592
    :cond_21
    const/4 v7, 0x0

    .line 593
    :goto_11
    if-nez v7, :cond_22

    .line 594
    .line 595
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 596
    .line 597
    .line 598
    return v2

    .line 599
    :cond_22
    and-int/lit8 v6, v6, 0xf

    .line 600
    .line 601
    iget-object v10, v0, Ls3/b0;->d:Landroid/util/SparseIntArray;

    .line 602
    .line 603
    add-int/lit8 v11, v6, -0x1

    .line 604
    .line 605
    invoke-virtual {v10, v8, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 606
    .line 607
    .line 608
    move-result v11

    .line 609
    invoke-virtual {v10, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    .line 611
    .line 612
    if-ne v11, v6, :cond_23

    .line 613
    .line 614
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 615
    .line 616
    .line 617
    return v2

    .line 618
    :cond_23
    add-int/2addr v11, v3

    .line 619
    and-int/lit8 v10, v11, 0xf

    .line 620
    .line 621
    if-eq v6, v10, :cond_24

    .line 622
    .line 623
    invoke-interface {v7}, Ls3/e0;->b()V

    .line 624
    .line 625
    .line 626
    :cond_24
    if-eqz v9, :cond_26

    .line 627
    .line 628
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 629
    .line 630
    .line 631
    move-result v6

    .line 632
    invoke-virtual {v1}, Lu1/q;->B()I

    .line 633
    .line 634
    .line 635
    move-result v9

    .line 636
    and-int/lit8 v9, v9, 0x40

    .line 637
    .line 638
    if-eqz v9, :cond_25

    .line 639
    .line 640
    const/4 v9, 0x2

    .line 641
    goto :goto_12

    .line 642
    :cond_25
    const/4 v9, 0x0

    .line 643
    :goto_12
    or-int/2addr v13, v9

    .line 644
    sub-int/2addr v6, v3

    .line 645
    invoke-virtual {v1, v6}, Lu1/q;->P(I)V

    .line 646
    .line 647
    .line 648
    :cond_26
    iget-boolean v6, v0, Ls3/b0;->n:Z

    .line 649
    .line 650
    if-nez v6, :cond_27

    .line 651
    .line 652
    iget-object v9, v0, Ls3/b0;->i:Landroid/util/SparseBooleanArray;

    .line 653
    .line 654
    invoke-virtual {v9, v8, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 655
    .line 656
    .line 657
    move-result v8

    .line 658
    if-nez v8, :cond_28

    .line 659
    .line 660
    :cond_27
    invoke-virtual {v1, v4}, Lu1/q;->N(I)V

    .line 661
    .line 662
    .line 663
    invoke-interface {v7, v13, v1}, Ls3/e0;->a(ILu1/q;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v1, v5}, Lu1/q;->N(I)V

    .line 667
    .line 668
    .line 669
    :cond_28
    if-nez v6, :cond_29

    .line 670
    .line 671
    iget-boolean v5, v0, Ls3/b0;->n:Z

    .line 672
    .line 673
    if-eqz v5, :cond_29

    .line 674
    .line 675
    cmp-long v5, v19, v17

    .line 676
    .line 677
    if-eqz v5, :cond_29

    .line 678
    .line 679
    iput-boolean v3, v0, Ls3/b0;->p:Z

    .line 680
    .line 681
    :cond_29
    invoke-virtual {v1, v4}, Lu1/q;->O(I)V

    .line 682
    .line 683
    .line 684
    return v2
.end method

.method public final e(JJ)V
    .locals 11

    .line 1
    iget-object p1, p0, Ls3/b0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-ge v1, p2, :cond_4

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lu1/d0;

    .line 18
    .line 19
    invoke-virtual {v4}, Lu1/d0;->e()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const/4 v7, 0x1

    .line 24
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long v10, v5, v8

    .line 30
    .line 31
    if-nez v10, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v5, 0x0

    .line 36
    :goto_1
    if-nez v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {v4}, Lu1/d0;->d()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    cmp-long v10, v5, v8

    .line 43
    .line 44
    if-eqz v10, :cond_1

    .line 45
    .line 46
    cmp-long v8, v5, v2

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    cmp-long v2, v5, p3

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const/4 v7, 0x0

    .line 56
    :goto_2
    move v5, v7

    .line 57
    :cond_2
    if-eqz v5, :cond_3

    .line 58
    .line 59
    invoke-virtual {v4, p3, p4}, Lu1/d0;->g(J)V

    .line 60
    .line 61
    .line 62
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    cmp-long p1, p3, v2

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Ls3/b0;->k:Lq2/a;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p1, p3, p4}, Lq2/a;->d(J)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object p1, p0, Ls3/b0;->c:Lu1/q;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lu1/q;->L(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Ls3/b0;->d:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 84
    .line 85
    .line 86
    :goto_3
    iget-object p1, p0, Ls3/b0;->g:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-ge v0, p2, :cond_6

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ls3/e0;

    .line 99
    .line 100
    invoke-interface {p1}, Ls3/e0;->b()V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
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
    .locals 6

    .line 1
    iget-object v0, p0, Ls3/b0;->c:Lu1/q;

    .line 2
    .line 3
    iget-object v0, v0, Lu1/q;->a:[B

    .line 4
    .line 5
    check-cast p1, Ll2/l;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x3ac

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Ll2/l;->c([BIIZ)Z

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/16 v3, 0xbc

    .line 15
    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_1
    const/4 v4, 0x5

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    mul-int/lit16 v4, v3, 0xbc

    .line 23
    .line 24
    add-int/2addr v4, v2

    .line 25
    aget-byte v4, v0, v4

    .line 26
    .line 27
    const/16 v5, 0x47

    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1, v2, v1}, Ll2/l;->o(IZ)Z

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    return v1
.end method
