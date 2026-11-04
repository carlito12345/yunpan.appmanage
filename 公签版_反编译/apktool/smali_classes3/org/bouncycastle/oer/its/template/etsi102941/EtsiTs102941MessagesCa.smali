.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AuthorizationRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final AuthorizationRequestMessageWithPop:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final AuthorizationResponseMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final AuthorizationValidationRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CaCertificateRekeyingMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CaCertificateRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateRevocationListMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EnrolmentRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EnrolmentResponseMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EtsiTs102941Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EtsiTs102941DataContent:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RcaCertificateTrustListMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RcaDoubleSignedLinkCertificateMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RcaSingleSignedLinkCertificateMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final TlmCertificateTrustListMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final TlmLinkCertificateMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_SignedAndEncrypted_Unicast:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "EnrolmentRequestMessage"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->EnrolmentRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "EnrolmentResponseMessage"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->EnrolmentResponseMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Encrypted_Unicast:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "AuthorizationRequestMessage"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->AuthorizationRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "AuthorizationRequestMessageWithPop"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->AuthorizationRequestMessageWithPop:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "AuthorizationResponseMessage"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->AuthorizationResponseMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Data_Signed:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "CertificateRevocationListMessage"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->CertificateRevocationListMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "TlmCertificateTrustListMessage"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->TlmCertificateTrustListMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "RcaCertificateTrustListMessage"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->RcaCertificateTrustListMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "RcaSingleSignedLinkCertificateMessage"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->RcaSingleSignedLinkCertificateMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v3, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesEnrolment;->InnerEcRequestSignedForPop:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "enrolmentRequest"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesEnrolment;->InnerEcResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v5, "enrolmentResponse"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "authorizationRequest"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "authorizationResponse"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "certificateRevocationList"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "certificateTrustListTlm"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "certificateTrustListRca"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v11, "authorizationValidationRequest"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "authorizationValidationResponse"

    invoke-virtual {v11, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesCaManagement;->CaCertificateRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "caCertificateRequest"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesLinkCertificate;->ToBeSignedLinkCertificateTlm:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "linkCertificateTlm"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesLinkCertificate;->ToBeSignedLinkCertificateRca:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v15, "singleSignedLinkCertificateRca"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "doubleSignedlinkCertificateRca"

    invoke-virtual {v2, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const/4 v15, 0x3

    move-object/from16 v16, v1

    new-array v1, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v13, v1, v17

    const/4 v13, 0x1

    aput-object v14, v1, v13

    const/4 v14, 0x2

    aput-object v2, v1, v14

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v17

    aput-object v4, v2, v13

    aput-object v5, v2, v14

    aput-object v6, v2, v15

    const/4 v3, 0x4

    aput-object v7, v2, v3

    const/4 v3, 0x5

    aput-object v8, v2, v3

    const/4 v3, 0x6

    aput-object v9, v2, v3

    const/4 v3, 0x7

    aput-object v10, v2, v3

    const/16 v3, 0x8

    aput-object v11, v2, v3

    const/16 v3, 0x9

    aput-object v12, v2, v3

    const/16 v3, 0xa

    aput-object v1, v2, v3

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "EtsiTs102941DataContent"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->EtsiTs102941DataContent:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v2, v3, v17

    aput-object v1, v3, v13

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "EtsiTs102941Data"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->EtsiTs102941Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "AuthorizationValidationRequestMessage"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->AuthorizationValidationRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v0, "CaCertificateRequestMessage"

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->CaCertificateRequestMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v0, "CaCertificateRekeyingMessage"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->CaCertificateRekeyingMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v0, "TlmLinkCertificateMessage"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->TlmLinkCertificateMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v0, "RcaDoubleSignedLinkCertificateMessage"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941MessagesCa;->RcaDoubleSignedLinkCertificateMessage:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
