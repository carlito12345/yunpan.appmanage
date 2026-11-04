.class public Lcom/android/apksig/ApkSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkSigner$SignerConfig;,
        Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;,
        Lcom/android/apksig/ApkSigner$Builder;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_ZIP_EXTRA_DATA_FIELD_HEADER_ID:S = -0x26cbs

.field private static final ALIGNMENT_ZIP_EXTRA_DATA_FIELD_MIN_SIZE_BYTES:S = 0x6s

.field private static final ANDROID_COMMON_PAGE_ALIGNMENT_BYTES:S = 0x1000s

.field private static final ANDROID_FILE_ALIGNMENT_BYTES:S = 0x1000s

.field private static final ANDROID_MANIFEST_ZIP_ENTRY_NAME:Ljava/lang/String; = "AndroidManifest.xml"


# instance fields
.field private final mAlignFileSize:Z

.field private final mCreatedBy:Ljava/lang/String;

.field private final mDebuggableApkPermitted:Z

.field private final mForceSourceStampOverwrite:Z

.field private final mInputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mInputApkFile:Ljava/io/File;

.field private final mMinSdkVersion:Ljava/lang/Integer;

.field private final mOtherSignersSignaturesPreserved:Z

.field private final mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

.field private final mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mOutputApkFile:Ljava/io/File;

.field private final mOutputV4File:Ljava/io/File;

.field private final mRotationMinSdkVersion:I

.field private final mRotationTargetsDevRelease:Z

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

.field private final mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private final mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

.field private final mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private final mV1SigningEnabled:Z

.field private final mV2SigningEnabled:Z

.field private final mV3SigningEnabled:Z

.field private final mV4ErrorReportingEnabled:Z

.field private final mV4SigningEnabled:Z

.field private final mVerityEnabled:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;ZLjava/lang/Integer;IZZZZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            "Z",
            "Ljava/lang/Integer;",
            "IZZZZZZZZZZ",
            "Ljava/lang/String;",
            "Lcom/android/apksig/ApkSignerEngine;",
            "Ljava/io/File;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/io/File;",
            "Lcom/android/apksig/util/DataSink;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/io/File;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    move v1, p4

    .line 6
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mForceSourceStampOverwrite:Z

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mMinSdkVersion:Ljava/lang/Integer;

    move v1, p6

    .line 8
    iput v1, v0, Lcom/android/apksig/ApkSigner;->mRotationMinSdkVersion:I

    move v1, p7

    .line 9
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mRotationTargetsDevRelease:Z

    move v1, p8

    .line 10
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV1SigningEnabled:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV2SigningEnabled:Z

    move v1, p10

    .line 12
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV3SigningEnabled:Z

    move v1, p11

    .line 13
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV4SigningEnabled:Z

    move v1, p12

    .line 14
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mAlignFileSize:Z

    move v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mVerityEnabled:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV4ErrorReportingEnabled:Z

    move/from16 v1, p15

    .line 17
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mDebuggableApkPermitted:Z

    move/from16 v1, p16

    .line 18
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mOtherSignersSignaturesPreserved:Z

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mCreatedBy:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    move-object/from16 v1, p22

    .line 24
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputV4File:Ljava/io/File;

    move-object/from16 v1, p25

    .line 27
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;ZLjava/lang/Integer;IZZZZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/ApkSigner$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p25}, Lcom/android/apksig/ApkSigner;-><init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;ZLjava/lang/Integer;IZZZZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;)V

    return-void
.end method

.method private static createExtraFieldToAlignData(Ljava/nio/ByteBuffer;JI)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p3, v0, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, 0x5

    .line 10
    .line 11
    add-int/2addr v0, p3

    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, -0x26cb

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    if-lt v1, v3, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-le v4, v5, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-nez v1, :cond_2

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    :cond_2
    if-ne v1, v2, :cond_4

    .line 50
    .line 51
    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v1, v4

    .line 56
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-int/2addr v1, v3

    .line 65
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    add-int/2addr v2, v3

    .line 77
    add-int/2addr v2, v4

    .line 78
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    int-to-long v3, p0

    .line 93
    add-long/2addr p1, v3

    .line 94
    const-wide/16 v3, 0x6

    .line 95
    .line 96
    add-long/2addr p1, v3

    .line 97
    int-to-long v3, p3

    .line 98
    rem-long/2addr p1, v3

    .line 99
    long-to-int p0, p1

    .line 100
    sub-int p0, p3, p0

    .line 101
    .line 102
    rem-int/2addr p0, p3

    .line 103
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    add-int/lit8 p1, p0, 0x2

    .line 107
    .line 108
    invoke-static {v0, p1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, p3}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    add-int/2addr p1, p0

    .line 119
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method private static extractPinPatterns(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/apksig/Hints$PatternWithRange;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "assets/com.android.hints.pins.txt"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/android/apksig/ApkSigner;->findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {p1, p0, v0, v1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-static {p0}, Lcom/android/apksig/Hints;->parsePinPatterns([B)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Bad "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    return-object p0
.end method

.method private static findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
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
    check-cast v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method private static fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->getDataSink()Lcom/android/apksig/util/DataSink;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, p0, v0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->done()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p2, Lcom/android/apksig/apk/ApkFormatException;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Malformed ZIP entry: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p2
.end method

.method public static getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1
    const-string v0, "AndroidManifest.xml"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/android/apksig/ApkSigner;->findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {p1, p0, v0, v1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    .line 23
    .line 24
    const-string p1, "Missing AndroidManifest.xml"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method private static getInputJarEntryDataAlignmentMultiple(Lcom/android/apksig/internal/zip/LocalFileRecord;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->isDataCompressed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x4

    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-lt v1, v2, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-le v3, v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v4, -0x26cb

    .line 47
    .line 48
    if-eq v1, v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v3

    .line 55
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x2

    .line 60
    if-ge v3, v1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {v0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v0, ".so"

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_5

    .line 79
    .line 80
    const/16 v2, 0x1000

    .line 81
    .line 82
    :cond_5
    return v2
.end method

.method private static getMinSdkVersionFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")I"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/apksig/ApkSigner;->getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    move-exception p0

    .line 13
    :goto_0
    new-instance p1, Lcom/android/apksig/apk/MinSdkVersionException;

    .line 14
    .line 15
    const-string v0, "Failed to determine APK\'s minimum supported Android platform version"

    .line 16
    .line 17
    invoke-direct {p1, v0, p0}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method private static getZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectorySizeBytes()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-gtz v4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    long-to-int p1, v0

    .line 17
    invoke-interface {p0, v2, v3, p1}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    .line 28
    .line 29
    const-string p1, "ZIP Central Directory too large: "

    .line 30
    .line 31
    invoke-static {v0, v1, p1}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method private static outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BJ",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;II",
            "Lcom/android/apksig/util/DataSink;",
            ")J"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/android/apksig/internal/zip/ZipUtils;->deflate(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v11, v1, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;->output:[B

    .line 12
    .line 13
    iget-wide v14, v1, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;->inputCrc32:J

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    int-to-long v8, v1

    .line 17
    move-object/from16 v2, p0

    .line 18
    .line 19
    move/from16 v3, p5

    .line 20
    .line 21
    move/from16 v4, p6

    .line 22
    .line 23
    move-object v5, v11

    .line 24
    move-wide v6, v14

    .line 25
    move-object/from16 v10, p7

    .line 26
    .line 27
    invoke-static/range {v2 .. v10}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecordWithDeflateCompressedData(Ljava/lang/String;II[BJJLcom/android/apksig/util/DataSink;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    array-length v3, v11

    .line 32
    int-to-long v3, v3

    .line 33
    array-length v0, v0

    .line 34
    int-to-long v5, v0

    .line 35
    move-object/from16 v12, p0

    .line 36
    .line 37
    move/from16 v13, p5

    .line 38
    .line 39
    move-wide v7, v14

    .line 40
    move/from16 v14, p6

    .line 41
    .line 42
    move-wide v15, v7

    .line 43
    move-wide/from16 v17, v3

    .line 44
    .line 45
    move-wide/from16 v19, v5

    .line 46
    .line 47
    move-wide/from16 v21, p2

    .line 48
    .line 49
    invoke-static/range {v12 .. v22}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->createWithDeflateCompressedData(Ljava/lang/String;IIJJJJ)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object/from16 v3, p4

    .line 54
    .line 55
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-wide v1
.end method

.method private static outputInputJarEntryLfhRecordPreservingDataAlignment(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/util/DataSink;J)Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v2, v0, p3

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance p3, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    .line 10
    .line 11
    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long p0, p0

    .line 20
    invoke-direct {p3, v0, v1, p0, p1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    return-object p3

    .line 24
    :cond_0
    invoke-static {p1}, Lcom/android/apksig/ApkSigner;->getInputJarEntryDataAlignmentMultiple(Lcom/android/apksig/internal/zip/LocalFileRecord;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-le v2, v3, :cond_3

    .line 30
    .line 31
    int-to-long v3, v2

    .line 32
    rem-long v5, v0, v3

    .line 33
    .line 34
    rem-long v7, p3, v3

    .line 35
    .line 36
    cmp-long v9, v5, v7

    .line 37
    .line 38
    if-nez v9, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    int-to-long v5, v5

    .line 46
    add-long/2addr v0, v5

    .line 47
    rem-long/2addr v0, v3

    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    cmp-long v5, v0, v3

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    new-instance p3, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    .line 55
    .line 56
    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    int-to-long p0, p0

    .line 65
    invoke-direct {p3, v0, v1, p0, p1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    .line 66
    .line 67
    .line 68
    return-object p3

    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtraFieldStartOffsetInsideRecord()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    int-to-long v3, v1

    .line 78
    add-long/2addr p3, v3

    .line 79
    invoke-static {v0, p3, p4, v2}, Lcom/android/apksig/ApkSigner;->createExtraFieldToAlignData(Ljava/nio/ByteBuffer;JI)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    int-to-long v0, p4

    .line 88
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 89
    .line 90
    .line 91
    move-result p4

    .line 92
    int-to-long v2, p4

    .line 93
    add-long/2addr v0, v2

    .line 94
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    int-to-long v2, p4

    .line 103
    sub-long/2addr v0, v2

    .line 104
    new-instance p4, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    .line 105
    .line 106
    invoke-virtual {p1, p0, p3, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecordWithModifiedExtra(Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSink;)J

    .line 107
    .line 108
    .line 109
    move-result-wide p0

    .line 110
    invoke-direct {p4, p0, p1, v0, v1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    .line 111
    .line 112
    .line 113
    return-object p4

    .line 114
    :cond_3
    :goto_0
    new-instance p3, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    .line 115
    .line 116
    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    int-to-long p0, p0

    .line 125
    invoke-direct {p3, v0, v1, p0, p1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    .line 126
    .line 127
    .line 128
    return-object p3
.end method

.method private static parseZipCentralDirectory(Ljava/nio/ByteBuffer;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryRecordCount()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    if-ge v4, p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getRecord(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v5
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    .line 47
    .line 48
    const-string p1, "Multiple ZIP entries with the same name: "

    .line 49
    .line 50
    invoke-static {p1, v6}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Malformed ZIP Central Directory record #"

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " at file offset "

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    int-to-long v3, v5

    .line 79
    add-long/2addr v0, v3

    .line 80
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_2
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "Unused space at the end of ZIP Central Directory: "

    .line 103
    .line 104
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, " bytes starting at file offset "

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    int-to-long v3, p0

    .line 124
    add-long/2addr v0, v3

    .line 125
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {p1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :goto_1
    throw p1

    .line 137
    :goto_2
    goto :goto_1
.end method

.method private static requestOutputEntryInspection(Lcom/android/apksig/ApkSignerEngine;Ljava/lang/String;[B)V
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->getDataSink()Lcom/android/apksig/util/DataSink;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, p2, v1, v0}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->done()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private sign(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 21
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v12
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_4

    const-wide/16 v2, -0x1

    .line 22
    :try_start_1
    invoke-static {v0, v12}, Lcom/android/apksig/apk/ApkUtils;->findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Lcom/android/apksig/apk/ApkUtilsLite$ApkSigningBlock;->getStartOffset()J

    move-result-wide v6
    :try_end_1
    .catch Lcom/android/apksig/apk/ApkSigningBlockNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :try_start_2
    invoke-virtual {v5}, Lcom/android/apksig/apk/ApkUtilsLite$ApkSigningBlock;->getContents()Lcom/android/apksig/util/DataSource;

    move-result-object v5
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkSigningBlockNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    move-wide v6, v2

    :goto_0
    const/4 v5, 0x0

    :goto_1
    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {v12}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v6

    :goto_2
    const-wide/16 v13, 0x0

    .line 26
    invoke-interface {v0, v13, v14, v6, v7}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v8

    .line 27
    invoke-static {v0, v12}, Lcom/android/apksig/ApkSigner;->getZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    invoke-static {v0, v12}, Lcom/android/apksig/ApkSigner;->parseZipCentralDirectory(Ljava/nio/ByteBuffer;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-static {v0, v8}, Lcom/android/apksig/ApkSigner;->extractPinPatterns(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v15, 0x0

    goto :goto_3

    .line 30
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    .line 31
    :goto_3
    iget-object v2, v1, Lcom/android/apksig/ApkSigner;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    if-eqz v2, :cond_2

    :goto_4
    move-object v13, v2

    goto/16 :goto_7

    .line 32
    :cond_2
    iget-object v2, v1, Lcom/android/apksig/ApkSigner;->mMinSdkVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    .line 34
    :cond_3
    invoke-static {v0, v8}, Lcom/android/apksig/ApkSigner;->getMinSdkVersionFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)I

    move-result v2

    .line 35
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    .line 36
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    iget-object v6, v1, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 38
    new-instance v4, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;

    .line 39
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v13

    .line 40
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v14

    move-object/from16 p1, v6

    .line 41
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v6

    .line 42
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getDeterministicDsaSigning()Z

    move-result v7

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V

    .line 43
    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p1

    const-wide/16 v13, 0x0

    goto :goto_6

    .line 45
    :cond_4
    new-instance v4, Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    invoke-direct {v4, v3, v2}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;-><init>(Ljava/util/List;I)V

    iget-boolean v2, v1, Lcom/android/apksig/ApkSigner;->mV1SigningEnabled:Z

    .line 46
    invoke-virtual {v4, v2}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mV2SigningEnabled:Z

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mV3SigningEnabled:Z

    .line 48
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mVerityEnabled:Z

    .line 49
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setVerityEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mDebuggableApkPermitted:Z

    .line 50
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setDebuggableApkPermitted(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mOtherSignersSignaturesPreserved:Z

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 52
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget v3, v1, Lcom/android/apksig/ApkSigner;->mRotationMinSdkVersion:I

    .line 53
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setMinSdkVersionForRotation(I)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mRotationTargetsDevRelease:Z

    .line 54
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setRotationTargetsDevRelease(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    .line 55
    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mCreatedBy:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 56
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    .line 57
    :cond_5
    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    if-eqz v3, :cond_6

    .line 58
    new-instance v4, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;

    .line 59
    invoke-virtual {v3}, Lcom/android/apksig/ApkSigner$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 60
    invoke-virtual {v6}, Lcom/android/apksig/ApkSigner$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    iget-object v7, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 61
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v7

    iget-object v13, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 62
    invoke-virtual {v13}, Lcom/android/apksig/ApkSigner$SignerConfig;->getDeterministicDsaSigning()Z

    move-result v13

    invoke-direct {v4, v3, v6, v7, v13}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V

    .line 63
    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setStampSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    .line 65
    :cond_6
    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v3, :cond_7

    .line 66
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setSourceStampSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    .line 67
    :cond_7
    invoke-virtual {v2}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine;

    move-result-object v2

    goto/16 :goto_4

    :goto_7
    if-eqz v5, :cond_8

    .line 68
    invoke-interface {v13, v5}, Lcom/android/apksig/ApkSignerEngine;->inputApkSigningBlock(Lcom/android/apksig/util/DataSource;)V

    .line 69
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    sget-object v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    new-instance v14, Ljava/util/HashMap;

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-wide/16 v19, 0x0

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-object/from16 v16, v12

    .line 74
    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v12

    .line 75
    const-string v7, "pinlist.meta"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object/from16 v11, p3

    :goto_9
    move-object/from16 v12, v16

    goto :goto_8

    .line 76
    :cond_9
    const-string v7, "stamp-cert-sha256"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v6

    .line 77
    :try_start_3
    invoke-interface {v8}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v5

    .line 78
    invoke-static {v8, v11, v5, v6}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v5
    :try_end_3
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v11, p3

    move v6, v7

    goto :goto_9

    .line 79
    :catch_2
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Bad source stamp entry"

    invoke-direct {v0, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v7, v6

    .line 80
    invoke-interface {v13, v12}, Lcom/android/apksig/ApkSignerEngine;->inputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    move-result-object v22

    .line 81
    sget-object v6, Lcom/android/apksig/ApkSigner$1;->$SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy:[I

    invoke-virtual/range {v22 .. v22}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getOutputPolicy()Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    aget v6, v6, v23

    move/from16 v23, v2

    const/4 v2, 0x1

    if-eq v6, v2, :cond_d

    const/4 v2, 0x2

    if-eq v6, v2, :cond_c

    const/4 v2, 0x3

    if-ne v6, v2, :cond_b

    goto :goto_a

    .line 82
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown output policy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {v22 .. v22}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getOutputPolicy()Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_a
    const/16 v24, 0x0

    goto :goto_b

    :cond_d
    const/16 v24, 0x1

    .line 84
    :goto_b
    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLocalFileHeaderOffset()J

    move-result-wide v25

    cmp-long v2, v25, v3

    if-lez v2, :cond_e

    sub-long v27, v25, v3

    move/from16 v6, v23

    move-object v2, v8

    move-object/from16 v23, v0

    move v0, v6

    move v1, v7

    move-object v7, v5

    move-wide/from16 v5, v27

    move-object/from16 v30, v7

    move-object/from16 v29, v14

    const/4 v14, -0x1

    move-object/from16 v7, p2

    .line 85
    invoke-interface/range {v2 .. v7}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    add-long v19, v19, v27

    move-object/from16 v21, v15

    move-wide/from16 v5, v19

    move-wide/from16 v3, v25

    goto :goto_c

    :cond_e
    move-object/from16 v30, v5

    move v1, v7

    move-object/from16 v29, v14

    move/from16 v31, v23

    move-object/from16 v23, v0

    move/from16 v0, v31

    move-object/from16 v21, v15

    move-wide/from16 v5, v19

    .line 86
    :goto_c
    :try_start_4
    invoke-interface {v8}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v14

    .line 87
    invoke-static {v8, v11, v14, v15}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)Lcom/android/apksig/internal/zip/LocalFileRecord;

    move-result-object v2
    :try_end_4
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 88
    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getSize()J

    move-result-wide v14

    add-long/2addr v3, v14

    .line 89
    invoke-virtual/range {v22 .. v22}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getInspectJarEntryRequest()Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 90
    invoke-static {v8, v2, v7}, Lcom/android/apksig/ApkSigner;->fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    :cond_f
    if-eqz v24, :cond_18

    .line 91
    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLastModificationDate()I

    move-result v7

    .line 92
    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLastModificationTime()I

    move-result v14

    const/4 v15, -0x1

    if-eq v1, v15, :cond_11

    if-gt v7, v1, :cond_11

    if-ne v7, v1, :cond_10

    if-le v14, v0, :cond_10

    goto :goto_d

    :cond_10
    move v14, v0

    goto :goto_e

    :cond_11
    :goto_d
    move v1, v7

    .line 93
    :goto_e
    invoke-interface {v13, v12}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 94
    invoke-static {v8, v2, v0}, Lcom/android/apksig/ApkSigner;->fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    .line 95
    :cond_12
    invoke-static {v8, v2, v10, v5, v6}, Lcom/android/apksig/ApkSigner;->outputInputJarEntryLfhRecordPreservingDataAlignment(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/util/DataSink;J)Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    move-result-object v0

    move-wide/from16 v19, v3

    .line 96
    iget-wide v3, v0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->outputBytes:J

    add-long/2addr v3, v5

    move v7, v1

    .line 97
    iget-wide v0, v0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->dataOffsetBytes:J

    add-long/2addr v0, v5

    if-eqz v9, :cond_15

    .line 98
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v22, 0x0

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move/from16 v26, v7

    move-object/from16 v7, v24

    check-cast v7, Lcom/android/apksig/Hints$PatternWithRange;

    move-object/from16 v24, v9

    .line 99
    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/apksig/Hints$PatternWithRange;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 100
    new-instance v9, Lcom/android/apksig/Hints$ByteRange;

    invoke-direct {v9, v0, v1, v3, v4}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    .line 101
    invoke-virtual {v7, v9}, Lcom/android/apksig/Hints$PatternWithRange;->ClampToAbsoluteByteRange(Lcom/android/apksig/Hints$ByteRange;)Lcom/android/apksig/Hints$ByteRange;

    move-result-object v7

    if-eqz v7, :cond_13

    move-object/from16 v9, v21

    .line 102
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x1

    goto :goto_10

    :cond_13
    move-object/from16 v9, v21

    :goto_10
    move-object/from16 v21, v9

    move-object/from16 v9, v24

    move/from16 v7, v26

    goto :goto_f

    :cond_14
    move/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v9, v21

    if-eqz v22, :cond_16

    .line 103
    new-instance v7, Lcom/android/apksig/Hints$ByteRange;

    invoke-direct {v7, v5, v6, v0, v1}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_15
    move/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v9, v21

    .line 104
    :cond_16
    :goto_11
    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    move-result-wide v0

    cmp-long v2, v5, v0

    if-nez v2, :cond_17

    :goto_12
    move-object/from16 v15, v29

    goto :goto_13

    .line 105
    :cond_17
    invoke-virtual {v11, v5, v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->createWithModifiedLocalFileHeaderOffset(J)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v11

    goto :goto_12

    .line 106
    :goto_13
    invoke-virtual {v15, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v14

    move/from16 v6, v26

    goto :goto_14

    :cond_18
    move-wide/from16 v19, v3

    move-object/from16 v24, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v29

    move v2, v0

    move-wide v3, v5

    move v6, v1

    :goto_14
    move-object/from16 v1, p0

    move-object/from16 v11, p3

    move-object v14, v15

    move-object/from16 v12, v16

    move-object/from16 v0, v23

    move-object/from16 v5, v30

    move-object v15, v9

    move-object/from16 v9, v24

    move-wide/from16 v31, v3

    move-wide/from16 v3, v19

    move-wide/from16 v19, v31

    goto/16 :goto_8

    :catch_3
    move-exception v0

    .line 107
    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed ZIP entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    move-object/from16 v23, v0

    move v0, v2

    move-object/from16 v30, v5

    move v1, v6

    move-object/from16 v16, v12

    move-object v9, v15

    move-object v15, v14

    .line 108
    invoke-interface {v8}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_1a

    sub-long v11, v5, v3

    move-object v2, v8

    move-wide v5, v11

    move-object/from16 v7, p2

    .line 109
    invoke-interface/range {v2 .. v7}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    add-long v19, v19, v11

    .line 110
    :cond_1a
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 112
    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    if-eqz v3, :cond_1b

    .line 114
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1c
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1d

    const/16 v6, 0x3a21

    const/4 v0, 0x0

    const/16 v1, 0x3a21

    .line 115
    :cond_1d
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 116
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->generateSourceStampCertificateDigest()[B

    move-result-object v3

    move-object/from16 v12, p0

    .line 117
    iget-boolean v2, v12, Lcom/android/apksig/ApkSigner;->mForceSourceStampOverwrite:Z

    if-nez v2, :cond_1f

    move-object/from16 v5, v30

    if-eqz v5, :cond_1f

    .line 118
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_16

    .line 119
    :cond_1e
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    .line 120
    const-string v1, "Cannot generate SourceStamp. APK contains an existing entry with the name: stamp-cert-sha256, and it is different than the provided source stamp certificate"

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1f
    :goto_16
    const-string v2, "stamp-cert-sha256"

    move-wide/from16 v4, v19

    move-object v6, v11

    move v7, v0

    move v8, v1

    move-object v14, v9

    move-object/from16 v9, p2

    .line 122
    invoke-static/range {v2 .. v9}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    add-long v19, v19, v2

    :goto_17
    move-wide/from16 v8, v19

    goto :goto_18

    :cond_20
    move-object/from16 v12, p0

    move-object v14, v9

    goto :goto_17

    :goto_18
    if-eqz v14, :cond_21

    .line 123
    new-instance v2, Lcom/android/apksig/Hints$ByteRange;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v2, v8, v9, v3, v4}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v14}, Lcom/android/apksig/Hints;->encodeByteRangeList(Ljava/util/List;)[B

    move-result-object v3

    .line 125
    const-string v2, "pinlist.meta"

    invoke-static {v13, v2, v3}, Lcom/android/apksig/ApkSigner;->requestOutputEntryInspection(Lcom/android/apksig/ApkSignerEngine;Ljava/lang/String;[B)V

    move-wide v4, v8

    move-object v6, v11

    move v7, v0

    move-wide/from16 v19, v8

    move v8, v1

    move-object/from16 v9, p2

    .line 126
    invoke-static/range {v2 .. v9}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    add-long v8, v19, v2

    goto :goto_19

    :cond_21
    move-wide/from16 v19, v8

    .line 127
    :goto_19
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntries()Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;

    move-result-object v14

    if-eqz v14, :cond_23

    .line 128
    invoke-interface {v14}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;->getAdditionalJarEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-wide/from16 v18, v8

    :goto_1a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;

    .line 129
    invoke-virtual {v2}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v2}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->getData()[B

    move-result-object v4

    .line 131
    invoke-static {v13, v3, v4}, Lcom/android/apksig/ApkSigner;->requestOutputEntryInspection(Lcom/android/apksig/ApkSignerEngine;Ljava/lang/String;[B)V

    move-object v2, v3

    move-object v3, v4

    move-wide/from16 v4, v18

    move-object v6, v11

    move v7, v0

    move v8, v1

    move-object/from16 v9, p2

    .line 132
    invoke-static/range {v2 .. v9}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    add-long v18, v18, v2

    goto :goto_1a

    .line 133
    :cond_22
    invoke-interface {v14}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;->done()V

    move-wide/from16 v8, v18

    .line 134
    :cond_23
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 135
    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1b

    :cond_24
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_29

    long-to-int v0, v1

    .line 136
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 138
    invoke-virtual {v2, v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->copyTo(Ljava/nio/ByteBuffer;)V

    goto :goto_1c

    .line 139
    :cond_25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 140
    new-instance v1, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 141
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 142
    invoke-virtual/range {v16 .. v16}, Lcom/android/apksig/zip/ZipSections;->getZipEndOfCentralDirectory()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 143
    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    move-wide v6, v8

    .line 144
    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/zip/EocdRecord;->createWithModifiedCentralDirectoryInfo(Ljava/nio/ByteBuffer;IJJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 145
    invoke-static {v2}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v3

    move-object/from16 v11, p3

    const/4 v4, 0x0

    .line 146
    invoke-interface {v13, v11, v1, v3}, Lcom/android/apksig/ApkSignerEngine;->outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 147
    invoke-interface {v3}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getPaddingSizeBeforeApkSigningBlock()I

    move-result v5

    .line 148
    invoke-interface {v3}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getApkSigningBlock()[B

    move-result-object v6

    .line 149
    invoke-interface {v3}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->done()V

    .line 150
    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v14

    add-long/2addr v14, v8

    move-wide/from16 v18, v8

    int-to-long v7, v5

    add-long/2addr v14, v7

    array-length v3, v6

    move v9, v5

    int-to-long v4, v3

    add-long/2addr v14, v4

    .line 151
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v14, v3

    .line 152
    iget-boolean v3, v12, Lcom/android/apksig/ApkSigner;->mAlignFileSize:Z

    if-eqz v3, :cond_26

    const-wide/16 v3, 0x1000

    rem-long/2addr v14, v3

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-eqz v5, :cond_26

    sub-long/2addr v3, v14

    long-to-int v4, v3

    .line 153
    invoke-static {v2, v4}, Lcom/android/apksig/internal/zip/EocdRecord;->createWithPaddedComment(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 154
    new-instance v3, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    invoke-direct {v3, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 155
    invoke-static {v2}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    .line 156
    invoke-interface {v13, v11, v3, v0}, Lcom/android/apksig/ApkSignerEngine;->outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getApkSigningBlock()[B

    move-result-object v6

    .line 158
    invoke-interface {v0}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->done()V

    .line 159
    :cond_26
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    .line 160
    array-length v0, v6

    const/4 v3, 0x0

    invoke-interface {v10, v6, v3, v0}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    add-long v3, v18, v7

    .line 161
    array-length v0, v6

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    :cond_27
    move-object v0, v2

    const-wide/16 v3, 0x0

    .line 162
    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v5

    move-object v2, v1

    move-object/from16 v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    .line 163
    invoke-interface {v10, v0}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    .line 164
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->outputDone()V

    .line 165
    iget-boolean v0, v12, Lcom/android/apksig/ApkSigner;->mV4SigningEnabled:Z

    if-eqz v0, :cond_28

    .line 166
    iget-object v0, v12, Lcom/android/apksig/ApkSigner;->mOutputV4File:Ljava/io/File;

    iget-boolean v1, v12, Lcom/android/apksig/ApkSigner;->mV4ErrorReportingEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v13, v11, v0, v1}, Lcom/android/apksig/ApkSignerEngine;->signV4(Lcom/android/apksig/util/DataSource;Ljava/io/File;Z)V

    :cond_28
    return-void

    .line 167
    :cond_29
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Output ZIP Central Directory too large: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    .line 168
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Malformed APK: not a ZIP archive"

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method


# virtual methods
.method public sign()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/ApkSigner;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    if-eqz v1, :cond_6

    .line 3
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    invoke-static {v1}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    if-eqz v3, :cond_1

    .line 6
    iget-object v4, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    if-eqz v3, :cond_4

    .line 8
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x0

    .line 9
    :try_start_3
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 10
    invoke-static {v3}, Lcom/android/apksig/util/DataSinks;->asDataSink(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSink;

    move-result-object v0

    .line 11
    invoke-static {v3}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 12
    :goto_1
    :try_start_4
    invoke-direct {p0, v2, v3, v4}, Lcom/android/apksig/ApkSigner;->sign(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 13
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_3
    return-void

    :catchall_2
    move-exception v2

    move-object v0, v3

    goto :goto_3

    .line 15
    :cond_4
    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Output APK not specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v0, :cond_5

    .line 16
    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 17
    :cond_5
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 18
    :cond_6
    :try_start_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Input APK not specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_4
    if-eqz v1, :cond_7

    .line 19
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 20
    :cond_7
    throw v0
.end method
