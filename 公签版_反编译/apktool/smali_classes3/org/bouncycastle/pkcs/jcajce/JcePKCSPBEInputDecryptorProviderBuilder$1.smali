.class Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->build([C)Lorg/bouncycastle/operator/InputDecryptorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

.field final synthetic val$password:[C


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;[C)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    iput-object p2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->val$password:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;)Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputDecryptor;
    .locals 12

    .line 1
    const-string v0, "unable to create InputDecryptor: algorithm "

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 25
    .line 26
    invoke-static {v2}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v2, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 39
    .line 40
    new-instance v2, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;

    .line 41
    .line 42
    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->val$password:[C

    .line 43
    .line 44
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 45
    .line 46
    invoke-static {v5}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$100(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-direct {v2, v4, v5, v6, v0}, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;-><init>([CZ[BI)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_0
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    .line 93
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lorg/bouncycastle/asn1/misc/ScryptParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/misc/ScryptParams;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 128
    .line 129
    invoke-static {v2}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v4, "SCRYPT"

    .line 134
    .line 135
    invoke-interface {v2, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v11, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;

    .line 140
    .line 141
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->val$password:[C

    .line 142
    .line 143
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/misc/ScryptParams;->getSalt()[B

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/misc/ScryptParams;->getCostParameter()Ljava/math/BigInteger;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/misc/ScryptParams;->getBlockSize()Ljava/math/BigInteger;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/misc/ScryptParams;->getParallelizationParameter()Ljava/math/BigInteger;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 172
    .line 173
    invoke-static {v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$200(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    move-object v4, v11

    .line 182
    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;-><init>([C[BIIII)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v11}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 192
    .line 193
    invoke-static {v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_2

    .line 238
    .line 239
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    .line 240
    .line 241
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->val$password:[C

    .line 242
    .line 243
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    iget-object v7, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 256
    .line 257
    invoke-static {v7}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$200(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-interface {v7, v2}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-direct {v4, v5, v6, v1, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    goto :goto_0

    .line 273
    :cond_2
    new-instance v10, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    .line 274
    .line 275
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->val$password:[C

    .line 276
    .line 277
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 290
    .line 291
    invoke-static {v4}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$200(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-interface {v4, v2}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    move-object v4, v10

    .line 304
    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 312
    .line 313
    invoke-static {v1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iput-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 334
    .line 335
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iput-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->encryptionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 344
    .line 345
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 354
    .line 355
    if-eqz v2, :cond_3

    .line 356
    .line 357
    iget-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 358
    .line 359
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 360
    .line 361
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :cond_3
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 378
    .line 379
    if-eqz v2, :cond_4

    .line 380
    .line 381
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 382
    .line 383
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-static {v2, v4}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$300(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_4

    .line 392
    .line 393
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 410
    .line 411
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 416
    .line 417
    .line 418
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 419
    .line 420
    invoke-virtual {v1, v3, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_2

    .line 424
    .line 425
    :cond_4
    if-nez v1, :cond_5

    .line 426
    .line 427
    iget-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 428
    .line 429
    invoke-virtual {p1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 430
    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_5
    invoke-static {v1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 438
    .line 439
    new-instance v2, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;

    .line 440
    .line 441
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getIV()[B

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-direct {v2, v4, p1}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 453
    .line 454
    .line 455
    goto :goto_2

    .line 456
    :cond_6
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-nez v2, :cond_8

    .line 463
    .line 464
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_7

    .line 471
    .line 472
    goto :goto_1

    .line 473
    :cond_7
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 474
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v0, " unknown."

    .line 484
    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw p1

    .line 496
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PBEParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBEParameter;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;

    .line 505
    .line 506
    invoke-static {v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->cipher:Ljavax/crypto/Cipher;

    .line 519
    .line 520
    new-instance v1, Lorg/bouncycastle/jcajce/PBKDF1Key;

    .line 521
    .line 522
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;->val$password:[C

    .line 523
    .line 524
    sget-object v4, Lorg/bouncycastle/crypto/PasswordConverter;->ASCII:Lorg/bouncycastle/crypto/PasswordConverter;

    .line 525
    .line 526
    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/jcajce/PBKDF1Key;-><init>([CLorg/bouncycastle/crypto/CharToByteConverter;)V

    .line 527
    .line 528
    .line 529
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 530
    .line 531
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBEParameter;->getSalt()[B

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBEParameter;->getIterationCount()Ljava/math/BigInteger;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    invoke-direct {v2, v4, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .line 548
    .line 549
    :goto_2
    new-instance p1, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1$1;

    .line 550
    .line 551
    invoke-direct {p1, p0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1$1;-><init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;)V

    .line 552
    .line 553
    .line 554
    return-object p1

    .line 555
    :goto_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 556
    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v2, "unable to create InputDecryptor: "

    .line 560
    .line 561
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-static {p1, v1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    .line 570
    .line 571
    throw v0
.end method
