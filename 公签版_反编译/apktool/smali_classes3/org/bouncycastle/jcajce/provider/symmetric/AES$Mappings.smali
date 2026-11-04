.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final wrongAES128:Ljava/lang/String; = "2.16.840.1.101.3.4.2"

.field private static final wrongAES192:Ljava/lang/String; = "2.16.840.1.101.3.4.22"

.field private static final wrongAES256:Ljava/lang/String; = "2.16.840.1.101.3.4.42"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lorg/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, "$AlgParams"

    .line 13
    .line 14
    const-string v5, "AlgorithmParameters.AES"

    .line 15
    .line 16
    invoke-static {v3, v4, v5, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2"

    .line 20
    .line 21
    const-string v4, "AES"

    .line 22
    .line 23
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22"

    .line 27
    .line 28
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42"

    .line 32
    .line 33
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "Alg.Alias.AlgorithmParameters."

    .line 39
    .line 40
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    .line 45
    invoke-static {v4, v5, v2, v6, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    .line 51
    invoke-static {v4, v5, v2, v7, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    invoke-static {v4, v3, v2, v8, v1}, Ll2/z;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v9, "$AlgParamsGCM"

    .line 62
    .line 63
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v9, "AlgorithmParameters.GCM"

    .line 71
    .line 72
    invoke-interface {v1, v9, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    .line 82
    const-string v10, "GCM"

    .line 83
    .line 84
    invoke-static {v10, v5, v2, v9, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    .line 90
    invoke-static {v10, v5, v2, v11, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    .line 96
    invoke-static {v10, v3, v2, v12, v1}, Ll2/z;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v13, "$AlgParamsCCM"

    .line 101
    .line 102
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v13, "AlgorithmParameters.CCM"

    .line 110
    .line 111
    invoke-interface {v1, v13, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .line 121
    const-string v14, "CCM"

    .line 122
    .line 123
    invoke-static {v14, v5, v2, v13, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget-object v15, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    .line 129
    invoke-static {v14, v5, v2, v15, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 134
    .line 135
    invoke-static {v14, v3, v2, v0, v1}, Ll2/z;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object/from16 v16, v5

    .line 140
    .line 141
    const-string v5, "$AlgParamGen"

    .line 142
    .line 143
    move-object/from16 v17, v12

    .line 144
    .line 145
    const-string v12, "AlgorithmParameterGenerator.AES"

    .line 146
    .line 147
    invoke-static {v2, v5, v1, v12}, Lorg/bouncycastle/jcajce/provider/digest/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v2, "Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2"

    .line 151
    .line 152
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v2, "Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22"

    .line 156
    .line 157
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v2, "Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42"

    .line 161
    .line 162
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v5, "Alg.Alias.AlgorithmParameterGenerator."

    .line 168
    .line 169
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v4, v5, v2, v7, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v2, "Cipher.AES"

    .line 202
    .line 203
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$000()Ljava/util/Map;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    invoke-interface {v1, v2, v12}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v12, "$ECB"

    .line 216
    .line 217
    move-object/from16 v18, v11

    .line 218
    .line 219
    const-string v11, "Cipher.AES"

    .line 220
    .line 221
    invoke-static {v3, v12, v11, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V

    .line 222
    .line 223
    .line 224
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.2"

    .line 225
    .line 226
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.22"

    .line 230
    .line 231
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.42"

    .line 235
    .line 236
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 240
    .line 241
    const-string v11, "$ECB128"

    .line 242
    .line 243
    const-string v12, "Cipher"

    .line 244
    .line 245
    invoke-static {v1, v3, v11, v12, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 246
    .line 247
    .line 248
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 249
    .line 250
    move-object/from16 v19, v4

    .line 251
    .line 252
    const-string v4, "$ECB192"

    .line 253
    .line 254
    invoke-static {v1, v3, v4, v12, v11}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 255
    .line 256
    .line 257
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 258
    .line 259
    move-object/from16 v20, v11

    .line 260
    .line 261
    new-instance v11, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-object/from16 v21, v2

    .line 270
    .line 271
    const-string v2, "$ECB256"

    .line 272
    .line 273
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-interface {v1, v12, v4, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v11, "$CBC128"

    .line 289
    .line 290
    invoke-static {v3, v11, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-static {v1, v12, v2, v3, v6}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    const-string v11, "$CBC192"

    .line 299
    .line 300
    invoke-static {v11, v12, v2, v7, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    const-string v11, "$CBC256"

    .line 305
    .line 306
    invoke-static {v3, v11, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-interface {v1, v12, v8, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 314
    .line 315
    const-string v11, "$OFB128"

    .line 316
    .line 317
    invoke-static {v1, v3, v11, v12, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 318
    .line 319
    .line 320
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 321
    .line 322
    move-object/from16 v22, v8

    .line 323
    .line 324
    const-string v8, "$OFB192"

    .line 325
    .line 326
    invoke-static {v1, v3, v8, v12, v11}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 327
    .line 328
    .line 329
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 330
    .line 331
    move-object/from16 v23, v4

    .line 332
    .line 333
    const-string v4, "$OFB256"

    .line 334
    .line 335
    invoke-static {v1, v3, v4, v12, v8}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 336
    .line 337
    .line 338
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 339
    .line 340
    move-object/from16 v24, v8

    .line 341
    .line 342
    const-string v8, "$CFB128"

    .line 343
    .line 344
    invoke-static {v1, v3, v8, v12, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 345
    .line 346
    .line 347
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 348
    .line 349
    move-object/from16 v25, v11

    .line 350
    .line 351
    const-string v11, "$CFB192"

    .line 352
    .line 353
    invoke-static {v1, v3, v11, v12, v8}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 354
    .line 355
    .line 356
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 357
    .line 358
    move-object/from16 v26, v8

    .line 359
    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    move-object/from16 v27, v7

    .line 369
    .line 370
    const-string v7, "$CFB256"

    .line 371
    .line 372
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-interface {v1, v12, v11, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v7, "Cipher.AESWRAP"

    .line 383
    .line 384
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$000()Ljava/util/Map;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    invoke-interface {v1, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 389
    .line 390
    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v8, "$Wrap"

    .line 400
    .line 401
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    const-string v8, "Cipher.AESWRAP"

    .line 409
    .line 410
    invoke-interface {v1, v8, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 414
    .line 415
    const-string v8, "$Wrap128"

    .line 416
    .line 417
    invoke-static {v1, v3, v8, v12, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 418
    .line 419
    .line 420
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 421
    .line 422
    move-object/from16 v28, v7

    .line 423
    .line 424
    const-string v7, "$Wrap192"

    .line 425
    .line 426
    invoke-static {v1, v3, v7, v12, v8}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 427
    .line 428
    .line 429
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 430
    .line 431
    move-object/from16 v29, v8

    .line 432
    .line 433
    const-string v8, "$Wrap256"

    .line 434
    .line 435
    invoke-static {v1, v3, v8, v12, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 436
    .line 437
    .line 438
    const-string v8, "Alg.Alias.Cipher.AESKW"

    .line 439
    .line 440
    move-object/from16 v30, v7

    .line 441
    .line 442
    const-string v7, "AESWRAP"

    .line 443
    .line 444
    invoke-interface {v1, v8, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v7, "Cipher.AESWRAPPAD"

    .line 448
    .line 449
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$000()Ljava/util/Map;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    invoke-interface {v1, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 454
    .line 455
    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v8, "$WrapPad"

    .line 465
    .line 466
    move-object/from16 v31, v11

    .line 467
    .line 468
    const-string v11, "Cipher.AESWRAPPAD"

    .line 469
    .line 470
    invoke-static {v7, v8, v1, v11}, Lorg/bouncycastle/jcajce/provider/digest/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap_pad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 474
    .line 475
    const-string v8, "$WrapPad128"

    .line 476
    .line 477
    invoke-static {v1, v3, v8, v12, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 478
    .line 479
    .line 480
    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap_pad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 481
    .line 482
    const-string v11, "$WrapPad192"

    .line 483
    .line 484
    invoke-static {v1, v3, v11, v12, v8}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 485
    .line 486
    .line 487
    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap_pad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 488
    .line 489
    move-object/from16 v32, v8

    .line 490
    .line 491
    const-string v8, "$WrapPad256"

    .line 492
    .line 493
    invoke-static {v1, v3, v8, v12, v11}, Lorg/bouncycastle/jcajce/provider/digest/a;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 494
    .line 495
    .line 496
    const-string v8, "Alg.Alias.Cipher.AESKWP"

    .line 497
    .line 498
    move-object/from16 v33, v11

    .line 499
    .line 500
    const-string v11, "AESWRAPPAD"

    .line 501
    .line 502
    move-object/from16 v34, v7

    .line 503
    .line 504
    const-string v7, "$RFC3211Wrap"

    .line 505
    .line 506
    invoke-static {v8, v11, v3, v7, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    const-string v8, "Cipher.AESRFC3211WRAP"

    .line 511
    .line 512
    const-string v11, "$RFC5649Wrap"

    .line 513
    .line 514
    invoke-static {v8, v7, v3, v11, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    const-string v8, "Cipher.AESRFC5649WRAP"

    .line 519
    .line 520
    const-string v11, "$AlgParamGenCCM"

    .line 521
    .line 522
    invoke-static {v8, v7, v3, v11, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    const-string v8, "AlgorithmParameterGenerator.CCM"

    .line 527
    .line 528
    invoke-static {v1, v8, v7, v5, v13}, Ll2/z;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    invoke-static {v1, v7, v14, v5, v15}, Ll2/z;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    invoke-static {v1, v7, v14, v5, v0}, Ll2/z;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    invoke-interface {v1, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    const-string v7, "Cipher.CCM"

    .line 544
    .line 545
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$000()Ljava/util/Map;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    invoke-interface {v1, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 550
    .line 551
    .line 552
    new-instance v7, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v8, "$CCM"

    .line 561
    .line 562
    const-string v11, "Cipher.CCM"

    .line 563
    .line 564
    invoke-static {v8, v11, v3, v7, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    const-string v8, "$CCM128"

    .line 569
    .line 570
    invoke-static {v8, v12, v7, v13, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    const-string v8, "$CCM192"

    .line 575
    .line 576
    invoke-static {v3, v8, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    invoke-static {v1, v12, v7, v3, v15}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    const-string v8, "$CCM256"

    .line 585
    .line 586
    invoke-static {v8, v12, v7, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v8, "$AlgParamGenGCM"

    .line 594
    .line 595
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    const-string v8, "AlgorithmParameterGenerator.GCM"

    .line 603
    .line 604
    invoke-interface {v1, v8, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    new-instance v7, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v7

    .line 619
    invoke-interface {v1, v7, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-instance v7, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    move-object/from16 v8, v18

    .line 628
    .line 629
    invoke-static {v10, v5, v7, v8, v1}, Ll2/z;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    move-object/from16 v7, v17

    .line 634
    .line 635
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-interface {v1, v5, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    const-string v5, "Cipher.GCM"

    .line 646
    .line 647
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/AES;->access$000()Ljava/util/Map;

    .line 648
    .line 649
    .line 650
    move-result-object v10

    .line 651
    invoke-interface {v1, v5, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 652
    .line 653
    .line 654
    new-instance v5, Ljava/lang/StringBuilder;

    .line 655
    .line 656
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .line 658
    .line 659
    const-string v10, "$GCM"

    .line 660
    .line 661
    const-string v11, "Cipher.GCM"

    .line 662
    .line 663
    invoke-static {v3, v10, v11, v5, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    const-string v10, "$GCM128"

    .line 668
    .line 669
    invoke-static {v3, v10, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    invoke-static {v1, v12, v5, v3, v9}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    const-string v10, "$GCM192"

    .line 678
    .line 679
    invoke-static {v10, v12, v5, v8, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    const-string v10, "$GCM256"

    .line 684
    .line 685
    invoke-static {v3, v10, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    invoke-static {v1, v12, v5, v3, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    const-string v10, "$KeyGen"

    .line 694
    .line 695
    const-string v11, "KeyGenerator.AES"

    .line 696
    .line 697
    invoke-static {v10, v11, v3, v5, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    const-string v11, "$KeyGen128"

    .line 702
    .line 703
    const-string v12, "KeyGenerator.2.16.840.1.101.3.4.2"

    .line 704
    .line 705
    invoke-static {v11, v12, v3, v5, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    move-result-object v5

    .line 709
    const-string v12, "$KeyGen192"

    .line 710
    .line 711
    const-string v14, "KeyGenerator.2.16.840.1.101.3.4.22"

    .line 712
    .line 713
    invoke-static {v12, v14, v3, v5, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    const-string v14, "$KeyGen256"

    .line 718
    .line 719
    move-object/from16 v17, v0

    .line 720
    .line 721
    const-string v0, "KeyGenerator.2.16.840.1.101.3.4.42"

    .line 722
    .line 723
    invoke-static {v14, v0, v3, v5, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    const-string v5, "KeyGenerator"

    .line 728
    .line 729
    move-object/from16 v18, v15

    .line 730
    .line 731
    move-object/from16 v15, v21

    .line 732
    .line 733
    invoke-static {v11, v5, v0, v15, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-static {v3, v11, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-static {v1, v5, v0, v3, v6}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-static {v11, v5, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static {v3, v11, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-static {v1, v5, v0, v3, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    move-object/from16 v2, v20

    .line 758
    .line 759
    invoke-static {v12, v5, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-static {v3, v12, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    move-object/from16 v2, v27

    .line 768
    .line 769
    invoke-static {v1, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    move-object/from16 v2, v25

    .line 774
    .line 775
    invoke-static {v12, v5, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-static {v3, v12, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    move-object/from16 v2, v26

    .line 784
    .line 785
    invoke-static {v1, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    move-object/from16 v2, v23

    .line 790
    .line 791
    invoke-static {v14, v5, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-static {v3, v14, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    move-object/from16 v2, v22

    .line 800
    .line 801
    invoke-static {v1, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    move-object/from16 v2, v24

    .line 806
    .line 807
    invoke-static {v14, v5, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-static {v3, v14, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    move-object/from16 v2, v31

    .line 816
    .line 817
    invoke-static {v1, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    const-string v2, "KeyGenerator.AESWRAP"

    .line 822
    .line 823
    invoke-static {v10, v2, v3, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    move-object/from16 v2, v28

    .line 828
    .line 829
    invoke-static {v11, v5, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-static {v3, v12, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    move-object/from16 v2, v29

    .line 838
    .line 839
    invoke-static {v1, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    move-object/from16 v2, v30

    .line 844
    .line 845
    invoke-static {v14, v5, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-static {v3, v11, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-static {v1, v5, v0, v3, v9}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-static {v12, v5, v0, v8, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-static {v3, v14, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-static {v1, v5, v0, v3, v7}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-static {v11, v5, v0, v13, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-static {v3, v12, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    move-object/from16 v2, v18

    .line 878
    .line 879
    invoke-static {v1, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    move-object/from16 v4, v17

    .line 884
    .line 885
    invoke-static {v14, v5, v0, v4, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    const-string v6, "KeyGenerator.AESWRAPPAD"

    .line 890
    .line 891
    invoke-static {v3, v10, v6, v0, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-static {v3, v11, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    move-object/from16 v6, v34

    .line 900
    .line 901
    invoke-static {v1, v5, v0, v3, v6}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    move-object/from16 v6, v32

    .line 906
    .line 907
    invoke-static {v12, v5, v0, v6, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-static {v3, v14, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    move-object/from16 v6, v33

    .line 916
    .line 917
    invoke-static {v1, v5, v0, v3, v6}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    const-string v5, "$AESCMAC"

    .line 922
    .line 923
    const-string v6, "Mac.AESCMAC"

    .line 924
    .line 925
    invoke-static {v5, v6, v3, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    const-string v5, "$AESCCMMAC"

    .line 930
    .line 931
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    const-string v5, "Mac.AESCCMMAC"

    .line 939
    .line 940
    invoke-interface {v1, v5, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    const-string v5, "Mac."

    .line 946
    .line 947
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v6

    .line 954
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    const-string v6, "$AESCCMMAC128"

    .line 962
    .line 963
    invoke-static {v3, v6, v0, v5, v1}, Ll2/z;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    const-string v2, "$AESCCMMAC192"

    .line 979
    .line 980
    invoke-static {v3, v2, v0, v5, v1}, Ll2/z;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    const-string v4, "$AESCCMMAC256"

    .line 1004
    .line 1005
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1016
    .line 1017
    const-string v2, "Alg.Alias.Cipher"

    .line 1018
    .line 1019
    const-string v4, "PBEWITHSHAAND128BITAES-CBC-BC"

    .line 1020
    .line 1021
    invoke-interface {v1, v2, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1025
    .line 1026
    const-string v6, "PBEWITHSHAAND192BITAES-CBC-BC"

    .line 1027
    .line 1028
    invoke-interface {v1, v2, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1032
    .line 1033
    const-string v8, "PBEWITHSHAAND256BITAES-CBC-BC"

    .line 1034
    .line 1035
    invoke-interface {v1, v2, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1039
    .line 1040
    const-string v10, "PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 1041
    .line 1042
    invoke-interface {v1, v2, v9, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1046
    .line 1047
    const-string v13, "PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 1048
    .line 1049
    invoke-interface {v1, v2, v12, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    sget-object v14, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1053
    .line 1054
    const-string v15, "PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 1055
    .line 1056
    invoke-static {v1, v2, v15, v3, v14}, Lorg/bouncycastle/jcajce/provider/digest/a;->k(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    move-object/from16 v17, v11

    .line 1061
    .line 1062
    const-string v11, "$PBEWithSHA1AESCBC128"

    .line 1063
    .line 1064
    move-object/from16 v18, v14

    .line 1065
    .line 1066
    const-string v14, "Cipher.PBEWITHSHAAND128BITAES-CBC-BC"

    .line 1067
    .line 1068
    invoke-static {v11, v14, v3, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    const-string v11, "$PBEWithSHA1AESCBC192"

    .line 1073
    .line 1074
    const-string v14, "Cipher.PBEWITHSHAAND192BITAES-CBC-BC"

    .line 1075
    .line 1076
    invoke-static {v11, v14, v3, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v2

    .line 1080
    const-string v11, "$PBEWithSHA1AESCBC256"

    .line 1081
    .line 1082
    const-string v14, "Cipher.PBEWITHSHAAND256BITAES-CBC-BC"

    .line 1083
    .line 1084
    invoke-static {v11, v14, v3, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    const-string v11, "$PBEWithSHA256AESCBC128"

    .line 1089
    .line 1090
    const-string v14, "Cipher.PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 1091
    .line 1092
    invoke-static {v11, v14, v3, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    const-string v11, "$PBEWithSHA256AESCBC192"

    .line 1097
    .line 1098
    const-string v14, "Cipher.PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 1099
    .line 1100
    invoke-static {v11, v14, v3, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v2

    .line 1104
    const-string v11, "$PBEWithSHA256AESCBC256"

    .line 1105
    .line 1106
    const-string v14, "Cipher.PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 1107
    .line 1108
    invoke-static {v2, v11, v1, v14}, Lorg/bouncycastle/jcajce/provider/digest/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC"

    .line 1112
    .line 1113
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC"

    .line 1117
    .line 1118
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC"

    .line 1122
    .line 1123
    invoke-interface {v1, v2, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC"

    .line 1127
    .line 1128
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC"

    .line 1132
    .line 1133
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC"

    .line 1137
    .line 1138
    invoke-interface {v1, v2, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHAAND128BITAES-BC"

    .line 1142
    .line 1143
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHAAND192BITAES-BC"

    .line 1147
    .line 1148
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHAAND256BITAES-BC"

    .line 1152
    .line 1153
    invoke-interface {v1, v2, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-BC"

    .line 1157
    .line 1158
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-BC"

    .line 1162
    .line 1163
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-BC"

    .line 1167
    .line 1168
    invoke-interface {v1, v2, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-BC"

    .line 1172
    .line 1173
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-BC"

    .line 1177
    .line 1178
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-BC"

    .line 1182
    .line 1183
    invoke-interface {v1, v2, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC"

    .line 1187
    .line 1188
    invoke-interface {v1, v2, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC"

    .line 1192
    .line 1193
    invoke-interface {v1, v2, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC"

    .line 1197
    .line 1198
    invoke-interface {v1, v2, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA256AND128BITAES-BC"

    .line 1202
    .line 1203
    invoke-interface {v1, v2, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA256AND192BITAES-BC"

    .line 1207
    .line 1208
    invoke-interface {v1, v2, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA256AND256BITAES-BC"

    .line 1212
    .line 1213
    invoke-interface {v1, v2, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-BC"

    .line 1217
    .line 1218
    invoke-interface {v1, v2, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    const-string v2, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-BC"

    .line 1222
    .line 1223
    const-string v11, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-BC"

    .line 1224
    .line 1225
    invoke-static {v2, v13, v11, v15, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    const-string v11, "$PBEWithAESCBC"

    .line 1230
    .line 1231
    const-string v14, "Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    .line 1232
    .line 1233
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v2

    .line 1237
    const-string v14, "Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    .line 1238
    .line 1239
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    const-string v14, "Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    .line 1244
    .line 1245
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    const-string v11, "$KeyFactory"

    .line 1250
    .line 1251
    const-string v14, "SecretKeyFactory.AES"

    .line 1252
    .line 1253
    invoke-static {v3, v11, v14, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V

    .line 1254
    .line 1255
    .line 1256
    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1257
    .line 1258
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1259
    .line 1260
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    .line 1266
    const-string v14, "$KeyFactory"

    .line 1267
    .line 1268
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v11

    .line 1275
    const-string v14, "SecretKeyFactory"

    .line 1276
    .line 1277
    invoke-interface {v1, v14, v2, v11}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    const-string v11, "$PBEWithMD5And128BitAESCBCOpenSSL"

    .line 1286
    .line 1287
    const-string v14, "SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    .line 1288
    .line 1289
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    const-string v11, "$PBEWithMD5And192BitAESCBCOpenSSL"

    .line 1294
    .line 1295
    const-string v14, "SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    .line 1296
    .line 1297
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v2

    .line 1301
    const-string v11, "$PBEWithMD5And256BitAESCBCOpenSSL"

    .line 1302
    .line 1303
    const-string v14, "SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    .line 1304
    .line 1305
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v2

    .line 1309
    const-string v11, "$PBEWithSHAAnd128BitAESBC"

    .line 1310
    .line 1311
    const-string v14, "SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC"

    .line 1312
    .line 1313
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v2

    .line 1317
    const-string v11, "$PBEWithSHAAnd192BitAESBC"

    .line 1318
    .line 1319
    const-string v14, "SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC"

    .line 1320
    .line 1321
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v2

    .line 1325
    const-string v11, "$PBEWithSHAAnd256BitAESBC"

    .line 1326
    .line 1327
    const-string v14, "SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC"

    .line 1328
    .line 1329
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    const-string v11, "$PBEWithSHA256And128BitAESBC"

    .line 1334
    .line 1335
    const-string v14, "SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 1336
    .line 1337
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v2

    .line 1341
    const-string v11, "$PBEWithSHA256And192BitAESBC"

    .line 1342
    .line 1343
    const-string v14, "SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 1344
    .line 1345
    invoke-static {v3, v11, v14, v2, v1}, Ll2/z;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v2

    .line 1349
    const-string v11, "$PBEWithSHA256And256BitAESBC"

    .line 1350
    .line 1351
    const-string v14, "SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 1352
    .line 1353
    invoke-static {v3, v11, v14, v2, v1}, Lorg/bouncycastle/jcajce/provider/digest/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V

    .line 1354
    .line 1355
    .line 1356
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC"

    .line 1357
    .line 1358
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC"

    .line 1362
    .line 1363
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC"

    .line 1367
    .line 1368
    invoke-interface {v1, v2, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC"

    .line 1372
    .line 1373
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    .line 1375
    .line 1376
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC"

    .line 1377
    .line 1378
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC"

    .line 1382
    .line 1383
    invoke-interface {v1, v2, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC"

    .line 1387
    .line 1388
    invoke-interface {v1, v2, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC"

    .line 1392
    .line 1393
    invoke-interface {v1, v2, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC"

    .line 1397
    .line 1398
    invoke-interface {v1, v2, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-BC"

    .line 1402
    .line 1403
    invoke-interface {v1, v2, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-BC"

    .line 1407
    .line 1408
    invoke-interface {v1, v2, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    const-string v2, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-BC"

    .line 1412
    .line 1413
    invoke-interface {v1, v2, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    .line 1415
    .line 1416
    const-string v2, "Alg.Alias.SecretKeyFactory"

    .line 1417
    .line 1418
    invoke-interface {v1, v2, v0, v4}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    invoke-interface {v1, v2, v5, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1422
    .line 1423
    .line 1424
    invoke-interface {v1, v2, v7, v8}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    invoke-interface {v1, v2, v9, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-interface {v1, v2, v12, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    move-object/from16 v4, v18

    .line 1434
    .line 1435
    invoke-interface {v1, v2, v4, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC"

    .line 1439
    .line 1440
    const-string v6, "PKCS12PBE"

    .line 1441
    .line 1442
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC"

    .line 1446
    .line 1447
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC"

    .line 1451
    .line 1452
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC"

    .line 1456
    .line 1457
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC"

    .line 1461
    .line 1462
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 1466
    .line 1467
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC"

    .line 1471
    .line 1472
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC"

    .line 1476
    .line 1477
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC"

    .line 1481
    .line 1482
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC"

    .line 1486
    .line 1487
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC"

    .line 1491
    .line 1492
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC"

    .line 1496
    .line 1497
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    .line 1499
    .line 1500
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC"

    .line 1501
    .line 1502
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC"

    .line 1506
    .line 1507
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    const-string v2, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC"

    .line 1511
    .line 1512
    invoke-interface {v1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    move-object/from16 v8, v16

    .line 1518
    .line 1519
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v0

    .line 1533
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v2

    .line 1545
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1556
    .line 1557
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v2

    .line 1564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v0

    .line 1571
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    .line 1573
    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v2

    .line 1583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v0

    .line 1590
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    .line 1592
    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1594
    .line 1595
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v2

    .line 1602
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v0

    .line 1609
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    .line 1611
    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1613
    .line 1614
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v2

    .line 1621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v0

    .line 1628
    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    .line 1630
    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    .line 1639
    const-string v2, "$AESGMAC"

    .line 1640
    .line 1641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v0

    .line 1648
    move-object/from16 v2, v17

    .line 1649
    .line 1650
    invoke-static {v3, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v2

    .line 1654
    move-object/from16 v4, p0

    .line 1655
    .line 1656
    move-object/from16 v5, v19

    .line 1657
    .line 1658
    invoke-virtual {v4, v1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addGMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    .line 1660
    .line 1661
    const-string v0, "$Poly1305"

    .line 1662
    .line 1663
    invoke-static {v3, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    const-string v2, "$Poly1305KeyGen"

    .line 1668
    .line 1669
    invoke-static {v3, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v2

    .line 1673
    invoke-virtual {v4, v1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addPoly1305Algorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    return-void
.end method
