.class public Lcom/android/apksig/ApkVerifier$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;
    }
.end annotation


# instance fields
.field private final mErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

.field private mSourceStampVerified:Z

.field private final mV1SchemeIgnoredSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV1SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV2SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV31SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV3SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV4SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVerified:Z

.field private mVerifiedUsingV1Scheme:Z

.field private mVerifiedUsingV2Scheme:Z

.field private mVerifiedUsingV31Scheme:Z

.field private mVerifiedUsingV3Scheme:Z

.field private mVerifiedUsingV4Scheme:Z

.field private final mWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningsAsErrors:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV31SchemeSigners:Ljava/util/List;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    .line 66
    .line 67
    return-void
.end method

.method public static synthetic access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/android/apksig/ApkVerifier$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/apksig/ApkVerifier$Result;->setVerified()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->addSignerCertificate(Ljava/security/cert/X509Certificate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1202(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;)Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/ApkSigResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addSignerCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/ApkSigResult;)V
    .locals 3

    .line 8
    iget v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->signatureSchemeVersion:I

    if-nez v0, :cond_1

    .line 9
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    .line 10
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->mSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->mSigners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ApkSigResult Signing Block Scheme Id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->signatureSchemeVersion:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 5

    .line 13
    iget v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->signatureSchemeVersion:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 14
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV4Scheme:Z

    .line 15
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 16
    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-direct {v3, v0, v1}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Signing Block Scheme Id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV3Scheme:Z

    .line 19
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 20
    iget-object v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-direct {v4, v2, v1}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-nez v0, :cond_7

    .line 22
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    goto :goto_4

    .line 23
    :cond_3
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV2Scheme:Z

    .line 24
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 25
    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-direct {v3, v0, v1}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_4
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV31Scheme:Z

    .line 27
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 28
    iget-object v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mV31SchemeSigners:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-direct {v4, v2, v1}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_5
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    goto :goto_4

    .line 30
    :cond_6
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    .line 31
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 32
    new-instance v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    :cond_7
    :goto_4
    return-void
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV1Scheme:Z

    .line 2
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 5
    iget-object v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-direct {v4, v1, v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->ignoredSigners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 7
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-direct {v3, v0, v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setVerified()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerified:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public varargs addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public containsErrors()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->containsErrors()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    return v1

    .line 57
    :cond_3
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getWarnings()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    return v1

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_7

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->containsErrors()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_6

    .line 103
    .line 104
    return v1

    .line 105
    :cond_6
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getWarnings()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    return v1

    .line 120
    :cond_7
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_a

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_a

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->containsErrors()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_9

    .line 151
    .line 152
    return v1

    .line 153
    :cond_9
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 154
    .line 155
    if-eqz v3, :cond_8

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getWarnings()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_8

    .line 166
    .line 167
    return v1

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 169
    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->containsErrors()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_b

    .line 177
    .line 178
    return v1

    .line 179
    :cond_b
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 180
    .line 181
    if-eqz v0, :cond_c

    .line 182
    .line 183
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getWarnings()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_c

    .line 194
    .line 195
    return v1

    .line 196
    :cond_c
    const/4 v0, 0x0

    .line 197
    return v0
.end method

.method public getAllErrors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$1800(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getWarnings()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$1900(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getWarnings()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_6

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_6

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    .line 135
    .line 136
    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$2000(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    .line 142
    .line 143
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 144
    .line 145
    if-eqz v3, :cond_5

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getWarnings()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 156
    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getErrors()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    .line 165
    .line 166
    iget-boolean v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 167
    .line 168
    if-eqz v1, :cond_7

    .line 169
    .line 170
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getWarnings()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    .line 178
    .line 179
    :cond_7
    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public getSignerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSigningCertificateLineage()Lcom/android/apksig/SigningCertificateLineage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSourceStampInfo()Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV1SchemeIgnoredSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV1SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV2SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV31SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV31SchemeSigners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV3SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV4SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSourceStampVerified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerified:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerifiedUsingV1Scheme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV1Scheme:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerifiedUsingV2Scheme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV2Scheme:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerifiedUsingV31Scheme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV31Scheme:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerifiedUsingV3Scheme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV3Scheme:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerifiedUsingV4Scheme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV4Scheme:Z

    .line 2
    .line 3
    return v0
.end method

.method public setWarningsAsErrors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    .line 2
    .line 3
    return-void
.end method
