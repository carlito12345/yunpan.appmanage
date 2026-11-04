.class public Lorg/bouncycastle/pkix/util/X509CertificateFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static extUsageMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/KeyPurposeId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keyAlgMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oidMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final spaceStr:Ljava/lang/String; = "                                                              "

.field private static usageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectDirectoryAttributes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "subjectDirectoryAttributes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "subjectKeyIdentifier"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "keyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->privateKeyUsagePeriod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "privateKeyUsagePeriod"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "subjectAlternativeName"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "issuerAlternativeName"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "basicConstraints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "cRLNumber"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "reasonCode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->instructionCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "instructionCode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->invalidityDate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "invalidityDate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "deltaCRLIndicator"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "issuingDistributionPoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "certificateIssuer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->nameConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "nameConstraints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "cRLDistributionPoints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "certificatePolicies"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->policyMappings:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "policyMappings"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "authorityKeyIdentifier"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "policyConstraints"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "extendedKeyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "freshestCRL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "inhibitAnyPolicy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "authorityInfoAccess"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "subjectInfoAccess"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->logoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "logoType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->biometricInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "biometricInfo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "qCStatements"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->auditIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "auditIdentity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->noRevAvail:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "noRevAvail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "targetInformation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->expiredCertsOnCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "expiredCertsOnCRL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "digitalSignature"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nonRepudiation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyEncipherment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataEncipherment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyAgreement"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyCertSign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cRLSign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encipherOnly"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "decipherOnly"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "anyExtendedKeyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_serverAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_clientAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_codeSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_emailProtection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecEndSystem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecTunnel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecUser"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_timeStamping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_OCSPSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_dvcs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_sbgpCertAAServerAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_scvp_responder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_eapOverPPP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_eapOverLAN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_scvpServer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_scvpClient"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_ipsecIKE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_capwapAC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_capwapWTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmcCA:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_cmcCA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmcRA:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_cmcRA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_cmKGA:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_cmKGA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_smartcardlogon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_macAddress:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_macAddress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_msSGC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_msSGC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_nsSGC:Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v2, "id_kp_nsSGC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "rsaEncryption"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "id_ecPublicKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "id_Ed25519"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "id_Ed448"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lorg/bouncycastle/operator/DefaultSignatureNameFinder;

    .line 11
    .line 12
    invoke-direct {v2}, Lorg/bouncycastle/operator/DefaultSignatureNameFinder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lorg/bouncycastle/operator/DefaultSignatureNameFinder;->getAlgorithmName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "WITH"

    .line 24
    .line 25
    const-string v4, "with"

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "  [0]         Version: "

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getVersionNumber()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, "         SerialNumber: "

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, "             IssuerDN: "

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, "           Start Date: "

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getNotBefore()Ljava/util/Date;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v4, "           Final Date: "

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, "            SubjectDN: "

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v4, "           Public Key: "

    .line 138
    .line 139
    const-string v5, "                       "

    .line 140
    .line 141
    invoke-static {v0, v4, v3, v1, v5}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3, v0, v1}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->prettyPrintData([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_a

    .line 164
    .line 165
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_1

    .line 174
    .line 175
    const-string v6, "           Extensions: "

    .line 176
    .line 177
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_a

    .line 188
    .line 189
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 194
    .line 195
    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    if-eqz v8, :cond_0

    .line 204
    .line 205
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    new-instance v9, Lorg/bouncycastle/asn1/ASN1InputStream;

    .line 214
    .line 215
    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 216
    .line 217
    .line 218
    :try_start_0
    invoke-static {v6}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v10, ": critical("

    .line 229
    .line 230
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/Extension;->isCritical()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v7, ") "

    .line 241
    .line 242
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    add-int/lit8 v10, v10, 0x2

    .line 261
    .line 262
    invoke-static {v10}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->spaces(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    sget-object v10, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 274
    .line 275
    invoke-virtual {v6, v10}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-eqz v10, :cond_3

    .line 280
    .line 281
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-static {v9}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v10, "isCA : "

    .line 298
    .line 299
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_1

    .line 324
    .line 325
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    add-int/lit8 v7, v7, 0x2

    .line 330
    .line 331
    invoke-static {v7}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->spaces(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v8, "pathLenConstraint : "

    .line 344
    .line 345
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_3
    sget-object v8, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 368
    .line 369
    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 370
    .line 371
    .line 372
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    const/4 v10, 0x0

    .line 374
    const-string v11, ", "

    .line 375
    .line 376
    const/4 v12, 0x1

    .line 377
    if-eqz v8, :cond_6

    .line 378
    .line 379
    :try_start_1
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    sget-object v7, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    .line 391
    .line 392
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    if-eqz v9, :cond_2

    .line 405
    .line 406
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    check-cast v9, Ljava/lang/Integer;

    .line 411
    .line 412
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 413
    .line 414
    .line 415
    move-result v13

    .line 416
    invoke-virtual {v8, v13}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    if-eqz v13, :cond_4

    .line 421
    .line 422
    if-nez v12, :cond_5

    .line 423
    .line 424
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    goto :goto_4

    .line 428
    :cond_5
    const/4 v12, 0x0

    .line 429
    :goto_4
    sget-object v13, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->usageMap:Ljava/util/Map;

    .line 430
    .line 431
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    check-cast v9, Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    goto :goto_3

    .line 441
    :cond_6
    sget-object v8, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 442
    .line 443
    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-eqz v8, :cond_9

    .line 448
    .line 449
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    sget-object v7, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    .line 461
    .line 462
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    :cond_7
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v9

    .line 474
    if-eqz v9, :cond_2

    .line 475
    .line 476
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    check-cast v9, Lorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 481
    .line 482
    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->hasKeyPurposeId(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z

    .line 483
    .line 484
    .line 485
    move-result v13

    .line 486
    if-eqz v13, :cond_7

    .line 487
    .line 488
    if-nez v12, :cond_8

    .line 489
    .line 490
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    goto :goto_6

    .line 494
    :cond_8
    const/4 v12, 0x0

    .line 495
    :goto_6
    sget-object v13, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->extUsageMap:Ljava/util/Map;

    .line 496
    .line 497
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    check-cast v9, Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    goto :goto_5

    .line 507
    :cond_9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v8, "value = "

    .line 511
    .line 512
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    new-instance v8, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const/16 v7, 0x8

    .line 524
    .line 525
    invoke-static {v7}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->spaces(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 537
    .line 538
    .line 539
    move-result-object v8

    .line 540
    invoke-static {v8}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v8

    .line 544
    invoke-static {v7, v8, v1}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->indent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 548
    goto/16 :goto_2

    .line 549
    .line 550
    :catch_0
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    const-string v6, " value = "

    .line 558
    .line 559
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string v6, "*****"

    .line 563
    .line 564
    goto/16 :goto_0

    .line 565
    .line 566
    :cond_a
    const-string v3, "  Signature Algorithm: "

    .line 567
    .line 568
    const-string v4, "            Signature: "

    .line 569
    .line 570
    invoke-static {v0, v3, v2, v1, v4}, Landroid/support/v4/media/session/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

    .line 574
    .line 575
    .line 576
    move-result-object p0

    .line 577
    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->prettyPrintData([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p0

    .line 584
    return-object p0
.end method

.method public static format(Ljava/lang/StringBuilder;[BLjava/lang/String;)V
    .locals 4

    const/16 v0, 0x14

    const/16 v1, 0x14

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    array-length v2, p1

    sub-int/2addr v2, v0

    const-string v3, "                       "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v2, :cond_0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static indent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static keyAlgToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->keyAlgMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser;

    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v0}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->asString(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static oidToLabel(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prettyPrintData([BLjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/pkix/util/X509CertificateFormatter;->format(Ljava/lang/StringBuilder;[BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private static spaces(I)Ljava/lang/String;
    .locals 2

    const-string v0, "                                                              "

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
