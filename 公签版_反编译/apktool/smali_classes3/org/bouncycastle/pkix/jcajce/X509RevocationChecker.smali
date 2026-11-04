.class public Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;,
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;
    }
.end annotation


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field private static LOG:Ljava/util/logging/Logger;

.field public static final PKIX_VALIDITY_MODEL:I

.field protected static final crlReasons:[Ljava/lang/String;


# instance fields
.field private final canSoftFail:Z

.field private final crlCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentDate:Ljava/util/Date;

.field private final failHardMaxTime:J

.field private final failLogMaxTime:J

.field private final failures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isCheckEEOnly:Z

.field private signingCert:Ljava/security/cert/X509Certificate;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final validationDate:Ljava/util/Date;

.field private final validityModel:I

.field private workingIssuerName:Ljavax/security/auth/x500/X500Principal;

.field private workingPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "keyCompromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cACompromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "affiliationChanged"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "cessationOfOperation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "certificateHold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "unknown"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "removeFromCRL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "privilegeWithdrawn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "aACompromise"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$100(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$200(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$300(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$400(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validityModel:I

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$500(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$600(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$700(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$800(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$900(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$1000(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$1000(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$1100(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$1100(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V

    return-void
.end method

.method private addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Ljava/security/cert/CertStore;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    return-void
.end method

.method private addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    return-void
.end method

.method private downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Date;",
            "Lorg/bouncycastle/asn1/ASN1Primitive;",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v1

    :try_start_0
    const-string v0, "X.509"

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    new-instance v4, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v4, v0}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    :goto_0
    array-length v0, v1

    if-eq v7, v0, :cond_4

    aget-object v0, v1, v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    array-length v0, v8

    if-eq v9, v0, :cond_3

    aget-object v0, v8, v9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_1

    :try_start_1
    new-instance v10, Ljava/net/URI;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v11, p0

    :try_start_2
    iget-object v0, v11, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    invoke-static {v3, v0, v10}, Lorg/bouncycastle/pkix/jcajce/CrlCache;->getCrl(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)Lorg/bouncycastle/jcajce/PKIXCRLStore;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v13, p2

    :try_start_3
    invoke-static {v4, v13, v12, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v13, p2

    const/4 v10, 0x0

    :goto_2
    sget-object v12, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v12, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    const-string v15, " ignored: "

    const-string v6, "CrlDP "

    if-eqz v12, :cond_0

    sget-object v12, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v14, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_0
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    move-object/from16 v11, p0

    :cond_2
    move-object/from16 v13, p2

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v13, p2

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v11, p0

    return-object v5

    :catch_3
    move-exception v0

    move-object/from16 v11, p0

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const-string v3, "could not create certFact: "

    if-eqz v1, :cond_5

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    return-object v1
.end method

.method public static getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v0, "could not read distribution points could not be read"

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    iget-boolean p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 30
    .line 31
    if-nez p2, :cond_5

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 38
    .line 39
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/4 v0, 0x0

    .line 46
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 57
    .line 58
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    :cond_2
    move-object v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v0, "no trust anchor found for "

    .line 108
    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_5
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    :try_start_0
    new-instance v0, Ljava/security/cert/PKIXParameters;

    .line 131
    .line 132
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 135
    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 144
    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eq v2, v3, :cond_7

    .line 154
    .line 155
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 156
    .line 157
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/security/cert/CertStore;

    .line 172
    .line 173
    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_0
    move-exception p1

    .line 178
    goto/16 :goto_c

    .line 179
    .line 180
    :cond_6
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/security/cert/CertStore;

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_7
    new-instance v9, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 195
    .line 196
    invoke-direct {v9, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 197
    .line 198
    .line 199
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validityModel:I

    .line 200
    .line 201
    invoke-virtual {v9, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    const/4 v0, 0x0

    .line 205
    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eq v0, v2, :cond_9

    .line 212
    .line 213
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 214
    .line 215
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_8

    .line 222
    .line 223
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Lorg/bouncycastle/util/Store;

    .line 230
    .line 231
    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V

    .line 232
    .line 233
    .line 234
    :cond_8
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    .line 235
    .line 236
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Lorg/bouncycastle/util/Store;

    .line 243
    .line 244
    invoke-direct {v2, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/util/Store;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 248
    .line 249
    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    const-string v10, "\""

    .line 258
    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    sget-object p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 262
    .line 263
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 264
    .line 265
    const-string v1, "configured with 0 pre-loaded CRLs"

    .line 266
    .line 267
    invoke-virtual {p2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_a
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 272
    .line 273
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eq v1, v0, :cond_c

    .line 286
    .line 287
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 288
    .line 289
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 290
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v4, "configuring with CRL for issuer \""

    .line 294
    .line 295
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    add-int/lit8 v1, v1, 0x1

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_b
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 319
    .line 320
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 321
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v3, "configured with "

    .line 325
    .line 326
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p2, " pre-loaded CRLs"

    .line 337
    .line 338
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_c
    :goto_6
    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    .line 353
    .line 354
    invoke-static {v1, p2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 359
    .line 360
    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 361
    .line 362
    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 363
    .line 364
    new-instance v7, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .line 368
    .line 369
    iget-object v8, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 370
    .line 371
    move-object v0, p0

    .line 372
    move-object v3, p2

    .line 373
    move-object v4, p1

    .line 374
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    .line 376
    .line 377
    goto/16 :goto_a

    .line 378
    .line 379
    :catch_1
    move-exception v0

    .line 380
    goto :goto_7

    .line 381
    :catch_2
    move-exception p1

    .line 382
    goto/16 :goto_b

    .line 383
    .line 384
    :goto_7
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 385
    .line 386
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-interface {p1, v2}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    if-eqz v2, :cond_13

    .line 395
    .line 396
    :try_start_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-static {p1, v1}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 405
    .line 406
    invoke-direct {p0, v2, p2, v1, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    .line 407
    .line 408
    .line 409
    move-result-object p2
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 410
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-nez v1, :cond_d

    .line 415
    .line 416
    :try_start_3
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    .line 417
    .line 418
    new-instance v1, Lorg/bouncycastle/util/CollectionStore;

    .line 419
    .line 420
    invoke-direct {v1, p2}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    .line 421
    .line 422
    .line 423
    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/util/Store;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v9, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validationDate:Ljava/util/Date;

    .line 434
    .line 435
    invoke-static {v1, p2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 440
    .line 441
    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 442
    .line 443
    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 444
    .line 445
    new-instance v7, Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .line 449
    .line 450
    iget-object v8, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 451
    .line 452
    move-object v0, p0

    .line 453
    move-object v4, p1

    .line 454
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 455
    .line 456
    .line 457
    goto :goto_a

    .line 458
    :catch_3
    move-exception p1

    .line 459
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    .line 460
    .line 461
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    .line 471
    .line 472
    throw p2

    .line 473
    :cond_d
    iget-boolean p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    .line 474
    .line 475
    if-eqz p2, :cond_12

    .line 476
    .line 477
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 478
    .line 479
    .line 480
    move-result-object p2

    .line 481
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    .line 482
    .line 483
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    check-cast v1, Ljava/lang/Long;

    .line 488
    .line 489
    if-eqz v1, :cond_11

    .line 490
    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 492
    .line 493
    .line 494
    move-result-wide v2

    .line 495
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 496
    .line 497
    .line 498
    move-result-wide v4

    .line 499
    sub-long/2addr v2, v4

    .line 500
    iget-wide v4, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    .line 501
    .line 502
    const-wide/16 v6, -0x1

    .line 503
    .line 504
    cmp-long v1, v4, v6

    .line 505
    .line 506
    if-eqz v1, :cond_f

    .line 507
    .line 508
    cmp-long v1, v4, v2

    .line 509
    .line 510
    if-ltz v1, :cond_e

    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_e
    throw v0

    .line 514
    :cond_f
    :goto_8
    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    .line 515
    .line 516
    const-string v4, "soft failing for issuer: \""

    .line 517
    .line 518
    cmp-long v5, v2, v0

    .line 519
    .line 520
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 521
    .line 522
    if-gez v5, :cond_10

    .line 523
    .line 524
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 525
    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    :goto_9
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p2

    .line 541
    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_10
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 546
    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    .line 554
    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 556
    .line 557
    .line 558
    move-result-wide v1

    .line 559
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    :goto_a
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 567
    .line 568
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 569
    .line 570
    .line 571
    move-result-object p2

    .line 572
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 573
    .line 574
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 579
    .line 580
    return-void

    .line 581
    :cond_12
    throw v0

    .line 582
    :catch_4
    move-exception p1

    .line 583
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    .line 584
    .line 585
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    .line 595
    .line 596
    throw p2

    .line 597
    :cond_13
    throw v0

    .line 598
    :goto_b
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    .line 599
    .line 600
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 609
    .line 610
    .line 611
    throw p2

    .line 612
    :goto_c
    new-instance p2, Ljava/lang/RuntimeException;

    .line 613
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v1, "error setting up baseParams: "

    .line 617
    .line 618
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-static {p1, v0}, Ll2/z;->m(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    goto :goto_e

    .line 629
    :goto_d
    throw p2

    .line 630
    :goto_e
    goto :goto_d
.end method

.method public checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 21

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v13, Lorg/bouncycastle/pkix/jcajce/CertStatus;

    invoke-direct {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;-><init>()V

    new-instance v14, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-direct {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v9, 0xb

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v8, :cond_2

    new-instance v1, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v7, p1

    invoke-direct {v1, v7}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v6

    move-object/from16 v5, p2

    invoke-static {v6, v5}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v16

    move-object v0, v10

    const/4 v4, 0x0

    const/16 v17, 0x0

    :goto_1
    array-length v1, v8

    if-ge v4, v1, :cond_1

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v9, :cond_1

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_3
    aget-object v1, v8, v4
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v6

    move-object/from16 v3, p2

    move/from16 v18, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v20, v8

    move-object v8, v13

    const/16 v15, 0xb

    move-object v9, v14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    :try_start_4
    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v17, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    const/16 v15, 0xb

    :goto_2
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/16 v15, 0xb

    goto :goto_5

    :goto_3
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no additional CRL locations could be decoded from CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/16 v15, 0xb

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read distribution points"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v15, :cond_3

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    const/4 v6, 0x4

    invoke-direct {v5, v6, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v1, 0x0

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1, v1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    const/16 v17, 0x1

    goto :goto_6

    :catch_4
    move-exception v0

    :cond_3
    :goto_6
    if-nez v17, :cond_5

    instance-of v1, v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no valid CRL found"

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_8

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_6

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->setCertStatus(I)V

    :cond_6
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v1, "certificate status could not be determined"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "certificate [issuer=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\",serialNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",subject=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\"] revoked after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", reason: "

    .line 1
    invoke-static {v0, v1}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "forward processing not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
