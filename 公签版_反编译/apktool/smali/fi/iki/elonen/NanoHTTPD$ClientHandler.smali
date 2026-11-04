.class public Lfi/iki/elonen/NanoHTTPD$ClientHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 15
    .line 16
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->d(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;->create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    .line 25
    .line 26
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 27
    .line 28
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    move-object v2, v8

    .line 35
    move-object v5, v1

    .line 36
    move-object v6, v0

    .line 37
    invoke-direct/range {v2 .. v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v8}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    move-object v9, v1

    .line 54
    move-object v1, v0

    .line 55
    move-object v0, v9

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 64
    .line 65
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 69
    .line 70
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->clientManager:Lfi/iki/elonen/NanoHTTPD$ClientManager;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lfi/iki/elonen/NanoHTTPD$ClientManager;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catchall_1
    move-exception v2

    .line 77
    move-object v1, v0

    .line 78
    :goto_2
    :try_start_2
    instance-of v3, v2, Ljava/net/SocketException;

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    const-string v3, "NanoHttpd Shutdown"

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catchall_2
    move-exception v2

    .line 96
    goto :goto_5

    .line 97
    :cond_1
    :goto_3
    instance-of v2, v2, Ljava/net/SocketTimeoutException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    .line 99
    :cond_2
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :goto_4
    return-void

    .line 107
    :goto_5
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 114
    .line 115
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->i(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 119
    .line 120
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->clientManager:Lfi/iki/elonen/NanoHTTPD$ClientManager;

    .line 121
    .line 122
    invoke-virtual {v0, p0}, Lfi/iki/elonen/NanoHTTPD$ClientManager;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    .line 123
    .line 124
    .line 125
    goto :goto_7

    .line 126
    :goto_6
    throw v2

    .line 127
    :goto_7
    goto :goto_6
.end method
