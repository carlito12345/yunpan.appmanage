.class public Lcom/android/apksig/ApkVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkVerifier$Result;,
        Lcom/android/apksig/ApkVerifier$Issue;,
        Lcom/android/apksig/ApkVerifier$ByteArray;,
        Lcom/android/apksig/ApkVerifier$ApkVerificationIssueAdapter;,
        Lcom/android/apksig/ApkVerifier$Builder;,
        Lcom/android/apksig/ApkVerifier$IssueWithParams;
    }
.end annotation


# static fields
.field private static final SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mApkFile:Ljava/io/File;

.field private final mMaxSdkVersion:I

.field private final mMinSdkVersion:Ljava/lang/Integer;

.field private final mV4SignatureFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/apksig/ApkVerifier;->loadSupportedApkSigSchemeNames()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    .line 5
    iput-object p3, p0, Lcom/android/apksig/ApkVerifier;->mV4SignatureFile:Ljava/io/File;

    .line 6
    iput-object p4, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    .line 7
    iput p5, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;ILcom/android/apksig/ApkVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/apksig/ApkVerifier;-><init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;I)V

    return-void
.end method

.method private static checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lcom/android/apksig/ApkVerifier$Result;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    .line 29
    .line 30
    new-array p1, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p2, p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 39
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string p2, "Failed to encode APK signer cert"

    .line 42
    .line 43
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method private static checkV4Signer(Ljava/util/List;Ljava/util/List;[BLcom/android/apksig/ApkVerifier$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B",
            "Lcom/android/apksig/ApkVerifier$Result;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    .line 10
    .line 11
    new-array v1, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p3, v0, v1}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$800(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0, p3}, Lcom/android/apksig/ApkVerifier;->checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/android/apksig/ApkVerifier;->pickBestDigestForV4(Ljava/util/List;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    .line 50
    .line 51
    new-array p1, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p3, p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method private static collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method private static varargs createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/apksig/ApkVerifier$Result;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/apksig/ApkVerifier$Result;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/android/apksig/ApkVerifier;->mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    invoke-interface {p0, v3, v4, v1, v2}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Lcom/android/apksig/ApkSigner;->getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    .line 22
    .line 23
    const-string v0, "Failed to read AndroidManifest.xml"

    .line 24
    .line 25
    invoke-direct {p1, v0, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method private static getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "META-INF/MANIFEST.MF"

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    if-nez v1, :cond_2

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-static {p1, v1, v2, v3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object p1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->computeSha256DigestBytes([B)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p1, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    .line 61
    .line 62
    const-string p2, "Failed to read APK"

    .line 63
    .line 64
    invoke-direct {p1, p2, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    throw p1

    .line 69
    :goto_2
    goto :goto_1
.end method

.method private getApkContentDigests(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;>;II)",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;"
        }
    .end annotation

    .line 1
    move/from16 v0, p6

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eq v0, v3, :cond_0

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 12
    .line 13
    invoke-direct {v11, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    .line 14
    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    const v2, -0xfac9740

    .line 19
    .line 20
    .line 21
    :goto_0
    move-object v4, p1

    .line 22
    move-object v5, p2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const v2, 0x7109871a

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    :try_start_0
    invoke-static {p1, p2, v2, v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v7, p3

    .line 37
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v5, Ljava/util/HashSet;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 44
    .line 45
    .line 46
    if-ne v0, v3, :cond_2

    .line 47
    .line 48
    iget-object v4, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    move-object v2, p0

    .line 51
    iget v9, v2, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    .line 52
    .line 53
    move-object/from16 v6, p4

    .line 54
    .line 55
    move-object v7, p3

    .line 56
    move/from16 v8, p7

    .line 57
    .line 58
    move-object v10, v11

    .line 59
    invoke-static/range {v4 .. v10}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object v2, p0

    .line 64
    iget-object v1, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    invoke-static {v1, v5, v11}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 67
    .line 68
    .line 69
    :goto_2
    new-instance v1, Ljava/util/EnumMap;

    .line 70
    .line 71
    const-class v3, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 72
    .line 73
    invoke-direct {v1, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-static {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-nez v6, :cond_4

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v1, v6, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object/from16 v3, p5

    .line 140
    .line 141
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    return-object v11

    .line 145
    :catch_0
    move-object v2, p0

    .line 146
    return-object v1
.end method

.method private static getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/apksig/ApkVerifier;->collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method private static getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .locals 1

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getSupportedSchemeNames(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x18

    .line 9
    .line 10
    if-lt p0, v0, :cond_1

    .line 11
    .line 12
    new-instance p0, Ljava/util/HashMap;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    return-object p0
.end method

.method private static loadSupportedApkSigSchemeNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "APK Signature Scheme v2"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "APK Signature Scheme v3"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private static mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$1202(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;)Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method private static pickBestDigestForV4(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/android/apksig/ApkVerifier;->collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->pickBestDigestForV4(Ljava/util/Map;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private verify(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v9, 0x2

    .line 10
    iget v12, v1, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    .line 11
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v13
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_c

    .line 12
    invoke-direct {v1, v0, v13}, Lcom/android/apksig/ApkVerifier;->verifyAndGetMinSdkVersion(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)I

    move-result v14

    .line 13
    new-instance v15, Lcom/android/apksig/ApkVerifier$Result;

    invoke-direct {v15}, Lcom/android/apksig/ApkVerifier$Result;-><init>()V

    .line 14
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v12}, Lcom/android/apksig/ApkVerifier;->getSupportedSchemeNames(I)Ljava/util/Map;

    move-result-object v16

    .line 16
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(I)V

    const/4 v6, 0x3

    const/16 v5, 0x18

    if-lt v12, v5, :cond_c

    .line 17
    sget-object v2, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    const/16 v3, 0x1f

    const/16 v4, 0x21

    if-lt v12, v4, :cond_3

    .line 18
    :try_start_1
    new-instance v11, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    .line 19
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v11, v0, v13, v9, v12}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V

    .line 20
    invoke-virtual {v11, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v9

    const v11, 0x1b93ad61

    .line 21
    invoke-virtual {v9, v11}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v9

    .line 22
    invoke-virtual {v9}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object v9

    .line 23
    invoke-virtual {v9}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v9

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v11, v9, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    const v11, 0x7fffffff

    .line 26
    :goto_0
    :try_start_2
    iget-object v5, v9, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 27
    iget v10, v10, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    if-le v11, v10, :cond_1

    move v11, v10

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    .line 28
    :cond_2
    invoke-static {v15, v9}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 30
    invoke-static {v9}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;

    move-result-object v9

    .line 31
    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    nop

    const/4 v11, 0x0

    .line 32
    :goto_2
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v15

    :cond_3
    const/4 v11, 0x0

    :cond_4
    const/16 v5, 0x1c

    if-lt v14, v4, :cond_5

    .line 33
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 34
    :cond_5
    :try_start_3
    new-instance v4, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    .line 35
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v4, v0, v13, v9, v12}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V

    .line 36
    invoke-virtual {v4, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v4

    const v9, -0xfac9740

    .line 37
    invoke-virtual {v4, v9}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v4

    if-lez v11, :cond_6

    .line 38
    invoke-virtual {v4, v11}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRotationMinSdkVersion(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    goto :goto_3

    :catch_2
    nop

    goto :goto_4

    .line 39
    :cond_6
    :goto_3
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v4

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v15, v4}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 43
    invoke-static {v4}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;

    move-result-object v4

    .line 44
    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 45
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 46
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 47
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V31_BLOCK_FOUND_WITHOUT_V3_BLOCK:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x0

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v15, v3, v9}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 48
    :cond_7
    :goto_5
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v15

    :cond_8
    if-lt v14, v5, :cond_9

    .line 49
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/16 v5, 0x18

    goto :goto_6

    :cond_a
    move-object v11, v7

    move-object v9, v8

    const/16 v10, 0x18

    goto :goto_9

    .line 50
    :goto_6
    :try_start_4
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v9
    :try_end_4
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v3, p1

    move-object v4, v13

    const/16 v10, 0x18

    move-object/from16 v5, v16

    const/4 v11, 0x3

    move-object v6, v7

    move-object v11, v7

    move v7, v9

    move-object v9, v8

    move v8, v12

    .line 51
    :try_start_5
    invoke-static/range {v2 .. v8}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v2

    const/4 v3, 0x2

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v15, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 55
    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;

    move-result-object v2

    .line 56
    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    :goto_7
    nop

    goto :goto_8

    :catch_4
    move-object v11, v7

    move-object v9, v8

    const/16 v10, 0x18

    goto :goto_7

    .line 57
    :goto_8
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v15

    .line 58
    :cond_b
    :goto_9
    iget-object v2, v1, Lcom/android/apksig/ApkVerifier;->mV4SignatureFile:Ljava/io/File;

    if-eqz v2, :cond_d

    .line 59
    invoke-static {v0, v2}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->verify(Lcom/android/apksig/util/DataSource;Ljava/io/File;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v2

    const/4 v3, 0x4

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 61
    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v15, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 63
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v15

    :cond_c
    move-object v11, v7

    move-object v9, v8

    const/16 v10, 0x18

    :cond_d
    const/16 v2, 0x1a

    const/4 v8, 0x0

    if-lt v12, v2, :cond_f

    .line 64
    invoke-static {v0, v13}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/apksig/apk/ApkUtils;->getTargetSandboxVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_e

    .line 66
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 67
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->NO_SIG_FOR_TARGET_SANDBOX_VERSION:Lcom/android/apksig/ApkVerifier$Issue;

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    .line 69
    invoke-virtual {v15, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v17, v2

    goto :goto_a

    :cond_f
    move-object/from16 v17, v8

    .line 70
    :goto_a
    invoke-static {v0, v13}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v7

    if-lt v14, v10, :cond_11

    .line 71
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_b

    :cond_10
    move-object v10, v7

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v4, v16

    move-object v5, v11

    move v6, v14

    move-object v10, v7

    move v7, v12

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;

    move-result-object v2

    .line 73
    invoke-static {v15, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$100(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    const/4 v2, 0x1

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 75
    invoke-static {v10, v0, v13}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/Map;

    move-result-object v2

    .line 76
    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_c
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v15

    .line 78
    :cond_12
    :try_start_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 79
    const-string v4, "stamp-cert-sha256"

    .line 80
    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_e

    :cond_14
    move-object v3, v8

    :goto_d
    if-eqz v3, :cond_15

    .line 82
    invoke-virtual {v13}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    .line 83
    invoke-static {v0, v3, v4, v5}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v4

    const/16 v2, 0x1e

    .line 84
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v5, v9

    move v7, v12

    .line 85
    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigResult;

    move-result-object v2

    .line 86
    invoke-static {v15, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$200(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V
    :try_end_6
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_f

    .line 87
    :goto_e
    new-instance v2, Lcom/android/apksig/apk/ApkFormatException;

    const-string v3, "Failed to read APK"

    invoke-direct {v2, v3, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 88
    :catch_6
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 89
    :cond_15
    :goto_f
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v15

    .line 90
    :cond_16
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 98
    :try_start_7
    new-instance v9, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v7}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/android/apksig/ApkVerifier$ByteArray;-><init>([BLcom/android/apksig/ApkVerifier$1;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    .line 99
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to encode JAR signer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v7}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " certs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :cond_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 102
    :try_start_8
    new-instance v9, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v7}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/android/apksig/ApkVerifier$ByteArray;-><init>([BLcom/android/apksig/ApkVerifier$1;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to encode APK Signature Scheme v2 signer (index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") certs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_18
    const/4 v6, 0x0

    .line 105
    :goto_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a

    .line 106
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/ApkVerifier$ByteArray;

    .line 107
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 108
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 109
    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v8}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$400(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_19
    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_12

    :cond_1a
    :goto_13
    const/4 v2, 0x0

    .line 110
    :goto_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1c

    .line 111
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/ApkVerifier$ByteArray;

    .line 112
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 113
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 114
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$500(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_1b
    const/4 v6, 0x1

    add-int/2addr v2, v6

    goto :goto_14

    .line 115
    :cond_1c
    :goto_15
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 116
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_17

    :cond_1d
    :goto_16
    const/4 v3, 0x0

    goto/16 :goto_1a

    .line 117
    :cond_1e
    :goto_17
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getSigningCertificateLineage()Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    .line 118
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 119
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1f

    .line 121
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v15, v4, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_18

    :cond_1f
    const/4 v5, 0x0

    .line 122
    :goto_18
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-static {v3}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$600(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    goto :goto_19

    :cond_20
    const/4 v5, 0x0

    .line 123
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v3

    .line 124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_21

    .line 125
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v15, v4, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 126
    :cond_21
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-static {v3}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$700(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    :goto_19
    if-nez v2, :cond_23

    .line 127
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_22

    .line 129
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v15, v4, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 130
    :cond_22
    :try_start_9
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 131
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$800(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 132
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 133
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v15, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_16

    :catch_9
    move-exception v0

    .line 134
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to encode APK Signature Scheme v3 signer cert"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 135
    :cond_23
    :try_start_a
    invoke-virtual {v2, v3}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    .line 137
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_16

    .line 138
    :catch_a
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 139
    :goto_1a
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV4Scheme()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 140
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV4SchemeSigners()Ljava/util/List;

    move-result-object v2

    .line 141
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-virtual {v4}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object v4

    .line 142
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_24

    .line 143
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 144
    :cond_24
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v3

    .line 145
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 146
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x2

    goto :goto_1b

    :cond_25
    const/4 v4, 0x1

    .line 147
    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v4, :cond_26

    .line 148
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v15, v4, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_26
    const/4 v5, 0x0

    .line 149
    :goto_1c
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v6}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v3, v15}, Lcom/android/apksig/ApkVerifier;->checkV4Signer(Ljava/util/List;Ljava/util/List;[BLcom/android/apksig/ApkVerifier$Result;)V

    .line 150
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 151
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV31SchemeSigners()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2, v3, v15}, Lcom/android/apksig/ApkVerifier;->checkV4Signer(Ljava/util/List;Ljava/util/List;[BLcom/android/apksig/ApkVerifier$Result;)V

    goto :goto_1e

    :cond_27
    const/4 v5, 0x1

    goto :goto_1e

    :cond_28
    const/4 v5, 0x1

    .line 152
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 153
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v5, :cond_29

    .line 154
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v15, v4, v7}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_29
    const/4 v6, 0x0

    .line 155
    :goto_1d
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v4

    .line 156
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v5, :cond_2a

    .line 157
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v15, v5, v7}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 158
    :cond_2a
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-static {v5}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$700(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v5, v15}, Lcom/android/apksig/ApkVerifier;->checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V

    .line 159
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->pickBestDigestForV4(Ljava/util/List;)[B

    move-result-object v2

    .line 161
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 162
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v15, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1e

    .line 163
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "V4 signature must be also verified with V2/V3"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_1e
    if-nez v17, :cond_2d

    .line 164
    :try_start_b
    invoke-static {v0, v13}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v17
    :try_end_b
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_1f

    :catch_b
    nop

    :cond_2d
    :goto_1f
    if-eqz v17, :cond_31

    .line 165
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/android/apksig/apk/ApkUtils;->getTargetSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 167
    invoke-static {v0}, Lcom/android/apksig/ApkVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_31

    if-lt v12, v0, :cond_31

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2f

    goto :goto_20

    .line 168
    :cond_2e
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_20

    .line 169
    :cond_2f
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_20

    .line 170
    :cond_30
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->MIN_SIG_SCHEME_FOR_TARGET_SDK_NOT_MET:Lcom/android/apksig/ApkVerifier$Issue;

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    .line 173
    invoke-virtual {v15, v3, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 174
    :cond_31
    :goto_20
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_32

    return-object v15

    .line 175
    :cond_32
    invoke-static {v15}, Lcom/android/apksig/ApkVerifier$Result;->access$1000(Lcom/android/apksig/ApkVerifier$Result;)V

    .line 176
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 177
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV31SchemeSigners()Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_23

    :cond_33
    const/4 v3, 0x1

    .line 179
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 180
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_23

    .line 182
    :cond_34
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 183
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 184
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_21

    .line 185
    :cond_35
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 186
    invoke-virtual {v15}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 187
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_22

    :cond_36
    :goto_23
    return-object v15

    .line 188
    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "APK verified, but has not verified using any of v1, v2 or v3 schemes"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 189
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v3, "Malformed APK: not a ZIP archive"

    invoke-direct {v0, v3, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :goto_24
    throw v0

    :goto_25
    goto :goto_24
.end method

.method private verifyAndGetMinSdkVersion(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    const-string v2, ") > maxSdkVersion ("

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ltz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget p2, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    .line 24
    .line 25
    if-gt p1, p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "minSdkVersion ("

    .line 33
    .line 34
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    .line 46
    .line 47
    invoke-static {p2, v0, v1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "minSdkVersion must not be negative: "

    .line 67
    .line 68
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_3
    invoke-static {p1, p2}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget p2, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    .line 97
    .line 98
    if-gt p1, p2, :cond_4

    .line 99
    .line 100
    return p1

    .line 101
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string v0, "minSdkVersion from APK ("

    .line 104
    .line 105
    invoke-static {v0, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget v0, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    .line 110
    .line 111
    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p2
.end method

.method private verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 12
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v12

    .line 13
    invoke-direct {v9, v0, v12}, Lcom/android/apksig/ApkVerifier;->verifyAndGetMinSdkVersion(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)I

    move-result v13

    .line 14
    invoke-static {v0, v12}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v14

    .line 15
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 16
    const-string v5, "stamp-cert-sha256"

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v5, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 17
    :try_start_1
    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-direct {v1, v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v2, 0x6dff800d

    .line 18
    invoke-static {v0, v12, v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 19
    :try_start_2
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_NOT_VERIFIED:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIGNATURE_BLOCK_WITHOUT_CERT_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 20
    :catch_4
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_MISSING:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_CERT_DIGEST_AND_SIG_BLOCK_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    invoke-virtual {v12}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v5

    .line 22
    invoke-static {v0, v4, v5, v6}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v15

    if-eqz v1, :cond_3

    .line 23
    invoke-static {v15}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 25
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->CERT_DIGEST_MISMATCH:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_EXPECTED_DIGEST_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v11

    aput-object v1, v2, v10

    invoke-static {v0, v4, v2}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 26
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 27
    iget v1, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    invoke-static {v1}, Lcom/android/apksig/ApkVerifier;->getSupportedSchemeNames(I)Ljava/util/Map;

    move-result-object v16

    .line 28
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 29
    new-instance v6, Lcom/android/apksig/ApkVerifier$Result;

    invoke-direct {v6}, Lcom/android/apksig/ApkVerifier$Result;-><init>()V

    .line 30
    iget v1, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_4

    .line 31
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v7

    const/16 v11, 0x1c

    move-object/from16 v5, v16

    move-object v10, v6

    move-object v6, v8

    move-object/from16 v19, v7

    move/from16 v7, v18

    move-object/from16 p2, v8

    move/from16 v8, v17

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/android/apksig/ApkVerifier;->getApkContentDigests(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 33
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    invoke-static {v10, v1}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 35
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    invoke-static {v0, v10}, Lcom/android/apksig/ApkVerifier;->mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v10, v6

    move-object/from16 v19, v7

    move-object/from16 p2, v8

    const/16 v11, 0x1c

    .line 36
    :cond_5
    iget v1, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    const/16 v8, 0x18

    if-lt v1, v8, :cond_6

    if-lt v13, v11, :cond_7

    .line 37
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v16, v15

    const/16 v15, 0x18

    goto :goto_2

    .line 38
    :cond_7
    :goto_1
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, v19

    move-object/from16 v5, v16

    move-object/from16 v6, p2

    move-object/from16 v16, v15

    const/16 v15, 0x18

    move v8, v11

    .line 39
    invoke-direct/range {v1 .. v8}, Lcom/android/apksig/ApkVerifier;->getApkContentDigests(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 40
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 41
    invoke-static {v10, v1}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 42
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    invoke-static {v0, v10}, Lcom/android/apksig/ApkVerifier;->mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_2
    if-lt v13, v15, :cond_9

    .line 43
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v4, p2

    goto :goto_4

    .line 44
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 45
    invoke-static {v14, v0, v12}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v4, p2

    .line 46
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_4
    iget v6, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, v16

    move v5, v13

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigResult;

    move-result-object v0

    .line 49
    invoke-static {v10, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$200(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V

    .line 50
    iget-boolean v0, v0, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    if-eqz v0, :cond_b

    .line 51
    invoke-static {v10}, Lcom/android/apksig/ApkVerifier$Result;->access$1000(Lcom/android/apksig/ApkVerifier$Result;)V

    goto :goto_5

    :cond_b
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v10, v1}, Lcom/android/apksig/ApkVerifier$Result;->setWarningsAsErrors(Z)V
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_5
    return-object v10

    .line 53
    :catch_5
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_NOT_VERIFIED:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 54
    :goto_6
    sget-object v1, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->UNEXPECTED_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 55
    :goto_7
    sget-object v1, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->MALFORMED_APK:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public verify()Lcom/android/apksig/ApkVerifier$Result;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 5
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/apksig/ApkVerifier;->verify(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 7
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "APK not provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 9
    :cond_3
    throw v1
.end method

.method public verifySourceStamp()Lcom/android/apksig/ApkVerifier$Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/apksig/ApkVerifier;->verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0
.end method

.method public verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

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
    invoke-direct {p0, v1, p1}, Lcom/android/apksig/ApkVerifier;->verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;

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
    sget-object v1, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->UNEXPECTED_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    .line 10
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_3
    return-object p1

    :goto_2
    if-eqz v0, :cond_4

    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 11
    :catch_4
    :cond_4
    throw p1
.end method
