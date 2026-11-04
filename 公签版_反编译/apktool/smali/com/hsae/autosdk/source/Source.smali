.class public Lcom/hsae/autosdk/source/Source;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;,
        Lcom/hsae/autosdk/source/Source$SourceStateListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSourceManagerStub:Lcom/hsae/autosdk/source/ISource;

.field private mSourceStateCallback:Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;

.field private mSourceStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/source/Source$SourceStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Source"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hsae/autosdk/source/Source;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "com.hsae.auto.IBINDER_SOURCE"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/hsae/autosdk/source/ISource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/source/ISource;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceManagerStub:Lcom/hsae/autosdk/source/ISource;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceStateListeners:Ljava/util/ArrayList;

    .line 26
    .line 27
    return-void
.end method

.method public static bridge synthetic a(Lcom/hsae/autosdk/source/Source;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/source/Source;->mSourceStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getInfo()V
    .locals 0

    return-void
.end method

.method private getNewStub()Lcom/hsae/autosdk/source/ISource;
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/util/LogUtil;->recoveryMechanismDelay(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.hsae.auto.IBINDER_SOURCE"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/hsae/autosdk/source/ISource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/source/ISource;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceManagerStub:Lcom/hsae/autosdk/source/ISource;

    .line 17
    .line 18
    return-object v0
.end method

.method private getStub()Lcom/hsae/autosdk/source/ISource;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceManagerStub:Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getNewStub()Lcom/hsae/autosdk/source/ISource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    nop

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceManagerStub:Lcom/hsae/autosdk/source/ISource;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
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
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceManagerStub:Lcom/hsae/autosdk/source/ISource;

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
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceManagerStub:Lcom/hsae/autosdk/source/ISource;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getNewStub()Lcom/hsae/autosdk/source/ISource;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    return-object v0

    .line 44
    :catch_1
    const/4 v0, 0x0

    .line 45
    return-object v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v1, "Source Manager service doesn\'t start"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method


# virtual methods
.method public getCurrentAudioCard()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->getCurrentAudioCard()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v1
.end method

.method public getCurrentSource()Lcom/hsae/autosdk/source/SourceConst$App;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getInfo()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->getCurrentSource()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/hsae/autosdk/source/SourceConst$App;->findById(I)Lcom/hsae/autosdk/source/SourceConst$App;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/hsae/autosdk/source/SourceConst$App;->LAUNCHER:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 30
    .line 31
    return-object v0
.end method

.method public getFocusedApp()Lcom/hsae/autosdk/source/SourceConst$App;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getInfo()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->getFocusedApp()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/hsae/autosdk/source/SourceConst$App;->findById(I)Lcom/hsae/autosdk/source/SourceConst$App;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/hsae/autosdk/source/SourceConst$App;->LAUNCHER:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 30
    .line 31
    return-object v0
.end method

.method public getLastSource()Lcom/hsae/autosdk/source/SourceConst$App;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->getLastSource()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/hsae/autosdk/source/SourceConst$App;->findById(I)Lcom/hsae/autosdk/source/SourceConst$App;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/hsae/autosdk/source/SourceConst$App;->KUWO_MUSIC:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 27
    .line 28
    return-object v0
.end method

.method public getPrevSource()Lcom/hsae/autosdk/source/SourceConst$App;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getInfo()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->getPrevSource()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/hsae/autosdk/source/SourceConst$App;->findById(I)Lcom/hsae/autosdk/source/SourceConst$App;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/hsae/autosdk/source/SourceConst$App;->LAUNCHER:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 30
    .line 31
    return-object v0
.end method

.method public getSoundCardType()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->getSoundCardType()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v1
.end method

.method public isAllowPlay(Lcom/hsae/autosdk/source/SourceConst$App;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->isAllowPlay(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return v1
.end method

.method public isAudioPlayPermitted()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->isAudioPlayPermitted()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v1
.end method

.method public isBTPhoneComing(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/source/ISource;->isBTPhoneComing(ZZ)V
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

.method public isInUpgrade(Lcom/hsae/autosdk/source/SourceConst$App;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/source/ISource;->isInUpgrade(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method public isNaviOnTop()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->isNaviOnTop()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v1
.end method

.method public mainAudioChanged(Lcom/hsae/autosdk/source/SourceConst$App;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    monitor-enter p0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/source/ISource;->mainAudioChanged(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw p1
.end method

.method public notifyBtState(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->notifyBtState(Z)V
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

.method public notifyCarPlayPhoneState(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->notifyCarPlayPhoneState(Z)V
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

.method public notifyDiagnoseState(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->notifyDiagnoseState(Z)V
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

.method public notifyPhoneState(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->notifyPhoneState(Z)V
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

.method public registerSourceStateListener(Lcom/hsae/autosdk/source/Source$SourceStateListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceStateListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceStateListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/source/Source;->mSourceStateCallback:Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    new-instance p1, Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, v0}, Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;-><init>(Lcom/hsae/autosdk/source/Source;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/hsae/autosdk/source/Source;->mSourceStateCallback:Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source;->mSourceStateCallback:Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/source/ISource;->registerSourceListener(Lcom/hsae/autosdk/source/ISourceCallback;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public resetToDefaults()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->resetToDefaults()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setAudioCardMode(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/source/ISource;->setAudioCardMode(II)V
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

.method public setBTPhoneActive(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->setBTPhoneActive(Z)V
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

.method public setFocusedApp(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->setFocusedApp(I)V
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

.method public showApp(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->showApp(I)V
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

.method public switchAudioI2SMode(Lcom/hsae/autosdk/source/SourceConst$App;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-interface {v0, p1, p2, p3}, Lcom/hsae/autosdk/source/ISource;->switchAudioI2SMode(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public switchOTG()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/source/ISource;->switchOTG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public tryToSwitchSource(Lcom/hsae/autosdk/source/SourceConst$App;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/source/Source;->getStub()Lcom/hsae/autosdk/source/ISource;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/source/ISource;->isAllowPlay(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    return v1
.end method
