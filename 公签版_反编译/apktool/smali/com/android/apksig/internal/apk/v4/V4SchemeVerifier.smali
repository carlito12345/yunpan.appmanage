.class public abstract Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 4
    .line 5
    invoke-direct {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iput v3, v2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->index:I

    .line 10
    .line 11
    iget v4, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signatureAlgorithmId:I

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signature:[B

    .line 14
    .line 15
    iget-object v6, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    .line 16
    .line 17
    new-instance v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    .line 18
    .line 19
    invoke-direct {v7, v4, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    .line 32
    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-array v0, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p1, v0, v3

    .line 40
    .line 41
    invoke-virtual {v2, p0, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ljava/security/spec/AlgorithmParameterSpec;

    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaKeyAlgorithm()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    iget-object v9, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->publicKey:[B

    .line 70
    .line 71
    :try_start_0
    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    .line 76
    .line 77
    invoke-direct {v10, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 81
    .line 82
    .line 83
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 84
    :try_start_1
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4, v8}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 89
    .line 90
    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    invoke-virtual {v4, v7}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :catch_1
    move-exception p0

    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :catch_2
    move-exception p0

    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_1
    :goto_0
    invoke-virtual {v4, p1}, Ljava/security/Signature;->update([B)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/security/Signature;->verify([B)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_2

    .line 114
    .line 115
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 116
    .line 117
    new-array p1, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    aput-object v6, p1, v3

    .line 120
    .line 121
    invoke-virtual {v2, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v2

    .line 125
    :cond_2
    iget-object p1, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    .line 126
    .line 127
    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    .line 131
    .line 132
    if-nez p1, :cond_3

    .line 133
    .line 134
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 135
    .line 136
    new-array p1, v3, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {v2, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-object v2

    .line 142
    :cond_3
    :try_start_2
    new-instance p1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    .line 143
    .line 144
    iget-object v4, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    .line 145
    .line 146
    invoke-static {v4}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([B)Ljava/security/cert/X509Certificate;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v5, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    .line 151
    .line 152
    invoke-direct {p1, v4, v5}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4

    .line 153
    .line 154
    .line 155
    iget-object v4, v2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :try_start_3
    invoke-virtual {p1}, Lcom/android/apksig/internal/util/DelegatingX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    .line 165
    .line 166
    .line 167
    move-result-object p1
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    goto :goto_1

    .line 169
    :catch_3
    move-exception v4

    .line 170
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/apksig/internal/util/DelegatingX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :goto_1
    invoke-static {v9, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_4

    .line 194
    .line 195
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    .line 196
    .line 197
    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    new-array v0, v0, [Ljava/lang/Object;

    .line 206
    .line 207
    aput-object p1, v0, v3

    .line 208
    .line 209
    aput-object v4, v0, v1

    .line 210
    .line 211
    invoke-virtual {v2, p0, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return-object v2

    .line 215
    :cond_4
    new-instance p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    .line 218
    .line 219
    invoke-direct {p1, v3, p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;-><init>(I[B)V

    .line 220
    .line 221
    .line 222
    iget-object p0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 223
    .line 224
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    return-object v2

    .line 228
    :catch_4
    move-exception p0

    .line 229
    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    .line 230
    .line 231
    new-array v0, v1, [Ljava/lang/Object;

    .line 232
    .line 233
    aput-object p0, v0, v3

    .line 234
    .line 235
    invoke-virtual {v2, p1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    return-object v2

    .line 239
    :goto_2
    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    .line 240
    .line 241
    new-array v0, v0, [Ljava/lang/Object;

    .line 242
    .line 243
    aput-object v6, v0, v3

    .line 244
    .line 245
    aput-object p0, v0, v1

    .line 246
    .line 247
    invoke-virtual {v2, p1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    return-object v2

    .line 251
    :catch_5
    move-exception p0

    .line 252
    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 253
    .line 254
    new-array v0, v1, [Ljava/lang/Object;

    .line 255
    .line 256
    aput-object p0, v0, v3

    .line 257
    .line 258
    invoke-virtual {v2, p1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-object v2
.end method

.method public static verify(Lcom/android/apksig/util/DataSource;Ljava/io/File;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    new-instance v3, Ljava/io/FileInputStream;

    .line 5
    .line 6
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {v3}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readFrom(Ljava/io/InputStream;)Lcom/android/apksig/internal/apk/v4/V4Signature;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v3}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/io/InputStream;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 21
    .line 22
    const/4 v5, 0x4

    .line 23
    invoke-direct {v3, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    .line 24
    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    .line 29
    .line 30
    new-array p1, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v0, "Signature file does not contain a v4 signature."

    .line 33
    .line 34
    aput-object v0, p1, v1

    .line 35
    .line 36
    invoke-virtual {v3, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v3

    .line 40
    :cond_0
    iget v5, p1, Lcom/android/apksig/internal/apk/v4/V4Signature;->version:I

    .line 41
    .line 42
    if-eq v5, v0, :cond_1

    .line 43
    .line 44
    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERSION_NOT_CURRENT:Lcom/android/apksig/ApkVerifier$Issue;

    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v5, v0, v1

    .line 57
    .line 58
    aput-object v7, v0, v2

    .line 59
    .line 60
    invoke-virtual {v3, v6, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v4/V4Signature;->hashingInfo:[B

    .line 64
    .line 65
    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object p1, p1, Lcom/android/apksig/internal/apk/v4/V4Signature;->signingInfos:[B

    .line 70
    .line 71
    invoke-static {p1}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v5, p1, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfo:Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    .line 76
    .line 77
    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    invoke-static {v6, v7, v0, v5}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSignedData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v5, v6}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v6, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    return-object v3

    .line 101
    :cond_2
    iget-object p1, p1, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    .line 102
    .line 103
    array-length v6, p1

    .line 104
    :goto_0
    if-ge v1, v6, :cond_4

    .line 105
    .line 106
    aget-object v7, p1, v1

    .line 107
    .line 108
    iget-object v7, v7, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->signingInfo:[B

    .line 109
    .line 110
    invoke-static {v7}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    .line 115
    .line 116
    .line 117
    move-result-wide v8

    .line 118
    invoke-static {v8, v9, v0, v7}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSignedData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    iget-object v9, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 123
    .line 124
    invoke-static {v7, v8}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_3

    .line 136
    .line 137
    return-object v3

    .line 138
    :cond_3
    add-int/2addr v1, v2

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    iget-object p1, v0, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    .line 141
    .line 142
    invoke-static {p0, v5, p1, v4}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->verifyRootHashAndTree(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;[B[B)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_5

    .line 150
    .line 151
    iput-boolean v2, v3, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    .line 152
    .line 153
    :cond_5
    return-object v3

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catchall_1
    move-exception p1

    .line 160
    const-class v0, Ljava/lang/Throwable;

    .line 161
    .line 162
    :try_start_2
    const-string v3, "addSuppressed"

    .line 163
    .line 164
    new-array v4, v2, [Ljava/lang/Class;

    .line 165
    .line 166
    aput-object v0, v4, v1

    .line 167
    .line 168
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    .line 174
    aput-object p1, v2, v1

    .line 175
    .line 176
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    .line 178
    .line 179
    :catch_0
    :goto_1
    goto :goto_3

    .line 180
    :goto_2
    throw p0

    .line 181
    :goto_3
    goto :goto_2
.end method

.method private static verifyRootHashAndTree(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;[B[B)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeChunkVerityTreeAndDigest(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object v4, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->rootHash:[B

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->tree:[B

    .line 14
    .line 15
    invoke-static {p2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_ROOT_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v4, v3, v2

    .line 34
    .line 35
    aput-object p2, v3, v1

    .line 36
    .line 37
    aput-object p3, v3, v0

    .line 38
    .line 39
    invoke-virtual {p1, p0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    if-eqz p3, :cond_1

    .line 44
    .line 45
    invoke-static {p3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_TREE_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    new-array v3, v3, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v4, v3, v2

    .line 64
    .line 65
    aput-object p2, v3, v1

    .line 66
    .line 67
    aput-object p3, v3, v0

    .line 68
    .line 69
    invoke-virtual {p1, p0, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object p0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedContentDigests:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-void
.end method
