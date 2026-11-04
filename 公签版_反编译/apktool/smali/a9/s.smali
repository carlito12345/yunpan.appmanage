.class public final La9/s;
.super La9/r;
.source "SourceFile"


# static fields
.field public static final m:[B


# instance fields
.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    .line 2
    .line 3
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    const-string v0, "-----END DSA PRIVATE KEY-----"

    .line 7
    .line 8
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    const-string v1, "ssh-dss"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, La9/s;->m:[B

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lm7/e;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, La9/s;-><init>(Lm7/e;[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lm7/e;[B[B[B[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, La9/r;-><init>(Lm7/e;)V

    .line 3
    iput-object p2, p0, La9/s;->h:[B

    .line 4
    iput-object p3, p0, La9/s;->i:[B

    .line 5
    iput-object p4, p0, La9/s;->j:[B

    .line 6
    iput-object p5, p0, La9/s;->k:[B

    .line 7
    iput-object p6, p0, La9/s;->l:[B

    if-eqz p2, :cond_0

    .line 8
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    :cond_0
    return-void
.end method

.method public static s(Lm7/e;La9/a;)La9/s;
    .locals 8

    .line 1
    const/4 v0, 0x7

    .line 2
    const-string v1, "invalid key format"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, La9/a;->f(ILjava/lang/String;)[[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    aget-object v3, p1, v0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    aget-object v4, p1, v0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    aget-object v5, p1, v0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    aget-object v6, p1, v0

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    aget-object v7, p1, v0

    .line 22
    .line 23
    new-instance v0, La9/s;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    move-object v2, p0

    .line 27
    invoke-direct/range {v1 .. v7}, La9/s;-><init>(Lm7/e;[B[B[B[B[B)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x6

    .line 31
    aget-object p0, p1, p0

    .line 32
    .line 33
    invoke-static {p0}, La9/h0;->c([B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, v0, La9/r;->b:Ljava/lang/String;

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    iput p0, v0, La9/r;->a:I

    .line 41
    .line 42
    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, La9/s;->l:[B

    .line 4
    .line 5
    invoke-static {v0}, La9/h0;->d([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()[B
    .locals 3

    .line 1
    iget-boolean v0, p0, La9/r;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, La9/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, La9/a;-><init>(IC)V

    .line 10
    .line 11
    .line 12
    sget-object v1, La9/s;->m:[B

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La9/s;->h:[B

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, La9/s;->i:[B

    .line 25
    .line 26
    array-length v2, v1

    .line 27
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, La9/s;->j:[B

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, La9/s;->k:[B

    .line 37
    .line 38
    array-length v2, v1

    .line 39
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, La9/s;->l:[B

    .line 43
    .line 44
    array-length v2, v1

    .line 45
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, La9/r;->b:Ljava/lang/String;

    .line 49
    .line 50
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-static {v1, v2}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    array-length v2, v1

    .line 57
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, La9/a;->h()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    new-array v2, v1, [B

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, La9/a;->e(I[B)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_0
    new-instance v0, La9/n;

    .line 71
    .line 72
    const-string v1, "key is encrypted."

    .line 73
    .line 74
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public final h()[B
    .locals 7

    .line 1
    iget-object v0, p0, La9/r;->f:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, La9/s;->h:[B

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_1
    iget-object v1, p0, La9/s;->i:[B

    .line 13
    .line 14
    iget-object v2, p0, La9/s;->j:[B

    .line 15
    .line 16
    iget-object v3, p0, La9/s;->k:[B

    .line 17
    .line 18
    const/4 v4, 0x5

    .line 19
    new-array v4, v4, [[B

    .line 20
    .line 21
    sget-object v5, La9/s;->m:[B

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    aput-object v5, v4, v6

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    aput-object v0, v4, v5

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    aput-object v1, v4, v0

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    aput-object v2, v4, v0

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    aput-object v3, v4, v0

    .line 37
    .line 38
    invoke-static {v4}, La9/a;->b([[B)La9/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, La9/a;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, [B

    .line 45
    .line 46
    return-object v0
.end method

.method public final m([B)Z
    .locals 8

    .line 1
    iget-object v0, p0, La9/r;->c:Lm7/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget v2, p0, La9/r;->a:I

    .line 5
    .line 6
    const/16 v3, 0x30

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v2, v4, :cond_2

    .line 10
    .line 11
    aget-byte v2, p1, v1

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    new-instance v2, La9/a;

    .line 16
    .line 17
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, La9/a;->g()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, La9/a;->j()[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, La9/s;->h:[B

    .line 28
    .line 29
    invoke-virtual {v2}, La9/a;->j()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, La9/s;->j:[B

    .line 34
    .line 35
    invoke-virtual {v2}, La9/a;->j()[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, La9/s;->i:[B

    .line 40
    .line 41
    invoke-virtual {v2}, La9/a;->j()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, La9/s;->k:[B

    .line 46
    .line 47
    invoke-virtual {v2}, La9/a;->j()[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, La9/s;->l:[B

    .line 52
    .line 53
    iget-object p1, p0, La9/s;->h:[B

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    new-instance p1, Ljava/math/BigInteger;

    .line 58
    .line 59
    iget-object v2, p0, La9/s;->h:[B

    .line 60
    .line 61
    invoke-direct {p1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 65
    .line 66
    .line 67
    :cond_0
    return v4

    .line 68
    :cond_1
    return v1

    .line 69
    :cond_2
    const/4 v5, 0x2

    .line 70
    if-eq v2, v5, :cond_11

    .line 71
    .line 72
    const/4 v6, 0x5

    .line 73
    if-ne v2, v6, :cond_3

    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_3
    const/4 v6, 0x4

    .line 78
    if-ne v2, v6, :cond_5

    .line 79
    .line 80
    new-instance v2, La9/a;

    .line 81
    .line 82
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, La9/a;->g()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {v2}, La9/a;->g()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-ne p1, v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {v2}, La9/a;->l()[B

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, La9/h0;->c([B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, La9/a;->i()[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, La9/s;->h:[B

    .line 107
    .line 108
    invoke-virtual {v2}, La9/a;->i()[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, La9/s;->i:[B

    .line 113
    .line 114
    invoke-virtual {v2}, La9/a;->i()[B

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, La9/s;->j:[B

    .line 119
    .line 120
    invoke-virtual {v2}, La9/a;->i()[B

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, La9/s;->k:[B

    .line 125
    .line 126
    invoke-virtual {v2}, La9/a;->i()[B

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, La9/s;->l:[B

    .line 131
    .line 132
    invoke-virtual {v2}, La9/a;->l()[B

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    array-length v2, p1

    .line 137
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 138
    .line 139
    new-instance v5, Ljava/lang/String;

    .line 140
    .line 141
    invoke-direct {v5, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    .line 143
    .line 144
    iput-object v5, p0, La9/r;->b:Ljava/lang/String;

    .line 145
    .line 146
    return v4

    .line 147
    :cond_4
    new-instance p1, La9/n;

    .line 148
    .line 149
    const-string v2, "check failed"

    .line 150
    .line 151
    invoke-direct {p1, v2}, La9/n;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_5
    aget-byte v2, p1, v1

    .line 156
    .line 157
    if-eq v2, v3, :cond_6

    .line 158
    .line 159
    return v1

    .line 160
    :cond_6
    aget-byte v2, p1, v4

    .line 161
    .line 162
    and-int/lit16 v3, v2, 0x80

    .line 163
    .line 164
    if-eqz v3, :cond_7

    .line 165
    .line 166
    and-int/lit8 v2, v2, 0x7f

    .line 167
    .line 168
    const/4 v3, 0x2

    .line 169
    :goto_0
    add-int/lit8 v6, v2, -0x1

    .line 170
    .line 171
    if-lez v2, :cond_8

    .line 172
    .line 173
    add-int/lit8 v2, v3, 0x1

    .line 174
    .line 175
    aget-byte v3, p1, v3

    .line 176
    .line 177
    move v3, v2

    .line 178
    move v2, v6

    .line 179
    goto :goto_0

    .line 180
    :cond_7
    const/4 v3, 0x2

    .line 181
    :cond_8
    aget-byte v2, p1, v3

    .line 182
    .line 183
    if-eq v2, v5, :cond_9

    .line 184
    .line 185
    return v1

    .line 186
    :cond_9
    add-int/lit8 v2, v3, 0x1

    .line 187
    .line 188
    add-int/2addr v3, v5

    .line 189
    aget-byte v2, p1, v2

    .line 190
    .line 191
    and-int/lit16 v6, v2, 0xff

    .line 192
    .line 193
    and-int/lit16 v7, v2, 0x80

    .line 194
    .line 195
    if-eqz v7, :cond_a

    .line 196
    .line 197
    and-int/lit8 v2, v2, 0x7f

    .line 198
    .line 199
    const/4 v6, 0x0

    .line 200
    :goto_1
    add-int/lit8 v7, v2, -0x1

    .line 201
    .line 202
    if-lez v2, :cond_a

    .line 203
    .line 204
    shl-int/lit8 v2, v6, 0x8

    .line 205
    .line 206
    add-int/lit8 v6, v3, 0x1

    .line 207
    .line 208
    aget-byte v3, p1, v3

    .line 209
    .line 210
    and-int/lit16 v3, v3, 0xff

    .line 211
    .line 212
    add-int/2addr v2, v3

    .line 213
    move v3, v6

    .line 214
    move v6, v2

    .line 215
    move v2, v7

    .line 216
    goto :goto_1

    .line 217
    :cond_a
    add-int/2addr v3, v6

    .line 218
    add-int/lit8 v2, v3, 0x1

    .line 219
    .line 220
    add-int/2addr v3, v5

    .line 221
    aget-byte v2, p1, v2

    .line 222
    .line 223
    and-int/lit16 v6, v2, 0xff

    .line 224
    .line 225
    and-int/lit16 v7, v2, 0x80

    .line 226
    .line 227
    if-eqz v7, :cond_b

    .line 228
    .line 229
    and-int/lit8 v2, v2, 0x7f

    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    :goto_2
    add-int/lit8 v7, v2, -0x1

    .line 233
    .line 234
    if-lez v2, :cond_b

    .line 235
    .line 236
    shl-int/lit8 v2, v6, 0x8

    .line 237
    .line 238
    add-int/lit8 v6, v3, 0x1

    .line 239
    .line 240
    aget-byte v3, p1, v3

    .line 241
    .line 242
    and-int/lit16 v3, v3, 0xff

    .line 243
    .line 244
    add-int/2addr v2, v3

    .line 245
    move v3, v6

    .line 246
    move v6, v2

    .line 247
    move v2, v7

    .line 248
    goto :goto_2

    .line 249
    :cond_b
    new-array v2, v6, [B

    .line 250
    .line 251
    iput-object v2, p0, La9/s;->h:[B

    .line 252
    .line 253
    invoke-static {p1, v3, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    .line 255
    .line 256
    add-int/2addr v3, v6

    .line 257
    add-int/lit8 v2, v3, 0x1

    .line 258
    .line 259
    add-int/2addr v3, v5

    .line 260
    aget-byte v2, p1, v2

    .line 261
    .line 262
    and-int/lit16 v6, v2, 0xff

    .line 263
    .line 264
    and-int/lit16 v7, v2, 0x80

    .line 265
    .line 266
    if-eqz v7, :cond_c

    .line 267
    .line 268
    and-int/lit8 v2, v2, 0x7f

    .line 269
    .line 270
    const/4 v6, 0x0

    .line 271
    :goto_3
    add-int/lit8 v7, v2, -0x1

    .line 272
    .line 273
    if-lez v2, :cond_c

    .line 274
    .line 275
    shl-int/lit8 v2, v6, 0x8

    .line 276
    .line 277
    add-int/lit8 v6, v3, 0x1

    .line 278
    .line 279
    aget-byte v3, p1, v3

    .line 280
    .line 281
    and-int/lit16 v3, v3, 0xff

    .line 282
    .line 283
    add-int/2addr v2, v3

    .line 284
    move v3, v6

    .line 285
    move v6, v2

    .line 286
    move v2, v7

    .line 287
    goto :goto_3

    .line 288
    :cond_c
    new-array v2, v6, [B

    .line 289
    .line 290
    iput-object v2, p0, La9/s;->i:[B

    .line 291
    .line 292
    invoke-static {p1, v3, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    add-int/2addr v3, v6

    .line 296
    add-int/lit8 v2, v3, 0x1

    .line 297
    .line 298
    add-int/2addr v3, v5

    .line 299
    aget-byte v2, p1, v2

    .line 300
    .line 301
    and-int/lit16 v6, v2, 0xff

    .line 302
    .line 303
    and-int/lit16 v7, v2, 0x80

    .line 304
    .line 305
    if-eqz v7, :cond_d

    .line 306
    .line 307
    and-int/lit8 v2, v2, 0x7f

    .line 308
    .line 309
    const/4 v6, 0x0

    .line 310
    :goto_4
    add-int/lit8 v7, v2, -0x1

    .line 311
    .line 312
    if-lez v2, :cond_d

    .line 313
    .line 314
    shl-int/lit8 v2, v6, 0x8

    .line 315
    .line 316
    add-int/lit8 v6, v3, 0x1

    .line 317
    .line 318
    aget-byte v3, p1, v3

    .line 319
    .line 320
    and-int/lit16 v3, v3, 0xff

    .line 321
    .line 322
    add-int/2addr v2, v3

    .line 323
    move v3, v6

    .line 324
    move v6, v2

    .line 325
    move v2, v7

    .line 326
    goto :goto_4

    .line 327
    :cond_d
    new-array v2, v6, [B

    .line 328
    .line 329
    iput-object v2, p0, La9/s;->j:[B

    .line 330
    .line 331
    invoke-static {p1, v3, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    .line 333
    .line 334
    add-int/2addr v3, v6

    .line 335
    add-int/lit8 v2, v3, 0x1

    .line 336
    .line 337
    add-int/2addr v3, v5

    .line 338
    aget-byte v2, p1, v2

    .line 339
    .line 340
    and-int/lit16 v6, v2, 0xff

    .line 341
    .line 342
    and-int/lit16 v7, v2, 0x80

    .line 343
    .line 344
    if-eqz v7, :cond_e

    .line 345
    .line 346
    and-int/lit8 v2, v2, 0x7f

    .line 347
    .line 348
    const/4 v6, 0x0

    .line 349
    :goto_5
    add-int/lit8 v7, v2, -0x1

    .line 350
    .line 351
    if-lez v2, :cond_e

    .line 352
    .line 353
    shl-int/lit8 v2, v6, 0x8

    .line 354
    .line 355
    add-int/lit8 v6, v3, 0x1

    .line 356
    .line 357
    aget-byte v3, p1, v3

    .line 358
    .line 359
    and-int/lit16 v3, v3, 0xff

    .line 360
    .line 361
    add-int/2addr v2, v3

    .line 362
    move v3, v6

    .line 363
    move v6, v2

    .line 364
    move v2, v7

    .line 365
    goto :goto_5

    .line 366
    :cond_e
    new-array v2, v6, [B

    .line 367
    .line 368
    iput-object v2, p0, La9/s;->k:[B

    .line 369
    .line 370
    invoke-static {p1, v3, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    .line 372
    .line 373
    add-int/2addr v3, v6

    .line 374
    add-int/lit8 v2, v3, 0x1

    .line 375
    .line 376
    add-int/2addr v3, v5

    .line 377
    aget-byte v2, p1, v2

    .line 378
    .line 379
    and-int/lit16 v5, v2, 0xff

    .line 380
    .line 381
    and-int/lit16 v6, v2, 0x80

    .line 382
    .line 383
    if-eqz v6, :cond_f

    .line 384
    .line 385
    and-int/lit8 v2, v2, 0x7f

    .line 386
    .line 387
    const/4 v5, 0x0

    .line 388
    :goto_6
    add-int/lit8 v6, v2, -0x1

    .line 389
    .line 390
    if-lez v2, :cond_f

    .line 391
    .line 392
    shl-int/lit8 v2, v5, 0x8

    .line 393
    .line 394
    add-int/lit8 v5, v3, 0x1

    .line 395
    .line 396
    aget-byte v3, p1, v3

    .line 397
    .line 398
    and-int/lit16 v3, v3, 0xff

    .line 399
    .line 400
    add-int/2addr v2, v3

    .line 401
    move v3, v5

    .line 402
    move v5, v2

    .line 403
    move v2, v6

    .line 404
    goto :goto_6

    .line 405
    :cond_f
    new-array v2, v5, [B

    .line 406
    .line 407
    iput-object v2, p0, La9/s;->l:[B

    .line 408
    .line 409
    invoke-static {p1, v3, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, La9/s;->h:[B

    .line 413
    .line 414
    if-eqz p1, :cond_10

    .line 415
    .line 416
    new-instance p1, Ljava/math/BigInteger;

    .line 417
    .line 418
    iget-object v2, p0, La9/s;->h:[B

    .line 419
    .line 420
    invoke-direct {p1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 424
    .line 425
    .line 426
    :cond_10
    return v4

    .line 427
    :cond_11
    :goto_7
    new-instance v2, La9/a;

    .line 428
    .line 429
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 430
    .line 431
    .line 432
    array-length p1, p1

    .line 433
    invoke-virtual {v2, p1}, La9/a;->r(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    .line 435
    .line 436
    :try_start_1
    const-string p1, ""

    .line 437
    .line 438
    invoke-virtual {v2, v4, p1}, La9/a;->f(ILjava/lang/String;)[[B

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    aget-object p1, p1, v1

    .line 443
    .line 444
    iput-object p1, p0, La9/s;->l:[B
    :try_end_1
    .catch La9/n; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    .line 446
    return v4

    .line 447
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    sget-object p1, La9/l;->f:Lgf/g;

    .line 451
    .line 452
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 453
    .line 454
    .line 455
    return v1

    .line 456
    :catch_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    sget-object p1, La9/l;->f:Lgf/g;

    .line 460
    .line 461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    return v1
.end method

.method public final t()[B
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, La9/r;->b(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    add-int/lit8 v1, v1, 0x3

    .line 7
    .line 8
    iget-object v2, p0, La9/s;->h:[B

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    invoke-static {v2}, La9/r;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    iget-object v1, p0, La9/s;->h:[B

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    add-int/2addr v2, v1

    .line 20
    add-int/2addr v2, v0

    .line 21
    iget-object v1, p0, La9/s;->i:[B

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    invoke-static {v1}, La9/r;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v2

    .line 29
    iget-object v2, p0, La9/s;->i:[B

    .line 30
    .line 31
    array-length v2, v2

    .line 32
    add-int/2addr v1, v2

    .line 33
    add-int/2addr v1, v0

    .line 34
    iget-object v2, p0, La9/s;->j:[B

    .line 35
    .line 36
    array-length v2, v2

    .line 37
    invoke-static {v2}, La9/r;->b(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v2, v1

    .line 42
    iget-object v1, p0, La9/s;->j:[B

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    add-int/2addr v2, v1

    .line 46
    add-int/2addr v2, v0

    .line 47
    iget-object v1, p0, La9/s;->k:[B

    .line 48
    .line 49
    array-length v1, v1

    .line 50
    invoke-static {v1}, La9/r;->b(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v2

    .line 55
    iget-object v2, p0, La9/s;->k:[B

    .line 56
    .line 57
    array-length v2, v2

    .line 58
    add-int/2addr v1, v2

    .line 59
    add-int/2addr v1, v0

    .line 60
    iget-object v2, p0, La9/s;->l:[B

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    invoke-static {v2}, La9/r;->b(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v2, v1

    .line 68
    iget-object v1, p0, La9/s;->l:[B

    .line 69
    .line 70
    array-length v1, v1

    .line 71
    add-int/2addr v2, v1

    .line 72
    invoke-static {v2}, La9/r;->b(I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    add-int/2addr v1, v2

    .line 78
    new-array v1, v1, [B

    .line 79
    .line 80
    const/16 v3, 0x30

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    aput-byte v3, v1, v4

    .line 84
    .line 85
    invoke-static {v0, v2, v1}, La9/r;->r(II[B)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    new-array v0, v0, [B

    .line 90
    .line 91
    invoke-static {v2, v1, v0}, La9/r;->q(I[B[B)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v2, p0, La9/s;->h:[B

    .line 96
    .line 97
    invoke-static {v0, v1, v2}, La9/r;->q(I[B[B)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v2, p0, La9/s;->i:[B

    .line 102
    .line 103
    invoke-static {v0, v1, v2}, La9/r;->q(I[B[B)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget-object v2, p0, La9/s;->j:[B

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, La9/r;->q(I[B[B)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v2, p0, La9/s;->k:[B

    .line 114
    .line 115
    invoke-static {v0, v1, v2}, La9/r;->q(I[B[B)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iget-object v2, p0, La9/s;->l:[B

    .line 120
    .line 121
    invoke-static {v0, v1, v2}, La9/r;->q(I[B[B)I

    .line 122
    .line 123
    .line 124
    return-object v1
.end method
