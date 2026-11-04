.class public final Log/b;
.super Ld/b;
.source "SourceFile"


# instance fields
.field public d:Z

.field public final e:I

.field public final f:La9/a;

.field public final g:La9/a;

.field public h:I

.field public i:[B

.field public j:I

.field public final synthetic k:Log/e;


# direct methods
.method public constructor <init>(Log/e;I[I[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Log/b;->k:Log/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ld/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lrg/b;->a:[B

    .line 7
    .line 8
    iput-object p1, p0, Log/b;->i:[B

    .line 9
    .line 10
    iput p2, p0, Log/b;->e:I

    .line 11
    .line 12
    invoke-static {p3}, Log/e;->r([I)La9/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Log/b;->f:La9/a;

    .line 17
    .line 18
    invoke-static {p4}, Log/e;->r([I)La9/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Log/b;->g:La9/a;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Log/b;->d:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Log/b;->j:I

    .line 2
    .line 3
    iget v1, p0, Log/b;->h:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final f0([BII)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    iget-boolean v5, v0, Log/b;->d:Z

    .line 14
    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_1
    iget v5, v0, Log/b;->j:I

    .line 21
    .line 22
    iget v6, v0, Log/b;->h:I

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    if-lez v5, :cond_2

    .line 26
    .line 27
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    iget-object v6, v0, Log/b;->i:[B

    .line 32
    .line 33
    iget v7, v0, Log/b;->h:I

    .line 34
    .line 35
    invoke-static {v6, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget v6, v0, Log/b;->h:I

    .line 39
    .line 40
    add-int/2addr v6, v5

    .line 41
    iput v6, v0, Log/b;->h:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v5, 0x0

    .line 45
    :goto_0
    if-ge v5, v3, :cond_e

    .line 46
    .line 47
    iget-object v6, v0, Log/b;->k:Log/e;

    .line 48
    .line 49
    iget-object v7, v6, Log/e;->c:Lrg/a;

    .line 50
    .line 51
    iget-object v8, v0, Log/b;->f:La9/a;

    .line 52
    .line 53
    invoke-static {v7, v8}, Log/e;->J(Lrg/a;La9/a;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    iget-object v8, v6, Log/e;->e:Leb/h;

    .line 58
    .line 59
    const v9, 0xffff

    .line 60
    .line 61
    .line 62
    const/4 v10, 0x1

    .line 63
    iget-object v11, v8, Leb/h;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v11, [B

    .line 66
    .line 67
    const/16 v12, 0x100

    .line 68
    .line 69
    if-ge v7, v12, :cond_4

    .line 70
    .line 71
    add-int/lit8 v6, v5, 0x1

    .line 72
    .line 73
    add-int/2addr v5, v2

    .line 74
    int-to-byte v7, v7

    .line 75
    iget v12, v8, Leb/h;->a:I

    .line 76
    .line 77
    aput-byte v7, v11, v12

    .line 78
    .line 79
    add-int/lit8 v11, v12, 0x1

    .line 80
    .line 81
    and-int/2addr v9, v11

    .line 82
    iget-boolean v11, v8, Leb/h;->b:Z

    .line 83
    .line 84
    if-nez v11, :cond_3

    .line 85
    .line 86
    if-ge v9, v12, :cond_3

    .line 87
    .line 88
    iput-boolean v10, v8, Leb/h;->b:Z

    .line 89
    .line 90
    :cond_3
    iput v9, v8, Leb/h;->a:I

    .line 91
    .line 92
    aput-byte v7, v1, v5

    .line 93
    .line 94
    :goto_1
    move v5, v6

    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_4
    if-le v7, v12, :cond_d

    .line 98
    .line 99
    sget-object v12, Log/e;->f:[S

    .line 100
    .line 101
    add-int/lit16 v7, v7, -0x101

    .line 102
    .line 103
    aget-short v7, v12, v7

    .line 104
    .line 105
    ushr-int/lit8 v12, v7, 0x5

    .line 106
    .line 107
    and-int/lit8 v7, v7, 0x1f

    .line 108
    .line 109
    iget-object v13, v6, Log/e;->c:Lrg/a;

    .line 110
    .line 111
    invoke-static {v13, v7}, Log/e;->K(Lrg/a;I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v13

    .line 115
    invoke-static {v12, v13, v14}, Lrg/b;->a(IJ)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iget-object v12, v6, Log/e;->c:Lrg/a;

    .line 120
    .line 121
    iget-object v13, v0, Log/b;->g:La9/a;

    .line 122
    .line 123
    invoke-static {v12, v13}, Log/e;->J(Lrg/a;La9/a;)I

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    sget-object v13, Log/e;->g:[I

    .line 128
    .line 129
    aget v12, v13, v12

    .line 130
    .line 131
    ushr-int/lit8 v13, v12, 0x4

    .line 132
    .line 133
    and-int/lit8 v12, v12, 0xf

    .line 134
    .line 135
    iget-object v6, v6, Log/e;->c:Lrg/a;

    .line 136
    .line 137
    invoke-static {v6, v12}, Log/e;->K(Lrg/a;I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v14

    .line 141
    invoke-static {v13, v14, v15}, Lrg/b;->a(IJ)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    iget-object v12, v0, Log/b;->i:[B

    .line 146
    .line 147
    array-length v12, v12

    .line 148
    if-ge v12, v7, :cond_5

    .line 149
    .line 150
    new-array v12, v7, [B

    .line 151
    .line 152
    iput-object v12, v0, Log/b;->i:[B

    .line 153
    .line 154
    :cond_5
    iput v7, v0, Log/b;->j:I

    .line 155
    .line 156
    iput v4, v0, Log/b;->h:I

    .line 157
    .line 158
    iget-object v12, v0, Log/b;->i:[B

    .line 159
    .line 160
    array-length v13, v11

    .line 161
    if-gt v6, v13, :cond_c

    .line 162
    .line 163
    iget v13, v8, Leb/h;->a:I

    .line 164
    .line 165
    sub-int v14, v13, v6

    .line 166
    .line 167
    and-int/2addr v14, v9

    .line 168
    iget-boolean v15, v8, Leb/h;->b:Z

    .line 169
    .line 170
    if-nez v15, :cond_7

    .line 171
    .line 172
    if-ge v14, v13, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v2, "Attempt to read beyond memory: dist="

    .line 178
    .line 179
    invoke-static {v6, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v1

    .line 187
    :cond_7
    :goto_2
    const/4 v6, 0x0

    .line 188
    :goto_3
    if-ge v6, v7, :cond_a

    .line 189
    .line 190
    aget-byte v13, v11, v14

    .line 191
    .line 192
    iget v15, v8, Leb/h;->a:I

    .line 193
    .line 194
    aput-byte v13, v11, v15

    .line 195
    .line 196
    add-int/lit8 v16, v15, 0x1

    .line 197
    .line 198
    and-int v4, v16, v9

    .line 199
    .line 200
    iget-boolean v9, v8, Leb/h;->b:Z

    .line 201
    .line 202
    if-nez v9, :cond_8

    .line 203
    .line 204
    if-ge v4, v15, :cond_8

    .line 205
    .line 206
    iput-boolean v10, v8, Leb/h;->b:Z

    .line 207
    .line 208
    :cond_8
    iput v4, v8, Leb/h;->a:I

    .line 209
    .line 210
    aput-byte v13, v12, v6

    .line 211
    .line 212
    add-int/lit8 v6, v6, 0x1

    .line 213
    .line 214
    add-int/lit8 v4, v14, 0x1

    .line 215
    .line 216
    const v9, 0xffff

    .line 217
    .line 218
    .line 219
    and-int/2addr v4, v9

    .line 220
    iget-boolean v13, v8, Leb/h;->b:Z

    .line 221
    .line 222
    if-nez v13, :cond_9

    .line 223
    .line 224
    if-ge v4, v14, :cond_9

    .line 225
    .line 226
    iput-boolean v10, v8, Leb/h;->b:Z

    .line 227
    .line 228
    :cond_9
    move v14, v4

    .line 229
    const/4 v4, 0x0

    .line 230
    goto :goto_3

    .line 231
    :cond_a
    add-int v4, v2, v5

    .line 232
    .line 233
    sub-int v6, v3, v5

    .line 234
    .line 235
    iget v7, v0, Log/b;->j:I

    .line 236
    .line 237
    iget v8, v0, Log/b;->h:I

    .line 238
    .line 239
    sub-int/2addr v7, v8

    .line 240
    if-lez v7, :cond_b

    .line 241
    .line 242
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    iget-object v7, v0, Log/b;->i:[B

    .line 247
    .line 248
    iget v8, v0, Log/b;->h:I

    .line 249
    .line 250
    invoke-static {v7, v8, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    iget v4, v0, Log/b;->h:I

    .line 254
    .line 255
    add-int/2addr v4, v6

    .line 256
    iput v4, v0, Log/b;->h:I

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_b
    const/4 v6, 0x0

    .line 260
    :goto_4
    add-int/2addr v6, v5

    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :goto_5
    const/4 v4, 0x0

    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 267
    .line 268
    const-string v2, "Illegal distance parameter: "

    .line 269
    .line 270
    invoke-static {v6, v2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v1

    .line 278
    :cond_d
    iput-boolean v10, v0, Log/b;->d:Z

    .line 279
    .line 280
    :cond_e
    move v1, v5

    .line 281
    :goto_6
    return v1
.end method

.method public final q0()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Log/b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Log/b;->e:I

    .line 8
    .line 9
    :goto_0
    return v0
.end method
