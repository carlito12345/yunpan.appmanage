.class public final La0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[J

.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 19
    invoke-direct {p0, v0}, La0/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v2, La0/s;->a:[J

    iput-object v2, p0, La0/o;->a:[J

    .line 3
    sget-object v2, La0/i;->a:[I

    .line 4
    iput-object v2, p0, La0/o;->b:[I

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 5
    invoke-static {p1}, La0/s;->b(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 6
    sget-object v2, La0/s;->a:[J

    if-lez p1, :cond_1

    const/4 v1, -0x1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    ushr-int/2addr v1, p1

    .line 8
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9
    :cond_2
    iput v1, p0, La0/o;->c:I

    if-nez v1, :cond_3

    .line 10
    sget-object p1, La0/s;->a:[J

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v1, 0xf

    and-int/lit8 p1, p1, -0x8

    shr-int/lit8 p1, p1, 0x3

    .line 11
    new-array p1, p1, [J

    invoke-static {p1}, Lje/i;->j0([J)V

    .line 12
    :goto_1
    iput-object p1, p0, La0/o;->a:[J

    shr-int/lit8 v2, v1, 0x3

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x3

    .line 13
    aget-wide v3, p1, v2

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v0

    const-wide/16 v7, -0x1

    xor-long/2addr v7, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    aput-wide v3, p1, v2

    .line 14
    iget p1, p0, La0/o;->c:I

    .line 15
    invoke-static {p1}, La0/s;->a(I)I

    .line 16
    new-array p1, v1, [I

    iput-object p1, p0, La0/o;->b:[I

    return-void

    .line 17
    :cond_4
    const-string p1, "Capacity must be a positive value."

    .line 18
    invoke-static {p1}, Lb0/a;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
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
    instance-of v3, v1, La0/o;

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
    check-cast v1, La0/o;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, La0/o;->b:[I

    .line 21
    .line 22
    iget-object v5, v0, La0/o;->a:[J

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
    aget v4, v3, v18

    .line 77
    .line 78
    const v18, -0x3361d2af    # -8.2930312E7f

    .line 79
    .line 80
    .line 81
    mul-int v18, v18, v4

    .line 82
    .line 83
    shl-int/lit8 v20, v18, 0x10

    .line 84
    .line 85
    xor-int v18, v18, v20

    .line 86
    .line 87
    and-int/lit8 v15, v18, 0x7f

    .line 88
    .line 89
    iget v10, v1, La0/o;->c:I

    .line 90
    .line 91
    ushr-int/lit8 v11, v18, 0x7

    .line 92
    .line 93
    and-int/2addr v11, v10

    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    :goto_2
    iget-object v14, v1, La0/o;->a:[J

    .line 97
    .line 98
    shr-int/lit8 v24, v11, 0x3

    .line 99
    .line 100
    and-int/lit8 v25, v11, 0x7

    .line 101
    .line 102
    shl-int/lit8 v2, v25, 0x3

    .line 103
    .line 104
    aget-wide v26, v14, v24

    .line 105
    .line 106
    ushr-long v26, v26, v2

    .line 107
    .line 108
    const/16 v25, 0x1

    .line 109
    .line 110
    add-int/lit8 v24, v24, 0x1

    .line 111
    .line 112
    aget-wide v24, v14, v24

    .line 113
    .line 114
    rsub-int/lit8 v14, v2, 0x40

    .line 115
    .line 116
    shl-long v24, v24, v14

    .line 117
    .line 118
    move-object v14, v3

    .line 119
    int-to-long v2, v2

    .line 120
    neg-long v2, v2

    .line 121
    const/16 v28, 0x3f

    .line 122
    .line 123
    shr-long v2, v2, v28

    .line 124
    .line 125
    and-long v2, v24, v2

    .line 126
    .line 127
    or-long v2, v26, v2

    .line 128
    .line 129
    move-object/from16 v24, v5

    .line 130
    .line 131
    move/from16 v25, v6

    .line 132
    .line 133
    int-to-long v5, v15

    .line 134
    const-wide v26, 0x101010101010101L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    mul-long v5, v5, v26

    .line 140
    .line 141
    xor-long/2addr v5, v2

    .line 142
    sub-long v26, v5, v26

    .line 143
    .line 144
    const-wide/16 v22, -0x1

    .line 145
    .line 146
    xor-long v5, v5, v22

    .line 147
    .line 148
    and-long v5, v26, v5

    .line 149
    .line 150
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    and-long v5, v5, v20

    .line 156
    .line 157
    :goto_3
    const-wide/16 v26, 0x0

    .line 158
    .line 159
    cmp-long v28, v5, v26

    .line 160
    .line 161
    if-eqz v28, :cond_3

    .line 162
    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 164
    .line 165
    .line 166
    move-result v26

    .line 167
    shr-int/lit8 v26, v26, 0x3

    .line 168
    .line 169
    add-int v26, v11, v26

    .line 170
    .line 171
    and-int v26, v26, v10

    .line 172
    .line 173
    iget-object v0, v1, La0/o;->b:[I

    .line 174
    .line 175
    aget v0, v0, v26

    .line 176
    .line 177
    if-ne v0, v4, :cond_2

    .line 178
    .line 179
    const-wide/16 v5, -0x1

    .line 180
    .line 181
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_2
    const-wide/16 v26, 0x1

    .line 188
    .line 189
    sub-long v26, v5, v26

    .line 190
    .line 191
    and-long v5, v5, v26

    .line 192
    .line 193
    move-object/from16 v0, p0

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    const-wide/16 v5, -0x1

    .line 197
    .line 198
    xor-long v22, v2, v5

    .line 199
    .line 200
    const/4 v0, 0x6

    .line 201
    shl-long v22, v22, v0

    .line 202
    .line 203
    and-long v2, v2, v22

    .line 204
    .line 205
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    and-long v2, v2, v20

    .line 211
    .line 212
    cmp-long v0, v2, v26

    .line 213
    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    const/16 v26, -0x1

    .line 217
    .line 218
    :goto_4
    if-ltz v26, :cond_4

    .line 219
    .line 220
    const/4 v0, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_4
    const/4 v0, 0x0

    .line 223
    :goto_5
    if-nez v0, :cond_5

    .line 224
    .line 225
    const/4 v0, 0x0

    .line 226
    return v0

    .line 227
    :cond_5
    :goto_6
    const/4 v0, 0x0

    .line 228
    const/16 v2, 0x8

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_6
    const/4 v0, 0x0

    .line 232
    const/16 v2, 0x8

    .line 233
    .line 234
    add-int/lit8 v16, v16, 0x8

    .line 235
    .line 236
    add-int v11, v11, v16

    .line 237
    .line 238
    and-int/2addr v11, v10

    .line 239
    move-object/from16 v0, p0

    .line 240
    .line 241
    move-object v3, v14

    .line 242
    move-object/from16 v5, v24

    .line 243
    .line 244
    move/from16 v6, v25

    .line 245
    .line 246
    const/4 v2, 0x1

    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :cond_7
    move-object v14, v3

    .line 250
    move-object/from16 v24, v5

    .line 251
    .line 252
    move/from16 v25, v6

    .line 253
    .line 254
    move-wide v5, v10

    .line 255
    move-wide/from16 v20, v15

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :goto_7
    shr-long/2addr v8, v2

    .line 259
    add-int/lit8 v13, v13, 0x1

    .line 260
    .line 261
    move-object/from16 v0, p0

    .line 262
    .line 263
    move-wide v10, v5

    .line 264
    move-object v3, v14

    .line 265
    move-wide/from16 v15, v20

    .line 266
    .line 267
    move-object/from16 v5, v24

    .line 268
    .line 269
    move/from16 v6, v25

    .line 270
    .line 271
    const/4 v2, 0x1

    .line 272
    const/4 v4, 0x0

    .line 273
    const/4 v14, 0x7

    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_8
    move-object v14, v3

    .line 277
    move-object/from16 v24, v5

    .line 278
    .line 279
    move/from16 v25, v6

    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    const/16 v2, 0x8

    .line 283
    .line 284
    if-ne v12, v2, :cond_9

    .line 285
    .line 286
    move/from16 v6, v25

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_9
    const/4 v0, 0x1

    .line 290
    goto :goto_9

    .line 291
    :cond_a
    move-object v14, v3

    .line 292
    move-object/from16 v24, v5

    .line 293
    .line 294
    const/4 v0, 0x0

    .line 295
    :goto_8
    if-eq v7, v6, :cond_9

    .line 296
    .line 297
    add-int/lit8 v7, v7, 0x1

    .line 298
    .line 299
    move-object/from16 v0, p0

    .line 300
    .line 301
    move-object v3, v14

    .line 302
    move-object/from16 v5, v24

    .line 303
    .line 304
    const/4 v2, 0x1

    .line 305
    const/4 v4, 0x0

    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :goto_9
    return v0
.end method

.method public final hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La0/o;->b:[I

    .line 4
    .line 5
    iget-object v2, v0, La0/o;->a:[J

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
    aget v12, v1, v12

    .line 59
    .line 60
    add-int/2addr v6, v12

    .line 61
    :cond_0
    shr-long/2addr v7, v10

    .line 62
    add-int/lit8 v11, v11, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-ne v9, v10, :cond_5

    .line 66
    .line 67
    :cond_2
    if-eq v5, v3, :cond_3

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    move v4, v6

    .line 73
    :cond_4
    move v6, v4

    .line 74
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
    iget-object v2, v0, La0/o;->b:[I

    .line 14
    .line 15
    iget-object v3, v0, La0/o;->a:[J

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
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    :goto_0
    aget-wide v8, v3, v6

    .line 26
    .line 27
    const-wide/16 v10, -0x1

    .line 28
    .line 29
    xor-long/2addr v10, v8

    .line 30
    const/4 v12, 0x7

    .line 31
    shl-long/2addr v10, v12

    .line 32
    and-long/2addr v10, v8

    .line 33
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr v10, v12

    .line 39
    cmp-long v14, v10, v12

    .line 40
    .line 41
    if-eqz v14, :cond_4

    .line 42
    .line 43
    sub-int v10, v6, v4

    .line 44
    .line 45
    const/4 v11, -0x1

    .line 46
    xor-int/2addr v10, v11

    .line 47
    ushr-int/lit8 v10, v10, 0x1f

    .line 48
    .line 49
    const/16 v12, 0x8

    .line 50
    .line 51
    rsub-int/lit8 v10, v10, 0x8

    .line 52
    .line 53
    const/4 v13, 0x0

    .line 54
    :goto_1
    if-ge v13, v10, :cond_3

    .line 55
    .line 56
    const-wide/16 v14, 0xff

    .line 57
    .line 58
    and-long/2addr v14, v8

    .line 59
    const-wide/16 v16, 0x80

    .line 60
    .line 61
    cmp-long v18, v14, v16

    .line 62
    .line 63
    if-gez v18, :cond_2

    .line 64
    .line 65
    shl-int/lit8 v14, v6, 0x3

    .line 66
    .line 67
    add-int/2addr v14, v13

    .line 68
    aget v14, v2, v14

    .line 69
    .line 70
    if-ne v7, v11, :cond_0

    .line 71
    .line 72
    const-string v2, "..."

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_0
    if-eqz v7, :cond_1

    .line 79
    .line 80
    const-string v15, ", "

    .line 81
    .line 82
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    :cond_2
    shr-long/2addr v8, v12

    .line 91
    add-int/lit8 v13, v13, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    if-ne v10, v12, :cond_5

    .line 95
    .line 96
    :cond_4
    if-eq v6, v4, :cond_5

    .line 97
    .line 98
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    const-string v2, "]"

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "toString(...)"

    .line 111
    .line 112
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v1
.end method
