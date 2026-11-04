.class public final La9/x;
.super La9/r;
.source "SourceFile"


# static fields
.field public static final p:[B


# instance fields
.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    .line 2
    .line 3
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    const-string v0, "-----END RSA PRIVATE KEY-----"

    .line 7
    .line 8
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    const-string v1, "ssh-rsa"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, La9/x;->p:[B

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lm7/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, La9/x;-><init>(Lm7/e;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lm7/e;[B[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, La9/r;-><init>(Lm7/e;)V

    .line 3
    iput-object p2, p0, La9/x;->h:[B

    .line 4
    iput-object p3, p0, La9/x;->i:[B

    .line 5
    iput-object p4, p0, La9/x;->j:[B

    if-eqz p2, :cond_0

    .line 6
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    :cond_0
    return-void
.end method

.method public static s(Lm7/e;La9/a;)La9/x;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const-string v1, "invalid key format"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, La9/a;->f(ILjava/lang/String;)[[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    aget-object v0, p1, v0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    aget-object v1, p1, v1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    aget-object v2, p1, v2

    .line 17
    .line 18
    new-instance v3, La9/x;

    .line 19
    .line 20
    invoke-direct {v3, p0, v0, v1, v2}, La9/x;-><init>(Lm7/e;[B[B[B)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    aget-object p0, p1, p0

    .line 25
    .line 26
    iput-object p0, v3, La9/x;->o:[B

    .line 27
    .line 28
    const/4 p0, 0x5

    .line 29
    aget-object p0, p1, p0

    .line 30
    .line 31
    iput-object p0, v3, La9/x;->k:[B

    .line 32
    .line 33
    const/4 p0, 0x6

    .line 34
    aget-object p0, p1, p0

    .line 35
    .line 36
    iput-object p0, v3, La9/x;->l:[B

    .line 37
    .line 38
    const/4 p0, 0x7

    .line 39
    aget-object p0, p1, p0

    .line 40
    .line 41
    invoke-static {p0}, La9/h0;->c([B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iput-object p0, v3, La9/r;->b:Ljava/lang/String;

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    iput p0, v3, La9/r;->a:I

    .line 49
    .line 50
    return-object v3
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, La9/x;->j:[B

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
    sget-object v1, La9/x;->p:[B

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La9/x;->h:[B

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, La9/x;->i:[B

    .line 25
    .line 26
    array-length v2, v1

    .line 27
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, La9/x;->j:[B

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, La9/x;->t()[B

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    array-length v2, v1

    .line 41
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, La9/x;->k:[B

    .line 45
    .line 46
    array-length v2, v1

    .line 47
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, La9/x;->l:[B

    .line 51
    .line 52
    array-length v2, v1

    .line 53
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, La9/r;->b:Ljava/lang/String;

    .line 57
    .line 58
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-static {v1, v2}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    array-length v2, v1

    .line 65
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, La9/a;->h()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    new-array v2, v1, [B

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, La9/a;->e(I[B)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_0
    new-instance v0, La9/n;

    .line 79
    .line 80
    const-string v1, "key is encrypted."

    .line 81
    .line 82
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public final h()[B
    .locals 5

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
    iget-object v0, p0, La9/x;->i:[B

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
    iget-object v1, p0, La9/x;->h:[B

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    new-array v2, v2, [[B

    .line 16
    .line 17
    sget-object v3, La9/x;->p:[B

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    invoke-static {v2}, La9/a;->b([[B)La9/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, La9/a;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [B

    .line 35
    .line 36
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
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x2

    .line 9
    if-eq v2, v5, :cond_14

    .line 10
    .line 11
    const/4 v6, 0x5

    .line 12
    if-ne v2, v6, :cond_0

    .line 13
    .line 14
    goto/16 :goto_a

    .line 15
    .line 16
    :cond_0
    if-ne v2, v3, :cond_3

    .line 17
    .line 18
    aget-byte v2, p1, v1

    .line 19
    .line 20
    const/16 v4, 0x30

    .line 21
    .line 22
    if-eq v2, v4, :cond_2

    .line 23
    .line 24
    new-instance v2, La9/a;

    .line 25
    .line 26
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, La9/a;->j()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, La9/x;->i:[B

    .line 34
    .line 35
    invoke-virtual {v2}, La9/a;->j()[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, La9/x;->j:[B

    .line 40
    .line 41
    invoke-virtual {v2}, La9/a;->j()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, La9/x;->h:[B

    .line 46
    .line 47
    invoke-virtual {v2}, La9/a;->j()[B

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, La9/a;->j()[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, La9/x;->k:[B

    .line 55
    .line 56
    invoke-virtual {v2}, La9/a;->j()[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, La9/x;->l:[B

    .line 61
    .line 62
    iget-object p1, p0, La9/x;->h:[B

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    new-instance p1, Ljava/math/BigInteger;

    .line 67
    .line 68
    iget-object v2, p0, La9/x;->h:[B

    .line 69
    .line 70
    invoke-direct {p1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {p0}, La9/x;->u()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, La9/x;->v()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, La9/x;->t()[B

    .line 83
    .line 84
    .line 85
    return v3

    .line 86
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    sget-object p1, La9/l;->f:Lgf/g;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :cond_3
    if-ne v2, v4, :cond_6

    .line 96
    .line 97
    new-instance v2, La9/a;

    .line 98
    .line 99
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, La9/a;->g()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v2}, La9/a;->g()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-ne p1, v4, :cond_5

    .line 111
    .line 112
    invoke-virtual {v2}, La9/a;->l()[B

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, La9/h0;->c([B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, La9/a;->i()[B

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, La9/x;->h:[B

    .line 124
    .line 125
    invoke-virtual {v2}, La9/a;->i()[B

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, La9/x;->i:[B

    .line 130
    .line 131
    invoke-virtual {v2}, La9/a;->i()[B

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, La9/x;->j:[B

    .line 136
    .line 137
    invoke-virtual {v2}, La9/a;->i()[B

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, La9/x;->o:[B

    .line 142
    .line 143
    invoke-virtual {v2}, La9/a;->i()[B

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, La9/x;->k:[B

    .line 148
    .line 149
    invoke-virtual {v2}, La9/a;->i()[B

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iput-object p1, p0, La9/x;->l:[B

    .line 154
    .line 155
    iget-object p1, p0, La9/x;->h:[B

    .line 156
    .line 157
    if-eqz p1, :cond_4

    .line 158
    .line 159
    new-instance p1, Ljava/math/BigInteger;

    .line 160
    .line 161
    iget-object v4, p0, La9/x;->h:[B

    .line 162
    .line 163
    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 167
    .line 168
    .line 169
    :cond_4
    invoke-virtual {v2}, La9/a;->l()[B

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    array-length v2, p1

    .line 174
    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 175
    .line 176
    new-instance v5, Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {v5, p1, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 179
    .line 180
    .line 181
    iput-object v5, p0, La9/r;->b:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p0}, La9/x;->u()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, La9/x;->v()V

    .line 187
    .line 188
    .line 189
    return v3

    .line 190
    :cond_5
    new-instance p1, La9/n;

    .line 191
    .line 192
    const-string v2, "check failed"

    .line 193
    .line 194
    invoke-direct {p1, v2}, La9/n;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_6
    aget-byte v2, p1, v3

    .line 199
    .line 200
    and-int/lit16 v4, v2, 0x80

    .line 201
    .line 202
    if-eqz v4, :cond_7

    .line 203
    .line 204
    and-int/lit8 v2, v2, 0x7f

    .line 205
    .line 206
    const/4 v4, 0x2

    .line 207
    :goto_0
    add-int/lit8 v6, v2, -0x1

    .line 208
    .line 209
    if-lez v2, :cond_8

    .line 210
    .line 211
    add-int/lit8 v2, v4, 0x1

    .line 212
    .line 213
    aget-byte v4, p1, v4

    .line 214
    .line 215
    move v4, v2

    .line 216
    move v2, v6

    .line 217
    goto :goto_0

    .line 218
    :cond_7
    const/4 v4, 0x2

    .line 219
    :cond_8
    aget-byte v2, p1, v4

    .line 220
    .line 221
    if-eq v2, v5, :cond_9

    .line 222
    .line 223
    return v1

    .line 224
    :cond_9
    add-int/lit8 v2, v4, 0x1

    .line 225
    .line 226
    add-int/2addr v4, v5

    .line 227
    aget-byte v2, p1, v2

    .line 228
    .line 229
    and-int/lit16 v6, v2, 0xff

    .line 230
    .line 231
    and-int/lit16 v7, v2, 0x80

    .line 232
    .line 233
    if-eqz v7, :cond_a

    .line 234
    .line 235
    and-int/lit8 v2, v2, 0x7f

    .line 236
    .line 237
    const/4 v6, 0x0

    .line 238
    :goto_1
    add-int/lit8 v7, v2, -0x1

    .line 239
    .line 240
    if-lez v2, :cond_a

    .line 241
    .line 242
    shl-int/lit8 v2, v6, 0x8

    .line 243
    .line 244
    add-int/lit8 v6, v4, 0x1

    .line 245
    .line 246
    aget-byte v4, p1, v4

    .line 247
    .line 248
    and-int/lit16 v4, v4, 0xff

    .line 249
    .line 250
    add-int/2addr v2, v4

    .line 251
    move v4, v6

    .line 252
    move v6, v2

    .line 253
    move v2, v7

    .line 254
    goto :goto_1

    .line 255
    :cond_a
    add-int/2addr v4, v6

    .line 256
    add-int/lit8 v2, v4, 0x1

    .line 257
    .line 258
    add-int/2addr v4, v5

    .line 259
    aget-byte v2, p1, v2

    .line 260
    .line 261
    and-int/lit16 v6, v2, 0xff

    .line 262
    .line 263
    and-int/lit16 v7, v2, 0x80

    .line 264
    .line 265
    if-eqz v7, :cond_b

    .line 266
    .line 267
    and-int/lit8 v2, v2, 0x7f

    .line 268
    .line 269
    const/4 v6, 0x0

    .line 270
    :goto_2
    add-int/lit8 v7, v2, -0x1

    .line 271
    .line 272
    if-lez v2, :cond_b

    .line 273
    .line 274
    shl-int/lit8 v2, v6, 0x8

    .line 275
    .line 276
    add-int/lit8 v6, v4, 0x1

    .line 277
    .line 278
    aget-byte v4, p1, v4

    .line 279
    .line 280
    and-int/lit16 v4, v4, 0xff

    .line 281
    .line 282
    add-int/2addr v2, v4

    .line 283
    move v4, v6

    .line 284
    move v6, v2

    .line 285
    move v2, v7

    .line 286
    goto :goto_2

    .line 287
    :cond_b
    new-array v2, v6, [B

    .line 288
    .line 289
    iput-object v2, p0, La9/x;->h:[B

    .line 290
    .line 291
    invoke-static {p1, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    .line 293
    .line 294
    add-int/2addr v4, v6

    .line 295
    add-int/lit8 v2, v4, 0x1

    .line 296
    .line 297
    add-int/2addr v4, v5

    .line 298
    aget-byte v2, p1, v2

    .line 299
    .line 300
    and-int/lit16 v6, v2, 0xff

    .line 301
    .line 302
    and-int/lit16 v7, v2, 0x80

    .line 303
    .line 304
    if-eqz v7, :cond_c

    .line 305
    .line 306
    and-int/lit8 v2, v2, 0x7f

    .line 307
    .line 308
    const/4 v6, 0x0

    .line 309
    :goto_3
    add-int/lit8 v7, v2, -0x1

    .line 310
    .line 311
    if-lez v2, :cond_c

    .line 312
    .line 313
    shl-int/lit8 v2, v6, 0x8

    .line 314
    .line 315
    add-int/lit8 v6, v4, 0x1

    .line 316
    .line 317
    aget-byte v4, p1, v4

    .line 318
    .line 319
    and-int/lit16 v4, v4, 0xff

    .line 320
    .line 321
    add-int/2addr v2, v4

    .line 322
    move v4, v6

    .line 323
    move v6, v2

    .line 324
    move v2, v7

    .line 325
    goto :goto_3

    .line 326
    :cond_c
    new-array v2, v6, [B

    .line 327
    .line 328
    iput-object v2, p0, La9/x;->i:[B

    .line 329
    .line 330
    invoke-static {p1, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    .line 332
    .line 333
    add-int/2addr v4, v6

    .line 334
    add-int/lit8 v2, v4, 0x1

    .line 335
    .line 336
    add-int/2addr v4, v5

    .line 337
    aget-byte v2, p1, v2

    .line 338
    .line 339
    and-int/lit16 v6, v2, 0xff

    .line 340
    .line 341
    and-int/lit16 v7, v2, 0x80

    .line 342
    .line 343
    if-eqz v7, :cond_d

    .line 344
    .line 345
    and-int/lit8 v2, v2, 0x7f

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    :goto_4
    add-int/lit8 v7, v2, -0x1

    .line 349
    .line 350
    if-lez v2, :cond_d

    .line 351
    .line 352
    shl-int/lit8 v2, v6, 0x8

    .line 353
    .line 354
    add-int/lit8 v6, v4, 0x1

    .line 355
    .line 356
    aget-byte v4, p1, v4

    .line 357
    .line 358
    and-int/lit16 v4, v4, 0xff

    .line 359
    .line 360
    add-int/2addr v2, v4

    .line 361
    move v4, v6

    .line 362
    move v6, v2

    .line 363
    move v2, v7

    .line 364
    goto :goto_4

    .line 365
    :cond_d
    new-array v2, v6, [B

    .line 366
    .line 367
    iput-object v2, p0, La9/x;->j:[B

    .line 368
    .line 369
    invoke-static {p1, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    .line 371
    .line 372
    add-int/2addr v4, v6

    .line 373
    add-int/lit8 v2, v4, 0x1

    .line 374
    .line 375
    add-int/2addr v4, v5

    .line 376
    aget-byte v2, p1, v2

    .line 377
    .line 378
    and-int/lit16 v6, v2, 0xff

    .line 379
    .line 380
    and-int/lit16 v7, v2, 0x80

    .line 381
    .line 382
    if-eqz v7, :cond_e

    .line 383
    .line 384
    and-int/lit8 v2, v2, 0x7f

    .line 385
    .line 386
    const/4 v6, 0x0

    .line 387
    :goto_5
    add-int/lit8 v7, v2, -0x1

    .line 388
    .line 389
    if-lez v2, :cond_e

    .line 390
    .line 391
    shl-int/lit8 v2, v6, 0x8

    .line 392
    .line 393
    add-int/lit8 v6, v4, 0x1

    .line 394
    .line 395
    aget-byte v4, p1, v4

    .line 396
    .line 397
    and-int/lit16 v4, v4, 0xff

    .line 398
    .line 399
    add-int/2addr v2, v4

    .line 400
    move v4, v6

    .line 401
    move v6, v2

    .line 402
    move v2, v7

    .line 403
    goto :goto_5

    .line 404
    :cond_e
    new-array v2, v6, [B

    .line 405
    .line 406
    iput-object v2, p0, La9/x;->k:[B

    .line 407
    .line 408
    invoke-static {p1, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    .line 410
    .line 411
    add-int/2addr v4, v6

    .line 412
    add-int/lit8 v2, v4, 0x1

    .line 413
    .line 414
    add-int/2addr v4, v5

    .line 415
    aget-byte v2, p1, v2

    .line 416
    .line 417
    and-int/lit16 v6, v2, 0xff

    .line 418
    .line 419
    and-int/lit16 v7, v2, 0x80

    .line 420
    .line 421
    if-eqz v7, :cond_f

    .line 422
    .line 423
    and-int/lit8 v2, v2, 0x7f

    .line 424
    .line 425
    const/4 v6, 0x0

    .line 426
    :goto_6
    add-int/lit8 v7, v2, -0x1

    .line 427
    .line 428
    if-lez v2, :cond_f

    .line 429
    .line 430
    shl-int/lit8 v2, v6, 0x8

    .line 431
    .line 432
    add-int/lit8 v6, v4, 0x1

    .line 433
    .line 434
    aget-byte v4, p1, v4

    .line 435
    .line 436
    and-int/lit16 v4, v4, 0xff

    .line 437
    .line 438
    add-int/2addr v2, v4

    .line 439
    move v4, v6

    .line 440
    move v6, v2

    .line 441
    move v2, v7

    .line 442
    goto :goto_6

    .line 443
    :cond_f
    new-array v2, v6, [B

    .line 444
    .line 445
    iput-object v2, p0, La9/x;->l:[B

    .line 446
    .line 447
    invoke-static {p1, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    .line 449
    .line 450
    add-int/2addr v4, v6

    .line 451
    add-int/lit8 v2, v4, 0x1

    .line 452
    .line 453
    add-int/2addr v4, v5

    .line 454
    aget-byte v2, p1, v2

    .line 455
    .line 456
    and-int/lit16 v6, v2, 0xff

    .line 457
    .line 458
    and-int/lit16 v7, v2, 0x80

    .line 459
    .line 460
    if-eqz v7, :cond_10

    .line 461
    .line 462
    and-int/lit8 v2, v2, 0x7f

    .line 463
    .line 464
    const/4 v6, 0x0

    .line 465
    :goto_7
    add-int/lit8 v7, v2, -0x1

    .line 466
    .line 467
    if-lez v2, :cond_10

    .line 468
    .line 469
    shl-int/lit8 v2, v6, 0x8

    .line 470
    .line 471
    add-int/lit8 v6, v4, 0x1

    .line 472
    .line 473
    aget-byte v4, p1, v4

    .line 474
    .line 475
    and-int/lit16 v4, v4, 0xff

    .line 476
    .line 477
    add-int/2addr v2, v4

    .line 478
    move v4, v6

    .line 479
    move v6, v2

    .line 480
    move v2, v7

    .line 481
    goto :goto_7

    .line 482
    :cond_10
    new-array v2, v6, [B

    .line 483
    .line 484
    iput-object v2, p0, La9/x;->m:[B

    .line 485
    .line 486
    invoke-static {p1, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    .line 488
    .line 489
    add-int/2addr v4, v6

    .line 490
    add-int/lit8 v2, v4, 0x1

    .line 491
    .line 492
    add-int/2addr v4, v5

    .line 493
    aget-byte v2, p1, v2

    .line 494
    .line 495
    and-int/lit16 v6, v2, 0xff

    .line 496
    .line 497
    and-int/lit16 v7, v2, 0x80

    .line 498
    .line 499
    if-eqz v7, :cond_11

    .line 500
    .line 501
    and-int/lit8 v2, v2, 0x7f

    .line 502
    .line 503
    const/4 v6, 0x0

    .line 504
    :goto_8
    add-int/lit8 v7, v2, -0x1

    .line 505
    .line 506
    if-lez v2, :cond_11

    .line 507
    .line 508
    shl-int/lit8 v2, v6, 0x8

    .line 509
    .line 510
    add-int/lit8 v6, v4, 0x1

    .line 511
    .line 512
    aget-byte v4, p1, v4

    .line 513
    .line 514
    and-int/lit16 v4, v4, 0xff

    .line 515
    .line 516
    add-int/2addr v2, v4

    .line 517
    move v4, v6

    .line 518
    move v6, v2

    .line 519
    move v2, v7

    .line 520
    goto :goto_8

    .line 521
    :cond_11
    new-array v2, v6, [B

    .line 522
    .line 523
    iput-object v2, p0, La9/x;->n:[B

    .line 524
    .line 525
    invoke-static {p1, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    .line 527
    .line 528
    add-int/2addr v4, v6

    .line 529
    add-int/lit8 v2, v4, 0x1

    .line 530
    .line 531
    add-int/2addr v4, v5

    .line 532
    aget-byte v2, p1, v2

    .line 533
    .line 534
    and-int/lit16 v5, v2, 0xff

    .line 535
    .line 536
    and-int/lit16 v6, v2, 0x80

    .line 537
    .line 538
    if-eqz v6, :cond_12

    .line 539
    .line 540
    and-int/lit8 v2, v2, 0x7f

    .line 541
    .line 542
    const/4 v5, 0x0

    .line 543
    :goto_9
    add-int/lit8 v6, v2, -0x1

    .line 544
    .line 545
    if-lez v2, :cond_12

    .line 546
    .line 547
    shl-int/lit8 v2, v5, 0x8

    .line 548
    .line 549
    add-int/lit8 v5, v4, 0x1

    .line 550
    .line 551
    aget-byte v4, p1, v4

    .line 552
    .line 553
    and-int/lit16 v4, v4, 0xff

    .line 554
    .line 555
    add-int/2addr v2, v4

    .line 556
    move v4, v5

    .line 557
    move v5, v2

    .line 558
    move v2, v6

    .line 559
    goto :goto_9

    .line 560
    :cond_12
    new-array v2, v5, [B

    .line 561
    .line 562
    iput-object v2, p0, La9/x;->o:[B

    .line 563
    .line 564
    invoke-static {p1, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    .line 566
    .line 567
    iget-object p1, p0, La9/x;->h:[B

    .line 568
    .line 569
    if-eqz p1, :cond_13

    .line 570
    .line 571
    new-instance p1, Ljava/math/BigInteger;

    .line 572
    .line 573
    iget-object v2, p0, La9/x;->h:[B

    .line 574
    .line 575
    invoke-direct {p1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 579
    .line 580
    .line 581
    :cond_13
    return v3

    .line 582
    :cond_14
    :goto_a
    new-instance v2, La9/a;

    .line 583
    .line 584
    invoke-direct {v2, p1}, La9/a;-><init>([B)V

    .line 585
    .line 586
    .line 587
    array-length p1, p1

    .line 588
    invoke-virtual {v2, p1}, La9/a;->r(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 589
    .line 590
    .line 591
    :try_start_1
    const-string p1, ""

    .line 592
    .line 593
    invoke-virtual {v2, v4, p1}, La9/a;->f(ILjava/lang/String;)[[B

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    aget-object v2, p1, v1

    .line 598
    .line 599
    iput-object v2, p0, La9/x;->j:[B

    .line 600
    .line 601
    aget-object v2, p1, v3

    .line 602
    .line 603
    iput-object v2, p0, La9/x;->k:[B

    .line 604
    .line 605
    aget-object v2, p1, v5

    .line 606
    .line 607
    iput-object v2, p0, La9/x;->l:[B

    .line 608
    .line 609
    const/4 v2, 0x3

    .line 610
    aget-object p1, p1, v2

    .line 611
    .line 612
    iput-object p1, p0, La9/x;->o:[B
    :try_end_1
    .catch La9/n; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 613
    .line 614
    :try_start_2
    invoke-virtual {p0}, La9/x;->u()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p0}, La9/x;->v()V

    .line 618
    .line 619
    .line 620
    return v3

    .line 621
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    sget-object p1, La9/l;->f:Lgf/g;

    .line 625
    .line 626
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 627
    .line 628
    .line 629
    return v1

    .line 630
    :catch_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    .line 632
    .line 633
    sget-object p1, La9/l;->f:Lgf/g;

    .line 634
    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    return v1
.end method

.method public final t()[B
    .locals 3

    .line 1
    iget-object v0, p0, La9/x;->o:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/math/BigInteger;

    .line 6
    .line 7
    iget-object v1, p0, La9/x;->l:[B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/math/BigInteger;

    .line 13
    .line 14
    iget-object v2, p0, La9/x;->k:[B

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, La9/x;->o:[B

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, La9/x;->o:[B

    .line 30
    .line 31
    return-object v0
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, La9/x;->m:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/math/BigInteger;

    .line 6
    .line 7
    iget-object v1, p0, La9/x;->j:[B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/math/BigInteger;

    .line 13
    .line 14
    iget-object v2, p0, La9/x;->k:[B

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, La9/x;->m:[B

    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    iget-object v0, p0, La9/x;->n:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/math/BigInteger;

    .line 6
    .line 7
    iget-object v1, p0, La9/x;->j:[B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/math/BigInteger;

    .line 13
    .line 14
    iget-object v2, p0, La9/x;->l:[B

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, La9/x;->n:[B

    .line 34
    .line 35
    :cond_0
    return-void
.end method
