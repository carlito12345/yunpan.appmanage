.class public Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApk:Lcom/android/apksig/util/DataSource;

.field private mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

.field private mBlockId:I

.field private mContentDigestsToVerify:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private mFullVerification:Z

.field private mMaxSdkVersion:I

.field private mMinSdkVersion:I

.field private mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

.field private mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

.field private mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;


# direct methods
.method public constructor <init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    const v0, -0xfac9740

    .line 3
    iput v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    .line 5
    invoke-static {}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->empty()Lcom/android/apksig/internal/compat/OptionalIntCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 6
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApk:Lcom/android/apksig/util/DataSource;

    .line 7
    iput-object p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    .line 8
    iput p3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    .line 9
    iput p4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMaxSdkVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    const v0, -0xfac9740

    .line 12
    iput v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    .line 14
    invoke-static {}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->empty()Lcom/android/apksig/internal/compat/OptionalIntCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 15
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    .line 3
    .line 4
    const v2, -0xfac9740

    .line 5
    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const v2, 0x1b93ad61

    .line 10
    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMaxSdkVersion:I

    .line 15
    .line 16
    iput v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    .line 17
    .line 18
    const/16 v1, 0x1f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    iget v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v2, v0, v3

    .line 33
    .line 34
    const-string v2, "Unsupported APK Signature Scheme V3 block ID: 0x%08x"

    .line 35
    .line 36
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :cond_1
    iget v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    .line 45
    .line 46
    const/16 v2, 0x1c

    .line 47
    .line 48
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    new-instance v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    new-instance v1, Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    .line 76
    .line 77
    :cond_3
    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApk:Lcom/android/apksig/util/DataSource;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    .line 84
    .line 85
    iget-object v6, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    .line 86
    .line 87
    iget-object v7, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 88
    .line 89
    iget v8, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    .line 90
    .line 91
    iget v9, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMaxSdkVersion:I

    .line 92
    .line 93
    iget v10, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    .line 94
    .line 95
    iget-object v11, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 96
    .line 97
    iget-boolean v12, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    .line 98
    .line 99
    const/4 v13, 0x0

    .line 100
    move-object v2, v0

    .line 101
    invoke-direct/range {v2 .. v13}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;-><init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;ZLcom/android/apksig/internal/apk/v3/V3SchemeVerifier$1;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->access$102(Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    .line 111
    :cond_4
    return-object v0
.end method

.method public setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentDigestsToVerify(Ljava/util/Set;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;)",
            "Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFullVerification(Z)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRotationMinSdkVersion(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->of(I)Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 6
    .line 7
    return-object p0
.end method

.method public setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    .line 2
    .line 3
    return-object p0
.end method
