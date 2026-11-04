.class public Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AesCcmCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CertificateType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ContributedExtensionBlock:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ContributedExtensionBlockSwitch:Lorg/bouncycastle/oer/Switch;

.field public static final ContributedExtensionBlocks:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CounterSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EncryptedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EncryptedDataEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EndEntityType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ExplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HashedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HeaderInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final HeaderInfoContributorId:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Ieee1609Dot2Content:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Ieee1609Dot2Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ImplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final IssuerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final LinkageData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final MissingCrlIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Opaque:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PKRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PduFunctionalType:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PreSharedKeyRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final PsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignedDataPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SignerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SubjectPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SymmRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SymmetricCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final VerificationKeyIndicator:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field private static final etsiHeaderInfoContributorId:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static explicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final extensionBlockSwitchKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

.field private static implicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->octets()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Opaque"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Opaque:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xff

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v6, "PduFunctionalType"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PduFunctionalType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v6, 0x20

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "sha256HashedData"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const/16 v8, 0x30

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "sha384HashedData"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v9, "reserved"

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v8, 0x1

    aput-object v6, v10, v8

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v6

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v7, v10, v11

    aput-object v6, v10, v8

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "HashedData"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->HashedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "cracaId"

    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->CrlSeries:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v14, "crlSeries"

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v12, v3, v11

    aput-object v15, v3, v8

    aput-object v1, v3, v9

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v3, "MissingCrlIdentifier"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->MissingCrlIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v4, Lorg/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->etsiHeaderInfoContributorId:Lorg/bouncycastle/asn1/ASN1Integer;

    new-array v4, v8, [Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v3, v4, v11

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->extensionBlockSwitchKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-object v15, v5

    move-object v12, v10

    const-wide/16 v4, 0xff

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v4, v5}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "HeaderInfoContributorId"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    new-array v5, v8, [Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v3, v5, v11

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->HeaderInfoContributorId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$1;

    invoke-direct {v4}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$1;-><init>()V

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ContributedExtensionBlockSwitch:Lorg/bouncycastle/oer/Switch;

    const-string v5, "contributorId"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->aSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v5, "Extn"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v11

    aput-object v5, v9, v8

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v5, "ContributedExtensionBlock"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ContributedExtensionBlock:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v11

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-wide/16 v9, 0x1

    invoke-virtual {v3, v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v5, "ContributedExtensionBlocks"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ContributedExtensionBlocks:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v5, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "PreSharedKeyRecipientInfo"

    invoke-virtual {v5, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PreSharedKeyRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->EciesP256EncryptedKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "eciesNistP256"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v8, "eciesBrainpoolP256r1"

    invoke-virtual {v9, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v9

    move-object/from16 v21, v4

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v10, v4, v11

    const/4 v10, 0x1

    aput-object v8, v4, v10

    const/4 v8, 0x2

    aput-object v9, v4, v8

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v9, "EncryptedDataEncryptionKey"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->EncryptedDataEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "recipientId"

    invoke-virtual {v5, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v2, "encKey"

    invoke-virtual {v4, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v22

    new-array v4, v8, [Ljava/lang/Object;

    move-object/from16 v8, v21

    move-object/from16 v21, v4

    aput-object v10, v21, v11

    const/4 v10, 0x1

    aput-object v22, v21, v10

    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    const-string v4, "PKRecipientInfo"

    invoke-virtual {v10, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PKRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->octets(I)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v11, "nonce"

    invoke-virtual {v4, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    const-string v11, "ccmCiphertext"

    invoke-virtual {v0, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    move-object/from16 v21, v0

    move-object/from16 v23, v6

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    const/16 v20, 0x1

    aput-object v11, v0, v20

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v4, "AesCcmCiphertext"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->AesCcmCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "aes128ccm"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v4

    move-object/from16 v24, v3

    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v4, v3, v20

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v3, "SymmetricCiphertext"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SymmetricCiphertext:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v5, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v6

    aput-object v2, v9, v20

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "SymmRecipientInfo"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SymmRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "pskRecipInfo"

    invoke-virtual {v8, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "symmRecipInfo"

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v6, "certRecipInfo"

    invoke-virtual {v10, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v8, "signedDataRecipInfo"

    invoke-virtual {v10, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v9, "rekRecipInfo"

    invoke-virtual {v10, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v3, v11, v22

    const/4 v3, 0x1

    aput-object v2, v11, v3

    const/4 v2, 0x2

    aput-object v6, v11, v2

    const/4 v2, 0x3

    aput-object v8, v11, v2

    const/4 v2, 0x4

    aput-object v9, v11, v2

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v8, "RecipientInfo"

    invoke-virtual {v6, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->RecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v6, v8, v22

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "SequenceOfRecipientInfo"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfRecipientInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "recipients"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "ciphertext"

    invoke-virtual {v0, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v22

    const/4 v3, 0x1

    aput-object v0, v6, v3

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v3, "EncryptedData"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->EncryptedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Lorg/bouncycastle/oer/OERDefinition;->bitString(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    new-instance v6, Lorg/bouncycastle/asn1/DERBitString;

    const/16 v8, 0x80

    invoke-direct {v6, v8}, Lorg/bouncycastle/asn1/DERBitString;-><init>(I)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "EndEntityType"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->EndEntityType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfPsidSspRange:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "explicit"

    invoke-virtual {v6, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v11, "all"

    invoke-virtual {v9, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v11, 0x0

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v4

    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v6, v2, v11

    const/4 v6, 0x1

    aput-object v9, v2, v6

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v6, "SubjectPermissions"

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SubjectPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicVerificationKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "verificationKey"

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->EccP256CurvePoint:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "reconstructionValue"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    move-object/from16 v25, v0

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v6, v0, v10

    const/4 v4, 0x1

    aput-object v9, v0, v4

    const/4 v4, 0x2

    aput-object v11, v0, v4

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v6, "VerificationKeyIndicator"

    invoke-virtual {v0, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->VerificationKeyIndicator:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "subjectPermissions"

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Lorg/bouncycastle/oer/OERDefinition;->integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v9, "minChainLength"

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Lorg/bouncycastle/oer/OERDefinition;->integer(J)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v10, "chainLengthRange"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v10, "eeType"

    invoke-virtual {v3, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v11, v10

    const/4 v2, 0x1

    aput-object v6, v11, v2

    const/4 v4, 0x2

    aput-object v9, v11, v4

    const/4 v6, 0x3

    aput-object v3, v11, v6

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "PsidGroupPermissions"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->PsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v10

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "SequenceOfPsidGroupPermissions"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfPsidGroupPermissions:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->IValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "iCert"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->LinkageValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "linkageValue"

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->GroupLinkageValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "groupLinkageValue"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v11, v4

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    move-object/from16 v16, v15

    const/4 v10, 0x4

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v3, v15, v4

    const/4 v3, 0x1

    aput-object v6, v15, v3

    const/4 v3, 0x2

    aput-object v9, v15, v3

    const/4 v3, 0x3

    aput-object v11, v15, v3

    invoke-static {v15}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "LinkageData"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->LinkageData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v6, "linkageData"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Hostname:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const/16 v9, 0x40

    const/4 v10, 0x1

    invoke-static {v10, v9}, Lorg/bouncycastle/oer/OERDefinition;->octets(II)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v11, "binaryId"

    invoke-virtual {v9, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    const-string v15, "none"

    invoke-virtual {v11, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    const/4 v15, 0x0

    new-array v4, v15, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v17

    move-object/from16 v18, v1

    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v15

    aput-object v6, v1, v10

    const/4 v3, 0x2

    aput-object v9, v1, v3

    const/4 v3, 0x3

    aput-object v11, v1, v3

    const/4 v3, 0x4

    aput-object v17, v1, v3

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v3, "CertificateId"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateId:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    invoke-virtual {v7, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-virtual {v13, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    sget-object v9, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->ValidityPeriod:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v10, "validityPeriod"

    invoke-virtual {v9, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->GeographicRegion:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v11, "region"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SubjectAssurance:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v12, "assuranceLevel"

    invoke-virtual {v11, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfPsidSsp:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "appPermissions"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    const-string v13, "certIssuePermissions"

    invoke-virtual {v2, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v13

    const-string v14, "certRequestPermissions"

    invoke-virtual {v2, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const-string v15, "canRequestRollover"

    invoke-virtual {v14, v15}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    sget-object v15, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->PublicEncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "encryptionKey"

    invoke-virtual {v15, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v15

    move-object/from16 v17, v4

    const/4 v4, 0x7

    move-object/from16 v19, v7

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v7, v4

    const/4 v10, 0x1

    aput-object v11, v7, v10

    const/4 v10, 0x2

    aput-object v12, v7, v10

    const/4 v11, 0x3

    aput-object v13, v7, v11

    const/4 v11, 0x4

    aput-object v2, v7, v11

    const/4 v2, 0x5

    aput-object v14, v7, v2

    const/4 v2, 0x6

    aput-object v15, v7, v2

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v11, "verifyKeyIndicator"

    invoke-virtual {v0, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v1, v12, v4

    const/4 v1, 0x1

    aput-object v3, v12, v1

    const/4 v1, 0x2

    aput-object v6, v12, v1

    const/4 v3, 0x3

    aput-object v9, v12, v3

    const/4 v3, 0x4

    aput-object v7, v12, v3

    const/4 v3, 0x5

    aput-object v0, v12, v3

    aput-object v11, v12, v2

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v3, "ToBeSignedCertificate"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "sha256AndDigest"

    invoke-virtual {v5, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v6, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashAlgorithm:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "self"

    invoke-virtual {v6, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v9, "sha384AndDigest"

    invoke-virtual {v5, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v9

    const/4 v11, 0x3

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v3, v13, v12

    aput-object v7, v13, v10

    const/4 v1, 0x2

    aput-object v9, v13, v1

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v7, "IssuerIdentifier"

    invoke-virtual {v3, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->IssuerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "implicit"

    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v9

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v7, v11, v12

    const/4 v7, 0x1

    aput-object v8, v11, v7

    const/4 v1, 0x2

    aput-object v9, v11, v1

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->enumeration([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "CertificateType"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateType:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    sput-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->explicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    sput-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->implicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->UINT8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "version"

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    const-string v12, "issuer"

    invoke-virtual {v3, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v12, "toBeSigned"

    invoke-virtual {v0, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sget-object v12, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Signature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v13, "signature"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v1, v15, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v14, v1, v20

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v14, 0x5

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v9, v2, v20

    aput-object v11, v2, v15

    const/4 v9, 0x2

    aput-object v3, v2, v9

    const/4 v9, 0x3

    aput-object v0, v2, v9

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CertificateBase"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CertificateBase:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "Certificate"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "ExplicitCertificate"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const/4 v9, 0x1

    new-array v11, v9, [Lorg/bouncycastle/asn1/ASN1Encodable;

    sget-object v14, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->explicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v15, 0x0

    aput-object v14, v11, v15

    invoke-virtual {v7, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ExplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "ImplicitCertificate"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    new-array v2, v9, [Lorg/bouncycastle/asn1/ASN1Encodable;

    sget-object v11, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->implicitOrdinal:Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object v11, v2, v15

    invoke-virtual {v7, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ImplicitCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v1, v0, v15

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v2, "SequenceOfCertificate"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SequenceOfCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "digest"

    invoke-virtual {v5, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v5, "certificate"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->nullValue()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v5}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v5

    const/4 v7, 0x4

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v2, v9, v15

    const/4 v2, 0x1

    aput-object v0, v9, v2

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/4 v2, 0x3

    aput-object v5, v9, v2

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "SignerIdentifier"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SignerIdentifier:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Psid:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v4, "psid"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time64:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v5, "generationTime"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v7, "expiryTime"

    invoke-virtual {v4, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->ThreeDLocation:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v9, "generationLocation"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v9, "p2pcdLearningRequest"

    move-object/from16 v10, v19

    invoke-virtual {v10, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const-string v10, "missingCrlIdentifier"

    move-object/from16 v11, v18

    invoke-virtual {v11, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->EncryptionKey:Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-object/from16 v14, v17

    invoke-virtual {v11, v14}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v5, 0x1

    aput-object v4, v14, v5

    const/4 v0, 0x2

    aput-object v7, v14, v0

    const/4 v0, 0x3

    aput-object v9, v14, v0

    const/4 v0, 0x4

    aput-object v10, v14, v0

    const/4 v0, 0x5

    aput-object v11, v14, v0

    invoke-static {v14}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v5, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfHashedId3:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v7, "inlineP2pcdRequest"

    invoke-virtual {v5, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v7, "requestedCertificate"

    invoke-virtual {v1, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v7, "pduFunctionalType"

    move-object/from16 v9, v16

    invoke-virtual {v9, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v9, "contributedExtensions"

    move-object/from16 v10, v24

    invoke-virtual {v10, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v9

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v11, v10

    const/4 v5, 0x1

    aput-object v1, v11, v5

    const/4 v1, 0x2

    aput-object v7, v11, v1

    const/4 v4, 0x3

    aput-object v9, v11, v4

    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v7, v9, v10

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v10

    aput-object v0, v9, v5

    aput-object v7, v9, v1

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "HeaderInfo"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->HeaderInfo:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "hashId"

    invoke-virtual {v6, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$2;

    invoke-direct {v3}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$2;-><init>()V

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->deferred(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v5, "tbsData"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v5, "signer"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v7, v6

    const/4 v1, 0x1

    aput-object v3, v7, v1

    const/4 v1, 0x2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    aput-object v5, v7, v1

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "SignedData"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "unsecuredData"

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;

    invoke-direct {v3}, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;-><init>()V

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->deferred(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v5, "signedData"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    const-string v6, "encryptedData"

    move-object/from16 v7, v25

    invoke-virtual {v7, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    const-string v7, "signedCertificateRequest"

    invoke-virtual {v2, v7}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v9

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v7

    aput-object v3, v10, v5

    const/4 v1, 0x2

    aput-object v6, v10, v1

    const/4 v3, 0x3

    aput-object v2, v10, v3

    const/4 v2, 0x4

    aput-object v9, v10, v2

    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "Ieee1609Dot2Content"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Ieee1609Dot2Content:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "protocolVersion"

    invoke-virtual {v8, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v9, v1

    const/4 v5, 0x1

    aput-object v7, v9, v5

    invoke-static {v9}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v9, "CounterSignature"

    invoke-virtual {v7, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->CounterSignature:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v9, 0x3

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-array v9, v5, [Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object v7, v9, v1

    invoke-virtual {v8, v9}, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-virtual {v2, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v2, v6, v5

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "Ieee1609Dot2Data"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->Ieee1609Dot2Data:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "extDataHash"

    move-object/from16 v6, v23

    invoke-virtual {v6, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v1

    aput-object v3, v6, v5

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v1

    aput-object v3, v6, v5

    invoke-static {v6}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "SignedDataPayload"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SignedDataPayload:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "payload"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    const-string v3, "headerInfo"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object v0, v3, v5

    invoke-static {v3}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "ToBeSignedData"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->extensionBlockSwitchKeys:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public static synthetic access$100()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->etsiHeaderInfoContributorId:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
