.class public Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    }
.end annotation


# instance fields
.field private final mApk:Lcom/android/apksig/util/DataSource;

.field private mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

.field private final mBlockId:I

.field private final mContentDigestsToVerify:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private final mFullVerification:Z

.field private final mMaxSdkVersion:I

.field private final mMinSdkVersion:I

.field private final mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

.field private final mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

.field private final mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;


# direct methods
.method private constructor <init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            "III",
            "Lcom/android/apksig/internal/compat/OptionalIntCompat;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    .line 5
    iput-object p3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    .line 6
    iput-object p4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mContentDigestsToVerify:Ljava/util/Set;

    .line 7
    iput-object p5, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 8
    iput p6, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMinSdkVersion:I

    .line 9
    iput p7, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMaxSdkVersion:I

    .line 10
    iput p8, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    .line 11
    iput-object p9, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 12
    iput-boolean p10, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mFullVerification:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;ZLcom/android/apksig/internal/apk/v3/V3SchemeVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;-><init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;Z)V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object p1
.end method

.method private parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    new-array v6, v6, [B

    .line 17
    .line 18
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    iput-object v6, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signedData:[B

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    iput v6, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    .line 35
    .line 36
    iput v7, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->maxSdkVersion:I

    .line 37
    .line 38
    if-ltz v6, :cond_0

    .line 39
    .line 40
    if-le v6, v7, :cond_1

    .line 41
    .line 42
    :cond_0
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_INVALID_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    .line 43
    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    new-array v11, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v9, v11, v4

    .line 55
    .line 56
    aput-object v10, v11, v5

    .line 57
    .line 58
    invoke-virtual {v2, v8, v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    new-instance v10, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    const/4 v11, 0x0

    .line 75
    :goto_0
    invoke-virtual {v8}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-eqz v12, :cond_3

    .line 80
    .line 81
    add-int/2addr v11, v5

    .line 82
    :try_start_0
    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    invoke-static {v12}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    iget-object v14, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    .line 95
    .line 96
    new-instance v15, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    .line 97
    .line 98
    invoke-direct {v15, v13, v12}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-static {v13}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    if-nez v14, :cond_2

    .line 109
    .line 110
    sget-object v12, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    .line 111
    .line 112
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    new-array v14, v5, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v13, v14, v4

    .line 119
    .line 120
    invoke-virtual {v2, v12, v14}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    new-instance v13, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    .line 125
    .line 126
    invoke-direct {v13, v14, v12}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;-><init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 134
    .line 135
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    new-array v5, v5, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v3, v5, v4

    .line 142
    .line 143
    invoke-virtual {v2, v0, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    iget-object v8, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_4

    .line 154
    .line 155
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    .line 156
    .line 157
    new-array v3, v4, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-virtual {v2, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_4
    :try_start_1
    iget v8, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    .line 164
    .line 165
    iget v11, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->maxSdkVersion:I

    .line 166
    .line 167
    invoke-static {v10, v8, v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getSignaturesToVerify(Ljava/util/List;II)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v8
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException; {:try_start_1 .. :try_end_1} :catch_c

    .line 171
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-eqz v10, :cond_7

    .line 180
    .line 181
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    check-cast v10, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    .line 186
    .line 187
    iget-object v11, v10, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 188
    .line 189
    invoke-virtual {v11}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    invoke-virtual {v12}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    check-cast v12, Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v11}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    invoke-virtual {v13}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    check-cast v13, Ljava/security/spec/AlgorithmParameterSpec;

    .line 208
    .line 209
    invoke-virtual {v11}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaKeyAlgorithm()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    :try_start_2
    invoke-static {v14}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    new-instance v15, Ljava/security/spec/X509EncodedKeySpec;

    .line 218
    .line 219
    invoke-direct {v15, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 223
    .line 224
    .line 225
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 226
    :try_start_3
    invoke-static {v12}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-virtual {v12, v14}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 231
    .line 232
    .line 233
    if-eqz v13, :cond_5

    .line 234
    .line 235
    invoke-virtual {v12, v13}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :catch_1
    move-exception v0

    .line 240
    goto :goto_3

    .line 241
    :catch_2
    move-exception v0

    .line 242
    goto :goto_3

    .line 243
    :catch_3
    move-exception v0

    .line 244
    goto :goto_3

    .line 245
    :cond_5
    :goto_2
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v12, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 249
    .line 250
    .line 251
    iget-object v10, v10, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->signature:[B

    .line 252
    .line 253
    invoke-virtual {v12, v10}, Ljava/security/Signature;->verify([B)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-nez v12, :cond_6

    .line 258
    .line 259
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 260
    .line 261
    new-array v6, v5, [Ljava/lang/Object;

    .line 262
    .line 263
    aput-object v11, v6, v4

    .line 264
    .line 265
    invoke-virtual {v2, v0, v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_6
    iget-object v12, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    .line 270
    .line 271
    invoke-interface {v12, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    iget-object v10, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mContentDigestsToVerify:Ljava/util/Set;

    .line 275
    .line 276
    invoke-virtual {v11}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_1

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :goto_3
    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    .line 285
    .line 286
    new-array v3, v3, [Ljava/lang/Object;

    .line 287
    .line 288
    aput-object v11, v3, v4

    .line 289
    .line 290
    aput-object v0, v3, v5

    .line 291
    .line 292
    invoke-virtual {v2, v6, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :catch_4
    move-exception v0

    .line 297
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 298
    .line 299
    new-array v5, v5, [Ljava/lang/Object;

    .line 300
    .line 301
    aput-object v0, v5, v4

    .line 302
    .line 303
    invoke-virtual {v2, v3, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_7
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    .line 309
    .line 310
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    if-eq v11, v6, :cond_8

    .line 323
    .line 324
    sget-object v12, Lcom/android/apksig/ApkVerifier$Issue;->V3_MIN_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    .line 325
    .line 326
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    new-array v13, v3, [Ljava/lang/Object;

    .line 335
    .line 336
    aput-object v6, v13, v4

    .line 337
    .line 338
    aput-object v11, v13, v5

    .line 339
    .line 340
    invoke-virtual {v2, v12, v13}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    if-eq v6, v7, :cond_9

    .line 348
    .line 349
    sget-object v11, Lcom/android/apksig/ApkVerifier$Issue;->V3_MAX_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    .line 350
    .line 351
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    new-array v12, v3, [Ljava/lang/Object;

    .line 360
    .line 361
    aput-object v7, v12, v4

    .line 362
    .line 363
    aput-object v6, v12, v5

    .line 364
    .line 365
    invoke-virtual {v2, v11, v12}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_9
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    const/4 v0, -0x1

    .line 373
    const/4 v7, -0x1

    .line 374
    :goto_4
    invoke-virtual {v10}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-eqz v0, :cond_a

    .line 379
    .line 380
    add-int/lit8 v11, v7, 0x1

    .line 381
    .line 382
    invoke-static {v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    move-object/from16 v12, p2

    .line 387
    .line 388
    :try_start_4
    invoke-static {v0, v12}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    .line 389
    .line 390
    .line 391
    move-result-object v7
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_5

    .line 392
    new-instance v13, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    .line 393
    .line 394
    invoke-direct {v13, v7, v0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 395
    .line 396
    .line 397
    iget-object v0, v2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    .line 398
    .line 399
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move v7, v11

    .line 403
    goto :goto_4

    .line 404
    :catch_5
    move-exception v0

    .line 405
    move-object v6, v0

    .line 406
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 407
    .line 408
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    add-int/2addr v7, v3

    .line 413
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    const/4 v9, 0x3

    .line 418
    new-array v9, v9, [Ljava/lang/Object;

    .line 419
    .line 420
    aput-object v8, v9, v4

    .line 421
    .line 422
    aput-object v7, v9, v5

    .line 423
    .line 424
    aput-object v6, v9, v3

    .line 425
    .line 426
    invoke-virtual {v2, v0, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    :cond_a
    iget-object v0, v2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    .line 431
    .line 432
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_b

    .line 437
    .line 438
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

    .line 439
    .line 440
    new-array v3, v4, [Ljava/lang/Object;

    .line 441
    .line 442
    invoke-virtual {v2, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    :cond_b
    iget-object v0, v2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    .line 447
    .line 448
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    move-object v7, v0

    .line 453
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 454
    .line 455
    :try_start_5
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    .line 460
    .line 461
    .line 462
    move-result-object v0
    :try_end_5
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_6

    .line 463
    goto :goto_5

    .line 464
    :catch_6
    move-exception v0

    .line 465
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    :goto_5
    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    if-nez v7, :cond_c

    .line 489
    .line 490
    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    .line 491
    .line 492
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    new-array v3, v3, [Ljava/lang/Object;

    .line 501
    .line 502
    aput-object v0, v3, v4

    .line 503
    .line 504
    aput-object v7, v3, v5

    .line 505
    .line 506
    invoke-virtual {v2, v6, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    :cond_c
    const/4 v0, 0x0

    .line 511
    :goto_6
    invoke-virtual {v8}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 512
    .line 513
    .line 514
    move-result v7

    .line 515
    if-eqz v7, :cond_d

    .line 516
    .line 517
    add-int/2addr v0, v5

    .line 518
    :try_start_6
    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 523
    .line 524
    .line 525
    move-result v9

    .line 526
    invoke-static {v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    iget-object v10, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 531
    .line 532
    new-instance v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    .line 533
    .line 534
    invoke-direct {v11, v9, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;-><init>(I[B)V

    .line 535
    .line 536
    .line 537
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_7

    .line 538
    .line 539
    .line 540
    goto :goto_6

    .line 541
    :catch_7
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    .line 542
    .line 543
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    new-array v5, v5, [Ljava/lang/Object;

    .line 548
    .line 549
    aput-object v0, v5, v4

    .line 550
    .line 551
    invoke-virtual {v2, v3, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    return-void

    .line 555
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 556
    .line 557
    iget-object v7, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    .line 558
    .line 559
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 560
    .line 561
    .line 562
    move-result v7

    .line 563
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .line 565
    .line 566
    iget-object v7, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    .line 567
    .line 568
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    if-eqz v8, :cond_e

    .line 577
    .line 578
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    check-cast v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    .line 583
    .line 584
    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->getAlgorithmId()I

    .line 585
    .line 586
    .line 587
    move-result v8

    .line 588
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    goto :goto_7

    .line 596
    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    .line 597
    .line 598
    iget-object v8, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 599
    .line 600
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 601
    .line 602
    .line 603
    move-result v8

    .line 604
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 605
    .line 606
    .line 607
    iget-object v8, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 608
    .line 609
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 610
    .line 611
    .line 612
    move-result-object v8

    .line 613
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 614
    .line 615
    .line 616
    move-result v9

    .line 617
    if-eqz v9, :cond_f

    .line 618
    .line 619
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v9

    .line 623
    check-cast v9, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    .line 624
    .line 625
    invoke-virtual {v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    .line 626
    .line 627
    .line 628
    move-result v9

    .line 629
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 630
    .line 631
    .line 632
    move-result-object v9

    .line 633
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    goto :goto_8

    .line 637
    :cond_f
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v8

    .line 641
    if-nez v8, :cond_10

    .line 642
    .line 643
    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

    .line 644
    .line 645
    new-array v3, v3, [Ljava/lang/Object;

    .line 646
    .line 647
    aput-object v0, v3, v4

    .line 648
    .line 649
    aput-object v7, v3, v5

    .line 650
    .line 651
    invoke-virtual {v2, v6, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    return-void

    .line 655
    :cond_10
    const/4 v0, 0x0

    .line 656
    const/4 v7, 0x0

    .line 657
    :cond_11
    :goto_9
    invoke-virtual {v6}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 658
    .line 659
    .line 660
    move-result v8

    .line 661
    if-eqz v8, :cond_17

    .line 662
    .line 663
    add-int/2addr v0, v5

    .line 664
    :try_start_7
    invoke-static {v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 665
    .line 666
    .line 667
    move-result-object v8

    .line 668
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 669
    .line 670
    .line 671
    move-result v9

    .line 672
    invoke-static {v8}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    .line 673
    .line 674
    .line 675
    move-result-object v8

    .line 676
    iget-object v10, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->additionalAttributes:Ljava/util/List;

    .line 677
    .line 678
    new-instance v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;

    .line 679
    .line 680
    invoke-direct {v11, v9, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;-><init>(I[B)V

    .line 681
    .line 682
    .line 683
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_7} :catch_b

    .line 684
    .line 685
    .line 686
    const v10, 0x3ba06f8c

    .line 687
    .line 688
    .line 689
    if-ne v9, v10, :cond_12

    .line 690
    .line 691
    :try_start_8
    invoke-static {v8}, Lcom/android/apksig/SigningCertificateLineage;->readFromV3AttributeValue([B)Lcom/android/apksig/SigningCertificateLineage;

    .line 692
    .line 693
    .line 694
    move-result-object v8

    .line 695
    iput-object v8, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 696
    .line 697
    iget-object v9, v2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    .line 698
    .line 699
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 704
    .line 705
    invoke-virtual {v8, v9}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    .line 706
    .line 707
    .line 708
    move-result-object v8

    .line 709
    iget-object v9, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 710
    .line 711
    invoke-virtual {v9}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    .line 712
    .line 713
    .line 714
    move-result v9

    .line 715
    invoke-virtual {v8}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    .line 716
    .line 717
    .line 718
    move-result v8

    .line 719
    if-eq v9, v8, :cond_11

    .line 720
    .line 721
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_CERT_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    .line 722
    .line 723
    new-array v9, v4, [Ljava/lang/Object;

    .line 724
    .line 725
    invoke-virtual {v2, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 726
    .line 727
    .line 728
    goto :goto_9

    .line 729
    :catch_8
    :try_start_9
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_LINEAGE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 730
    .line 731
    new-array v9, v4, [Ljava/lang/Object;

    .line 732
    .line 733
    invoke-virtual {v2, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    goto :goto_9

    .line 737
    :catch_9
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_CERT_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    .line 738
    .line 739
    new-array v9, v4, [Ljava/lang/Object;

    .line 740
    .line 741
    invoke-virtual {v2, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    goto :goto_9

    .line 745
    :catch_a
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 746
    .line 747
    new-array v9, v4, [Ljava/lang/Object;

    .line 748
    .line 749
    invoke-virtual {v2, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 750
    .line 751
    .line 752
    goto :goto_9

    .line 753
    :cond_12
    const v10, 0x559f8b02

    .line 754
    .line 755
    .line 756
    if-ne v9, v10, :cond_15

    .line 757
    .line 758
    iget v7, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMaxSdkVersion:I

    .line 759
    .line 760
    const/16 v9, 0x21

    .line 761
    .line 762
    if-lt v7, v9, :cond_14

    .line 763
    .line 764
    iget-boolean v7, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mFullVerification:Z

    .line 765
    .line 766
    if-eqz v7, :cond_14

    .line 767
    .line 768
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 769
    .line 770
    .line 771
    move-result-object v7

    .line 772
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 773
    .line 774
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 775
    .line 776
    .line 777
    move-result-object v7

    .line 778
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    .line 779
    .line 780
    .line 781
    move-result v7

    .line 782
    iget-object v8, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 783
    .line 784
    invoke-virtual {v8}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent()Z

    .line 785
    .line 786
    .line 787
    move-result v8

    .line 788
    if-eqz v8, :cond_13

    .line 789
    .line 790
    iget-object v8, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 791
    .line 792
    invoke-virtual {v8}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->getAsInt()I

    .line 793
    .line 794
    .line 795
    move-result v8

    .line 796
    if-eq v7, v8, :cond_14

    .line 797
    .line 798
    sget-object v9, Lcom/android/apksig/ApkVerifier$Issue;->V31_ROTATION_MIN_SDK_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    .line 799
    .line 800
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 805
    .line 806
    .line 807
    move-result-object v8

    .line 808
    new-array v10, v3, [Ljava/lang/Object;

    .line 809
    .line 810
    aput-object v7, v10, v4

    .line 811
    .line 812
    aput-object v8, v10, v5

    .line 813
    .line 814
    invoke-virtual {v2, v9, v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    goto :goto_a

    .line 818
    :cond_13
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V31_BLOCK_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    .line 819
    .line 820
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    new-array v9, v5, [Ljava/lang/Object;

    .line 825
    .line 826
    aput-object v7, v9, v4

    .line 827
    .line 828
    invoke-virtual {v2, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 829
    .line 830
    .line 831
    :cond_14
    :goto_a
    const/4 v7, 0x1

    .line 832
    goto/16 :goto_9

    .line 833
    .line 834
    :cond_15
    const v8, -0x3d594c46

    .line 835
    .line 836
    .line 837
    if-ne v9, v8, :cond_16

    .line 838
    .line 839
    iget v8, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    .line 840
    .line 841
    const v9, 0x1b93ad61

    .line 842
    .line 843
    .line 844
    if-eq v8, v9, :cond_11

    .line 845
    .line 846
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V31_ROTATION_TARGETS_DEV_RELEASE_ATTR_ON_V3_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    .line 847
    .line 848
    new-array v9, v4, [Ljava/lang/Object;

    .line 849
    .line 850
    invoke-virtual {v2, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_9

    .line 854
    .line 855
    :cond_16
    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 856
    .line 857
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 858
    .line 859
    .line 860
    move-result-object v9

    .line 861
    new-array v10, v5, [Ljava/lang/Object;

    .line 862
    .line 863
    aput-object v9, v10, v4

    .line 864
    .line 865
    invoke-virtual {v2, v8, v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_9} :catch_b

    .line 866
    .line 867
    .line 868
    goto/16 :goto_9

    .line 869
    .line 870
    :catch_b
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 871
    .line 872
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    new-array v5, v5, [Ljava/lang/Object;

    .line 877
    .line 878
    aput-object v0, v5, v4

    .line 879
    .line 880
    invoke-virtual {v2, v3, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    :cond_17
    iget-boolean v0, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mFullVerification:Z

    .line 885
    .line 886
    if-eqz v0, :cond_18

    .line 887
    .line 888
    iget-object v0, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 889
    .line 890
    invoke-virtual {v0}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent()Z

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    if-eqz v0, :cond_18

    .line 895
    .line 896
    if-nez v7, :cond_18

    .line 897
    .line 898
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V31_ROTATION_MIN_SDK_ATTR_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    .line 899
    .line 900
    iget-object v3, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 901
    .line 902
    invoke-virtual {v3}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->getAsInt()I

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object v3

    .line 910
    new-array v5, v5, [Ljava/lang/Object;

    .line 911
    .line 912
    aput-object v3, v5, v4

    .line 913
    .line 914
    invoke-virtual {v2, v0, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    :cond_18
    return-void

    .line 918
    :catch_c
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    .line 919
    .line 920
    new-array v3, v4, [Ljava/lang/Object;

    .line 921
    .line 922
    invoke-virtual {v2, v0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 923
    .line 924
    .line 925
    return-void
.end method

.method public static parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setContentDigestsToVerify(Ljava/util/Set;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setFullVerification(Z)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An exception was encountered when attempting to parse the signers from the provided APK Signature Scheme v3 block"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    const p1, -0xfac9740

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parseSigners()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 6

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    iget v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 10
    invoke-static {v1, v2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 16
    :cond_1
    :try_start_1
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 18
    new-instance v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    .line 19
    iput v3, v5, Lcom/android/apksig/internal/apk/ApkSignerInfo;->index:I

    .line 20
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iget-object v3, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :try_start_2
    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 22
    invoke-direct {p0, v3, v2, v5}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;)V
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v4

    goto :goto_0

    .line 23
    :catch_0
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    :catch_1
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :catch_2
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0
.end method

.method public verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    if-eqz v3, :cond_b

    .line 7
    iget v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 8
    invoke-static {v2, v3, v4, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v2

    .line 9
    iget-object v3, v2, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    .line 10
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    const-wide/16 v4, 0x0

    iget-wide v6, v2, Lcom/android/apksig/internal/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v9

    .line 11
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    iget-wide v4, v2, Lcom/android/apksig/internal/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v6, v2, Lcom/android/apksig/internal/apk/SignatureInfo;->eocdOffset:J

    sub-long/2addr v6, v4

    .line 12
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v10

    .line 13
    iget-object v11, v2, Lcom/android/apksig/internal/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 15
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 17
    :cond_0
    iget-object v8, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    iget-object v12, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mContentDigestsToVerify:Ljava/util/Set;

    iget-object v13, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-static/range {v8 .. v13}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->verifyIntegrity(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 18
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 19
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iget-object v3, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 20
    iget v5, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iget-object v4, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 23
    iget v8, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    .line 24
    iget v9, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->maxSdkVersion:I

    if-nez v4, :cond_2

    move v4, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v5, 0x1

    if-eq v8, v10, :cond_3

    .line 25
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_3

    .line 26
    :cond_3
    :goto_2
    iget-object v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v5, :cond_5

    .line 27
    invoke-virtual {v5}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v5

    if-ge v5, v6, :cond_4

    .line 28
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_LINEAGES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    move v5, v9

    goto :goto_3

    .line 29
    :cond_4
    iget-object v6, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v5

    :cond_5
    move v5, v9

    goto :goto_1

    .line 30
    :cond_6
    :goto_3
    iget v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMinSdkVersion:I

    if-gt v4, v2, :cond_8

    .line 31
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {v2}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {v2}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->getAsInt()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMaxSdkVersion:I

    :goto_4
    if-ge v5, v2, :cond_9

    .line 33
    :cond_8
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V3_MISSING_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v0

    aput-object v5, v7, v1

    invoke-virtual {v2, v6, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 34
    :cond_9
    :try_start_0
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 35
    invoke-static {v3}, Lcom/android/apksig/SigningCertificateLineage;->consolidateLineages(Ljava/util/List;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v3

    iput-object v3, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 36
    :catch_0
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_LINEAGES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 37
    :goto_5
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v0

    if-nez v0, :cond_a

    .line 38
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iput-boolean v1, v0, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 40
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A non-null apk and zip sections must be specified to verify an APK\'s v3 signatures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
