.class public abstract Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dialect:Lcom/hierynomus/mssmb2/SMB2Dialect;

.field private final session:Lcom/hierynomus/smbj/session/Session;

.field private final sessionID:J

.field private final timeout:J


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/SmbConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/Connection;->getNegotiatedProtocol()Lcom/hierynomus/smbj/connection/NegotiatedProtocol;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/NegotiatedProtocol;->getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->dialect:Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->session:Lcom/hierynomus/smbj/session/Session;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/hierynomus/smbj/session/Session;->getSessionId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->sessionID:J

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/hierynomus/smbj/SmbConfig;->getTransactTimeout()J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    iput-wide p1, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->timeout:J

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->dialect:Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSession()Lcom/hierynomus/smbj/session/Session;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->session:Lcom/hierynomus/smbj/session/Session;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->sessionID:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public read(Ljava/util/concurrent/Future;)Lcom/hierynomus/mssmb2/SMB2Packet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/hierynomus/mssmb2/SMB2Packet;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->timeout:J

    .line 2
    .line 3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/hierynomus/mssmb2/SMB2Packet;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :catch_2
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :goto_0
    new-instance v0, Ljava/io/IOException;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :goto_1
    new-instance v0, Ljava/nio/channels/InterruptedByTimeoutException;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/nio/channels/InterruptedByTimeoutException;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/nio/channels/InterruptedByTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :goto_2
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public send(Lcom/hierynomus/mssmb2/SMB2Packet;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/hierynomus/mssmb2/SMB2Packet;",
            ">(",
            "Lcom/hierynomus/mssmb2/SMB2Packet;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->getSession()Lcom/hierynomus/smbj/session/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/hierynomus/smbj/session/Session;->send(Lcom/hierynomus/mssmb2/SMB2Packet;)Ljava/util/concurrent/Future;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :goto_0
    new-instance v0, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :goto_1
    throw p1
.end method

.method public sendAndRead(Lcom/hierynomus/mssmb2/SMB2Packet;)Lcom/hierynomus/mssmb2/SMB2Packet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/hierynomus/mssmb2/SMB2Packet;",
            ">(",
            "Lcom/hierynomus/mssmb2/SMB2Packet;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->send(Lcom/hierynomus/mssmb2/SMB2Packet;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->read(Ljava/util/concurrent/Future;)Lcom/hierynomus/mssmb2/SMB2Packet;

    move-result-object p1

    return-object p1
.end method

.method public sendAndRead(Lcom/hierynomus/mssmb2/SMB2Packet;Ljava/util/EnumSet;)Lcom/hierynomus/mssmb2/SMB2Packet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/hierynomus/mssmb2/SMB2Packet;",
            ">(",
            "Lcom/hierynomus/mssmb2/SMB2Packet;",
            "Ljava/util/EnumSet<",
            "Lcom/hierynomus/mserref/NtStatus;",
            ">;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->send(Lcom/hierynomus/mssmb2/SMB2Packet;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/rapid7/helper/smbj/io/SMB2SessionMessage;->read(Ljava/util/concurrent/Future;)Lcom/hierynomus/mssmb2/SMB2Packet;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/hierynomus/smb/SMBPacket;->getHeader()Lcom/hierynomus/smb/SMBHeader;

    move-result-object v0

    check-cast v0, Lcom/hierynomus/mssmb2/SMB2PacketHeader;

    .line 6
    invoke-virtual {v0}, Lcom/hierynomus/mssmb2/SMB2PacketHeader;->getStatusCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/hierynomus/mserref/NtStatus;->valueOf(J)Lcom/hierynomus/mserref/NtStatus;

    move-result-object v1

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lcom/rapid7/helper/smbj/io/SMB2Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/rapid7/helper/smbj/io/SMB2Exception;-><init>(Lcom/hierynomus/mssmb2/SMB2PacketHeader;Ljava/lang/String;)V

    throw p1
.end method
