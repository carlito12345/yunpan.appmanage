.class public final La0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:I


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
    iput-object v0, p0, La0/q;->a:[J

    .line 7
    .line 8
    sget-object v1, La0/j;->a:[J

    .line 9
    .line 10
    iput-object v1, p0, La0/q;->b:[J

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1}, La0/s;->b(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    ushr-int/2addr v1, v2

    .line 27
    :cond_0
    const/4 v2, 0x7

    .line 28
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :cond_1
    iput v1, p0, La0/q;->c:I

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    add-int/lit8 v0, v1, 0xf

    .line 38
    .line 39
    and-int/lit8 v0, v0, -0x8

    .line 40
    .line 41
    shr-int/lit8 v0, v0, 0x3

    .line 42
    .line 43
    new-array v0, v0, [J

    .line 44
    .line 45
    invoke-static {v0}, Lje/i;->j0([J)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iput-object v0, p0, La0/q;->a:[J

    .line 49
    .line 50
    shr-int/lit8 v2, v1, 0x3

    .line 51
    .line 52
    and-int/lit8 v3, v1, 0x7

    .line 53
    .line 54
    shl-int/lit8 v3, v3, 0x3

    .line 55
    .line 56
    aget-wide v4, v0, v2

    .line 57
    .line 58
    const-wide/16 v6, 0xff

    .line 59
    .line 60
    shl-long/2addr v6, v3

    .line 61
    const-wide/16 v8, -0x1

    .line 62
    .line 63
    xor-long/2addr v8, v6

    .line 64
    and-long/2addr v4, v8

    .line 65
    or-long/2addr v4, v6

    .line 66
    aput-wide v4, v0, v2

    .line 67
    .line 68
    new-array v0, v1, [J

    .line 69
    .line 70
    iput-object v0, p0, La0/q;->b:[J

    .line 71
    .line 72
    return-void
.end method


# virtual methods
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
    instance-of v3, v1, La0/q;

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
    check-cast v1, La0/q;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, La0/q;->b:[J

    .line 21
    .line 22
    iget-object v5, v0, La0/q;->a:[J

    .line 23
    .line 24
    array-length v6, v5

    .line 25
    add-int/lit8 v6, v6, -0x2

    .line 26
    .line 27
    if-ltz v6, :cond_9

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    :goto_0
    aget-wide v8, v5, v7

    .line 31
    .line 32
    const-wide/16 v10, -0x1

    .line 33
    .line 34
    xor-long v12, v8, v10

    .line 35
    .line 36
    const/4 v14, 0x7

    .line 37
    shl-long/2addr v12, v14

    .line 38
    and-long/2addr v12, v8

    .line 39
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v12, v15

    .line 45
    cmp-long v17, v12, v15

    .line 46
    .line 47
    if-eqz v17, :cond_a

    .line 48
    .line 49
    sub-int v12, v7, v6

    .line 50
    .line 51
    const/4 v13, -0x1

    .line 52
    xor-int/2addr v12, v13

    .line 53
    ushr-int/lit8 v12, v12, 0x1f

    .line 54
    .line 55
    const/16 v13, 0x8

    .line 56
    .line 57
    rsub-int/lit8 v12, v12, 0x8

    .line 58
    .line 59
    const/4 v13, 0x0

    .line 60
    :goto_1
    if-ge v13, v12, :cond_8

    .line 61
    .line 62
    const-wide/16 v18, 0xff

    .line 63
    .line 64
    and-long v18, v8, v18

    .line 65
    .line 66
    const-wide/16 v20, 0x80

    .line 67
    .line 68
    cmp-long v22, v18, v20

    .line 69
    .line 70
    if-gez v22, :cond_7

    .line 71
    .line 72
    shl-int/lit8 v18, v7, 0x3

    .line 73
    .line 74
    add-int v18, v18, v13

    .line 75
    .line 76
    aget-wide v18, v3, v18

    .line 77
    .line 78
    const/16 v20, 0x20

    .line 79
    .line 80
    ushr-long v20, v18, v20

    .line 81
    .line 82
    move-object/from16 v23, v5

    .line 83
    .line 84
    xor-long v4, v18, v20

    .line 85
    .line 86
    long-to-int v5, v4

    .line 87
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 88
    .line 89
    .line 90
    mul-int v5, v5, v4

    .line 91
    .line 92
    shl-int/lit8 v4, v5, 0x10

    .line 93
    .line 94
    xor-int/2addr v4, v5

    .line 95
    and-int/lit8 v5, v4, 0x7f

    .line 96
    .line 97
    iget v15, v1, La0/q;->c:I

    .line 98
    .line 99
    ushr-int/2addr v4, v14

    .line 100
    and-int/2addr v4, v15

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    :goto_2
    iget-object v14, v1, La0/q;->a:[J

    .line 104
    .line 105
    shr-int/lit8 v24, v4, 0x3

    .line 106
    .line 107
    and-int/lit8 v25, v4, 0x7

    .line 108
    .line 109
    shl-int/lit8 v10, v25, 0x3

    .line 110
    .line 111
    aget-wide v27, v14, v24

    .line 112
    .line 113
    ushr-long v27, v27, v10

    .line 114
    .line 115
    add-int/lit8 v24, v24, 0x1

    .line 116
    .line 117
    aget-wide v24, v14, v24

    .line 118
    .line 119
    rsub-int/lit8 v11, v10, 0x40

    .line 120
    .line 121
    shl-long v24, v24, v11

    .line 122
    .line 123
    int-to-long v10, v10

    .line 124
    neg-long v10, v10

    .line 125
    const/16 v14, 0x3f

    .line 126
    .line 127
    shr-long/2addr v10, v14

    .line 128
    and-long v10, v24, v10

    .line 129
    .line 130
    or-long v10, v27, v10

    .line 131
    .line 132
    move-object/from16 v24, v3

    .line 133
    .line 134
    int-to-long v2, v5

    .line 135
    const-wide v27, 0x101010101010101L

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    mul-long v2, v2, v27

    .line 141
    .line 142
    xor-long/2addr v2, v10

    .line 143
    sub-long v27, v2, v27

    .line 144
    .line 145
    const-wide/16 v25, -0x1

    .line 146
    .line 147
    xor-long v2, v2, v25

    .line 148
    .line 149
    and-long v2, v27, v2

    .line 150
    .line 151
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    and-long v2, v2, v20

    .line 157
    .line 158
    :goto_3
    const-wide/16 v27, 0x0

    .line 159
    .line 160
    cmp-long v25, v2, v27

    .line 161
    .line 162
    if-eqz v25, :cond_3

    .line 163
    .line 164
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 165
    .line 166
    .line 167
    move-result v25

    .line 168
    shr-int/lit8 v25, v25, 0x3

    .line 169
    .line 170
    add-int v25, v4, v25

    .line 171
    .line 172
    and-int v25, v25, v15

    .line 173
    .line 174
    iget-object v14, v1, La0/q;->b:[J

    .line 175
    .line 176
    aget-wide v27, v14, v25

    .line 177
    .line 178
    cmp-long v14, v27, v18

    .line 179
    .line 180
    if-nez v14, :cond_2

    .line 181
    .line 182
    const-wide/16 v2, -0x1

    .line 183
    .line 184
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_2
    const-wide/16 v27, 0x1

    .line 191
    .line 192
    sub-long v27, v2, v27

    .line 193
    .line 194
    and-long v2, v2, v27

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_3
    const-wide/16 v2, -0x1

    .line 198
    .line 199
    xor-long v25, v10, v2

    .line 200
    .line 201
    const/4 v14, 0x6

    .line 202
    shl-long v25, v25, v14

    .line 203
    .line 204
    and-long v10, v10, v25

    .line 205
    .line 206
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    and-long v10, v10, v20

    .line 212
    .line 213
    cmp-long v14, v10, v27

    .line 214
    .line 215
    if-eqz v14, :cond_6

    .line 216
    .line 217
    const/16 v25, -0x1

    .line 218
    .line 219
    :goto_4
    if-ltz v25, :cond_4

    .line 220
    .line 221
    const/4 v4, 0x1

    .line 222
    goto :goto_5

    .line 223
    :cond_4
    const/4 v4, 0x0

    .line 224
    :goto_5
    if-nez v4, :cond_5

    .line 225
    .line 226
    const/4 v10, 0x0

    .line 227
    return v10

    .line 228
    :cond_5
    :goto_6
    const/4 v10, 0x0

    .line 229
    const/16 v11, 0x8

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_6
    const/4 v10, 0x0

    .line 233
    const/16 v11, 0x8

    .line 234
    .line 235
    add-int/lit8 v16, v16, 0x8

    .line 236
    .line 237
    add-int v4, v4, v16

    .line 238
    .line 239
    and-int/2addr v4, v15

    .line 240
    move-wide v10, v2

    .line 241
    move-object/from16 v3, v24

    .line 242
    .line 243
    const/4 v2, 0x1

    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :cond_7
    move-object/from16 v24, v3

    .line 247
    .line 248
    move-object/from16 v23, v5

    .line 249
    .line 250
    move-wide v2, v10

    .line 251
    move-wide/from16 v20, v15

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :goto_7
    shr-long/2addr v8, v11

    .line 255
    add-int/lit8 v13, v13, 0x1

    .line 256
    .line 257
    move-wide v10, v2

    .line 258
    move-wide/from16 v15, v20

    .line 259
    .line 260
    move-object/from16 v5, v23

    .line 261
    .line 262
    move-object/from16 v3, v24

    .line 263
    .line 264
    const/4 v2, 0x1

    .line 265
    const/4 v4, 0x0

    .line 266
    const/4 v14, 0x7

    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_8
    move-object/from16 v24, v3

    .line 270
    .line 271
    move-object/from16 v23, v5

    .line 272
    .line 273
    const/4 v10, 0x0

    .line 274
    const/16 v11, 0x8

    .line 275
    .line 276
    if-ne v12, v11, :cond_9

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_9
    const/4 v1, 0x1

    .line 280
    goto :goto_9

    .line 281
    :cond_a
    move-object/from16 v24, v3

    .line 282
    .line 283
    move-object/from16 v23, v5

    .line 284
    .line 285
    const/4 v10, 0x0

    .line 286
    :goto_8
    if-eq v7, v6, :cond_9

    .line 287
    .line 288
    add-int/lit8 v7, v7, 0x1

    .line 289
    .line 290
    move-object/from16 v5, v23

    .line 291
    .line 292
    move-object/from16 v3, v24

    .line 293
    .line 294
    const/4 v2, 0x1

    .line 295
    const/4 v4, 0x0

    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :goto_9
    return v1
.end method

.method public final hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La0/q;->b:[J

    .line 4
    .line 5
    iget-object v2, v0, La0/q;->a:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-ltz v3, :cond_4

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    aget-wide v7, v2, v5

    .line 16
    .line 17
    const-wide/16 v9, -0x1

    .line 18
    .line 19
    xor-long/2addr v9, v7

    .line 20
    const/4 v11, 0x7

    .line 21
    shl-long/2addr v9, v11

    .line 22
    and-long/2addr v9, v7

    .line 23
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long/2addr v9, v11

    .line 29
    cmp-long v13, v9, v11

    .line 30
    .line 31
    if-eqz v13, :cond_2

    .line 32
    .line 33
    sub-int v9, v5, v3

    .line 34
    .line 35
    xor-int/lit8 v9, v9, -0x1

    .line 36
    .line 37
    ushr-int/lit8 v9, v9, 0x1f

    .line 38
    .line 39
    const/16 v10, 0x8

    .line 40
    .line 41
    rsub-int/lit8 v9, v9, 0x8

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    :goto_1
    if-ge v11, v9, :cond_1

    .line 45
    .line 46
    const-wide/16 v12, 0xff

    .line 47
    .line 48
    and-long/2addr v12, v7

    .line 49
    const-wide/16 v14, 0x80

    .line 50
    .line 51
    cmp-long v16, v12, v14

    .line 52
    .line 53
    if-gez v16, :cond_0

    .line 54
    .line 55
    shl-int/lit8 v12, v5, 0x3

    .line 56
    .line 57
    add-int/2addr v12, v11

    .line 58
    aget-wide v12, v1, v12

    .line 59
    .line 60
    const/16 v14, 0x20

    .line 61
    .line 62
    ushr-long v14, v12, v14

    .line 63
    .line 64
    xor-long/2addr v12, v14

    .line 65
    long-to-int v13, v12

    .line 66
    add-int/2addr v6, v13

    .line 67
    :cond_0
    shr-long/2addr v7, v10

    .line 68
    add-int/lit8 v11, v11, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    if-ne v9, v10, :cond_5

    .line 72
    .line 73
    :cond_2
    if-eq v5, v3, :cond_3

    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v4, v6

    .line 79
    :cond_4
    move v6, v4

    .line 80
    :cond_5
    return v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "["

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, La0/q;->b:[J

    .line 14
    .line 15
    iget-object v3, v0, La0/q;->a:[J

    .line 16
    .line 17
    array-length v4, v3

    .line 18
    add-int/lit8 v4, v4, -0x2

    .line 19
    .line 20
    if-ltz v4, :cond_5

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    :goto_0
    aget-wide v8, v3, v6

    .line 25
    .line 26
    const-wide/16 v10, -0x1

    .line 27
    .line 28
    xor-long/2addr v10, v8

    .line 29
    const/4 v12, 0x7

    .line 30
    shl-long/2addr v10, v12

    .line 31
    and-long/2addr v10, v8

    .line 32
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v10, v12

    .line 38
    cmp-long v14, v10, v12

    .line 39
    .line 40
    if-eqz v14, :cond_4

    .line 41
    .line 42
    sub-int v10, v6, v4

    .line 43
    .line 44
    const/4 v11, -0x1

    .line 45
    xor-int/2addr v10, v11

    .line 46
    ushr-int/lit8 v10, v10, 0x1f

    .line 47
    .line 48
    const/16 v12, 0x8

    .line 49
    .line 50
    rsub-int/lit8 v10, v10, 0x8

    .line 51
    .line 52
    const/4 v13, 0x0

    .line 53
    :goto_1
    if-ge v13, v10, :cond_3

    .line 54
    .line 55
    const-wide/16 v14, 0xff

    .line 56
    .line 57
    and-long/2addr v14, v8

    .line 58
    const-wide/16 v16, 0x80

    .line 59
    .line 60
    cmp-long v18, v14, v16

    .line 61
    .line 62
    if-gez v18, :cond_2

    .line 63
    .line 64
    shl-int/lit8 v14, v6, 0x3

    .line 65
    .line 66
    add-int/2addr v14, v13

    .line 67
    aget-wide v14, v2, v14

    .line 68
    .line 69
    if-ne v7, v11, :cond_0

    .line 70
    .line 71
    const-string v2, "..."

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_0
    if-eqz v7, :cond_1

    .line 78
    .line 79
    const-string v5, ", "

    .line 80
    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 88
    .line 89
    :cond_2
    shr-long/2addr v8, v12

    .line 90
    add-int/lit8 v13, v13, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    if-ne v10, v12, :cond_5

    .line 94
    .line 95
    :cond_4
    if-eq v6, v4, :cond_5

    .line 96
    .line 97
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    const-string v2, "]"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v2, "toString(...)"

    .line 110
    .line 111
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v1
.end method
