.class public abstract Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;
    }
.end annotation


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

.method private static convertToV4HashingInfo(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)Lcom/android/apksig/internal/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ")",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/16 v0, 0xc

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 29
    .line 30
    const-string v0, "Invalid hash algorithm, only SHA2-256 over 4 KB chunks supported."

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static digestAlgorithmSortingOrder(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_0
    return v1

    .line 21
    :cond_1
    return v0

    .line 22
    :cond_2
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method private static generateSignature(Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;->v4Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateSigningInfo(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;->v41Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    move-wide v5, p4

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateSigningInfo(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const p3, 0x1b93ad61

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p3, p2}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;-><init>(I[B)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    new-array p3, p3, [Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    .line 39
    .line 40
    const/4 p4, 0x0

    .line 41
    aput-object p0, p3, p4

    .line 42
    .line 43
    invoke-direct {p2, v0, p3}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;-><init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p2, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;-><init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    new-instance p0, Lcom/android/apksig/internal/apk/v4/V4Signature;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->toByteArray()[B

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const/4 p3, 0x2

    .line 63
    invoke-direct {p0, p3, p1, p2}, Lcom/android/apksig/internal/apk/v4/V4Signature;-><init>(I[B[B)V

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method private static generateSigningInfo(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v4, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, [B

    .line 43
    .line 44
    new-instance v12, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const/4 v10, -0x1

    .line 51
    const/4 v11, 0x0

    .line 52
    move-object v5, v12

    .line 53
    move-object v6, p2

    .line 54
    move-object v7, v4

    .line 55
    move-object/from16 v8, p3

    .line 56
    .line 57
    invoke-direct/range {v5 .. v11}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    .line 58
    .line 59
    .line 60
    move-object v5, p1

    .line 61
    move-wide/from16 v6, p4

    .line 62
    .line 63
    invoke-static {v6, v7, p1, v12}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSignedData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {p0, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ne v5, v2, :cond_0

    .line 76
    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/android/apksig/internal/util/Pair;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v11, v0

    .line 104
    check-cast v11, [B

    .line 105
    .line 106
    new-instance v0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    move-object v5, v0

    .line 113
    move-object v6, p2

    .line 114
    move-object v7, v4

    .line 115
    move-object/from16 v8, p3

    .line 116
    .line 117
    invoke-direct/range {v5 .. v11}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    .line 122
    .line 123
    const-string v1, "Should only be one signature generated"

    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    .line 130
    .line 131
    const-string v1, "Should only have one certificate"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_2
    new-instance v0, Ljava/security/SignatureException;

    .line 138
    .line 139
    const-string v1, "No certificates configured for signer"

    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
.end method

.method public static generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;)Lcom/android/apksig/internal/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;",
            ")",
            "Lcom/android/apksig/internal/util/Pair<",
            "Lcom/android/apksig/internal/apk/v4/V4Signature;",
            "[B>;"
        }
    .end annotation

    .line 9
    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    .line 10
    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getApkDigest(Lcom/android/apksig/util/DataSource;)[B

    move-result-object v2

    .line 11
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeChunkVerityTreeAndDigest(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;

    move-result-object p0

    .line 12
    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 13
    iget-object v1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->rootHash:[B

    .line 14
    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->tree:[B

    .line 15
    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->convertToV4HashingInfo(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    .line 16
    new-instance v3, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;

    .line 17
    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v0, v7, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;-><init>(IB[B[B)V

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v3

    move-object v3, v6

    .line 18
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateSignature(Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    invoke-static {p1, p0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 20
    :goto_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Signer failed"

    invoke-direct {p1, v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;Ljava/io/File;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/v4/V4Signature;

    invoke-virtual {v2, p1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    const-class v2, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v3, "addSuppressed"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v2, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :goto_0
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 7
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 8
    throw p0
.end method

.method private static getApkDigest(Lcom/android/apksig/util/DataSource;)[B
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getBestV3Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getBestV2Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    .line 15
    return-object p0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    new-instance v0, Ljava/io/IOException;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Failed to obtain v2/v3 digest, v3 exception: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", v2 exception: "

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :catch_2
    move-exception p0

    .line 46
    new-instance v0, Ljava/io/IOException;

    .line 47
    .line 48
    const-string v1, "Malformed APK: not a ZIP archive"

    .line 49
    .line 50
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method private static getBestV2Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    .locals 9

    .line 1
    new-instance v1, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v3, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-direct {v8, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7109871a

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {p0, p1, v0, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const v4, 0x7fffffff

    .line 32
    .line 33
    .line 34
    const v5, 0x7fffffff

    .line 35
    .line 36
    .line 37
    move-object v6, v8

    .line 38
    invoke-static/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    iget-object p0, v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-ne p0, v7, :cond_1

    .line 48
    .line 49
    iget-object p0, v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->containsErrors()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 65
    .line 66
    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->pickBestDigest(Ljava/util/List;)[B

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "Parsing failed: "

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->getErrors()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    .line 96
    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v0, "Should only have one signer, errors: "

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getErrors()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Ljava/security/SignatureException;

    .line 121
    .line 122
    const-string v0, "Failed to extract and parse v2 block"

    .line 123
    .line 124
    invoke-direct {p1, v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method private static getBestV3Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    invoke-direct {v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const v3, -0xfac9740

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p0, p1, v3, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    invoke-static {p0, v0, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    iget-object p0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-ne p0, v1, :cond_1

    .line 32
    .line 33
    iget-object p0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->containsErrors()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    iget-object p0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->pickBestDigest(Ljava/util/List;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Parsing failed: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->getErrors()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "Should only have one signer, errors: "

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getErrors()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    new-instance p1, Ljava/security/SignatureException;

    .line 113
    .line 114
    const-string v0, "Failed to extract and parse v3 block"

    .line 115
    .line 116
    invoke-direct {p1, v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public static getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "IZZ)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-static {p2, p3}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object p0
.end method

.method private static isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 6
    .line 7
    if-eq p0, v1, :cond_2

    .line 8
    .line 9
    sget-object v1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 10
    .line 11
    if-eq p0, v1, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 16
    .line 17
    if-ne p0, p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v0

    .line 21
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method private static pickBestDigest(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;)[B"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, -0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-static {v3, v4}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v3}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->digestAlgorithmSortingOrder(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ge v0, v3, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object v1, v0

    .line 58
    move v0, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-eqz v1, :cond_3

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    .line 64
    .line 65
    const-string v0, "Failed to find a supported digest in the source APK"

    .line 66
    .line 67
    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_4
    new-instance p0, Ljava/security/SignatureException;

    .line 72
    .line 73
    const-string v0, "Should have at least one digest"

    .line 74
    .line 75
    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    throw p0

    .line 80
    :goto_2
    goto :goto_1
.end method
