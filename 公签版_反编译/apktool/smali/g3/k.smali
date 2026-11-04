.class public final Lg3/k;
.super Lg3/i;
.source "SourceFile"


# instance fields
.field public n:Lg3/j;

.field public o:I

.field public p:Z

.field public q:Ll2/a0;

.field public r:Ll2/l0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg3/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lg3/i;->g:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmp-long v3, p1, v0

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lg3/k;->p:Z

    .line 14
    .line 15
    iget-object p1, p0, Lg3/k;->q:Ll2/a0;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget v2, p1, Ll2/a0;->e:I

    .line 20
    .line 21
    :cond_1
    iput v2, p0, Lg3/k;->o:I

    .line 22
    .line 23
    return-void
.end method

.method public final b(Lu1/q;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lu1/q;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    and-int/lit8 v2, v0, 0x1

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-object v2, p0, Lg3/k;->n:Lg3/j;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    shr-int/2addr v0, v3

    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    iget v5, v2, Lg3/j;->a:I

    .line 23
    .line 24
    rsub-int/lit8 v5, v5, 0x8

    .line 25
    .line 26
    const/16 v6, 0xff

    .line 27
    .line 28
    ushr-int v5, v6, v5

    .line 29
    .line 30
    and-int/2addr v0, v5

    .line 31
    iget-object v5, v2, Lg3/j;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, [Lag/h;

    .line 34
    .line 35
    aget-object v0, v5, v0

    .line 36
    .line 37
    iget-boolean v0, v0, Lag/h;->a:Z

    .line 38
    .line 39
    iget-object v2, v2, Lg3/j;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Ll2/a0;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget v0, v2, Ll2/a0;->e:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v0, v2, Ll2/a0;->f:I

    .line 49
    .line 50
    :goto_0
    iget-boolean v2, p0, Lg3/k;->p:Z

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget v1, p0, Lg3/k;->o:I

    .line 55
    .line 56
    add-int/2addr v1, v0

    .line 57
    div-int/lit8 v1, v1, 0x4

    .line 58
    .line 59
    :cond_2
    int-to-long v1, v1

    .line 60
    iget-object v5, p1, Lu1/q;->a:[B

    .line 61
    .line 62
    array-length v6, v5

    .line 63
    iget v7, p1, Lu1/q;->c:I

    .line 64
    .line 65
    add-int/lit8 v7, v7, 0x4

    .line 66
    .line 67
    if-ge v6, v7, :cond_3

    .line 68
    .line 69
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    array-length v6, v5

    .line 74
    invoke-virtual {p1, v6, v5}, Lu1/q;->M(I[B)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p1, v7}, Lu1/q;->N(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v5, p1, Lu1/q;->a:[B

    .line 82
    .line 83
    iget p1, p1, Lu1/q;->c:I

    .line 84
    .line 85
    add-int/lit8 v6, p1, -0x4

    .line 86
    .line 87
    const-wide/16 v7, 0xff

    .line 88
    .line 89
    and-long v9, v1, v7

    .line 90
    .line 91
    long-to-int v10, v9

    .line 92
    int-to-byte v9, v10

    .line 93
    aput-byte v9, v5, v6

    .line 94
    .line 95
    add-int/lit8 v6, p1, -0x3

    .line 96
    .line 97
    ushr-long v9, v1, v4

    .line 98
    .line 99
    and-long/2addr v9, v7

    .line 100
    long-to-int v4, v9

    .line 101
    int-to-byte v4, v4

    .line 102
    aput-byte v4, v5, v6

    .line 103
    .line 104
    add-int/lit8 v4, p1, -0x2

    .line 105
    .line 106
    const/16 v6, 0x10

    .line 107
    .line 108
    ushr-long v9, v1, v6

    .line 109
    .line 110
    and-long/2addr v9, v7

    .line 111
    long-to-int v6, v9

    .line 112
    int-to-byte v6, v6

    .line 113
    aput-byte v6, v5, v4

    .line 114
    .line 115
    sub-int/2addr p1, v3

    .line 116
    const/16 v4, 0x18

    .line 117
    .line 118
    ushr-long v9, v1, v4

    .line 119
    .line 120
    and-long/2addr v7, v9

    .line 121
    long-to-int v4, v7

    .line 122
    int-to-byte v4, v4

    .line 123
    aput-byte v4, v5, p1

    .line 124
    .line 125
    iput-boolean v3, p0, Lg3/k;->p:Z

    .line 126
    .line 127
    iput v0, p0, Lg3/k;->o:I

    .line 128
    .line 129
    return-wide v1
.end method

.method public final c(Lu1/q;JLa2/g1;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lg3/k;->n:Lg3/j;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v1, v2, La2/g1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lr1/p;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    iget-object v6, v0, Lg3/k;->q:Ll2/a0;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v5, 0x4

    .line 24
    if-nez v6, :cond_3

    .line 25
    .line 26
    invoke-static {v3, v1, v4}, Ll2/b;->x(ILu1/q;Z)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lu1/q;->t()I

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    invoke-virtual/range {p1 .. p1}, Lu1/q;->t()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-gtz v4, :cond_1

    .line 45
    .line 46
    const/4 v12, -0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v12, v4

    .line 49
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-gtz v4, :cond_2

    .line 54
    .line 55
    const/4 v13, -0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v13, v4

    .line 58
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lu1/q;->q()I

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    and-int/lit8 v6, v4, 0xf

    .line 66
    .line 67
    int-to-double v6, v6

    .line 68
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 69
    .line 70
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    double-to-int v6, v6

    .line 75
    and-int/lit16 v4, v4, 0xf0

    .line 76
    .line 77
    shr-int/2addr v4, v5

    .line 78
    int-to-double v4, v4

    .line 79
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    double-to-int v15, v4

    .line 84
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 85
    .line 86
    .line 87
    iget-object v4, v1, Lu1/q;->a:[B

    .line 88
    .line 89
    iget v1, v1, Lu1/q;->c:I

    .line 90
    .line 91
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    new-instance v1, Ll2/a0;

    .line 96
    .line 97
    move-object v9, v1

    .line 98
    move v14, v6

    .line 99
    invoke-direct/range {v9 .. v16}, Ll2/a0;-><init>(IIIIII[B)V

    .line 100
    .line 101
    .line 102
    iput-object v1, v0, Lg3/k;->q:Ll2/a0;

    .line 103
    .line 104
    :goto_2
    const/4 v8, 0x0

    .line 105
    goto/16 :goto_1c

    .line 106
    .line 107
    :cond_3
    iget-object v9, v0, Lg3/k;->r:Ll2/l0;

    .line 108
    .line 109
    if-nez v9, :cond_4

    .line 110
    .line 111
    invoke-static {v1, v3, v3}, Ll2/b;->v(Lu1/q;ZZ)Ll2/l0;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lg3/k;->r:Ll2/l0;

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    iget v10, v1, Lu1/q;->c:I

    .line 119
    .line 120
    new-array v11, v10, [B

    .line 121
    .line 122
    iget-object v12, v1, Lu1/q;->a:[B

    .line 123
    .line 124
    invoke-static {v12, v4, v11, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    const/4 v10, 0x5

    .line 128
    invoke-static {v10, v1, v4}, Ll2/b;->x(ILu1/q;Z)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Lu1/q;->B()I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    add-int/2addr v12, v3

    .line 136
    new-instance v13, Lj3/f;

    .line 137
    .line 138
    iget-object v14, v1, Lu1/q;->a:[B

    .line 139
    .line 140
    invoke-direct {v13, v14}, Lj3/f;-><init>([B)V

    .line 141
    .line 142
    .line 143
    iget v1, v1, Lu1/q;->b:I

    .line 144
    .line 145
    const/16 v14, 0x8

    .line 146
    .line 147
    mul-int/lit8 v1, v1, 0x8

    .line 148
    .line 149
    invoke-virtual {v13, v1}, Lj3/f;->o(I)V

    .line 150
    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    :goto_3
    const/16 v15, 0x18

    .line 154
    .line 155
    const/4 v4, 0x2

    .line 156
    const/16 v7, 0x10

    .line 157
    .line 158
    if-ge v1, v12, :cond_f

    .line 159
    .line 160
    invoke-virtual {v13, v15}, Lj3/f;->g(I)I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    const v8, 0x564342

    .line 165
    .line 166
    .line 167
    if-ne v14, v8, :cond_e

    .line 168
    .line 169
    invoke-virtual {v13, v7}, Lj3/f;->g(I)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-virtual {v13, v15}, Lj3/f;->g(I)I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    if-nez v14, :cond_7

    .line 182
    .line 183
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    const/4 v15, 0x0

    .line 188
    :goto_4
    if-ge v15, v8, :cond_8

    .line 189
    .line 190
    if-eqz v14, :cond_5

    .line 191
    .line 192
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 193
    .line 194
    .line 195
    move-result v17

    .line 196
    if-eqz v17, :cond_6

    .line 197
    .line 198
    invoke-virtual {v13, v10}, Lj3/f;->o(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_5
    invoke-virtual {v13, v10}, Lj3/f;->o(I)V

    .line 203
    .line 204
    .line 205
    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    invoke-virtual {v13, v10}, Lj3/f;->o(I)V

    .line 209
    .line 210
    .line 211
    const/4 v14, 0x0

    .line 212
    :goto_6
    if-ge v14, v8, :cond_8

    .line 213
    .line 214
    sub-int v15, v8, v14

    .line 215
    .line 216
    invoke-static {v15}, Ll2/b;->m(I)I

    .line 217
    .line 218
    .line 219
    move-result v15

    .line 220
    invoke-virtual {v13, v15}, Lj3/f;->g(I)I

    .line 221
    .line 222
    .line 223
    move-result v15

    .line 224
    add-int/2addr v14, v15

    .line 225
    goto :goto_6

    .line 226
    :cond_8
    invoke-virtual {v13, v5}, Lj3/f;->g(I)I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-gt v14, v4, :cond_d

    .line 231
    .line 232
    if-eq v14, v3, :cond_9

    .line 233
    .line 234
    if-ne v14, v4, :cond_c

    .line 235
    .line 236
    :cond_9
    const/16 v4, 0x20

    .line 237
    .line 238
    invoke-virtual {v13, v4}, Lj3/f;->o(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v4}, Lj3/f;->o(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v13, v5}, Lj3/f;->g(I)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    add-int/2addr v4, v3

    .line 249
    invoke-virtual {v13, v3}, Lj3/f;->o(I)V

    .line 250
    .line 251
    .line 252
    if-ne v14, v3, :cond_b

    .line 253
    .line 254
    if-eqz v7, :cond_a

    .line 255
    .line 256
    int-to-long v14, v8

    .line 257
    int-to-long v7, v7

    .line 258
    long-to-double v14, v14

    .line 259
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 260
    .line 261
    long-to-double v7, v7

    .line 262
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    .line 263
    .line 264
    .line 265
    div-double v7, v17, v7

    .line 266
    .line 267
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 268
    .line 269
    .line 270
    move-result-wide v7

    .line 271
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 272
    .line 273
    .line 274
    move-result-wide v7

    .line 275
    double-to-long v7, v7

    .line 276
    goto :goto_7

    .line 277
    :cond_a
    const-wide/16 v7, 0x0

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_b
    int-to-long v14, v8

    .line 281
    int-to-long v7, v7

    .line 282
    mul-long v7, v7, v14

    .line 283
    .line 284
    :goto_7
    int-to-long v14, v4

    .line 285
    mul-long v7, v7, v14

    .line 286
    .line 287
    long-to-int v4, v7

    .line 288
    invoke-virtual {v13, v4}, Lj3/f;->o(I)V

    .line 289
    .line 290
    .line 291
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 292
    .line 293
    const/4 v4, 0x0

    .line 294
    const/16 v14, 0x8

    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v2, "lookup type greater than 2 not decodable: "

    .line 301
    .line 302
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    const/4 v2, 0x0

    .line 313
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    throw v1

    .line 318
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 321
    .line 322
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget v2, v13, Lj3/f;->d:I

    .line 326
    .line 327
    const/16 v3, 0x8

    .line 328
    .line 329
    mul-int/lit8 v2, v2, 0x8

    .line 330
    .line 331
    iget v3, v13, Lj3/f;->e:I

    .line 332
    .line 333
    add-int/2addr v2, v3

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    throw v1

    .line 347
    :cond_f
    const/4 v1, 0x6

    .line 348
    invoke-virtual {v13, v1}, Lj3/f;->g(I)I

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    add-int/2addr v8, v3

    .line 353
    const/4 v12, 0x0

    .line 354
    :goto_8
    if-ge v12, v8, :cond_11

    .line 355
    .line 356
    invoke-virtual {v13, v7}, Lj3/f;->g(I)I

    .line 357
    .line 358
    .line 359
    move-result v14

    .line 360
    if-nez v14, :cond_10

    .line 361
    .line 362
    add-int/lit8 v12, v12, 0x1

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_10
    const-string v1, "placeholder of time domain transforms not zeroed out"

    .line 366
    .line 367
    const/4 v2, 0x0

    .line 368
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    throw v1

    .line 373
    :cond_11
    invoke-virtual {v13, v1}, Lj3/f;->g(I)I

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    add-int/2addr v8, v3

    .line 378
    const/4 v12, 0x0

    .line 379
    :goto_9
    const/4 v14, 0x3

    .line 380
    if-ge v12, v8, :cond_1b

    .line 381
    .line 382
    invoke-virtual {v13, v7}, Lj3/f;->g(I)I

    .line 383
    .line 384
    .line 385
    move-result v15

    .line 386
    if-eqz v15, :cond_19

    .line 387
    .line 388
    if-ne v15, v3, :cond_18

    .line 389
    .line 390
    invoke-virtual {v13, v10}, Lj3/f;->g(I)I

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    new-array v10, v15, [I

    .line 395
    .line 396
    const/4 v1, 0x0

    .line 397
    const/4 v7, -0x1

    .line 398
    :goto_a
    if-ge v1, v15, :cond_13

    .line 399
    .line 400
    invoke-virtual {v13, v5}, Lj3/f;->g(I)I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    aput v4, v10, v1

    .line 405
    .line 406
    if-le v4, v7, :cond_12

    .line 407
    .line 408
    move v7, v4

    .line 409
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 410
    .line 411
    const/4 v4, 0x2

    .line 412
    goto :goto_a

    .line 413
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 414
    .line 415
    new-array v1, v7, [I

    .line 416
    .line 417
    const/4 v4, 0x0

    .line 418
    :goto_b
    if-ge v4, v7, :cond_16

    .line 419
    .line 420
    invoke-virtual {v13, v14}, Lj3/f;->g(I)I

    .line 421
    .line 422
    .line 423
    move-result v19

    .line 424
    add-int/lit8 v19, v19, 0x1

    .line 425
    .line 426
    aput v19, v1, v4

    .line 427
    .line 428
    const/4 v14, 0x2

    .line 429
    invoke-virtual {v13, v14}, Lj3/f;->g(I)I

    .line 430
    .line 431
    .line 432
    move-result v20

    .line 433
    const/16 v14, 0x8

    .line 434
    .line 435
    if-lez v20, :cond_14

    .line 436
    .line 437
    invoke-virtual {v13, v14}, Lj3/f;->o(I)V

    .line 438
    .line 439
    .line 440
    :cond_14
    move/from16 v21, v7

    .line 441
    .line 442
    const/4 v5, 0x0

    .line 443
    :goto_c
    shl-int v7, v3, v20

    .line 444
    .line 445
    if-ge v5, v7, :cond_15

    .line 446
    .line 447
    invoke-virtual {v13, v14}, Lj3/f;->o(I)V

    .line 448
    .line 449
    .line 450
    add-int/lit8 v5, v5, 0x1

    .line 451
    .line 452
    const/16 v14, 0x8

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 456
    .line 457
    move/from16 v7, v21

    .line 458
    .line 459
    const/4 v5, 0x4

    .line 460
    const/4 v14, 0x3

    .line 461
    goto :goto_b

    .line 462
    :cond_16
    const/4 v4, 0x2

    .line 463
    invoke-virtual {v13, v4}, Lj3/f;->o(I)V

    .line 464
    .line 465
    .line 466
    const/4 v4, 0x4

    .line 467
    invoke-virtual {v13, v4}, Lj3/f;->g(I)I

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    const/4 v4, 0x0

    .line 472
    const/4 v7, 0x0

    .line 473
    const/4 v14, 0x0

    .line 474
    :goto_d
    if-ge v4, v15, :cond_1a

    .line 475
    .line 476
    aget v19, v10, v4

    .line 477
    .line 478
    aget v19, v1, v19

    .line 479
    .line 480
    add-int v7, v7, v19

    .line 481
    .line 482
    :goto_e
    if-ge v14, v7, :cond_17

    .line 483
    .line 484
    invoke-virtual {v13, v5}, Lj3/f;->o(I)V

    .line 485
    .line 486
    .line 487
    add-int/lit8 v14, v14, 0x1

    .line 488
    .line 489
    goto :goto_e

    .line 490
    :cond_17
    add-int/lit8 v4, v4, 0x1

    .line 491
    .line 492
    goto :goto_d

    .line 493
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v2, "floor type greater than 1 not decodable: "

    .line 496
    .line 497
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    const/4 v2, 0x0

    .line 508
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    throw v1

    .line 513
    :cond_19
    const/16 v1, 0x8

    .line 514
    .line 515
    invoke-virtual {v13, v1}, Lj3/f;->o(I)V

    .line 516
    .line 517
    .line 518
    const/16 v4, 0x10

    .line 519
    .line 520
    invoke-virtual {v13, v4}, Lj3/f;->o(I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v13, v4}, Lj3/f;->o(I)V

    .line 524
    .line 525
    .line 526
    const/4 v4, 0x6

    .line 527
    invoke-virtual {v13, v4}, Lj3/f;->o(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v13, v1}, Lj3/f;->o(I)V

    .line 531
    .line 532
    .line 533
    const/4 v4, 0x4

    .line 534
    invoke-virtual {v13, v4}, Lj3/f;->g(I)I

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    add-int/2addr v5, v3

    .line 539
    const/4 v4, 0x0

    .line 540
    :goto_f
    if-ge v4, v5, :cond_1a

    .line 541
    .line 542
    invoke-virtual {v13, v1}, Lj3/f;->o(I)V

    .line 543
    .line 544
    .line 545
    add-int/lit8 v4, v4, 0x1

    .line 546
    .line 547
    const/16 v1, 0x8

    .line 548
    .line 549
    goto :goto_f

    .line 550
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    .line 551
    .line 552
    const/4 v1, 0x6

    .line 553
    const/4 v4, 0x2

    .line 554
    const/4 v5, 0x4

    .line 555
    const/16 v7, 0x10

    .line 556
    .line 557
    const/4 v10, 0x5

    .line 558
    const/16 v15, 0x18

    .line 559
    .line 560
    goto/16 :goto_9

    .line 561
    .line 562
    :cond_1b
    invoke-virtual {v13, v1}, Lj3/f;->g(I)I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    add-int/2addr v4, v3

    .line 567
    const/4 v5, 0x0

    .line 568
    :goto_10
    if-ge v5, v4, :cond_22

    .line 569
    .line 570
    const/16 v7, 0x10

    .line 571
    .line 572
    invoke-virtual {v13, v7}, Lj3/f;->g(I)I

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    const/4 v7, 0x2

    .line 577
    if-gt v8, v7, :cond_21

    .line 578
    .line 579
    const/16 v7, 0x18

    .line 580
    .line 581
    invoke-virtual {v13, v7}, Lj3/f;->o(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v13, v7}, Lj3/f;->o(I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v13, v7}, Lj3/f;->o(I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v13, v1}, Lj3/f;->g(I)I

    .line 591
    .line 592
    .line 593
    move-result v8

    .line 594
    add-int/2addr v8, v3

    .line 595
    const/16 v1, 0x8

    .line 596
    .line 597
    invoke-virtual {v13, v1}, Lj3/f;->o(I)V

    .line 598
    .line 599
    .line 600
    new-array v10, v8, [I

    .line 601
    .line 602
    const/4 v12, 0x0

    .line 603
    :goto_11
    if-ge v12, v8, :cond_1d

    .line 604
    .line 605
    const/4 v14, 0x3

    .line 606
    invoke-virtual {v13, v14}, Lj3/f;->g(I)I

    .line 607
    .line 608
    .line 609
    move-result v15

    .line 610
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 611
    .line 612
    .line 613
    move-result v17

    .line 614
    const/4 v7, 0x5

    .line 615
    if-eqz v17, :cond_1c

    .line 616
    .line 617
    invoke-virtual {v13, v7}, Lj3/f;->g(I)I

    .line 618
    .line 619
    .line 620
    move-result v18

    .line 621
    goto :goto_12

    .line 622
    :cond_1c
    const/16 v18, 0x0

    .line 623
    .line 624
    :goto_12
    mul-int/lit8 v18, v18, 0x8

    .line 625
    .line 626
    add-int v18, v18, v15

    .line 627
    .line 628
    aput v18, v10, v12

    .line 629
    .line 630
    add-int/lit8 v12, v12, 0x1

    .line 631
    .line 632
    const/16 v7, 0x18

    .line 633
    .line 634
    goto :goto_11

    .line 635
    :cond_1d
    const/4 v7, 0x5

    .line 636
    const/4 v14, 0x3

    .line 637
    const/4 v12, 0x0

    .line 638
    :goto_13
    if-ge v12, v8, :cond_20

    .line 639
    .line 640
    const/4 v15, 0x0

    .line 641
    :goto_14
    if-ge v15, v1, :cond_1f

    .line 642
    .line 643
    aget v18, v10, v12

    .line 644
    .line 645
    shl-int v19, v3, v15

    .line 646
    .line 647
    and-int v18, v18, v19

    .line 648
    .line 649
    if-eqz v18, :cond_1e

    .line 650
    .line 651
    invoke-virtual {v13, v1}, Lj3/f;->o(I)V

    .line 652
    .line 653
    .line 654
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    .line 655
    .line 656
    const/16 v1, 0x8

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_1f
    add-int/lit8 v12, v12, 0x1

    .line 660
    .line 661
    const/16 v1, 0x8

    .line 662
    .line 663
    goto :goto_13

    .line 664
    :cond_20
    add-int/lit8 v5, v5, 0x1

    .line 665
    .line 666
    const/4 v1, 0x6

    .line 667
    goto :goto_10

    .line 668
    :cond_21
    const-string v1, "residueType greater than 2 is not decodable"

    .line 669
    .line 670
    const/4 v2, 0x0

    .line 671
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    throw v1

    .line 676
    :cond_22
    invoke-virtual {v13, v1}, Lj3/f;->g(I)I

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    add-int/2addr v4, v3

    .line 681
    const/4 v1, 0x0

    .line 682
    :goto_15
    if-ge v1, v4, :cond_29

    .line 683
    .line 684
    const/16 v5, 0x10

    .line 685
    .line 686
    invoke-virtual {v13, v5}, Lj3/f;->g(I)I

    .line 687
    .line 688
    .line 689
    move-result v7

    .line 690
    if-eqz v7, :cond_23

    .line 691
    .line 692
    new-instance v5, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    const-string v8, "mapping type other than 0 not supported: "

    .line 695
    .line 696
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    invoke-static {v5}, Lu1/a;->f(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    const/4 v5, 0x2

    .line 710
    const/4 v12, 0x4

    .line 711
    goto :goto_1a

    .line 712
    :cond_23
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    if-eqz v5, :cond_24

    .line 717
    .line 718
    const/4 v5, 0x4

    .line 719
    invoke-virtual {v13, v5}, Lj3/f;->g(I)I

    .line 720
    .line 721
    .line 722
    move-result v7

    .line 723
    add-int/2addr v7, v3

    .line 724
    goto :goto_16

    .line 725
    :cond_24
    const/4 v7, 0x1

    .line 726
    :goto_16
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    iget v8, v6, Ll2/a0;->a:I

    .line 731
    .line 732
    if-eqz v5, :cond_25

    .line 733
    .line 734
    const/16 v5, 0x8

    .line 735
    .line 736
    invoke-virtual {v13, v5}, Lj3/f;->g(I)I

    .line 737
    .line 738
    .line 739
    move-result v10

    .line 740
    add-int/2addr v10, v3

    .line 741
    const/4 v5, 0x0

    .line 742
    :goto_17
    if-ge v5, v10, :cond_25

    .line 743
    .line 744
    add-int/lit8 v12, v8, -0x1

    .line 745
    .line 746
    invoke-static {v12}, Ll2/b;->m(I)I

    .line 747
    .line 748
    .line 749
    move-result v14

    .line 750
    invoke-virtual {v13, v14}, Lj3/f;->o(I)V

    .line 751
    .line 752
    .line 753
    invoke-static {v12}, Ll2/b;->m(I)I

    .line 754
    .line 755
    .line 756
    move-result v12

    .line 757
    invoke-virtual {v13, v12}, Lj3/f;->o(I)V

    .line 758
    .line 759
    .line 760
    add-int/lit8 v5, v5, 0x1

    .line 761
    .line 762
    goto :goto_17

    .line 763
    :cond_25
    const/4 v5, 0x2

    .line 764
    invoke-virtual {v13, v5}, Lj3/f;->g(I)I

    .line 765
    .line 766
    .line 767
    move-result v10

    .line 768
    if-nez v10, :cond_28

    .line 769
    .line 770
    if-le v7, v3, :cond_26

    .line 771
    .line 772
    const/4 v10, 0x0

    .line 773
    :goto_18
    if-ge v10, v8, :cond_26

    .line 774
    .line 775
    const/4 v12, 0x4

    .line 776
    invoke-virtual {v13, v12}, Lj3/f;->o(I)V

    .line 777
    .line 778
    .line 779
    add-int/lit8 v10, v10, 0x1

    .line 780
    .line 781
    goto :goto_18

    .line 782
    :cond_26
    const/4 v12, 0x4

    .line 783
    const/4 v8, 0x0

    .line 784
    :goto_19
    if-ge v8, v7, :cond_27

    .line 785
    .line 786
    const/16 v10, 0x8

    .line 787
    .line 788
    invoke-virtual {v13, v10}, Lj3/f;->o(I)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v13, v10}, Lj3/f;->o(I)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v13, v10}, Lj3/f;->o(I)V

    .line 795
    .line 796
    .line 797
    add-int/lit8 v8, v8, 0x1

    .line 798
    .line 799
    goto :goto_19

    .line 800
    :cond_27
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    .line 801
    .line 802
    goto :goto_15

    .line 803
    :cond_28
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    .line 804
    .line 805
    const/4 v2, 0x0

    .line 806
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    throw v1

    .line 811
    :cond_29
    const/4 v1, 0x6

    .line 812
    invoke-virtual {v13, v1}, Lj3/f;->g(I)I

    .line 813
    .line 814
    .line 815
    move-result v1

    .line 816
    add-int/lit8 v4, v1, 0x1

    .line 817
    .line 818
    new-array v10, v4, [Lag/h;

    .line 819
    .line 820
    const/4 v5, 0x0

    .line 821
    :goto_1b
    if-ge v5, v4, :cond_2a

    .line 822
    .line 823
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 824
    .line 825
    .line 826
    move-result v7

    .line 827
    const/16 v8, 0x10

    .line 828
    .line 829
    invoke-virtual {v13, v8}, Lj3/f;->g(I)I

    .line 830
    .line 831
    .line 832
    invoke-virtual {v13, v8}, Lj3/f;->g(I)I

    .line 833
    .line 834
    .line 835
    const/16 v12, 0x8

    .line 836
    .line 837
    invoke-virtual {v13, v12}, Lj3/f;->g(I)I

    .line 838
    .line 839
    .line 840
    new-instance v14, Lag/h;

    .line 841
    .line 842
    invoke-direct {v14, v7}, Lag/h;-><init>(Z)V

    .line 843
    .line 844
    .line 845
    aput-object v14, v10, v5

    .line 846
    .line 847
    add-int/lit8 v5, v5, 0x1

    .line 848
    .line 849
    goto :goto_1b

    .line 850
    :cond_2a
    invoke-virtual {v13}, Lj3/f;->f()Z

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    if-eqz v4, :cond_2c

    .line 855
    .line 856
    invoke-static {v1}, Ll2/b;->m(I)I

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    new-instance v4, Lg3/j;

    .line 861
    .line 862
    move-object v5, v4

    .line 863
    move-object v7, v9

    .line 864
    move-object v8, v11

    .line 865
    move-object v9, v10

    .line 866
    move v10, v1

    .line 867
    invoke-direct/range {v5 .. v10}, Lg3/j;-><init>(Ll2/a0;Ll2/l0;[B[Lag/h;I)V

    .line 868
    .line 869
    .line 870
    move-object v8, v4

    .line 871
    :goto_1c
    iput-object v8, v0, Lg3/k;->n:Lg3/j;

    .line 872
    .line 873
    if-nez v8, :cond_2b

    .line 874
    .line 875
    return v3

    .line 876
    :cond_2b
    new-instance v1, Ljava/util/ArrayList;

    .line 877
    .line 878
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .line 880
    .line 881
    iget-object v4, v8, Lg3/j;->b:Ljava/lang/Object;

    .line 882
    .line 883
    check-cast v4, Ll2/a0;

    .line 884
    .line 885
    iget-object v5, v4, Ll2/a0;->g:Ljava/io/Serializable;

    .line 886
    .line 887
    check-cast v5, [B

    .line 888
    .line 889
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    iget-object v5, v8, Lg3/j;->d:Ljava/lang/Object;

    .line 893
    .line 894
    check-cast v5, [B

    .line 895
    .line 896
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    iget-object v5, v8, Lg3/j;->c:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v5, Ll2/l0;

    .line 902
    .line 903
    iget-object v5, v5, Ll2/l0;->a:[Ljava/lang/String;

    .line 904
    .line 905
    invoke-static {v5}, Lu7/g0;->n([Ljava/lang/Object;)Lu7/y0;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    invoke-static {v5}, Ll2/b;->s(Ljava/util/List;)Lr1/d0;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    new-instance v6, Lr1/o;

    .line 914
    .line 915
    invoke-direct {v6}, Lr1/o;-><init>()V

    .line 916
    .line 917
    .line 918
    const-string v7, "audio/ogg"

    .line 919
    .line 920
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v7

    .line 924
    iput-object v7, v6, Lr1/o;->m:Ljava/lang/String;

    .line 925
    .line 926
    const-string v7, "audio/vorbis"

    .line 927
    .line 928
    invoke-static {v7}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v7

    .line 932
    iput-object v7, v6, Lr1/o;->n:Ljava/lang/String;

    .line 933
    .line 934
    iget v7, v4, Ll2/a0;->d:I

    .line 935
    .line 936
    iput v7, v6, Lr1/o;->h:I

    .line 937
    .line 938
    iget v7, v4, Ll2/a0;->c:I

    .line 939
    .line 940
    iput v7, v6, Lr1/o;->i:I

    .line 941
    .line 942
    iget v7, v4, Ll2/a0;->a:I

    .line 943
    .line 944
    iput v7, v6, Lr1/o;->F:I

    .line 945
    .line 946
    iget v4, v4, Ll2/a0;->b:I

    .line 947
    .line 948
    iput v4, v6, Lr1/o;->G:I

    .line 949
    .line 950
    iput-object v1, v6, Lr1/o;->q:Ljava/util/List;

    .line 951
    .line 952
    iput-object v5, v6, Lr1/o;->k:Lr1/d0;

    .line 953
    .line 954
    new-instance v1, Lr1/p;

    .line 955
    .line 956
    invoke-direct {v1, v6}, Lr1/p;-><init>(Lr1/o;)V

    .line 957
    .line 958
    .line 959
    iput-object v1, v2, La2/g1;->b:Ljava/lang/Object;

    .line 960
    .line 961
    return v3

    .line 962
    :cond_2c
    const-string v1, "framing bit after modes not set as expected"

    .line 963
    .line 964
    const/4 v2, 0x0

    .line 965
    invoke-static {v2, v1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    goto :goto_1e

    .line 970
    :goto_1d
    throw v1

    .line 971
    :goto_1e
    goto :goto_1d
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lg3/i;->d(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lg3/k;->n:Lg3/j;

    .line 8
    .line 9
    iput-object p1, p0, Lg3/k;->q:Ll2/a0;

    .line 10
    .line 11
    iput-object p1, p0, Lg3/k;->r:Ll2/l0;

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lg3/k;->o:I

    .line 15
    .line 16
    iput-boolean p1, p0, Lg3/k;->p:Z

    .line 17
    .line 18
    return-void
.end method
