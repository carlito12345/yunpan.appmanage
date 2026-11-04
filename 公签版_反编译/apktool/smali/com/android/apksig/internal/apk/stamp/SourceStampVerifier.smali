.class Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;
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

.method private static parseStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_3

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {v3}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const v5, -0x629cfc09

    .line 28
    .line 29
    .line 30
    if-ne v4, v5, :cond_0

    .line 31
    .line 32
    invoke-static {v3, p1, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->readStampCertificateLineage([BLjava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v5, -0x1bc3a6ba

    .line 37
    .line 38
    .line 39
    if-ne v4, v5, :cond_2

    .line 40
    .line 41
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .line 57
    cmp-long v7, v3, v5

    .line 58
    .line 59
    if-lez v7, :cond_1

    .line 60
    .line 61
    iput-wide v3, p2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->timestamp:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-array v4, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v3, v4, v1

    .line 71
    .line 72
    const/16 v3, 0x26

    .line 73
    .line 74
    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-array v4, v0, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v3, v4, v1

    .line 85
    .line 86
    const/16 v3, 0x20

    .line 87
    .line 88
    invoke-virtual {p2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-array p1, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p0, p1, v1

    .line 99
    .line 100
    const/16 p0, 0x1f

    .line 101
    .line 102
    invoke-virtual {p2, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

.method private static readStampCertificateLineage([BLjava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V
    .locals 5

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage;->readSigningCertificateLineage(Ljava/nio/ByteBuffer;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v3, p2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certificateLineage:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    .line 34
    .line 35
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certificateLineage:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    new-array p0, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {p2, v0, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    const/16 p0, 0x21

    .line 66
    .line 67
    new-array p1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p2, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_1
    new-array p0, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {p2, v0, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_2
    const/16 p0, 0x23

    .line 80
    .line 81
    new-array p1, v1, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p2, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_1
    return-void
.end method

.method private static verifySourceStampCertificate(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;[BLcom/android/apksig/internal/apk/ApkSignerInfo;)Ljava/security/cert/X509Certificate;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    new-instance v3, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    .line 20
    .line 21
    invoke-direct {v3, p1, p0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p3, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string p1, "SHA-256"

    .line 30
    .line 31
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->toHex([B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->toHex([B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 p2, 0x2

    .line 57
    new-array p2, p2, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object p0, p2, v1

    .line 60
    .line 61
    aput-object p1, p2, v0

    .line 62
    .line 63
    const/16 p0, 0x1b

    .line 64
    .line 65
    invoke-virtual {p3, p0, p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_0
    return-object v3

    .line 70
    :catch_0
    move-exception p0

    .line 71
    const/16 p1, 0x12

    .line 72
    .line 73
    new-array p2, v0, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p0, p2, v1

    .line 76
    .line 77
    invoke-virtual {p3, p1, p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v2
.end method

.method private static verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    invoke-virtual {p4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    add-int/2addr v4, v2

    .line 17
    :try_start_0
    invoke-static {p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    new-array v6, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v5, v6, v3

    .line 42
    .line 43
    const/16 v5, 0x13

    .line 44
    .line 45
    invoke-virtual {p5, v5, v6}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v6, Lcom/android/apksig/internal/apk/ApkSupportedSignature;

    .line 50
    .line 51
    invoke-direct {v6, v7, v5}, Lcom/android/apksig/internal/apk/ApkSupportedSignature;-><init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-array p1, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object p0, p1, v3

    .line 65
    .line 66
    const/16 p0, 0x14

    .line 67
    .line 68
    invoke-virtual {p5, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-eqz p4, :cond_2

    .line 77
    .line 78
    const/16 p0, 0x11

    .line 79
    .line 80
    new-array p1, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {p5, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    :try_start_1
    invoke-static {v1, p1, p2, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getSignaturesToVerify(Ljava/util/List;IIZ)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p1
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/NoApkSupportedSignaturesException; {:try_start_1 .. :try_end_1} :catch_5

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/android/apksig/internal/apk/ApkSupportedSignature;

    .line 105
    .line 106
    iget-object p4, p2, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 107
    .line 108
    invoke-virtual {p4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    .line 127
    .line 128
    invoke-virtual {p3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    :try_start_2
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 137
    .line 138
    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_1
    move-exception p0

    .line 146
    goto :goto_2

    .line 147
    :catch_2
    move-exception p0

    .line 148
    goto :goto_2

    .line 149
    :catch_3
    move-exception p0

    .line 150
    goto :goto_2

    .line 151
    :catch_4
    move-exception p0

    .line 152
    goto :goto_2

    .line 153
    :cond_4
    :goto_1
    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p2, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->signature:[B

    .line 157
    .line 158
    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-nez p2, :cond_3

    .line 163
    .line 164
    new-array p0, v2, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object p4, p0, v3

    .line 167
    .line 168
    const/16 p1, 0x15

    .line 169
    .line 170
    invoke-virtual {p5, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :goto_2
    const/16 p1, 0x16

    .line 175
    .line 176
    new-array p2, v0, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object p4, p2, v3

    .line 179
    .line 180
    aput-object p0, p2, v2

    .line 181
    .line 182
    invoke-virtual {p5, p1, p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    return-void

    .line 186
    :catch_5
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result p3

    .line 200
    if-eqz p3, :cond_7

    .line 201
    .line 202
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p3

    .line 206
    check-cast p3, Lcom/android/apksig/internal/apk/ApkSupportedSignature;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 209
    .line 210
    .line 211
    move-result p4

    .line 212
    if-lez p4, :cond_6

    .line 213
    .line 214
    const-string p4, ", "

    .line 215
    .line 216
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    :cond_6
    iget-object p3, p3, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 220
    .line 221
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    new-array p2, v0, [Ljava/lang/Object;

    .line 230
    .line 231
    aput-object p1, p2, v3

    .line 232
    .line 233
    aput-object p0, p2, v2

    .line 234
    .line 235
    const/16 p0, 0x1a

    .line 236
    .line 237
    invoke-virtual {p5, p0, p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public static verifyV1SourceStamp(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSignerInfo;[B[BII)V
    .locals 6

    .line 1
    invoke-static {p0, p1, p4, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampCertificate(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;[BLcom/android/apksig/internal/apk/ApkSignerInfo;)Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    move-object v0, p3

    .line 23
    move v1, p5

    .line 24
    move v2, p6

    .line 25
    move-object v5, p2

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public static verifyV2SourceStamp(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSignerInfo;Ljava/util/Map;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/cert/CertificateFactory;",
            "Lcom/android/apksig/internal/apk/ApkSignerInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;[BII)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p4, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampCertificate(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;[BLcom/android/apksig/internal/apk/ApkSignerInfo;)Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    if-nez p4, :cond_8

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    new-instance v6, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    if-eqz p4, :cond_6

    .line 67
    .line 68
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    check-cast p4, Ljava/util/Map$Entry;

    .line 73
    .line 74
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/16 v1, 0x1f

    .line 85
    .line 86
    if-ne v0, v1, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    new-array p0, p0, [Ljava/lang/Object;

    .line 101
    .line 102
    const/16 p1, 0x11

    .line 103
    .line 104
    invoke-virtual {p2, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, [B

    .line 113
    .line 114
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    invoke-virtual {v6, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    move-object v4, p4

    .line 123
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    move v1, p5

    .line 126
    move v2, p6

    .line 127
    move-object v3, p1

    .line 128
    move-object v5, p2

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    if-nez p4, :cond_5

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    if-eqz p4, :cond_2

    .line 143
    .line 144
    :cond_5
    return-void

    .line 145
    :cond_6
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    if-eqz p3, :cond_8

    .line 150
    .line 151
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    new-array v0, p0, [B

    .line 164
    .line 165
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 169
    .line 170
    .line 171
    move v1, p5

    .line 172
    move v2, p6

    .line 173
    move-object v3, p1

    .line 174
    move-object v5, p2

    .line 175
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-nez p0, :cond_8

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-eqz p0, :cond_7

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_7
    invoke-static {p3, p1, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->parseStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    .line 192
    .line 193
    .line 194
    nop

    .line 195
    :cond_8
    :goto_2
    return-void
.end method
