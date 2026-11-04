.class public final Lvd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd/o;


# static fields
.field public static final t:Lorg/slf4j/Logger;

.field public static final u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field public final a:Lvd/j;

.field public b:I

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:[B

.field public f:[B

.field public final g:Z

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public j:I

.field public final k:Lvc/b;

.field public l:Ljava/lang/String;

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:Ljavax/crypto/Cipher;

.field public s:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lvd/i;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/i;->t:Lorg/slf4j/Logger;

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    .line 11
    const-string v1, "1.3.6.1.4.1.311.2.2.10"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lvd/i;->u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    sget-object v1, Lvd/i;->t:Lorg/slf4j/Logger;

    .line 21
    .line 22
    const-string v2, "Failed to parse OID"

    .line 23
    .line 24
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public constructor <init>(Lvc/b;Lvd/j;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lvd/i;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lvd/i;->e:[B

    .line 9
    .line 10
    iput-object v1, p0, Lvd/i;->f:[B

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lvd/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lvd/i;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lvd/i;->j:I

    .line 28
    .line 29
    iput-object p1, p0, Lvd/i;->k:Lvc/b;

    .line 30
    .line 31
    iput-object p2, p0, Lvd/i;->a:Lvd/j;

    .line 32
    .line 33
    iget v0, p0, Lvd/i;->b:I

    .line 34
    .line 35
    const v1, 0x20080004

    .line 36
    .line 37
    .line 38
    or-int/2addr v0, v1

    .line 39
    iput v0, p0, Lvd/i;->b:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lvd/j;->d()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    iget p2, p0, Lvd/i;->b:I

    .line 48
    .line 49
    const v0, 0x40008010

    .line 50
    .line 51
    .line 52
    or-int/2addr p2, v0

    .line 53
    iput p2, p0, Lvd/i;->b:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Lvd/j;->f()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    iget p2, p0, Lvd/i;->b:I

    .line 63
    .line 64
    const/high16 v0, 0x40000000    # 2.0f

    .line 65
    .line 66
    or-int/2addr p2, v0

    .line 67
    iput p2, p0, Lvd/i;->b:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget p2, p0, Lvd/i;->b:I

    .line 71
    .line 72
    or-int/lit16 p2, p2, 0x800

    .line 73
    .line 74
    iput p2, p0, Lvd/i;->b:I

    .line 75
    .line 76
    :goto_0
    iput-boolean p3, p0, Lvd/i;->g:Z

    .line 77
    .line 78
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lwc/a;

    .line 83
    .line 84
    iget-object p1, p1, Lwc/a;->T:Ljava/lang/String;

    .line 85
    .line 86
    iput-object p1, p0, Lvd/i;->c:Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method

.method public static e(Ljava/lang/String;[B)[B
    .locals 1

    .line 1
    invoke-static {}, Lge/a;->k()Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update(B)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method


# virtual methods
.method public final a(I[B)[B
    .locals 12

    .line 1
    iget p1, p0, Lvd/i;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lvd/i;->k:Lvc/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lvd/i;->t:Lorg/slf4j/Logger;

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eq p1, v4, :cond_8

    .line 11
    .line 12
    if-ne p1, v3, :cond_7

    .line 13
    .line 14
    :try_start_0
    new-instance p1, Ltd/b;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ltd/b;-><init>([B)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ltd/b;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    array-length v3, p2

    .line 33
    invoke-static {p2, v1, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :catch_1
    move-exception p1

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v3, p1, Ltd/b;->d:[B

    .line 48
    .line 49
    iput-object v3, p0, Lvd/i;->e:[B

    .line 50
    .line 51
    iget-boolean v3, p0, Lvd/i;->g:Z

    .line 52
    .line 53
    const/high16 v5, 0x80000

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lwc/a;

    .line 62
    .line 63
    iget-boolean v0, v0, Lwc/a;->u:Z

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/high16 v0, 0x40000000    # 2.0f

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ltd/a;->a(I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1, v5}, Ltd/a;->a(I)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance p1, Lvd/i0;

    .line 83
    .line 84
    const-string p2, "Server does not support extended NTLMv2 key exchange"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Lvd/i0;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    :goto_1
    const/high16 v0, 0x20000000

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ltd/a;->a(I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    new-instance p1, Lvd/i0;

    .line 100
    .line 101
    const-string p2, "Server does not support 128-bit keys"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Lvd/i0;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    :goto_2
    iget v0, p0, Lvd/i;->b:I

    .line 108
    .line 109
    iget v3, p1, Ltd/a;->a:I

    .line 110
    .line 111
    and-int/2addr v0, v3

    .line 112
    iput v0, p0, Lvd/i;->b:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lvd/i;->d(Ltd/b;)Ltd/c;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Lvd/i;->m:[B

    .line 119
    .line 120
    invoke-virtual {p1, v0, p2}, Ltd/c;->g([B[B)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ltd/c;->h()[B

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1}, Ltd/c;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    array-length v3, p2

    .line 141
    invoke-static {p2, v1, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-interface {v2, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-object p1, p1, Ltd/c;->i:[B

    .line 149
    .line 150
    iput-object p1, p0, Lvd/i;->f:[B

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    iget p2, p0, Lvd/i;->b:I

    .line 155
    .line 156
    and-int/2addr p2, v5

    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lvd/i;->f([B)V

    .line 160
    .line 161
    .line 162
    :cond_6
    iput-boolean v4, p0, Lvd/i;->d:Z

    .line 163
    .line 164
    iget p1, p0, Lvd/i;->j:I

    .line 165
    .line 166
    add-int/2addr p1, v4

    .line 167
    iput p1, p0, Lvd/i;->j:I
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    return-object v0

    .line 170
    :goto_3
    new-instance p2, Lvd/r;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {p2, v0, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 177
    .line 178
    .line 179
    throw p2

    .line 180
    :goto_4
    throw p1

    .line 181
    :cond_7
    new-instance p1, Lvd/r;

    .line 182
    .line 183
    const-string p2, "Invalid state"

    .line 184
    .line 185
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_8
    iget p1, p0, Lvd/i;->b:I

    .line 190
    .line 191
    iget-object p2, p0, Lvd/i;->a:Lvd/j;

    .line 192
    .line 193
    iget-object p2, p2, Lvd/j;->b:Ljava/lang/String;

    .line 194
    .line 195
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lwc/a;

    .line 200
    .line 201
    iget-boolean v0, v0, Lwc/a;->e:Z

    .line 202
    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    const/4 v3, 0x1

    .line 206
    :cond_9
    const v0, 0x2000200

    .line 207
    .line 208
    .line 209
    or-int/2addr v0, v3

    .line 210
    or-int/2addr p1, v0

    .line 211
    :try_start_1
    new-array v0, v1, [B

    .line 212
    .line 213
    new-array v3, v1, [B

    .line 214
    .line 215
    and-int/lit16 v5, p1, -0x3001

    .line 216
    .line 217
    const/16 v6, 0x28

    .line 218
    .line 219
    new-array v7, v6, [B

    .line 220
    .line 221
    sget-object v8, Ltd/a;->b:[B

    .line 222
    .line 223
    const/16 v9, 0x8

    .line 224
    .line 225
    invoke-static {v8, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    .line 227
    .line 228
    invoke-static {v9, v4, v7}, Ltd/a;->f(II[B)V

    .line 229
    .line 230
    .line 231
    const/16 v8, 0xc

    .line 232
    .line 233
    invoke-static {v8, v5, v7}, Ltd/a;->f(II[B)V

    .line 234
    .line 235
    .line 236
    const/16 v5, 0x10

    .line 237
    .line 238
    invoke-static {v5, v7, v0}, Ltd/a;->d(I[B[B)I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    const/16 v8, 0x18

    .line 243
    .line 244
    invoke-static {v8, v7, v3}, Ltd/a;->d(I[B[B)I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    sget-object v10, Ltd/a;->c:[B

    .line 249
    .line 250
    const/16 v11, 0x20

    .line 251
    .line 252
    invoke-static {v10, v1, v7, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    .line 254
    .line 255
    invoke-static {v6, v5, v7, v0}, Ltd/a;->e(II[B[B)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    add-int/2addr v0, v6

    .line 260
    invoke-static {v0, v8, v7, v3}, Ltd/a;->e(II[B[B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 261
    .line 262
    .line 263
    iput-object v7, p0, Lvd/i;->m:[B

    .line 264
    .line 265
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_c

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v3, "Type1Message[suppliedDomain="

    .line 274
    .line 275
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v3, "null"

    .line 279
    .line 280
    if-nez p2, :cond_a

    .line 281
    .line 282
    move-object p2, v3

    .line 283
    :cond_a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string p2, ",suppliedWorkstation="

    .line 287
    .line 288
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object p2, p0, Lvd/i;->c:Ljava/lang/String;

    .line 292
    .line 293
    if-nez p2, :cond_b

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_b
    move-object v3, p2

    .line 297
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string p2, ",flags=0x"

    .line 301
    .line 302
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-static {p1, v9}, Lge/a;->l(II)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string p1, "]"

    .line 313
    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v7, v1, v6}, Lge/a;->m([BII)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_c
    iget p1, p0, Lvd/i;->j:I

    .line 332
    .line 333
    add-int/2addr p1, v4

    .line 334
    iput p1, p0, Lvd/i;->j:I

    .line 335
    .line 336
    return-object v7

    .line 337
    :catch_2
    move-exception p1

    .line 338
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw p2
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvd/i;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/i;->f:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ltd/b;)Ltd/c;
    .locals 11

    .line 1
    new-instance v10, Ltd/c;

    .line 2
    .line 3
    iget-object v3, p0, Lvd/i;->l:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lvd/i;->a:Lvd/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lvd/i;->k:Lvc/b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lwc/a;

    .line 20
    .line 21
    iget-object v1, v1, Lwc/a;->w0:Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    move-object v4, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v1, v0, Lvd/j;->d:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_2
    move-object v5, v1

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    iget-object v1, v0, Lvd/j;->b:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_3
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lwc/a;

    .line 51
    .line 52
    iget-object v1, v1, Lwc/a;->v0:Ljava/lang/String;

    .line 53
    .line 54
    :goto_4
    move-object v6, v1

    .line 55
    goto :goto_5

    .line 56
    :cond_2
    iget-object v1, v0, Lvd/j;->c:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :goto_5
    iget v8, p0, Lvd/i;->b:I

    .line 60
    .line 61
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    goto :goto_6

    .line 74
    :cond_3
    const/4 v0, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    goto :goto_7

    .line 77
    :cond_4
    :goto_6
    const/4 v0, 0x1

    .line 78
    const/4 v9, 0x1

    .line 79
    :goto_7
    iget-object v1, p0, Lvd/i;->k:Lvc/b;

    .line 80
    .line 81
    iget-object v7, p0, Lvd/i;->c:Ljava/lang/String;

    .line 82
    .line 83
    move-object v0, v10

    .line 84
    move-object v2, p1

    .line 85
    invoke-direct/range {v0 .. v9}, Ltd/c;-><init>(Lvc/b;Ltd/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 86
    .line 87
    .line 88
    return-object v10
.end method

.method public final f([B)V
    .locals 4

    .line 1
    const-string v0, "session key to client-to-server signing key magic constant"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lvd/i;->e(Ljava/lang/String;[B)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lvd/i;->n:[B

    .line 8
    .line 9
    const-string v0, "session key to server-to-client signing key magic constant"

    .line 10
    .line 11
    invoke-static {v0, p1}, Lvd/i;->e(Ljava/lang/String;[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lvd/i;->o:[B

    .line 16
    .line 17
    sget-object v0, Lvd/i;->t:Lorg/slf4j/Logger;

    .line 18
    .line 19
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lvd/i;->n:[B

    .line 27
    .line 28
    array-length v3, v1

    .line 29
    invoke-static {v1, v2, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "Sign key is "

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lvd/i;->o:[B

    .line 43
    .line 44
    array-length v3, v1

    .line 45
    invoke-static {v1, v2, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "Verify key is "

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    const-string v1, "session key to client-to-server sealing key magic constant"

    .line 59
    .line 60
    invoke-static {v1, p1}, Lvd/i;->e(Ljava/lang/String;[B)[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lvd/i;->p:[B

    .line 65
    .line 66
    invoke-static {v1}, Lge/a;->h([B)Ljavax/crypto/Cipher;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lvd/i;->r:Ljavax/crypto/Cipher;

    .line 71
    .line 72
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lvd/i;->p:[B

    .line 79
    .line 80
    array-length v3, v1

    .line 81
    invoke-static {v1, v2, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v3, "Seal key is "

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    const-string v1, "session key to server-to-client sealing key magic constant"

    .line 95
    .line 96
    invoke-static {v1, p1}, Lvd/i;->e(Ljava/lang/String;[B)[B

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lvd/i;->q:[B

    .line 101
    .line 102
    invoke-static {p1}, Lge/a;->h([B)Ljavax/crypto/Cipher;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lvd/i;->s:Ljavax/crypto/Cipher;

    .line 107
    .line 108
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    iget-object p1, p0, Lvd/i;->q:[B

    .line 115
    .line 116
    array-length v1, p1

    .line 117
    invoke-static {p1, v2, v1}, Lge/a;->m([BII)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v1, "Server seal key is "

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/i;->a:Lvd/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvd/j;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lvd/i;->n:[B

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lvd/i;->o:[B

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final h([B[B)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "Decrypted "

    .line 5
    .line 6
    iget-object v4, p0, Lvd/i;->o:[B

    .line 7
    .line 8
    if-eqz v4, :cond_7

    .line 9
    .line 10
    invoke-static {v1, p2}, Lrd/a;->b(I[B)I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-ne v5, v2, :cond_6

    .line 15
    .line 16
    new-instance v6, Lde/b;

    .line 17
    .line 18
    invoke-direct {v6, v4, v2}, Lde/b;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    invoke-static {v4, p2}, Lrd/a;->b(I[B)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, 0x4

    .line 28
    invoke-virtual {v6, p2, v4, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/16 v4, 0x8

    .line 36
    .line 37
    invoke-static {p1, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    sget-object v9, Lvd/i;->t:Lorg/slf4j/Logger;

    .line 42
    .line 43
    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_0

    .line 48
    .line 49
    array-length v10, p1

    .line 50
    invoke-static {p1, v1, v10}, Lge/a;->m([BII)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v10, "Digest "

    .line 55
    .line 56
    invoke-virtual {v10, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v9, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    array-length p1, v6

    .line 64
    invoke-static {v6, v1, p1}, Lge/a;->m([BII)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v10, "Truncated "

    .line 69
    .line 70
    invoke-virtual {v10, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {v9, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget p1, p0, Lvd/i;->b:I

    .line 78
    .line 79
    const/high16 v10, 0x40000000    # 2.0f

    .line 80
    .line 81
    and-int/2addr p1, v10

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 p1, 0x0

    .line 87
    :goto_0
    if-eqz p1, :cond_2

    .line 88
    .line 89
    :try_start_0
    iget-object v10, p0, Lvd/i;->s:Ljavax/crypto/Cipher;

    .line 90
    .line 91
    invoke-virtual {v10, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_2

    .line 100
    .line 101
    array-length v10, v6

    .line 102
    invoke-static {v6, v1, v10}, Lge/a;->m([BII)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v9, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception p1

    .line 115
    new-instance p2, Lvc/c;

    .line 116
    .line 117
    const-string v0, "Failed to decrypt MIC"

    .line 118
    .line 119
    invoke-direct {p2, v0, p1}, Lvc/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 120
    .line 121
    .line 122
    throw p2

    .line 123
    :cond_2
    :goto_1
    iget-object v3, p0, Lvd/i;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-ne v3, v7, :cond_5

    .line 130
    .line 131
    new-array v3, v4, [B

    .line 132
    .line 133
    invoke-static {p2, v8, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    invoke-static {v6, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_4

    .line 141
    .line 142
    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_3

    .line 147
    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const/4 v7, 0x3

    .line 161
    new-array v7, v7, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object p2, v7, v1

    .line 164
    .line 165
    aput-object v5, v7, v2

    .line 166
    .line 167
    aput-object p1, v7, v0

    .line 168
    .line 169
    const-string p1, "Seq = %d ver = %d encrypted = %s"

    .line 170
    .line 171
    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-interface {v9, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    array-length p1, v6

    .line 179
    invoke-static {v6, v1, p1}, Lge/a;->m([BII)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v3, v1, v4}, Lge/a;->m([BII)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v1, "Expected MIC "

    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, " != "

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-interface {v9, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    new-instance p1, Lvc/c;

    .line 213
    .line 214
    const-string p2, "Invalid MIC"

    .line 215
    .line 216
    invoke-direct {p1, p2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :cond_4
    return-void

    .line 221
    :cond_5
    new-instance p1, Lvc/c;

    .line 222
    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    new-array v0, v0, [Ljava/lang/Object;

    .line 232
    .line 233
    aput-object p2, v0, v1

    .line 234
    .line 235
    aput-object v3, v0, v2

    .line 236
    .line 237
    const-string p2, "Invalid MIC sequence, expect %d have %d"

    .line 238
    .line 239
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-direct {p1, p2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_6
    new-instance p1, Lvd/i0;

    .line 248
    .line 249
    const-string p2, "Invalid signature version"

    .line 250
    .line 251
    invoke-direct {p1, p2}, Lvd/i0;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_7
    new-instance p1, Lvc/c;

    .line 256
    .line 257
    const-string p2, "Signing is not initialized"

    .line 258
    .line 259
    invoke-direct {p1, p2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NtlmContext[auth="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lvd/i;->a:Lvd/j;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",ntlmsspFlags=0x"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lvd/i;->b:I

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    const-string v3, ",workstation="

    .line 23
    .line 24
    invoke-static {v1, v2, v3, v0}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lvd/i;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ",isEstablished="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lvd/i;->d:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ",state="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lvd/i;->j:I

    .line 48
    .line 49
    const-string v2, ",serverChallenge="

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lvd/i;->e:[B

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    const-string v3, "null"

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    invoke-static {v0, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lvd/i;->e:[B

    .line 72
    .line 73
    array-length v4, v1

    .line 74
    invoke-static {v1, v2, v4}, Lge/a;->m([BII)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    const-string v1, ",signingKey="

    .line 86
    .line 87
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Lvd/i;->f:[B

    .line 92
    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    invoke-static {v0, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lvd/i;->f:[B

    .line 105
    .line 106
    array-length v3, v1

    .line 107
    invoke-static {v1, v2, v3}, Lge/a;->m([BII)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_1
    const-string v1, "]"

    .line 119
    .line 120
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0
.end method
