.class public Lorg/bouncycastle/est/HttpAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/est/ESTAuth;


# static fields
.field private static final digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private static final validParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private final nonceGenerator:Ljava/security/SecureRandom;

.field private final password:[C

.field private final realm:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "realm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "nonce"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "opaque"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "algorithm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "qop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    iput-object p4, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    iput-object p5, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 6

    .line 3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 6

    .line 4
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/est/HttpAuth;Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/HttpAuth;->doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bouncycastle/est/HttpAuth;)[C
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    return-object p0
.end method

.method private doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "WWW-Authenticate"

    .line 6
    .line 7
    const-string v0, "Digest"

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-static {v0, v5}, Lorg/bouncycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const-string v7, "\'"

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sget-object v8, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    .line 57
    .line 58
    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v3, "Unrecognised entry in WWW-Authenticate header: \'"

    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {v0, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getMethod()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    const-string v6, "realm"

    .line 93
    .line 94
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    check-cast v8, Ljava/lang/String;

    .line 99
    .line 100
    const-string v9, "nonce"

    .line 101
    .line 102
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Ljava/lang/String;

    .line 107
    .line 108
    const-string v11, "opaque"

    .line 109
    .line 110
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    check-cast v12, Ljava/lang/String;

    .line 115
    .line 116
    const-string v13, "algorithm"

    .line 117
    .line 118
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    check-cast v14, Ljava/lang/String;

    .line 123
    .line 124
    const-string v15, "qop"

    .line 125
    .line 126
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/String;

    .line 131
    .line 132
    move-object/from16 v16, v0

    .line 133
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    move-object/from16 p1, v11

    .line 140
    .line 141
    iget-object v11, v1, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    .line 142
    .line 143
    move-object/from16 v17, v12

    .line 144
    .line 145
    const/4 v12, 0x0

    .line 146
    if-eqz v11, :cond_3

    .line 147
    .line 148
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_2

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v3, "Supplied realm \'"

    .line 160
    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v1, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v3, "\' does not match server realm \'"

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const/16 v3, 0x191

    .line 185
    .line 186
    invoke-direct {v0, v2, v12, v3, v12}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :cond_3
    :goto_1
    if-nez v14, :cond_4

    .line 191
    .line 192
    const-string v14, "MD5"

    .line 193
    .line 194
    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_15

    .line 199
    .line 200
    invoke-static {v14}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    if-eqz v2, :cond_14

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    if-eqz v14, :cond_13

    .line 211
    .line 212
    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const-string v14, ","

    .line 217
    .line 218
    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const/4 v12, 0x0

    .line 223
    :goto_2
    array-length v14, v2

    .line 224
    move-object/from16 v18, v13

    .line 225
    .line 226
    const-string v13, "auth"

    .line 227
    .line 228
    move-object/from16 v19, v15

    .line 229
    .line 230
    const-string v15, "auth-int"

    .line 231
    .line 232
    if-eq v12, v14, :cond_8

    .line 233
    .line 234
    aget-object v14, v2, v12

    .line 235
    .line 236
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    if-nez v13, :cond_6

    .line 241
    .line 242
    aget-object v13, v2, v12

    .line 243
    .line 244
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    if-eqz v13, :cond_5

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_5
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    .line 252
    .line 253
    const-string v2, "QoP value unknown: \'"

    .line 254
    .line 255
    invoke-static {v2, v12, v7}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-direct {v0, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_6
    :goto_3
    aget-object v13, v2, v12

    .line 264
    .line 265
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v13

    .line 269
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    if-eqz v14, :cond_7

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_7
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 280
    .line 281
    move-object/from16 v13, v18

    .line 282
    .line 283
    move-object/from16 v15, v19

    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_8
    invoke-direct {v1, v11}, Lorg/bouncycastle/est/HttpAuth;->lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    if-eqz v2, :cond_12

    .line 291
    .line 292
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    if-eqz v7, :cond_12

    .line 297
    .line 298
    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    const/16 v14, 0xa

    .line 307
    .line 308
    invoke-direct {v1, v14}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v14

    .line 312
    move-object/from16 v20, v9

    .line 313
    .line 314
    iget-object v9, v1, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    .line 315
    .line 316
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string v9, ":"

    .line 320
    .line 321
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v12, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    move-object/from16 v21, v6

    .line 331
    .line 332
    iget-object v6, v1, Lorg/bouncycastle/est/HttpAuth;->password:[C

    .line 333
    .line 334
    invoke-direct {v1, v12, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;[C)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 338
    .line 339
    .line 340
    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    const-string v7, "-SESS"

    .line 345
    .line 346
    invoke-virtual {v11, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    if-eqz v7, :cond_9

    .line 351
    .line 352
    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 357
    .line 358
    .line 359
    move-result-object v12

    .line 360
    invoke-static {v6}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-direct {v1, v12, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-direct {v1, v12, v10}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-direct {v1, v12, v14}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 380
    .line 381
    .line 382
    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    :cond_9
    invoke-static {v6}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    move-object/from16 v22, v8

    .line 399
    .line 400
    const/4 v8, 0x0

    .line 401
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v23

    .line 405
    move-object/from16 v8, v23

    .line 406
    .line 407
    check-cast v8, Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    if-eqz v8, :cond_a

    .line 414
    .line 415
    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    move-object/from16 v23, v15

    .line 420
    .line 421
    invoke-interface {v8}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 422
    .line 423
    .line 424
    move-result-object v15

    .line 425
    invoke-virtual {v4, v15}, Lorg/bouncycastle/est/ESTRequest;->writeData(Ljava/io/OutputStream;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 429
    .line 430
    .line 431
    invoke-interface {v8}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    invoke-direct {v1, v12, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-direct {v1, v12, v3}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-direct {v1, v12, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto :goto_5

    .line 455
    :cond_a
    move-object/from16 v23, v15

    .line 456
    .line 457
    const/4 v8, 0x0

    .line 458
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v15

    .line 462
    check-cast v15, Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-eqz v8, :cond_b

    .line 469
    .line 470
    invoke-direct {v1, v12, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-direct {v1, v12, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-direct {v1, v12, v3}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    :cond_b
    :goto_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 480
    .line 481
    .line 482
    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-direct {v1, v11, v2}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    const-string v8, "missing"

    .line 499
    .line 500
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    const-string v12, "00000001"

    .line 505
    .line 506
    invoke-direct {v1, v7, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-direct {v1, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-direct {v1, v7, v10}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-direct {v1, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    if-eqz v8, :cond_c

    .line 519
    .line 520
    invoke-direct {v1, v7, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    move-object/from16 v6, v23

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_c
    invoke-direct {v1, v7, v12}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-direct {v1, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-direct {v1, v7, v14}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-direct {v1, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    const/4 v6, 0x0

    .line 539
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    check-cast v8, Ljava/lang/String;

    .line 544
    .line 545
    move-object/from16 v6, v23

    .line 546
    .line 547
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    if-eqz v8, :cond_d

    .line 552
    .line 553
    invoke-direct {v1, v7, v6}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    goto :goto_6

    .line 557
    :cond_d
    invoke-direct {v1, v7, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    :goto_6
    invoke-direct {v1, v7, v9}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-direct {v1, v7, v5}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :goto_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 567
    .line 568
    .line 569
    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    new-instance v5, Ljava/util/HashMap;

    .line 578
    .line 579
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string v7, "username"

    .line 583
    .line 584
    iget-object v8, v1, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    .line 585
    .line 586
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-object/from16 v7, v21

    .line 590
    .line 591
    move-object/from16 v8, v22

    .line 592
    .line 593
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-object/from16 v7, v20

    .line 597
    .line 598
    invoke-virtual {v5, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    const-string v7, "uri"

    .line 602
    .line 603
    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    const-string v3, "response"

    .line 607
    .line 608
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    const/4 v2, 0x0

    .line 612
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    check-cast v3, Ljava/lang/String;

    .line 617
    .line 618
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    const-string v7, "cnonce"

    .line 623
    .line 624
    const-string v8, "nc"

    .line 625
    .line 626
    if-eqz v3, :cond_f

    .line 627
    .line 628
    move-object/from16 v3, v19

    .line 629
    .line 630
    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    :goto_8
    invoke-virtual {v5, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    :cond_e
    move-object/from16 v0, v18

    .line 640
    .line 641
    goto :goto_9

    .line 642
    :cond_f
    move-object/from16 v3, v19

    .line 643
    .line 644
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    check-cast v0, Ljava/lang/String;

    .line 649
    .line 650
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-eqz v0, :cond_e

    .line 655
    .line 656
    invoke-virtual {v5, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    goto :goto_8

    .line 660
    :goto_9
    invoke-virtual {v5, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    if-eqz v17, :cond_10

    .line 664
    .line 665
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-nez v0, :cond_11

    .line 670
    .line 671
    :cond_10
    const/16 v0, 0x14

    .line 672
    .line 673
    invoke-direct {v1, v0}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    move-object/from16 v2, p1

    .line 678
    .line 679
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    :cond_11
    new-instance v0, Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 683
    .line 684
    invoke-direct {v0, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    .line 685
    .line 686
    .line 687
    const/4 v2, 0x0

    .line 688
    invoke-virtual {v0, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    const-string v2, "Authorization"

    .line 693
    .line 694
    move-object/from16 v3, v16

    .line 695
    .line 696
    invoke-static {v3, v5}, Lorg/bouncycastle/est/HttpUtil;->mergeCSL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {v4}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-interface {v2, v0}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    return-object v0

    .line 716
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 717
    .line 718
    const-string v2, "auth digest algorithm unknown: "

    .line 719
    .line 720
    invoke-static {v2, v11}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    throw v0

    .line 728
    :cond_13
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    .line 729
    .line 730
    const-string v2, "QoP value is empty."

    .line 731
    .line 732
    invoke-direct {v0, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    throw v0

    .line 736
    :cond_14
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    .line 737
    .line 738
    const-string v2, "Qop is not defined in WWW-Authenticate header."

    .line 739
    .line 740
    invoke-direct {v0, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    throw v0

    .line 744
    :cond_15
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    .line 745
    .line 746
    const-string v2, "WWW-Authenticate no algorithm defined."

    .line 747
    .line 748
    invoke-direct {v0, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    throw v0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    new-instance v2, Ljava/io/IOException;

    .line 754
    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    const-string v4, "unable to process URL in request: "

    .line 758
    .line 759
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-static {v0, v3}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    throw v2

    .line 770
    :catchall_0
    move-exception v0

    .line 771
    new-instance v4, Lorg/bouncycastle/est/ESTException;

    .line 772
    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    const-string v6, "Parsing WWW-Authentication header: "

    .line 776
    .line 777
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v6

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v5

    .line 791
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    .line 792
    .line 793
    .line 794
    move-result v6

    .line 795
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 796
    .line 797
    invoke-virtual {v2, v3}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 806
    .line 807
    .line 808
    invoke-direct {v4, v5, v0, v6, v7}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    .line 809
    .line 810
    .line 811
    goto :goto_b

    .line 812
    :goto_a
    throw v4

    .line 813
    :goto_b
    goto :goto_a
.end method

.method private getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p2

    .line 9
    new-instance v0, Ljava/io/IOException;

    .line 10
    .line 11
    const-string v1, "cannot create digest calculator for "

    .line 12
    .line 13
    const-string v2, ": "

    .line 14
    .line 15
    invoke-static {v1, p1, v2}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method private lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 1
    const-string v0, "-SESS"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1, p1}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    const-string v0, "SHA-512-256"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object p1, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 24
    .line 25
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    sget-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private makeNonce(I)Ljava/lang/String;
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private update(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private update(Ljava/io/OutputStream;[C)V
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/est/HttpAuth$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/HttpAuth$1;-><init>(Lorg/bouncycastle/est/HttpAuth;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    return-void
.end method
