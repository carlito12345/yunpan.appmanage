.class public Lorg/bouncycastle/pqc/jcajce/provider/Kyber$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Kyber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14

    .line 1
    const-string v0, "KeyFactory.KYBER"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi"

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 9
    .line 10
    new-instance v7, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber512;

    .line 11
    .line 12
    invoke-direct {v7}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber512;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "ML-KEM-512"

    .line 16
    .line 17
    const-string v5, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber512"

    .line 18
    .line 19
    move-object v2, p0

    .line 20
    move-object v3, p1

    .line 21
    move-object v6, v0

    .line 22
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_768:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    .line 27
    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber768;

    .line 28
    .line 29
    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber768;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v10, "ML-KEM-768"

    .line 33
    .line 34
    const-string v11, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber768"

    .line 35
    .line 36
    move-object v8, p0

    .line 37
    move-object v9, p1

    .line 38
    move-object v12, v1

    .line 39
    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 40
    .line 41
    .line 42
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_alg_ml_kem_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    .line 44
    new-instance v7, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber1024;

    .line 45
    .line 46
    invoke-direct {v7}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi$Kyber1024;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "ML-KEM-1024"

    .line 50
    .line 51
    const-string v5, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber1024"

    .line 52
    .line 53
    move-object v6, v8

    .line 54
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 55
    .line 56
    .line 57
    const-string v2, "Alg.Alias.KeyFactory.KYBER512"

    .line 58
    .line 59
    const-string v3, "ML-KEM-512"

    .line 60
    .line 61
    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "Alg.Alias.KeyFactory.KYBER768"

    .line 65
    .line 66
    const-string v4, "ML-KEM-768"

    .line 67
    .line 68
    invoke-interface {p1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "Alg.Alias.KeyFactory.KYBER1024"

    .line 72
    .line 73
    const-string v5, "ML-KEM-1024"

    .line 74
    .line 75
    invoke-interface {p1, v2, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v2, "KeyPairGenerator.ML-KEM"

    .line 79
    .line 80
    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi"

    .line 81
    .line 82
    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "KeyPairGenerator.ML-KEM-512"

    .line 86
    .line 87
    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber512"

    .line 88
    .line 89
    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v2, "KeyPairGenerator.ML-KEM-768"

    .line 93
    .line 94
    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber768"

    .line 95
    .line 96
    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v2, "KeyPairGenerator.ML-KEM-1024"

    .line 100
    .line 101
    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber1024"

    .line 102
    .line 103
    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v2, "Alg.Alias.KeyPairGenerator.KYBER"

    .line 107
    .line 108
    const-string v6, "ML-KEM"

    .line 109
    .line 110
    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "Alg.Alias.KeyPairGenerator.KYBER512"

    .line 114
    .line 115
    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v2, "Alg.Alias.KeyPairGenerator.KYBER768"

    .line 119
    .line 120
    invoke-interface {p1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v2, "Alg.Alias.KeyPairGenerator.KYBER1024"

    .line 124
    .line 125
    invoke-interface {p1, v2, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v2, "KeyGenerator.KYBER"

    .line 129
    .line 130
    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi"

    .line 131
    .line 132
    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber512"

    .line 136
    .line 137
    invoke-virtual {p0, p1, v3, v2, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 138
    .line 139
    .line 140
    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber768"

    .line 141
    .line 142
    invoke-virtual {p0, p1, v4, v2, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 143
    .line 144
    .line 145
    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber1024"

    .line 146
    .line 147
    invoke-virtual {p0, p1, v5, v2, v8}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 148
    .line 149
    .line 150
    const-string v2, "Alg.Alias.KeyGenerator.KYBER512"

    .line 151
    .line 152
    invoke-interface {p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v2, "Alg.Alias.KeyGenerator.KYBER768"

    .line 156
    .line 157
    invoke-interface {p1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v2, "Alg.Alias.KeyGenerator.KYBER1024"

    .line 161
    .line 162
    invoke-interface {p1, v2, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;

    .line 166
    .line 167
    invoke-direct {v2}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyFactorySpi;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v6, "Cipher.KYBER"

    .line 171
    .line 172
    const-string v7, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Base"

    .line 173
    .line 174
    const-string v9, "Alg.Alias.Cipher."

    .line 175
    .line 176
    invoke-static {p1, v6, v7, v9}, Ll2/z;->v(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_kyber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 181
    .line 182
    const-string v9, "KYBER"

    .line 183
    .line 184
    invoke-static {v6, v7, p1, v9}, Ll2/z;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber512"

    .line 188
    .line 189
    invoke-virtual {p0, p1, v3, v6, v0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 190
    .line 191
    .line 192
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber768"

    .line 193
    .line 194
    invoke-virtual {p0, p1, v4, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 195
    .line 196
    .line 197
    const-string v0, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber1024"

    .line 198
    .line 199
    invoke-virtual {p0, p1, v5, v0, v8}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addCipherAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 200
    .line 201
    .line 202
    const-string v0, "Alg.Alias.Cipher.KYBER512"

    .line 203
    .line 204
    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v0, "Alg.Alias.Cipher.KYBER768"

    .line 208
    .line 209
    invoke-interface {p1, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v0, "Alg.Alias.Cipher.KYBER1024"

    .line 213
    .line 214
    invoke-interface {p1, v0, v5}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1, v7, v9, v2}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method
