.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Url:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "CrlEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v3, "SequenceOfCrlEntry"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v3, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v5, "version"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "thisUpdate"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "nextUpdate"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v11, "entries"

    invoke-virtual {v1, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    const/4 v12, 0x5

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v6, v13, v4

    aput-object v8, v13, v2

    const/4 v6, 0x2

    aput-object v10, v13, v6

    const/4 v8, 0x3

    aput-object v1, v13, v8

    const/4 v1, 0x4

    aput-object v11, v13, v1

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v11, "ToBeSignedCrl"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->ia5String()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v11, "Url"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v11, "DcDelete"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "url"

    invoke-virtual {v10, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    sget-object v14, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfHashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v15, "cert"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v13, v12, v4

    aput-object v14, v12, v2

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    const-string v13, "DcEntry"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sput-object v12, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v13, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "aaCertificate"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v1, "accessPoint"

    invoke-virtual {v10, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v16

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v14, v8, v4

    aput-object v16, v8, v2

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v14, "AaEntry"

    invoke-virtual {v8, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "eaCertificate"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v6, "aaAccessPoint"

    invoke-virtual {v10, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v4, "itsAccessPoint"

    invoke-virtual {v10, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    move-object/from16 v18, v7

    new-array v7, v2, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v7, v17

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v19, v9

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v14, v9, v17

    aput-object v6, v9, v2

    const/4 v6, 0x2

    aput-object v4, v9, v6

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v6, "EaEntry"

    invoke-virtual {v4, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "selfsignedRootCa"

    invoke-virtual {v13, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "successorTo"

    invoke-virtual {v13, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    new-array v14, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v14, v2

    invoke-static {v14}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v20, v3

    const/4 v14, 0x2

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v6, v3, v2

    const/4 v6, 0x1

    aput-object v9, v3, v6

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v9, "RootCaEntry"

    invoke-virtual {v3, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "selfSignedTLMCertificate"

    invoke-virtual {v13, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    invoke-virtual {v13, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v7, v13, v2

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v10, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v10, 0x3

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v2

    aput-object v7, v13, v6

    const/4 v6, 0x2

    aput-object v1, v13, v6

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v6, "TlmEntry"

    invoke-virtual {v1, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v6, "dc"

    invoke-virtual {v11, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v9

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v0, v11, v2

    const/4 v0, 0x1

    aput-object v7, v11, v0

    const/4 v0, 0x2

    aput-object v9, v11, v0

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v2, "CtlDelete"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "rca"

    invoke-virtual {v3, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "ea"

    invoke-virtual {v4, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v4, "aa"

    invoke-virtual {v8, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    invoke-virtual {v12, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "tlm"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v8

    const/4 v9, 0x6

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v2, v10, v7

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v2, 0x2

    aput-object v4, v10, v2

    const/4 v2, 0x3

    aput-object v6, v10, v2

    const/4 v2, 0x4

    aput-object v1, v10, v2

    const/4 v1, 0x5

    aput-object v8, v10, v1

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "CtlEntry"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "add"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v3

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const/4 v0, 0x2

    aput-object v3, v6, v0

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v3, "CtlCommand"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SequenceOfCtlCommand"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-object/from16 v1, v20

    invoke-virtual {v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->bool()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v4, "isFullCtl"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xff

    invoke-static {v4, v5, v6, v7}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "ctlSequence"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "ctlCommands"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v5

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object v0, v7, v1

    const/4 v0, 0x5

    aput-object v6, v7, v0

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CtlFormat"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "DeltaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "FullCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "ToBeSignedRcaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
