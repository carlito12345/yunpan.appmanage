.class public Lcom/android/apksig/SourceStampVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/SourceStampVerifier$Result;,
        Lcom/android/apksig/SourceStampVerifier$Builder;
    }
.end annotation


# instance fields
.field private final mApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mApkFile:Ljava/io/File;

.field private final mMaxSdkVersion:I

.field private final mMinSdkVersion:I


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/SourceStampVerifier;->mApkFile:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/SourceStampVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    .line 5
    iput p3, p0, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    .line 6
    iput p4, p0, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;IILcom/android/apksig/SourceStampVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/SourceStampVerifier;-><init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;II)V

    return-void
.end method

.method private static getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;Lcom/android/apksig/SourceStampVerifier$Result;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/zip/ZipSections;",
            "Lcom/android/apksig/SourceStampVerifier$Result;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

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
    new-instance v3, Ljava/util/EnumMap;

    .line 9
    .line 10
    const-class v4, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-nez v6, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-nez v4, :cond_2

    .line 40
    .line 41
    const-string v7, "META-INF/MANIFEST.MF"

    .line 42
    .line 43
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    move-object v4, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v7, "META-INF/"

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    const-string v7, ".RSA"

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_3

    .line 66
    .line 67
    const-string v7, ".DSA"

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_3

    .line 74
    .line 75
    const-string v7, ".EC"

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    if-nez v4, :cond_5

    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    const-string v5, "Failed to read APK"

    .line 95
    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    new-array p0, v0, [Ljava/lang/Object;

    .line 99
    .line 100
    const/16 v0, 0x24

    .line 101
    .line 102
    invoke-virtual {p3, v0, p0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 121
    .line 122
    :try_start_0
    const-string v6, "X.509"

    .line 123
    .line 124
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {p2}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    invoke-static {p1, v1, v7, v8}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 137
    .line 138
    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v8}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_7

    .line 154
    .line 155
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Ljava/security/cert/Certificate;

    .line 160
    .line 161
    instance-of v8, v7, Ljava/security/cert/X509Certificate;

    .line 162
    .line 163
    if-eqz v8, :cond_8

    .line 164
    .line 165
    new-instance v6, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;

    .line 166
    .line 167
    invoke-direct {v6}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;-><init>()V

    .line 168
    .line 169
    .line 170
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 171
    .line 172
    invoke-virtual {v6, v7}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->setSigningCertificate(Ljava/security/cert/X509Certificate;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p3, v6}, Lcom/android/apksig/SourceStampVerifier$Result;->access$300(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catch_0
    move-exception p0

    .line 180
    goto :goto_2

    .line 181
    :catch_1
    move-exception p0

    .line 182
    goto :goto_3

    .line 183
    :goto_2
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    .line 184
    .line 185
    invoke-direct {p1, v5, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :goto_3
    invoke-virtual {v1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const/4 v6, 0x2

    .line 194
    new-array v6, v6, [Ljava/lang/Object;

    .line 195
    .line 196
    aput-object v1, v6, v0

    .line 197
    .line 198
    aput-object p0, v6, v2

    .line 199
    .line 200
    const/16 p0, 0x25

    .line 201
    .line 202
    invoke-virtual {p3, p0, v6}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_4
    :try_start_1
    invoke-virtual {p2}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    .line 206
    .line 207
    .line 208
    move-result-wide p2

    .line 209
    invoke-static {p1, v4, p2, p3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    sget-object p1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 214
    .line 215
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtilsLite;->computeSha256DigestBytes([B)[B

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v3, p1, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 220
    .line 221
    .line 222
    return-object v3

    .line 223
    :catch_2
    move-exception p0

    .line 224
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    .line 225
    .line 226
    invoke-direct {p1, v5, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    goto :goto_6

    .line 230
    :goto_5
    throw p1

    .line 231
    :goto_6
    goto :goto_5
.end method

.method private static parseSigner(Ljava/nio/ByteBuffer;ILjava/security/cert/CertificateFactory;Ljava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/security/cert/CertificateFactory;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    :try_start_0
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    nop

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const/16 p0, 0x8

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 p0, 0x10

    .line 60
    .line 61
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p4, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :try_start_1
    new-instance p3, Ljava/io/ByteArrayInputStream;

    .line 78
    .line 79
    invoke-direct {p3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    new-instance p3, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    .line 89
    .line 90
    invoke-direct {p3, p2, p0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, p3}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->setSigningCertificate(Ljava/security/cert/X509Certificate;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :catch_1
    nop

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    const/4 p0, 0x6

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/16 p0, 0xe

    .line 103
    .line 104
    :goto_3
    new-array p1, v1, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {p4, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    :goto_4
    invoke-virtual {p4}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-nez p0, :cond_7

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    const/4 p0, 0x7

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    const/16 p0, 0xf

    .line 121
    .line 122
    :goto_5
    new-array p1, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {p4, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    return-void
.end method

.method public static parseSigners(Ljava/nio/ByteBuffer;ILjava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;",
            "Lcom/android/apksig/SourceStampVerifier$Result;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ne p1, v2, :cond_0

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v3, 0x0

    .line 9
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/16 v2, 0xa

    .line 23
    .line 24
    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p3, v2, p0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    :try_start_1
    const-string v0, "X.509"

    .line 31
    .line 32
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    :goto_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    new-instance v2, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;

    .line 43
    .line 44
    invoke-direct {v2}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;-><init>()V

    .line 45
    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-static {p3, v2}, Lcom/android/apksig/SourceStampVerifier$Result;->access$100(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    invoke-static {p3, v2}, Lcom/android/apksig/SourceStampVerifier$Result;->access$200(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V

    .line 54
    .line 55
    .line 56
    :goto_3
    :try_start_2
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4, p1, v0, p2, v2}, Lcom/android/apksig/SourceStampVerifier;->parseSigner(Ljava/nio/ByteBuffer;ILjava/security/cert/CertificateFactory;Ljava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catch_0
    nop

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    const/4 p0, 0x3

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/16 p0, 0xb

    .line 70
    .line 71
    :goto_4
    new-array p1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v2, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    return-void

    .line 77
    :catch_1
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string p2, "Failed to obtain X.509 CertificateFactory"

    .line 81
    .line 82
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :catch_2
    if-eqz v3, :cond_6

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    const/16 v0, 0x9

    .line 90
    .line 91
    :goto_5
    new-array p0, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p3, v0, p0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 13
    new-instance v10, Lcom/android/apksig/SourceStampVerifier$Result;

    invoke-direct {v10}, Lcom/android/apksig/SourceStampVerifier$Result;-><init>()V

    const/16 v11, 0x1c

    .line 14
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtilsLite;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/zip/ZipSections;

    move-result-object v4

    .line 15
    invoke-static {v0, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;)Ljava/util/List;

    move-result-object v5

    .line 16
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 17
    const-string v13, "stamp-cert-sha256"

    invoke-virtual {v7}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    if-eqz v13, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/16 v6, 0x18

    if-nez v7, :cond_2

    const v2, 0x6dff800d

    .line 18
    :try_start_1
    invoke-static {v0, v4, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;I)Lcom/android/apksig/internal/apk/SignatureInfo;
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_4
    const/16 v6, 0x19

    .line 19
    :goto_1
    :try_start_2
    new-array v0, v9, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v10, v6, v0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    return-object v10

    .line 21
    :cond_2
    invoke-virtual {v4}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v13

    .line 22
    invoke-static {v0, v7, v13, v14}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v7

    if-eqz v2, :cond_3

    .line 23
    invoke-static {v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->toHex([B)Ljava/lang/String;

    move-result-object v13

    .line 24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 25
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v13, v0, v9

    aput-object v2, v0, v8

    const/16 v2, 0x17

    invoke-virtual {v10, v2, v0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    return-object v10

    .line 26
    :cond_3
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 27
    iget v2, v1, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    const-class v14, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-lt v2, v11, :cond_4

    const v2, -0xfac9740

    .line 28
    :try_start_3
    invoke-static {v0, v4, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;I)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v2
    :try_end_3
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_5
    nop

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 29
    :try_start_4
    new-instance v15, Ljava/util/EnumMap;

    invoke-direct {v15, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 30
    iget-object v2, v2, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    const/4 v12, 0x3

    invoke-static {v2, v12, v15, v10}, Lcom/android/apksig/SourceStampVerifier;->parseSigners(Ljava/nio/ByteBuffer;ILjava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result;)V

    .line 31
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 32
    invoke-virtual {v13, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_4
    iget v2, v1, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I

    if-lt v2, v6, :cond_6

    iget v2, v1, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    if-lt v2, v11, :cond_5

    .line 34
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2
    :try_end_4
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    if-eqz v2, :cond_6

    :cond_5
    const v2, 0x7109871a

    .line 35
    :try_start_5
    invoke-static {v0, v4, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;I)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v12
    :try_end_5
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_6
    nop

    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_6

    .line 36
    :try_start_6
    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 37
    iget-object v12, v12, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v12, v3, v2, v10}, Lcom/android/apksig/SourceStampVerifier;->parseSigners(Ljava/nio/ByteBuffer;ILjava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result;)V

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 39
    invoke-virtual {v13, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_6
    iget v2, v1, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    if-lt v2, v6, :cond_7

    .line 41
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 42
    :cond_7
    invoke-static {v5, v0, v4, v10}, Lcom/android/apksig/SourceStampVerifier;->getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;Lcom/android/apksig/SourceStampVerifier$Result;)Ljava/util/Map;

    move-result-object v2

    .line 43
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_8
    iget v6, v1, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    iget v12, v1, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v7

    move-object v5, v13

    move v7, v12

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigResult;

    move-result-object v0

    .line 46
    invoke-static {v10, v0}, Lcom/android/apksig/SourceStampVerifier$Result;->access$000(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V
    :try_end_6
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_7

    return-object v10

    :catch_7
    const/16 v0, 0x1e

    .line 47
    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v2}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    goto :goto_6

    :goto_4
    const/16 v2, 0x1d

    .line 48
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-virtual {v10, v2, v3}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    goto :goto_6

    .line 49
    :goto_5
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v9

    invoke-virtual {v10, v11, v2}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    :goto_6
    return-object v10
.end method


# virtual methods
.method public verifySourceStamp()Lcom/android/apksig/SourceStampVerifier$Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/apksig/SourceStampVerifier;->verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;

    move-result-object v0

    return-object v0
.end method

.method public verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier;->mApkFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/SourceStampVerifier;->mApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 6
    :goto_0
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/android/apksig/SourceStampVerifier;->verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 7
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 8
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "APK not provided"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9
    :goto_1
    :try_start_5
    new-instance v1, Lcom/android/apksig/SourceStampVerifier$Result;

    invoke-direct {v1}, Lcom/android/apksig/SourceStampVerifier$Result;-><init>()V

    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/16 p1, 0x1d

    invoke-virtual {v1, p1, v2}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    .line 11
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_3
    return-object v1

    :goto_2
    if-eqz v0, :cond_4

    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 12
    :catch_4
    :cond_4
    throw p1
.end method
