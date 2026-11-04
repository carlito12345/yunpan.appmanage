.class public final Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;
    }
.end annotation


# static fields
.field private static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final ASYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric."

.field public static final CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final DIGESTS:[Ljava/lang/String;

.field private static final DIGEST_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.digest."

.field private static final KEYSTORES:[Ljava/lang/String;

.field private static final KEYSTORE_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.keystore."

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final SECURE_RANDOMS:[Ljava/lang/String;

.field private static final SECURE_RANDOM_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.drbg."

.field private static final SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/CryptoServiceProperties;

.field private static final SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final SYMMETRIC_MACS:[Ljava/lang/String;

.field private static final SYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric."

.field private static info:Ljava/lang/String;

.field private static final keyInfoConverters:Ljava/util/Map;

.field private static final revChkClass:Ljava/lang/Class;


# instance fields
.field private serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 46

    const-class v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    const-string v1, "BouncyCastle Security Provider v1.81"

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "PBEPBKDF1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PBEPBKDF2"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PBEPKCS12"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "TLSKDF"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "SCRYPT"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SipHash"

    aput-object v2, v1, v3

    const-string v2, "SipHash128"

    aput-object v2, v1, v4

    const-string v2, "Poly1305"

    aput-object v2, v1, v5

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    const-string v1, "AES"

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const-string v8, "ARC4"

    const/16 v9, 0x14

    invoke-static {v8, v9}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v8

    const-string v10, "ARIA"

    invoke-static {v10, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v10

    const-string v11, "Blowfish"

    const/16 v12, 0x80

    invoke-static {v11, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v11

    const-string v13, "Camellia"

    invoke-static {v13, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v13

    const-string v14, "CAST5"

    invoke-static {v14, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v14

    const-string v15, "CAST6"

    invoke-static {v15, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v15

    const-string v9, "ChaCha"

    invoke-static {v9, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v9

    const-string v0, "DES"

    const/16 v7, 0x38

    invoke-static {v0, v7}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    const-string v7, "DESede"

    const/16 v6, 0x70

    invoke-static {v7, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v6

    const-string v7, "GOST28147"

    invoke-static {v7, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v7

    const-string v5, "Grainv1"

    invoke-static {v5, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v5

    const-string v4, "Grain128"

    invoke-static {v4, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v4

    const-string v3, "HC128"

    invoke-static {v3, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v3

    const-string v12, "HC256"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    const-string v2, "IDEA"

    move-object/from16 v25, v12

    const/16 v12, 0x80

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    move-object/from16 v23, v2

    const-string v2, "Noekeon"

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    move-object/from16 v26, v2

    const-string v2, "RC2"

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    move-object/from16 v27, v2

    const-string v2, "RC5"

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const-string v12, "RC6"

    move-object/from16 v29, v2

    const/16 v2, 0x100

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    move-object/from16 v30, v12

    const-string v12, "Rijndael"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    const-string v2, "Salsa20"

    move-object/from16 v31, v12

    const/16 v12, 0x80

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    move-object/from16 v28, v2

    const-string v2, "SEED"

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const-string v12, "Serpent"

    move-object/from16 v33, v2

    const/16 v2, 0x100

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    const-string v2, "Shacal2"

    move-object/from16 v34, v12

    const/16 v12, 0x80

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const-string v12, "Skipjack"

    move-object/from16 v35, v2

    const/16 v2, 0x50

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const-string v12, "SM4"

    move-object/from16 v36, v2

    const/16 v2, 0x80

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    move-object/from16 v32, v12

    const-string v12, "TEA"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    const-string v2, "Twofish"

    move-object/from16 v38, v12

    const/16 v12, 0x100

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const-string v12, "Threefish"

    move-object/from16 v39, v2

    const/16 v2, 0x80

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    move-object/from16 v37, v12

    const-string v12, "VMPC"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    move-object/from16 v40, v12

    const-string v12, "VMPCKSA3"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    move-object/from16 v41, v12

    const-string v12, "XTEA"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    move-object/from16 v42, v12

    const-string v12, "XSalsa20"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    move-object/from16 v43, v12

    const-string v12, "OpenSSLPBKDF"

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v12

    const-string v2, "DSTU7624"

    move-object/from16 v44, v12

    const/16 v12, 0x100

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    move-object/from16 v24, v2

    const-string v2, "GOST3412_2015"

    invoke-static {v2, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const-string v12, "Zuc"

    move-object/from16 v45, v2

    const/16 v2, 0x80

    invoke-static {v12, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v2

    const/16 v12, 0x26

    new-array v12, v12, [Lorg/bouncycastle/crypto/CryptoServiceProperties;

    const/16 v22, 0x0

    aput-object v1, v12, v22

    const/4 v1, 0x1

    aput-object v8, v12, v1

    const/4 v1, 0x2

    aput-object v10, v12, v1

    const/4 v1, 0x3

    aput-object v11, v12, v1

    const/4 v1, 0x4

    aput-object v13, v12, v1

    const/4 v1, 0x5

    aput-object v14, v12, v1

    const/4 v1, 0x6

    aput-object v15, v12, v1

    const/4 v8, 0x7

    aput-object v9, v12, v8

    const/16 v9, 0x8

    aput-object v0, v12, v9

    const/16 v0, 0x9

    aput-object v6, v12, v0

    const/16 v6, 0xa

    aput-object v7, v12, v6

    const/16 v7, 0xb

    aput-object v5, v12, v7

    const/16 v5, 0xc

    aput-object v4, v12, v5

    const/16 v4, 0xd

    aput-object v3, v12, v4

    const/16 v3, 0xe

    aput-object v25, v12, v3

    const/16 v10, 0xf

    aput-object v23, v12, v10

    const/16 v11, 0x10

    aput-object v26, v12, v11

    const/16 v13, 0x11

    aput-object v27, v12, v13

    const/16 v14, 0x12

    aput-object v29, v12, v14

    const/16 v15, 0x13

    aput-object v30, v12, v15

    const/16 v16, 0x14

    aput-object v31, v12, v16

    const/16 v23, 0x15

    aput-object v28, v12, v23

    const/16 v25, 0x16

    aput-object v33, v12, v25

    const/16 v25, 0x17

    aput-object v34, v12, v25

    const/16 v25, 0x18

    aput-object v35, v12, v25

    const/16 v25, 0x19

    aput-object v36, v12, v25

    const/16 v25, 0x1a

    aput-object v32, v12, v25

    const/16 v25, 0x1b

    aput-object v38, v12, v25

    const/16 v25, 0x1c

    aput-object v39, v12, v25

    const/16 v25, 0x1d

    aput-object v37, v12, v25

    const/16 v25, 0x1e

    aput-object v40, v12, v25

    const/16 v25, 0x1f

    aput-object v41, v12, v25

    const/16 v25, 0x20

    aput-object v42, v12, v25

    const/16 v25, 0x21

    aput-object v43, v12, v25

    const/16 v25, 0x22

    aput-object v44, v12, v25

    const/16 v25, 0x23

    aput-object v24, v12, v25

    const/16 v24, 0x24

    aput-object v45, v12, v24

    const/16 v24, 0x25

    aput-object v2, v12, v24

    sput-object v12, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/CryptoServiceProperties;

    new-array v2, v1, [Ljava/lang/String;

    const-string v12, "X509"

    const/16 v22, 0x0

    aput-object v12, v2, v22

    const-string v12, "IES"

    const/16 v21, 0x1

    aput-object v12, v2, v21

    const-string v12, "COMPOSITE"

    const/16 v20, 0x2

    aput-object v12, v2, v20

    const-string v12, "EXTERNAL"

    const/16 v19, 0x3

    aput-object v12, v2, v19

    const-string v12, "CompositeSignatures"

    const/16 v18, 0x4

    aput-object v12, v2, v18

    const-string v12, "NoSig"

    const/16 v17, 0x5

    aput-object v12, v2, v17

    sput-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/String;

    const-string v12, "DSA"

    const/16 v22, 0x0

    aput-object v12, v2, v22

    const-string v12, "DH"

    const/16 v21, 0x1

    aput-object v12, v2, v21

    const-string v12, "EC"

    const/16 v20, 0x2

    aput-object v12, v2, v20

    const-string v12, "RSA"

    const/16 v19, 0x3

    aput-object v12, v2, v19

    const-string v12, "GOST"

    const/16 v18, 0x4

    aput-object v12, v2, v18

    const-string v12, "ECGOST"

    const/16 v17, 0x5

    aput-object v12, v2, v17

    const-string v12, "ElGamal"

    aput-object v12, v2, v1

    const-string v12, "DSTU4145"

    aput-object v12, v2, v8

    const-string v12, "GM"

    aput-object v12, v2, v9

    const-string v12, "EdEC"

    aput-object v12, v2, v0

    const-string v12, "LMS"

    aput-object v12, v2, v6

    const-string v12, "SPHINCSPlus"

    aput-object v12, v2, v7

    const-string v12, "Dilithium"

    aput-object v12, v2, v5

    const-string v12, "Falcon"

    aput-object v12, v2, v4

    const-string v12, "NTRU"

    aput-object v12, v2, v3

    const-string v12, "CONTEXT"

    aput-object v12, v2, v10

    const-string v12, "SLHDSA"

    aput-object v12, v2, v11

    const-string v12, "MLDSA"

    aput-object v12, v2, v13

    const-string v12, "MLKEM"

    aput-object v12, v2, v14

    sput-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    const/16 v2, 0x18

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "GOST3411"

    const/16 v22, 0x0

    aput-object v12, v2, v22

    const-string v12, "Keccak"

    const/16 v21, 0x1

    aput-object v12, v2, v21

    const-string v12, "MD2"

    const/16 v20, 0x2

    aput-object v12, v2, v20

    const-string v12, "MD4"

    const/16 v19, 0x3

    aput-object v12, v2, v19

    const-string v12, "MD5"

    const/16 v18, 0x4

    aput-object v12, v2, v18

    const-string v12, "SHA1"

    const/16 v17, 0x5

    aput-object v12, v2, v17

    const-string v12, "RIPEMD128"

    aput-object v12, v2, v1

    const-string v1, "RIPEMD160"

    aput-object v1, v2, v8

    const-string v1, "RIPEMD256"

    aput-object v1, v2, v9

    const-string v1, "RIPEMD320"

    aput-object v1, v2, v0

    const-string v0, "SHA224"

    aput-object v0, v2, v6

    const-string v0, "SHA256"

    aput-object v0, v2, v7

    const-string v0, "SHA384"

    aput-object v0, v2, v5

    const-string v0, "SHA512"

    aput-object v0, v2, v4

    const-string v0, "SHA3"

    aput-object v0, v2, v3

    const-string v0, "Skein"

    aput-object v0, v2, v10

    const-string v0, "SM3"

    aput-object v0, v2, v11

    const-string v0, "Tiger"

    aput-object v0, v2, v13

    const-string v0, "Whirlpool"

    aput-object v0, v2, v14

    const-string v0, "Blake2b"

    aput-object v0, v2, v15

    const-string v0, "Blake2s"

    const/16 v1, 0x14

    aput-object v0, v2, v1

    const-string v0, "DSTU7564"

    aput-object v0, v2, v23

    const-string v0, "Haraka"

    const/16 v1, 0x16

    aput-object v0, v2, v1

    const-string v0, "Blake3"

    const/16 v1, 0x17

    aput-object v0, v2, v1

    sput-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BC"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BCFKS"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PKCS12"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DRBG"

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x3ffcf5c28f5c28f6L    # 1.81

    sget-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method public static synthetic access$101(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$301(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$401(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/security/Provider$Service;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method

.method private static getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_key:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;->generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadAlgorithms(Ljava/lang/String;[Lorg/bouncycastle/crypto/CryptoServiceProperties;)V
    .locals 5

    .line 2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_1

    aget-object v1, p2, v0

    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoServiceConstraintsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    sget-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "service for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ignored due to constraints"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadPQCKeys()V
    .locals 2

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    .line 18
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    .line 23
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    .line 28
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .line 33
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    .line 38
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    .line 43
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    .line 48
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    .line 53
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    .line 58
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    .line 63
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    .line 68
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    .line 73
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    .line 78
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    .line 83
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    .line 88
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    .line 93
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    .line 98
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    .line 103
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    .line 108
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    .line 113
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 114
    .line 115
    .line 116
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    .line 118
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    .line 123
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 127
    .line 128
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    .line 133
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    .line 138
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 142
    .line 143
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 144
    .line 145
    .line 146
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    .line 148
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 149
    .line 150
    .line 151
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 152
    .line 153
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 154
    .line 155
    .line 156
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 157
    .line 158
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    .line 163
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    .line 168
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    .line 173
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 177
    .line 178
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 179
    .line 180
    .line 181
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    .line 183
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 184
    .line 185
    .line 186
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    .line 188
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    .line 193
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 194
    .line 195
    .line 196
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 197
    .line 198
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;

    .line 199
    .line 200
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 207
    .line 208
    const-string v1, "1.3.9999.6.4.10"

    .line 209
    .line 210
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 214
    .line 215
    .line 216
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    .line 218
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 219
    .line 220
    .line 221
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 222
    .line 223
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 224
    .line 225
    .line 226
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 227
    .line 228
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->w(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 229
    .line 230
    .line 231
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 232
    .line 233
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/Sphincs256KeyFactorySpi;

    .line 234
    .line 235
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/Sphincs256KeyFactorySpi;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 239
    .line 240
    .line 241
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 242
    .line 243
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyFactorySpi;

    .line 244
    .line 245
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyFactorySpi;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 249
    .line 250
    .line 251
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 252
    .line 253
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    .line 254
    .line 255
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 259
    .line 260
    .line 261
    sget-object v0, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 262
    .line 263
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    .line 264
    .line 265
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 269
    .line 270
    .line 271
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 272
    .line 273
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    .line 274
    .line 275
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 279
    .line 280
    .line 281
    sget-object v0, Lorg/bouncycastle/internal/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 282
    .line 283
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    .line 284
    .line 285
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 289
    .line 290
    .line 291
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 292
    .line 293
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyFactorySpi;

    .line 294
    .line 295
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyFactorySpi;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 299
    .line 300
    .line 301
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_key:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 302
    .line 303
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;

    .line 304
    .line 305
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 309
    .line 310
    .line 311
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 312
    .line 313
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;

    .line 314
    .line 315
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 319
    .line 320
    .line 321
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 322
    .line 323
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;

    .line 324
    .line 325
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 329
    .line 330
    .line 331
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 332
    .line 333
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;

    .line 334
    .line 335
    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 339
    .line 340
    .line 341
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 342
    .line 343
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;

    .line 344
    .line 345
    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 349
    .line 350
    .line 351
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 352
    .line 353
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;

    .line 354
    .line 355
    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 359
    .line 360
    .line 361
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 362
    .line 363
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;

    .line 364
    .line 365
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 369
    .line 370
    .line 371
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 372
    .line 373
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;

    .line 374
    .line 375
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 379
    .line 380
    .line 381
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 382
    .line 383
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;

    .line 384
    .line 385
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 389
    .line 390
    .line 391
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 392
    .line 393
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;

    .line 394
    .line 395
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 399
    .line 400
    .line 401
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 402
    .line 403
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;

    .line 404
    .line 405
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 409
    .line 410
    .line 411
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 412
    .line 413
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;

    .line 414
    .line 415
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyFactorySpi;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 419
    .line 420
    .line 421
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece348864_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 422
    .line 423
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;

    .line 424
    .line 425
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 429
    .line 430
    .line 431
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece460896_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 432
    .line 433
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;

    .line 434
    .line 435
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 439
    .line 440
    .line 441
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece6688128_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 442
    .line 443
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;

    .line 444
    .line 445
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;-><init>()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 449
    .line 450
    .line 451
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece6960119_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 452
    .line 453
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;

    .line 454
    .line 455
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 459
    .line 460
    .line 461
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mceliece8192128_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 462
    .line 463
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;

    .line 464
    .line 465
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/cmce/CMCEKeyFactorySpi;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 469
    .line 470
    .line 471
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bike128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 472
    .line 473
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyFactorySpi;

    .line 474
    .line 475
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyFactorySpi;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 479
    .line 480
    .line 481
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bike192:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 482
    .line 483
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyFactorySpi;

    .line 484
    .line 485
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyFactorySpi;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 489
    .line 490
    .line 491
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bike256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 492
    .line 493
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyFactorySpi;

    .line 494
    .line 495
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyFactorySpi;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 499
    .line 500
    .line 501
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->hqc128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 502
    .line 503
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyFactorySpi;

    .line 504
    .line 505
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyFactorySpi;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 509
    .line 510
    .line 511
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->hqc192:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 512
    .line 513
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyFactorySpi;

    .line 514
    .line 515
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyFactorySpi;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 519
    .line 520
    .line 521
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->hqc256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 522
    .line 523
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyFactorySpi;

    .line 524
    .line 525
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/hqc/HQCKeyFactorySpi;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 529
    .line 530
    .line 531
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->kyber512_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 532
    .line 533
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;

    .line 534
    .line 535
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 539
    .line 540
    .line 541
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->kyber768_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 542
    .line 543
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;

    .line 544
    .line 545
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 549
    .line 550
    .line 551
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->kyber1024_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 552
    .line 553
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;

    .line 554
    .line 555
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;-><init>()V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 559
    .line 560
    .line 561
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhps2048509:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 562
    .line 563
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;

    .line 564
    .line 565
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;-><init>()V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 569
    .line 570
    .line 571
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhps2048677:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 572
    .line 573
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;

    .line 574
    .line 575
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;-><init>()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 579
    .line 580
    .line 581
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhps4096821:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 582
    .line 583
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;

    .line 584
    .line 585
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 589
    .line 590
    .line 591
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->ntruhrss701:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 592
    .line 593
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;

    .line 594
    .line 595
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyFactorySpi;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 599
    .line 600
    .line 601
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 602
    .line 603
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;

    .line 604
    .line 605
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;-><init>()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 609
    .line 610
    .line 611
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 612
    .line 613
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;

    .line 614
    .line 615
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;-><init>()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 619
    .line 620
    .line 621
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 622
    .line 623
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;

    .line 624
    .line 625
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;-><init>()V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 629
    .line 630
    .line 631
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->mayo5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 632
    .line 633
    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;

    .line 634
    .line 635
    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyFactorySpi;-><init>()V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 639
    .line 640
    .line 641
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 642
    .line 643
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 644
    .line 645
    .line 646
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 647
    .line 648
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 649
    .line 650
    .line 651
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 652
    .line 653
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 654
    .line 655
    .line 656
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 657
    .line 658
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 659
    .line 660
    .line 661
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 662
    .line 663
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 664
    .line 665
    .line 666
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 667
    .line 668
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 669
    .line 670
    .line 671
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 672
    .line 673
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 674
    .line 675
    .line 676
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_24_5_5_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 677
    .line 678
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 679
    .line 680
    .line 681
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 682
    .line 683
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 684
    .line 685
    .line 686
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 687
    .line 688
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 689
    .line 690
    .line 691
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 692
    .line 693
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 694
    .line 695
    .line 696
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_25_8_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 697
    .line 698
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 699
    .line 700
    .line 701
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 702
    .line 703
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 704
    .line 705
    .line 706
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 707
    .line 708
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 709
    .line 710
    .line 711
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 712
    .line 713
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 714
    .line 715
    .line 716
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_8_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 717
    .line 718
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 719
    .line 720
    .line 721
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 722
    .line 723
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 724
    .line 725
    .line 726
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 727
    .line 728
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 729
    .line 730
    .line 731
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 732
    .line 733
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 734
    .line 735
    .line 736
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_37_17_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 737
    .line 738
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 739
    .line 740
    .line 741
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 742
    .line 743
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 744
    .line 745
    .line 746
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 747
    .line 748
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 749
    .line 750
    .line 751
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 752
    .line 753
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 754
    .line 755
    .line 756
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_49_11_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 757
    .line 758
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 759
    .line 760
    .line 761
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 762
    .line 763
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 764
    .line 765
    .line 766
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 767
    .line 768
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 769
    .line 770
    .line 771
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 772
    .line 773
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 774
    .line 775
    .line 776
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_56_25_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 777
    .line 778
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 779
    .line 780
    .line 781
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 782
    .line 783
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 784
    .line 785
    .line 786
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 787
    .line 788
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 789
    .line 790
    .line 791
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 792
    .line 793
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 794
    .line 795
    .line 796
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_60_10_4_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 797
    .line 798
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 799
    .line 800
    .line 801
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 802
    .line 803
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 804
    .line 805
    .line 806
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 807
    .line 808
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 809
    .line 810
    .line 811
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 812
    .line 813
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 814
    .line 815
    .line 816
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_66_15_3_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 817
    .line 818
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 819
    .line 820
    .line 821
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 822
    .line 823
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 824
    .line 825
    .line 826
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 827
    .line 828
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 829
    .line 830
    .line 831
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_ssk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 832
    .line 833
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 834
    .line 835
    .line 836
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->snova_75_33_2_shake_esk:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 837
    .line 838
    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/a;->t(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 839
    .line 840
    .line 841
    return-void
.end method

.method private loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$Mappings : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private static service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private setup()V
    .locals 9

    const-string v0, "org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.symmetric."

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/CryptoServiceProperties;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric."

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.drbg."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadPQCKeys()V

    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    const-string v1, "CertPathBuilder.PKIX"

    const-string v2, "CertPathValidator.PKIX"

    const-string v3, "CertPathBuilder.RFC3280"

    const-string v4, "CertPathValidator.RFC3280"

    const-string v5, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    const-string v6, "CertPathBuilder.RFC3281"

    const-string v7, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    const-string v8, "CertPathValidator.RFC3281"

    invoke-virtual {p0, v8, v7}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8"

    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8"

    :goto_0
    invoke-virtual {p0, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    goto :goto_0

    :goto_1
    const-string v0, "CertStore.Collection"

    const-string v1, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Multi"

    const-string v1, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "duplicate provider key ("

    const-string v1, ") found"

    .line 1
    invoke-static {v0, p1, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, " ImplementedIn"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Software"

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, " "

    .line 44
    .line 45
    invoke-static {p1, v2, v1}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "duplicate provider attribute key ("

    .line 66
    .line 67
    const-string v0, ") found"

    .line 68
    .line 69
    invoke-static {p2, v2, v0}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    return-void
.end method

.method public addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object p1
.end method

.method public final getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 2

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "."

    .line 6
    .line 7
    invoke-static {p1, v1, v0}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/security/Provider$Service;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1, p2, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;-><init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    check-cast p1, Ljava/security/Provider$Service;

    .line 40
    .line 41
    move-object v1, p1

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    monitor-exit p0

    .line 53
    goto :goto_3

    .line 54
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_3
    return-object v1
.end method

.method public hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Alg.Alias."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
