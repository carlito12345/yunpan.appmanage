.class public final Lcom/hsae/autosdk/carlife/CarLifeProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/carlife/CarLifeProxy$CarLifeProxyCallback;
    }
.end annotation


# static fields
.field private static SELF:Lcom/hsae/autosdk/carlife/CarLifeProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

.field private cpc:Lcom/hsae/autosdk/carlife/CarLifeProxy$CarLifeProxyCallback;

.field private mServerObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/server/ServerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CarLifeProxy"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Lcom/hsae/autosdk/carlife/CarLifeProxy$CarLifeProxyCallback;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/hsae/autosdk/carlife/CarLifeProxy$CarLifeProxyCallback;-><init>(Lcom/hsae/autosdk/carlife/CarLifeProxy;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->cpc:Lcom/hsae/autosdk/carlife/CarLifeProxy$CarLifeProxyCallback;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/hsae/autosdk/carlife/CarLifeProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/hsae/autosdk/carlife/CarLifeProxy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

    return-void
.end method

.method public static getInstance()Lcom/hsae/autosdk/carlife/CarLifeProxy;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->SELF:Lcom/hsae/autosdk/carlife/CarLifeProxy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hsae/autosdk/carlife/CarLifeProxy;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->SELF:Lcom/hsae/autosdk/carlife/CarLifeProxy;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->SELF:Lcom/hsae/autosdk/carlife/CarLifeProxy;

    .line 13
    .line 14
    return-object v0
.end method

.method private getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getNewStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

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
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

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
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getNewStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method


# virtual methods
.method public accessorySourceChange(IZZ)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->accessorySourceChange(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public authenticate()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->authenticate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public authenticateByMode(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->authenticateByMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public getNewStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.IBINDER_CARLIFE_MANAGER"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->carlifeManagerStub:Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 12
    .line 13
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->getVersion()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->isConnected()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public isNeedInitServer()Z
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.IBINDER_CARLIFE_MANAGER"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public isVrStarted()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->isVrStarted()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public onAoaConneced()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->onAoaConneced()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public onHmiChanged(II)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->onHmiChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public onTelOn()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->onTelOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public onUsbAttached(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->onUsbAttached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public popUpCurrentMode()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->popUpCurrentMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public registerCarLifeListener(Lcom/hsae/autosdk/carlife/ICarLifeListener;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->registerCarLifeListener(Lcom/hsae/autosdk/carlife/ICarLifeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public registerListener(Lcom/hsae/autosdk/server/ServerListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/hsae/autosdk/server/Server;->getInstance()Lcom/hsae/autosdk/server/Server;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "com.hsae.auto.CARLIFE_SERVICE"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->cpc:Lcom/hsae/autosdk/carlife/CarLifeProxy$CarLifeProxyCallback;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/hsae/autosdk/server/Server;->registerServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public startVr()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->startVr()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public unRegisterListener(Lcom/hsae/autosdk/server/ServerListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/hsae/autosdk/server/Server;->getInstance()Lcom/hsae/autosdk/server/Server;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "com.hsae.auto.CARLIFE_SERVICE"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/hsae/autosdk/carlife/CarLifeProxy;->cpc:Lcom/hsae/autosdk/carlife/CarLifeProxy$CarLifeProxyCallback;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/hsae/autosdk/server/Server;->unregisterServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public unregisterCarLifeListener(Lcom/hsae/autosdk/carlife/ICarLifeListener;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/carlife/CarLifeProxy;->getStub()Lcom/hsae/autosdk/carlife/ICarLifeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/carlife/ICarLifeManager;->unregisterCarLifeListener(Lcom/hsae/autosdk/carlife/ICarLifeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method
