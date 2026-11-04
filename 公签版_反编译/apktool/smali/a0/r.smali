.class public final La0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[J

.field public final b:[Ljava/lang/Object;

.field public final c:[Ljava/lang/Object;

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, La0/s;->a:[J

    .line 5
    .line 6
    iput-object v0, p0, La0/r;->a:[J

    .line 7
    .line 8
    sget-object v1, Lb0/a;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    iput-object v1, p0, La0/r;->b:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, p0, La0/r;->c:[Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2}, La0/s;->b(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lez v3, :cond_1

    .line 20
    .line 21
    if-lez v3, :cond_0

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    ushr-int/2addr v2, v3

    .line 29
    :cond_0
    const/4 v3, 0x7

    .line 30
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :cond_1
    iput v2, p0, La0/r;->d:I

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    add-int/lit8 v0, v2, 0xf

    .line 40
    .line 41
    and-int/lit8 v0, v0, -0x8

    .line 42
    .line 43
    shr-int/lit8 v0, v0, 0x3

    .line 44
    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    invoke-static {v0}, Lje/i;->j0([J)V

    .line 48
    .line 49
    .line 50
    shr-int/lit8 v3, v2, 0x3

    .line 51
    .line 52
    and-int/lit8 v4, v2, 0x7

    .line 53
    .line 54
    shl-int/lit8 v4, v4, 0x3

    .line 55
    .line 56
    aget-wide v5, v0, v3

    .line 57
    .line 58
    const-wide/16 v7, 0xff

    .line 59
    .line 60
    shl-long/2addr v7, v4

    .line 61
    const-wide/16 v9, -0x1

    .line 62
    .line 63
    xor-long/2addr v9, v7

    .line 64
    and-long/2addr v5, v9

    .line 65
    or-long/2addr v5, v7

    .line 66
    aput-wide v5, v0, v3

    .line 67
    .line 68
    :goto_0
    iput-object v0, p0, La0/r;->a:[J

    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    move-object v0, v1

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    .line 75
    .line 76
    :goto_1
    iput-object v0, p0, La0/r;->b:[Ljava/lang/Object;

    .line 77
    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    new-array v1, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    :goto_2
    iput-object v1, p0, La0/r;->c:[Ljava/lang/Object;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 15
    .line 16
    .line 17
    mul-int v3, v3, v4

    .line 18
    .line 19
    shl-int/lit8 v4, v3, 0x10

    .line 20
    .line 21
    xor-int/2addr v3, v4

    .line 22
    and-int/lit8 v4, v3, 0x7f

    .line 23
    .line 24
    iget v5, v0, La0/r;->d:I

    .line 25
    .line 26
    ushr-int/lit8 v3, v3, 0x7

    .line 27
    .line 28
    :goto_1
    and-int/2addr v3, v5

    .line 29
    iget-object v6, v0, La0/r;->a:[J

    .line 30
    .line 31
    shr-int/lit8 v7, v3, 0x3

    .line 32
    .line 33
    and-int/lit8 v8, v3, 0x7

    .line 34
    .line 35
    shl-int/lit8 v8, v8, 0x3

    .line 36
    .line 37
    aget-wide v9, v6, v7

    .line 38
    .line 39
    ushr-long/2addr v9, v8

    .line 40
    add-int/lit8 v7, v7, 0x1

    .line 41
    .line 42
    aget-wide v11, v6, v7

    .line 43
    .line 44
    rsub-int/lit8 v6, v8, 0x40

    .line 45
    .line 46
    shl-long v6, v11, v6

    .line 47
    .line 48
    int-to-long v11, v8

    .line 49
    neg-long v11, v11

    .line 50
    const/16 v8, 0x3f

    .line 51
    .line 52
    shr-long/2addr v11, v8

    .line 53
    and-long/2addr v6, v11

    .line 54
    or-long/2addr v6, v9

    .line 55
    int-to-long v8, v4

    .line 56
    const-wide v10, 0x101010101010101L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    mul-long v8, v8, v10

    .line 62
    .line 63
    xor-long/2addr v8, v6

    .line 64
    sub-long v10, v8, v10

    .line 65
    .line 66
    const-wide/16 v12, -0x1

    .line 67
    .line 68
    xor-long/2addr v8, v12

    .line 69
    and-long/2addr v8, v10

    .line 70
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    and-long/2addr v8, v10

    .line 76
    :goto_2
    const-wide/16 v14, 0x0

    .line 77
    .line 78
    cmp-long v16, v8, v14

    .line 79
    .line 80
    if-eqz v16, :cond_2

    .line 81
    .line 82
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    shr-int/lit8 v14, v14, 0x3

    .line 87
    .line 88
    add-int/2addr v14, v3

    .line 89
    and-int/2addr v14, v5

    .line 90
    iget-object v15, v0, La0/r;->b:[Ljava/lang/Object;

    .line 91
    .line 92
    aget-object v15, v15, v14

    .line 93
    .line 94
    invoke-static {v15, v1}, Lue/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    if-eqz v15, :cond_1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_1
    const-wide/16 v14, 0x1

    .line 102
    .line 103
    sub-long v14, v8, v14

    .line 104
    .line 105
    and-long/2addr v8, v14

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    xor-long v8, v6, v12

    .line 108
    .line 109
    const/4 v12, 0x6

    .line 110
    shl-long/2addr v8, v12

    .line 111
    and-long/2addr v6, v8

    .line 112
    and-long/2addr v6, v10

    .line 113
    cmp-long v8, v6, v14

    .line 114
    .line 115
    if-eqz v8, :cond_4

    .line 116
    .line 117
    const/4 v14, -0x1

    .line 118
    :goto_3
    if-ltz v14, :cond_3

    .line 119
    .line 120
    iget-object v1, v0, La0/r;->c:[Ljava/lang/Object;

    .line 121
    .line 122
    aget-object v1, v1, v14

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_3
    const/4 v1, 0x0

    .line 126
    :goto_4
    return-object v1

    .line 127
    :cond_4
    add-int/lit8 v2, v2, 0x8

    .line 128
    .line 129
    add-int/2addr v3, v2

    .line 130
    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 29

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
    instance-of v3, v1, La0/r;

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
    check-cast v1, La0/r;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, La0/r;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v5, v0, La0/r;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v6, v0, La0/r;->a:[J

    .line 25
    .line 26
    array-length v7, v6

    .line 27
    add-int/lit8 v7, v7, -0x2

    .line 28
    .line 29
    if-ltz v7, :cond_d

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    :goto_0
    aget-wide v9, v6, v8

    .line 33
    .line 34
    const-wide/16 v11, -0x1

    .line 35
    .line 36
    xor-long v13, v9, v11

    .line 37
    .line 38
    const/4 v15, 0x7

    .line 39
    shl-long/2addr v13, v15

    .line 40
    and-long/2addr v13, v9

    .line 41
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long v13, v13, v16

    .line 47
    .line 48
    cmp-long v18, v13, v16

    .line 49
    .line 50
    if-eqz v18, :cond_e

    .line 51
    .line 52
    sub-int v13, v8, v7

    .line 53
    .line 54
    const/4 v14, -0x1

    .line 55
    xor-int/2addr v13, v14

    .line 56
    ushr-int/lit8 v13, v13, 0x1f

    .line 57
    .line 58
    const/16 v14, 0x8

    .line 59
    .line 60
    rsub-int/lit8 v13, v13, 0x8

    .line 61
    .line 62
    :goto_1
    if-ge v4, v13, :cond_c

    .line 63
    .line 64
    const-wide/16 v19, 0xff

    .line 65
    .line 66
    and-long v19, v9, v19

    .line 67
    .line 68
    const-wide/16 v21, 0x80

    .line 69
    .line 70
    cmp-long v23, v19, v21

    .line 71
    .line 72
    if-gez v23, :cond_a

    .line 73
    .line 74
    shl-int/lit8 v19, v8, 0x3

    .line 75
    .line 76
    add-int v19, v19, v4

    .line 77
    .line 78
    aget-object v14, v3, v19

    .line 79
    .line 80
    aget-object v11, v5, v19

    .line 81
    .line 82
    if-nez v11, :cond_8

    .line 83
    .line 84
    invoke-virtual {v1, v14}, La0/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    if-nez v11, :cond_6

    .line 89
    .line 90
    if-eqz v14, :cond_2

    .line 91
    .line 92
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const/4 v11, 0x0

    .line 98
    :goto_2
    const v12, -0x3361d2af    # -8.2930312E7f

    .line 99
    .line 100
    .line 101
    mul-int v11, v11, v12

    .line 102
    .line 103
    shl-int/lit8 v12, v11, 0x10

    .line 104
    .line 105
    xor-int/2addr v11, v12

    .line 106
    and-int/lit8 v12, v11, 0x7f

    .line 107
    .line 108
    iget v2, v1, La0/r;->d:I

    .line 109
    .line 110
    ushr-int/2addr v11, v15

    .line 111
    and-int/2addr v11, v2

    .line 112
    const/16 v23, 0x0

    .line 113
    .line 114
    :goto_3
    iget-object v15, v1, La0/r;->a:[J

    .line 115
    .line 116
    shr-int/lit8 v24, v11, 0x3

    .line 117
    .line 118
    and-int/lit8 v25, v11, 0x7

    .line 119
    .line 120
    shl-int/lit8 v0, v25, 0x3

    .line 121
    .line 122
    aget-wide v25, v15, v24

    .line 123
    .line 124
    ushr-long v25, v25, v0

    .line 125
    .line 126
    const/16 v19, 0x1

    .line 127
    .line 128
    add-int/lit8 v24, v24, 0x1

    .line 129
    .line 130
    aget-wide v27, v15, v24

    .line 131
    .line 132
    rsub-int/lit8 v15, v0, 0x40

    .line 133
    .line 134
    shl-long v27, v27, v15

    .line 135
    .line 136
    move-object v15, v5

    .line 137
    move-object/from16 v24, v6

    .line 138
    .line 139
    int-to-long v5, v0

    .line 140
    neg-long v5, v5

    .line 141
    const/16 v0, 0x3f

    .line 142
    .line 143
    shr-long/2addr v5, v0

    .line 144
    and-long v5, v27, v5

    .line 145
    .line 146
    or-long v5, v25, v5

    .line 147
    .line 148
    move v0, v7

    .line 149
    move/from16 v25, v8

    .line 150
    .line 151
    int-to-long v7, v12

    .line 152
    const-wide v26, 0x101010101010101L

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    mul-long v7, v7, v26

    .line 158
    .line 159
    xor-long/2addr v7, v5

    .line 160
    sub-long v26, v7, v26

    .line 161
    .line 162
    const-wide/16 v21, -0x1

    .line 163
    .line 164
    xor-long v7, v7, v21

    .line 165
    .line 166
    and-long v7, v26, v7

    .line 167
    .line 168
    and-long v7, v7, v16

    .line 169
    .line 170
    :goto_4
    const-wide/16 v26, 0x0

    .line 171
    .line 172
    cmp-long v28, v7, v26

    .line 173
    .line 174
    if-eqz v28, :cond_4

    .line 175
    .line 176
    invoke-static {v7, v8}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 177
    .line 178
    .line 179
    move-result v26

    .line 180
    shr-int/lit8 v26, v26, 0x3

    .line 181
    .line 182
    add-int v26, v11, v26

    .line 183
    .line 184
    and-int v26, v26, v2

    .line 185
    .line 186
    move-object/from16 v28, v3

    .line 187
    .line 188
    iget-object v3, v1, La0/r;->b:[Ljava/lang/Object;

    .line 189
    .line 190
    aget-object v3, v3, v26

    .line 191
    .line 192
    invoke-static {v3, v14}, Lue/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_3

    .line 197
    .line 198
    const-wide/16 v7, -0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_3
    const-wide/16 v26, 0x1

    .line 202
    .line 203
    sub-long v26, v7, v26

    .line 204
    .line 205
    and-long v7, v7, v26

    .line 206
    .line 207
    move-object/from16 v3, v28

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_4
    move-object/from16 v28, v3

    .line 211
    .line 212
    const-wide/16 v7, -0x1

    .line 213
    .line 214
    xor-long v21, v5, v7

    .line 215
    .line 216
    const/4 v3, 0x6

    .line 217
    shl-long v21, v21, v3

    .line 218
    .line 219
    and-long v5, v5, v21

    .line 220
    .line 221
    and-long v5, v5, v16

    .line 222
    .line 223
    cmp-long v3, v5, v26

    .line 224
    .line 225
    if-eqz v3, :cond_7

    .line 226
    .line 227
    const/16 v26, -0x1

    .line 228
    .line 229
    :goto_5
    if-ltz v26, :cond_5

    .line 230
    .line 231
    const/4 v2, 0x1

    .line 232
    goto :goto_6

    .line 233
    :cond_5
    const/4 v2, 0x0

    .line 234
    :goto_6
    if-nez v2, :cond_b

    .line 235
    .line 236
    :cond_6
    const/4 v2, 0x0

    .line 237
    goto :goto_7

    .line 238
    :cond_7
    const/16 v3, 0x8

    .line 239
    .line 240
    add-int/lit8 v23, v23, 0x8

    .line 241
    .line 242
    add-int v11, v11, v23

    .line 243
    .line 244
    and-int/2addr v11, v2

    .line 245
    move v7, v0

    .line 246
    move-object v5, v15

    .line 247
    move-object/from16 v6, v24

    .line 248
    .line 249
    move/from16 v8, v25

    .line 250
    .line 251
    move-object/from16 v3, v28

    .line 252
    .line 253
    move-object/from16 v0, p0

    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :goto_7
    return v2

    .line 258
    :cond_8
    move-object/from16 v28, v3

    .line 259
    .line 260
    move-object v15, v5

    .line 261
    move-object/from16 v24, v6

    .line 262
    .line 263
    move v0, v7

    .line 264
    move/from16 v25, v8

    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    const-wide/16 v7, -0x1

    .line 268
    .line 269
    invoke-virtual {v1, v14}, La0/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-nez v3, :cond_9

    .line 278
    .line 279
    return v2

    .line 280
    :cond_9
    :goto_8
    const/16 v3, 0x8

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_a
    move-object/from16 v28, v3

    .line 284
    .line 285
    move-object v15, v5

    .line 286
    move-object/from16 v24, v6

    .line 287
    .line 288
    move v0, v7

    .line 289
    move/from16 v25, v8

    .line 290
    .line 291
    move-wide v7, v11

    .line 292
    :cond_b
    const/4 v2, 0x0

    .line 293
    goto :goto_8

    .line 294
    :goto_9
    shr-long/2addr v9, v3

    .line 295
    add-int/lit8 v4, v4, 0x1

    .line 296
    .line 297
    move-wide v11, v7

    .line 298
    move-object v5, v15

    .line 299
    move-object/from16 v6, v24

    .line 300
    .line 301
    move/from16 v8, v25

    .line 302
    .line 303
    move-object/from16 v3, v28

    .line 304
    .line 305
    const/4 v2, 0x1

    .line 306
    const/16 v14, 0x8

    .line 307
    .line 308
    const/4 v15, 0x7

    .line 309
    move v7, v0

    .line 310
    move-object/from16 v0, p0

    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_c
    move-object/from16 v28, v3

    .line 315
    .line 316
    move-object v15, v5

    .line 317
    move-object/from16 v24, v6

    .line 318
    .line 319
    move v0, v7

    .line 320
    move/from16 v25, v8

    .line 321
    .line 322
    const/4 v2, 0x0

    .line 323
    const/16 v3, 0x8

    .line 324
    .line 325
    if-ne v13, v3, :cond_d

    .line 326
    .line 327
    move/from16 v4, v25

    .line 328
    .line 329
    goto :goto_a

    .line 330
    :cond_d
    const/4 v0, 0x1

    .line 331
    goto :goto_b

    .line 332
    :cond_e
    move-object/from16 v28, v3

    .line 333
    .line 334
    move-object v15, v5

    .line 335
    move-object/from16 v24, v6

    .line 336
    .line 337
    move v0, v7

    .line 338
    const/4 v2, 0x0

    .line 339
    move v4, v8

    .line 340
    :goto_a
    if-eq v4, v0, :cond_d

    .line 341
    .line 342
    add-int/lit8 v8, v4, 0x1

    .line 343
    .line 344
    move v7, v0

    .line 345
    move-object v5, v15

    .line 346
    move-object/from16 v6, v24

    .line 347
    .line 348
    move-object/from16 v3, v28

    .line 349
    .line 350
    const/4 v2, 0x1

    .line 351
    const/4 v4, 0x0

    .line 352
    move-object/from16 v0, p0

    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :goto_b
    return v0
.end method

.method public final hashCode()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La0/r;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, v0, La0/r;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, La0/r;->a:[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    add-int/lit8 v4, v4, -0x2

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-ltz v4, :cond_6

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
    if-eqz v14, :cond_4

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
    if-ge v12, v10, :cond_3

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
    if-gez v17, :cond_2

    .line 56
    .line 57
    shl-int/lit8 v13, v6, 0x3

    .line 58
    .line 59
    add-int/2addr v13, v12

    .line 60
    aget-object v14, v1, v13

    .line 61
    .line 62
    aget-object v13, v2, v13

    .line 63
    .line 64
    if-eqz v14, :cond_0

    .line 65
    .line 66
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    const/4 v14, 0x0

    .line 72
    :goto_2
    if-eqz v13, :cond_1

    .line 73
    .line 74
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    goto :goto_3

    .line 79
    :cond_1
    const/4 v13, 0x0

    .line 80
    :goto_3
    xor-int/2addr v13, v14

    .line 81
    add-int/2addr v7, v13

    .line 82
    :cond_2
    shr-long/2addr v8, v11

    .line 83
    add-int/lit8 v12, v12, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v10, v11, :cond_7

    .line 87
    .line 88
    :cond_4
    if-eq v6, v4, :cond_5

    .line 89
    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    move v5, v7

    .line 94
    :cond_6
    move v7, v5

    .line 95
    :cond_7
    return v7
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "{}"

    .line 2
    .line 3
    return-object v0
.end method
