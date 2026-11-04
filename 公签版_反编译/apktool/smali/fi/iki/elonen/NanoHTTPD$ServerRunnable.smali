.class public Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
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
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    .line 8
    .line 9
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic a(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .locals 0

    .line 1
    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object p0
.end method

.method public static bridge synthetic b(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 2
    .line 3
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 8
    .line 9
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->a(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 16
    .line 17
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 18
    .line 19
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->a(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 24
    .line 25
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->b(Lfi/iki/elonen/NanoHTTPD;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_4

    .line 35
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 36
    .line 37
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 38
    .line 39
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->b(Lfi/iki/elonen/NanoHTTPD;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :cond_1
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 53
    .line 54
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    .line 63
    .line 64
    if-lez v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 73
    .line 74
    iget-object v2, v1, Lfi/iki/elonen/NanoHTTPD;->clientManager:Lfi/iki/elonen/NanoHTTPD$ClientManager;

    .line 75
    .line 76
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .line 77
    .line 78
    invoke-direct {v3, v1, v0}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/net/Socket;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Lfi/iki/elonen/NanoHTTPD$ClientManager;->exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :goto_2
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->h()Ljava/util/logging/Logger;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 90
    .line 91
    const-string v3, "\u670d\u52a1\u7aef\u51fa\u9519 \u6216 \u963b\u585e\u7b49\u5f85\u8d85\u65f6"

    .line 92
    .line 93
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :goto_3
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    .line 97
    .line 98
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    return-void

    .line 109
    :goto_4
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    .line 110
    .line 111
    return-void
.end method
