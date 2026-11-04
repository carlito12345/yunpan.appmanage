.class public final Lvd/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd/o;


# static fields
.field public static final h:Lorg/slf4j/Logger;


# instance fields
.field public final a:Lvd/i;

.field public b:Z

.field public c:Z

.field public final d:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public final f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lvd/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/j0;->h:Lorg/slf4j/Logger;

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    .line 11
    const-string v1, "1.3.6.1.5.5.2"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    sget-object v1, Lvd/j0;->h:Lorg/slf4j/Logger;

    .line 19
    .line 20
    const-string v2, "Failed to initialize OID"

    .line 21
    .line 22
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public constructor <init>(Lvc/f;Lvd/i;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-array v2, v1, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    sget-object v3, Lvd/i;->u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 6
    .line 7
    aput-object v3, v2, v0

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-boolean v1, p0, Lvd/j0;->b:Z

    .line 13
    .line 14
    iput-object p2, p0, Lvd/j0;->a:Lvd/i;

    .line 15
    .line 16
    iput-object v2, p0, Lvd/j0;->d:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    .line 18
    check-cast p1, Lwc/a;

    .line 19
    .line 20
    iget-boolean p2, p1, Lwc/a;->u:Z

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    iget-boolean p1, p1, Lwc/a;->t:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_0
    iput-boolean v0, p0, Lvd/j0;->f:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lvd/j0;->g:Z

    .line 32
    .line 33
    return-void
.end method

.method public static e([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DER"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Lvc/c;

    .line 30
    .line 31
    const-string v1, "Failed to encode mechList"

    .line 32
    .line 33
    invoke-direct {v0, v1, p0}, Lvc/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method


# virtual methods
.method public final a(I[B)[B
    .locals 8

    .line 1
    iget-boolean v0, p0, Lvd/j0;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1b

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-array p1, v0, [B

    .line 10
    .line 11
    iget-object p2, p0, Lvd/j0;->a:Lvd/i;

    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Lvd/i;->a(I[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lfe/a;

    .line 18
    .line 19
    iget-object v2, p0, Lvd/j0;->d:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    .line 21
    invoke-direct {p2, v2, v0, p1}, Lfe/a;-><init>([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I[B)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_a

    .line 25
    .line 26
    :cond_0
    const-string v2, "Invalid token"

    .line 27
    .line 28
    new-array v3, p1, [B

    .line 29
    .line 30
    array-length v4, p2

    .line 31
    if-ne v4, p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p2, v0, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    move-object p2, v3

    .line 38
    :goto_0
    :try_start_0
    aget-byte p1, p2, v0

    .line 39
    .line 40
    const/16 v3, -0x5f

    .line 41
    .line 42
    if-eq p1, v3, :cond_3

    .line 43
    .line 44
    const/16 v3, 0x60

    .line 45
    .line 46
    if-ne p1, v3, :cond_2

    .line 47
    .line 48
    new-instance p1, Lfe/a;

    .line 49
    .line 50
    invoke-direct {p1, p2}, Lfe/a;-><init>([B)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance p1, Lad/g;

    .line 55
    .line 56
    const-string p2, "Invalid token type"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    new-instance p1, Lfe/b;

    .line 63
    .line 64
    invoke-direct {p1, p2}, Lfe/b;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :goto_1
    instance-of p2, p1, Lfe/a;

    .line 68
    .line 69
    iget-object v3, p0, Lvd/j0;->a:Lvd/i;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    if-eqz p2, :cond_8

    .line 73
    .line 74
    move-object p2, p1

    .line 75
    check-cast p2, Lfe/a;

    .line 76
    .line 77
    iget-object v2, p2, Lfe/a;->c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    .line 79
    aget-object v5, v2, v0

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v6, Lvd/i;->u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    .line 86
    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    iget-object p2, p2, Lfe/c;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p2, [B

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    array-length p2, v2

    .line 99
    const/4 v5, 0x0

    .line 100
    :goto_2
    if-ge v5, p2, :cond_6

    .line 101
    .line 102
    aget-object v6, v2, v5

    .line 103
    .line 104
    sget-object v7, Lvd/i;->u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    .line 106
    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    move-object v6, v1

    .line 117
    :goto_3
    if-eqz v6, :cond_7

    .line 118
    .line 119
    move-object p2, v1

    .line 120
    goto :goto_5

    .line 121
    :cond_7
    new-instance p1, Lvd/r;

    .line 122
    .line 123
    const-string p2, "Server does advertise any supported mechanism"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_8
    instance-of p2, p1, Lfe/b;

    .line 130
    .line 131
    if-eqz p2, :cond_1a

    .line 132
    .line 133
    move-object p2, p1

    .line 134
    check-cast p2, Lfe/b;

    .line 135
    .line 136
    iget-boolean v2, p0, Lvd/j0;->b:Z

    .line 137
    .line 138
    if-eqz v2, :cond_b

    .line 139
    .line 140
    iget-object v2, p2, Lfe/b;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    sget-object v5, Lvd/i;->u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 146
    .line 147
    invoke-virtual {v5, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_a

    .line 152
    .line 153
    iget-object v2, p2, Lfe/b;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    .line 155
    iput-object v2, p0, Lvd/j0;->e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 156
    .line 157
    iget v2, p2, Lfe/b;->d:I

    .line 158
    .line 159
    const/4 v5, 0x3

    .line 160
    if-ne v2, v5, :cond_9

    .line 161
    .line 162
    iput-boolean v4, p0, Lvd/j0;->g:Z

    .line 163
    .line 164
    :cond_9
    iput-boolean v0, p0, Lvd/j0;->b:Z

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    new-instance p1, Lvd/r;

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v1, "Server chose an unsupported mechanism "

    .line 172
    .line 173
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p2, p2, Lfe/b;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 177
    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_b
    iget-object v2, p2, Lfe/b;->c:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 190
    .line 191
    if-eqz v2, :cond_d

    .line 192
    .line 193
    iget-object v5, p0, Lvd/j0;->e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 194
    .line 195
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_c

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_c
    new-instance p1, Lvd/r;

    .line 203
    .line 204
    const-string p2, "Server switched mechanism"

    .line 205
    .line 206
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_d
    :goto_4
    iget-object p2, p2, Lfe/c;->a:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p2, [B

    .line 213
    .line 214
    :goto_5
    instance-of v2, p1, Lfe/b;

    .line 215
    .line 216
    if-eqz v2, :cond_10

    .line 217
    .line 218
    iget-boolean v5, v3, Lvd/i;->d:Z

    .line 219
    .line 220
    if-eqz v5, :cond_10

    .line 221
    .line 222
    check-cast p1, Lfe/b;

    .line 223
    .line 224
    iget p2, p1, Lfe/b;->d:I

    .line 225
    .line 226
    if-ne p2, v4, :cond_e

    .line 227
    .line 228
    iget-object v0, p1, Lfe/c;->a:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, [B

    .line 231
    .line 232
    if-nez v0, :cond_e

    .line 233
    .line 234
    iget-object v0, p1, Lfe/c;->b:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, [B

    .line 237
    .line 238
    if-eqz v0, :cond_e

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lvd/j0;->f([B)V

    .line 241
    .line 242
    .line 243
    new-instance p1, Lfe/b;

    .line 244
    .line 245
    invoke-virtual {p0}, Lvd/j0;->d()[B

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-direct {p1, v1, p2}, Lfe/b;-><init>([B[B)V

    .line 250
    .line 251
    .line 252
    move-object p2, p1

    .line 253
    goto/16 :goto_a

    .line 254
    .line 255
    :cond_e
    if-nez p2, :cond_f

    .line 256
    .line 257
    iget-object p1, p1, Lfe/c;->b:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast p1, [B

    .line 260
    .line 261
    invoke-virtual {p0, p1}, Lvd/j0;->f([B)V

    .line 262
    .line 263
    .line 264
    iput-boolean v4, p0, Lvd/j0;->c:Z

    .line 265
    .line 266
    move-object p2, v1

    .line 267
    goto/16 :goto_a

    .line 268
    .line 269
    :cond_f
    new-instance p1, Lvd/r;

    .line 270
    .line 271
    const-string p2, "SPNEGO negotiation did not complete"

    .line 272
    .line 273
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p1

    .line 277
    :cond_10
    if-nez p2, :cond_11

    .line 278
    .line 279
    new-array p1, v0, [B

    .line 280
    .line 281
    iget-object p2, p0, Lvd/j0;->a:Lvd/i;

    .line 282
    .line 283
    invoke-virtual {p2, v0, p1}, Lvd/i;->a(I[B)[B

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    new-instance p2, Lfe/a;

    .line 288
    .line 289
    iget-object v2, p0, Lvd/j0;->d:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 290
    .line 291
    invoke-direct {p2, v2, v0, p1}, Lfe/a;-><init>([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I[B)V

    .line 292
    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_11
    array-length v0, p2

    .line 296
    invoke-virtual {v3, v0, p2}, Lvd/i;->a(I[B)[B

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    if-eqz v2, :cond_18

    .line 301
    .line 302
    check-cast p1, Lfe/b;

    .line 303
    .line 304
    iget v0, p1, Lfe/b;->d:I

    .line 305
    .line 306
    iget-boolean v2, p0, Lvd/j0;->f:Z

    .line 307
    .line 308
    if-nez v0, :cond_14

    .line 309
    .line 310
    iget-boolean v0, v3, Lvd/i;->d:Z

    .line 311
    .line 312
    if-eqz v0, :cond_14

    .line 313
    .line 314
    iget-object p1, p1, Lfe/c;->b:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast p1, [B

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Lvd/j0;->f([B)V

    .line 319
    .line 320
    .line 321
    if-eqz v2, :cond_13

    .line 322
    .line 323
    iget-boolean p1, p0, Lvd/j0;->g:Z

    .line 324
    .line 325
    if-eqz p1, :cond_12

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_12
    move-object p1, v1

    .line 329
    goto :goto_7

    .line 330
    :cond_13
    :goto_6
    invoke-virtual {p0}, Lvd/j0;->d()[B

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    :goto_7
    iput-boolean v4, p0, Lvd/j0;->c:Z

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_14
    invoke-virtual {v3}, Lvd/i;->g()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_16

    .line 342
    .line 343
    if-eqz v2, :cond_15

    .line 344
    .line 345
    iget-boolean v0, p0, Lvd/j0;->g:Z

    .line 346
    .line 347
    if-eqz v0, :cond_16

    .line 348
    .line 349
    :cond_15
    invoke-virtual {p0}, Lvd/j0;->d()[B

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    goto :goto_9

    .line 354
    :cond_16
    iget p1, p1, Lfe/b;->d:I

    .line 355
    .line 356
    const/4 v0, 0x2

    .line 357
    if-eq p1, v0, :cond_17

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_17
    new-instance p1, Lvd/r;

    .line 361
    .line 362
    const-string p2, "SPNEGO mechanism was rejected"

    .line 363
    .line 364
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw p1

    .line 368
    :cond_18
    :goto_8
    move-object p1, v1

    .line 369
    :goto_9
    new-instance v0, Lfe/b;

    .line 370
    .line 371
    invoke-direct {v0, p2, p1}, Lfe/b;-><init>([B[B)V

    .line 372
    .line 373
    .line 374
    move-object p2, v0

    .line 375
    :goto_a
    if-nez p2, :cond_19

    .line 376
    .line 377
    return-object v1

    .line 378
    :cond_19
    invoke-virtual {p2}, Lfe/c;->i()[B

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    return-object p1

    .line 383
    :cond_1a
    new-instance p1, Lvd/r;

    .line 384
    .line 385
    invoke-direct {p1, v2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw p1

    .line 389
    :catch_0
    new-instance p1, Lad/g;

    .line 390
    .line 391
    invoke-direct {p1, v2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw p1

    .line 395
    :cond_1b
    new-instance p1, Lvc/c;

    .line 396
    .line 397
    const-string p2, "Already complete"

    .line 398
    .line 399
    invoke-direct {p1, p2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    goto :goto_c

    .line 403
    :goto_b
    throw p1

    .line 404
    :goto_c
    goto :goto_b
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvd/j0;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lvd/j0;->a:Lvd/i;

    .line 6
    .line 7
    iget-boolean v0, v0, Lvd/i;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/j0;->a:Lvd/i;

    .line 2
    .line 3
    iget-object v0, v0, Lvd/i;->f:[B

    .line 4
    .line 5
    return-object v0
.end method

.method public final d()[B
    .locals 13

    .line 1
    iget-object v0, p0, Lvd/j0;->a:Lvd/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvd/i;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lvd/j0;->d:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    invoke-static {v1}, Lvd/j0;->e([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "Encrypted "

    .line 18
    .line 19
    iget-object v4, v0, Lvd/i;->n:[B

    .line 20
    .line 21
    if-eqz v4, :cond_4

    .line 22
    .line 23
    iget-object v5, v0, Lvd/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x4

    .line 30
    new-array v7, v6, [B

    .line 31
    .line 32
    int-to-long v8, v5

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static {v8, v9, v7, v5}, Lrd/a;->f(J[BI)V

    .line 35
    .line 36
    .line 37
    new-instance v10, Lde/b;

    .line 38
    .line 39
    const/4 v11, 0x1

    .line 40
    invoke-direct {v10, v4, v11}, Lde/b;-><init>([BI)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v10, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/16 v7, 0x8

    .line 54
    .line 55
    new-array v10, v7, [B

    .line 56
    .line 57
    invoke-static {v4, v5, v10, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    sget-object v11, Lvd/i;->t:Lorg/slf4j/Logger;

    .line 61
    .line 62
    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_1

    .line 67
    .line 68
    array-length v12, v4

    .line 69
    invoke-static {v4, v5, v12}, Lge/a;->m([BII)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v12, "Digest "

    .line 74
    .line 75
    invoke-virtual {v12, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v11, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v10, v5, v7}, Lge/a;->m([BII)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v12, "Truncated "

    .line 87
    .line 88
    invoke-virtual {v12, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v11, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget v4, v0, Lvd/i;->b:I

    .line 96
    .line 97
    const/high16 v12, 0x40000000    # 2.0f

    .line 98
    .line 99
    and-int/2addr v4, v12

    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    :try_start_0
    iget-object v0, v0, Lvd/i;->r:Ljavax/crypto/Cipher;

    .line 103
    .line 104
    invoke-virtual {v0, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-interface {v11}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    array-length v0, v10

    .line 115
    invoke-static {v10, v5, v0}, Lge/a;->m([BII)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v11, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lvc/c;

    .line 129
    .line 130
    const-string v2, "Failed to encrypt MIC"

    .line 131
    .line 132
    invoke-direct {v1, v2, v0}, Lvc/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :cond_2
    :goto_0
    const/16 v0, 0x10

    .line 137
    .line 138
    new-array v0, v0, [B

    .line 139
    .line 140
    const-wide/16 v3, 0x1

    .line 141
    .line 142
    invoke-static {v3, v4, v0, v5}, Lrd/a;->f(J[BI)V

    .line 143
    .line 144
    .line 145
    invoke-static {v10, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    const/16 v3, 0xc

    .line 149
    .line 150
    invoke-static {v8, v9, v0, v3}, Lrd/a;->f(J[BI)V

    .line 151
    .line 152
    .line 153
    sget-object v3, Lvd/j0;->h:Lorg/slf4j/Logger;

    .line 154
    .line 155
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v5, "Out Mech list "

    .line 164
    .line 165
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    array-length v1, v2

    .line 183
    const/4 v4, 0x0

    .line 184
    invoke-static {v2, v4, v1}, Lge/a;->m([BII)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v2, "Out Mech list encoded "

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/16 v1, 0x10

    .line 198
    .line 199
    invoke-static {v0, v4, v1}, Lge/a;->m([BII)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string v2, "Out Mech list MIC "

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-interface {v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    return-object v0

    .line 213
    :cond_4
    new-instance v0, Lvc/c;

    .line 214
    .line 215
    const-string v1, "Signing is not initialized"

    .line 216
    .line 217
    invoke-direct {v0, v1}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0
.end method

.method public final f([B)V
    .locals 8

    .line 1
    const-string v0, "In Mech list MIC "

    .line 2
    .line 3
    const-string v1, "In Mech list encoded "

    .line 4
    .line 5
    const-string v2, "In Mech list "

    .line 6
    .line 7
    iget-boolean v3, p0, Lvd/j0;->f:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v3, p0, Lvd/j0;->a:Lvd/i;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean v4, p0, Lvd/j0;->g:Z

    .line 21
    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    iget-object v4, p0, Lvd/j0;->e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    .line 26
    iget-object v5, v3, Lvd/i;->a:Lvd/j;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v5, Lvd/i;->u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance p1, Lvc/c;

    .line 41
    .line 42
    const-string v0, "SPNEGO integrity is required but not available"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_3
    :goto_0
    invoke-virtual {v3}, Lvd/i;->g()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_6

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    :try_start_0
    iget-object v4, p0, Lvd/j0;->d:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    .line 59
    invoke-static {v4}, Lvd/j0;->e([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[B

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v6, Lvd/j0;->h:Lorg/slf4j/Logger;

    .line 64
    .line 65
    invoke-interface {v6}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_5

    .line 70
    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v6, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    array-length v2, v5

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static {v5, v4, v2}, Lge/a;->m([BII)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    array-length v1, p1

    .line 104
    invoke-static {p1, v4, v1}, Lge/a;->m([BII)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception p1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    :goto_1
    invoke-virtual {v3, v5, p1}, Lvd/i;->h([B[B)V
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :goto_2
    new-instance v0, Lvc/c;

    .line 123
    .line 124
    const-string v1, "Failed to verify mechanismListMIC"

    .line 125
    .line 126
    invoke-direct {v0, v1, p1}, Lvc/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_6
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SPNEGO["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lvd/j0;->a:Lvd/i;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "]"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
