.class public Lcom/burgstaller/okhttp/digest/DigestAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/burgstaller/okhttp/digest/CachingAuthenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;
    }
.end annotation


# static fields
.field private static final CREDENTIAL_CHARSET:Ljava/lang/String; = "http.auth.credential-charset"

.field private static final HEXADECIMAL:[C

.field public static final PROXY_AUTH:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTH_RESP:Ljava/lang/String; = "Proxy-Authorization"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OkDigest"

.field public static final WWW_AUTH:Ljava/lang/String; = "WWW-Authenticate"

.field public static final WWW_AUTH_RESP:Ljava/lang/String; = "Authorization"


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private final credentials:Lcom/burgstaller/okhttp/digest/Credentials;

.field private credentialsCharset:Ljava/nio/charset/Charset;

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J

.field private parametersRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private proxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->HEXADECIMAL:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Lcom/burgstaller/okhttp/digest/Credentials;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->parametersRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    const-string v0, "ASCII"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->credentialsCharset:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->credentials:Lcom/burgstaller/okhttp/digest/Credentials;

    .line 20
    .line 21
    return-void
.end method

.method private authenticateWithState(Lokhttp3/Route;Lokhttp3/Request;Ljava/util/Map;)Lokhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Route;",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 4
    const-string v0, "realm"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    const-string v0, "nonce"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 6
    const-string v2, "stale"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 8
    invoke-direct {p0, p2, v0, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->havePreviousDigestAuthorizationAndShouldAbort(Lokhttp3/Request;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object p1

    const/4 p2, 0x5

    const-string p3, "previous digest authentication with same nonce failed, returning null"

    invoke-virtual {p1, p2, p3, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 10
    :cond_1
    const-string v0, "uri"

    const-string v1, "methodname"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lokhttp3/Route;->requiresTunnel()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    const-string v2, "CONNECT"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_1
    const-string p1, "charset"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 19
    invoke-virtual {p0, p2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->getCredentialsCharset(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->credentials:Lcom/burgstaller/okhttp/digest/Credentials;

    invoke-direct {p0, p1, p2, p3}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->createDigestHeader(Lcom/burgstaller/okhttp/digest/Credentials;Lokhttp3/Request;Ljava/util/Map;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    .line 23
    invoke-interface {p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 25
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "missing nonce in challenge"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private copyHeaderMap(Lokhttp3/Headers;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->encode([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private declared-synchronized createDigestHeader(Lcom/burgstaller/okhttp/digest/Credentials;Lokhttp3/Request;Ljava/util/Map;)Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/burgstaller/okhttp/digest/Credentials;",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v4, "uri"

    .line 7
    .line 8
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Ljava/lang/String;

    .line 13
    .line 14
    const-string v5, "realm"

    .line 15
    .line 16
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Ljava/lang/String;

    .line 21
    .line 22
    const-string v6, "nonce"

    .line 23
    .line 24
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Ljava/lang/String;

    .line 29
    .line 30
    const-string v7, "opaque"

    .line 31
    .line 32
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Ljava/lang/String;

    .line 37
    .line 38
    const-string v8, "methodname"

    .line 39
    .line 40
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Ljava/lang/String;

    .line 45
    .line 46
    const-string v9, "algorithm"

    .line 47
    .line 48
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, Ljava/lang/String;

    .line 53
    .line 54
    if-nez v9, :cond_0

    .line 55
    .line 56
    const-string v9, "MD5"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_e

    .line 61
    .line 62
    :cond_0
    :goto_0
    new-instance v10, Ljava/util/HashSet;

    .line 63
    .line 64
    const/16 v11, 0x8

    .line 65
    .line 66
    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const-string v11, "qop"

    .line 70
    .line 71
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    check-cast v11, Ljava/lang/String;

    .line 76
    .line 77
    const/4 v12, -0x1

    .line 78
    if-eqz v11, :cond_4

    .line 79
    .line 80
    new-instance v14, Ljava/util/StringTokenizer;

    .line 81
    .line 82
    const-string v15, ","

    .line 83
    .line 84
    invoke-direct {v14, v11, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-eqz v15, :cond_1

    .line 92
    .line 93
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 102
    .line 103
    invoke-virtual {v15, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    if-eqz v13, :cond_2

    .line 116
    .line 117
    const-string v13, "auth-int"

    .line 118
    .line 119
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-eqz v13, :cond_2

    .line 124
    .line 125
    const/4 v13, 0x1

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const-string v13, "auth"

    .line 128
    .line 129
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v13

    .line 133
    if-eqz v13, :cond_3

    .line 134
    .line 135
    const/4 v13, 0x2

    .line 136
    goto :goto_2

    .line 137
    :cond_3
    const/4 v13, -0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    const/4 v13, 0x0

    .line 140
    :goto_2
    if-eq v13, v12, :cond_18

    .line 141
    .line 142
    const-string v11, "charset"

    .line 143
    .line 144
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/String;

    .line 149
    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    const-string v0, "ISO-8859-1"

    .line 153
    .line 154
    :cond_5
    const-string v11, "MD5-sess"

    .line 155
    .line 156
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-eqz v11, :cond_6

    .line 161
    .line 162
    const-string v11, "MD5"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    move-object v11, v9

    .line 166
    :goto_3
    :try_start_1
    invoke-static {v11}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 167
    .line 168
    .line 169
    move-result-object v11
    :try_end_1
    .catch Lcom/burgstaller/okhttp/digest/fromhttpclient/UnsupportedDigestAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/burgstaller/okhttp/digest/Credentials;->getUserName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/burgstaller/okhttp/digest/Credentials;->getPassword()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    iget-object v15, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->lastNonce:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v15

    .line 184
    if-eqz v15, :cond_7

    .line 185
    .line 186
    iget-wide v2, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->nounceCount:J

    .line 187
    .line 188
    move-object v15, v7

    .line 189
    move-object/from16 v17, v8

    .line 190
    .line 191
    const-wide/16 v7, 0x1

    .line 192
    .line 193
    add-long/2addr v2, v7

    .line 194
    iput-wide v2, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->nounceCount:J

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_7
    move-object v15, v7

    .line 198
    move-object/from16 v17, v8

    .line 199
    .line 200
    const-wide/16 v7, 0x1

    .line 201
    .line 202
    iput-wide v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->nounceCount:J

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    iput-object v2, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->cnonce:Ljava/lang/String;

    .line 206
    .line 207
    iput-object v6, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->lastNonce:Ljava/lang/String;

    .line 208
    .line 209
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const/16 v3, 0x100

    .line 212
    .line 213
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    .line 215
    .line 216
    new-instance v3, Ljava/util/Formatter;

    .line 217
    .line 218
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 219
    .line 220
    invoke-direct {v3, v2, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 221
    .line 222
    .line 223
    const-string v7, "%08x"

    .line 224
    .line 225
    move-object v8, v10

    .line 226
    move-object/from16 p3, v11

    .line 227
    .line 228
    iget-wide v10, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->nounceCount:J

    .line 229
    .line 230
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    move-object/from16 v16, v15

    .line 235
    .line 236
    const/4 v11, 0x1

    .line 237
    new-array v15, v11, [Ljava/lang/Object;

    .line 238
    .line 239
    const/4 v11, 0x0

    .line 240
    aput-object v10, v15, v11

    .line 241
    .line 242
    invoke-virtual {v3, v7, v15}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    iget-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->cnonce:Ljava/lang/String;

    .line 253
    .line 254
    if-nez v7, :cond_8

    .line 255
    .line 256
    invoke-static {}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->createCnonce()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    iput-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->cnonce:Ljava/lang/String;

    .line 261
    .line 262
    :cond_8
    const/4 v7, 0x0

    .line 263
    iput-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a1:Ljava/lang/String;

    .line 264
    .line 265
    iput-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a2:Ljava/lang/String;

    .line 266
    .line 267
    const-string v7, "MD5-sess"

    .line 268
    .line 269
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    const/16 v10, 0x3a

    .line 274
    .line 275
    if-eqz v7, :cond_9

    .line 276
    .line 277
    const/4 v7, 0x0

    .line 278
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    invoke-direct {v1, v7, v0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    move-object/from16 v11, p3

    .line 305
    .line 306
    invoke-virtual {v11, v7}, Ljava/security/MessageDigest;->digest([B)[B

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-static {v7}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->encode([B)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    const/4 v14, 0x0

    .line 315
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    iget-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->cnonce:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    iput-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a1:Ljava/lang/String;

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_9
    move-object/from16 v11, p3

    .line 343
    .line 344
    const/4 v7, 0x0

    .line 345
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    iput-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a1:Ljava/lang/String;

    .line 368
    .line 369
    :goto_5
    iget-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a1:Ljava/lang/String;

    .line 370
    .line 371
    invoke-direct {v1, v7, v0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-virtual {v11, v7}, Ljava/security/MessageDigest;->digest([B)[B

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-static {v7}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->encode([B)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    const/4 v14, 0x2

    .line 384
    if-ne v13, v14, :cond_a

    .line 385
    .line 386
    new-instance v8, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    move-object/from16 v15, v17

    .line 392
    .line 393
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    iput-object v8, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a2:Ljava/lang/String;

    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    :cond_a
    move-object/from16 v15, v17

    .line 411
    .line 412
    const/4 v14, 0x1

    .line 413
    if-ne v13, v14, :cond_d

    .line 414
    .line 415
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 416
    .line 417
    .line 418
    move-result-object v14

    .line 419
    if-eqz v14, :cond_c

    .line 420
    .line 421
    const-string v13, "auth"

    .line 422
    .line 423
    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    if-eqz v8, :cond_b

    .line 428
    .line 429
    new-instance v8, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    iput-object v8, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a2:Ljava/lang/String;

    .line 448
    .line 449
    const/4 v13, 0x2

    .line 450
    goto :goto_6

    .line 451
    :cond_b
    new-instance v0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;

    .line 452
    .line 453
    const-string v2, "Qop auth-int cannot be used with a non-repeatable entity"

    .line 454
    .line 455
    invoke-direct {v0, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v0

    .line 459
    :cond_c
    new-instance v8, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;

    .line 460
    .line 461
    invoke-direct {v8, v11}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    .line 463
    .line 464
    :try_start_3
    invoke-virtual {v8}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    .line 466
    .line 467
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v8}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HttpEntityDigester;->getDigest()[B

    .line 485
    .line 486
    .line 487
    move-result-object v8

    .line 488
    invoke-static {v8}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->encode([B)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    iput-object v8, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a2:Ljava/lang/String;

    .line 500
    .line 501
    goto :goto_6

    .line 502
    :catch_0
    move-exception v0

    .line 503
    move-object v2, v0

    .line 504
    new-instance v0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;

    .line 505
    .line 506
    const-string v3, "I/O error reading entity content"

    .line 507
    .line 508
    invoke-direct {v0, v3, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 509
    .line 510
    .line 511
    throw v0

    .line 512
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v8

    .line 530
    iput-object v8, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a2:Ljava/lang/String;

    .line 531
    .line 532
    :goto_6
    iget-object v8, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->a2:Ljava/lang/String;

    .line 533
    .line 534
    invoke-direct {v1, v8, v0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->encode([B)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    if-nez v13, :cond_e

    .line 547
    .line 548
    const/4 v8, 0x0

    .line 549
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const/4 v8, 0x0

    .line 572
    goto :goto_8

    .line 573
    :cond_e
    const/4 v8, 0x0

    .line 574
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    iget-object v7, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->cnonce:Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const/4 v7, 0x1

    .line 604
    if-ne v13, v7, :cond_f

    .line 605
    .line 606
    const-string v7, "auth-int"

    .line 607
    .line 608
    goto :goto_7

    .line 609
    :cond_f
    const-string v7, "auth"

    .line 610
    .line 611
    :goto_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    :goto_8
    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->getAsciiBytes(Ljava/lang/String;)[B

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-static {v0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->encode([B)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    const/16 v7, 0x80

    .line 639
    .line 640
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->isProxy()Z

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    if-eqz v7, :cond_10

    .line 648
    .line 649
    const-string v7, "Proxy-Authorization"

    .line 650
    .line 651
    goto :goto_9

    .line 652
    :cond_10
    const-string v7, "Authorization"

    .line 653
    .line 654
    :goto_9
    const-string v10, "Digest "

    .line 655
    .line 656
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    new-instance v10, Ljava/util/ArrayList;

    .line 660
    .line 661
    const/16 v11, 0x14

    .line 662
    .line 663
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 664
    .line 665
    .line 666
    new-instance v11, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 667
    .line 668
    const-string v14, "username"

    .line 669
    .line 670
    invoke-direct {v11, v14, v12}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    new-instance v11, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 677
    .line 678
    const-string v12, "realm"

    .line 679
    .line 680
    invoke-direct {v11, v12, v5}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    new-instance v5, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 687
    .line 688
    const-string v11, "nonce"

    .line 689
    .line 690
    invoke-direct {v5, v11, v6}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    new-instance v5, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 697
    .line 698
    const-string v6, "uri"

    .line 699
    .line 700
    invoke-direct {v5, v6, v4}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    new-instance v4, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 707
    .line 708
    const-string v5, "response"

    .line 709
    .line 710
    invoke-direct {v4, v5, v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    if-eqz v13, :cond_12

    .line 717
    .line 718
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 719
    .line 720
    const-string v4, "qop"

    .line 721
    .line 722
    const/4 v5, 0x1

    .line 723
    if-ne v13, v5, :cond_11

    .line 724
    .line 725
    const-string v5, "auth-int"

    .line 726
    .line 727
    goto :goto_a

    .line 728
    :cond_11
    const-string v5, "auth"

    .line 729
    .line 730
    :goto_a
    invoke-direct {v0, v4, v5}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 737
    .line 738
    const-string v4, "nc"

    .line 739
    .line 740
    invoke-direct {v0, v4, v3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 747
    .line 748
    const-string v3, "cnonce"

    .line 749
    .line 750
    iget-object v4, v1, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->cnonce:Ljava/lang/String;

    .line 751
    .line 752
    invoke-direct {v0, v3, v4}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    :cond_12
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 759
    .line 760
    const-string v3, "algorithm"

    .line 761
    .line 762
    invoke-direct {v0, v3, v9}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    if-eqz v16, :cond_13

    .line 769
    .line 770
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 771
    .line 772
    const-string v3, "opaque"

    .line 773
    .line 774
    move-object/from16 v4, v16

    .line 775
    .line 776
    invoke-direct {v0, v3, v4}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    :cond_13
    const/4 v11, 0x0

    .line 783
    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    if-ge v11, v0, :cond_17

    .line 788
    .line 789
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    check-cast v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;

    .line 794
    .line 795
    if-lez v11, :cond_14

    .line 796
    .line 797
    const-string v3, ", "

    .line 798
    .line 799
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    :cond_14
    invoke-interface {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;->getName()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    const-string v4, "nc"

    .line 807
    .line 808
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v4

    .line 812
    if-nez v4, :cond_16

    .line 813
    .line 814
    const-string v4, "qop"

    .line 815
    .line 816
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    if-nez v4, :cond_16

    .line 821
    .line 822
    const-string v4, "algorithm"

    .line 823
    .line 824
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    move-result v3

    .line 828
    if-eqz v3, :cond_15

    .line 829
    .line 830
    goto :goto_c

    .line 831
    :cond_15
    const/4 v3, 0x0

    .line 832
    goto :goto_d

    .line 833
    :cond_16
    :goto_c
    const/4 v3, 0x1

    .line 834
    :goto_d
    sget-object v4, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueFormatter;->DEFAULT:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueFormatter;

    .line 835
    .line 836
    const/4 v5, 0x1

    .line 837
    xor-int/2addr v3, v5

    .line 838
    invoke-virtual {v4, v2, v0, v3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueFormatter;->formatNameValuePair(Ljava/lang/StringBuilder;Lcom/burgstaller/okhttp/digest/fromhttpclient/NameValuePair;Z)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    add-int/2addr v11, v5

    .line 842
    goto :goto_b

    .line 843
    :cond_17
    new-instance v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;

    .line 844
    .line 845
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    invoke-direct {v0, v7, v2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 850
    .line 851
    .line 852
    monitor-exit p0

    .line 853
    return-object v0

    .line 854
    :catch_1
    move-exception v0

    .line 855
    move-object v2, v0

    .line 856
    :try_start_5
    new-instance v0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;

    .line 857
    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .line 862
    .line 863
    const-string v4, "Unsuppported digest algorithm: "

    .line 864
    .line 865
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    invoke-direct {v0, v3, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 876
    .line 877
    .line 878
    throw v0

    .line 879
    :cond_18
    new-instance v0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;

    .line 880
    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .line 885
    .line 886
    const-string v3, "None of the qop methods is supported: "

    .line 887
    .line 888
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    invoke-direct {v0, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator$AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    throw v0

    .line 902
    :goto_e
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 903
    goto :goto_10

    .line 904
    :goto_f
    throw v0

    .line 905
    :goto_10
    goto :goto_f
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v2, "Unsupported algorithm in HTTP Digest authentication: "

    .line 10
    .line 11
    invoke-static {v2, p0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v1, v0, 0x2

    .line 3
    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    aget-byte v3, p0, v2

    .line 10
    .line 11
    and-int/lit8 v4, v3, 0xf

    .line 12
    .line 13
    and-int/lit16 v3, v3, 0xf0

    .line 14
    .line 15
    shr-int/lit8 v3, v3, 0x4

    .line 16
    .line 17
    mul-int/lit8 v5, v2, 0x2

    .line 18
    .line 19
    sget-object v6, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->HEXADECIMAL:[C

    .line 20
    .line 21
    aget-char v3, v6, v3

    .line 22
    .line 23
    aput-char v3, v1, v5

    .line 24
    .line 25
    add-int/lit8 v5, v5, 0x1

    .line 26
    .line 27
    aget-char v3, v6, v4

    .line 28
    .line 29
    aput-char v3, v1, v5

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method private findDigestHeader(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Digest"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "unsupported auth scheme: "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_0
    throw p2

    .line 51
    :goto_1
    goto :goto_0
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "US-ASCII"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/Error;

    .line 12
    .line 13
    const-string v1, "HttpClient requires ASCII support"

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Parameter may not be null"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method private getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private getHeaderName(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x191

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->setProxy(Z)V

    .line 7
    .line 8
    .line 9
    const-string p1, "WWW-Authenticate"

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/16 v0, 0x197

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->setProxy(Z)V

    .line 18
    .line 19
    .line 20
    const-string p1, "Proxy-Authenticate"

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    const-string p1, ""

    .line 24
    .line 25
    return-object p1
.end method

.method private havePreviousDigestAuthorizationAndShouldAbort(Lokhttp3/Request;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->isProxy()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p2, "Proxy-Authorization"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p2, "Authorization"

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1, p2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p2, "Digest"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    xor-int/lit8 p1, p3, 0x1

    .line 27
    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method


# virtual methods
.method public declared-synchronized authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 5

    .line 1
    const-string v0, "missing nonce in challenge header: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {p0, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->getHeaderName(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {p0, v1, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->findDigestHeader(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x7

    .line 30
    sub-int/2addr v3, v4

    .line 31
    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->parseChallenge(Ljava/lang/String;IILjava/util/Map;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {p0, v3, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->copyHeaderMap(Lokhttp3/Headers;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->parametersRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string v3, "nonce"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p0, p1, p2, v2}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->authenticateWithState(Lokhttp3/Route;Lokhttp3/Request;Ljava/util/Map;)Lokhttp3/Request;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    .line 67
    return-object p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p1
.end method

.method public authenticateWithState(Lokhttp3/Route;Lokhttp3/Request;)Lokhttp3/Request;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->parametersRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->authenticateWithState(Lokhttp3/Route;Lokhttp3/Request;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public getCredentialsCharset(Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "http.auth.credential-charset"

    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->getCredentialsCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCredentialsCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->credentialsCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public isProxy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->proxy:Z

    .line 2
    .line 3
    return v0
.end method

.method public parseChallenge(Ljava/lang/String;IILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->INSTANCE:Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;

    .line 2
    .line 3
    new-instance v1, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, p2, v2}, Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;-><init>(II)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;

    .line 13
    .line 14
    invoke-direct {p2, p3}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, v1}, Lcom/burgstaller/okhttp/digest/fromhttpclient/BasicHeaderValueParser;->parseElements(Lcom/burgstaller/okhttp/digest/fromhttpclient/CharArrayBuffer;Lcom/burgstaller/okhttp/digest/fromhttpclient/ParserCursor;)[Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length p2, p1

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    array-length p2, p1

    .line 28
    const/4 p3, 0x0

    .line 29
    :goto_0
    if-ge p3, p2, :cond_0

    .line 30
    .line 31
    aget-object v0, p1, p3

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0}, Lcom/burgstaller/okhttp/digest/fromhttpclient/HeaderElement;->getValue()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "Authentication challenge is empty"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    throw p1

    .line 57
    :goto_2
    goto :goto_1
.end method

.method public setProxy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/burgstaller/okhttp/digest/DigestAuthenticator;->proxy:Z

    .line 2
    .line 3
    return-void
.end method
