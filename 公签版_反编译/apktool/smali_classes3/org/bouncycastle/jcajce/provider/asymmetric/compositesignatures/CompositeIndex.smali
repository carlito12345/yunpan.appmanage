.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static algorithmNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static kpgInitSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "[",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static pairings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 40

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ML-DSA-44"

    const-string v3, "SHA256withRSAandMGF1"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x1

    aput-object v3, v5, v7

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v5, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA256withRSA"

    new-array v9, v4, [Ljava/lang/String;

    aput-object v2, v9, v6

    aput-object v8, v9, v7

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v9, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "Ed25519"

    new-array v11, v4, [Ljava/lang/String;

    aput-object v2, v11, v6

    aput-object v10, v11, v7

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v11, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "SHA256withECDSA"

    new-array v13, v4, [Ljava/lang/String;

    aput-object v2, v13, v6

    aput-object v12, v13, v7

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA3072_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "ML-DSA-65"

    new-array v15, v4, [Ljava/lang/String;

    aput-object v14, v15, v6

    aput-object v3, v15, v7

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA3072_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v8, v13, v7

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA4096_PSS_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v17, "SHA384withRSAandMGF1"

    move-object/from16 v18, v15

    new-array v15, v4, [Ljava/lang/String;

    aput-object v14, v15, v6

    aput-object v17, v15, v7

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_RSA4096_PKCS15_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v19, "SHA384withRSA"

    move-object/from16 v20, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v19, v13, v7

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_ECDSA_P384_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v21, "SHA384withECDSA"

    move-object/from16 v22, v15

    new-array v15, v4, [Ljava/lang/String;

    aput-object v14, v15, v6

    aput-object v21, v15, v7

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_ECDSA_brainpoolP256r1_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v12, v13, v7

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v15

    new-array v15, v4, [Ljava/lang/String;

    aput-object v14, v15, v6

    aput-object v10, v15, v7

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA87_ECDSA_P384_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v25, "ML-DSA-87"

    move-object/from16 v26, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v25, v13, v6

    aput-object v21, v13, v7

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA87_ECDSA_brainpoolP384r1_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v27, v15

    new-array v15, v4, [Ljava/lang/String;

    aput-object v25, v15, v6

    aput-object v21, v15, v7

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_MLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v28, "Ed448"

    move-object/from16 v29, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v25, v13, v6

    aput-object v28, v13, v7

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v30, v15

    new-array v15, v4, [Ljava/lang/String;

    aput-object v2, v15, v6

    aput-object v3, v15, v7

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v31, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v2, v13, v6

    aput-object v8, v13, v7

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v32, v15

    new-array v15, v4, [Ljava/lang/String;

    aput-object v2, v15, v6

    aput-object v10, v15, v7

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v33, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v2, v13, v6

    aput-object v12, v13, v7

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v2, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v13, v4, [Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v3, v13, v7

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v3, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v13, v4, [Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v8, v13, v7

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v13, v4, [Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v17, v13, v7

    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v8

    new-array v8, v4, [Ljava/lang/String;

    aput-object v14, v8, v6

    aput-object v19, v8, v7

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v13

    new-array v13, v4, [Ljava/lang/String;

    aput-object v14, v13, v6

    aput-object v21, v13, v7

    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v34, v8

    new-array v8, v4, [Ljava/lang/String;

    aput-object v14, v8, v6

    aput-object v12, v8, v7

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v8, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v12, v4, [Ljava/lang/String;

    aput-object v14, v12, v6

    aput-object v10, v12, v7

    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v10, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v12, v4, [Ljava/lang/String;

    aput-object v25, v12, v6

    aput-object v21, v12, v7

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v12, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v14, v4, [Ljava/lang/String;

    aput-object v25, v14, v6

    aput-object v21, v14, v7

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v14, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v12

    new-array v12, v4, [Ljava/lang/String;

    aput-object v25, v12, v6

    aput-object v28, v12, v7

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v12, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v7, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    const/16 v6, 0x800

    invoke-direct {v12, v6, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    const/16 v35, 0x0

    new-array v6, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    const/16 v28, 0x0

    aput-object v35, v6, v28

    const/16 v25, 0x1

    aput-object v12, v6, v25

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v6, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v12, 0x800

    invoke-direct {v6, v12, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v12, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v12, v28

    aput-object v6, v12, v25

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-array v6, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v6, v28

    aput-object v35, v6, v25

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v6, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v12, "P-256"

    invoke-direct {v6, v12}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    move-object/from16 v36, v9

    new-array v9, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v9, v28

    aput-object v6, v9, v25

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v6, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v9, 0xc00

    invoke-direct {v6, v9, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v9, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v9, v28

    aput-object v6, v9, v25

    move-object/from16 v6, v16

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v9, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v6, 0xc00

    invoke-direct {v9, v6, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v6, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v6, v28

    aput-object v9, v6, v25

    move-object/from16 v9, v18

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v6, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v9, 0x1000

    invoke-direct {v6, v9, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v9, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v9, v28

    aput-object v6, v9, v25

    move-object/from16 v6, v20

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v9, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v6, 0x1000

    invoke-direct {v9, v6, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v6, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v6, v28

    aput-object v9, v6, v25

    move-object/from16 v9, v22

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v6, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v9, "P-384"

    invoke-direct {v6, v9}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    move-object/from16 v37, v11

    new-array v11, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v11, v28

    aput-object v6, v11, v25

    move-object/from16 v6, v23

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v11, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v6, "brainpoolP256r1"

    invoke-direct {v11, v6}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    move-object/from16 v38, v5

    new-array v5, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v5, v28

    aput-object v11, v5, v25

    move-object/from16 v11, v24

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-array v5, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v5, v28

    aput-object v35, v5, v25

    move-object/from16 v4, v26

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v5, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v5, v9}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v11, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v11, v28

    aput-object v5, v11, v25

    move-object/from16 v5, v27

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v11, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v5, "brainpoolP384r1"

    invoke-direct {v11, v5}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    move-object/from16 v39, v1

    new-array v1, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v1, v28

    aput-object v11, v1, v25

    move-object/from16 v11, v29

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-array v1, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v1, v28

    aput-object v35, v1, v25

    move-object/from16 v4, v30

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v4, 0x800

    invoke-direct {v1, v4, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    const/4 v4, 0x2

    new-array v11, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v11, v28

    aput-object v1, v11, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v11, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v1, 0x800

    invoke-direct {v11, v1, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v1, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v1, v28

    aput-object v11, v1, v25

    move-object/from16 v11, v32

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-array v1, v4, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v1, v28

    aput-object v35, v1, v25

    move-object/from16 v4, v33

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v1, v12}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    new-array v4, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v4, v28

    aput-object v1, v4, v25

    invoke-interface {v0, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v4, 0xc00

    invoke-direct {v1, v4, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v4, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v4, v28

    aput-object v1, v4, v25

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v4, 0xc00

    invoke-direct {v1, v4, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v4, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v4, v28

    aput-object v1, v4, v25

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v4, 0x1000

    invoke-direct {v1, v4, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v4, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v4, v28

    aput-object v1, v4, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v4, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v1, 0x1000

    invoke-direct {v4, v1, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v1, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v1, v28

    aput-object v4, v1, v25

    move-object/from16 v4, v19

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v1, v9}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    new-array v7, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v7, v28

    aput-object v1, v7, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v6}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    new-array v6, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v6, v28

    aput-object v7, v6, v25

    invoke-interface {v0, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-array v6, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v6, v28

    aput-object v35, v6, v25

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v6, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v6, v9}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    new-array v7, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v7, v28

    aput-object v6, v7, v25

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v6, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v6, v5}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    new-array v5, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v5, v28

    aput-object v6, v5, v25

    move-object/from16 v6, v21

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-array v5, v12, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v35, v5, v28

    aput-object v35, v5, v25

    invoke-interface {v0, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA44-RSA2048-PSS-SHA256"

    move-object/from16 v7, v39

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA44-RSA2048-PKCS15-SHA256"

    move-object/from16 v7, v38

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA44-Ed25519-SHA512"

    move-object/from16 v7, v36

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA44-ECDSA-P256-SHA256"

    move-object/from16 v7, v37

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA65-RSA3072-PSS-SHA256"

    move-object/from16 v7, v16

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA65-RSA3072-PKCS15-SHA256"

    move-object/from16 v7, v18

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA65-RSA4096-PSS-SHA384"

    move-object/from16 v7, v20

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA65-RSA4096-PKCS15-SHA384"

    move-object/from16 v7, v22

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA65-ECDSA-P384-SHA384"

    move-object/from16 v7, v23

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA65-ECDSA-brainpoolP256r1-SHA256"

    move-object/from16 v7, v24

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA65-Ed25519-SHA512"

    move-object/from16 v7, v26

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA87-ECDSA-P384-SHA384"

    move-object/from16 v7, v27

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA87-ECDSA-brainpoolP384r1-SHA384"

    move-object/from16 v7, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "MLDSA87-Ed448-SHA512"

    move-object/from16 v7, v30

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "HashMLDSA44-RSA2048-PSS-SHA256"

    move-object/from16 v7, v31

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "HashMLDSA44-RSA2048-PKCS15-SHA256"

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "HashMLDSA44-Ed25519-SHA512"

    move-object/from16 v7, v33

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "HashMLDSA44-ECDSA-P256-SHA256"

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v5, "HashMLDSA65-RSA3072-PSS-SHA512"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "HashMLDSA65-RSA3072-PKCS15-SHA512"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "HashMLDSA65-RSA4096-PSS-SHA512"

    move-object/from16 v3, v17

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "HashMLDSA65-RSA4096-PKCS15-SHA512"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "HashMLDSA65-ECDSA-P384-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "HashMLDSA65-ECDSA-brainpoolP256r1-SHA512"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "HashMLDSA65-Ed25519-SHA512"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "HashMLDSA87-ECDSA-P384-SHA512"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "HashMLDSA87-ECDSA-brainpoolP384r1-SHA512"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "HashMLDSA87-Ed448-SHA512"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string p0, "EC"

    :cond_1
    return-object p0
.end method

.method public static getKeyPairSpecs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method public static getPairing(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedIdentifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isAlgorithmSupported(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
