.class public final La0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:[J

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, La0/s;->a:[J

    .line 5
    .line 6
    iput-object v0, p0, La0/p;->a:[J

    .line 7
    .line 8
    sget-object v1, La0/j;->a:[J

    .line 9
    .line 10
    iput-object v1, p0, La0/p;->b:[J

    .line 11
    .line 12
    iput-object v1, p0, La0/p;->c:[J

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    invoke-static {v1}, La0/s;->b(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    ushr-int/2addr v2, v1

    .line 30
    :cond_0
    const/4 v1, 0x7

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_1
    iput v2, p0, La0/p;->d:I

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    add-int/lit8 v0, v2, 0xf

    .line 41
    .line 42
    and-int/lit8 v0, v0, -0x8

    .line 43
    .line 44
    shr-int/lit8 v0, v0, 0x3

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    invoke-static {v0}, Lje/i;->j0([J)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-object v0, p0, La0/p;->a:[J

    .line 52
    .line 53
    shr-int/lit8 v1, v2, 0x3

    .line 54
    .line 55
    and-int/lit8 v3, v2, 0x7

    .line 56
    .line 57
    shl-int/lit8 v3, v3, 0x3

    .line 58
    .line 59
    aget-wide v4, v0, v1

    .line 60
    .line 61
    const-wide/16 v6, 0xff

    .line 62
    .line 63
    shl-long/2addr v6, v3

    .line 64
    const-wide/16 v8, -0x1

    .line 65
    .line 66
    xor-long/2addr v8, v6

    .line 67
    and-long/2addr v4, v8

    .line 68
    or-long/2addr v4, v6

    .line 69
    aput-wide v4, v0, v1

    .line 70
    .line 71
    iget v0, p0, La0/p;->d:I

    .line 72
    .line 73
    invoke-static {v0}, La0/s;->a(I)I

    .line 74
    .line 75
    .line 76
    new-array v0, v2, [J

    .line 77
    .line 78
    iput-object v0, p0, La0/p;->b:[J

    .line 79
    .line 80
    new-array v0, v2, [J

    .line 81
    .line 82
    iput-object v0, p0, La0/p;->c:[J

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La0/p;->e:I

    .line 3
    .line 4
    iget-object v0, p0, La0/p;->a:[J

    .line 5
    .line 6
    sget-object v1, La0/s;->a:[J

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lje/i;->j0([J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, La0/p;->a:[J

    .line 14
    .line 15
    iget v1, p0, La0/p;->d:I

    .line 16
    .line 17
    shr-int/lit8 v2, v1, 0x3

    .line 18
    .line 19
    and-int/lit8 v1, v1, 0x7

    .line 20
    .line 21
    shl-int/lit8 v1, v1, 0x3

    .line 22
    .line 23
    aget-wide v3, v0, v2

    .line 24
    .line 25
    const-wide/16 v5, 0xff

    .line 26
    .line 27
    shl-long/2addr v5, v1

    .line 28
    const-wide/16 v7, -0x1

    .line 29
    .line 30
    xor-long/2addr v7, v5

    .line 31
    and-long/2addr v3, v7

    .line 32
    or-long/2addr v3, v5

    .line 33
    aput-wide v3, v0, v2

    .line 34
    .line 35
    :cond_0
    iget v0, p0, La0/p;->d:I

    .line 36
    .line 37
    invoke-static {v0}, La0/s;->a(I)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, La0/p;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    check-cast v1, La0/p;

    .line 16
    .line 17
    iget v3, v1, La0/p;->e:I

    .line 18
    .line 19
    iget v5, v0, La0/p;->e:I

    .line 20
    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    return v4

    .line 24
    :cond_2
    iget-object v3, v0, La0/p;->b:[J

    .line 25
    .line 26
    iget-object v5, v0, La0/p;->c:[J

    .line 27
    .line 28
    iget-object v6, v0, La0/p;->a:[J

    .line 29
    .line 30
    array-length v7, v6

    .line 31
    add-int/lit8 v7, v7, -0x2

    .line 32
    .line 33
    if-ltz v7, :cond_a

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    :goto_0
    aget-wide v9, v6, v8

    .line 37
    .line 38
    const-wide/16 v11, -0x1

    .line 39
    .line 40
    xor-long v13, v9, v11

    .line 41
    .line 42
    const/4 v15, 0x7

    .line 43
    shl-long/2addr v13, v15

    .line 44
    and-long/2addr v13, v9

    .line 45
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long v13, v13, v16

    .line 51
    .line 52
    cmp-long v18, v13, v16

    .line 53
    .line 54
    if-eqz v18, :cond_b

    .line 55
    .line 56
    sub-int v13, v8, v7

    .line 57
    .line 58
    const/4 v14, -0x1

    .line 59
    xor-int/2addr v13, v14

    .line 60
    ushr-int/lit8 v13, v13, 0x1f

    .line 61
    .line 62
    const/16 v14, 0x8

    .line 63
    .line 64
    rsub-int/lit8 v13, v13, 0x8

    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    :goto_1
    if-ge v14, v13, :cond_9

    .line 68
    .line 69
    const-wide/16 v19, 0xff

    .line 70
    .line 71
    and-long v19, v9, v19

    .line 72
    .line 73
    const-wide/16 v21, 0x80

    .line 74
    .line 75
    cmp-long v23, v19, v21

    .line 76
    .line 77
    if-gez v23, :cond_8

    .line 78
    .line 79
    shl-int/lit8 v19, v8, 0x3

    .line 80
    .line 81
    add-int v19, v19, v14

    .line 82
    .line 83
    aget-wide v20, v3, v19

    .line 84
    .line 85
    aget-wide v22, v5, v19

    .line 86
    .line 87
    const/16 v19, 0x20

    .line 88
    .line 89
    ushr-long v24, v20, v19

    .line 90
    .line 91
    move-object/from16 v26, v5

    .line 92
    .line 93
    xor-long v4, v20, v24

    .line 94
    .line 95
    long-to-int v5, v4

    .line 96
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 97
    .line 98
    .line 99
    mul-int v5, v5, v4

    .line 100
    .line 101
    shl-int/lit8 v4, v5, 0x10

    .line 102
    .line 103
    xor-int/2addr v4, v5

    .line 104
    and-int/lit8 v5, v4, 0x7f

    .line 105
    .line 106
    iget v11, v1, La0/p;->d:I

    .line 107
    .line 108
    ushr-int/2addr v4, v15

    .line 109
    and-int/2addr v4, v11

    .line 110
    const/4 v12, 0x0

    .line 111
    :goto_2
    iget-object v15, v1, La0/p;->a:[J

    .line 112
    .line 113
    shr-int/lit8 v27, v4, 0x3

    .line 114
    .line 115
    and-int/lit8 v28, v4, 0x7

    .line 116
    .line 117
    shl-int/lit8 v2, v28, 0x3

    .line 118
    .line 119
    aget-wide v29, v15, v27

    .line 120
    .line 121
    ushr-long v29, v29, v2

    .line 122
    .line 123
    const/16 v28, 0x1

    .line 124
    .line 125
    add-int/lit8 v27, v27, 0x1

    .line 126
    .line 127
    aget-wide v27, v15, v27

    .line 128
    .line 129
    rsub-int/lit8 v15, v2, 0x40

    .line 130
    .line 131
    shl-long v27, v27, v15

    .line 132
    .line 133
    move-object v15, v3

    .line 134
    int-to-long v2, v2

    .line 135
    neg-long v2, v2

    .line 136
    const/16 v31, 0x3f

    .line 137
    .line 138
    shr-long v2, v2, v31

    .line 139
    .line 140
    and-long v2, v27, v2

    .line 141
    .line 142
    or-long v2, v29, v2

    .line 143
    .line 144
    move-object/from16 v27, v6

    .line 145
    .line 146
    move/from16 v28, v7

    .line 147
    .line 148
    int-to-long v6, v5

    .line 149
    const-wide v29, 0x101010101010101L

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    mul-long v6, v6, v29

    .line 155
    .line 156
    xor-long/2addr v6, v2

    .line 157
    sub-long v29, v6, v29

    .line 158
    .line 159
    const-wide/16 v24, -0x1

    .line 160
    .line 161
    xor-long v6, v6, v24

    .line 162
    .line 163
    and-long v6, v29, v6

    .line 164
    .line 165
    and-long v6, v6, v16

    .line 166
    .line 167
    :goto_3
    const-wide/16 v29, 0x0

    .line 168
    .line 169
    cmp-long v31, v6, v29

    .line 170
    .line 171
    if-eqz v31, :cond_4

    .line 172
    .line 173
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 174
    .line 175
    .line 176
    move-result v29

    .line 177
    shr-int/lit8 v29, v29, 0x3

    .line 178
    .line 179
    add-int v29, v4, v29

    .line 180
    .line 181
    and-int v29, v29, v11

    .line 182
    .line 183
    iget-object v0, v1, La0/p;->b:[J

    .line 184
    .line 185
    aget-wide v30, v0, v29

    .line 186
    .line 187
    cmp-long v0, v30, v20

    .line 188
    .line 189
    if-nez v0, :cond_3

    .line 190
    .line 191
    const-wide/16 v6, -0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_3
    const-wide/16 v29, 0x1

    .line 195
    .line 196
    sub-long v29, v6, v29

    .line 197
    .line 198
    and-long v6, v6, v29

    .line 199
    .line 200
    move-object/from16 v0, p0

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_4
    const-wide/16 v6, -0x1

    .line 204
    .line 205
    xor-long v24, v2, v6

    .line 206
    .line 207
    const/4 v0, 0x6

    .line 208
    shl-long v24, v24, v0

    .line 209
    .line 210
    and-long v2, v2, v24

    .line 211
    .line 212
    and-long v2, v2, v16

    .line 213
    .line 214
    cmp-long v0, v2, v29

    .line 215
    .line 216
    if-eqz v0, :cond_7

    .line 217
    .line 218
    const/16 v29, -0x1

    .line 219
    .line 220
    :goto_4
    if-ltz v29, :cond_5

    .line 221
    .line 222
    iget-object v0, v1, La0/p;->c:[J

    .line 223
    .line 224
    aget-wide v2, v0, v29

    .line 225
    .line 226
    cmp-long v0, v22, v2

    .line 227
    .line 228
    if-eqz v0, :cond_6

    .line 229
    .line 230
    :cond_5
    const/4 v0, 0x0

    .line 231
    goto :goto_6

    .line 232
    :cond_6
    :goto_5
    const/4 v0, 0x0

    .line 233
    const/16 v2, 0x8

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :goto_6
    return v0

    .line 237
    :cond_7
    const/4 v0, 0x0

    .line 238
    const/16 v2, 0x8

    .line 239
    .line 240
    add-int/2addr v12, v2

    .line 241
    add-int/2addr v4, v12

    .line 242
    and-int/2addr v4, v11

    .line 243
    move-object/from16 v0, p0

    .line 244
    .line 245
    move-object v3, v15

    .line 246
    move-object/from16 v6, v27

    .line 247
    .line 248
    move/from16 v7, v28

    .line 249
    .line 250
    const/4 v2, 0x1

    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_8
    move-object v15, v3

    .line 254
    move-object/from16 v26, v5

    .line 255
    .line 256
    move-object/from16 v27, v6

    .line 257
    .line 258
    move/from16 v28, v7

    .line 259
    .line 260
    move-wide v6, v11

    .line 261
    goto :goto_5

    .line 262
    :goto_7
    shr-long/2addr v9, v2

    .line 263
    add-int/lit8 v14, v14, 0x1

    .line 264
    .line 265
    move-object/from16 v0, p0

    .line 266
    .line 267
    move-wide v11, v6

    .line 268
    move-object v3, v15

    .line 269
    move-object/from16 v5, v26

    .line 270
    .line 271
    move-object/from16 v6, v27

    .line 272
    .line 273
    move/from16 v7, v28

    .line 274
    .line 275
    const/4 v2, 0x1

    .line 276
    const/4 v4, 0x0

    .line 277
    const/4 v15, 0x7

    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_9
    move-object v15, v3

    .line 281
    move-object/from16 v26, v5

    .line 282
    .line 283
    move-object/from16 v27, v6

    .line 284
    .line 285
    move/from16 v28, v7

    .line 286
    .line 287
    const/4 v0, 0x0

    .line 288
    const/16 v2, 0x8

    .line 289
    .line 290
    if-ne v13, v2, :cond_a

    .line 291
    .line 292
    move/from16 v7, v28

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_a
    const/4 v0, 0x1

    .line 296
    goto :goto_9

    .line 297
    :cond_b
    move-object v15, v3

    .line 298
    move-object/from16 v26, v5

    .line 299
    .line 300
    move-object/from16 v27, v6

    .line 301
    .line 302
    const/4 v0, 0x0

    .line 303
    :goto_8
    if-eq v8, v7, :cond_a

    .line 304
    .line 305
    add-int/lit8 v8, v8, 0x1

    .line 306
    .line 307
    move-object/from16 v0, p0

    .line 308
    .line 309
    move-object v3, v15

    .line 310
    move-object/from16 v5, v26

    .line 311
    .line 312
    move-object/from16 v6, v27

    .line 313
    .line 314
    const/4 v2, 0x1

    .line 315
    const/4 v4, 0x0

    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :goto_9
    return v0
.end method

.method public final hashCode()I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La0/p;->b:[J

    .line 4
    .line 5
    iget-object v2, v0, La0/p;->c:[J

    .line 6
    .line 7
    iget-object v3, v0, La0/p;->a:[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    add-int/lit8 v4, v4, -0x2

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-ltz v4, :cond_4

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    :goto_0
    aget-wide v8, v3, v6

    .line 18
    .line 19
    const-wide/16 v10, -0x1

    .line 20
    .line 21
    xor-long/2addr v10, v8

    .line 22
    const/4 v12, 0x7

    .line 23
    shl-long/2addr v10, v12

    .line 24
    and-long/2addr v10, v8

    .line 25
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v10, v12

    .line 31
    cmp-long v14, v10, v12

    .line 32
    .line 33
    if-eqz v14, :cond_2

    .line 34
    .line 35
    sub-int v10, v6, v4

    .line 36
    .line 37
    xor-int/lit8 v10, v10, -0x1

    .line 38
    .line 39
    ushr-int/lit8 v10, v10, 0x1f

    .line 40
    .line 41
    const/16 v11, 0x8

    .line 42
    .line 43
    rsub-int/lit8 v10, v10, 0x8

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    :goto_1
    if-ge v12, v10, :cond_1

    .line 47
    .line 48
    const-wide/16 v13, 0xff

    .line 49
    .line 50
    and-long/2addr v13, v8

    .line 51
    const-wide/16 v15, 0x80

    .line 52
    .line 53
    cmp-long v17, v13, v15

    .line 54
    .line 55
    if-gez v17, :cond_0

    .line 56
    .line 57
    shl-int/lit8 v13, v6, 0x3

    .line 58
    .line 59
    add-int/2addr v13, v12

    .line 60
    aget-wide v14, v1, v13

    .line 61
    .line 62
    aget-wide v16, v2, v13

    .line 63
    .line 64
    const/16 v13, 0x20

    .line 65
    .line 66
    ushr-long v18, v14, v13

    .line 67
    .line 68
    xor-long v14, v14, v18

    .line 69
    .line 70
    long-to-int v15, v14

    .line 71
    ushr-long v13, v16, v13

    .line 72
    .line 73
    xor-long v13, v16, v13

    .line 74
    .line 75
    long-to-int v14, v13

    .line 76
    xor-int v13, v15, v14

    .line 77
    .line 78
    add-int/2addr v7, v13

    .line 79
    :cond_0
    shr-long/2addr v8, v11

    .line 80
    add-int/lit8 v12, v12, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-ne v10, v11, :cond_5

    .line 84
    .line 85
    :cond_2
    if-eq v6, v4, :cond_3

    .line 86
    .line 87
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move v5, v7

    .line 91
    :cond_4
    move v7, v5

    .line 92
    :cond_5
    return v7
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La0/p;->e:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "{}"

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "{"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, La0/p;->b:[J

    .line 18
    .line 19
    iget-object v3, v0, La0/p;->c:[J

    .line 20
    .line 21
    iget-object v4, v0, La0/p;->a:[J

    .line 22
    .line 23
    array-length v5, v4

    .line 24
    add-int/lit8 v5, v5, -0x2

    .line 25
    .line 26
    if-ltz v5, :cond_5

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    :goto_0
    aget-wide v9, v4, v7

    .line 31
    .line 32
    const-wide/16 v11, -0x1

    .line 33
    .line 34
    xor-long/2addr v11, v9

    .line 35
    const/4 v13, 0x7

    .line 36
    shl-long/2addr v11, v13

    .line 37
    and-long/2addr v11, v9

    .line 38
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v11, v13

    .line 44
    cmp-long v15, v11, v13

    .line 45
    .line 46
    if-eqz v15, :cond_4

    .line 47
    .line 48
    sub-int v11, v7, v5

    .line 49
    .line 50
    xor-int/lit8 v11, v11, -0x1

    .line 51
    .line 52
    ushr-int/lit8 v11, v11, 0x1f

    .line 53
    .line 54
    const/16 v12, 0x8

    .line 55
    .line 56
    rsub-int/lit8 v11, v11, 0x8

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    :goto_1
    if-ge v13, v11, :cond_3

    .line 60
    .line 61
    const-wide/16 v14, 0xff

    .line 62
    .line 63
    and-long/2addr v14, v9

    .line 64
    const-wide/16 v16, 0x80

    .line 65
    .line 66
    cmp-long v18, v14, v16

    .line 67
    .line 68
    if-gez v18, :cond_2

    .line 69
    .line 70
    shl-int/lit8 v14, v7, 0x3

    .line 71
    .line 72
    add-int/2addr v14, v13

    .line 73
    move/from16 v16, v7

    .line 74
    .line 75
    aget-wide v6, v2, v14

    .line 76
    .line 77
    move/from16 v18, v13

    .line 78
    .line 79
    aget-wide v12, v3, v14

    .line 80
    .line 81
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, "="

    .line 85
    .line 86
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    .line 94
    iget v6, v0, La0/p;->e:I

    .line 95
    .line 96
    if-ge v8, v6, :cond_1

    .line 97
    .line 98
    const-string v6, ", "

    .line 99
    .line 100
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_2
    const/16 v6, 0x8

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    move/from16 v16, v7

    .line 107
    .line 108
    move/from16 v18, v13

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :goto_3
    shr-long/2addr v9, v6

    .line 112
    add-int/lit8 v13, v18, 0x1

    .line 113
    .line 114
    move/from16 v7, v16

    .line 115
    .line 116
    const/16 v12, 0x8

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move/from16 v16, v7

    .line 120
    .line 121
    const/16 v6, 0x8

    .line 122
    .line 123
    if-ne v11, v6, :cond_5

    .line 124
    .line 125
    move/from16 v6, v16

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    move v6, v7

    .line 129
    :goto_4
    if-eq v6, v5, :cond_5

    .line 130
    .line 131
    add-int/lit8 v7, v6, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    const/16 v2, 0x7d

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "toString(...)"

    .line 144
    .line 145
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v1
.end method
