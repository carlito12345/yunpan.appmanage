.class public Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;
.super Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;
.source "SourceFile"


# static fields
.field private static final CONTENT_ALGORITHM:Ljava/lang/String; = "algorithm"

.field private static final CONTENT_DATE:Ljava/lang/String; = "date"

.field private static final CONTENT_PRODUCT:Ljava/lang/String; = "product"

.field private static final CONTENT_REGION:Ljava/lang/String; = "region"

.field private static final CONTENT_STRING_TO_SIGN:Ljava/lang/String; = "stringToSign"

.field private static final DEFAULT_SIGNED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ISO8601_DATETIME_FORMAT:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field private static final ISO8601_DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field private static final OSS4_HMAC_SHA256:Ljava/lang/String; = "OSS4-HMAC-SHA256"

.field private static final SECRET_KEY_PREFIX:Ljava/lang/String; = "aliyun_v4"

.field private static final SECURITY_TOKEN:Ljava/lang/String; = "x-oss-security-token"

.field private static final SEPARATOR_BACKSLASH:Ljava/lang/String; = "/"

.field private static final TERMINATOR:Ljava/lang/String; = "aliyun_v4_request"


# instance fields
.field additionalSignedHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestDateTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "Content-Type"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Content-MD5"

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/String;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->DEFAULT_SIGNED_HEADERS:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;-><init>(Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addOSSContentSha256Header(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 2

    .line 1
    const-string v0, "x-oss-content-sha256"

    .line 2
    .line 3
    const-string v1, "UNSIGNED-PAYLOAD"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private addSignedHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 2
    .line 3
    const-string v1, "Host"

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getEndpoint()Ljava/net/URI;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private buildAuthorization(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Credential="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, "/"

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildScope()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasAdditionalSignedHeaders()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, ""

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, ",AdditionalHeaders="

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, ";"

    .line 48
    .line 49
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    const-string v1, ",Signature="

    .line 63
    .line 64
    invoke-static {v1, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v1, "OSS4-HMAC-SHA256 "

    .line 69
    .line 70
    invoke-static {v1, p2, v0, p1}, Lta/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method private buildCanonicalRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getResourcePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "\n"

    .line 16
    .line 17
    invoke-static {v0, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v3, Ljava/util/TreeMap;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/util/Map$Entry;

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-static {v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4, v6}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, ""

    .line 110
    .line 111
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Ljava/util/Map$Entry;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_1

    .line 140
    .line 141
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_1

    .line 152
    .line 153
    const-string v4, "="

    .line 154
    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    :cond_1
    const-string v4, "&"

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSortedHeadersMap(Ljava/util/Map;)Ljava/util/TreeMap;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_3

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    .line 209
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v5, ":"

    .line 219
    .line 220
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v4, Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, ";"

    .line 247
    .line 248
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 249
    .line 250
    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v1, "x-oss-content-sha256"

    .line 265
    .line 266
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_4

    .line 277
    .line 278
    const-string p1, "UNSIGNED-PAYLOAD"

    .line 279
    .line 280
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    return-object p1
.end method

.method private buildScope()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDate()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getProduct()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "/aliyun_v4_request"

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method private buildSignature([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->create(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toHex([B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private buildSigningKey(Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)[B
    .locals 3

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->create(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "aliyun_v4"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempSK()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDate()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getProduct()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v2, "aliyun_v4_request"

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/oss/signer/ServiceSignature;->computeHash([B[B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method private buildSortedHeadersMap(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {p0, v2}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasSignedHeaders(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-object v0
.end method

.method private buildStringToSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OSS4-HMAC-SHA256\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateSha256([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDate()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getIso8601DateFormat()Ljava/text/DateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getDateTime()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getIso8601DateTimeFormat()Ljava/text/DateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static getIso8601DateFormat()Ljava/text/DateFormat;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMdd"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/SimpleTimeZone;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "GMT"

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private static getIso8601DateTimeFormat()Ljava/text/DateFormat;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/SimpleTimeZone;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "GMT"

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private getProduct()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getProduct()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCloudBoxId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCloudBoxId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getRegion()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method private hasAdditionalSignedHeaders()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private hasDefaultSignedHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->DEFAULT_SIGNED_HEADERS:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const-string v0, "x-oss-"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private hasSignedHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasDefaultSignedHeaders(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private initRequestDateTime()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->getFixedSkewedTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    .line 20
    .line 21
    return-void
.end method

.method private resolveAdditionalSignedHeaders(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/internal/RequestMessage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-direct {p0, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasDefaultSignedHeaders(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public addAuthorizationHeader(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSigningKey(Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v1, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSignature([BLjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildAuthorization(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "Authorization"

    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public addDateHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->initRequestDateTime()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "Date"

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getDateTime()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildCanonicalRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildStringToSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public presign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    .line 14
    .line 15
    if-nez v1, :cond_5

    .line 16
    .line 17
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 42
    .line 43
    new-instance v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x0

    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    move-object v1, v7

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    move-object v0, v7

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->initRequestDateTime()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getExpiration()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getIso8601DateTimeFormat()Ljava/text/DateFormat;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->requestDateTime:Ljava/util/Date;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "x-oss-date"

    .line 87
    .line 88
    invoke-virtual {p1, v3, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "x-oss-expires"

    .line 92
    .line 93
    invoke-virtual {p1, v2, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getAdditionalHeaderNames()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {p0, p1, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->resolveAdditionalSignedHeaders(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Ljava/util/Set;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addSignedHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->hasAdditionalSignedHeaders()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    const-string v1, ";"

    .line 115
    .line 116
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->additionalSignedHeaders:Ljava/util/Set;

    .line 117
    .line 118
    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v2, "x-oss-additional-headers"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    const-string v1, "x-oss-signature-version"

    .line 128
    .line 129
    const-string v2, "OSS4-HMAC-SHA256"

    .line 130
    .line 131
    invoke-virtual {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->useSecurityToken()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_4

    .line 139
    .line 140
    const-string v1, "x-oss-security-token"

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, "/"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildScope()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string v2, "x-oss-credential"

    .line 178
    .line 179
    invoke-virtual {p1, v2, v1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildStringToSign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSigningKey(Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {p0, v0, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->buildSignature([BLjava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "x-oss-signature"

    .line 195
    .line 196
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 201
    .line 202
    const-string v0, "V4 signature does not support OSSCustomSignerCredentialProvider"

    .line 203
    .line 204
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :cond_6
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    .line 209
    .line 210
    const-string v0, "Region haven\'t been set!"

    .line 211
    .line 212
    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1
.end method

.method public sign(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->getRegion()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->signerParams:Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerParams;->getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    .line 21
    .line 22
    if-nez v1, :cond_5

    .line 23
    .line 24
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    .line 49
    .line 50
    new-instance v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v4, 0x0

    .line 61
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    move-object v1, v7

    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 65
    .line 66
    .line 67
    move-object v0, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addDateHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getAdditionalHeaderNames()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {p0, p1, v1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->resolveAdditionalSignedHeaders(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Ljava/util/Set;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addSignedHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSSignerBase;->addSecurityTokenHeaderIfNeeded(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addOSSContentSha256Header(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/signer/OSSV4Signer;->addAuthorizationHeader(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    const-string p1, "Can\'t get a federation token"

    .line 96
    .line 97
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 107
    .line 108
    const-string v0, "V4 signature does not support OSSCustomSignerCredentialProvider"

    .line 109
    .line 110
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_6
    new-instance p1, Lcom/alibaba/sdk/android/oss/ClientException;

    .line 115
    .line 116
    const-string v0, "Region haven\'t been set!"

    .line 117
    .line 118
    invoke-direct {p1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method
