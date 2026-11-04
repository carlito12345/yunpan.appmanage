.class public final Lf2/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls4/a;

.field public final b:I

.field public final c:Lu1/q;

.field public d:Lf2/y0;

.field public e:Lf2/y0;

.field public f:Lf2/y0;

.field public g:J


# direct methods
.method public constructor <init>(Ls4/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/z0;->a:Ls4/a;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p1, Ls4/a;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ly1/g;

    .line 10
    .line 11
    iget-object v0, v0, Ly1/g;->c:Li2/d;

    .line 12
    .line 13
    iget v0, v0, Li2/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p1

    .line 16
    iput v0, p0, Lf2/z0;->b:I

    .line 17
    .line 18
    new-instance p1, Lu1/q;

    .line 19
    .line 20
    const/16 v1, 0x20

    .line 21
    .line 22
    invoke-direct {p1, v1}, Lu1/q;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lf2/z0;->c:Lu1/q;

    .line 26
    .line 27
    new-instance p1, Lf2/y0;

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    invoke-direct {p1, v1, v2, v0}, Lf2/y0;-><init>(JI)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lf2/z0;->d:Lf2/y0;

    .line 35
    .line 36
    iput-object p1, p0, Lf2/z0;->e:Lf2/y0;

    .line 37
    .line 38
    iput-object p1, p0, Lf2/z0;->f:Lf2/y0;

    .line 39
    .line 40
    return-void

    .line 41
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_0
.end method

.method public static c(Lf2/y0;JLjava/nio/ByteBuffer;I)Lf2/y0;
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lf2/y0;->b:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lf2/y0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lf2/y0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lf2/y0;->b:J

    .line 15
    .line 16
    sub-long/2addr v0, p1

    .line 17
    long-to-int v1, v0

    .line 18
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lf2/y0;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Li2/a;

    .line 25
    .line 26
    iget-object v2, v1, Li2/a;->a:[B

    .line 27
    .line 28
    iget-wide v3, p0, Lf2/y0;->a:J

    .line 29
    .line 30
    sub-long v3, p1, v3

    .line 31
    .line 32
    long-to-int v4, v3

    .line 33
    iget v1, v1, Li2/a;->b:I

    .line 34
    .line 35
    add-int/2addr v4, v1

    .line 36
    invoke-virtual {p3, v2, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    sub-int/2addr p4, v0

    .line 40
    int-to-long v0, v0

    .line 41
    add-long/2addr p1, v0

    .line 42
    iget-wide v0, p0, Lf2/y0;->b:J

    .line 43
    .line 44
    cmp-long v2, p1, v0

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lf2/y0;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lf2/y0;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-object p0
.end method

.method public static d(Lf2/y0;J[BI)Lf2/y0;
    .locals 6

    .line 1
    :goto_0
    iget-wide v0, p0, Lf2/y0;->b:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lf2/y0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lf2/y0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, p4

    .line 13
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 14
    .line 15
    iget-wide v1, p0, Lf2/y0;->b:J

    .line 16
    .line 17
    sub-long/2addr v1, p1

    .line 18
    long-to-int v2, v1

    .line 19
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lf2/y0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Li2/a;

    .line 26
    .line 27
    iget-object v3, v2, Li2/a;->a:[B

    .line 28
    .line 29
    iget-wide v4, p0, Lf2/y0;->a:J

    .line 30
    .line 31
    sub-long v4, p1, v4

    .line 32
    .line 33
    long-to-int v5, v4

    .line 34
    iget v2, v2, Li2/a;->b:I

    .line 35
    .line 36
    add-int/2addr v5, v2

    .line 37
    sub-int v2, p4, v0

    .line 38
    .line 39
    invoke-static {v3, v5, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    sub-int/2addr v0, v1

    .line 43
    int-to-long v1, v1

    .line 44
    add-long/2addr p1, v1

    .line 45
    iget-wide v1, p0, Lf2/y0;->b:J

    .line 46
    .line 47
    cmp-long v3, p1, v1

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Lf2/y0;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lf2/y0;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    return-object p0
.end method

.method public static e(Lf2/y0;Lx1/g;Lc2/g;Lu1/q;)Lf2/y0;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lab/a;->c(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    iget-wide v1, p2, Lc2/g;->b:J

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Lu1/q;->L(I)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p3, Lu1/q;->a:[B

    .line 16
    .line 17
    invoke-static {p0, v1, v2, v3, v0}, Lf2/z0;->d(Lf2/y0;J[BI)Lf2/y0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-wide/16 v3, 0x1

    .line 22
    .line 23
    add-long/2addr v1, v3

    .line 24
    iget-object v3, p3, Lu1/q;->a:[B

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aget-byte v3, v3, v4

    .line 28
    .line 29
    and-int/lit16 v5, v3, 0x80

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x0

    .line 36
    :goto_0
    and-int/lit8 v3, v3, 0x7f

    .line 37
    .line 38
    iget-object v6, p1, Lx1/g;->d:Lx1/c;

    .line 39
    .line 40
    iget-object v7, v6, Lx1/c;->a:[B

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    const/16 v7, 0x10

    .line 45
    .line 46
    new-array v7, v7, [B

    .line 47
    .line 48
    iput-object v7, v6, Lx1/c;->a:[B

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-object v7, v6, Lx1/c;->a:[B

    .line 55
    .line 56
    invoke-static {p0, v1, v2, v7, v3}, Lf2/z0;->d(Lf2/y0;J[BI)Lf2/y0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    int-to-long v7, v3

    .line 61
    add-long/2addr v1, v7

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    invoke-virtual {p3, v3}, Lu1/q;->L(I)V

    .line 66
    .line 67
    .line 68
    iget-object v7, p3, Lu1/q;->a:[B

    .line 69
    .line 70
    invoke-static {p0, v1, v2, v7, v3}, Lf2/z0;->d(Lf2/y0;J[BI)Lf2/y0;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-wide/16 v7, 0x2

    .line 75
    .line 76
    add-long/2addr v1, v7

    .line 77
    invoke-virtual {p3}, Lu1/q;->I()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 v3, 0x1

    .line 83
    :goto_2
    iget-object v7, v6, Lx1/c;->d:[I

    .line 84
    .line 85
    if-eqz v7, :cond_3

    .line 86
    .line 87
    array-length v8, v7

    .line 88
    if-ge v8, v3, :cond_4

    .line 89
    .line 90
    :cond_3
    new-array v7, v3, [I

    .line 91
    .line 92
    :cond_4
    iget-object v8, v6, Lx1/c;->e:[I

    .line 93
    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    array-length v9, v8

    .line 97
    if-ge v9, v3, :cond_6

    .line 98
    .line 99
    :cond_5
    new-array v8, v3, [I

    .line 100
    .line 101
    :cond_6
    if-eqz v5, :cond_7

    .line 102
    .line 103
    mul-int/lit8 v5, v3, 0x6

    .line 104
    .line 105
    invoke-virtual {p3, v5}, Lu1/q;->L(I)V

    .line 106
    .line 107
    .line 108
    iget-object v9, p3, Lu1/q;->a:[B

    .line 109
    .line 110
    invoke-static {p0, v1, v2, v9, v5}, Lf2/z0;->d(Lf2/y0;J[BI)Lf2/y0;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    int-to-long v9, v5

    .line 115
    add-long/2addr v1, v9

    .line 116
    invoke-virtual {p3, v4}, Lu1/q;->O(I)V

    .line 117
    .line 118
    .line 119
    :goto_3
    if-ge v4, v3, :cond_8

    .line 120
    .line 121
    invoke-virtual {p3}, Lu1/q;->I()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    aput v5, v7, v4

    .line 126
    .line 127
    invoke-virtual {p3}, Lu1/q;->F()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    aput v5, v8, v4

    .line 132
    .line 133
    add-int/2addr v4, v0

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    aput v4, v7, v4

    .line 136
    .line 137
    iget v0, p2, Lc2/g;->a:I

    .line 138
    .line 139
    iget-wide v9, p2, Lc2/g;->b:J

    .line 140
    .line 141
    sub-long v9, v1, v9

    .line 142
    .line 143
    long-to-int v5, v9

    .line 144
    sub-int/2addr v0, v5

    .line 145
    aput v0, v8, v4

    .line 146
    .line 147
    :cond_8
    iget-object v0, p2, Lc2/g;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Ll2/i0;

    .line 150
    .line 151
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v4, v0, Ll2/i0;->b:[B

    .line 154
    .line 155
    iget-object v5, v6, Lx1/c;->a:[B

    .line 156
    .line 157
    iput v3, v6, Lx1/c;->f:I

    .line 158
    .line 159
    iput-object v7, v6, Lx1/c;->d:[I

    .line 160
    .line 161
    iput-object v8, v6, Lx1/c;->e:[I

    .line 162
    .line 163
    iput-object v4, v6, Lx1/c;->b:[B

    .line 164
    .line 165
    iput-object v5, v6, Lx1/c;->a:[B

    .line 166
    .line 167
    iget v9, v0, Ll2/i0;->a:I

    .line 168
    .line 169
    iput v9, v6, Lx1/c;->c:I

    .line 170
    .line 171
    iget v10, v0, Ll2/i0;->c:I

    .line 172
    .line 173
    iput v10, v6, Lx1/c;->g:I

    .line 174
    .line 175
    iget v0, v0, Ll2/i0;->d:I

    .line 176
    .line 177
    iput v0, v6, Lx1/c;->h:I

    .line 178
    .line 179
    iget-object v11, v6, Lx1/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 180
    .line 181
    iput v3, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 182
    .line 183
    iput-object v7, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 184
    .line 185
    iput-object v8, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 186
    .line 187
    iput-object v4, v11, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 188
    .line 189
    iput-object v5, v11, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 190
    .line 191
    iput v9, v11, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 192
    .line 193
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    .line 195
    const/16 v4, 0x18

    .line 196
    .line 197
    if-lt v3, v4, :cond_9

    .line 198
    .line 199
    iget-object v3, v6, Lx1/c;->j:Lx1/b;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object v4, v3, Lx1/b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 205
    .line 206
    invoke-static {v4, v10, v0}, Lq/t;->o(Landroid/media/MediaCodec$CryptoInfo$Pattern;II)V

    .line 207
    .line 208
    .line 209
    iget-object v0, v3, Lx1/b;->a:Landroid/media/MediaCodec$CryptoInfo;

    .line 210
    .line 211
    iget-object v3, v3, Lx1/b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 212
    .line 213
    invoke-static {v0, v3}, Lq/t;->p(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 214
    .line 215
    .line 216
    :cond_9
    iget-wide v3, p2, Lc2/g;->b:J

    .line 217
    .line 218
    sub-long/2addr v1, v3

    .line 219
    long-to-int v0, v1

    .line 220
    int-to-long v1, v0

    .line 221
    add-long/2addr v3, v1

    .line 222
    iput-wide v3, p2, Lc2/g;->b:J

    .line 223
    .line 224
    iget v1, p2, Lc2/g;->a:I

    .line 225
    .line 226
    sub-int/2addr v1, v0

    .line 227
    iput v1, p2, Lc2/g;->a:I

    .line 228
    .line 229
    :cond_a
    const/high16 v0, 0x10000000

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lab/a;->c(I)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_d

    .line 236
    .line 237
    const/4 v0, 0x4

    .line 238
    invoke-virtual {p3, v0}, Lu1/q;->L(I)V

    .line 239
    .line 240
    .line 241
    iget-wide v1, p2, Lc2/g;->b:J

    .line 242
    .line 243
    iget-object v3, p3, Lu1/q;->a:[B

    .line 244
    .line 245
    invoke-static {p0, v1, v2, v3, v0}, Lf2/z0;->d(Lf2/y0;J[BI)Lf2/y0;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p3}, Lu1/q;->F()I

    .line 250
    .line 251
    .line 252
    move-result p3

    .line 253
    iget-wide v1, p2, Lc2/g;->b:J

    .line 254
    .line 255
    const-wide/16 v3, 0x4

    .line 256
    .line 257
    add-long/2addr v1, v3

    .line 258
    iput-wide v1, p2, Lc2/g;->b:J

    .line 259
    .line 260
    iget v1, p2, Lc2/g;->a:I

    .line 261
    .line 262
    sub-int/2addr v1, v0

    .line 263
    iput v1, p2, Lc2/g;->a:I

    .line 264
    .line 265
    invoke-virtual {p1, p3}, Lx1/g;->k(I)V

    .line 266
    .line 267
    .line 268
    iget-wide v0, p2, Lc2/g;->b:J

    .line 269
    .line 270
    iget-object v2, p1, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 271
    .line 272
    invoke-static {p0, v0, v1, v2, p3}, Lf2/z0;->c(Lf2/y0;JLjava/nio/ByteBuffer;I)Lf2/y0;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    iget-wide v0, p2, Lc2/g;->b:J

    .line 277
    .line 278
    int-to-long v2, p3

    .line 279
    add-long/2addr v0, v2

    .line 280
    iput-wide v0, p2, Lc2/g;->b:J

    .line 281
    .line 282
    iget v0, p2, Lc2/g;->a:I

    .line 283
    .line 284
    sub-int/2addr v0, p3

    .line 285
    iput v0, p2, Lc2/g;->a:I

    .line 286
    .line 287
    iget-object p3, p1, Lx1/g;->h:Ljava/nio/ByteBuffer;

    .line 288
    .line 289
    if-eqz p3, :cond_c

    .line 290
    .line 291
    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    .line 292
    .line 293
    .line 294
    move-result p3

    .line 295
    if-ge p3, v0, :cond_b

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_b
    iget-object p3, p1, Lx1/g;->h:Ljava/nio/ByteBuffer;

    .line 299
    .line 300
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_c
    :goto_4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 305
    .line 306
    .line 307
    move-result-object p3

    .line 308
    iput-object p3, p1, Lx1/g;->h:Ljava/nio/ByteBuffer;

    .line 309
    .line 310
    :goto_5
    iget-wide v0, p2, Lc2/g;->b:J

    .line 311
    .line 312
    iget-object p1, p1, Lx1/g;->h:Ljava/nio/ByteBuffer;

    .line 313
    .line 314
    iget p2, p2, Lc2/g;->a:I

    .line 315
    .line 316
    invoke-static {p0, v0, v1, p1, p2}, Lf2/z0;->c(Lf2/y0;JLjava/nio/ByteBuffer;I)Lf2/y0;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    goto :goto_6

    .line 321
    :cond_d
    iget p3, p2, Lc2/g;->a:I

    .line 322
    .line 323
    invoke-virtual {p1, p3}, Lx1/g;->k(I)V

    .line 324
    .line 325
    .line 326
    iget-wide v0, p2, Lc2/g;->b:J

    .line 327
    .line 328
    iget-object p1, p1, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 329
    .line 330
    iget p2, p2, Lc2/g;->a:I

    .line 331
    .line 332
    invoke-static {p0, v0, v1, p1, p2}, Lf2/z0;->c(Lf2/y0;JLjava/nio/ByteBuffer;I)Lf2/y0;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    :goto_6
    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lf2/z0;->d:Lf2/y0;

    .line 9
    .line 10
    iget-wide v1, v0, Lf2/y0;->b:J

    .line 11
    .line 12
    cmp-long v3, p1, v1

    .line 13
    .line 14
    if-ltz v3, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lf2/z0;->a:Ls4/a;

    .line 17
    .line 18
    iget-object v0, v0, Lf2/y0;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Li2/a;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, v1, Ls4/a;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ly1/g;

    .line 26
    .line 27
    iget-object v2, v2, Ly1/g;->c:Li2/d;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Li2/d;->c(Li2/a;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ls4/a;->s(Li2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    iget-object v0, p0, Lf2/z0;->d:Lf2/y0;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lf2/y0;->c:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v2, v0, Lf2/y0;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lf2/y0;

    .line 44
    .line 45
    iput-object v1, v0, Lf2/y0;->d:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object v2, p0, Lf2/z0;->d:Lf2/y0;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    iget-object p1, p0, Lf2/z0;->e:Lf2/y0;

    .line 54
    .line 55
    iget-wide p1, p1, Lf2/y0;->a:J

    .line 56
    .line 57
    iget-wide v1, v0, Lf2/y0;->a:J

    .line 58
    .line 59
    cmp-long v3, p1, v1

    .line 60
    .line 61
    if-gez v3, :cond_2

    .line 62
    .line 63
    iput-object v0, p0, Lf2/z0;->e:Lf2/y0;

    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final b(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/z0;->f:Lf2/y0;

    .line 2
    .line 3
    iget-object v1, v0, Lf2/y0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Li2/a;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lf2/z0;->a:Ls4/a;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v1, Ls4/a;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ly1/g;

    .line 15
    .line 16
    iget-object v2, v2, Ly1/g;->c:Li2/d;

    .line 17
    .line 18
    invoke-virtual {v2}, Li2/d;->a()Li2/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v4, v1, Ls4/a;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Lz1/i;

    .line 29
    .line 30
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v3, v1, Ls4/a;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ly1/g;

    .line 36
    .line 37
    iget-object v3, v3, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    iget-object v4, v1, Ls4/a;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Lz1/i;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ly1/f;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3}, Ly1/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v1

    .line 58
    new-instance v1, Lf2/y0;

    .line 59
    .line 60
    iget-object v3, p0, Lf2/z0;->f:Lf2/y0;

    .line 61
    .line 62
    iget-wide v3, v3, Lf2/y0;->b:J

    .line 63
    .line 64
    iget v5, p0, Lf2/z0;->b:I

    .line 65
    .line 66
    invoke-direct {v1, v3, v4, v5}, Lf2/y0;-><init>(JI)V

    .line 67
    .line 68
    .line 69
    iput-object v2, v0, Lf2/y0;->c:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v1, v0, Lf2/y0;->d:Ljava/lang/Object;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p1

    .line 76
    :cond_1
    :goto_2
    iget-object v0, p0, Lf2/z0;->f:Lf2/y0;

    .line 77
    .line 78
    iget-wide v0, v0, Lf2/y0;->b:J

    .line 79
    .line 80
    iget-wide v2, p0, Lf2/z0;->g:J

    .line 81
    .line 82
    sub-long/2addr v0, v2

    .line 83
    long-to-int v1, v0

    .line 84
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1
.end method
