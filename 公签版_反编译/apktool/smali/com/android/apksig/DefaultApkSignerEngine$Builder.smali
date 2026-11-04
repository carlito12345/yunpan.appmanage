.class public Lcom/android/apksig/DefaultApkSignerEngine$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCreatedBy:Ljava/lang/String;

.field private mDebuggableApkPermitted:Z

.field private final mMinSdkVersion:I

.field private mOtherSignersSignaturesPreserved:Z

.field private mRotationMinSdkVersion:I

.field private mRotationTargetsDevRelease:Z

.field private mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

.field private mV1SigningEnabled:Z

.field private mV2SigningEnabled:Z

.field private mV3SigningEnabled:Z

.field private mV3SigningExplicitlyDisabled:Z

.field private mV3SigningExplicitlyEnabled:Z

.field private mVerityEnabled:Z


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 10
    .line 11
    const/16 v1, 0x21

    .line 12
    .line 13
    iput v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationTargetsDevRelease:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mVerityEnabled:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    .line 21
    .line 22
    const-string v2, "1.0 (Android)"

    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le v2, v0, :cond_0

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 43
    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    .line 50
    .line 51
    iput p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mMinSdkVersion:I

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p2, "At least one signer config must be provided"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method


# virtual methods
.method public build()Lcom/android/apksig/DefaultApkSignerEngine;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v2, "Builder configured to both enable and disable APK Signature Scheme v3 signing"

    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iput-boolean v2, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 32
    .line 33
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    :try_start_0
    iget-object v3, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/android/apksig/SigningCertificateLineage;->sortSignerConfigs(Ljava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    .line 44
    .line 45
    iget-boolean v3, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 46
    .line 47
    if-nez v3, :cond_7

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-gt v0, v2, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v2, "Provided multiple signers which are part of the SigningCertificateLineage, but not signing with APK Signature Scheme v3"

    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v3, "Provided signer configs do not match the provided SigningCertificateLineage"

    .line 68
    .line 69
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v2

    .line 73
    :cond_5
    iget-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    iget-object v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-gt v0, v2, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string v2, "Multiple signing certificates provided for use with APK Signature Scheme v3 without an accompanying SigningCertificateLineage"

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_7
    :goto_2
    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine;

    .line 95
    .line 96
    iget-object v4, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    .line 97
    .line 98
    iget-object v5, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    .line 99
    .line 100
    iget-object v6, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 101
    .line 102
    iget v7, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mMinSdkVersion:I

    .line 103
    .line 104
    iget v8, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    .line 105
    .line 106
    iget-boolean v9, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationTargetsDevRelease:Z

    .line 107
    .line 108
    iget-boolean v10, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    .line 109
    .line 110
    iget-boolean v11, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    .line 111
    .line 112
    iget-boolean v12, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 113
    .line 114
    iget-boolean v13, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mVerityEnabled:Z

    .line 115
    .line 116
    iget-boolean v14, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    .line 117
    .line 118
    iget-boolean v15, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mOtherSignersSignaturesPreserved:Z

    .line 119
    .line 120
    iget-object v2, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 123
    .line 124
    const/16 v18, 0x0

    .line 125
    .line 126
    move-object/from16 v17, v3

    .line 127
    .line 128
    move-object v3, v0

    .line 129
    move-object/from16 v16, v2

    .line 130
    .line 131
    invoke-direct/range {v3 .. v18}, Lcom/android/apksig/DefaultApkSignerEngine;-><init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;IIZZZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    .line 132
    .line 133
    .line 134
    return-object v0
.end method

.method public setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public setDebuggableApkPermitted(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setMinSdkVersionForRotation(I)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x1c

    .line 6
    .line 7
    iput p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    .line 11
    .line 12
    :goto_0
    return-object p0
.end method

.method public setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mOtherSignersSignaturesPreserved:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setRotationTargetsDevRelease(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationTargetsDevRelease:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public setSourceStampSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStampSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public setV1SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setV2SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setV3SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    .line 10
    .line 11
    :goto_0
    return-object p0
.end method

.method public setVerityEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mVerityEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method
