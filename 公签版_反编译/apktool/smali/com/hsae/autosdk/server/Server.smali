.class public Lcom/hsae/autosdk/server/Server;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mServer:Lcom/hsae/autosdk/server/Server;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mServerManagerStub:Lcom/hsae/autosdk/server/IServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Server"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hsae/autosdk/server/Server;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "com.hsae.auto.IBINDER_SERVER"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/hsae/autosdk/server/IServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/server/IServer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/hsae/autosdk/server/Server;->mServerManagerStub:Lcom/hsae/autosdk/server/IServer;

    .line 19
    .line 20
    return-void
.end method

.method public static getInstance()Lcom/hsae/autosdk/server/Server;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/server/Server;->mServer:Lcom/hsae/autosdk/server/Server;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hsae/autosdk/server/Server;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hsae/autosdk/server/Server;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/server/Server;->mServer:Lcom/hsae/autosdk/server/Server;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/hsae/autosdk/server/Server;->mServer:Lcom/hsae/autosdk/server/Server;

    .line 13
    .line 14
    return-object v0
.end method

.method private getNewStub()Lcom/hsae/autosdk/server/IServer;
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.IBINDER_SERVER"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/hsae/autosdk/server/IServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/server/IServer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/hsae/autosdk/server/Server;->mServerManagerStub:Lcom/hsae/autosdk/server/IServer;

    .line 12
    .line 13
    return-object v0
.end method

.method private getStub()Lcom/hsae/autosdk/server/IServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/server/Server;->mServerManagerStub:Lcom/hsae/autosdk/server/IServer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/hsae/autosdk/server/Server;->getNewStub()Lcom/hsae/autosdk/server/IServer;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hsae/autosdk/server/Server;->mServerManagerStub:Lcom/hsae/autosdk/server/IServer;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/server/Server;->mServerManagerStub:Lcom/hsae/autosdk/server/IServer;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/hsae/autosdk/server/Server;->mServerManagerStub:Lcom/hsae/autosdk/server/IServer;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-direct {p0}, Lcom/hsae/autosdk/server/Server;->getNewStub()Lcom/hsae/autosdk/server/IServer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method


# virtual methods
.method public registerServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/server/Server;->getStub()Lcom/hsae/autosdk/server/IServer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/server/Server;->getStub()Lcom/hsae/autosdk/server/IServer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/server/IServer;->registerServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public unregisterServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/server/Server;->getStub()Lcom/hsae/autosdk/server/IServer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/server/Server;->getStub()Lcom/hsae/autosdk/server/IServer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/server/IServer;->unregisterServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
