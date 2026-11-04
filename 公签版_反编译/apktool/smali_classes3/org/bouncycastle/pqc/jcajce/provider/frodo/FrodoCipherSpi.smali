.class Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi$Base;
    }
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private kemGen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMGenerator;

.field private kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

.field private unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPrivateKey;

.field private wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->algorithmName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoFinal([BII)[B
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    const/16 p1, 0x800

    return p1
.end method

.method public engineGetOutputSize(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->algorithmName:Ljava/lang/String;

    const-string v1, "BCPQC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "can\'t handle parameter "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    const-string v0, "AES-KWP"

    invoke-direct {p3, v0}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    goto :goto_1

    :cond_0
    instance-of v0, p3, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    if-eqz v0, :cond_5

    check-cast p3, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    goto :goto_0

    :goto_1
    const/4 p3, 0x3

    const-string v0, "Only a "

    if-ne p1, p3, :cond_2

    instance-of p1, p2, Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPublicKey;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPublicKey;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPublicKey;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMGenerator;

    invoke-static {p4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->kemGen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMGenerator;

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->algorithmName:Ljava/lang/String;

    const-string p4, " public key can be used for wrapping"

    .line 3
    invoke-static {p3, p4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    instance-of p1, p2, Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPrivateKey;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPrivateKey;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPrivateKey;

    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->algorithmName:Ljava/lang/String;

    const-string p4, " private key can be used for unwrapping"

    .line 5
    invoke-static {p3, p4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Cipher only valid for wrapping/unwrapping"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->algorithmName:Ljava/lang/String;

    const-string p4, " can only accept KTSParameterSpec"

    .line 7
    invoke-static {p3, p4, p2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 2
    .line 3
    const-string v1, "Cannot support mode "

    .line 4
    .line 5
    invoke-static {v1, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    .line 2
    .line 3
    const-string v1, "Padding "

    .line 4
    .line 5
    const-string v2, " unknown"

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 5

    .line 1
    const-string v0, "unable to extract KTS secret: "

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne p3, v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance p3, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPrivateKey;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p3, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->getEncapsulationLength()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {p1, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->extractSecret([B)[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    .line 31
    .line 32
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->getKeyAlgorithmName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v2, v4}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->getEncapsulationLength()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    array-length v1, p1

    .line 56
    invoke-static {p1, p3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 61
    .line 62
    array-length v1, p1

    .line 63
    invoke-interface {v3, p1, v2, v1}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-object p3

    .line 78
    :catch_0
    move-exception p1

    .line 79
    goto :goto_0

    .line 80
    :catch_1
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :goto_0
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 83
    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :goto_1
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    .line 105
    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p3}, Ll2/z;->f(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p2

    .line 119
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 120
    .line 121
    const-string p2, "only SECRET_KEY supported"

    .line 122
    .line 123
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII)[B
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not supported in a wrapping mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->kemGen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMGenerator;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPublicKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/provider/frodo/BCFrodoPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/frodo/FrodoCipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    .line 20
    .line 21
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/KEMKDFSpec;->getKeyAlgorithmName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 30
    .line 31
    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v0}, Ljavax/security/auth/Destroyable;->destroy()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    array-length v0, p1

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-interface {v1, p1, v3, v0}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :catch_1
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :goto_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "unable to destroy interim values: "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :goto_1
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, "unable to generate KTS secret: "

    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v1}, Ll2/z;->f(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 113
    .line 114
    const-string v0, "Cannot wrap key, null encoding."

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method
