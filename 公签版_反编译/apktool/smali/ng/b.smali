.class public final Lng/b;
.super Lmg/a;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Lng/f;

.field public f:I

.field public g:Lrg/a;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public v:C

.field public w:Lng/a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lmg/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lng/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lng/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lng/b;->e:Lng/f;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lng/b;->h:I

    .line 13
    .line 14
    new-instance v0, Lrg/a;

    .line 15
    .line 16
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 17
    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lxg/e;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lxg/e;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    move-object p1, v1

    .line 26
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Lrg/a;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lng/b;->g:Lrg/a;

    .line 32
    .line 33
    iget-object p1, p0, Lng/b;->g:Lrg/a;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lrg/a;->r(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    long-to-int p1, v2

    .line 45
    iget-object v2, p0, Lng/b;->g:Lrg/a;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lrg/a;->r(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    long-to-int v3, v2

    .line 52
    iget-object v2, p0, Lng/b;->g:Lrg/a;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lrg/a;->r(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    long-to-int v2, v4

    .line 59
    const/16 v4, 0x42

    .line 60
    .line 61
    if-ne p1, v4, :cond_2

    .line 62
    .line 63
    const/16 p1, 0x5a

    .line 64
    .line 65
    if-ne v3, p1, :cond_2

    .line 66
    .line 67
    const/16 p1, 0x68

    .line 68
    .line 69
    if-ne v2, p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lng/b;->g:Lrg/a;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lrg/a;->r(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    long-to-int p1, v1

    .line 78
    const/16 v1, 0x31

    .line 79
    .line 80
    if-lt p1, v1, :cond_1

    .line 81
    .line 82
    const/16 v1, 0x39

    .line 83
    .line 84
    if-gt p1, v1, :cond_1

    .line 85
    .line 86
    add-int/lit8 p1, p1, -0x30

    .line 87
    .line 88
    iput p1, p0, Lng/b;->c:I

    .line 89
    .line 90
    iput v0, p0, Lng/b;->k:I

    .line 91
    .line 92
    invoke-virtual {p0}, Lng/b;->L()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 97
    .line 98
    const-string v0, "BZip2 block size is invalid"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 105
    .line 106
    const-string v0, "Stream is not in the BZip2 format"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 113
    .line 114
    const-string v0, "No InputStream"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public static A(Lrg/a;I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lrg/a;->r(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p0, v0

    .line 8
    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    long-to-int p1, p0

    .line 12
    return p1

    .line 13
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 14
    .line 15
    const-string p1, "Unexpected end of stream"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static J(IILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Corrupted input, "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-ge p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 9
    .line 10
    const-string p1, " value too big"

    .line 11
    .line 12
    invoke-static {v0, p2, p1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 21
    .line 22
    const-string p1, " value negative"

    .line 23
    .line 24
    invoke-static {v0, p2, p1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method


# virtual methods
.method public final K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lng/b;->e:Lng/f;

    .line 2
    .line 3
    iget v0, v0, Lng/f;->a:I

    .line 4
    .line 5
    xor-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iget v1, p0, Lng/b;->i:I

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lng/b;->k:I

    .line 12
    .line 13
    shl-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    ushr-int/lit8 v1, v1, 0x1f

    .line 16
    .line 17
    or-int/2addr v1, v2

    .line 18
    xor-int/2addr v0, v1

    .line 19
    iput v0, p0, Lng/b;->k:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget v0, p0, Lng/b;->j:I

    .line 23
    .line 24
    shl-int/lit8 v2, v0, 0x1

    .line 25
    .line 26
    ushr-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    or-int/2addr v0, v2

    .line 29
    xor-int/2addr v0, v1

    .line 30
    iput v0, p0, Lng/b;->k:I

    .line 31
    .line 32
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    const-string v1, "BZip2 CRC error"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public final L()V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lng/b;->g:Lrg/a;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-static {v1, v2}, Lng/b;->A(Lrg/a;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    int-to-char v3, v3

    .line 12
    invoke-static {v1, v2}, Lng/b;->A(Lrg/a;I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    int-to-char v4, v4

    .line 17
    invoke-static {v1, v2}, Lng/b;->A(Lrg/a;I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    int-to-char v5, v5

    .line 22
    invoke-static {v1, v2}, Lng/b;->A(Lrg/a;I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    int-to-char v6, v6

    .line 27
    invoke-static {v1, v2}, Lng/b;->A(Lrg/a;I)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    int-to-char v7, v7

    .line 32
    invoke-static {v1, v2}, Lng/b;->A(Lrg/a;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-char v2, v2

    .line 37
    const/16 v8, 0x17

    .line 38
    .line 39
    const/16 v9, 0x20

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    if-ne v3, v8, :cond_2

    .line 43
    .line 44
    const/16 v11, 0x72

    .line 45
    .line 46
    if-ne v4, v11, :cond_2

    .line 47
    .line 48
    const/16 v11, 0x45

    .line 49
    .line 50
    if-ne v5, v11, :cond_2

    .line 51
    .line 52
    const/16 v11, 0x38

    .line 53
    .line 54
    if-ne v6, v11, :cond_2

    .line 55
    .line 56
    const/16 v11, 0x50

    .line 57
    .line 58
    if-ne v7, v11, :cond_2

    .line 59
    .line 60
    const/16 v11, 0x90

    .line 61
    .line 62
    if-eq v2, v11, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, v0, Lng/b;->g:Lrg/a;

    .line 66
    .line 67
    invoke-static {v1, v9}, Lng/b;->A(Lrg/a;I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Lng/b;->j:I

    .line 72
    .line 73
    iput v10, v0, Lng/b;->h:I

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    iput-object v2, v0, Lng/b;->w:Lng/a;

    .line 77
    .line 78
    iget v2, v0, Lng/b;->k:I

    .line 79
    .line 80
    if-ne v1, v2, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 84
    .line 85
    const-string v2, "BZip2 CRC error"

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_2
    :goto_0
    const/16 v11, 0x31

    .line 92
    .line 93
    if-ne v3, v11, :cond_32

    .line 94
    .line 95
    const/16 v3, 0x41

    .line 96
    .line 97
    if-ne v4, v3, :cond_32

    .line 98
    .line 99
    const/16 v3, 0x59

    .line 100
    .line 101
    if-ne v5, v3, :cond_32

    .line 102
    .line 103
    const/16 v4, 0x26

    .line 104
    .line 105
    if-ne v6, v4, :cond_32

    .line 106
    .line 107
    const/16 v4, 0x53

    .line 108
    .line 109
    if-ne v7, v4, :cond_32

    .line 110
    .line 111
    if-ne v2, v3, :cond_32

    .line 112
    .line 113
    invoke-static {v1, v9}, Lng/b;->A(Lrg/a;I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput v2, v0, Lng/b;->i:I

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-static {v1, v2}, Lng/b;->A(Lrg/a;I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v1, v2, :cond_3

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const/4 v1, 0x0

    .line 129
    :goto_1
    iput-boolean v1, v0, Lng/b;->d:Z

    .line 130
    .line 131
    iget-object v1, v0, Lng/b;->w:Lng/a;

    .line 132
    .line 133
    if-nez v1, :cond_4

    .line 134
    .line 135
    new-instance v1, Lng/a;

    .line 136
    .line 137
    iget v3, v0, Lng/b;->c:I

    .line 138
    .line 139
    invoke-direct {v1, v3}, Lng/a;-><init>(I)V

    .line 140
    .line 141
    .line 142
    iput-object v1, v0, Lng/b;->w:Lng/a;

    .line 143
    .line 144
    :cond_4
    iget-object v1, v0, Lng/b;->g:Lrg/a;

    .line 145
    .line 146
    const/16 v3, 0x18

    .line 147
    .line 148
    invoke-static {v1, v3}, Lng/b;->A(Lrg/a;I)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    iput v3, v0, Lng/b;->b:I

    .line 153
    .line 154
    iget-object v3, v0, Lng/b;->g:Lrg/a;

    .line 155
    .line 156
    iget-object v4, v0, Lng/b;->w:Lng/a;

    .line 157
    .line 158
    iget-object v5, v4, Lng/a;->a:[Z

    .line 159
    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    :goto_2
    const/16 v12, 0x10

    .line 163
    .line 164
    if-ge v6, v12, :cond_6

    .line 165
    .line 166
    invoke-static {v3, v2}, Lng/b;->A(Lrg/a;I)I

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-eqz v12, :cond_5

    .line 171
    .line 172
    shl-int v12, v2, v6

    .line 173
    .line 174
    or-int/2addr v7, v12

    .line 175
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([ZZ)V

    .line 179
    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    :goto_3
    if-ge v6, v12, :cond_9

    .line 183
    .line 184
    shl-int v13, v2, v6

    .line 185
    .line 186
    and-int/2addr v13, v7

    .line 187
    if-eqz v13, :cond_8

    .line 188
    .line 189
    shl-int/lit8 v13, v6, 0x4

    .line 190
    .line 191
    const/4 v14, 0x0

    .line 192
    :goto_4
    if-ge v14, v12, :cond_8

    .line 193
    .line 194
    invoke-static {v3, v2}, Lng/b;->A(Lrg/a;I)I

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    if-eqz v15, :cond_7

    .line 199
    .line 200
    add-int v15, v13, v14

    .line 201
    .line 202
    aput-boolean v2, v5, v15

    .line 203
    .line 204
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_9
    iget-object v5, v0, Lng/b;->w:Lng/a;

    .line 211
    .line 212
    iget-object v6, v5, Lng/a;->a:[Z

    .line 213
    .line 214
    const/4 v7, 0x0

    .line 215
    const/4 v13, 0x0

    .line 216
    :goto_5
    const/16 v14, 0x100

    .line 217
    .line 218
    if-ge v7, v14, :cond_b

    .line 219
    .line 220
    aget-boolean v14, v6, v7

    .line 221
    .line 222
    if-eqz v14, :cond_a

    .line 223
    .line 224
    add-int/lit8 v14, v13, 0x1

    .line 225
    .line 226
    int-to-byte v15, v7

    .line 227
    iget-object v9, v5, Lng/a;->b:[B

    .line 228
    .line 229
    aput-byte v15, v9, v13

    .line 230
    .line 231
    move v13, v14

    .line 232
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 233
    .line 234
    const/16 v9, 0x20

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_b
    iput v13, v0, Lng/b;->f:I

    .line 238
    .line 239
    add-int/lit8 v13, v13, 0x2

    .line 240
    .line 241
    const/4 v5, 0x3

    .line 242
    invoke-static {v3, v5}, Lng/b;->A(Lrg/a;I)I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    const/16 v6, 0xf

    .line 247
    .line 248
    invoke-static {v3, v6}, Lng/b;->A(Lrg/a;I)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-ltz v6, :cond_31

    .line 253
    .line 254
    const/16 v7, 0x103

    .line 255
    .line 256
    const-string v9, "alphaSize"

    .line 257
    .line 258
    invoke-static {v13, v7, v9}, Lng/b;->J(IILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const/4 v7, 0x7

    .line 262
    const-string v9, "nGroups"

    .line 263
    .line 264
    invoke-static {v5, v7, v9}, Lng/b;->J(IILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/4 v7, 0x0

    .line 268
    :goto_6
    iget-object v9, v4, Lng/a;->d:[B

    .line 269
    .line 270
    const/16 v15, 0x4652

    .line 271
    .line 272
    if-ge v7, v6, :cond_e

    .line 273
    .line 274
    const/4 v11, 0x0

    .line 275
    :goto_7
    invoke-static {v3, v2}, Lng/b;->A(Lrg/a;I)I

    .line 276
    .line 277
    .line 278
    move-result v16

    .line 279
    if-eqz v16, :cond_c

    .line 280
    .line 281
    add-int/lit8 v11, v11, 0x1

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_c
    if-ge v7, v15, :cond_d

    .line 285
    .line 286
    int-to-byte v11, v11

    .line 287
    aput-byte v11, v9, v7

    .line 288
    .line 289
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 290
    .line 291
    const/16 v11, 0x31

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_e
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    move v7, v5

    .line 299
    :goto_8
    const/4 v11, -0x1

    .line 300
    add-int/2addr v7, v11

    .line 301
    iget-object v15, v4, Lng/a;->m:[B

    .line 302
    .line 303
    if-ltz v7, :cond_f

    .line 304
    .line 305
    int-to-byte v11, v7

    .line 306
    aput-byte v11, v15, v7

    .line 307
    .line 308
    const/16 v15, 0x4652

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_f
    const/4 v7, 0x0

    .line 312
    :goto_9
    const/4 v12, 0x6

    .line 313
    if-ge v7, v6, :cond_11

    .line 314
    .line 315
    aget-byte v14, v9, v7

    .line 316
    .line 317
    and-int/lit16 v14, v14, 0xff

    .line 318
    .line 319
    const-string v8, "selectorMtf"

    .line 320
    .line 321
    invoke-static {v14, v12, v8}, Lng/b;->J(IILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    aget-byte v8, v15, v14

    .line 325
    .line 326
    :goto_a
    if-lez v14, :cond_10

    .line 327
    .line 328
    add-int/lit8 v12, v14, -0x1

    .line 329
    .line 330
    aget-byte v12, v15, v12

    .line 331
    .line 332
    aput-byte v12, v15, v14

    .line 333
    .line 334
    add-int/lit8 v14, v14, -0x1

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_10
    aput-byte v8, v15, v10

    .line 338
    .line 339
    iget-object v12, v4, Lng/a;->c:[B

    .line 340
    .line 341
    aput-byte v8, v12, v7

    .line 342
    .line 343
    add-int/lit8 v7, v7, 0x1

    .line 344
    .line 345
    const/16 v8, 0x17

    .line 346
    .line 347
    const/16 v12, 0x10

    .line 348
    .line 349
    const/16 v14, 0x100

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_11
    const/4 v6, 0x0

    .line 353
    :goto_b
    if-ge v6, v5, :cond_15

    .line 354
    .line 355
    const/4 v7, 0x5

    .line 356
    invoke-static {v3, v7}, Lng/b;->A(Lrg/a;I)I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    iget-object v8, v4, Lng/a;->l:[[C

    .line 361
    .line 362
    aget-object v8, v8, v6

    .line 363
    .line 364
    const/4 v9, 0x0

    .line 365
    :goto_c
    if-ge v9, v13, :cond_14

    .line 366
    .line 367
    :goto_d
    invoke-static {v3, v2}, Lng/b;->A(Lrg/a;I)I

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    if-eqz v14, :cond_13

    .line 372
    .line 373
    invoke-static {v3, v2}, Lng/b;->A(Lrg/a;I)I

    .line 374
    .line 375
    .line 376
    move-result v14

    .line 377
    if-eqz v14, :cond_12

    .line 378
    .line 379
    const/4 v14, -0x1

    .line 380
    goto :goto_e

    .line 381
    :cond_12
    const/4 v14, 0x1

    .line 382
    :goto_e
    add-int/2addr v7, v14

    .line 383
    goto :goto_d

    .line 384
    :cond_13
    int-to-char v14, v7

    .line 385
    aput-char v14, v8, v9

    .line 386
    .line 387
    add-int/lit8 v9, v9, 0x1

    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_15
    iget-object v3, v0, Lng/b;->w:Lng/a;

    .line 394
    .line 395
    iget-object v4, v3, Lng/a;->l:[[C

    .line 396
    .line 397
    const/4 v6, 0x0

    .line 398
    :goto_f
    if-ge v6, v5, :cond_21

    .line 399
    .line 400
    aget-object v8, v4, v6

    .line 401
    .line 402
    move v9, v13

    .line 403
    const/16 v14, 0x20

    .line 404
    .line 405
    const/4 v15, 0x0

    .line 406
    :goto_10
    add-int/2addr v9, v11

    .line 407
    if-ltz v9, :cond_18

    .line 408
    .line 409
    aget-char v12, v8, v9

    .line 410
    .line 411
    if-le v12, v15, :cond_16

    .line 412
    .line 413
    move v15, v12

    .line 414
    :cond_16
    if-ge v12, v14, :cond_17

    .line 415
    .line 416
    move v14, v12

    .line 417
    :cond_17
    const/4 v12, 0x6

    .line 418
    goto :goto_10

    .line 419
    :cond_18
    iget-object v8, v3, Lng/a;->f:[[I

    .line 420
    .line 421
    aget-object v8, v8, v6

    .line 422
    .line 423
    iget-object v9, v3, Lng/a;->g:[[I

    .line 424
    .line 425
    aget-object v9, v9, v6

    .line 426
    .line 427
    iget-object v12, v3, Lng/a;->h:[[I

    .line 428
    .line 429
    aget-object v12, v12, v6

    .line 430
    .line 431
    aget-object v20, v4, v6

    .line 432
    .line 433
    move v2, v14

    .line 434
    const/16 v22, 0x0

    .line 435
    .line 436
    :goto_11
    if-gt v2, v15, :cond_1b

    .line 437
    .line 438
    const/4 v7, 0x0

    .line 439
    :goto_12
    if-ge v7, v13, :cond_1a

    .line 440
    .line 441
    aget-char v10, v20, v7

    .line 442
    .line 443
    if-ne v10, v2, :cond_19

    .line 444
    .line 445
    add-int/lit8 v10, v22, 0x1

    .line 446
    .line 447
    aput v7, v12, v22

    .line 448
    .line 449
    move/from16 v22, v10

    .line 450
    .line 451
    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 452
    .line 453
    const/4 v10, 0x0

    .line 454
    goto :goto_12

    .line 455
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 456
    .line 457
    const/4 v10, 0x0

    .line 458
    goto :goto_11

    .line 459
    :cond_1b
    const/16 v2, 0x17

    .line 460
    .line 461
    :goto_13
    add-int/2addr v2, v11

    .line 462
    if-lez v2, :cond_1c

    .line 463
    .line 464
    const/4 v7, 0x0

    .line 465
    aput v7, v9, v2

    .line 466
    .line 467
    aput v7, v8, v2

    .line 468
    .line 469
    goto :goto_13

    .line 470
    :cond_1c
    const/4 v2, 0x0

    .line 471
    :goto_14
    if-ge v2, v13, :cond_1d

    .line 472
    .line 473
    aget-char v7, v20, v2

    .line 474
    .line 475
    const-string v10, "length"

    .line 476
    .line 477
    const/16 v12, 0x102

    .line 478
    .line 479
    invoke-static {v7, v12, v10}, Lng/b;->J(IILjava/lang/String;)V

    .line 480
    .line 481
    .line 482
    const/4 v10, 0x1

    .line 483
    add-int/2addr v7, v10

    .line 484
    aget v12, v9, v7

    .line 485
    .line 486
    add-int/2addr v12, v10

    .line 487
    aput v12, v9, v7

    .line 488
    .line 489
    add-int/lit8 v2, v2, 0x1

    .line 490
    .line 491
    goto :goto_14

    .line 492
    :cond_1d
    const/4 v2, 0x0

    .line 493
    aget v7, v9, v2

    .line 494
    .line 495
    const/4 v2, 0x1

    .line 496
    const/16 v10, 0x17

    .line 497
    .line 498
    :goto_15
    if-ge v2, v10, :cond_1e

    .line 499
    .line 500
    aget v12, v9, v2

    .line 501
    .line 502
    add-int/2addr v7, v12

    .line 503
    aput v7, v9, v2

    .line 504
    .line 505
    add-int/lit8 v2, v2, 0x1

    .line 506
    .line 507
    goto :goto_15

    .line 508
    :cond_1e
    aget v2, v9, v14

    .line 509
    .line 510
    move v12, v14

    .line 511
    const/4 v7, 0x0

    .line 512
    :goto_16
    if-gt v12, v15, :cond_1f

    .line 513
    .line 514
    add-int/lit8 v18, v12, 0x1

    .line 515
    .line 516
    aget v20, v9, v18

    .line 517
    .line 518
    sub-int v2, v20, v2

    .line 519
    .line 520
    add-int/2addr v2, v7

    .line 521
    add-int/lit8 v7, v2, -0x1

    .line 522
    .line 523
    aput v7, v8, v12

    .line 524
    .line 525
    const/4 v7, 0x1

    .line 526
    shl-int/2addr v2, v7

    .line 527
    move v7, v2

    .line 528
    move/from16 v12, v18

    .line 529
    .line 530
    move/from16 v2, v20

    .line 531
    .line 532
    goto :goto_16

    .line 533
    :cond_1f
    const/4 v7, 0x1

    .line 534
    add-int/lit8 v2, v14, 0x1

    .line 535
    .line 536
    :goto_17
    if-gt v2, v15, :cond_20

    .line 537
    .line 538
    add-int/lit8 v12, v2, -0x1

    .line 539
    .line 540
    aget v12, v8, v12

    .line 541
    .line 542
    add-int/2addr v12, v7

    .line 543
    shl-int/2addr v12, v7

    .line 544
    aget v7, v9, v2

    .line 545
    .line 546
    sub-int/2addr v12, v7

    .line 547
    aput v12, v9, v2

    .line 548
    .line 549
    add-int/lit8 v2, v2, 0x1

    .line 550
    .line 551
    const/4 v7, 0x1

    .line 552
    goto :goto_17

    .line 553
    :cond_20
    iget-object v2, v3, Lng/a;->i:[I

    .line 554
    .line 555
    aput v14, v2, v6

    .line 556
    .line 557
    add-int/lit8 v6, v6, 0x1

    .line 558
    .line 559
    const/4 v2, 0x1

    .line 560
    const/4 v10, 0x0

    .line 561
    const/4 v12, 0x6

    .line 562
    goto/16 :goto_f

    .line 563
    .line 564
    :cond_21
    iget-object v2, v0, Lng/b;->w:Lng/a;

    .line 565
    .line 566
    iget-object v3, v2, Lng/a;->o:[B

    .line 567
    .line 568
    iget v4, v0, Lng/b;->c:I

    .line 569
    .line 570
    const v5, 0x186a0

    .line 571
    .line 572
    .line 573
    mul-int v4, v4, v5

    .line 574
    .line 575
    const/16 v5, 0x100

    .line 576
    .line 577
    :goto_18
    add-int/2addr v5, v11

    .line 578
    iget-object v6, v2, Lng/a;->e:[I

    .line 579
    .line 580
    iget-object v7, v2, Lng/a;->k:[C

    .line 581
    .line 582
    if-ltz v5, :cond_22

    .line 583
    .line 584
    int-to-char v8, v5

    .line 585
    aput-char v8, v7, v5

    .line 586
    .line 587
    const/4 v8, 0x0

    .line 588
    aput v8, v6, v5

    .line 589
    .line 590
    goto :goto_18

    .line 591
    :cond_22
    const/4 v8, 0x0

    .line 592
    iget v5, v0, Lng/b;->f:I

    .line 593
    .line 594
    const/4 v9, 0x1

    .line 595
    add-int/2addr v5, v9

    .line 596
    iget-object v9, v0, Lng/b;->w:Lng/a;

    .line 597
    .line 598
    iget-object v10, v9, Lng/a;->c:[B

    .line 599
    .line 600
    aget-byte v10, v10, v8

    .line 601
    .line 602
    and-int/lit16 v8, v10, 0xff

    .line 603
    .line 604
    const-string v10, "zt"

    .line 605
    .line 606
    const/4 v12, 0x6

    .line 607
    invoke-static {v8, v12, v10}, Lng/b;->J(IILjava/lang/String;)V

    .line 608
    .line 609
    .line 610
    iget-object v12, v9, Lng/a;->f:[[I

    .line 611
    .line 612
    aget-object v12, v12, v8

    .line 613
    .line 614
    iget-object v13, v9, Lng/a;->i:[I

    .line 615
    .line 616
    aget v13, v13, v8

    .line 617
    .line 618
    const-string v14, "zn"

    .line 619
    .line 620
    const/16 v15, 0x102

    .line 621
    .line 622
    invoke-static {v13, v15, v14}, Lng/b;->J(IILjava/lang/String;)V

    .line 623
    .line 624
    .line 625
    iget-object v11, v0, Lng/b;->g:Lrg/a;

    .line 626
    .line 627
    invoke-static {v11, v13}, Lng/b;->A(Lrg/a;I)I

    .line 628
    .line 629
    .line 630
    move-result v11

    .line 631
    :goto_19
    aget v15, v12, v13

    .line 632
    .line 633
    if-le v11, v15, :cond_23

    .line 634
    .line 635
    add-int/lit8 v13, v13, 0x1

    .line 636
    .line 637
    const/16 v15, 0x102

    .line 638
    .line 639
    invoke-static {v13, v15, v14}, Lng/b;->J(IILjava/lang/String;)V

    .line 640
    .line 641
    .line 642
    shl-int/lit8 v11, v11, 0x1

    .line 643
    .line 644
    iget-object v15, v0, Lng/b;->g:Lrg/a;

    .line 645
    .line 646
    move-object/from16 v18, v12

    .line 647
    .line 648
    const/4 v12, 0x1

    .line 649
    invoke-static {v15, v12}, Lng/b;->A(Lrg/a;I)I

    .line 650
    .line 651
    .line 652
    move-result v15

    .line 653
    or-int/2addr v11, v15

    .line 654
    move-object/from16 v12, v18

    .line 655
    .line 656
    goto :goto_19

    .line 657
    :cond_23
    iget-object v12, v9, Lng/a;->g:[[I

    .line 658
    .line 659
    aget-object v12, v12, v8

    .line 660
    .line 661
    aget v12, v12, v13

    .line 662
    .line 663
    sub-int/2addr v11, v12

    .line 664
    const-string v12, "zvec"

    .line 665
    .line 666
    const/16 v13, 0x102

    .line 667
    .line 668
    invoke-static {v11, v13, v12}, Lng/b;->J(IILjava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-object v9, v9, Lng/a;->h:[[I

    .line 672
    .line 673
    aget-object v8, v9, v8

    .line 674
    .line 675
    aget v8, v8, v11

    .line 676
    .line 677
    iget-object v9, v2, Lng/a;->c:[B

    .line 678
    .line 679
    const/4 v11, 0x0

    .line 680
    aget-byte v13, v9, v11

    .line 681
    .line 682
    and-int/lit16 v11, v13, 0xff

    .line 683
    .line 684
    const/4 v13, 0x6

    .line 685
    invoke-static {v11, v13, v10}, Lng/b;->J(IILjava/lang/String;)V

    .line 686
    .line 687
    .line 688
    iget-object v13, v2, Lng/a;->g:[[I

    .line 689
    .line 690
    aget-object v15, v13, v11

    .line 691
    .line 692
    move/from16 v18, v8

    .line 693
    .line 694
    iget-object v8, v2, Lng/a;->f:[[I

    .line 695
    .line 696
    aget-object v20, v8, v11

    .line 697
    .line 698
    move-object/from16 v22, v15

    .line 699
    .line 700
    iget-object v15, v2, Lng/a;->h:[[I

    .line 701
    .line 702
    aget-object v23, v15, v11

    .line 703
    .line 704
    iget-object v0, v2, Lng/a;->i:[I

    .line 705
    .line 706
    aget v11, v0, v11

    .line 707
    .line 708
    move-object/from16 v25, v12

    .line 709
    .line 710
    move-object/from16 v24, v23

    .line 711
    .line 712
    const/4 v12, -0x1

    .line 713
    const/16 v23, 0x0

    .line 714
    .line 715
    const/16 v26, 0x31

    .line 716
    .line 717
    move/from16 v36, v18

    .line 718
    .line 719
    move/from16 v18, v11

    .line 720
    .line 721
    move/from16 v11, v36

    .line 722
    .line 723
    :goto_1a
    if-eq v11, v5, :cond_30

    .line 724
    .line 725
    move/from16 v27, v5

    .line 726
    .line 727
    iget-object v5, v2, Lng/a;->b:[B

    .line 728
    .line 729
    move-object/from16 v28, v2

    .line 730
    .line 731
    const-string v2, "groupNo"

    .line 732
    .line 733
    move-object/from16 v29, v1

    .line 734
    .line 735
    const-string v1, "yy"

    .line 736
    .line 737
    move-object/from16 v30, v14

    .line 738
    .line 739
    const-string v14, " exceeds "

    .line 740
    .line 741
    if-eqz v11, :cond_2a

    .line 742
    .line 743
    move-object/from16 v31, v14

    .line 744
    .line 745
    const/4 v14, 0x1

    .line 746
    if-ne v11, v14, :cond_24

    .line 747
    .line 748
    move-object/from16 v33, v0

    .line 749
    .line 750
    move-object/from16 v0, v25

    .line 751
    .line 752
    move-object/from16 v14, v29

    .line 753
    .line 754
    move-object/from16 v34, v31

    .line 755
    .line 756
    :goto_1b
    move/from16 v25, v11

    .line 757
    .line 758
    move v11, v4

    .line 759
    move-object/from16 v4, v30

    .line 760
    .line 761
    goto/16 :goto_20

    .line 762
    .line 763
    :cond_24
    add-int/lit8 v12, v12, 0x1

    .line 764
    .line 765
    if-ge v12, v4, :cond_29

    .line 766
    .line 767
    const/16 v14, 0x101

    .line 768
    .line 769
    move/from16 v32, v4

    .line 770
    .line 771
    const-string v4, "nextSym"

    .line 772
    .line 773
    invoke-static {v11, v14, v4}, Lng/b;->J(IILjava/lang/String;)V

    .line 774
    .line 775
    .line 776
    add-int/lit8 v4, v11, -0x1

    .line 777
    .line 778
    aget-char v14, v7, v4

    .line 779
    .line 780
    move-object/from16 v33, v0

    .line 781
    .line 782
    const/16 v0, 0x100

    .line 783
    .line 784
    invoke-static {v14, v0, v1}, Lng/b;->J(IILjava/lang/String;)V

    .line 785
    .line 786
    .line 787
    aget-byte v0, v5, v14

    .line 788
    .line 789
    and-int/lit16 v1, v0, 0xff

    .line 790
    .line 791
    aget v5, v6, v1

    .line 792
    .line 793
    const/16 v21, 0x1

    .line 794
    .line 795
    add-int/lit8 v5, v5, 0x1

    .line 796
    .line 797
    aput v5, v6, v1

    .line 798
    .line 799
    aput-byte v0, v3, v12

    .line 800
    .line 801
    const/16 v0, 0x10

    .line 802
    .line 803
    if-gt v11, v0, :cond_26

    .line 804
    .line 805
    :goto_1c
    if-lez v4, :cond_25

    .line 806
    .line 807
    add-int/lit8 v1, v4, -0x1

    .line 808
    .line 809
    aget-char v5, v7, v1

    .line 810
    .line 811
    aput-char v5, v7, v4

    .line 812
    .line 813
    move v4, v1

    .line 814
    goto :goto_1c

    .line 815
    :cond_25
    const/4 v1, 0x0

    .line 816
    goto :goto_1d

    .line 817
    :cond_26
    const/4 v1, 0x0

    .line 818
    const/4 v5, 0x1

    .line 819
    invoke-static {v7, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    .line 821
    .line 822
    :goto_1d
    aput-char v14, v7, v1

    .line 823
    .line 824
    if-nez v26, :cond_27

    .line 825
    .line 826
    add-int/lit8 v1, v23, 0x1

    .line 827
    .line 828
    const/16 v4, 0x4652

    .line 829
    .line 830
    invoke-static {v1, v4, v2}, Lng/b;->J(IILjava/lang/String;)V

    .line 831
    .line 832
    .line 833
    aget-byte v2, v9, v1

    .line 834
    .line 835
    and-int/lit16 v2, v2, 0xff

    .line 836
    .line 837
    const/4 v4, 0x6

    .line 838
    invoke-static {v2, v4, v10}, Lng/b;->J(IILjava/lang/String;)V

    .line 839
    .line 840
    .line 841
    aget-object v4, v13, v2

    .line 842
    .line 843
    aget-object v5, v8, v2

    .line 844
    .line 845
    aget-object v11, v15, v2

    .line 846
    .line 847
    aget v2, v33, v2

    .line 848
    .line 849
    move/from16 v23, v1

    .line 850
    .line 851
    move-object/from16 v22, v4

    .line 852
    .line 853
    move-object/from16 v20, v5

    .line 854
    .line 855
    move-object/from16 v24, v11

    .line 856
    .line 857
    move-object/from16 v4, v30

    .line 858
    .line 859
    const/16 v1, 0x102

    .line 860
    .line 861
    const/16 v26, 0x31

    .line 862
    .line 863
    goto :goto_1e

    .line 864
    :cond_27
    add-int/lit8 v26, v26, -0x1

    .line 865
    .line 866
    move/from16 v2, v18

    .line 867
    .line 868
    move-object/from16 v4, v30

    .line 869
    .line 870
    const/16 v1, 0x102

    .line 871
    .line 872
    :goto_1e
    invoke-static {v2, v1, v4}, Lng/b;->J(IILjava/lang/String;)V

    .line 873
    .line 874
    .line 875
    move-object/from16 v14, v29

    .line 876
    .line 877
    invoke-static {v14, v2}, Lng/b;->A(Lrg/a;I)I

    .line 878
    .line 879
    .line 880
    move-result v5

    .line 881
    move v11, v2

    .line 882
    :goto_1f
    aget v0, v20, v11

    .line 883
    .line 884
    if-le v5, v0, :cond_28

    .line 885
    .line 886
    add-int/lit8 v11, v11, 0x1

    .line 887
    .line 888
    invoke-static {v11, v1, v4}, Lng/b;->J(IILjava/lang/String;)V

    .line 889
    .line 890
    .line 891
    shl-int/lit8 v0, v5, 0x1

    .line 892
    .line 893
    const/4 v5, 0x1

    .line 894
    invoke-static {v14, v5}, Lng/b;->A(Lrg/a;I)I

    .line 895
    .line 896
    .line 897
    move-result v18

    .line 898
    or-int v5, v0, v18

    .line 899
    .line 900
    goto :goto_1f

    .line 901
    :cond_28
    aget v0, v22, v11

    .line 902
    .line 903
    sub-int/2addr v5, v0

    .line 904
    move-object/from16 v0, v25

    .line 905
    .line 906
    invoke-static {v5, v1, v0}, Lng/b;->J(IILjava/lang/String;)V

    .line 907
    .line 908
    .line 909
    aget v11, v24, v5

    .line 910
    .line 911
    move/from16 v18, v2

    .line 912
    .line 913
    move-object v1, v14

    .line 914
    move/from16 v5, v27

    .line 915
    .line 916
    move-object/from16 v2, v28

    .line 917
    .line 918
    move-object/from16 v0, v33

    .line 919
    .line 920
    move-object v14, v4

    .line 921
    move/from16 v4, v32

    .line 922
    .line 923
    goto/16 :goto_1a

    .line 924
    .line 925
    :cond_29
    move/from16 v32, v4

    .line 926
    .line 927
    new-instance v0, Ljava/io/IOException;

    .line 928
    .line 929
    const-string v1, "Block overrun in MTF, "

    .line 930
    .line 931
    move-object/from16 v3, v31

    .line 932
    .line 933
    move/from16 v2, v32

    .line 934
    .line 935
    invoke-static {v1, v12, v2, v3}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    throw v0

    .line 943
    :cond_2a
    move-object/from16 v33, v0

    .line 944
    .line 945
    move-object/from16 v34, v14

    .line 946
    .line 947
    move-object/from16 v0, v25

    .line 948
    .line 949
    move-object/from16 v14, v29

    .line 950
    .line 951
    goto/16 :goto_1b

    .line 952
    .line 953
    :goto_20
    move-object/from16 v29, v3

    .line 954
    .line 955
    move/from16 v32, v11

    .line 956
    .line 957
    move/from16 v11, v25

    .line 958
    .line 959
    const/4 v3, -0x1

    .line 960
    move-object/from16 v25, v24

    .line 961
    .line 962
    move/from16 v24, v23

    .line 963
    .line 964
    move-object/from16 v23, v22

    .line 965
    .line 966
    move-object/from16 v22, v20

    .line 967
    .line 968
    move/from16 v20, v18

    .line 969
    .line 970
    const/16 v18, 0x1

    .line 971
    .line 972
    :goto_21
    if-nez v11, :cond_2b

    .line 973
    .line 974
    add-int v3, v3, v18

    .line 975
    .line 976
    move/from16 v30, v12

    .line 977
    .line 978
    goto :goto_22

    .line 979
    :cond_2b
    move/from16 v30, v12

    .line 980
    .line 981
    const/4 v12, 0x1

    .line 982
    if-ne v11, v12, :cond_2e

    .line 983
    .line 984
    shl-int/lit8 v11, v18, 0x1

    .line 985
    .line 986
    add-int/2addr v3, v11

    .line 987
    :goto_22
    if-nez v26, :cond_2c

    .line 988
    .line 989
    add-int/lit8 v11, v24, 0x1

    .line 990
    .line 991
    const/16 v12, 0x4652

    .line 992
    .line 993
    invoke-static {v11, v12, v2}, Lng/b;->J(IILjava/lang/String;)V

    .line 994
    .line 995
    .line 996
    aget-byte v12, v9, v11

    .line 997
    .line 998
    and-int/lit16 v12, v12, 0xff

    .line 999
    .line 1000
    move-object/from16 v31, v2

    .line 1001
    .line 1002
    const/4 v2, 0x6

    .line 1003
    invoke-static {v12, v2, v10}, Lng/b;->J(IILjava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    aget-object v23, v13, v12

    .line 1007
    .line 1008
    aget-object v22, v8, v12

    .line 1009
    .line 1010
    aget-object v25, v15, v12

    .line 1011
    .line 1012
    aget v20, v33, v12

    .line 1013
    .line 1014
    move/from16 v24, v11

    .line 1015
    .line 1016
    move/from16 v11, v20

    .line 1017
    .line 1018
    const/16 v12, 0x102

    .line 1019
    .line 1020
    const/16 v26, 0x31

    .line 1021
    .line 1022
    goto :goto_23

    .line 1023
    :cond_2c
    move-object/from16 v31, v2

    .line 1024
    .line 1025
    const/4 v2, 0x6

    .line 1026
    add-int/lit8 v26, v26, -0x1

    .line 1027
    .line 1028
    move/from16 v11, v20

    .line 1029
    .line 1030
    const/16 v12, 0x102

    .line 1031
    .line 1032
    :goto_23
    invoke-static {v11, v12, v4}, Lng/b;->J(IILjava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v14, v11}, Lng/b;->A(Lrg/a;I)I

    .line 1036
    .line 1037
    .line 1038
    move-result v19

    .line 1039
    move/from16 v2, v19

    .line 1040
    .line 1041
    move/from16 v19, v11

    .line 1042
    .line 1043
    :goto_24
    aget v12, v22, v19

    .line 1044
    .line 1045
    if-le v2, v12, :cond_2d

    .line 1046
    .line 1047
    add-int/lit8 v12, v19, 0x1

    .line 1048
    .line 1049
    move-object/from16 v35, v8

    .line 1050
    .line 1051
    const/16 v8, 0x102

    .line 1052
    .line 1053
    invoke-static {v12, v8, v4}, Lng/b;->J(IILjava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    shl-int/lit8 v2, v2, 0x1

    .line 1057
    .line 1058
    const/4 v8, 0x1

    .line 1059
    invoke-static {v14, v8}, Lng/b;->A(Lrg/a;I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v19

    .line 1063
    or-int v2, v2, v19

    .line 1064
    .line 1065
    move/from16 v19, v12

    .line 1066
    .line 1067
    move-object/from16 v8, v35

    .line 1068
    .line 1069
    goto :goto_24

    .line 1070
    :cond_2d
    move-object/from16 v35, v8

    .line 1071
    .line 1072
    aget v8, v23, v19

    .line 1073
    .line 1074
    sub-int/2addr v2, v8

    .line 1075
    const/16 v8, 0x102

    .line 1076
    .line 1077
    invoke-static {v2, v8, v0}, Lng/b;->J(IILjava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    aget v2, v25, v2

    .line 1081
    .line 1082
    shl-int/lit8 v18, v18, 0x1

    .line 1083
    .line 1084
    move/from16 v20, v11

    .line 1085
    .line 1086
    move/from16 v12, v30

    .line 1087
    .line 1088
    move-object/from16 v8, v35

    .line 1089
    .line 1090
    move v11, v2

    .line 1091
    move-object/from16 v2, v31

    .line 1092
    .line 1093
    goto :goto_21

    .line 1094
    :cond_2e
    move-object/from16 v2, p0

    .line 1095
    .line 1096
    move-object/from16 v35, v8

    .line 1097
    .line 1098
    const/16 v8, 0x102

    .line 1099
    .line 1100
    iget-object v12, v2, Lng/b;->w:Lng/a;

    .line 1101
    .line 1102
    iget-object v12, v12, Lng/a;->o:[B

    .line 1103
    .line 1104
    array-length v12, v12

    .line 1105
    const-string v8, "s"

    .line 1106
    .line 1107
    invoke-static {v3, v12, v8}, Lng/b;->J(IILjava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    const/4 v8, 0x0

    .line 1111
    aget-char v12, v7, v8

    .line 1112
    .line 1113
    const/16 v8, 0x100

    .line 1114
    .line 1115
    invoke-static {v12, v8, v1}, Lng/b;->J(IILjava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    aget-byte v1, v5, v12

    .line 1119
    .line 1120
    and-int/lit16 v5, v1, 0xff

    .line 1121
    .line 1122
    aget v12, v6, v5

    .line 1123
    .line 1124
    add-int/lit8 v17, v3, 0x1

    .line 1125
    .line 1126
    add-int v17, v17, v12

    .line 1127
    .line 1128
    aput v17, v6, v5

    .line 1129
    .line 1130
    add-int/lit8 v12, v30, 0x1

    .line 1131
    .line 1132
    add-int/2addr v3, v12

    .line 1133
    iget-object v5, v2, Lng/b;->w:Lng/a;

    .line 1134
    .line 1135
    iget-object v5, v5, Lng/a;->o:[B

    .line 1136
    .line 1137
    array-length v5, v5

    .line 1138
    const-string v8, "lastShadow"

    .line 1139
    .line 1140
    invoke-static {v3, v5, v8}, Lng/b;->J(IILjava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    add-int/lit8 v5, v3, 0x1

    .line 1144
    .line 1145
    move-object/from16 v8, v29

    .line 1146
    .line 1147
    invoke-static {v8, v12, v5, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1148
    .line 1149
    .line 1150
    move/from16 v1, v32

    .line 1151
    .line 1152
    if-ge v3, v1, :cond_2f

    .line 1153
    .line 1154
    move v12, v3

    .line 1155
    move-object v3, v8

    .line 1156
    move/from16 v18, v20

    .line 1157
    .line 1158
    move-object/from16 v20, v22

    .line 1159
    .line 1160
    move-object/from16 v22, v23

    .line 1161
    .line 1162
    move/from16 v23, v24

    .line 1163
    .line 1164
    move-object/from16 v24, v25

    .line 1165
    .line 1166
    move/from16 v5, v27

    .line 1167
    .line 1168
    move-object/from16 v2, v28

    .line 1169
    .line 1170
    move-object/from16 v8, v35

    .line 1171
    .line 1172
    move-object/from16 v25, v0

    .line 1173
    .line 1174
    move-object/from16 v0, v33

    .line 1175
    .line 1176
    move-object/from16 v36, v4

    .line 1177
    .line 1178
    move v4, v1

    .line 1179
    move-object v1, v14

    .line 1180
    move-object/from16 v14, v36

    .line 1181
    .line 1182
    goto/16 :goto_1a

    .line 1183
    .line 1184
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    .line 1185
    .line 1186
    const-string v4, "Block overrun while expanding RLE in MTF, "

    .line 1187
    .line 1188
    move-object/from16 v5, v34

    .line 1189
    .line 1190
    invoke-static {v4, v3, v1, v5}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    throw v0

    .line 1198
    :cond_30
    move-object/from16 v2, p0

    .line 1199
    .line 1200
    move v3, v12

    .line 1201
    iput v3, v2, Lng/b;->a:I

    .line 1202
    .line 1203
    iget-object v0, v2, Lng/b;->e:Lng/f;

    .line 1204
    .line 1205
    const/4 v1, -0x1

    .line 1206
    iput v1, v0, Lng/f;->a:I

    .line 1207
    .line 1208
    const/4 v0, 0x1

    .line 1209
    iput v0, v2, Lng/b;->h:I

    .line 1210
    .line 1211
    return-void

    .line 1212
    :cond_31
    move-object v2, v0

    .line 1213
    new-instance v0, Ljava/io/IOException;

    .line 1214
    .line 1215
    const-string v1, "Corrupted input, nSelectors value negative"

    .line 1216
    .line 1217
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    throw v0

    .line 1221
    :cond_32
    move-object v2, v0

    .line 1222
    const/4 v0, 0x0

    .line 1223
    iput v0, v2, Lng/b;->h:I

    .line 1224
    .line 1225
    new-instance v0, Ljava/io/IOException;

    .line 1226
    .line 1227
    const-string v1, "Bad block header"

    .line 1228
    .line 1229
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    goto :goto_26

    .line 1233
    :goto_25
    throw v0

    .line 1234
    :goto_26
    goto :goto_25
.end method

.method public final M()I
    .locals 7

    .line 1
    iget v0, p0, Lng/b;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "su_tPos"

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw v0

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Lng/b;->P()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :pswitch_1
    iget v0, p0, Lng/b;->m:I

    .line 23
    .line 24
    iget v5, p0, Lng/b;->n:I

    .line 25
    .line 26
    if-eq v0, v5, :cond_0

    .line 27
    .line 28
    iput v4, p0, Lng/b;->l:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lng/b;->O()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v0, p0, Lng/b;->l:I

    .line 36
    .line 37
    add-int/2addr v0, v4

    .line 38
    iput v0, p0, Lng/b;->l:I

    .line 39
    .line 40
    if-lt v0, v3, :cond_1

    .line 41
    .line 42
    iget v0, p0, Lng/b;->t:I

    .line 43
    .line 44
    iget-object v3, p0, Lng/b;->w:Lng/a;

    .line 45
    .line 46
    iget-object v3, v3, Lng/a;->o:[B

    .line 47
    .line 48
    array-length v3, v3

    .line 49
    invoke-static {v0, v3, v2}, Lng/b;->J(IILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 53
    .line 54
    iget-object v2, v0, Lng/a;->o:[B

    .line 55
    .line 56
    iget v3, p0, Lng/b;->t:I

    .line 57
    .line 58
    aget-byte v2, v2, v3

    .line 59
    .line 60
    and-int/lit16 v2, v2, 0xff

    .line 61
    .line 62
    int-to-char v2, v2

    .line 63
    iput-char v2, p0, Lng/b;->v:C

    .line 64
    .line 65
    iget-object v0, v0, Lng/a;->n:[I

    .line 66
    .line 67
    aget v0, v0, v3

    .line 68
    .line 69
    iput v0, p0, Lng/b;->t:I

    .line 70
    .line 71
    iput v1, p0, Lng/b;->q:I

    .line 72
    .line 73
    invoke-virtual {p0}, Lng/b;->P()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lng/b;->O()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    :goto_0
    return v0

    .line 83
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :pswitch_3
    invoke-virtual {p0}, Lng/b;->R()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    return v0

    .line 94
    :pswitch_4
    iget v0, p0, Lng/b;->m:I

    .line 95
    .line 96
    iget v5, p0, Lng/b;->n:I

    .line 97
    .line 98
    const/4 v6, 0x2

    .line 99
    if-eq v0, v5, :cond_2

    .line 100
    .line 101
    iput v6, p0, Lng/b;->h:I

    .line 102
    .line 103
    iput v4, p0, Lng/b;->l:I

    .line 104
    .line 105
    invoke-virtual {p0}, Lng/b;->Q()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    iget v0, p0, Lng/b;->l:I

    .line 111
    .line 112
    add-int/2addr v0, v4

    .line 113
    iput v0, p0, Lng/b;->l:I

    .line 114
    .line 115
    if-ge v0, v3, :cond_3

    .line 116
    .line 117
    iput v6, p0, Lng/b;->h:I

    .line 118
    .line 119
    invoke-virtual {p0}, Lng/b;->Q()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 125
    .line 126
    iget-object v5, v0, Lng/a;->o:[B

    .line 127
    .line 128
    iget v6, p0, Lng/b;->t:I

    .line 129
    .line 130
    aget-byte v5, v5, v6

    .line 131
    .line 132
    and-int/lit16 v5, v5, 0xff

    .line 133
    .line 134
    int-to-char v5, v5

    .line 135
    iput-char v5, p0, Lng/b;->v:C

    .line 136
    .line 137
    iget-object v0, v0, Lng/a;->n:[I

    .line 138
    .line 139
    array-length v0, v0

    .line 140
    invoke-static {v6, v0, v2}, Lng/b;->J(IILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 144
    .line 145
    iget-object v0, v0, Lng/a;->n:[I

    .line 146
    .line 147
    iget v2, p0, Lng/b;->t:I

    .line 148
    .line 149
    aget v0, v0, v2

    .line 150
    .line 151
    iput v0, p0, Lng/b;->t:I

    .line 152
    .line 153
    iget v0, p0, Lng/b;->r:I

    .line 154
    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    iget v0, p0, Lng/b;->s:I

    .line 158
    .line 159
    sget-object v2, Lng/g;->a:[I

    .line 160
    .line 161
    aget v2, v2, v0

    .line 162
    .line 163
    sub-int/2addr v2, v4

    .line 164
    iput v2, p0, Lng/b;->r:I

    .line 165
    .line 166
    add-int/2addr v0, v4

    .line 167
    iput v0, p0, Lng/b;->s:I

    .line 168
    .line 169
    const/16 v2, 0x200

    .line 170
    .line 171
    if-ne v0, v2, :cond_5

    .line 172
    .line 173
    iput v1, p0, Lng/b;->s:I

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    sub-int/2addr v0, v4

    .line 177
    iput v0, p0, Lng/b;->r:I

    .line 178
    .line 179
    :cond_5
    :goto_1
    iput v1, p0, Lng/b;->q:I

    .line 180
    .line 181
    iput v3, p0, Lng/b;->h:I

    .line 182
    .line 183
    iget v0, p0, Lng/b;->r:I

    .line 184
    .line 185
    if-ne v0, v4, :cond_6

    .line 186
    .line 187
    iget-char v0, p0, Lng/b;->v:C

    .line 188
    .line 189
    xor-int/2addr v0, v4

    .line 190
    int-to-char v0, v0

    .line 191
    iput-char v0, p0, Lng/b;->v:C

    .line 192
    .line 193
    :cond_6
    invoke-virtual {p0}, Lng/b;->R()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    :goto_2
    return v0

    .line 198
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :pswitch_6
    invoke-virtual {p0}, Lng/b;->N()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    return v0

    .line 209
    :pswitch_7
    const/4 v0, -0x1

    .line 210
    return v0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final N()I
    .locals 11

    .line 1
    iget v0, p0, Lng/b;->h:I

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget v1, p0, Lng/b;->a:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    add-int/2addr v1, v2

    .line 14
    iget-object v3, v0, Lng/a;->n:[I

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-ge v4, v1, :cond_2

    .line 20
    .line 21
    :cond_1
    new-array v3, v1, [I

    .line 22
    .line 23
    iput-object v3, v0, Lng/a;->n:[I

    .line 24
    .line 25
    :cond_2
    iget-object v4, v0, Lng/a;->j:[I

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput v5, v4, v5

    .line 29
    .line 30
    iget-object v6, v0, Lng/a;->e:[I

    .line 31
    .line 32
    const/16 v7, 0x100

    .line 33
    .line 34
    invoke-static {v6, v5, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    aget v6, v4, v5

    .line 38
    .line 39
    :goto_0
    if-gt v2, v7, :cond_3

    .line 40
    .line 41
    aget v8, v4, v2

    .line 42
    .line 43
    add-int/2addr v6, v8

    .line 44
    aput v6, v4, v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget v2, p0, Lng/b;->a:I

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    :goto_1
    if-gt v6, v2, :cond_4

    .line 53
    .line 54
    iget-object v8, v0, Lng/a;->o:[B

    .line 55
    .line 56
    aget-byte v8, v8, v6

    .line 57
    .line 58
    and-int/lit16 v8, v8, 0xff

    .line 59
    .line 60
    aget v9, v4, v8

    .line 61
    .line 62
    add-int/lit8 v10, v9, 0x1

    .line 63
    .line 64
    aput v10, v4, v8

    .line 65
    .line 66
    const-string v8, "tt index"

    .line 67
    .line 68
    invoke-static {v9, v1, v8}, Lng/b;->J(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    aput v6, v3, v9

    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget v0, p0, Lng/b;->b:I

    .line 77
    .line 78
    if-ltz v0, :cond_6

    .line 79
    .line 80
    array-length v1, v3

    .line 81
    if-ge v0, v1, :cond_6

    .line 82
    .line 83
    aget v0, v3, v0

    .line 84
    .line 85
    iput v0, p0, Lng/b;->t:I

    .line 86
    .line 87
    iput v5, p0, Lng/b;->l:I

    .line 88
    .line 89
    iput v5, p0, Lng/b;->p:I

    .line 90
    .line 91
    iput v7, p0, Lng/b;->m:I

    .line 92
    .line 93
    iget-boolean v0, p0, Lng/b;->d:Z

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iput v5, p0, Lng/b;->r:I

    .line 98
    .line 99
    iput v5, p0, Lng/b;->s:I

    .line 100
    .line 101
    invoke-virtual {p0}, Lng/b;->Q()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    return v0

    .line 106
    :cond_5
    invoke-virtual {p0}, Lng/b;->O()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    return v0

    .line 111
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 112
    .line 113
    const-string v1, "Stream corrupted"

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_7
    :goto_2
    const/4 v0, -0x1

    .line 120
    return v0
.end method

.method public final O()I
    .locals 5

    .line 1
    iget v0, p0, Lng/b;->p:I

    .line 2
    .line 3
    iget v1, p0, Lng/b;->a:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lng/b;->m:I

    .line 8
    .line 9
    iput v0, p0, Lng/b;->n:I

    .line 10
    .line 11
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 12
    .line 13
    iget-object v1, v0, Lng/a;->o:[B

    .line 14
    .line 15
    iget v2, p0, Lng/b;->t:I

    .line 16
    .line 17
    aget-byte v1, v1, v2

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    iput v1, p0, Lng/b;->m:I

    .line 22
    .line 23
    iget-object v0, v0, Lng/a;->n:[I

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    const-string v3, "su_tPos"

    .line 27
    .line 28
    invoke-static {v2, v0, v3}, Lng/b;->J(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 32
    .line 33
    iget-object v0, v0, Lng/a;->n:[I

    .line 34
    .line 35
    iget v2, p0, Lng/b;->t:I

    .line 36
    .line 37
    aget v0, v0, v2

    .line 38
    .line 39
    iput v0, p0, Lng/b;->t:I

    .line 40
    .line 41
    iget v0, p0, Lng/b;->p:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iput v0, p0, Lng/b;->p:I

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    iput v0, p0, Lng/b;->h:I

    .line 49
    .line 50
    iget-object v0, p0, Lng/b;->e:Lng/f;

    .line 51
    .line 52
    iget v2, v0, Lng/f;->a:I

    .line 53
    .line 54
    shr-int/lit8 v3, v2, 0x18

    .line 55
    .line 56
    xor-int/2addr v3, v1

    .line 57
    shl-int/lit8 v2, v2, 0x8

    .line 58
    .line 59
    sget-object v4, Lng/f;->b:[I

    .line 60
    .line 61
    if-gez v3, :cond_0

    .line 62
    .line 63
    add-int/lit16 v3, v3, 0x100

    .line 64
    .line 65
    :cond_0
    aget v3, v4, v3

    .line 66
    .line 67
    xor-int/2addr v2, v3

    .line 68
    iput v2, v0, Lng/f;->a:I

    .line 69
    .line 70
    return v1

    .line 71
    :cond_1
    const/4 v0, 0x5

    .line 72
    iput v0, p0, Lng/b;->h:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lng/b;->K()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lng/b;->L()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lng/b;->N()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    return v0
.end method

.method public final P()I
    .locals 6

    .line 1
    iget v0, p0, Lng/b;->q:I

    .line 2
    .line 3
    iget-char v1, p0, Lng/b;->v:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lng/b;->m:I

    .line 8
    .line 9
    iget-object v2, p0, Lng/b;->e:Lng/f;

    .line 10
    .line 11
    iget v3, v2, Lng/f;->a:I

    .line 12
    .line 13
    shr-int/lit8 v4, v3, 0x18

    .line 14
    .line 15
    xor-int/2addr v4, v1

    .line 16
    shl-int/lit8 v3, v3, 0x8

    .line 17
    .line 18
    sget-object v5, Lng/f;->b:[I

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    add-int/lit16 v4, v4, 0x100

    .line 23
    .line 24
    :cond_0
    aget v4, v5, v4

    .line 25
    .line 26
    xor-int/2addr v3, v4

    .line 27
    iput v3, v2, Lng/f;->a:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Lng/b;->q:I

    .line 32
    .line 33
    const/4 v0, 0x7

    .line 34
    iput v0, p0, Lng/b;->h:I

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    iget v0, p0, Lng/b;->p:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p0, Lng/b;->p:I

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lng/b;->l:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lng/b;->O()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0
.end method

.method public final Q()I
    .locals 5

    .line 1
    iget v0, p0, Lng/b;->p:I

    .line 2
    .line 3
    iget v1, p0, Lng/b;->a:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_4

    .line 6
    .line 7
    iget v0, p0, Lng/b;->m:I

    .line 8
    .line 9
    iput v0, p0, Lng/b;->n:I

    .line 10
    .line 11
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 12
    .line 13
    iget-object v1, v0, Lng/a;->o:[B

    .line 14
    .line 15
    iget v2, p0, Lng/b;->t:I

    .line 16
    .line 17
    aget-byte v1, v1, v2

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    iget-object v0, v0, Lng/a;->n:[I

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    const-string v3, "su_tPos"

    .line 25
    .line 26
    invoke-static {v2, v0, v3}, Lng/b;->J(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lng/b;->w:Lng/a;

    .line 30
    .line 31
    iget-object v0, v0, Lng/a;->n:[I

    .line 32
    .line 33
    iget v2, p0, Lng/b;->t:I

    .line 34
    .line 35
    aget v0, v0, v2

    .line 36
    .line 37
    iput v0, p0, Lng/b;->t:I

    .line 38
    .line 39
    iget v0, p0, Lng/b;->r:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget v0, p0, Lng/b;->s:I

    .line 46
    .line 47
    sget-object v4, Lng/g;->a:[I

    .line 48
    .line 49
    aget v4, v4, v0

    .line 50
    .line 51
    sub-int/2addr v4, v3

    .line 52
    iput v4, p0, Lng/b;->r:I

    .line 53
    .line 54
    add-int/2addr v0, v3

    .line 55
    iput v0, p0, Lng/b;->s:I

    .line 56
    .line 57
    const/16 v4, 0x200

    .line 58
    .line 59
    if-ne v0, v4, :cond_1

    .line 60
    .line 61
    iput v2, p0, Lng/b;->s:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sub-int/2addr v0, v3

    .line 65
    iput v0, p0, Lng/b;->r:I

    .line 66
    .line 67
    :cond_1
    :goto_0
    iget v0, p0, Lng/b;->r:I

    .line 68
    .line 69
    if-ne v0, v3, :cond_2

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    :cond_2
    xor-int v0, v1, v2

    .line 73
    .line 74
    iput v0, p0, Lng/b;->m:I

    .line 75
    .line 76
    iget v1, p0, Lng/b;->p:I

    .line 77
    .line 78
    add-int/2addr v1, v3

    .line 79
    iput v1, p0, Lng/b;->p:I

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    iput v1, p0, Lng/b;->h:I

    .line 83
    .line 84
    iget-object v1, p0, Lng/b;->e:Lng/f;

    .line 85
    .line 86
    iget v2, v1, Lng/f;->a:I

    .line 87
    .line 88
    shr-int/lit8 v3, v2, 0x18

    .line 89
    .line 90
    xor-int/2addr v3, v0

    .line 91
    shl-int/lit8 v2, v2, 0x8

    .line 92
    .line 93
    sget-object v4, Lng/f;->b:[I

    .line 94
    .line 95
    if-gez v3, :cond_3

    .line 96
    .line 97
    add-int/lit16 v3, v3, 0x100

    .line 98
    .line 99
    :cond_3
    aget v3, v4, v3

    .line 100
    .line 101
    xor-int/2addr v2, v3

    .line 102
    iput v2, v1, Lng/f;->a:I

    .line 103
    .line 104
    return v0

    .line 105
    :cond_4
    invoke-virtual {p0}, Lng/b;->K()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lng/b;->L()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lng/b;->N()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    return v0
.end method

.method public final R()I
    .locals 6

    .line 1
    iget v0, p0, Lng/b;->q:I

    .line 2
    .line 3
    iget-char v1, p0, Lng/b;->v:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lng/b;->m:I

    .line 8
    .line 9
    iget-object v2, p0, Lng/b;->e:Lng/f;

    .line 10
    .line 11
    iget v3, v2, Lng/f;->a:I

    .line 12
    .line 13
    shr-int/lit8 v4, v3, 0x18

    .line 14
    .line 15
    xor-int/2addr v4, v1

    .line 16
    shl-int/lit8 v3, v3, 0x8

    .line 17
    .line 18
    sget-object v5, Lng/f;->b:[I

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    add-int/lit16 v4, v4, 0x100

    .line 23
    .line 24
    :cond_0
    aget v4, v5, v4

    .line 25
    .line 26
    xor-int/2addr v3, v4

    .line 27
    iput v3, v2, Lng/f;->a:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Lng/b;->q:I

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const/4 v0, 0x2

    .line 35
    iput v0, p0, Lng/b;->h:I

    .line 36
    .line 37
    iget v0, p0, Lng/b;->p:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p0, Lng/b;->p:I

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lng/b;->l:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lng/b;->Q()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lng/b;->g:Lrg/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lrg/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lng/b;->w:Lng/a;

    .line 10
    .line 11
    iput-object v1, p0, Lng/b;->g:Lrg/a;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    iput-object v1, p0, Lng/b;->w:Lng/a;

    .line 16
    .line 17
    iput-object v1, p0, Lng/b;->g:Lrg/a;

    .line 18
    .line 19
    throw v0

    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lng/b;->g:Lrg/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lng/b;->M()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 4

    .line 4
    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 5
    array-length v2, p1

    if-gt v0, v2, :cond_4

    .line 6
    iget-object v1, p0, Lng/b;->g:Lrg/a;

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lng/b;->M()I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p3

    move p3, v2

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    sub-int p1, p3, p2

    :goto_1
    return p1

    .line 9
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") + len("

    const-string v3, ") > dest.length("

    .line 11
    invoke-static {p2, p3, v1, v2, v3}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12
    array-length p1, p1

    const-string p3, ")."

    .line 13
    invoke-static {p2, p1, p3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "len("

    .line 16
    invoke-static {p2, p3, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    invoke-static {v1, p2, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
