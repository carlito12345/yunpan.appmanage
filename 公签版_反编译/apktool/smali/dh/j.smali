.class public final Ldh/j;
.super Ldh/e;
.source "SourceFile"


# instance fields
.field public final K:Z

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public N:Ljavax/net/ssl/SSLContext;

.field public O:Ljava/net/Socket;

.field public final P:Z

.field public final Q:Z

.field public final R:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ldh/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TLS"

    .line 5
    .line 6
    iput-object v0, p0, Ldh/j;->M:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Ldh/j;->P:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Ldh/j;->Q:Z

    .line 12
    .line 13
    sget-object v1, Lhh/b;->b:Lhh/c;

    .line 14
    .line 15
    iput-object v1, p0, Ldh/j;->R:Ljavax/net/ssl/X509TrustManager;

    .line 16
    .line 17
    iput-object v0, p0, Ldh/j;->L:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p1, p0, Ldh/j;->K:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5

    .line 1
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 2
    .line 3
    iput-object v0, p0, Ldh/j;->O:Ljava/net/Socket;

    .line 4
    .line 5
    iget-object v0, p0, Ldh/j;->N:Ljavax/net/ssl/SSLContext;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Ldh/j;->L:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Ldh/j;->R:Ljavax/net/ssl/X509TrustManager;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    move-object v4, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v4, 0x1

    .line 20
    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    .line 21
    .line 22
    aput-object v3, v4, v2

    .line 23
    .line 24
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1, v4, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Ldh/j;->N:Ljavax/net/ssl/SSLContext;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v2, "Could not initialize SSL context"

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    :goto_1
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Ldh/j;->N:Ljavax/net/ssl/SSLContext;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v3, p0, Lch/d;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v1, v0, v3, v4, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v1, v0

    .line 67
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 68
    .line 69
    :cond_2
    iget-boolean v0, p0, Ldh/j;->P:Z

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 72
    .line 73
    .line 74
    iget-boolean v0, p0, Ldh/j;->Q:Z

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 77
    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 86
    .line 87
    .line 88
    :goto_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 92
    .line 93
    new-instance v0, Ljava/io/BufferedReader;

    .line 94
    .line 95
    new-instance v2, Ljava/io/InputStreamReader;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v4, p0, Ldh/c;->n:Ljava/lang/String;

    .line 102
    .line 103
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Ldh/c;->q:Ljava/io/BufferedReader;

    .line 110
    .line 111
    new-instance v0, Ljava/io/BufferedWriter;

    .line 112
    .line 113
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v3, p0, Ldh/c;->n:Ljava/lang/String;

    .line 120
    .line 121
    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Ldh/c;->r:Ljava/io/BufferedWriter;

    .line 128
    .line 129
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ldh/j;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 6
    .line 7
    iget v2, p0, Lch/d;->a:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ldh/j;->A()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Ldh/e;->b()V

    .line 16
    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    const-string v0, "AUTH"

    .line 21
    .line 22
    iget-object v1, p0, Ldh/j;->M:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v1, 0x14e

    .line 29
    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 v1, 0xea

    .line 34
    .line 35
    if-ne v1, v0, :cond_2

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0}, Ldh/j;->A()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 42
    .line 43
    invoke-virtual {p0}, Ldh/c;->i()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_3
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-super {p0}, Ldh/e;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldh/j;->O:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const-string v0, "CCC"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0xc8

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Ldh/j;->O:Ljava/net/Socket;

    .line 23
    .line 24
    iput-object p1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 25
    .line 26
    new-instance p1, Ljava/io/BufferedReader;

    .line 27
    .line 28
    new-instance v0, Ljava/io/InputStreamReader;

    .line 29
    .line 30
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Ldh/c;->n:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Ldh/c;->q:Ljava/io/BufferedReader;

    .line 45
    .line 46
    new-instance p1, Ljava/io/BufferedWriter;

    .line 47
    .line 48
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 49
    .line 50
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Ldh/c;->n:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Ldh/c;->r:Ljava/io/BufferedWriter;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLException;

    .line 68
    .line 69
    invoke-virtual {p0}, Ldh/c;->i()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    :goto_0
    return p2
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Ldh/e;->t:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    if-eq v2, v4, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v2, v2, Ljava/net/Inet6Address;

    .line 20
    .line 21
    iget-object v4, p0, Ldh/e;->u:Lsh/c;

    .line 22
    .line 23
    invoke-static {v4}, Landroid/support/v4/media/session/b;->J(Lsh/c;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget v5, p0, Ldh/e;->t:I

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    if-nez v5, :cond_8

    .line 32
    .line 33
    iget-object v5, p0, Lch/d;->b:Ljava/net/Socket;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sget-object v8, Lch/d;->i:Ljavax/net/ServerSocketFactory;

    .line 40
    .line 41
    invoke-virtual {v8, v1, v0, v5}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    :try_start_0
    iget-object v2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-virtual {p0, v2, v8}, Ldh/c;->g(Ljava/net/InetAddress;I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2}, Lcom/bumptech/glide/c;->L(I)Z

    .line 62
    .line 63
    .line 64
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :try_start_1
    iget-object v2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-virtual {p0, v2, v8}, Ldh/c;->j(Ljava/net/InetAddress;I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {v2}, Lcom/bumptech/glide/c;->L(I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-wide v8, p0, Ldh/e;->A:J

    .line 96
    .line 97
    cmp-long v2, v8, v6

    .line 98
    .line 99
    if-lez v2, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0, v8, v9}, Ldh/e;->w(J)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_3

    .line 106
    .line 107
    if-eqz v5, :cond_10

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0, p1, p2}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-static {p1}, Lcom/bumptech/glide/c;->M(I)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_4

    .line 119
    .line 120
    if-eqz v5, :cond_10

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    if-ltz v4, :cond_5

    .line 124
    .line 125
    invoke-virtual {v5, v4}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 126
    .line 127
    .line 128
    :cond_5
    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-ltz v4, :cond_6

    .line 133
    .line 134
    invoke-virtual {p1, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 138
    .line 139
    .line 140
    move-object v3, p1

    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :goto_1
    if-eqz v5, :cond_7

    .line 144
    .line 145
    :try_start_2
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_1
    move-exception p2

    .line 150
    const-class v2, Ljava/lang/Throwable;

    .line 151
    .line 152
    :try_start_3
    const-string v3, "addSuppressed"

    .line 153
    .line 154
    new-array v4, v0, [Ljava/lang/Class;

    .line 155
    .line 156
    aput-object v2, v4, v1

    .line 157
    .line 158
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    .line 164
    aput-object p2, v0, v1

    .line 165
    .line 166
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    .line 168
    .line 169
    :catch_0
    :cond_7
    :goto_2
    throw p1

    .line 170
    :cond_8
    iget-object v0, p0, Ldh/c;->k:Ljava/util/ArrayList;

    .line 171
    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    const/16 v5, 0x9

    .line 175
    .line 176
    invoke-virtual {p0, v5}, Ldh/c;->k(I)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    const/16 v8, 0xe5

    .line 181
    .line 182
    if-ne v5, v8, :cond_9

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p0, v0}, Ldh/e;->n(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    if-eqz v2, :cond_a

    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_a
    const/16 v2, 0x16

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Ldh/c;->k(I)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    const/16 v5, 0xe3

    .line 205
    .line 206
    if-eq v2, v5, :cond_b

    .line 207
    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :cond_b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Ldh/e;->o(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_3
    sget-object v0, Lch/d;->h:Ljavax/net/SocketFactory;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-ltz v4, :cond_c

    .line 226
    .line 227
    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 228
    .line 229
    .line 230
    :cond_c
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 231
    .line 232
    iget-object v4, p0, Ldh/e;->w:Ljava/lang/String;

    .line 233
    .line 234
    iget v5, p0, Ldh/e;->v:I

    .line 235
    .line 236
    invoke-direct {v2, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    iget v4, p0, Lch/d;->f:I

    .line 240
    .line 241
    invoke-virtual {v0, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 242
    .line 243
    .line 244
    iget-wide v4, p0, Ldh/e;->A:J

    .line 245
    .line 246
    cmp-long v2, v4, v6

    .line 247
    .line 248
    if-lez v2, :cond_d

    .line 249
    .line 250
    invoke-virtual {p0, v4, v5}, Ldh/e;->w(J)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_d

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_d
    invoke-virtual {p0, p1, p2}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-static {p1}, Lcom/bumptech/glide/c;->M(I)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-nez p1, :cond_e

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_e
    move-object v3, v0

    .line 275
    :goto_4
    iget-boolean p1, p0, Ldh/e;->z:Z

    .line 276
    .line 277
    if-eqz p1, :cond_10

    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iget-object p2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 284
    .line 285
    invoke-virtual {p2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    invoke-virtual {p1, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_f

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_f
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 301
    .line 302
    .line 303
    new-instance p2, Ljava/io/IOException;

    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v1, "Host attempting data connection "

    .line 308
    .line 309
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string p1, " is not same as server "

    .line 320
    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p2

    .line 345
    :cond_10
    :goto_5
    instance-of p1, v3, Ljavax/net/ssl/SSLSocket;

    .line 346
    .line 347
    if-eqz p1, :cond_12

    .line 348
    .line 349
    move-object p1, v3

    .line 350
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 351
    .line 352
    iget-boolean p2, p0, Ldh/j;->Q:Z

    .line 353
    .line 354
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 355
    .line 356
    .line 357
    iget-boolean v0, p0, Ldh/j;->P:Z

    .line 358
    .line 359
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 360
    .line 361
    .line 362
    if-nez p2, :cond_11

    .line 363
    .line 364
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 368
    .line 369
    .line 370
    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 371
    .line 372
    .line 373
    :cond_12
    return-object v3
.end method
