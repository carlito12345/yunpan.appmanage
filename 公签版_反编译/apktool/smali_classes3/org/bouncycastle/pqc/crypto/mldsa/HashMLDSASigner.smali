.class public Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field private static final EMPTY_CONTEXT:[B


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

.field private privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->EMPTY_CONTEXT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 10

    const/16 v0, 0x20

    new-array v9, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateMu(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)[B

    move-result-object v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateSignature([BLorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->EMPTY_CONTEXT:[B

    .line 2
    .line 3
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithContext;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithContext;

    .line 8
    .line 9
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithContext;->getContext()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithContext;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    array-length v1, v0

    .line 18
    const/16 v2, 0xff

    .line 19
    .line 20
    if-gt v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "context too long"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    .line 36
    .line 37
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 42
    .line 43
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    .line 48
    .line 49
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    .line 50
    .line 51
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    .line 59
    .line 60
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    .line 61
    .line 62
    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    .line 63
    .line 64
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    .line 77
    .line 78
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    .line 79
    .line 80
    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    .line 81
    .line 82
    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initSign([BZ[B)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    .line 87
    .line 88
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    .line 89
    .line 90
    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->privKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    .line 91
    .line 92
    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->random:Ljava/security/SecureRandom;

    .line 93
    .line 94
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    .line 103
    .line 104
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    .line 105
    .line 106
    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    .line 107
    .line 108
    iget-object p2, p2, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    .line 109
    .line 110
    invoke-virtual {p1, v2, p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->initVerify([B[BZ[B)V

    .line 111
    .line 112
    .line 113
    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    .line 114
    .line 115
    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    .line 116
    .line 117
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 118
    .line 119
    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/DigestUtils;->getDigestOid(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string p2, "DER"

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 130
    .line 131
    .line 132
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 134
    .line 135
    array-length v0, p1

    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-interface {p2, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v1, "oid encoding failed: "

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->n(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p2
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->shake256Digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateMu(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)[B

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->engine:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    array-length v5, p1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getShake256Digest()Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/HashMLDSASigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->rho:[B

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->t1:[B

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->verifyInternalMuSignature([B[BILorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B)Z

    move-result p1

    return p1
.end method
