.class Lcom/hierynomus/smbfs/ShareSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/smbfs/ShareSource;


# instance fields
.field private final client:Lcom/hierynomus/smbj/SMBClient;

.field private volatile closed:Z

.field private final context:Lcom/hierynomus/smbj/auth/AuthenticationContext;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private session:Lcom/hierynomus/smbj/session/Session;

.field private share:Lcom/hierynomus/smbj/share/DiskShare;


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbj/SMBClient;Ljava/lang/String;ILcom/hierynomus/smbj/auth/AuthenticationContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->closed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->host:Ljava/lang/String;

    .line 10
    .line 11
    iput p3, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->port:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->context:Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 14
    .line 15
    return-void
.end method

.method private closeSession()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->session:Lcom/hierynomus/smbj/session/Session;

    .line 4
    .line 5
    if-eqz v2, :cond_3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v2}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v4, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->session:Lcom/hierynomus/smbj/session/Session;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/hierynomus/smbj/session/Session;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v4

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :try_start_2
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-exception v0

    .line 29
    goto :goto_4

    .line 30
    :catch_0
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->session:Lcom/hierynomus/smbj/session/Session;

    .line 31
    .line 32
    iput-object v3, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 33
    .line 34
    goto :goto_5

    .line 35
    :goto_2
    if-eqz v2, :cond_2

    .line 36
    .line 37
    :try_start_3
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/Connection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :catchall_2
    move-exception v2

    .line 42
    :try_start_4
    const-class v5, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    .line 44
    :try_start_5
    const-string v6, "addSuppressed"

    .line 45
    .line 46
    new-array v7, v1, [Ljava/lang/Class;

    .line 47
    .line 48
    aput-object v5, v7, v0

    .line 49
    .line 50
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v2, v1, v0

    .line 57
    .line 58
    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    .line 60
    .line 61
    :catch_1
    :cond_2
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 62
    :goto_4
    iput-object v3, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->session:Lcom/hierynomus/smbj/session/Session;

    .line 63
    .line 64
    iput-object v3, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_5
    return-void
.end method

.method private getSession()Lcom/hierynomus/smbj/session/Session;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->session:Lcom/hierynomus/smbj/session/Session;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->host:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->port:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/hierynomus/smbj/SMBClient;->connect(Ljava/lang/String;I)Lcom/hierynomus/smbj/connection/Connection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->context:Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/connection/Connection;->authenticate(Lcom/hierynomus/smbj/auth/AuthenticationContext;)Lcom/hierynomus/smbj/session/Session;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->session:Lcom/hierynomus/smbj/session/Session;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->session:Lcom/hierynomus/smbj/session/Session;

    .line 24
    .line 25
    return-object v0
.end method

.method private getShare(Ljava/lang/String;Z)Lcom/hierynomus/smbj/share/DiskShare;
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->share:Lcom/hierynomus/smbj/share/DiskShare;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hierynomus/smbj/share/Share;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hierynomus/smbfs/ShareSourceImpl;->getSession()Lcom/hierynomus/smbj/session/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    move-result-object v0

    check-cast v0, Lcom/hierynomus/smbj/share/DiskShare;

    iput-object v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->share:Lcom/hierynomus/smbj/share/DiskShare;
    :try_end_0
    .catch Lcom/hierynomus/smbj/common/SMBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/hierynomus/protocol/transport/TransportException;

    if-eqz p2, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/hierynomus/smbfs/ShareSourceImpl;->closeSession()V

    const/4 p2, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbfs/ShareSourceImpl;->getShare(Ljava/lang/String;Z)Lcom/hierynomus/smbj/share/DiskShare;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    :try_start_1
    invoke-direct {p0}, Lcom/hierynomus/smbfs/ShareSourceImpl;->closeSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_2
    iget-object v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/hierynomus/smbj/SMBClient;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_1
    move-exception v0

    .line 18
    :try_start_3
    iget-object v1, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/hierynomus/smbj/SMBClient;->close()V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    throw v0
.end method

.method public declared-synchronized getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/hierynomus/smbfs/ShareSourceImpl;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/hierynomus/smbfs/ShareSourceImpl;->getShare(Ljava/lang/String;Z)Lcom/hierynomus/smbj/share/DiskShare;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
