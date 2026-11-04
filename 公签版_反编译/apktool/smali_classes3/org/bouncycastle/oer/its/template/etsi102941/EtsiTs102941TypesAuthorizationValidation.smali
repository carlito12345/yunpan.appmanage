.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AuthorizationValidationRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final AuthorizationValidationResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final AuthorizationValidationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "ok"

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "cantparse"

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-string v0, "badcontenttype"

    const/4 v4, 0x2

    aput-object v0, v1, v4

    const-string v0, "imnottherecipient"

    const/4 v5, 0x3

    aput-object v0, v1, v5

    const-string v0, "unknownencryptionalgorithm"

    const/4 v6, 0x4

    aput-object v0, v1, v6

    const-string v0, "decryptionfailed"

    const/4 v7, 0x5

    aput-object v0, v1, v7

    const-string v0, "invalidaa"

    const/4 v7, 0x6

    aput-object v0, v1, v7

    const-string v0, "invalidaasignature"

    const/4 v7, 0x7

    aput-object v0, v1, v7

    const-string v0, "wrongea"

    const/16 v7, 0x8

    aput-object v0, v1, v7

    const-string v0, "unknownits"

    const/16 v7, 0x9

    aput-object v0, v1, v7

    const-string v0, "invalidsignature"

    const/16 v7, 0xa

    aput-object v0, v1, v7

    const-string v0, "invalidencryptionkey"

    const/16 v7, 0xb

    aput-object v0, v1, v7

    const-string v0, "deniedpermissions"

    const/16 v7, 0xc

    aput-object v0, v1, v7

    const-string v0, "deniedtoomanycerts"

    const/16 v7, 0xd

    aput-object v0, v1, v7

    const-string v0, "deniedrequest"

    const/16 v7, 0xe

    aput-object v0, v1, v7

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "AuthorizationValidationResponseCode"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "sharedAtRequest"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "ecSignature"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v1, v9, v2

    aput-object v7, v9, v3

    aput-object v8, v9, v4

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v7, "AuthorizationValidationRequest"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v7, "requestHash"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v7, "responseCode"

    invoke-virtual {v0, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "confirmedSubjectAttributes"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v0, v6, v3

    aput-object v7, v6, v4

    aput-object v8, v6, v5

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "AuthorizationValidationResponse"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorizationValidation;->AuthorizationValidationResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
