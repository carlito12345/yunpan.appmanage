.class public final enum Lcom/android/apksig/internal/apk/SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum DETDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public static final enum VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;


# instance fields
.field private final mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field private final mId:I

.field private final mJcaKeyAlgorithm:Ljava/lang/String;

.field private final mJcaSigAlgMinSdkVersion:I

.field private final mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinSdkVersion:I


# direct methods
.method private static synthetic $values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 4
    .line 5
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DETDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 2
    .line 3
    sget-object v10, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 4
    .line 5
    new-instance v6, Ljava/security/spec/PSSParameterSpec;

    .line 6
    .line 7
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const-string v1, "SHA-256"

    .line 13
    .line 14
    const-string v2, "MGF1"

    .line 15
    .line 16
    move-object v0, v6

    .line 17
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 18
    .line 19
    .line 20
    const-string v0, "SHA256withRSA/PSS"

    .line 21
    .line 22
    invoke-static {v0, v6}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/16 v7, 0x18

    .line 27
    .line 28
    const/16 v8, 0x17

    .line 29
    .line 30
    const-string v1, "RSA_PSS_WITH_SHA256"

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/16 v3, 0x101

    .line 34
    .line 35
    const-string v5, "RSA"

    .line 36
    .line 37
    move-object v0, v9

    .line 38
    move-object v4, v10

    .line 39
    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 40
    .line 41
    .line 42
    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 43
    .line 44
    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 45
    .line 46
    sget-object v20, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 47
    .line 48
    new-instance v7, Ljava/security/spec/PSSParameterSpec;

    .line 49
    .line 50
    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 51
    .line 52
    const/16 v5, 0x40

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    const-string v2, "SHA-512"

    .line 56
    .line 57
    const-string v3, "MGF1"

    .line 58
    .line 59
    move-object v1, v7

    .line 60
    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 61
    .line 62
    .line 63
    const-string v1, "SHA512withRSA/PSS"

    .line 64
    .line 65
    invoke-static {v1, v7}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v17

    .line 69
    const/16 v18, 0x18

    .line 70
    .line 71
    const/16 v19, 0x17

    .line 72
    .line 73
    const-string v12, "RSA_PSS_WITH_SHA512"

    .line 74
    .line 75
    const/4 v13, 0x1

    .line 76
    const/16 v14, 0x102

    .line 77
    .line 78
    const-string v16, "RSA"

    .line 79
    .line 80
    move-object v11, v0

    .line 81
    move-object/from16 v15, v20

    .line 82
    .line 83
    invoke-direct/range {v11 .. v19}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PSS_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 87
    .line 88
    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 89
    .line 90
    const-string v11, "SHA256withRSA"

    .line 91
    .line 92
    const/4 v12, 0x0

    .line 93
    invoke-static {v11, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const/16 v7, 0x18

    .line 98
    .line 99
    const/4 v8, 0x1

    .line 100
    const-string v1, "RSA_PKCS1_V1_5_WITH_SHA256"

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    const/16 v3, 0x103

    .line 104
    .line 105
    const-string v5, "RSA"

    .line 106
    .line 107
    move-object v0, v9

    .line 108
    move-object v4, v10

    .line 109
    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 110
    .line 111
    .line 112
    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 113
    .line 114
    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 115
    .line 116
    const-string v1, "SHA512withRSA"

    .line 117
    .line 118
    invoke-static {v1, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const/16 v8, 0x18

    .line 123
    .line 124
    const/4 v9, 0x1

    .line 125
    const-string v2, "RSA_PKCS1_V1_5_WITH_SHA512"

    .line 126
    .line 127
    const/4 v3, 0x3

    .line 128
    const/16 v4, 0x104

    .line 129
    .line 130
    const-string v6, "RSA"

    .line 131
    .line 132
    move-object v1, v0

    .line 133
    move-object/from16 v5, v20

    .line 134
    .line 135
    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 136
    .line 137
    .line 138
    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 139
    .line 140
    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 141
    .line 142
    const-string v13, "SHA256withECDSA"

    .line 143
    .line 144
    invoke-static {v13, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const/16 v7, 0x18

    .line 149
    .line 150
    const/16 v8, 0xb

    .line 151
    .line 152
    const-string v1, "ECDSA_WITH_SHA256"

    .line 153
    .line 154
    const/4 v2, 0x4

    .line 155
    const/16 v3, 0x201

    .line 156
    .line 157
    const-string v5, "EC"

    .line 158
    .line 159
    move-object v0, v9

    .line 160
    move-object v4, v10

    .line 161
    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 162
    .line 163
    .line 164
    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 165
    .line 166
    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 167
    .line 168
    const-string v1, "SHA512withECDSA"

    .line 169
    .line 170
    invoke-static {v1, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    const/16 v8, 0x18

    .line 175
    .line 176
    const/16 v9, 0xb

    .line 177
    .line 178
    const-string v2, "ECDSA_WITH_SHA512"

    .line 179
    .line 180
    const/4 v3, 0x5

    .line 181
    const/16 v4, 0x202

    .line 182
    .line 183
    const-string v6, "EC"

    .line 184
    .line 185
    move-object v1, v0

    .line 186
    move-object/from16 v5, v20

    .line 187
    .line 188
    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 192
    .line 193
    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 194
    .line 195
    const-string v14, "SHA256withDSA"

    .line 196
    .line 197
    invoke-static {v14, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    const/16 v7, 0x18

    .line 202
    .line 203
    const/4 v8, 0x1

    .line 204
    const-string v1, "DSA_WITH_SHA256"

    .line 205
    .line 206
    const/4 v2, 0x6

    .line 207
    const/16 v3, 0x301

    .line 208
    .line 209
    const-string v5, "DSA"

    .line 210
    .line 211
    move-object v0, v9

    .line 212
    move-object v4, v10

    .line 213
    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 214
    .line 215
    .line 216
    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 217
    .line 218
    new-instance v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 219
    .line 220
    const-string v0, "SHA256withDetDSA"

    .line 221
    .line 222
    invoke-static {v0, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const-string v1, "DETDSA_WITH_SHA256"

    .line 227
    .line 228
    const/4 v2, 0x7

    .line 229
    const-string v5, "DSA"

    .line 230
    .line 231
    move-object v0, v9

    .line 232
    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 233
    .line 234
    .line 235
    sput-object v9, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DETDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 236
    .line 237
    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 238
    .line 239
    sget-object v10, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 240
    .line 241
    invoke-static {v11, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 242
    .line 243
    .line 244
    move-result-object v21

    .line 245
    const/16 v22, 0x1c

    .line 246
    .line 247
    const/16 v23, 0x1

    .line 248
    .line 249
    const-string v16, "VERITY_RSA_PKCS1_V1_5_WITH_SHA256"

    .line 250
    .line 251
    const/16 v17, 0x8

    .line 252
    .line 253
    const/16 v18, 0x421

    .line 254
    .line 255
    const-string v20, "RSA"

    .line 256
    .line 257
    move-object v15, v0

    .line 258
    move-object/from16 v19, v10

    .line 259
    .line 260
    invoke-direct/range {v15 .. v23}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 261
    .line 262
    .line 263
    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 264
    .line 265
    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 266
    .line 267
    invoke-static {v13, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    const/16 v8, 0x1c

    .line 272
    .line 273
    const/16 v9, 0xb

    .line 274
    .line 275
    const-string v2, "VERITY_ECDSA_WITH_SHA256"

    .line 276
    .line 277
    const/16 v3, 0x9

    .line 278
    .line 279
    const/16 v4, 0x423

    .line 280
    .line 281
    const-string v6, "EC"

    .line 282
    .line 283
    move-object v1, v0

    .line 284
    move-object v5, v10

    .line 285
    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 286
    .line 287
    .line 288
    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 289
    .line 290
    new-instance v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 291
    .line 292
    invoke-static {v14, v12}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    const/4 v9, 0x1

    .line 297
    const-string v2, "VERITY_DSA_WITH_SHA256"

    .line 298
    .line 299
    const/16 v3, 0xa

    .line 300
    .line 301
    const/16 v4, 0x425

    .line 302
    .line 303
    const-string v6, "DSA"

    .line 304
    .line 305
    move-object v1, v0

    .line 306
    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;-><init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V

    .line 307
    .line 308
    .line 309
    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 310
    .line 311
    invoke-static {}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    sput-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 316
    .line 317
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/apksig/internal/apk/ContentDigestAlgorithm;Ljava/lang/String;Lcom/android/apksig/internal/util/Pair;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "Ljava/lang/String;",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mId:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;

    .line 11
    .line 12
    iput p7, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mMinSdkVersion:I

    .line 13
    .line 14
    iput p8, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSigAlgMinSdkVersion:I

    .line 15
    .line 16
    return-void
.end method

.method public static findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/apksig/internal/apk/SignatureAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->$VALUES:[Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mContentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mId:I

    .line 2
    .line 3
    return v0
.end method

.method public getJcaKeyAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaKeyAlgorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJcaSigAlgMinSdkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSigAlgMinSdkVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mJcaSignatureAlgAndParams:Lcom/android/apksig/internal/util/Pair;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMinSdkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->mMinSdkVersion:I

    .line 2
    .line 3
    return v0
.end method
