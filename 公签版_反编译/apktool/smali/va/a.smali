.class public final Lva/a;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Lhh/c;


# instance fields
.field public final a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 13
    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    new-instance v4, Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    array-length v6, v5

    .line 26
    const/4 v7, 0x0

    .line 27
    :goto_0
    if-ge v7, v6, :cond_1

    .line 28
    .line 29
    aget-object v8, v5, v7

    .line 30
    .line 31
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    const-string v10, "SSL"

    .line 36
    .line 37
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-nez v9, :cond_0

    .line 42
    .line 43
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    :goto_1
    add-int/2addr v7, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    new-array v5, v5, [Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, [Ljava/lang/String;

    .line 63
    .line 64
    sput-object v4, Lva/a;->b:[Ljava/lang/String;

    .line 65
    .line 66
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v5, 0x15

    .line 69
    .line 70
    if-ge v4, v5, :cond_2

    .line 71
    .line 72
    const/16 v4, 0xe

    .line 73
    .line 74
    new-array v4, v4, [Ljava/lang/String;

    .line 75
    .line 76
    const-string v5, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    .line 77
    .line 78
    aput-object v5, v4, v2

    .line 79
    .line 80
    const-string v2, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    .line 81
    .line 82
    aput-object v2, v4, v1

    .line 83
    .line 84
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 85
    .line 86
    aput-object v1, v4, v0

    .line 87
    .line 88
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 89
    .line 90
    const/4 v2, 0x3

    .line 91
    aput-object v1, v4, v2

    .line 92
    .line 93
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 94
    .line 95
    const/4 v2, 0x4

    .line 96
    aput-object v1, v4, v2

    .line 97
    .line 98
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 99
    .line 100
    const/4 v2, 0x5

    .line 101
    aput-object v1, v4, v2

    .line 102
    .line 103
    const-string v1, "TLS_ECHDE_RSA_WITH_AES_128_GCM_SHA256"

    .line 104
    .line 105
    const/4 v2, 0x6

    .line 106
    aput-object v1, v4, v2

    .line 107
    .line 108
    const-string v1, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 109
    .line 110
    const/4 v2, 0x7

    .line 111
    aput-object v1, v4, v2

    .line 112
    .line 113
    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    .line 114
    .line 115
    const/16 v2, 0x8

    .line 116
    .line 117
    aput-object v1, v4, v2

    .line 118
    .line 119
    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 120
    .line 121
    const/16 v2, 0x9

    .line 122
    .line 123
    aput-object v1, v4, v2

    .line 124
    .line 125
    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 126
    .line 127
    const/16 v2, 0xa

    .line 128
    .line 129
    aput-object v1, v4, v2

    .line 130
    .line 131
    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    .line 132
    .line 133
    const/16 v2, 0xb

    .line 134
    .line 135
    aput-object v1, v4, v2

    .line 136
    .line 137
    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 138
    .line 139
    const/16 v2, 0xc

    .line 140
    .line 141
    aput-object v1, v4, v2

    .line 142
    .line 143
    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 144
    .line 145
    const/16 v2, 0xd

    .line 146
    .line 147
    aput-object v1, v4, v2

    .line 148
    .line 149
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    new-instance v4, Ljava/util/HashSet;

    .line 162
    .line 163
    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 167
    .line 168
    .line 169
    new-instance v1, Ljava/util/HashSet;

    .line 170
    .line 171
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    new-array v1, v1, [Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, [Ljava/lang/String;

    .line 196
    .line 197
    sput-object v1, Lva/a;->c:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    :cond_2
    new-instance v1, Lhh/c;

    .line 200
    .line 201
    invoke-direct {v1, v0}, Lhh/c;-><init>(I)V

    .line 202
    .line 203
    .line 204
    sput-object v1, Lva/a;->d:Lhh/c;

    .line 205
    .line 206
    return-void

    .line 207
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 208
    .line 209
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :goto_3
    throw v1

    .line 214
    :goto_4
    goto :goto_3
.end method

.method public constructor <init>(Lhh/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "TLS"

    .line 5
    .line 6
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p1, v2, v3

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lva/a;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public static a(Ljavax/net/ssl/SSLSocket;)V
    .locals 2

    .line 1
    sget-object v0, Lva/a;->b:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v0, Lva/a;->c:[Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    .line 4
    iget-object v0, p0, Lva/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 5
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 6
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-static {p2}, Lva/a;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 7
    iget-object v0, p0, Lva/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 8
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 9
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-static {p2}, Lva/a;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 10
    iget-object v0, p0, Lva/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 11
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 12
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-static {p2}, Lva/a;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 13
    iget-object v0, p0, Lva/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 14
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 15
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-static {p2}, Lva/a;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lva/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 2
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-static {p2}, Lva/a;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lva/a;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lva/a;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
