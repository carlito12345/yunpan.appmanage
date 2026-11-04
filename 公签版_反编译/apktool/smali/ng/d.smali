.class public final Lng/d;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:I

.field public c:I

.field public d:I

.field public final e:Lng/f;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:I

.field public l:Lng/c;

.field public m:Lng/e;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lng/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance p1, Lng/f;

    .line 12
    .line 13
    invoke-direct {p1}, Lng/f;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lng/d;->e:Lng/f;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lng/d;->h:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const-string v2, "blockSize("

    .line 23
    .line 24
    if-lt p2, v1, :cond_2

    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    if-gt p2, v1, :cond_1

    .line 29
    .line 30
    const v1, 0x186a0

    .line 31
    .line 32
    .line 33
    mul-int v1, v1, p2

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x14

    .line 36
    .line 37
    iput v1, p0, Lng/d;->k:I

    .line 38
    .line 39
    const/16 v1, 0x42

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lng/d;->A(I)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x5a

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lng/d;->A(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lng/c;

    .line 50
    .line 51
    invoke-direct {v1, p2}, Lng/c;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lng/d;->l:Lng/c;

    .line 55
    .line 56
    new-instance v1, Lng/e;

    .line 57
    .line 58
    iget-object v2, p0, Lng/d;->l:Lng/c;

    .line 59
    .line 60
    invoke-direct {v1, v2}, Lng/e;-><init>(Lng/c;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lng/d;->m:Lng/e;

    .line 64
    .line 65
    const/16 v1, 0x68

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lng/d;->A(I)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 p2, p2, 0x30

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Lng/d;->A(I)V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    iput p2, p0, Lng/d;->j:I

    .line 77
    .line 78
    iput v0, p1, Lng/f;->a:I

    .line 79
    .line 80
    iput v0, p0, Lng/d;->b:I

    .line 81
    .line 82
    iget-object p1, p0, Lng/d;->l:Lng/c;

    .line 83
    .line 84
    iget-object p1, p1, Lng/c;->a:[Z

    .line 85
    .line 86
    const/16 v1, 0x100

    .line 87
    .line 88
    :goto_0
    add-int/2addr v1, v0

    .line 89
    if-ltz v1, :cond_0

    .line 90
    .line 91
    aput-boolean p2, p1, v1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v0, ") > 9"

    .line 98
    .line 99
    invoke-static {v2, p2, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string v0, ") < 1"

    .line 110
    .line 111
    invoke-static {v2, p2, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :goto_1
    throw p1

    .line 120
    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lng/d;->J(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final J(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    iget v1, p0, Lng/d;->d:I

    .line 4
    .line 5
    iget v2, p0, Lng/d;->c:I

    .line 6
    .line 7
    :goto_0
    const/16 v3, 0x8

    .line 8
    .line 9
    if-lt v1, v3, :cond_0

    .line 10
    .line 11
    shr-int/lit8 v3, v2, 0x18

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 14
    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x8

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x8

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    rsub-int/lit8 v0, v1, 0x20

    .line 22
    .line 23
    sub-int/2addr v0, p1

    .line 24
    shl-int/2addr p2, v0

    .line 25
    or-int/2addr p2, v2

    .line 26
    iput p2, p0, Lng/d;->c:I

    .line 27
    .line 28
    add-int/2addr v1, p1

    .line 29
    iput v1, p0, Lng/d;->d:I

    .line 30
    .line 31
    return-void
.end method

.method public final K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lng/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final L()V
    .locals 55

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lng/d;->e:Lng/f;

    .line 4
    .line 5
    iget v1, v1, Lng/f;->a:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    xor-int/2addr v1, v2

    .line 9
    iget v3, v0, Lng/d;->j:I

    .line 10
    .line 11
    shl-int/lit8 v4, v3, 0x1

    .line 12
    .line 13
    ushr-int/lit8 v3, v3, 0x1f

    .line 14
    .line 15
    or-int/2addr v3, v4

    .line 16
    xor-int/2addr v3, v1

    .line 17
    iput v3, v0, Lng/d;->j:I

    .line 18
    .line 19
    iget v3, v0, Lng/d;->b:I

    .line 20
    .line 21
    if-ne v3, v2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v4, v0, Lng/d;->m:Lng/e;

    .line 25
    .line 26
    iget-object v5, v0, Lng/d;->l:Lng/c;

    .line 27
    .line 28
    mul-int/lit8 v6, v3, 0x1e

    .line 29
    .line 30
    iput v6, v4, Lng/e;->b:I

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    iput v7, v4, Lng/e;->a:I

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    iput-boolean v8, v4, Lng/e;->c:Z

    .line 37
    .line 38
    add-int/lit8 v9, v3, 0x1

    .line 39
    .line 40
    const/16 v10, 0x2710

    .line 41
    .line 42
    if-ge v9, v10, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4, v5, v3}, Lng/e;->a(Lng/c;I)V

    .line 45
    .line 46
    .line 47
    move/from16 v22, v1

    .line 48
    .line 49
    move v0, v3

    .line 50
    move-object v1, v5

    .line 51
    goto/16 :goto_32

    .line 52
    .line 53
    :cond_1
    iget-object v10, v5, Lng/c;->q:[B

    .line 54
    .line 55
    iget-object v11, v4, Lng/e;->j:[I

    .line 56
    .line 57
    invoke-static {v11, v7}, Ljava/util/Arrays;->fill([II)V

    .line 58
    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    :goto_0
    const/4 v13, 0x2

    .line 62
    const/16 v14, 0x14

    .line 63
    .line 64
    if-ge v12, v14, :cond_2

    .line 65
    .line 66
    add-int v14, v3, v12

    .line 67
    .line 68
    add-int/2addr v14, v13

    .line 69
    rem-int v13, v12, v9

    .line 70
    .line 71
    add-int/2addr v13, v8

    .line 72
    aget-byte v13, v10, v13

    .line 73
    .line 74
    aput-byte v13, v10, v14

    .line 75
    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    add-int/lit8 v12, v3, 0x15

    .line 80
    .line 81
    :goto_1
    add-int/2addr v12, v2

    .line 82
    iget-object v15, v4, Lng/e;->k:[C

    .line 83
    .line 84
    if-ltz v12, :cond_3

    .line 85
    .line 86
    aput-char v7, v15, v12

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    aget-byte v12, v10, v9

    .line 90
    .line 91
    aput-byte v12, v10, v7

    .line 92
    .line 93
    const/16 v14, 0xff

    .line 94
    .line 95
    and-int/2addr v12, v14

    .line 96
    const/4 v13, 0x0

    .line 97
    :goto_2
    if-gt v13, v3, :cond_4

    .line 98
    .line 99
    add-int/lit8 v13, v13, 0x1

    .line 100
    .line 101
    aget-byte v7, v10, v13

    .line 102
    .line 103
    and-int/2addr v7, v14

    .line 104
    shl-int/lit8 v12, v12, 0x8

    .line 105
    .line 106
    add-int/2addr v12, v7

    .line 107
    aget v18, v11, v12

    .line 108
    .line 109
    add-int/lit8 v18, v18, 0x1

    .line 110
    .line 111
    aput v18, v11, v12

    .line 112
    .line 113
    move v12, v7

    .line 114
    const/4 v7, 0x0

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const/4 v7, 0x1

    .line 117
    :goto_3
    const/high16 v12, 0x10000

    .line 118
    .line 119
    if-gt v7, v12, :cond_5

    .line 120
    .line 121
    aget v12, v11, v7

    .line 122
    .line 123
    add-int/lit8 v13, v7, -0x1

    .line 124
    .line 125
    aget v13, v11, v13

    .line 126
    .line 127
    add-int/2addr v12, v13

    .line 128
    aput v12, v11, v7

    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    aget-byte v7, v10, v8

    .line 134
    .line 135
    and-int/2addr v7, v14

    .line 136
    const/4 v12, 0x0

    .line 137
    :goto_4
    iget-object v13, v5, Lng/c;->r:[I

    .line 138
    .line 139
    if-ge v12, v3, :cond_6

    .line 140
    .line 141
    add-int/lit8 v18, v12, 0x2

    .line 142
    .line 143
    aget-byte v2, v10, v18

    .line 144
    .line 145
    and-int/2addr v2, v14

    .line 146
    shl-int/lit8 v7, v7, 0x8

    .line 147
    .line 148
    add-int/2addr v7, v2

    .line 149
    aget v18, v11, v7

    .line 150
    .line 151
    add-int/lit8 v18, v18, -0x1

    .line 152
    .line 153
    aput v18, v11, v7

    .line 154
    .line 155
    aput v12, v13, v18

    .line 156
    .line 157
    add-int/lit8 v12, v12, 0x1

    .line 158
    .line 159
    move v7, v2

    .line 160
    const/4 v2, -0x1

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    aget-byte v2, v10, v9

    .line 163
    .line 164
    and-int/2addr v2, v14

    .line 165
    shl-int/lit8 v2, v2, 0x8

    .line 166
    .line 167
    aget-byte v7, v10, v8

    .line 168
    .line 169
    and-int/2addr v7, v14

    .line 170
    add-int/2addr v2, v7

    .line 171
    aget v7, v11, v2

    .line 172
    .line 173
    sub-int/2addr v7, v8

    .line 174
    aput v7, v11, v2

    .line 175
    .line 176
    aput v3, v13, v7

    .line 177
    .line 178
    const/4 v7, -0x1

    .line 179
    const/16 v12, 0x100

    .line 180
    .line 181
    :goto_5
    add-int/2addr v12, v7

    .line 182
    iget-object v7, v4, Lng/e;->g:[I

    .line 183
    .line 184
    iget-object v2, v4, Lng/e;->i:[Z

    .line 185
    .line 186
    if-ltz v12, :cond_7

    .line 187
    .line 188
    const/16 v17, 0x0

    .line 189
    .line 190
    aput-boolean v17, v2, v12

    .line 191
    .line 192
    aput v12, v7, v12

    .line 193
    .line 194
    const/4 v7, -0x1

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    const/16 v12, 0x16c

    .line 197
    .line 198
    :goto_6
    if-eq v12, v8, :cond_b

    .line 199
    .line 200
    div-int/lit8 v12, v12, 0x3

    .line 201
    .line 202
    move v8, v12

    .line 203
    :goto_7
    if-gt v8, v14, :cond_a

    .line 204
    .line 205
    aget v21, v7, v8

    .line 206
    .line 207
    add-int/lit8 v22, v21, 0x1

    .line 208
    .line 209
    shl-int/lit8 v22, v22, 0x8

    .line 210
    .line 211
    aget v22, v11, v22

    .line 212
    .line 213
    shl-int/lit8 v23, v21, 0x8

    .line 214
    .line 215
    aget v23, v11, v23

    .line 216
    .line 217
    sub-int v14, v22, v23

    .line 218
    .line 219
    move/from16 v22, v1

    .line 220
    .line 221
    add-int/lit8 v1, v12, -0x1

    .line 222
    .line 223
    sub-int v23, v8, v12

    .line 224
    .line 225
    aget v23, v7, v23

    .line 226
    .line 227
    move/from16 v25, v8

    .line 228
    .line 229
    :goto_8
    add-int/lit8 v26, v23, 0x1

    .line 230
    .line 231
    shl-int/lit8 v26, v26, 0x8

    .line 232
    .line 233
    aget v26, v11, v26

    .line 234
    .line 235
    shl-int/lit8 v27, v23, 0x8

    .line 236
    .line 237
    aget v27, v11, v27

    .line 238
    .line 239
    sub-int v0, v26, v27

    .line 240
    .line 241
    if-le v0, v14, :cond_9

    .line 242
    .line 243
    aput v23, v7, v25

    .line 244
    .line 245
    sub-int v0, v25, v12

    .line 246
    .line 247
    if-gt v0, v1, :cond_8

    .line 248
    .line 249
    move/from16 v25, v0

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_8
    sub-int v23, v0, v12

    .line 253
    .line 254
    aget v23, v7, v23

    .line 255
    .line 256
    move/from16 v25, v0

    .line 257
    .line 258
    move-object/from16 v0, p0

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_9
    :goto_9
    aput v21, v7, v25

    .line 262
    .line 263
    add-int/lit8 v8, v8, 0x1

    .line 264
    .line 265
    const/16 v14, 0xff

    .line 266
    .line 267
    move-object/from16 v0, p0

    .line 268
    .line 269
    move/from16 v1, v22

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_a
    const/4 v8, 0x1

    .line 273
    move-object/from16 v0, p0

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_b
    move/from16 v22, v1

    .line 277
    .line 278
    const/4 v0, 0x0

    .line 279
    const/16 v1, 0xff

    .line 280
    .line 281
    :goto_a
    if-gt v0, v1, :cond_46

    .line 282
    .line 283
    aget v8, v7, v0

    .line 284
    .line 285
    const/4 v12, 0x0

    .line 286
    :goto_b
    const/high16 v14, 0x200000

    .line 287
    .line 288
    const v21, -0x200001

    .line 289
    .line 290
    .line 291
    if-gt v12, v1, :cond_3d

    .line 292
    .line 293
    shl-int/lit8 v1, v8, 0x8

    .line 294
    .line 295
    add-int/2addr v1, v12

    .line 296
    aget v23, v11, v1

    .line 297
    .line 298
    move-object/from16 v25, v7

    .line 299
    .line 300
    and-int v7, v23, v14

    .line 301
    .line 302
    if-eq v7, v14, :cond_3c

    .line 303
    .line 304
    and-int v7, v23, v21

    .line 305
    .line 306
    add-int/lit8 v26, v1, 0x1

    .line 307
    .line 308
    aget v26, v11, v26

    .line 309
    .line 310
    and-int v21, v26, v21

    .line 311
    .line 312
    const/16 v20, 0x1

    .line 313
    .line 314
    add-int/lit8 v14, v21, -0x1

    .line 315
    .line 316
    if-le v14, v7, :cond_3b

    .line 317
    .line 318
    move/from16 v27, v3

    .line 319
    .line 320
    iget-object v3, v4, Lng/e;->d:[I

    .line 321
    .line 322
    const/16 v17, 0x0

    .line 323
    .line 324
    aput v7, v3, v17

    .line 325
    .line 326
    iget-object v7, v4, Lng/e;->e:[I

    .line 327
    .line 328
    aput v14, v7, v17

    .line 329
    .line 330
    iget-object v14, v4, Lng/e;->f:[I

    .line 331
    .line 332
    const/16 v16, 0x2

    .line 333
    .line 334
    aput v16, v14, v17

    .line 335
    .line 336
    const/16 v21, 0x1

    .line 337
    .line 338
    :goto_c
    add-int/lit8 v28, v21, -0x1

    .line 339
    .line 340
    if-ltz v28, :cond_39

    .line 341
    .line 342
    aget v29, v3, v28

    .line 343
    .line 344
    move/from16 v30, v0

    .line 345
    .line 346
    aget v0, v7, v28

    .line 347
    .line 348
    move-object/from16 v31, v2

    .line 349
    .line 350
    aget v2, v14, v28

    .line 351
    .line 352
    move-object/from16 v32, v10

    .line 353
    .line 354
    sub-int v10, v0, v29

    .line 355
    .line 356
    move/from16 v33, v8

    .line 357
    .line 358
    iget-object v8, v5, Lng/c;->q:[B

    .line 359
    .line 360
    move-object/from16 v34, v5

    .line 361
    .line 362
    const/16 v5, 0x14

    .line 363
    .line 364
    if-lt v10, v5, :cond_c

    .line 365
    .line 366
    const/16 v5, 0xa

    .line 367
    .line 368
    if-le v2, v5, :cond_d

    .line 369
    .line 370
    :cond_c
    move/from16 v36, v1

    .line 371
    .line 372
    move/from16 v40, v6

    .line 373
    .line 374
    move/from16 v41, v9

    .line 375
    .line 376
    move-object/from16 v37, v11

    .line 377
    .line 378
    move/from16 v35, v12

    .line 379
    .line 380
    move-object/from16 v39, v15

    .line 381
    .line 382
    goto/16 :goto_17

    .line 383
    .line 384
    :cond_d
    add-int/lit8 v5, v2, 0x1

    .line 385
    .line 386
    aget v10, v13, v29

    .line 387
    .line 388
    add-int/2addr v10, v5

    .line 389
    aget-byte v10, v8, v10

    .line 390
    .line 391
    move/from16 v35, v12

    .line 392
    .line 393
    const/16 v12, 0xff

    .line 394
    .line 395
    and-int/2addr v10, v12

    .line 396
    aget v24, v13, v0

    .line 397
    .line 398
    add-int v24, v24, v5

    .line 399
    .line 400
    move/from16 v36, v1

    .line 401
    .line 402
    aget-byte v1, v8, v24

    .line 403
    .line 404
    and-int/2addr v1, v12

    .line 405
    add-int v24, v29, v0

    .line 406
    .line 407
    const/16 v20, 0x1

    .line 408
    .line 409
    ushr-int/lit8 v24, v24, 0x1

    .line 410
    .line 411
    aget v24, v13, v24

    .line 412
    .line 413
    add-int v24, v24, v5

    .line 414
    .line 415
    move-object/from16 v37, v11

    .line 416
    .line 417
    aget-byte v11, v8, v24

    .line 418
    .line 419
    and-int/2addr v11, v12

    .line 420
    if-ge v10, v1, :cond_f

    .line 421
    .line 422
    if-ge v1, v11, :cond_e

    .line 423
    .line 424
    goto :goto_e

    .line 425
    :cond_e
    if-ge v10, v11, :cond_11

    .line 426
    .line 427
    goto :goto_d

    .line 428
    :cond_f
    if-le v1, v11, :cond_10

    .line 429
    .line 430
    goto :goto_e

    .line 431
    :cond_10
    if-le v10, v11, :cond_11

    .line 432
    .line 433
    :goto_d
    move v1, v11

    .line 434
    goto :goto_e

    .line 435
    :cond_11
    move v1, v10

    .line 436
    :goto_e
    move v11, v0

    .line 437
    move/from16 v38, v11

    .line 438
    .line 439
    move/from16 v10, v29

    .line 440
    .line 441
    move v12, v10

    .line 442
    :goto_f
    if-gt v10, v11, :cond_13

    .line 443
    .line 444
    aget v39, v13, v10

    .line 445
    .line 446
    add-int v40, v39, v5

    .line 447
    .line 448
    move/from16 v41, v11

    .line 449
    .line 450
    aget-byte v11, v8, v40

    .line 451
    .line 452
    move/from16 v40, v6

    .line 453
    .line 454
    const/16 v6, 0xff

    .line 455
    .line 456
    and-int/2addr v11, v6

    .line 457
    sub-int/2addr v11, v1

    .line 458
    if-nez v11, :cond_12

    .line 459
    .line 460
    add-int/lit8 v6, v10, 0x1

    .line 461
    .line 462
    aget v11, v13, v12

    .line 463
    .line 464
    aput v11, v13, v10

    .line 465
    .line 466
    add-int/lit8 v10, v12, 0x1

    .line 467
    .line 468
    aput v39, v13, v12

    .line 469
    .line 470
    move v12, v10

    .line 471
    move v10, v6

    .line 472
    goto :goto_10

    .line 473
    :cond_12
    if-gez v11, :cond_14

    .line 474
    .line 475
    add-int/lit8 v10, v10, 0x1

    .line 476
    .line 477
    :goto_10
    move/from16 v6, v40

    .line 478
    .line 479
    move/from16 v11, v41

    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_13
    move/from16 v40, v6

    .line 483
    .line 484
    move/from16 v41, v11

    .line 485
    .line 486
    :cond_14
    move/from16 v6, v38

    .line 487
    .line 488
    move/from16 v11, v41

    .line 489
    .line 490
    :goto_11
    if-gt v10, v11, :cond_16

    .line 491
    .line 492
    aget v38, v13, v11

    .line 493
    .line 494
    add-int v39, v38, v5

    .line 495
    .line 496
    move/from16 v41, v9

    .line 497
    .line 498
    aget-byte v9, v8, v39

    .line 499
    .line 500
    move-object/from16 v39, v15

    .line 501
    .line 502
    const/16 v15, 0xff

    .line 503
    .line 504
    and-int/2addr v9, v15

    .line 505
    sub-int/2addr v9, v1

    .line 506
    if-nez v9, :cond_15

    .line 507
    .line 508
    add-int/lit8 v9, v11, -0x1

    .line 509
    .line 510
    aget v15, v13, v6

    .line 511
    .line 512
    aput v15, v13, v11

    .line 513
    .line 514
    add-int/lit8 v11, v6, -0x1

    .line 515
    .line 516
    aput v38, v13, v6

    .line 517
    .line 518
    move v6, v11

    .line 519
    move v11, v9

    .line 520
    goto :goto_12

    .line 521
    :cond_15
    if-lez v9, :cond_17

    .line 522
    .line 523
    add-int/lit8 v11, v11, -0x1

    .line 524
    .line 525
    :goto_12
    move-object/from16 v15, v39

    .line 526
    .line 527
    move/from16 v9, v41

    .line 528
    .line 529
    goto :goto_11

    .line 530
    :cond_16
    move/from16 v41, v9

    .line 531
    .line 532
    move-object/from16 v39, v15

    .line 533
    .line 534
    :cond_17
    if-le v10, v11, :cond_1b

    .line 535
    .line 536
    if-ge v6, v12, :cond_18

    .line 537
    .line 538
    aput v29, v3, v28

    .line 539
    .line 540
    aput v0, v7, v28

    .line 541
    .line 542
    aput v5, v14, v28

    .line 543
    .line 544
    :goto_13
    const/4 v0, 0x1

    .line 545
    goto :goto_16

    .line 546
    :cond_18
    sub-int v1, v12, v29

    .line 547
    .line 548
    sub-int v8, v10, v12

    .line 549
    .line 550
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    sub-int v8, v10, v1

    .line 555
    .line 556
    add-int v1, v1, v29

    .line 557
    .line 558
    move/from16 v9, v29

    .line 559
    .line 560
    :goto_14
    if-ge v9, v1, :cond_19

    .line 561
    .line 562
    aget v15, v13, v9

    .line 563
    .line 564
    add-int/lit8 v38, v9, 0x1

    .line 565
    .line 566
    aget v42, v13, v8

    .line 567
    .line 568
    aput v42, v13, v9

    .line 569
    .line 570
    add-int/lit8 v9, v8, 0x1

    .line 571
    .line 572
    aput v15, v13, v8

    .line 573
    .line 574
    move v8, v9

    .line 575
    move/from16 v9, v38

    .line 576
    .line 577
    goto :goto_14

    .line 578
    :cond_19
    sub-int v1, v0, v6

    .line 579
    .line 580
    sub-int/2addr v6, v11

    .line 581
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    sub-int v8, v0, v1

    .line 586
    .line 587
    const/4 v9, 0x1

    .line 588
    add-int/2addr v8, v9

    .line 589
    add-int/2addr v1, v10

    .line 590
    move v9, v10

    .line 591
    :goto_15
    if-ge v9, v1, :cond_1a

    .line 592
    .line 593
    aget v11, v13, v9

    .line 594
    .line 595
    add-int/lit8 v15, v9, 0x1

    .line 596
    .line 597
    aget v38, v13, v8

    .line 598
    .line 599
    aput v38, v13, v9

    .line 600
    .line 601
    add-int/lit8 v9, v8, 0x1

    .line 602
    .line 603
    aput v11, v13, v8

    .line 604
    .line 605
    move v8, v9

    .line 606
    move v9, v15

    .line 607
    goto :goto_15

    .line 608
    :cond_1a
    add-int v10, v29, v10

    .line 609
    .line 610
    sub-int/2addr v10, v12

    .line 611
    add-int/lit8 v1, v10, -0x1

    .line 612
    .line 613
    sub-int v6, v0, v6

    .line 614
    .line 615
    add-int/lit8 v8, v6, 0x1

    .line 616
    .line 617
    aput v29, v3, v28

    .line 618
    .line 619
    aput v1, v7, v28

    .line 620
    .line 621
    aput v2, v14, v28

    .line 622
    .line 623
    aput v10, v3, v21

    .line 624
    .line 625
    aput v6, v7, v21

    .line 626
    .line 627
    aput v5, v14, v21

    .line 628
    .line 629
    add-int/lit8 v28, v21, 0x1

    .line 630
    .line 631
    aput v8, v3, v28

    .line 632
    .line 633
    aput v0, v7, v28

    .line 634
    .line 635
    aput v2, v14, v28

    .line 636
    .line 637
    goto :goto_13

    .line 638
    :goto_16
    add-int/lit8 v28, v28, 0x1

    .line 639
    .line 640
    move-object/from16 v44, v3

    .line 641
    .line 642
    move-object/from16 v51, v7

    .line 643
    .line 644
    move/from16 v21, v28

    .line 645
    .line 646
    move/from16 v7, v41

    .line 647
    .line 648
    goto/16 :goto_26

    .line 649
    .line 650
    :cond_1b
    aget v9, v13, v10

    .line 651
    .line 652
    add-int/lit8 v15, v10, 0x1

    .line 653
    .line 654
    aget v38, v13, v11

    .line 655
    .line 656
    aput v38, v13, v10

    .line 657
    .line 658
    add-int/lit8 v10, v11, -0x1

    .line 659
    .line 660
    aput v9, v13, v11

    .line 661
    .line 662
    move/from16 v38, v6

    .line 663
    .line 664
    move v11, v10

    .line 665
    move v10, v15

    .line 666
    move-object/from16 v15, v39

    .line 667
    .line 668
    move/from16 v6, v40

    .line 669
    .line 670
    move/from16 v9, v41

    .line 671
    .line 672
    goto/16 :goto_f

    .line 673
    .line 674
    :goto_17
    add-int/lit8 v10, v10, 0x1

    .line 675
    .line 676
    const/4 v1, 0x2

    .line 677
    if-ge v10, v1, :cond_1d

    .line 678
    .line 679
    iget-boolean v0, v4, Lng/e;->c:Z

    .line 680
    .line 681
    if-eqz v0, :cond_1c

    .line 682
    .line 683
    iget v0, v4, Lng/e;->a:I

    .line 684
    .line 685
    iget v2, v4, Lng/e;->b:I

    .line 686
    .line 687
    if-le v0, v2, :cond_1c

    .line 688
    .line 689
    move/from16 v7, v41

    .line 690
    .line 691
    goto/16 :goto_27

    .line 692
    .line 693
    :cond_1c
    move-object/from16 v44, v3

    .line 694
    .line 695
    move-object/from16 v51, v7

    .line 696
    .line 697
    move/from16 v7, v41

    .line 698
    .line 699
    goto/16 :goto_25

    .line 700
    .line 701
    :cond_1d
    const/4 v5, 0x0

    .line 702
    :goto_18
    sget-object v6, Lng/e;->n:[I

    .line 703
    .line 704
    aget v9, v6, v5

    .line 705
    .line 706
    if-ge v9, v10, :cond_1e

    .line 707
    .line 708
    add-int/lit8 v5, v5, 0x1

    .line 709
    .line 710
    goto :goto_18

    .line 711
    :cond_1e
    iget-boolean v9, v4, Lng/e;->c:Z

    .line 712
    .line 713
    iget v10, v4, Lng/e;->b:I

    .line 714
    .line 715
    iget v11, v4, Lng/e;->a:I

    .line 716
    .line 717
    :goto_19
    const/4 v12, -0x1

    .line 718
    add-int/2addr v5, v12

    .line 719
    if-ltz v5, :cond_37

    .line 720
    .line 721
    aget v15, v6, v5

    .line 722
    .line 723
    add-int v16, v29, v15

    .line 724
    .line 725
    add-int/lit8 v1, v16, -0x1

    .line 726
    .line 727
    move/from16 v12, v16

    .line 728
    .line 729
    :goto_1a
    if-gt v12, v0, :cond_36

    .line 730
    .line 731
    const/16 v16, 0x3

    .line 732
    .line 733
    :goto_1b
    if-gt v12, v0, :cond_34

    .line 734
    .line 735
    const/16 v19, -0x1

    .line 736
    .line 737
    add-int/lit8 v16, v16, -0x1

    .line 738
    .line 739
    if-ltz v16, :cond_34

    .line 740
    .line 741
    aget v21, v13, v12

    .line 742
    .line 743
    add-int v42, v21, v2

    .line 744
    .line 745
    move/from16 v45, v12

    .line 746
    .line 747
    const/16 v43, 0x0

    .line 748
    .line 749
    const/16 v44, 0x0

    .line 750
    .line 751
    :goto_1c
    if-eqz v43, :cond_20

    .line 752
    .line 753
    aput v44, v13, v45

    .line 754
    .line 755
    move-object/from16 v44, v3

    .line 756
    .line 757
    sub-int v3, v45, v15

    .line 758
    .line 759
    if-gt v3, v1, :cond_1f

    .line 760
    .line 761
    move/from16 v48, v1

    .line 762
    .line 763
    move/from16 v49, v2

    .line 764
    .line 765
    move/from16 v52, v5

    .line 766
    .line 767
    move-object/from16 v54, v6

    .line 768
    .line 769
    move-object/from16 v51, v7

    .line 770
    .line 771
    move/from16 v7, v41

    .line 772
    .line 773
    goto/16 :goto_23

    .line 774
    .line 775
    :cond_1f
    move/from16 v45, v3

    .line 776
    .line 777
    goto :goto_1d

    .line 778
    :cond_20
    move-object/from16 v44, v3

    .line 779
    .line 780
    const/16 v43, 0x1

    .line 781
    .line 782
    :goto_1d
    sub-int v3, v45, v15

    .line 783
    .line 784
    aget v3, v13, v3

    .line 785
    .line 786
    add-int v46, v3, v2

    .line 787
    .line 788
    add-int/lit8 v47, v46, 0x1

    .line 789
    .line 790
    move/from16 v48, v1

    .line 791
    .line 792
    aget-byte v1, v8, v47

    .line 793
    .line 794
    add-int/lit8 v47, v42, 0x1

    .line 795
    .line 796
    move/from16 v49, v2

    .line 797
    .line 798
    aget-byte v2, v8, v47

    .line 799
    .line 800
    if-ne v1, v2, :cond_33

    .line 801
    .line 802
    add-int/lit8 v1, v46, 0x2

    .line 803
    .line 804
    aget-byte v1, v8, v1

    .line 805
    .line 806
    add-int/lit8 v2, v42, 0x2

    .line 807
    .line 808
    aget-byte v2, v8, v2

    .line 809
    .line 810
    if-ne v1, v2, :cond_32

    .line 811
    .line 812
    add-int/lit8 v1, v46, 0x3

    .line 813
    .line 814
    aget-byte v1, v8, v1

    .line 815
    .line 816
    add-int/lit8 v2, v42, 0x3

    .line 817
    .line 818
    aget-byte v2, v8, v2

    .line 819
    .line 820
    if-ne v1, v2, :cond_31

    .line 821
    .line 822
    add-int/lit8 v1, v46, 0x4

    .line 823
    .line 824
    aget-byte v1, v8, v1

    .line 825
    .line 826
    add-int/lit8 v2, v42, 0x4

    .line 827
    .line 828
    aget-byte v2, v8, v2

    .line 829
    .line 830
    if-ne v1, v2, :cond_30

    .line 831
    .line 832
    add-int/lit8 v1, v46, 0x5

    .line 833
    .line 834
    aget-byte v1, v8, v1

    .line 835
    .line 836
    add-int/lit8 v2, v42, 0x5

    .line 837
    .line 838
    aget-byte v2, v8, v2

    .line 839
    .line 840
    if-ne v1, v2, :cond_2f

    .line 841
    .line 842
    add-int/lit8 v46, v46, 0x6

    .line 843
    .line 844
    aget-byte v1, v8, v46

    .line 845
    .line 846
    add-int/lit8 v2, v42, 0x6

    .line 847
    .line 848
    move/from16 v47, v3

    .line 849
    .line 850
    aget-byte v3, v8, v2

    .line 851
    .line 852
    if-ne v1, v3, :cond_2e

    .line 853
    .line 854
    move/from16 v1, v27

    .line 855
    .line 856
    :goto_1e
    if-lez v1, :cond_2c

    .line 857
    .line 858
    add-int/lit8 v1, v1, -0x4

    .line 859
    .line 860
    add-int/lit8 v3, v46, 0x1

    .line 861
    .line 862
    move/from16 v50, v1

    .line 863
    .line 864
    aget-byte v1, v8, v3

    .line 865
    .line 866
    add-int/lit8 v51, v2, 0x1

    .line 867
    .line 868
    move/from16 v52, v5

    .line 869
    .line 870
    aget-byte v5, v8, v51

    .line 871
    .line 872
    if-ne v1, v5, :cond_2b

    .line 873
    .line 874
    aget-char v1, v39, v46

    .line 875
    .line 876
    aget-char v5, v39, v2

    .line 877
    .line 878
    if-ne v1, v5, :cond_2a

    .line 879
    .line 880
    add-int/lit8 v1, v46, 0x2

    .line 881
    .line 882
    aget-byte v5, v8, v1

    .line 883
    .line 884
    add-int/lit8 v53, v2, 0x2

    .line 885
    .line 886
    move-object/from16 v54, v6

    .line 887
    .line 888
    aget-byte v6, v8, v53

    .line 889
    .line 890
    if-ne v5, v6, :cond_29

    .line 891
    .line 892
    aget-char v3, v39, v3

    .line 893
    .line 894
    aget-char v5, v39, v51

    .line 895
    .line 896
    if-ne v3, v5, :cond_28

    .line 897
    .line 898
    add-int/lit8 v3, v46, 0x3

    .line 899
    .line 900
    aget-byte v5, v8, v3

    .line 901
    .line 902
    add-int/lit8 v6, v2, 0x3

    .line 903
    .line 904
    move-object/from16 v51, v7

    .line 905
    .line 906
    aget-byte v7, v8, v6

    .line 907
    .line 908
    if-ne v5, v7, :cond_27

    .line 909
    .line 910
    aget-char v1, v39, v1

    .line 911
    .line 912
    aget-char v5, v39, v53

    .line 913
    .line 914
    if-ne v1, v5, :cond_26

    .line 915
    .line 916
    add-int/lit8 v1, v46, 0x4

    .line 917
    .line 918
    aget-byte v5, v8, v1

    .line 919
    .line 920
    add-int/lit8 v2, v2, 0x4

    .line 921
    .line 922
    aget-byte v7, v8, v2

    .line 923
    .line 924
    if-ne v5, v7, :cond_25

    .line 925
    .line 926
    aget-char v3, v39, v3

    .line 927
    .line 928
    aget-char v5, v39, v6

    .line 929
    .line 930
    if-ne v3, v5, :cond_23

    .line 931
    .line 932
    move/from16 v6, v41

    .line 933
    .line 934
    if-lt v1, v6, :cond_21

    .line 935
    .line 936
    sub-int/2addr v1, v6

    .line 937
    :cond_21
    move/from16 v46, v1

    .line 938
    .line 939
    if-lt v2, v6, :cond_22

    .line 940
    .line 941
    sub-int/2addr v2, v6

    .line 942
    :cond_22
    add-int/lit8 v11, v11, 0x1

    .line 943
    .line 944
    move/from16 v41, v6

    .line 945
    .line 946
    move/from16 v1, v50

    .line 947
    .line 948
    move-object/from16 v7, v51

    .line 949
    .line 950
    move/from16 v5, v52

    .line 951
    .line 952
    move-object/from16 v6, v54

    .line 953
    .line 954
    goto :goto_1e

    .line 955
    :cond_23
    move/from16 v6, v41

    .line 956
    .line 957
    if-le v3, v5, :cond_24

    .line 958
    .line 959
    :goto_1f
    move v7, v6

    .line 960
    goto :goto_20

    .line 961
    :cond_24
    move v7, v6

    .line 962
    goto/16 :goto_21

    .line 963
    .line 964
    :cond_25
    move/from16 v6, v41

    .line 965
    .line 966
    and-int/lit16 v1, v5, 0xff

    .line 967
    .line 968
    and-int/lit16 v2, v7, 0xff

    .line 969
    .line 970
    if-le v1, v2, :cond_24

    .line 971
    .line 972
    goto :goto_1f

    .line 973
    :cond_26
    move/from16 v6, v41

    .line 974
    .line 975
    if-le v1, v5, :cond_24

    .line 976
    .line 977
    goto :goto_1f

    .line 978
    :cond_27
    move/from16 v6, v41

    .line 979
    .line 980
    and-int/lit16 v1, v5, 0xff

    .line 981
    .line 982
    and-int/lit16 v2, v7, 0xff

    .line 983
    .line 984
    if-le v1, v2, :cond_24

    .line 985
    .line 986
    goto :goto_1f

    .line 987
    :cond_28
    move-object/from16 v51, v7

    .line 988
    .line 989
    move/from16 v6, v41

    .line 990
    .line 991
    if-le v3, v5, :cond_24

    .line 992
    .line 993
    goto :goto_1f

    .line 994
    :cond_29
    move-object/from16 v51, v7

    .line 995
    .line 996
    move/from16 v7, v41

    .line 997
    .line 998
    and-int/lit16 v1, v5, 0xff

    .line 999
    .line 1000
    and-int/lit16 v2, v6, 0xff

    .line 1001
    .line 1002
    if-le v1, v2, :cond_2d

    .line 1003
    .line 1004
    goto :goto_20

    .line 1005
    :cond_2a
    move-object/from16 v54, v6

    .line 1006
    .line 1007
    move-object/from16 v51, v7

    .line 1008
    .line 1009
    move/from16 v7, v41

    .line 1010
    .line 1011
    if-le v1, v5, :cond_2d

    .line 1012
    .line 1013
    goto :goto_20

    .line 1014
    :cond_2b
    move-object/from16 v54, v6

    .line 1015
    .line 1016
    move-object/from16 v51, v7

    .line 1017
    .line 1018
    move/from16 v7, v41

    .line 1019
    .line 1020
    and-int/lit16 v1, v1, 0xff

    .line 1021
    .line 1022
    and-int/lit16 v2, v5, 0xff

    .line 1023
    .line 1024
    if-le v1, v2, :cond_2d

    .line 1025
    .line 1026
    :goto_20
    move/from16 v41, v7

    .line 1027
    .line 1028
    move-object/from16 v3, v44

    .line 1029
    .line 1030
    move/from16 v44, v47

    .line 1031
    .line 1032
    move/from16 v1, v48

    .line 1033
    .line 1034
    move/from16 v2, v49

    .line 1035
    .line 1036
    move-object/from16 v7, v51

    .line 1037
    .line 1038
    move/from16 v5, v52

    .line 1039
    .line 1040
    move-object/from16 v6, v54

    .line 1041
    .line 1042
    goto/16 :goto_1c

    .line 1043
    .line 1044
    :cond_2c
    move/from16 v52, v5

    .line 1045
    .line 1046
    move-object/from16 v54, v6

    .line 1047
    .line 1048
    move-object/from16 v51, v7

    .line 1049
    .line 1050
    move/from16 v7, v41

    .line 1051
    .line 1052
    :cond_2d
    :goto_21
    move/from16 v3, v45

    .line 1053
    .line 1054
    goto/16 :goto_23

    .line 1055
    .line 1056
    :cond_2e
    move/from16 v52, v5

    .line 1057
    .line 1058
    move-object/from16 v54, v6

    .line 1059
    .line 1060
    move-object/from16 v51, v7

    .line 1061
    .line 1062
    move/from16 v7, v41

    .line 1063
    .line 1064
    and-int/lit16 v1, v1, 0xff

    .line 1065
    .line 1066
    and-int/lit16 v2, v3, 0xff

    .line 1067
    .line 1068
    if-le v1, v2, :cond_2d

    .line 1069
    .line 1070
    goto :goto_22

    .line 1071
    :cond_2f
    move/from16 v47, v3

    .line 1072
    .line 1073
    move/from16 v52, v5

    .line 1074
    .line 1075
    move-object/from16 v54, v6

    .line 1076
    .line 1077
    move-object/from16 v51, v7

    .line 1078
    .line 1079
    move/from16 v7, v41

    .line 1080
    .line 1081
    and-int/lit16 v1, v1, 0xff

    .line 1082
    .line 1083
    and-int/lit16 v2, v2, 0xff

    .line 1084
    .line 1085
    if-le v1, v2, :cond_2d

    .line 1086
    .line 1087
    goto :goto_22

    .line 1088
    :cond_30
    move/from16 v47, v3

    .line 1089
    .line 1090
    move/from16 v52, v5

    .line 1091
    .line 1092
    move-object/from16 v54, v6

    .line 1093
    .line 1094
    move-object/from16 v51, v7

    .line 1095
    .line 1096
    move/from16 v7, v41

    .line 1097
    .line 1098
    and-int/lit16 v1, v1, 0xff

    .line 1099
    .line 1100
    and-int/lit16 v2, v2, 0xff

    .line 1101
    .line 1102
    if-le v1, v2, :cond_2d

    .line 1103
    .line 1104
    goto :goto_22

    .line 1105
    :cond_31
    move/from16 v47, v3

    .line 1106
    .line 1107
    move/from16 v52, v5

    .line 1108
    .line 1109
    move-object/from16 v54, v6

    .line 1110
    .line 1111
    move-object/from16 v51, v7

    .line 1112
    .line 1113
    move/from16 v7, v41

    .line 1114
    .line 1115
    and-int/lit16 v1, v1, 0xff

    .line 1116
    .line 1117
    and-int/lit16 v2, v2, 0xff

    .line 1118
    .line 1119
    if-le v1, v2, :cond_2d

    .line 1120
    .line 1121
    goto :goto_22

    .line 1122
    :cond_32
    move/from16 v47, v3

    .line 1123
    .line 1124
    move/from16 v52, v5

    .line 1125
    .line 1126
    move-object/from16 v54, v6

    .line 1127
    .line 1128
    move-object/from16 v51, v7

    .line 1129
    .line 1130
    move/from16 v7, v41

    .line 1131
    .line 1132
    and-int/lit16 v1, v1, 0xff

    .line 1133
    .line 1134
    and-int/lit16 v2, v2, 0xff

    .line 1135
    .line 1136
    if-le v1, v2, :cond_2d

    .line 1137
    .line 1138
    goto :goto_22

    .line 1139
    :cond_33
    move/from16 v47, v3

    .line 1140
    .line 1141
    move/from16 v52, v5

    .line 1142
    .line 1143
    move-object/from16 v54, v6

    .line 1144
    .line 1145
    move-object/from16 v51, v7

    .line 1146
    .line 1147
    move/from16 v7, v41

    .line 1148
    .line 1149
    and-int/lit16 v1, v1, 0xff

    .line 1150
    .line 1151
    and-int/lit16 v2, v2, 0xff

    .line 1152
    .line 1153
    if-le v1, v2, :cond_2d

    .line 1154
    .line 1155
    :goto_22
    goto/16 :goto_20

    .line 1156
    .line 1157
    :goto_23
    aput v21, v13, v3

    .line 1158
    .line 1159
    add-int/lit8 v12, v12, 0x1

    .line 1160
    .line 1161
    move/from16 v41, v7

    .line 1162
    .line 1163
    move-object/from16 v3, v44

    .line 1164
    .line 1165
    move/from16 v1, v48

    .line 1166
    .line 1167
    move/from16 v2, v49

    .line 1168
    .line 1169
    move-object/from16 v7, v51

    .line 1170
    .line 1171
    move/from16 v5, v52

    .line 1172
    .line 1173
    move-object/from16 v6, v54

    .line 1174
    .line 1175
    goto/16 :goto_1b

    .line 1176
    .line 1177
    :cond_34
    move/from16 v48, v1

    .line 1178
    .line 1179
    move/from16 v49, v2

    .line 1180
    .line 1181
    move-object/from16 v44, v3

    .line 1182
    .line 1183
    move/from16 v52, v5

    .line 1184
    .line 1185
    move-object/from16 v54, v6

    .line 1186
    .line 1187
    move-object/from16 v51, v7

    .line 1188
    .line 1189
    move/from16 v7, v41

    .line 1190
    .line 1191
    if-eqz v9, :cond_35

    .line 1192
    .line 1193
    if-gt v12, v0, :cond_35

    .line 1194
    .line 1195
    if-le v11, v10, :cond_35

    .line 1196
    .line 1197
    goto :goto_24

    .line 1198
    :cond_35
    move/from16 v41, v7

    .line 1199
    .line 1200
    move-object/from16 v3, v44

    .line 1201
    .line 1202
    move/from16 v1, v48

    .line 1203
    .line 1204
    move/from16 v2, v49

    .line 1205
    .line 1206
    move-object/from16 v7, v51

    .line 1207
    .line 1208
    move/from16 v5, v52

    .line 1209
    .line 1210
    move-object/from16 v6, v54

    .line 1211
    .line 1212
    goto/16 :goto_1a

    .line 1213
    .line 1214
    :cond_36
    move/from16 v52, v5

    .line 1215
    .line 1216
    const/4 v1, 0x2

    .line 1217
    goto/16 :goto_19

    .line 1218
    .line 1219
    :cond_37
    move-object/from16 v44, v3

    .line 1220
    .line 1221
    move-object/from16 v51, v7

    .line 1222
    .line 1223
    move/from16 v7, v41

    .line 1224
    .line 1225
    :goto_24
    iput v11, v4, Lng/e;->a:I

    .line 1226
    .line 1227
    if-eqz v9, :cond_38

    .line 1228
    .line 1229
    if-le v11, v10, :cond_38

    .line 1230
    .line 1231
    goto :goto_27

    .line 1232
    :cond_38
    :goto_25
    move/from16 v21, v28

    .line 1233
    .line 1234
    :goto_26
    move v9, v7

    .line 1235
    move/from16 v0, v30

    .line 1236
    .line 1237
    move-object/from16 v2, v31

    .line 1238
    .line 1239
    move-object/from16 v10, v32

    .line 1240
    .line 1241
    move/from16 v8, v33

    .line 1242
    .line 1243
    move-object/from16 v5, v34

    .line 1244
    .line 1245
    move/from16 v12, v35

    .line 1246
    .line 1247
    move/from16 v1, v36

    .line 1248
    .line 1249
    move-object/from16 v11, v37

    .line 1250
    .line 1251
    move-object/from16 v15, v39

    .line 1252
    .line 1253
    move/from16 v6, v40

    .line 1254
    .line 1255
    move-object/from16 v3, v44

    .line 1256
    .line 1257
    move-object/from16 v7, v51

    .line 1258
    .line 1259
    goto/16 :goto_c

    .line 1260
    .line 1261
    :cond_39
    move/from16 v30, v0

    .line 1262
    .line 1263
    move/from16 v36, v1

    .line 1264
    .line 1265
    move-object/from16 v31, v2

    .line 1266
    .line 1267
    move-object/from16 v34, v5

    .line 1268
    .line 1269
    move/from16 v40, v6

    .line 1270
    .line 1271
    move/from16 v33, v8

    .line 1272
    .line 1273
    move v7, v9

    .line 1274
    move-object/from16 v32, v10

    .line 1275
    .line 1276
    move-object/from16 v37, v11

    .line 1277
    .line 1278
    move/from16 v35, v12

    .line 1279
    .line 1280
    move-object/from16 v39, v15

    .line 1281
    .line 1282
    :goto_27
    iget v0, v4, Lng/e;->a:I

    .line 1283
    .line 1284
    move/from16 v3, v40

    .line 1285
    .line 1286
    if-le v0, v3, :cond_3a

    .line 1287
    .line 1288
    goto/16 :goto_31

    .line 1289
    .line 1290
    :cond_3a
    :goto_28
    const/high16 v0, 0x200000

    .line 1291
    .line 1292
    goto :goto_29

    .line 1293
    :cond_3b
    move/from16 v30, v0

    .line 1294
    .line 1295
    move/from16 v36, v1

    .line 1296
    .line 1297
    move-object/from16 v31, v2

    .line 1298
    .line 1299
    move/from16 v27, v3

    .line 1300
    .line 1301
    move-object/from16 v34, v5

    .line 1302
    .line 1303
    move v3, v6

    .line 1304
    move/from16 v33, v8

    .line 1305
    .line 1306
    move v7, v9

    .line 1307
    move-object/from16 v32, v10

    .line 1308
    .line 1309
    move-object/from16 v37, v11

    .line 1310
    .line 1311
    move/from16 v35, v12

    .line 1312
    .line 1313
    move-object/from16 v39, v15

    .line 1314
    .line 1315
    goto :goto_28

    .line 1316
    :goto_29
    or-int v0, v23, v0

    .line 1317
    .line 1318
    aput v0, v37, v36

    .line 1319
    .line 1320
    goto :goto_2a

    .line 1321
    :cond_3c
    move/from16 v30, v0

    .line 1322
    .line 1323
    move-object/from16 v31, v2

    .line 1324
    .line 1325
    move/from16 v27, v3

    .line 1326
    .line 1327
    move-object/from16 v34, v5

    .line 1328
    .line 1329
    move v3, v6

    .line 1330
    move/from16 v33, v8

    .line 1331
    .line 1332
    move v7, v9

    .line 1333
    move-object/from16 v32, v10

    .line 1334
    .line 1335
    move-object/from16 v37, v11

    .line 1336
    .line 1337
    move/from16 v35, v12

    .line 1338
    .line 1339
    move-object/from16 v39, v15

    .line 1340
    .line 1341
    :goto_2a
    add-int/lit8 v12, v35, 0x1

    .line 1342
    .line 1343
    move v6, v3

    .line 1344
    move v9, v7

    .line 1345
    move-object/from16 v7, v25

    .line 1346
    .line 1347
    move/from16 v3, v27

    .line 1348
    .line 1349
    move/from16 v0, v30

    .line 1350
    .line 1351
    move-object/from16 v2, v31

    .line 1352
    .line 1353
    move-object/from16 v10, v32

    .line 1354
    .line 1355
    move/from16 v8, v33

    .line 1356
    .line 1357
    move-object/from16 v5, v34

    .line 1358
    .line 1359
    move-object/from16 v11, v37

    .line 1360
    .line 1361
    move-object/from16 v15, v39

    .line 1362
    .line 1363
    const/16 v1, 0xff

    .line 1364
    .line 1365
    goto/16 :goto_b

    .line 1366
    .line 1367
    :cond_3d
    move/from16 v30, v0

    .line 1368
    .line 1369
    move-object/from16 v31, v2

    .line 1370
    .line 1371
    move/from16 v27, v3

    .line 1372
    .line 1373
    move-object/from16 v34, v5

    .line 1374
    .line 1375
    move v3, v6

    .line 1376
    move-object/from16 v25, v7

    .line 1377
    .line 1378
    move/from16 v33, v8

    .line 1379
    .line 1380
    move v7, v9

    .line 1381
    move-object/from16 v32, v10

    .line 1382
    .line 1383
    move-object/from16 v37, v11

    .line 1384
    .line 1385
    move-object/from16 v39, v15

    .line 1386
    .line 1387
    const/4 v0, 0x0

    .line 1388
    :goto_2b
    iget-object v1, v4, Lng/e;->h:[I

    .line 1389
    .line 1390
    const/16 v2, 0xff

    .line 1391
    .line 1392
    if-gt v0, v2, :cond_3e

    .line 1393
    .line 1394
    shl-int/lit8 v2, v0, 0x8

    .line 1395
    .line 1396
    add-int v2, v2, v33

    .line 1397
    .line 1398
    aget v2, v37, v2

    .line 1399
    .line 1400
    and-int v2, v2, v21

    .line 1401
    .line 1402
    aput v2, v1, v0

    .line 1403
    .line 1404
    add-int/lit8 v0, v0, 0x1

    .line 1405
    .line 1406
    goto :goto_2b

    .line 1407
    :cond_3e
    shl-int/lit8 v0, v33, 0x8

    .line 1408
    .line 1409
    aget v2, v37, v0

    .line 1410
    .line 1411
    and-int v2, v2, v21

    .line 1412
    .line 1413
    add-int/lit8 v8, v33, 0x1

    .line 1414
    .line 1415
    shl-int/lit8 v5, v8, 0x8

    .line 1416
    .line 1417
    aget v6, v37, v5

    .line 1418
    .line 1419
    and-int v6, v6, v21

    .line 1420
    .line 1421
    :goto_2c
    if-ge v2, v6, :cond_41

    .line 1422
    .line 1423
    aget v8, v13, v2

    .line 1424
    .line 1425
    aget-byte v9, v32, v8

    .line 1426
    .line 1427
    const/16 v10, 0xff

    .line 1428
    .line 1429
    and-int/2addr v9, v10

    .line 1430
    aget-boolean v10, v31, v9

    .line 1431
    .line 1432
    if-nez v10, :cond_40

    .line 1433
    .line 1434
    aget v10, v1, v9

    .line 1435
    .line 1436
    if-nez v8, :cond_3f

    .line 1437
    .line 1438
    move/from16 v8, v27

    .line 1439
    .line 1440
    goto :goto_2d

    .line 1441
    :cond_3f
    add-int/lit8 v8, v8, -0x1

    .line 1442
    .line 1443
    :goto_2d
    aput v8, v13, v10

    .line 1444
    .line 1445
    aget v8, v1, v9

    .line 1446
    .line 1447
    const/4 v10, 0x1

    .line 1448
    add-int/2addr v8, v10

    .line 1449
    aput v8, v1, v9

    .line 1450
    .line 1451
    :cond_40
    add-int/lit8 v2, v2, 0x1

    .line 1452
    .line 1453
    goto :goto_2c

    .line 1454
    :cond_41
    const/4 v1, -0x1

    .line 1455
    const/16 v2, 0x100

    .line 1456
    .line 1457
    :goto_2e
    add-int/2addr v2, v1

    .line 1458
    if-ltz v2, :cond_42

    .line 1459
    .line 1460
    shl-int/lit8 v1, v2, 0x8

    .line 1461
    .line 1462
    add-int v1, v1, v33

    .line 1463
    .line 1464
    aget v6, v37, v1

    .line 1465
    .line 1466
    const/high16 v8, 0x200000

    .line 1467
    .line 1468
    or-int/2addr v6, v8

    .line 1469
    aput v6, v37, v1

    .line 1470
    .line 1471
    const/4 v1, -0x1

    .line 1472
    goto :goto_2e

    .line 1473
    :cond_42
    const/4 v1, 0x1

    .line 1474
    aput-boolean v1, v31, v33

    .line 1475
    .line 1476
    move/from16 v2, v30

    .line 1477
    .line 1478
    const/16 v1, 0xff

    .line 1479
    .line 1480
    if-ge v2, v1, :cond_45

    .line 1481
    .line 1482
    aget v0, v37, v0

    .line 1483
    .line 1484
    and-int v0, v0, v21

    .line 1485
    .line 1486
    aget v5, v37, v5

    .line 1487
    .line 1488
    and-int v5, v5, v21

    .line 1489
    .line 1490
    sub-int/2addr v5, v0

    .line 1491
    const/4 v6, 0x0

    .line 1492
    :goto_2f
    shr-int v8, v5, v6

    .line 1493
    .line 1494
    const v9, 0xfffe

    .line 1495
    .line 1496
    .line 1497
    if-le v8, v9, :cond_43

    .line 1498
    .line 1499
    add-int/lit8 v6, v6, 0x1

    .line 1500
    .line 1501
    goto :goto_2f

    .line 1502
    :cond_43
    const/4 v8, 0x0

    .line 1503
    :goto_30
    if-ge v8, v5, :cond_45

    .line 1504
    .line 1505
    add-int v9, v0, v8

    .line 1506
    .line 1507
    aget v9, v13, v9

    .line 1508
    .line 1509
    shr-int v10, v8, v6

    .line 1510
    .line 1511
    int-to-char v10, v10

    .line 1512
    aput-char v10, v39, v9

    .line 1513
    .line 1514
    const/16 v11, 0x14

    .line 1515
    .line 1516
    if-ge v9, v11, :cond_44

    .line 1517
    .line 1518
    add-int v9, v9, v27

    .line 1519
    .line 1520
    const/4 v12, 0x1

    .line 1521
    add-int/2addr v9, v12

    .line 1522
    aput-char v10, v39, v9

    .line 1523
    .line 1524
    :cond_44
    add-int/lit8 v8, v8, 0x1

    .line 1525
    .line 1526
    goto :goto_30

    .line 1527
    :cond_45
    const/16 v11, 0x14

    .line 1528
    .line 1529
    add-int/lit8 v0, v2, 0x1

    .line 1530
    .line 1531
    move v6, v3

    .line 1532
    move v9, v7

    .line 1533
    move-object/from16 v7, v25

    .line 1534
    .line 1535
    move/from16 v3, v27

    .line 1536
    .line 1537
    move-object/from16 v2, v31

    .line 1538
    .line 1539
    move-object/from16 v10, v32

    .line 1540
    .line 1541
    move-object/from16 v5, v34

    .line 1542
    .line 1543
    move-object/from16 v11, v37

    .line 1544
    .line 1545
    move-object/from16 v15, v39

    .line 1546
    .line 1547
    goto/16 :goto_a

    .line 1548
    .line 1549
    :cond_46
    move/from16 v27, v3

    .line 1550
    .line 1551
    move-object/from16 v34, v5

    .line 1552
    .line 1553
    :goto_31
    iget-boolean v0, v4, Lng/e;->c:Z

    .line 1554
    .line 1555
    if-eqz v0, :cond_47

    .line 1556
    .line 1557
    iget v0, v4, Lng/e;->a:I

    .line 1558
    .line 1559
    iget v1, v4, Lng/e;->b:I

    .line 1560
    .line 1561
    if-le v0, v1, :cond_47

    .line 1562
    .line 1563
    move/from16 v0, v27

    .line 1564
    .line 1565
    move-object/from16 v1, v34

    .line 1566
    .line 1567
    invoke-virtual {v4, v1, v0}, Lng/e;->a(Lng/c;I)V

    .line 1568
    .line 1569
    .line 1570
    goto :goto_32

    .line 1571
    :cond_47
    move/from16 v0, v27

    .line 1572
    .line 1573
    move-object/from16 v1, v34

    .line 1574
    .line 1575
    :goto_32
    iget-object v2, v1, Lng/c;->r:[I

    .line 1576
    .line 1577
    const/4 v3, -0x1

    .line 1578
    iput v3, v1, Lng/c;->t:I

    .line 1579
    .line 1580
    const/4 v3, 0x0

    .line 1581
    :goto_33
    if-gt v3, v0, :cond_49

    .line 1582
    .line 1583
    aget v4, v2, v3

    .line 1584
    .line 1585
    if-nez v4, :cond_48

    .line 1586
    .line 1587
    iput v3, v1, Lng/c;->t:I

    .line 1588
    .line 1589
    goto :goto_34

    .line 1590
    :cond_48
    add-int/lit8 v3, v3, 0x1

    .line 1591
    .line 1592
    goto :goto_33

    .line 1593
    :cond_49
    :goto_34
    const/16 v0, 0x31

    .line 1594
    .line 1595
    move-object/from16 v1, p0

    .line 1596
    .line 1597
    invoke-virtual {v1, v0}, Lng/d;->A(I)V

    .line 1598
    .line 1599
    .line 1600
    const/16 v0, 0x41

    .line 1601
    .line 1602
    invoke-virtual {v1, v0}, Lng/d;->A(I)V

    .line 1603
    .line 1604
    .line 1605
    const/16 v0, 0x59

    .line 1606
    .line 1607
    invoke-virtual {v1, v0}, Lng/d;->A(I)V

    .line 1608
    .line 1609
    .line 1610
    const/16 v2, 0x26

    .line 1611
    .line 1612
    invoke-virtual {v1, v2}, Lng/d;->A(I)V

    .line 1613
    .line 1614
    .line 1615
    const/16 v2, 0x53

    .line 1616
    .line 1617
    invoke-virtual {v1, v2}, Lng/d;->A(I)V

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v1, v0}, Lng/d;->A(I)V

    .line 1621
    .line 1622
    .line 1623
    move/from16 v0, v22

    .line 1624
    .line 1625
    invoke-virtual {v1, v0}, Lng/d;->r(I)V

    .line 1626
    .line 1627
    .line 1628
    const/4 v0, 0x0

    .line 1629
    const/4 v2, 0x1

    .line 1630
    invoke-virtual {v1, v2, v0}, Lng/d;->J(II)V

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual/range {p0 .. p0}, Lng/d;->N()V

    .line 1634
    .line 1635
    .line 1636
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lng/d;->A(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x72

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lng/d;->A(I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x45

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lng/d;->A(I)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x38

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lng/d;->A(I)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x50

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lng/d;->A(I)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x90

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lng/d;->A(I)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lng/d;->j:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lng/d;->r(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget v0, p0, Lng/d;->d:I

    .line 37
    .line 38
    if-lez v0, :cond_0

    .line 39
    .line 40
    iget v0, p0, Lng/d;->c:I

    .line 41
    .line 42
    shr-int/lit8 v0, v0, 0x18

    .line 43
    .line 44
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lng/d;->c:I

    .line 50
    .line 51
    shl-int/lit8 v0, v0, 0x8

    .line 52
    .line 53
    iput v0, p0, Lng/d;->c:I

    .line 54
    .line 55
    iget v0, p0, Lng/d;->d:I

    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x8

    .line 58
    .line 59
    iput v0, p0, Lng/d;->d:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public final N()V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lng/d;->l:Lng/c;

    .line 4
    .line 5
    iget v1, v1, Lng/c;->t:I

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lng/d;->J(II)V

    .line 10
    .line 11
    .line 12
    iget v1, v0, Lng/d;->b:I

    .line 13
    .line 14
    iget-object v2, v0, Lng/d;->l:Lng/c;

    .line 15
    .line 16
    iget-object v3, v2, Lng/c;->a:[Z

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_0
    const/16 v7, 0x100

    .line 22
    .line 23
    iget-object v8, v2, Lng/c;->b:[B

    .line 24
    .line 25
    if-ge v5, v7, :cond_1

    .line 26
    .line 27
    aget-boolean v7, v3, v5

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    int-to-byte v7, v6

    .line 32
    aput-byte v7, v8, v5

    .line 33
    .line 34
    add-int/lit8 v6, v6, 0x1

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iput v6, v0, Lng/d;->f:I

    .line 40
    .line 41
    add-int/lit8 v3, v6, 0x1

    .line 42
    .line 43
    add-int/lit8 v5, v6, 0x2

    .line 44
    .line 45
    iget-object v7, v2, Lng/c;->c:[I

    .line 46
    .line 47
    invoke-static {v7, v4, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 48
    .line 49
    .line 50
    :goto_1
    const/4 v5, -0x1

    .line 51
    add-int/2addr v6, v5

    .line 52
    iget-object v9, v2, Lng/c;->f:[B

    .line 53
    .line 54
    if-ltz v6, :cond_2

    .line 55
    .line 56
    int-to-byte v5, v6

    .line 57
    aput-byte v5, v9, v6

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v6, 0x0

    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v11, 0x0

    .line 63
    :goto_2
    const/4 v12, 0x2

    .line 64
    const/4 v13, 0x1

    .line 65
    iget-object v14, v2, Lng/c;->s:[C

    .line 66
    .line 67
    if-gt v6, v1, :cond_8

    .line 68
    .line 69
    iget-object v15, v2, Lng/c;->r:[I

    .line 70
    .line 71
    aget v15, v15, v6

    .line 72
    .line 73
    iget-object v5, v2, Lng/c;->q:[B

    .line 74
    .line 75
    aget-byte v5, v5, v15

    .line 76
    .line 77
    and-int/lit16 v5, v5, 0xff

    .line 78
    .line 79
    aget-byte v5, v8, v5

    .line 80
    .line 81
    aget-byte v15, v9, v4

    .line 82
    .line 83
    const/16 v17, 0x0

    .line 84
    .line 85
    :goto_3
    if-eq v5, v15, :cond_3

    .line 86
    .line 87
    add-int/lit8 v17, v17, 0x1

    .line 88
    .line 89
    aget-byte v18, v9, v17

    .line 90
    .line 91
    aput-byte v15, v9, v17

    .line 92
    .line 93
    move/from16 v15, v18

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    aput-byte v15, v9, v4

    .line 97
    .line 98
    if-nez v17, :cond_4

    .line 99
    .line 100
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_4
    if-lez v10, :cond_7

    .line 104
    .line 105
    add-int/lit8 v10, v10, -0x1

    .line 106
    .line 107
    :goto_4
    and-int/lit8 v5, v10, 0x1

    .line 108
    .line 109
    if-nez v5, :cond_5

    .line 110
    .line 111
    aput-char v4, v14, v11

    .line 112
    .line 113
    add-int/lit8 v11, v11, 0x1

    .line 114
    .line 115
    aget v5, v7, v4

    .line 116
    .line 117
    add-int/2addr v5, v13

    .line 118
    aput v5, v7, v4

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    aput-char v13, v14, v11

    .line 122
    .line 123
    add-int/lit8 v11, v11, 0x1

    .line 124
    .line 125
    aget v5, v7, v13

    .line 126
    .line 127
    add-int/2addr v5, v13

    .line 128
    aput v5, v7, v13

    .line 129
    .line 130
    :goto_5
    if-ge v10, v12, :cond_6

    .line 131
    .line 132
    const/4 v10, 0x0

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    add-int/lit8 v10, v10, -0x2

    .line 135
    .line 136
    shr-int/2addr v10, v13

    .line 137
    goto :goto_4

    .line 138
    :cond_7
    :goto_6
    add-int/lit8 v5, v17, 0x1

    .line 139
    .line 140
    int-to-char v12, v5

    .line 141
    aput-char v12, v14, v11

    .line 142
    .line 143
    add-int/2addr v11, v13

    .line 144
    aget v12, v7, v5

    .line 145
    .line 146
    add-int/2addr v12, v13

    .line 147
    aput v12, v7, v5

    .line 148
    .line 149
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    const/4 v5, -0x1

    .line 152
    goto :goto_2

    .line 153
    :cond_8
    if-lez v10, :cond_b

    .line 154
    .line 155
    const/4 v1, -0x1

    .line 156
    add-int/2addr v10, v1

    .line 157
    :goto_8
    and-int/lit8 v1, v10, 0x1

    .line 158
    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    aput-char v4, v14, v11

    .line 162
    .line 163
    add-int/lit8 v11, v11, 0x1

    .line 164
    .line 165
    aget v1, v7, v4

    .line 166
    .line 167
    add-int/2addr v1, v13

    .line 168
    aput v1, v7, v4

    .line 169
    .line 170
    goto :goto_9

    .line 171
    :cond_9
    aput-char v13, v14, v11

    .line 172
    .line 173
    add-int/lit8 v11, v11, 0x1

    .line 174
    .line 175
    aget v1, v7, v13

    .line 176
    .line 177
    add-int/2addr v1, v13

    .line 178
    aput v1, v7, v13

    .line 179
    .line 180
    :goto_9
    if-ge v10, v12, :cond_a

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_a
    add-int/lit8 v10, v10, -0x2

    .line 184
    .line 185
    shr-int/2addr v10, v13

    .line 186
    goto :goto_8

    .line 187
    :cond_b
    :goto_a
    int-to-char v1, v3

    .line 188
    aput-char v1, v14, v11

    .line 189
    .line 190
    aget v1, v7, v3

    .line 191
    .line 192
    add-int/2addr v1, v13

    .line 193
    aput v1, v7, v3

    .line 194
    .line 195
    add-int/2addr v11, v13

    .line 196
    iput v11, v0, Lng/d;->g:I

    .line 197
    .line 198
    iget-object v1, v0, Lng/d;->l:Lng/c;

    .line 199
    .line 200
    iget-object v1, v1, Lng/c;->g:[[B

    .line 201
    .line 202
    iget v2, v0, Lng/d;->f:I

    .line 203
    .line 204
    add-int/lit8 v3, v2, 0x2

    .line 205
    .line 206
    const/4 v6, -0x1

    .line 207
    const/4 v7, 0x6

    .line 208
    :goto_b
    add-int/2addr v7, v6

    .line 209
    const/16 v8, 0xf

    .line 210
    .line 211
    if-ltz v7, :cond_d

    .line 212
    .line 213
    aget-object v9, v1, v7

    .line 214
    .line 215
    move v10, v3

    .line 216
    :goto_c
    add-int/2addr v10, v6

    .line 217
    if-ltz v10, :cond_c

    .line 218
    .line 219
    aput-byte v8, v9, v10

    .line 220
    .line 221
    const/4 v6, -0x1

    .line 222
    goto :goto_c

    .line 223
    :cond_c
    const/4 v6, -0x1

    .line 224
    goto :goto_b

    .line 225
    :cond_d
    iget v1, v0, Lng/d;->g:I

    .line 226
    .line 227
    const/16 v7, 0xc8

    .line 228
    .line 229
    if-ge v1, v7, :cond_e

    .line 230
    .line 231
    const/4 v7, 0x2

    .line 232
    goto :goto_d

    .line 233
    :cond_e
    const/16 v7, 0x258

    .line 234
    .line 235
    if-ge v1, v7, :cond_f

    .line 236
    .line 237
    const/4 v7, 0x3

    .line 238
    goto :goto_d

    .line 239
    :cond_f
    const/16 v7, 0x4b0

    .line 240
    .line 241
    if-ge v1, v7, :cond_10

    .line 242
    .line 243
    const/4 v7, 0x4

    .line 244
    goto :goto_d

    .line 245
    :cond_10
    const/16 v7, 0x960

    .line 246
    .line 247
    if-ge v1, v7, :cond_11

    .line 248
    .line 249
    const/4 v7, 0x5

    .line 250
    goto :goto_d

    .line 251
    :cond_11
    const/4 v7, 0x6

    .line 252
    :goto_d
    iget-object v11, v0, Lng/d;->l:Lng/c;

    .line 253
    .line 254
    iget-object v14, v11, Lng/c;->g:[[B

    .line 255
    .line 256
    move v15, v7

    .line 257
    const/4 v5, 0x0

    .line 258
    :goto_e
    if-lez v15, :cond_16

    .line 259
    .line 260
    div-int v6, v1, v15

    .line 261
    .line 262
    add-int/lit8 v19, v5, -0x1

    .line 263
    .line 264
    add-int/lit8 v9, v2, 0x1

    .line 265
    .line 266
    move/from16 v10, v19

    .line 267
    .line 268
    const/4 v12, 0x0

    .line 269
    :goto_f
    iget-object v8, v11, Lng/c;->c:[I

    .line 270
    .line 271
    if-ge v12, v6, :cond_12

    .line 272
    .line 273
    if-ge v10, v9, :cond_12

    .line 274
    .line 275
    add-int/lit8 v10, v10, 0x1

    .line 276
    .line 277
    aget v8, v8, v10

    .line 278
    .line 279
    add-int/2addr v12, v8

    .line 280
    goto :goto_f

    .line 281
    :cond_12
    if-le v10, v5, :cond_13

    .line 282
    .line 283
    if-eq v15, v7, :cond_13

    .line 284
    .line 285
    if-eq v15, v13, :cond_13

    .line 286
    .line 287
    sub-int v6, v7, v15

    .line 288
    .line 289
    and-int/2addr v6, v13

    .line 290
    if-eqz v6, :cond_13

    .line 291
    .line 292
    add-int/lit8 v6, v10, -0x1

    .line 293
    .line 294
    aget v8, v8, v10

    .line 295
    .line 296
    sub-int/2addr v12, v8

    .line 297
    move v10, v6

    .line 298
    :cond_13
    add-int/lit8 v6, v15, -0x1

    .line 299
    .line 300
    aget-object v6, v14, v6

    .line 301
    .line 302
    move v9, v3

    .line 303
    :goto_10
    const/4 v8, -0x1

    .line 304
    add-int/2addr v9, v8

    .line 305
    if-ltz v9, :cond_15

    .line 306
    .line 307
    if-lt v9, v5, :cond_14

    .line 308
    .line 309
    if-gt v9, v10, :cond_14

    .line 310
    .line 311
    aput-byte v4, v6, v9

    .line 312
    .line 313
    goto :goto_10

    .line 314
    :cond_14
    const/16 v8, 0xf

    .line 315
    .line 316
    aput-byte v8, v6, v9

    .line 317
    .line 318
    goto :goto_10

    .line 319
    :cond_15
    add-int/lit8 v5, v10, 0x1

    .line 320
    .line 321
    sub-int/2addr v1, v12

    .line 322
    add-int/lit8 v15, v15, -0x1

    .line 323
    .line 324
    const/16 v8, 0xf

    .line 325
    .line 326
    const/4 v12, 0x2

    .line 327
    goto :goto_e

    .line 328
    :cond_16
    iget-object v1, v0, Lng/d;->l:Lng/c;

    .line 329
    .line 330
    iget-object v2, v1, Lng/c;->h:[[I

    .line 331
    .line 332
    iget-object v5, v1, Lng/c;->g:[[B

    .line 333
    .line 334
    aget-object v6, v5, v4

    .line 335
    .line 336
    aget-object v8, v5, v13

    .line 337
    .line 338
    const/4 v9, 0x2

    .line 339
    aget-object v10, v5, v9

    .line 340
    .line 341
    const/4 v9, 0x3

    .line 342
    aget-object v11, v5, v9

    .line 343
    .line 344
    const/4 v9, 0x4

    .line 345
    aget-object v12, v5, v9

    .line 346
    .line 347
    const/4 v14, 0x5

    .line 348
    aget-object v15, v5, v14

    .line 349
    .line 350
    iget v14, v0, Lng/d;->g:I

    .line 351
    .line 352
    const/4 v13, 0x0

    .line 353
    const/16 v22, 0x0

    .line 354
    .line 355
    :goto_11
    if-ge v13, v9, :cond_36

    .line 356
    .line 357
    move/from16 v16, v7

    .line 358
    .line 359
    :goto_12
    const/4 v9, -0x1

    .line 360
    add-int/lit8 v22, v16, -0x1

    .line 361
    .line 362
    iget-object v4, v1, Lng/c;->i:[I

    .line 363
    .line 364
    if-ltz v22, :cond_18

    .line 365
    .line 366
    const/16 v23, 0x0

    .line 367
    .line 368
    aput v23, v4, v22

    .line 369
    .line 370
    aget-object v4, v2, v22

    .line 371
    .line 372
    move/from16 v16, v3

    .line 373
    .line 374
    :goto_13
    add-int/lit8 v25, v16, -0x1

    .line 375
    .line 376
    if-ltz v25, :cond_17

    .line 377
    .line 378
    aput v23, v4, v25

    .line 379
    .line 380
    move/from16 v16, v25

    .line 381
    .line 382
    const/4 v9, -0x1

    .line 383
    const/16 v23, 0x0

    .line 384
    .line 385
    goto :goto_13

    .line 386
    :cond_17
    move/from16 v16, v22

    .line 387
    .line 388
    goto :goto_12

    .line 389
    :cond_18
    move/from16 v25, v13

    .line 390
    .line 391
    const/4 v9, 0x0

    .line 392
    const/16 v22, 0x0

    .line 393
    .line 394
    :goto_14
    iget v13, v0, Lng/d;->g:I

    .line 395
    .line 396
    if-ge v9, v13, :cond_21

    .line 397
    .line 398
    add-int/lit8 v13, v9, 0x31

    .line 399
    .line 400
    move/from16 v26, v9

    .line 401
    .line 402
    const/16 v21, 0x1

    .line 403
    .line 404
    add-int/lit8 v9, v14, -0x1

    .line 405
    .line 406
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    .line 407
    .line 408
    .line 409
    move-result v9

    .line 410
    iget-object v13, v1, Lng/c;->j:[S

    .line 411
    .line 412
    move/from16 v27, v14

    .line 413
    .line 414
    iget-object v14, v1, Lng/c;->s:[C

    .line 415
    .line 416
    move/from16 v28, v3

    .line 417
    .line 418
    const/4 v3, 0x6

    .line 419
    if-ne v7, v3, :cond_1a

    .line 420
    .line 421
    move/from16 v3, v26

    .line 422
    .line 423
    const/16 v17, 0x0

    .line 424
    .line 425
    const/16 v29, 0x0

    .line 426
    .line 427
    const/16 v30, 0x0

    .line 428
    .line 429
    const/16 v31, 0x0

    .line 430
    .line 431
    const/16 v32, 0x0

    .line 432
    .line 433
    const/16 v33, 0x0

    .line 434
    .line 435
    :goto_15
    if-gt v3, v9, :cond_19

    .line 436
    .line 437
    aget-char v34, v14, v3

    .line 438
    .line 439
    aget-byte v0, v6, v34

    .line 440
    .line 441
    int-to-short v0, v0

    .line 442
    add-int v0, v17, v0

    .line 443
    .line 444
    int-to-short v0, v0

    .line 445
    move/from16 v17, v0

    .line 446
    .line 447
    aget-byte v0, v8, v34

    .line 448
    .line 449
    int-to-short v0, v0

    .line 450
    add-int v0, v29, v0

    .line 451
    .line 452
    int-to-short v0, v0

    .line 453
    move/from16 v29, v0

    .line 454
    .line 455
    aget-byte v0, v10, v34

    .line 456
    .line 457
    int-to-short v0, v0

    .line 458
    add-int v0, v30, v0

    .line 459
    .line 460
    int-to-short v0, v0

    .line 461
    move/from16 v30, v0

    .line 462
    .line 463
    aget-byte v0, v11, v34

    .line 464
    .line 465
    int-to-short v0, v0

    .line 466
    add-int v0, v31, v0

    .line 467
    .line 468
    int-to-short v0, v0

    .line 469
    move/from16 v31, v0

    .line 470
    .line 471
    aget-byte v0, v12, v34

    .line 472
    .line 473
    int-to-short v0, v0

    .line 474
    add-int v0, v32, v0

    .line 475
    .line 476
    int-to-short v0, v0

    .line 477
    move/from16 v32, v0

    .line 478
    .line 479
    aget-byte v0, v15, v34

    .line 480
    .line 481
    int-to-short v0, v0

    .line 482
    add-int v0, v33, v0

    .line 483
    .line 484
    int-to-short v0, v0

    .line 485
    add-int/lit8 v3, v3, 0x1

    .line 486
    .line 487
    move/from16 v33, v0

    .line 488
    .line 489
    move-object/from16 v0, p0

    .line 490
    .line 491
    goto :goto_15

    .line 492
    :cond_19
    const/4 v0, 0x0

    .line 493
    aput-short v17, v13, v0

    .line 494
    .line 495
    const/4 v3, 0x1

    .line 496
    aput-short v29, v13, v3

    .line 497
    .line 498
    const/4 v3, 0x2

    .line 499
    aput-short v30, v13, v3

    .line 500
    .line 501
    const/4 v3, 0x3

    .line 502
    aput-short v31, v13, v3

    .line 503
    .line 504
    const/4 v3, 0x4

    .line 505
    aput-short v32, v13, v3

    .line 506
    .line 507
    const/16 v17, 0x5

    .line 508
    .line 509
    aput-short v33, v13, v17

    .line 510
    .line 511
    goto :goto_19

    .line 512
    :cond_1a
    const/4 v0, 0x0

    .line 513
    const/4 v3, 0x4

    .line 514
    const/16 v17, 0x5

    .line 515
    .line 516
    move/from16 v18, v7

    .line 517
    .line 518
    const/16 v16, -0x1

    .line 519
    .line 520
    :goto_16
    add-int/lit8 v18, v18, -0x1

    .line 521
    .line 522
    if-ltz v18, :cond_1b

    .line 523
    .line 524
    aput-short v0, v13, v18

    .line 525
    .line 526
    goto :goto_16

    .line 527
    :cond_1b
    move/from16 v0, v26

    .line 528
    .line 529
    :goto_17
    if-gt v0, v9, :cond_1d

    .line 530
    .line 531
    aget-char v18, v14, v0

    .line 532
    .line 533
    move/from16 v20, v7

    .line 534
    .line 535
    :goto_18
    add-int/lit8 v20, v20, -0x1

    .line 536
    .line 537
    if-ltz v20, :cond_1c

    .line 538
    .line 539
    aget-short v29, v13, v20

    .line 540
    .line 541
    aget-object v30, v5, v20

    .line 542
    .line 543
    aget-byte v3, v30, v18

    .line 544
    .line 545
    int-to-short v3, v3

    .line 546
    add-int v3, v29, v3

    .line 547
    .line 548
    int-to-short v3, v3

    .line 549
    aput-short v3, v13, v20

    .line 550
    .line 551
    const/4 v3, 0x4

    .line 552
    const/16 v16, -0x1

    .line 553
    .line 554
    goto :goto_18

    .line 555
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 556
    .line 557
    const/4 v3, 0x4

    .line 558
    const/16 v16, -0x1

    .line 559
    .line 560
    goto :goto_17

    .line 561
    :cond_1d
    :goto_19
    const v0, 0x3b9ac9ff

    .line 562
    .line 563
    .line 564
    move/from16 v18, v7

    .line 565
    .line 566
    const/4 v3, -0x1

    .line 567
    :goto_1a
    const/16 v16, -0x1

    .line 568
    .line 569
    add-int/lit8 v18, v18, -0x1

    .line 570
    .line 571
    if-ltz v18, :cond_1f

    .line 572
    .line 573
    move-object/from16 v20, v6

    .line 574
    .line 575
    aget-short v6, v13, v18

    .line 576
    .line 577
    if-ge v6, v0, :cond_1e

    .line 578
    .line 579
    move v0, v6

    .line 580
    move/from16 v3, v18

    .line 581
    .line 582
    :cond_1e
    move-object/from16 v6, v20

    .line 583
    .line 584
    goto :goto_1a

    .line 585
    :cond_1f
    move-object/from16 v20, v6

    .line 586
    .line 587
    aget v0, v4, v3

    .line 588
    .line 589
    const/4 v6, 0x1

    .line 590
    add-int/2addr v0, v6

    .line 591
    aput v0, v4, v3

    .line 592
    .line 593
    int-to-byte v0, v3

    .line 594
    iget-object v6, v1, Lng/c;->d:[B

    .line 595
    .line 596
    aput-byte v0, v6, v22

    .line 597
    .line 598
    add-int/lit8 v22, v22, 0x1

    .line 599
    .line 600
    aget-object v0, v2, v3

    .line 601
    .line 602
    move/from16 v3, v26

    .line 603
    .line 604
    :goto_1b
    if-gt v3, v9, :cond_20

    .line 605
    .line 606
    aget-char v6, v14, v3

    .line 607
    .line 608
    aget v13, v0, v6

    .line 609
    .line 610
    const/16 v18, 0x1

    .line 611
    .line 612
    add-int/lit8 v13, v13, 0x1

    .line 613
    .line 614
    aput v13, v0, v6

    .line 615
    .line 616
    add-int/lit8 v3, v3, 0x1

    .line 617
    .line 618
    goto :goto_1b

    .line 619
    :cond_20
    add-int/lit8 v9, v9, 0x1

    .line 620
    .line 621
    move-object/from16 v0, p0

    .line 622
    .line 623
    move-object/from16 v6, v20

    .line 624
    .line 625
    move/from16 v14, v27

    .line 626
    .line 627
    move/from16 v3, v28

    .line 628
    .line 629
    goto/16 :goto_14

    .line 630
    .line 631
    :cond_21
    move/from16 v28, v3

    .line 632
    .line 633
    move-object/from16 v20, v6

    .line 634
    .line 635
    move/from16 v27, v14

    .line 636
    .line 637
    const/16 v17, 0x5

    .line 638
    .line 639
    const/4 v0, 0x0

    .line 640
    :goto_1c
    if-ge v0, v7, :cond_35

    .line 641
    .line 642
    aget-object v3, v5, v0

    .line 643
    .line 644
    aget-object v4, v2, v0

    .line 645
    .line 646
    move-object/from16 v6, p0

    .line 647
    .line 648
    iget-object v9, v6, Lng/d;->l:Lng/c;

    .line 649
    .line 650
    iget-object v13, v9, Lng/c;->n:[I

    .line 651
    .line 652
    move/from16 v14, v28

    .line 653
    .line 654
    :goto_1d
    add-int/lit8 v18, v14, -0x1

    .line 655
    .line 656
    move-object/from16 v26, v1

    .line 657
    .line 658
    iget-object v1, v9, Lng/c;->o:[I

    .line 659
    .line 660
    if-ltz v18, :cond_23

    .line 661
    .line 662
    aget v29, v4, v18

    .line 663
    .line 664
    const/16 v24, 0x8

    .line 665
    .line 666
    if-nez v29, :cond_22

    .line 667
    .line 668
    const/16 v29, 0x1

    .line 669
    .line 670
    :cond_22
    shl-int/lit8 v29, v29, 0x8

    .line 671
    .line 672
    aput v29, v1, v14

    .line 673
    .line 674
    move/from16 v14, v18

    .line 675
    .line 676
    move-object/from16 v1, v26

    .line 677
    .line 678
    goto :goto_1d

    .line 679
    :cond_23
    const/4 v4, 0x1

    .line 680
    :goto_1e
    if-eqz v4, :cond_34

    .line 681
    .line 682
    const/4 v4, 0x0

    .line 683
    aput v4, v13, v4

    .line 684
    .line 685
    aput v4, v1, v4

    .line 686
    .line 687
    iget-object v14, v9, Lng/c;->p:[I

    .line 688
    .line 689
    const/16 v18, -0x2

    .line 690
    .line 691
    aput v18, v14, v4

    .line 692
    .line 693
    const/4 v4, 0x1

    .line 694
    const/16 v18, 0x0

    .line 695
    .line 696
    move/from16 v41, v28

    .line 697
    .line 698
    move-object/from16 v28, v2

    .line 699
    .line 700
    move/from16 v2, v41

    .line 701
    .line 702
    :goto_1f
    if-gt v4, v2, :cond_25

    .line 703
    .line 704
    const/16 v16, -0x1

    .line 705
    .line 706
    aput v16, v14, v4

    .line 707
    .line 708
    add-int/lit8 v18, v18, 0x1

    .line 709
    .line 710
    aput v4, v13, v18

    .line 711
    .line 712
    move-object/from16 v30, v5

    .line 713
    .line 714
    move/from16 v29, v18

    .line 715
    .line 716
    :goto_20
    aget v5, v1, v4

    .line 717
    .line 718
    shr-int/lit8 v32, v29, 0x1

    .line 719
    .line 720
    aget v33, v13, v32

    .line 721
    .line 722
    move-object/from16 v34, v8

    .line 723
    .line 724
    aget v8, v1, v33

    .line 725
    .line 726
    if-ge v5, v8, :cond_24

    .line 727
    .line 728
    aput v33, v13, v29

    .line 729
    .line 730
    move/from16 v29, v32

    .line 731
    .line 732
    move-object/from16 v8, v34

    .line 733
    .line 734
    goto :goto_20

    .line 735
    :cond_24
    aput v4, v13, v29

    .line 736
    .line 737
    add-int/lit8 v4, v4, 0x1

    .line 738
    .line 739
    move-object/from16 v5, v30

    .line 740
    .line 741
    move-object/from16 v8, v34

    .line 742
    .line 743
    goto :goto_1f

    .line 744
    :cond_25
    move-object/from16 v30, v5

    .line 745
    .line 746
    move-object/from16 v34, v8

    .line 747
    .line 748
    move v8, v2

    .line 749
    move/from16 v4, v18

    .line 750
    .line 751
    :goto_21
    const/4 v5, 0x1

    .line 752
    if-le v4, v5, :cond_2f

    .line 753
    .line 754
    aget v18, v13, v5

    .line 755
    .line 756
    aget v29, v13, v4

    .line 757
    .line 758
    aput v29, v13, v5

    .line 759
    .line 760
    add-int/lit8 v5, v4, -0x1

    .line 761
    .line 762
    const/16 v32, 0x1

    .line 763
    .line 764
    :goto_22
    move-object/from16 v33, v9

    .line 765
    .line 766
    shl-int/lit8 v9, v32, 0x1

    .line 767
    .line 768
    if-le v9, v5, :cond_26

    .line 769
    .line 770
    move-object/from16 v37, v10

    .line 771
    .line 772
    move-object/from16 v36, v11

    .line 773
    .line 774
    goto :goto_24

    .line 775
    :cond_26
    if-ge v9, v5, :cond_27

    .line 776
    .line 777
    add-int/lit8 v35, v9, 0x1

    .line 778
    .line 779
    aget v36, v13, v35

    .line 780
    .line 781
    move-object/from16 v37, v10

    .line 782
    .line 783
    aget v10, v1, v36

    .line 784
    .line 785
    aget v36, v13, v9

    .line 786
    .line 787
    move/from16 v38, v9

    .line 788
    .line 789
    aget v9, v1, v36

    .line 790
    .line 791
    if-ge v10, v9, :cond_28

    .line 792
    .line 793
    goto :goto_23

    .line 794
    :cond_27
    move/from16 v38, v9

    .line 795
    .line 796
    move-object/from16 v37, v10

    .line 797
    .line 798
    :cond_28
    move/from16 v35, v38

    .line 799
    .line 800
    :goto_23
    aget v9, v1, v29

    .line 801
    .line 802
    aget v10, v13, v35

    .line 803
    .line 804
    move-object/from16 v36, v11

    .line 805
    .line 806
    aget v11, v1, v10

    .line 807
    .line 808
    if-ge v9, v11, :cond_2e

    .line 809
    .line 810
    :goto_24
    aput v29, v13, v32

    .line 811
    .line 812
    const/4 v9, 0x1

    .line 813
    aget v11, v13, v9

    .line 814
    .line 815
    aget v38, v13, v5

    .line 816
    .line 817
    aput v38, v13, v9

    .line 818
    .line 819
    add-int/lit8 v9, v4, -0x2

    .line 820
    .line 821
    const/4 v4, 0x1

    .line 822
    :goto_25
    shl-int/lit8 v10, v4, 0x1

    .line 823
    .line 824
    if-le v10, v9, :cond_29

    .line 825
    .line 826
    move-object/from16 v40, v12

    .line 827
    .line 828
    goto :goto_27

    .line 829
    :cond_29
    if-ge v10, v9, :cond_2a

    .line 830
    .line 831
    add-int/lit8 v29, v10, 0x1

    .line 832
    .line 833
    aget v32, v13, v29

    .line 834
    .line 835
    move/from16 v39, v9

    .line 836
    .line 837
    aget v9, v1, v32

    .line 838
    .line 839
    aget v32, v13, v10

    .line 840
    .line 841
    move/from16 v35, v10

    .line 842
    .line 843
    aget v10, v1, v32

    .line 844
    .line 845
    if-ge v9, v10, :cond_2b

    .line 846
    .line 847
    goto :goto_26

    .line 848
    :cond_2a
    move/from16 v39, v9

    .line 849
    .line 850
    move/from16 v35, v10

    .line 851
    .line 852
    :cond_2b
    move/from16 v29, v35

    .line 853
    .line 854
    :goto_26
    aget v9, v1, v38

    .line 855
    .line 856
    aget v10, v13, v29

    .line 857
    .line 858
    move-object/from16 v40, v12

    .line 859
    .line 860
    aget v12, v1, v10

    .line 861
    .line 862
    if-ge v9, v12, :cond_2d

    .line 863
    .line 864
    :goto_27
    aput v38, v13, v4

    .line 865
    .line 866
    const/4 v4, 0x1

    .line 867
    add-int/2addr v8, v4

    .line 868
    aput v8, v14, v11

    .line 869
    .line 870
    aput v8, v14, v18

    .line 871
    .line 872
    aget v4, v1, v18

    .line 873
    .line 874
    aget v9, v1, v11

    .line 875
    .line 876
    and-int/lit16 v10, v4, -0x100

    .line 877
    .line 878
    and-int/lit16 v11, v9, -0x100

    .line 879
    .line 880
    add-int/2addr v10, v11

    .line 881
    and-int/lit16 v4, v4, 0xff

    .line 882
    .line 883
    and-int/lit16 v9, v9, 0xff

    .line 884
    .line 885
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 886
    .line 887
    .line 888
    move-result v4

    .line 889
    const/4 v9, 0x1

    .line 890
    add-int/2addr v4, v9

    .line 891
    or-int/2addr v4, v10

    .line 892
    aput v4, v1, v8

    .line 893
    .line 894
    const/4 v4, -0x1

    .line 895
    aput v4, v14, v8

    .line 896
    .line 897
    aput v8, v13, v5

    .line 898
    .line 899
    aget v4, v1, v8

    .line 900
    .line 901
    move v9, v5

    .line 902
    :goto_28
    shr-int/lit8 v10, v9, 0x1

    .line 903
    .line 904
    aget v11, v13, v10

    .line 905
    .line 906
    aget v12, v1, v11

    .line 907
    .line 908
    if-ge v4, v12, :cond_2c

    .line 909
    .line 910
    aput v11, v13, v9

    .line 911
    .line 912
    move v9, v10

    .line 913
    goto :goto_28

    .line 914
    :cond_2c
    aput v8, v13, v9

    .line 915
    .line 916
    move v4, v5

    .line 917
    move-object/from16 v9, v33

    .line 918
    .line 919
    move-object/from16 v11, v36

    .line 920
    .line 921
    move-object/from16 v10, v37

    .line 922
    .line 923
    move-object/from16 v12, v40

    .line 924
    .line 925
    goto/16 :goto_21

    .line 926
    .line 927
    :cond_2d
    aput v10, v13, v4

    .line 928
    .line 929
    move/from16 v4, v29

    .line 930
    .line 931
    move/from16 v9, v39

    .line 932
    .line 933
    move-object/from16 v12, v40

    .line 934
    .line 935
    goto :goto_25

    .line 936
    :cond_2e
    move-object/from16 v40, v12

    .line 937
    .line 938
    aput v10, v13, v32

    .line 939
    .line 940
    move-object/from16 v9, v33

    .line 941
    .line 942
    move/from16 v32, v35

    .line 943
    .line 944
    move-object/from16 v11, v36

    .line 945
    .line 946
    move-object/from16 v10, v37

    .line 947
    .line 948
    goto/16 :goto_22

    .line 949
    .line 950
    :cond_2f
    move-object/from16 v33, v9

    .line 951
    .line 952
    move-object/from16 v37, v10

    .line 953
    .line 954
    move-object/from16 v36, v11

    .line 955
    .line 956
    move-object/from16 v40, v12

    .line 957
    .line 958
    const/4 v4, 0x0

    .line 959
    const/4 v5, 0x1

    .line 960
    :goto_29
    if-gt v5, v2, :cond_32

    .line 961
    .line 962
    move v9, v5

    .line 963
    const/4 v8, 0x0

    .line 964
    :goto_2a
    aget v9, v14, v9

    .line 965
    .line 966
    if-ltz v9, :cond_30

    .line 967
    .line 968
    add-int/lit8 v8, v8, 0x1

    .line 969
    .line 970
    goto :goto_2a

    .line 971
    :cond_30
    add-int/lit8 v9, v5, -0x1

    .line 972
    .line 973
    int-to-byte v10, v8

    .line 974
    aput-byte v10, v3, v9

    .line 975
    .line 976
    const/16 v9, 0x14

    .line 977
    .line 978
    if-le v8, v9, :cond_31

    .line 979
    .line 980
    const/4 v4, 0x1

    .line 981
    :cond_31
    add-int/lit8 v5, v5, 0x1

    .line 982
    .line 983
    goto :goto_29

    .line 984
    :cond_32
    if-eqz v4, :cond_33

    .line 985
    .line 986
    const/4 v5, 0x1

    .line 987
    :goto_2b
    if-ge v5, v2, :cond_33

    .line 988
    .line 989
    aget v8, v1, v5

    .line 990
    .line 991
    shr-int/lit8 v8, v8, 0x9

    .line 992
    .line 993
    const/4 v9, 0x1

    .line 994
    add-int/2addr v8, v9

    .line 995
    const/16 v9, 0x8

    .line 996
    .line 997
    shl-int/2addr v8, v9

    .line 998
    aput v8, v1, v5

    .line 999
    .line 1000
    add-int/lit8 v5, v5, 0x1

    .line 1001
    .line 1002
    goto :goto_2b

    .line 1003
    :cond_33
    move-object/from16 v5, v30

    .line 1004
    .line 1005
    move-object/from16 v9, v33

    .line 1006
    .line 1007
    move-object/from16 v8, v34

    .line 1008
    .line 1009
    move-object/from16 v11, v36

    .line 1010
    .line 1011
    move-object/from16 v10, v37

    .line 1012
    .line 1013
    move-object/from16 v12, v40

    .line 1014
    .line 1015
    move-object/from16 v41, v28

    .line 1016
    .line 1017
    move/from16 v28, v2

    .line 1018
    .line 1019
    move-object/from16 v2, v41

    .line 1020
    .line 1021
    goto/16 :goto_1e

    .line 1022
    .line 1023
    :cond_34
    move-object/from16 v30, v5

    .line 1024
    .line 1025
    move-object/from16 v34, v8

    .line 1026
    .line 1027
    move-object/from16 v37, v10

    .line 1028
    .line 1029
    move-object/from16 v36, v11

    .line 1030
    .line 1031
    move-object/from16 v40, v12

    .line 1032
    .line 1033
    move/from16 v41, v28

    .line 1034
    .line 1035
    move-object/from16 v28, v2

    .line 1036
    .line 1037
    move/from16 v2, v41

    .line 1038
    .line 1039
    add-int/lit8 v0, v0, 0x1

    .line 1040
    .line 1041
    move-object/from16 v1, v26

    .line 1042
    .line 1043
    move-object/from16 v41, v28

    .line 1044
    .line 1045
    move/from16 v28, v2

    .line 1046
    .line 1047
    move-object/from16 v2, v41

    .line 1048
    .line 1049
    goto/16 :goto_1c

    .line 1050
    .line 1051
    :cond_35
    move-object/from16 v6, p0

    .line 1052
    .line 1053
    move-object/from16 v26, v1

    .line 1054
    .line 1055
    move-object/from16 v30, v5

    .line 1056
    .line 1057
    move-object/from16 v34, v8

    .line 1058
    .line 1059
    move-object/from16 v37, v10

    .line 1060
    .line 1061
    move-object/from16 v36, v11

    .line 1062
    .line 1063
    move-object/from16 v40, v12

    .line 1064
    .line 1065
    move/from16 v41, v28

    .line 1066
    .line 1067
    move-object/from16 v28, v2

    .line 1068
    .line 1069
    move/from16 v2, v41

    .line 1070
    .line 1071
    add-int/lit8 v13, v25, 0x1

    .line 1072
    .line 1073
    move v3, v2

    .line 1074
    move-object v0, v6

    .line 1075
    move-object/from16 v6, v20

    .line 1076
    .line 1077
    move/from16 v14, v27

    .line 1078
    .line 1079
    move-object/from16 v2, v28

    .line 1080
    .line 1081
    const/4 v9, 0x4

    .line 1082
    goto/16 :goto_11

    .line 1083
    .line 1084
    :cond_36
    move-object v6, v0

    .line 1085
    move v2, v3

    .line 1086
    iget-object v0, v6, Lng/d;->l:Lng/c;

    .line 1087
    .line 1088
    iget-object v1, v0, Lng/c;->l:[B

    .line 1089
    .line 1090
    move v4, v7

    .line 1091
    :goto_2c
    const/4 v3, -0x1

    .line 1092
    add-int/2addr v4, v3

    .line 1093
    if-ltz v4, :cond_37

    .line 1094
    .line 1095
    int-to-byte v3, v4

    .line 1096
    aput-byte v3, v1, v4

    .line 1097
    .line 1098
    goto :goto_2c

    .line 1099
    :cond_37
    move/from16 v4, v22

    .line 1100
    .line 1101
    const/4 v3, 0x0

    .line 1102
    :goto_2d
    if-ge v3, v4, :cond_39

    .line 1103
    .line 1104
    iget-object v5, v0, Lng/c;->d:[B

    .line 1105
    .line 1106
    aget-byte v5, v5, v3

    .line 1107
    .line 1108
    const/16 v23, 0x0

    .line 1109
    .line 1110
    aget-byte v8, v1, v23

    .line 1111
    .line 1112
    const/4 v9, 0x0

    .line 1113
    :goto_2e
    if-eq v5, v8, :cond_38

    .line 1114
    .line 1115
    add-int/lit8 v9, v9, 0x1

    .line 1116
    .line 1117
    aget-byte v10, v1, v9

    .line 1118
    .line 1119
    aput-byte v8, v1, v9

    .line 1120
    .line 1121
    move v8, v10

    .line 1122
    goto :goto_2e

    .line 1123
    :cond_38
    aput-byte v8, v1, v23

    .line 1124
    .line 1125
    iget-object v5, v0, Lng/c;->e:[B

    .line 1126
    .line 1127
    int-to-byte v8, v9

    .line 1128
    aput-byte v8, v5, v3

    .line 1129
    .line 1130
    add-int/lit8 v3, v3, 0x1

    .line 1131
    .line 1132
    goto :goto_2d

    .line 1133
    :cond_39
    iget-object v0, v6, Lng/d;->l:Lng/c;

    .line 1134
    .line 1135
    iget-object v1, v0, Lng/c;->k:[[I

    .line 1136
    .line 1137
    const/4 v3, 0x0

    .line 1138
    :goto_2f
    if-ge v3, v7, :cond_40

    .line 1139
    .line 1140
    iget-object v5, v0, Lng/c;->g:[[B

    .line 1141
    .line 1142
    aget-object v8, v5, v3

    .line 1143
    .line 1144
    const/16 v9, 0x20

    .line 1145
    .line 1146
    move v12, v2

    .line 1147
    const/4 v10, 0x0

    .line 1148
    :cond_3a
    :goto_30
    const/4 v11, -0x1

    .line 1149
    add-int/2addr v12, v11

    .line 1150
    if-ltz v12, :cond_3c

    .line 1151
    .line 1152
    aget-byte v11, v8, v12

    .line 1153
    .line 1154
    and-int/lit16 v11, v11, 0xff

    .line 1155
    .line 1156
    if-le v11, v10, :cond_3b

    .line 1157
    .line 1158
    move v10, v11

    .line 1159
    :cond_3b
    if-ge v11, v9, :cond_3a

    .line 1160
    .line 1161
    move v9, v11

    .line 1162
    goto :goto_30

    .line 1163
    :cond_3c
    aget-object v8, v1, v3

    .line 1164
    .line 1165
    aget-object v5, v5, v3

    .line 1166
    .line 1167
    const/4 v11, 0x0

    .line 1168
    :goto_31
    if-gt v9, v10, :cond_3f

    .line 1169
    .line 1170
    const/4 v12, 0x0

    .line 1171
    :goto_32
    if-ge v12, v2, :cond_3e

    .line 1172
    .line 1173
    aget-byte v13, v5, v12

    .line 1174
    .line 1175
    and-int/lit16 v13, v13, 0xff

    .line 1176
    .line 1177
    if-ne v13, v9, :cond_3d

    .line 1178
    .line 1179
    aput v11, v8, v12

    .line 1180
    .line 1181
    add-int/lit8 v11, v11, 0x1

    .line 1182
    .line 1183
    :cond_3d
    add-int/lit8 v12, v12, 0x1

    .line 1184
    .line 1185
    goto :goto_32

    .line 1186
    :cond_3e
    shl-int/lit8 v11, v11, 0x1

    .line 1187
    .line 1188
    add-int/lit8 v9, v9, 0x1

    .line 1189
    .line 1190
    goto :goto_31

    .line 1191
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    .line 1192
    .line 1193
    goto :goto_2f

    .line 1194
    :cond_40
    iget-object v0, v6, Lng/d;->l:Lng/c;

    .line 1195
    .line 1196
    iget-object v1, v0, Lng/c;->a:[Z

    .line 1197
    .line 1198
    const/16 v3, 0x10

    .line 1199
    .line 1200
    const/4 v5, -0x1

    .line 1201
    const/16 v8, 0x10

    .line 1202
    .line 1203
    :goto_33
    add-int/2addr v8, v5

    .line 1204
    iget-object v9, v0, Lng/c;->m:[Z

    .line 1205
    .line 1206
    if-ltz v8, :cond_43

    .line 1207
    .line 1208
    const/4 v10, 0x0

    .line 1209
    aput-boolean v10, v9, v8

    .line 1210
    .line 1211
    mul-int/lit8 v10, v8, 0x10

    .line 1212
    .line 1213
    const/16 v11, 0x10

    .line 1214
    .line 1215
    :cond_41
    add-int/2addr v11, v5

    .line 1216
    if-ltz v11, :cond_42

    .line 1217
    .line 1218
    add-int v12, v10, v11

    .line 1219
    .line 1220
    aget-boolean v12, v1, v12

    .line 1221
    .line 1222
    if-eqz v12, :cond_41

    .line 1223
    .line 1224
    const/4 v12, 0x1

    .line 1225
    aput-boolean v12, v9, v8

    .line 1226
    .line 1227
    goto :goto_33

    .line 1228
    :cond_42
    const/4 v12, 0x1

    .line 1229
    goto :goto_33

    .line 1230
    :cond_43
    const/4 v12, 0x1

    .line 1231
    const/4 v0, 0x0

    .line 1232
    :goto_34
    if-ge v0, v3, :cond_44

    .line 1233
    .line 1234
    aget-boolean v5, v9, v0

    .line 1235
    .line 1236
    invoke-virtual {v6, v12, v5}, Lng/d;->J(II)V

    .line 1237
    .line 1238
    .line 1239
    add-int/lit8 v0, v0, 0x1

    .line 1240
    .line 1241
    const/4 v12, 0x1

    .line 1242
    goto :goto_34

    .line 1243
    :cond_44
    iget-object v0, v6, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 1244
    .line 1245
    iget v5, v6, Lng/d;->d:I

    .line 1246
    .line 1247
    iget v8, v6, Lng/d;->c:I

    .line 1248
    .line 1249
    const/4 v10, 0x0

    .line 1250
    :goto_35
    if-ge v10, v3, :cond_48

    .line 1251
    .line 1252
    aget-boolean v11, v9, v10

    .line 1253
    .line 1254
    if-eqz v11, :cond_47

    .line 1255
    .line 1256
    mul-int/lit8 v11, v10, 0x10

    .line 1257
    .line 1258
    const/4 v12, 0x0

    .line 1259
    :goto_36
    if-ge v12, v3, :cond_47

    .line 1260
    .line 1261
    :goto_37
    const/16 v13, 0x8

    .line 1262
    .line 1263
    if-lt v5, v13, :cond_45

    .line 1264
    .line 1265
    shr-int/lit8 v13, v8, 0x18

    .line 1266
    .line 1267
    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write(I)V

    .line 1268
    .line 1269
    .line 1270
    shl-int/lit8 v8, v8, 0x8

    .line 1271
    .line 1272
    add-int/lit8 v5, v5, -0x8

    .line 1273
    .line 1274
    goto :goto_37

    .line 1275
    :cond_45
    add-int v13, v11, v12

    .line 1276
    .line 1277
    aget-boolean v13, v1, v13

    .line 1278
    .line 1279
    if-eqz v13, :cond_46

    .line 1280
    .line 1281
    rsub-int/lit8 v13, v5, 0x1f

    .line 1282
    .line 1283
    const/4 v14, 0x1

    .line 1284
    shl-int v13, v14, v13

    .line 1285
    .line 1286
    or-int/2addr v8, v13

    .line 1287
    :cond_46
    add-int/lit8 v5, v5, 0x1

    .line 1288
    .line 1289
    add-int/lit8 v12, v12, 0x1

    .line 1290
    .line 1291
    goto :goto_36

    .line 1292
    :cond_47
    add-int/lit8 v10, v10, 0x1

    .line 1293
    .line 1294
    goto :goto_35

    .line 1295
    :cond_48
    iput v8, v6, Lng/d;->c:I

    .line 1296
    .line 1297
    iput v5, v6, Lng/d;->d:I

    .line 1298
    .line 1299
    const/4 v0, 0x3

    .line 1300
    invoke-virtual {v6, v0, v7}, Lng/d;->J(II)V

    .line 1301
    .line 1302
    .line 1303
    const/16 v0, 0xf

    .line 1304
    .line 1305
    invoke-virtual {v6, v0, v4}, Lng/d;->J(II)V

    .line 1306
    .line 1307
    .line 1308
    iget-object v0, v6, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 1309
    .line 1310
    iget-object v1, v6, Lng/d;->l:Lng/c;

    .line 1311
    .line 1312
    iget-object v1, v1, Lng/c;->e:[B

    .line 1313
    .line 1314
    iget v3, v6, Lng/d;->d:I

    .line 1315
    .line 1316
    iget v5, v6, Lng/d;->c:I

    .line 1317
    .line 1318
    const/4 v8, 0x0

    .line 1319
    :goto_38
    if-ge v8, v4, :cond_4c

    .line 1320
    .line 1321
    aget-byte v9, v1, v8

    .line 1322
    .line 1323
    and-int/lit16 v9, v9, 0xff

    .line 1324
    .line 1325
    const/4 v10, 0x0

    .line 1326
    :goto_39
    if-ge v10, v9, :cond_4a

    .line 1327
    .line 1328
    :goto_3a
    const/16 v11, 0x8

    .line 1329
    .line 1330
    if-lt v3, v11, :cond_49

    .line 1331
    .line 1332
    shr-int/lit8 v11, v5, 0x18

    .line 1333
    .line 1334
    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write(I)V

    .line 1335
    .line 1336
    .line 1337
    shl-int/lit8 v5, v5, 0x8

    .line 1338
    .line 1339
    add-int/lit8 v3, v3, -0x8

    .line 1340
    .line 1341
    goto :goto_3a

    .line 1342
    :cond_49
    rsub-int/lit8 v11, v3, 0x1f

    .line 1343
    .line 1344
    const/4 v12, 0x1

    .line 1345
    shl-int v11, v12, v11

    .line 1346
    .line 1347
    or-int/2addr v5, v11

    .line 1348
    add-int/lit8 v3, v3, 0x1

    .line 1349
    .line 1350
    add-int/lit8 v10, v10, 0x1

    .line 1351
    .line 1352
    goto :goto_39

    .line 1353
    :cond_4a
    const/4 v12, 0x1

    .line 1354
    :goto_3b
    const/16 v9, 0x8

    .line 1355
    .line 1356
    if-lt v3, v9, :cond_4b

    .line 1357
    .line 1358
    shr-int/lit8 v9, v5, 0x18

    .line 1359
    .line 1360
    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1361
    .line 1362
    .line 1363
    shl-int/lit8 v5, v5, 0x8

    .line 1364
    .line 1365
    add-int/lit8 v3, v3, -0x8

    .line 1366
    .line 1367
    goto :goto_3b

    .line 1368
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    .line 1369
    .line 1370
    add-int/lit8 v8, v8, 0x1

    .line 1371
    .line 1372
    goto :goto_38

    .line 1373
    :cond_4c
    iput v5, v6, Lng/d;->c:I

    .line 1374
    .line 1375
    iput v3, v6, Lng/d;->d:I

    .line 1376
    .line 1377
    iget-object v0, v6, Lng/d;->l:Lng/c;

    .line 1378
    .line 1379
    iget-object v0, v0, Lng/c;->g:[[B

    .line 1380
    .line 1381
    iget-object v1, v6, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 1382
    .line 1383
    const/4 v4, 0x0

    .line 1384
    :goto_3c
    if-ge v4, v7, :cond_54

    .line 1385
    .line 1386
    aget-object v8, v0, v4

    .line 1387
    .line 1388
    const/16 v23, 0x0

    .line 1389
    .line 1390
    aget-byte v9, v8, v23

    .line 1391
    .line 1392
    and-int/lit16 v9, v9, 0xff

    .line 1393
    .line 1394
    :goto_3d
    const/16 v10, 0x8

    .line 1395
    .line 1396
    if-lt v3, v10, :cond_4d

    .line 1397
    .line 1398
    shr-int/lit8 v10, v5, 0x18

    .line 1399
    .line 1400
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 1401
    .line 1402
    .line 1403
    shl-int/lit8 v5, v5, 0x8

    .line 1404
    .line 1405
    add-int/lit8 v3, v3, -0x8

    .line 1406
    .line 1407
    goto :goto_3d

    .line 1408
    :cond_4d
    rsub-int/lit8 v10, v3, 0x1b

    .line 1409
    .line 1410
    shl-int v10, v9, v10

    .line 1411
    .line 1412
    or-int/2addr v5, v10

    .line 1413
    add-int/lit8 v3, v3, 0x5

    .line 1414
    .line 1415
    const/4 v10, 0x0

    .line 1416
    :goto_3e
    if-ge v10, v2, :cond_53

    .line 1417
    .line 1418
    aget-byte v11, v8, v10

    .line 1419
    .line 1420
    and-int/lit16 v11, v11, 0xff

    .line 1421
    .line 1422
    :goto_3f
    if-ge v9, v11, :cond_4f

    .line 1423
    .line 1424
    :goto_40
    const/16 v12, 0x8

    .line 1425
    .line 1426
    if-lt v3, v12, :cond_4e

    .line 1427
    .line 1428
    shr-int/lit8 v12, v5, 0x18

    .line 1429
    .line 1430
    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 1431
    .line 1432
    .line 1433
    shl-int/lit8 v5, v5, 0x8

    .line 1434
    .line 1435
    add-int/lit8 v3, v3, -0x8

    .line 1436
    .line 1437
    goto :goto_40

    .line 1438
    :cond_4e
    rsub-int/lit8 v12, v3, 0x1e

    .line 1439
    .line 1440
    const/4 v13, 0x2

    .line 1441
    shl-int v12, v13, v12

    .line 1442
    .line 1443
    or-int/2addr v5, v12

    .line 1444
    add-int/lit8 v3, v3, 0x2

    .line 1445
    .line 1446
    add-int/lit8 v9, v9, 0x1

    .line 1447
    .line 1448
    goto :goto_3f

    .line 1449
    :cond_4f
    const/4 v13, 0x2

    .line 1450
    :goto_41
    if-le v9, v11, :cond_51

    .line 1451
    .line 1452
    :goto_42
    const/16 v12, 0x8

    .line 1453
    .line 1454
    if-lt v3, v12, :cond_50

    .line 1455
    .line 1456
    shr-int/lit8 v12, v5, 0x18

    .line 1457
    .line 1458
    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 1459
    .line 1460
    .line 1461
    shl-int/lit8 v5, v5, 0x8

    .line 1462
    .line 1463
    add-int/lit8 v3, v3, -0x8

    .line 1464
    .line 1465
    goto :goto_42

    .line 1466
    :cond_50
    rsub-int/lit8 v12, v3, 0x1e

    .line 1467
    .line 1468
    const/4 v14, 0x3

    .line 1469
    shl-int v12, v14, v12

    .line 1470
    .line 1471
    or-int/2addr v5, v12

    .line 1472
    add-int/lit8 v3, v3, 0x2

    .line 1473
    .line 1474
    add-int/lit8 v9, v9, -0x1

    .line 1475
    .line 1476
    goto :goto_41

    .line 1477
    :cond_51
    const/4 v14, 0x3

    .line 1478
    :goto_43
    const/16 v11, 0x8

    .line 1479
    .line 1480
    if-lt v3, v11, :cond_52

    .line 1481
    .line 1482
    shr-int/lit8 v11, v5, 0x18

    .line 1483
    .line 1484
    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 1485
    .line 1486
    .line 1487
    shl-int/lit8 v5, v5, 0x8

    .line 1488
    .line 1489
    add-int/lit8 v3, v3, -0x8

    .line 1490
    .line 1491
    goto :goto_43

    .line 1492
    :cond_52
    add-int/lit8 v3, v3, 0x1

    .line 1493
    .line 1494
    add-int/lit8 v10, v10, 0x1

    .line 1495
    .line 1496
    goto :goto_3e

    .line 1497
    :cond_53
    const/4 v13, 0x2

    .line 1498
    const/4 v14, 0x3

    .line 1499
    add-int/lit8 v4, v4, 0x1

    .line 1500
    .line 1501
    goto :goto_3c

    .line 1502
    :cond_54
    const/16 v23, 0x0

    .line 1503
    .line 1504
    iput v5, v6, Lng/d;->c:I

    .line 1505
    .line 1506
    iput v3, v6, Lng/d;->d:I

    .line 1507
    .line 1508
    iget-object v0, v6, Lng/d;->l:Lng/c;

    .line 1509
    .line 1510
    iget-object v1, v0, Lng/c;->g:[[B

    .line 1511
    .line 1512
    iget-object v2, v6, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 1513
    .line 1514
    iget v4, v6, Lng/d;->g:I

    .line 1515
    .line 1516
    move v7, v5

    .line 1517
    const/4 v5, 0x0

    .line 1518
    :goto_44
    if-ge v5, v4, :cond_57

    .line 1519
    .line 1520
    add-int/lit8 v8, v5, 0x31

    .line 1521
    .line 1522
    add-int/lit8 v9, v4, -0x1

    .line 1523
    .line 1524
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 1525
    .line 1526
    .line 1527
    move-result v8

    .line 1528
    iget-object v9, v0, Lng/c;->d:[B

    .line 1529
    .line 1530
    aget-byte v9, v9, v23

    .line 1531
    .line 1532
    and-int/lit16 v9, v9, 0xff

    .line 1533
    .line 1534
    iget-object v10, v0, Lng/c;->k:[[I

    .line 1535
    .line 1536
    aget-object v10, v10, v9

    .line 1537
    .line 1538
    aget-object v9, v1, v9

    .line 1539
    .line 1540
    :goto_45
    if-gt v5, v8, :cond_56

    .line 1541
    .line 1542
    iget-object v11, v0, Lng/c;->s:[C

    .line 1543
    .line 1544
    aget-char v11, v11, v5

    .line 1545
    .line 1546
    const/16 v12, 0x8

    .line 1547
    .line 1548
    :goto_46
    if-lt v3, v12, :cond_55

    .line 1549
    .line 1550
    shr-int/lit8 v13, v7, 0x18

    .line 1551
    .line 1552
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write(I)V

    .line 1553
    .line 1554
    .line 1555
    shl-int/lit8 v7, v7, 0x8

    .line 1556
    .line 1557
    add-int/lit8 v3, v3, -0x8

    .line 1558
    .line 1559
    goto :goto_46

    .line 1560
    :cond_55
    aget-byte v13, v9, v11

    .line 1561
    .line 1562
    and-int/lit16 v13, v13, 0xff

    .line 1563
    .line 1564
    aget v11, v10, v11

    .line 1565
    .line 1566
    rsub-int/lit8 v14, v3, 0x20

    .line 1567
    .line 1568
    sub-int/2addr v14, v13

    .line 1569
    shl-int/2addr v11, v14

    .line 1570
    or-int/2addr v7, v11

    .line 1571
    add-int/2addr v3, v13

    .line 1572
    add-int/lit8 v5, v5, 0x1

    .line 1573
    .line 1574
    goto :goto_45

    .line 1575
    :cond_56
    const/16 v12, 0x8

    .line 1576
    .line 1577
    add-int/lit8 v5, v8, 0x1

    .line 1578
    .line 1579
    add-int/lit8 v23, v23, 0x1

    .line 1580
    .line 1581
    goto :goto_44

    .line 1582
    :cond_57
    iput v7, v6, Lng/d;->c:I

    .line 1583
    .line 1584
    iput v3, v6, Lng/d;->d:I

    .line 1585
    .line 1586
    return-void
.end method

.method public final O(I)V
    .locals 3

    .line 1
    iget v0, p0, Lng/d;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_1

    .line 6
    .line 7
    and-int/lit16 p1, p1, 0xff

    .line 8
    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lng/d;->i:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iput p1, p0, Lng/d;->i:I

    .line 15
    .line 16
    const/16 v0, 0xfe

    .line 17
    .line 18
    if-le p1, v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lng/d;->P()V

    .line 21
    .line 22
    .line 23
    iput v2, p0, Lng/d;->h:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lng/d;->i:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lng/d;->P()V

    .line 30
    .line 31
    .line 32
    iput v1, p0, Lng/d;->i:I

    .line 33
    .line 34
    iput p1, p0, Lng/d;->h:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    and-int/lit16 p1, p1, 0xff

    .line 38
    .line 39
    iput p1, p0, Lng/d;->h:I

    .line 40
    .line 41
    iget p1, p0, Lng/d;->i:I

    .line 42
    .line 43
    add-int/2addr p1, v1

    .line 44
    iput p1, p0, Lng/d;->i:I

    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public final P()V
    .locals 11

    .line 1
    iget v0, p0, Lng/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lng/d;->k:I

    .line 4
    .line 5
    iget-object v2, p0, Lng/d;->e:Lng/f;

    .line 6
    .line 7
    if-ge v0, v1, :cond_5

    .line 8
    .line 9
    iget v1, p0, Lng/d;->h:I

    .line 10
    .line 11
    iget-object v3, p0, Lng/d;->l:Lng/c;

    .line 12
    .line 13
    iget-object v4, v3, Lng/c;->a:[Z

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    aput-boolean v5, v4, v1

    .line 17
    .line 18
    int-to-byte v4, v1

    .line 19
    iget v6, p0, Lng/d;->i:I

    .line 20
    .line 21
    iget v7, v2, Lng/f;->a:I

    .line 22
    .line 23
    move v8, v6

    .line 24
    :goto_0
    add-int/lit8 v9, v8, -0x1

    .line 25
    .line 26
    if-lez v8, :cond_1

    .line 27
    .line 28
    shr-int/lit8 v8, v7, 0x18

    .line 29
    .line 30
    xor-int/2addr v8, v1

    .line 31
    shl-int/lit8 v7, v7, 0x8

    .line 32
    .line 33
    sget-object v10, Lng/f;->b:[I

    .line 34
    .line 35
    if-gez v8, :cond_0

    .line 36
    .line 37
    add-int/lit16 v8, v8, 0x100

    .line 38
    .line 39
    :cond_0
    aget v8, v10, v8

    .line 40
    .line 41
    xor-int/2addr v7, v8

    .line 42
    move v8, v9

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput v7, v2, Lng/f;->a:I

    .line 45
    .line 46
    iget-object v1, v3, Lng/c;->q:[B

    .line 47
    .line 48
    if-eq v6, v5, :cond_4

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    const/4 v7, 0x2

    .line 52
    if-eq v6, v7, :cond_3

    .line 53
    .line 54
    if-eq v6, v2, :cond_2

    .line 55
    .line 56
    add-int/lit8 v6, v6, -0x4

    .line 57
    .line 58
    iget-object v2, v3, Lng/c;->a:[Z

    .line 59
    .line 60
    aput-boolean v5, v2, v6

    .line 61
    .line 62
    add-int/lit8 v2, v0, 0x2

    .line 63
    .line 64
    aput-byte v4, v1, v2

    .line 65
    .line 66
    add-int/lit8 v2, v0, 0x3

    .line 67
    .line 68
    aput-byte v4, v1, v2

    .line 69
    .line 70
    add-int/lit8 v2, v0, 0x4

    .line 71
    .line 72
    aput-byte v4, v1, v2

    .line 73
    .line 74
    add-int/lit8 v2, v0, 0x5

    .line 75
    .line 76
    aput-byte v4, v1, v2

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x6

    .line 79
    .line 80
    int-to-byte v3, v6

    .line 81
    aput-byte v3, v1, v0

    .line 82
    .line 83
    iput v2, p0, Lng/d;->b:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    add-int/lit8 v2, v0, 0x2

    .line 87
    .line 88
    aput-byte v4, v1, v2

    .line 89
    .line 90
    add-int/lit8 v2, v0, 0x3

    .line 91
    .line 92
    aput-byte v4, v1, v2

    .line 93
    .line 94
    add-int/lit8 v0, v0, 0x4

    .line 95
    .line 96
    aput-byte v4, v1, v0

    .line 97
    .line 98
    iput v2, p0, Lng/d;->b:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    add-int/lit8 v3, v0, 0x2

    .line 102
    .line 103
    aput-byte v4, v1, v3

    .line 104
    .line 105
    add-int/2addr v0, v2

    .line 106
    aput-byte v4, v1, v0

    .line 107
    .line 108
    iput v3, p0, Lng/d;->b:I

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    add-int/lit8 v2, v0, 0x2

    .line 112
    .line 113
    aput-byte v4, v1, v2

    .line 114
    .line 115
    add-int/2addr v0, v5

    .line 116
    iput v0, p0, Lng/d;->b:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {p0}, Lng/d;->L()V

    .line 120
    .line 121
    .line 122
    const/4 v0, -0x1

    .line 123
    iput v0, v2, Lng/f;->a:I

    .line 124
    .line 125
    iput v0, p0, Lng/d;->b:I

    .line 126
    .line 127
    iget-object v1, p0, Lng/d;->l:Lng/c;

    .line 128
    .line 129
    iget-object v1, v1, Lng/c;->a:[Z

    .line 130
    .line 131
    const/16 v2, 0x100

    .line 132
    .line 133
    :goto_1
    add-int/2addr v2, v0

    .line 134
    if-ltz v2, :cond_6

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    aput-boolean v3, v1, v2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    invoke-virtual {p0}, Lng/d;->P()V

    .line 141
    .line 142
    .line 143
    :goto_2
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lng/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_1
    iget v1, p0, Lng/d;->i:I

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lng/d;->P()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lng/d;->h:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lng/d;->L()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lng/d;->M()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    iput-object v0, p0, Lng/d;->m:Lng/e;

    .line 36
    .line 37
    iput-object v0, p0, Lng/d;->l:Lng/c;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    iput-object v0, p0, Lng/d;->m:Lng/e;

    .line 41
    .line 42
    iput-object v0, p0, Lng/d;->l:Lng/c;

    .line 43
    .line 44
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lng/d;->K()V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    invoke-virtual {p0}, Lng/d;->K()V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    :goto_3
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    shr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lng/d;->J(II)V

    .line 8
    .line 9
    .line 10
    shr-int/lit8 v0, p1, 0x10

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lng/d;->J(II)V

    .line 15
    .line 16
    .line 17
    shr-int/lit8 v0, p1, 0x8

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Lng/d;->J(II)V

    .line 22
    .line 23
    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 25
    .line 26
    invoke-virtual {p0, v1, p1}, Lng/d;->J(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lng/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lng/d;->O(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)V
    .locals 4

    .line 4
    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_4

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 5
    array-length v2, p1

    if-gt v0, v2, :cond_2

    .line 6
    iget-object p3, p0, Lng/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_1

    :goto_0
    if-ge p2, v0, :cond_0

    add-int/lit8 p3, p2, 0x1

    .line 7
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lng/d;->O(I)V

    move p2, p3

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") + len("

    const-string v3, ") > buf.length("

    .line 10
    invoke-static {p2, p3, v1, v2, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    array-length p1, p1

    const-string p3, ")."

    .line 12
    invoke-static {p2, p1, p3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "len("

    .line 15
    invoke-static {p2, p3, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 18
    invoke-static {v1, p2, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
