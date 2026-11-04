.class public Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/SLHDSA;
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
    .locals 33

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v0, "KeyFactory.SLH-DSA"

    .line 6
    .line 7
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Pure"

    .line 8
    .line 9
    invoke-interface {v7, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "KeyPairGenerator.SLH-DSA"

    .line 13
    .line 14
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Pure"

    .line 15
    .line 16
    invoke-interface {v7, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "KeyFactory.HASH-SLH-DSA"

    .line 20
    .line 21
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Hash"

    .line 22
    .line 23
    invoke-interface {v7, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "KeyPairGenerator.HASH-SLH-DSA"

    .line 27
    .line 28
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Hash"

    .line 29
    .line 30
    invoke-interface {v7, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyFactorySpi$Hash;

    .line 34
    .line 35
    invoke-direct {v8}, Lorg/bouncycastle/jcajce/provider/asymmetric/slhdsa/SLHDSAKeyFactorySpi$Hash;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    .line 40
    const-string v2, "SLH-DSA-SHA2-128S"

    .line 41
    .line 42
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_128s"

    .line 43
    .line 44
    move-object/from16 v0, p0

    .line 45
    .line 46
    move-object/from16 v1, p1

    .line 47
    .line 48
    move-object v4, v9

    .line 49
    move-object v5, v8

    .line 50
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 51
    .line 52
    .line 53
    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    .line 55
    const-string v2, "SLH-DSA-SHA2-128F"

    .line 56
    .line 57
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_128f"

    .line 58
    .line 59
    move-object v4, v10

    .line 60
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 61
    .line 62
    .line 63
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    .line 65
    const-string v2, "SLH-DSA-SHA2-192S"

    .line 66
    .line 67
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_192s"

    .line 68
    .line 69
    move-object v4, v11

    .line 70
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 71
    .line 72
    .line 73
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    .line 75
    const-string v2, "SLH-DSA-SHA2-192F"

    .line 76
    .line 77
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_192f"

    .line 78
    .line 79
    move-object v4, v12

    .line 80
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 81
    .line 82
    .line 83
    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    .line 85
    const-string v2, "SLH-DSA-SHA2-256S"

    .line 86
    .line 87
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_256s"

    .line 88
    .line 89
    move-object v4, v13

    .line 90
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 91
    .line 92
    .line 93
    sget-object v14, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    .line 95
    const-string v2, "SLH-DSA-SHA2-256F"

    .line 96
    .line 97
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Sha2_256f"

    .line 98
    .line 99
    move-object v4, v14

    .line 100
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 101
    .line 102
    .line 103
    sget-object v15, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    .line 105
    const-string v2, "SLH-DSA-SHAKE-128S"

    .line 106
    .line 107
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_128s"

    .line 108
    .line 109
    move-object v4, v15

    .line 110
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 111
    .line 112
    .line 113
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 114
    .line 115
    const-string v2, "SLH-DSA-SHAKE-128F"

    .line 116
    .line 117
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_128f"

    .line 118
    .line 119
    move-object v4, v5

    .line 120
    move-object/from16 v16, v5

    .line 121
    .line 122
    move-object v5, v8

    .line 123
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 124
    .line 125
    .line 126
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 127
    .line 128
    const-string v2, "SLH-DSA-SHAKE-192S"

    .line 129
    .line 130
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_192s"

    .line 131
    .line 132
    move-object v4, v5

    .line 133
    move-object/from16 v17, v5

    .line 134
    .line 135
    move-object v5, v8

    .line 136
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    .line 141
    const-string v2, "SLH-DSA-SHAKE-192F"

    .line 142
    .line 143
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_192f"

    .line 144
    .line 145
    move-object v4, v5

    .line 146
    move-object/from16 v18, v5

    .line 147
    .line 148
    move-object v5, v8

    .line 149
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 150
    .line 151
    .line 152
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 153
    .line 154
    const-string v2, "SLH-DSA-SHAKE-256S"

    .line 155
    .line 156
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_256s"

    .line 157
    .line 158
    move-object v4, v5

    .line 159
    move-object/from16 v19, v5

    .line 160
    .line 161
    move-object v5, v8

    .line 162
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 163
    .line 164
    .line 165
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    .line 167
    const-string v2, "SLH-DSA-SHAKE-256F"

    .line 168
    .line 169
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$Shake_256f"

    .line 170
    .line 171
    move-object v4, v5

    .line 172
    move-object/from16 v20, v5

    .line 173
    .line 174
    move-object v5, v8

    .line 175
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 176
    .line 177
    .line 178
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 179
    .line 180
    const-string v2, "SLH-DSA-SHA2-128S-WITH-SHA256"

    .line 181
    .line 182
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_128s"

    .line 183
    .line 184
    move-object v4, v5

    .line 185
    move-object/from16 v21, v5

    .line 186
    .line 187
    move-object v5, v8

    .line 188
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 189
    .line 190
    .line 191
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    .line 193
    const-string v2, "SLH-DSA-SHA2-128F-WITH-SHA256"

    .line 194
    .line 195
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_128f"

    .line 196
    .line 197
    move-object v4, v5

    .line 198
    move-object/from16 v22, v5

    .line 199
    .line 200
    move-object v5, v8

    .line 201
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 202
    .line 203
    .line 204
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 205
    .line 206
    const-string v2, "SLH-DSA-SHA2-192S-WITH-SHA512"

    .line 207
    .line 208
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_192s"

    .line 209
    .line 210
    move-object v4, v5

    .line 211
    move-object/from16 v23, v5

    .line 212
    .line 213
    move-object v5, v8

    .line 214
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 215
    .line 216
    .line 217
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 218
    .line 219
    const-string v2, "SLH-DSA-SHA2-192F-WITH-SHA512"

    .line 220
    .line 221
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_192f"

    .line 222
    .line 223
    move-object v4, v5

    .line 224
    move-object/from16 v24, v5

    .line 225
    .line 226
    move-object v5, v8

    .line 227
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 228
    .line 229
    .line 230
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 231
    .line 232
    const-string v2, "SLH-DSA-SHA2-256S-WITH-SHA512"

    .line 233
    .line 234
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_256s"

    .line 235
    .line 236
    move-object v4, v5

    .line 237
    move-object/from16 v25, v5

    .line 238
    .line 239
    move-object v5, v8

    .line 240
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 241
    .line 242
    .line 243
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 244
    .line 245
    const-string v2, "SLH-DSA-SHA2-256F-WITH-SHA512"

    .line 246
    .line 247
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashSha2_256f"

    .line 248
    .line 249
    move-object v4, v5

    .line 250
    move-object/from16 v26, v5

    .line 251
    .line 252
    move-object v5, v8

    .line 253
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 254
    .line 255
    .line 256
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 257
    .line 258
    const-string v2, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    .line 259
    .line 260
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_128s"

    .line 261
    .line 262
    move-object v4, v5

    .line 263
    move-object/from16 v27, v5

    .line 264
    .line 265
    move-object v5, v8

    .line 266
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 267
    .line 268
    .line 269
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 270
    .line 271
    const-string v2, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    .line 272
    .line 273
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_128f"

    .line 274
    .line 275
    move-object v4, v5

    .line 276
    move-object/from16 v28, v5

    .line 277
    .line 278
    move-object v5, v8

    .line 279
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 280
    .line 281
    .line 282
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 283
    .line 284
    const-string v2, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    .line 285
    .line 286
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_192s"

    .line 287
    .line 288
    move-object v4, v5

    .line 289
    move-object/from16 v29, v5

    .line 290
    .line 291
    move-object v5, v8

    .line 292
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 293
    .line 294
    .line 295
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 296
    .line 297
    const-string v2, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    .line 298
    .line 299
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_192f"

    .line 300
    .line 301
    move-object v4, v5

    .line 302
    move-object/from16 v30, v5

    .line 303
    .line 304
    move-object v5, v8

    .line 305
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 306
    .line 307
    .line 308
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 309
    .line 310
    const-string v2, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    .line 311
    .line 312
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_256s"

    .line 313
    .line 314
    move-object v4, v5

    .line 315
    move-object/from16 v31, v5

    .line 316
    .line 317
    move-object v5, v8

    .line 318
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 319
    .line 320
    .line 321
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 322
    .line 323
    const-string v2, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    .line 324
    .line 325
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyFactorySpi$HashShake_256f"

    .line 326
    .line 327
    move-object v4, v5

    .line 328
    move-object/from16 v32, v5

    .line 329
    .line 330
    move-object v5, v8

    .line 331
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 332
    .line 333
    .line 334
    const-string v0, "SLH-DSA-SHA2-128S"

    .line 335
    .line 336
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_128s"

    .line 337
    .line 338
    invoke-virtual {v6, v7, v0, v1, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 339
    .line 340
    .line 341
    const-string v1, "SLH-DSA-SHA2-128F"

    .line 342
    .line 343
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_128f"

    .line 344
    .line 345
    invoke-virtual {v6, v7, v1, v2, v10}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 346
    .line 347
    .line 348
    const-string v2, "SLH-DSA-SHA2-192S"

    .line 349
    .line 350
    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_192s"

    .line 351
    .line 352
    invoke-virtual {v6, v7, v2, v3, v11}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 353
    .line 354
    .line 355
    const-string v3, "SLH-DSA-SHA2-192F"

    .line 356
    .line 357
    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_192f"

    .line 358
    .line 359
    invoke-virtual {v6, v7, v3, v4, v12}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 360
    .line 361
    .line 362
    const-string v4, "SLH-DSA-SHA2-256S"

    .line 363
    .line 364
    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_256s"

    .line 365
    .line 366
    invoke-virtual {v6, v7, v4, v5, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 367
    .line 368
    .line 369
    const-string v5, "SLH-DSA-SHA2-256F"

    .line 370
    .line 371
    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Sha2_256f"

    .line 372
    .line 373
    invoke-virtual {v6, v7, v5, v8, v14}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 374
    .line 375
    .line 376
    const-string v8, "SLH-DSA-SHAKE-128S"

    .line 377
    .line 378
    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_128s"

    .line 379
    .line 380
    invoke-virtual {v6, v7, v8, v9, v15}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 381
    .line 382
    .line 383
    const-string v9, "SLH-DSA-SHAKE-128F"

    .line 384
    .line 385
    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_128f"

    .line 386
    .line 387
    move-object/from16 v11, v16

    .line 388
    .line 389
    invoke-virtual {v6, v7, v9, v10, v11}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 390
    .line 391
    .line 392
    const-string v10, "SLH-DSA-SHAKE-192S"

    .line 393
    .line 394
    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_192s"

    .line 395
    .line 396
    move-object/from16 v12, v17

    .line 397
    .line 398
    invoke-virtual {v6, v7, v10, v11, v12}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 399
    .line 400
    .line 401
    const-string v11, "SLH-DSA-SHAKE-192F"

    .line 402
    .line 403
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_192f"

    .line 404
    .line 405
    move-object/from16 v13, v18

    .line 406
    .line 407
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 408
    .line 409
    .line 410
    const-string v11, "SLH-DSA-SHAKE-256S"

    .line 411
    .line 412
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_256s"

    .line 413
    .line 414
    move-object/from16 v13, v19

    .line 415
    .line 416
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 417
    .line 418
    .line 419
    const-string v11, "SLH-DSA-SHAKE-256F"

    .line 420
    .line 421
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$Shake_256f"

    .line 422
    .line 423
    move-object/from16 v13, v20

    .line 424
    .line 425
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 426
    .line 427
    .line 428
    const-string v11, "SLH-DSA-SHA2-128S-WITH-SHA256"

    .line 429
    .line 430
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_128s"

    .line 431
    .line 432
    move-object/from16 v13, v21

    .line 433
    .line 434
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 435
    .line 436
    .line 437
    const-string v11, "SLH-DSA-SHA2-128F-WITH-SHA256"

    .line 438
    .line 439
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_128f"

    .line 440
    .line 441
    move-object/from16 v13, v22

    .line 442
    .line 443
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 444
    .line 445
    .line 446
    const-string v11, "SLH-DSA-SHA2-192S-WITH-SHA512"

    .line 447
    .line 448
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_192s"

    .line 449
    .line 450
    move-object/from16 v13, v23

    .line 451
    .line 452
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 453
    .line 454
    .line 455
    const-string v11, "SLH-DSA-SHA2-192F-WITH-SHA512"

    .line 456
    .line 457
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_192f"

    .line 458
    .line 459
    move-object/from16 v13, v24

    .line 460
    .line 461
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 462
    .line 463
    .line 464
    const-string v11, "SLH-DSA-SHA2-256S-WITH-SHA512"

    .line 465
    .line 466
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_256s"

    .line 467
    .line 468
    move-object/from16 v13, v25

    .line 469
    .line 470
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 471
    .line 472
    .line 473
    const-string v11, "SLH-DSA-SHA2-256F-WITH-SHA512"

    .line 474
    .line 475
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashSha2_256f"

    .line 476
    .line 477
    move-object/from16 v13, v26

    .line 478
    .line 479
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 480
    .line 481
    .line 482
    const-string v11, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    .line 483
    .line 484
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_128s"

    .line 485
    .line 486
    move-object/from16 v13, v27

    .line 487
    .line 488
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 489
    .line 490
    .line 491
    const-string v11, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    .line 492
    .line 493
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_128f"

    .line 494
    .line 495
    move-object/from16 v13, v28

    .line 496
    .line 497
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 498
    .line 499
    .line 500
    const-string v11, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    .line 501
    .line 502
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_192s"

    .line 503
    .line 504
    move-object/from16 v13, v29

    .line 505
    .line 506
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 507
    .line 508
    .line 509
    const-string v11, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    .line 510
    .line 511
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_192f"

    .line 512
    .line 513
    move-object/from16 v13, v30

    .line 514
    .line 515
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 516
    .line 517
    .line 518
    const-string v11, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    .line 519
    .line 520
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_256s"

    .line 521
    .line 522
    move-object/from16 v13, v31

    .line 523
    .line 524
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 525
    .line 526
    .line 527
    const-string v11, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    .line 528
    .line 529
    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SLHDSAKeyPairGeneratorSpi$HashShake_256f"

    .line 530
    .line 531
    move-object/from16 v13, v32

    .line 532
    .line 533
    invoke-virtual {v6, v7, v11, v12, v13}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 534
    .line 535
    .line 536
    const/16 v11, 0xc

    .line 537
    .line 538
    new-array v12, v11, [Ljava/lang/String;

    .line 539
    .line 540
    const/4 v13, 0x0

    .line 541
    aput-object v0, v12, v13

    .line 542
    .line 543
    const/4 v0, 0x1

    .line 544
    aput-object v1, v12, v0

    .line 545
    .line 546
    const/4 v1, 0x2

    .line 547
    aput-object v2, v12, v1

    .line 548
    .line 549
    const/4 v2, 0x3

    .line 550
    aput-object v3, v12, v2

    .line 551
    .line 552
    const/4 v3, 0x4

    .line 553
    aput-object v4, v12, v3

    .line 554
    .line 555
    const/4 v4, 0x5

    .line 556
    aput-object v5, v12, v4

    .line 557
    .line 558
    const/4 v5, 0x6

    .line 559
    aput-object v8, v12, v5

    .line 560
    .line 561
    const/4 v8, 0x7

    .line 562
    aput-object v9, v12, v8

    .line 563
    .line 564
    const/16 v9, 0x8

    .line 565
    .line 566
    aput-object v10, v12, v9

    .line 567
    .line 568
    const-string v10, "SLH-DSA-SHAKE-192F"

    .line 569
    .line 570
    const/16 v14, 0x9

    .line 571
    .line 572
    aput-object v10, v12, v14

    .line 573
    .line 574
    const-string v10, "SLH-DSA-SHAKE-256S"

    .line 575
    .line 576
    const/16 v15, 0xa

    .line 577
    .line 578
    aput-object v10, v12, v15

    .line 579
    .line 580
    const-string v10, "SLH-DSA-SHAKE-256F"

    .line 581
    .line 582
    const/16 v16, 0xb

    .line 583
    .line 584
    aput-object v10, v12, v16

    .line 585
    .line 586
    new-array v10, v11, [Ljava/lang/String;

    .line 587
    .line 588
    const-string v17, "SLH-DSA-SHA2-128S-WITH-SHA256"

    .line 589
    .line 590
    aput-object v17, v10, v13

    .line 591
    .line 592
    const-string v17, "SLH-DSA-SHA2-128F-WITH-SHA256"

    .line 593
    .line 594
    aput-object v17, v10, v0

    .line 595
    .line 596
    const-string v17, "SLH-DSA-SHA2-192S-WITH-SHA512"

    .line 597
    .line 598
    aput-object v17, v10, v1

    .line 599
    .line 600
    const-string v17, "SLH-DSA-SHA2-192F-WITH-SHA512"

    .line 601
    .line 602
    aput-object v17, v10, v2

    .line 603
    .line 604
    const-string v17, "SLH-DSA-SHA2-256S-WITH-SHA512"

    .line 605
    .line 606
    aput-object v17, v10, v3

    .line 607
    .line 608
    const-string v17, "SLH-DSA-SHA2-256F-WITH-SHA512"

    .line 609
    .line 610
    aput-object v17, v10, v4

    .line 611
    .line 612
    const-string v17, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    .line 613
    .line 614
    aput-object v17, v10, v5

    .line 615
    .line 616
    const-string v17, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    .line 617
    .line 618
    aput-object v17, v10, v8

    .line 619
    .line 620
    const-string v17, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    .line 621
    .line 622
    aput-object v17, v10, v9

    .line 623
    .line 624
    const-string v17, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    .line 625
    .line 626
    aput-object v17, v10, v14

    .line 627
    .line 628
    const-string v17, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    .line 629
    .line 630
    aput-object v17, v10, v15

    .line 631
    .line 632
    const-string v17, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    .line 633
    .line 634
    aput-object v17, v10, v16

    .line 635
    .line 636
    const-string v15, "SLH-DSA"

    .line 637
    .line 638
    const-string v14, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.SignatureSpi$Direct"

    .line 639
    .line 640
    const/4 v9, 0x0

    .line 641
    invoke-virtual {v6, v7, v15, v14, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 642
    .line 643
    .line 644
    const-string v14, "Alg.Alias.Signature.SLHDSA"

    .line 645
    .line 646
    invoke-interface {v7, v14, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    const-string v14, "org.bouncycastle.jcajce.provider.asymmetric.slhdsa.HashSignatureSpi$Direct"

    .line 650
    .line 651
    const-string v8, "HASH-SLH-DSA"

    .line 652
    .line 653
    invoke-virtual {v6, v7, v8, v14, v9}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 654
    .line 655
    .line 656
    const-string v9, "Alg.Alias.Signature.HASHWITHSLHDSA"

    .line 657
    .line 658
    invoke-interface {v7, v9, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    const/4 v9, 0x0

    .line 662
    :goto_0
    const-string v14, "Alg.Alias.Signature."

    .line 663
    .line 664
    if-eq v9, v11, :cond_0

    .line 665
    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    aget-object v14, v12, v9

    .line 672
    .line 673
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v5

    .line 680
    invoke-interface {v7, v5, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    add-int/2addr v9, v0

    .line 684
    const/4 v5, 0x6

    .line 685
    goto :goto_0

    .line 686
    :cond_0
    const/4 v5, 0x0

    .line 687
    :goto_1
    if-eq v5, v11, :cond_1

    .line 688
    .line 689
    new-instance v9, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    aget-object v12, v10, v5

    .line 695
    .line 696
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    invoke-interface {v7, v9, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    add-int/2addr v5, v0

    .line 707
    goto :goto_1

    .line 708
    :cond_1
    new-array v5, v11, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 709
    .line 710
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 711
    .line 712
    aput-object v9, v5, v13

    .line 713
    .line 714
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 715
    .line 716
    aput-object v9, v5, v0

    .line 717
    .line 718
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 719
    .line 720
    aput-object v9, v5, v1

    .line 721
    .line 722
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 723
    .line 724
    aput-object v9, v5, v2

    .line 725
    .line 726
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 727
    .line 728
    aput-object v9, v5, v3

    .line 729
    .line 730
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 731
    .line 732
    aput-object v9, v5, v4

    .line 733
    .line 734
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 735
    .line 736
    const/4 v10, 0x6

    .line 737
    aput-object v9, v5, v10

    .line 738
    .line 739
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 740
    .line 741
    const/4 v10, 0x7

    .line 742
    aput-object v9, v5, v10

    .line 743
    .line 744
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 745
    .line 746
    const/16 v10, 0x8

    .line 747
    .line 748
    aput-object v9, v5, v10

    .line 749
    .line 750
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 751
    .line 752
    const/16 v10, 0x9

    .line 753
    .line 754
    aput-object v9, v5, v10

    .line 755
    .line 756
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 757
    .line 758
    const/16 v10, 0xa

    .line 759
    .line 760
    aput-object v9, v5, v10

    .line 761
    .line 762
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 763
    .line 764
    aput-object v9, v5, v16

    .line 765
    .line 766
    const/4 v9, 0x0

    .line 767
    :goto_2
    const-string v10, "Alg.Alias.Signature.OID."

    .line 768
    .line 769
    if-eq v9, v11, :cond_2

    .line 770
    .line 771
    new-instance v12, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    aget-object v4, v5, v9

    .line 777
    .line 778
    invoke-static {v15, v10, v12, v4, v7}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    aget-object v10, v5, v9

    .line 783
    .line 784
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    invoke-interface {v7, v4, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    add-int/2addr v9, v0

    .line 795
    const/4 v4, 0x5

    .line 796
    goto :goto_2

    .line 797
    :cond_2
    new-array v4, v11, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 798
    .line 799
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 800
    .line 801
    aput-object v5, v4, v13

    .line 802
    .line 803
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 804
    .line 805
    aput-object v5, v4, v0

    .line 806
    .line 807
    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 808
    .line 809
    aput-object v5, v4, v1

    .line 810
    .line 811
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 812
    .line 813
    aput-object v1, v4, v2

    .line 814
    .line 815
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 816
    .line 817
    aput-object v1, v4, v3

    .line 818
    .line 819
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 820
    .line 821
    const/4 v2, 0x5

    .line 822
    aput-object v1, v4, v2

    .line 823
    .line 824
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 825
    .line 826
    const/4 v2, 0x6

    .line 827
    aput-object v1, v4, v2

    .line 828
    .line 829
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 830
    .line 831
    const/4 v2, 0x7

    .line 832
    aput-object v1, v4, v2

    .line 833
    .line 834
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 835
    .line 836
    const/16 v2, 0x8

    .line 837
    .line 838
    aput-object v1, v4, v2

    .line 839
    .line 840
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 841
    .line 842
    const/16 v2, 0x9

    .line 843
    .line 844
    aput-object v1, v4, v2

    .line 845
    .line 846
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 847
    .line 848
    const/16 v2, 0xa

    .line 849
    .line 850
    aput-object v1, v4, v2

    .line 851
    .line 852
    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 853
    .line 854
    aput-object v1, v4, v16

    .line 855
    .line 856
    :goto_3
    if-eq v13, v11, :cond_3

    .line 857
    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    aget-object v2, v4, v13

    .line 864
    .line 865
    invoke-static {v8, v10, v1, v2, v7}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    aget-object v2, v4, v13

    .line 870
    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-interface {v7, v1, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    add-int/2addr v13, v0

    .line 882
    goto :goto_3

    .line 883
    :cond_3
    return-void
.end method
