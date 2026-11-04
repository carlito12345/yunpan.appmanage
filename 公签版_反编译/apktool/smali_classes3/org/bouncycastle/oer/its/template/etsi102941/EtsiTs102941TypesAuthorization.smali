.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AuthorizationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final InnerAtResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "ok"

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "its-aa-cantparse"

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-string v0, "its-aa-badcontenttype"

    const/4 v4, 0x2

    aput-object v0, v1, v4

    const-string v0, "its-aa-imnottherecipient"

    const/4 v5, 0x3

    aput-object v0, v1, v5

    const-string v0, "its-aa-unknownencryptionalgorithm"

    const/4 v6, 0x4

    aput-object v0, v1, v6

    const-string v0, "its-aa-decryptionfailed"

    const/4 v7, 0x5

    aput-object v0, v1, v7

    const-string v0, "its-aa-keysdontmatch"

    const/4 v8, 0x6

    aput-object v0, v1, v8

    const-string v0, "its-aa-incompleterequest"

    const/4 v8, 0x7

    aput-object v0, v1, v8

    const-string v0, "its-aa-invalidencryptionkey"

    const/16 v8, 0x8

    aput-object v0, v1, v8

    const-string v0, "its-aa-outofsyncrequest"

    const/16 v8, 0x9

    aput-object v0, v1, v8

    const-string v0, "its-aa-unknownea"

    const/16 v8, 0xa

    aput-object v0, v1, v8

    const-string v0, "its-aa-invalidea"

    const/16 v8, 0xb

    aput-object v0, v1, v8

    const-string v0, "its-aa-deniedpermissions"

    const/16 v8, 0xc

    aput-object v0, v1, v8

    const-string v0, "aa-ea-cantreachea"

    const/16 v8, 0xd

    aput-object v0, v1, v8

    const-string v0, "ea-aa-cantparse"

    const/16 v8, 0xe

    aput-object v0, v1, v8

    const-string v0, "ea-aa-badcontenttype"

    const/16 v8, 0xf

    aput-object v0, v1, v8

    const-string v0, "ea-aa-imnottherecipient"

    const/16 v8, 0x10

    aput-object v0, v1, v8

    const-string v0, "ea-aa-unknownencryptionalgorithm"

    const/16 v9, 0x11

    aput-object v0, v1, v9

    const-string v0, "ea-aa-decryptionfailed"

    const/16 v9, 0x12

    aput-object v0, v1, v9

    const-string v0, "invalidaa"

    const/16 v9, 0x13

    aput-object v0, v1, v9

    const-string v0, "invalidaasignature"

    const/16 v9, 0x14

    aput-object v0, v1, v9

    const-string v0, "wrongea"

    const/16 v9, 0x15

    aput-object v0, v1, v9

    const-string v0, "unknownits"

    const/16 v9, 0x16

    aput-object v0, v1, v9

    const-string v0, "invalidsignature"

    const/16 v9, 0x17

    aput-object v0, v1, v9

    const-string v0, "invalidencryptionkey"

    const/16 v9, 0x18

    aput-object v0, v1, v9

    const-string v0, "deniedpermissions"

    const/16 v9, 0x19

    aput-object v0, v1, v9

    const-string v0, "deniedtoomanycerts"

    const/16 v9, 0x1a

    aput-object v0, v1, v9

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "AuthorizationResponseCode"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->AuthorizationResponseCode:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v9, "requestHash"

    invoke-virtual {v1, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v9, "responseCode"

    invoke-virtual {v0, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "certificate"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v9, v10, v2

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v1, v11, v2

    aput-object v0, v11, v3

    aput-object v9, v11, v4

    aput-object v10, v11, v5

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "InnerAtResponse"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtResponse:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "eaId"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v8, "keyTag"

    invoke-virtual {v1, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "certificateFormat"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->CertificateSubjectAttributes:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "requestedSubjectAttributes"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v8, v11, v4

    aput-object v9, v11, v5

    aput-object v10, v11, v6

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SharedAtRequest"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->SharedAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->PublicKeys:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "publicKeys"

    invoke-virtual {v1, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/16 v8, 0x20

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "hmacKey"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "sharedAtRequest"

    invoke-virtual {v0, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sget-object v9, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->EcSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "ecSignature"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    aput-object v8, v7, v3

    aput-object v0, v7, v4

    aput-object v9, v7, v5

    aput-object v10, v7, v6

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "InnerAtRequest"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TypesAuthorization;->InnerAtRequest:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
