.class public final Lcom/hsae/autosdk/reverse/ReverseAppProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;,
        Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;,
        Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;
    }
.end annotation


# static fields
.field private static SELF:Lcom/hsae/autosdk/reverse/ReverseAppProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAVMStatusForL42pObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;",
            ">;"
        }
    .end annotation
.end field

.field mL42pAVMStatusStub:Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

.field private mServerObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/server/ServerListener;",
            ">;"
        }
    .end annotation
.end field

.field private reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

.field private reverseCallback:Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ReverseAppProxy"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mAVMStatusForL42pObservers:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mL42pAVMStatusStub:Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;-><init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseCallback:Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mAVMStatusForL42pObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

    return-void
.end method

.method public static getInstance()Lcom/hsae/autosdk/reverse/ReverseAppProxy;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->SELF:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->SELF:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->SELF:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 13
    .line 14
    return-object v0
.end method

.method private getStub()Lcom/hsae/autosdk/reverse/IReverseApp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getNewStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getNewStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method


# virtual methods
.method public changeModStatus()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverseApp;->changeModStatus()V
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

.method public getCurrentModStatus()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/hsae/autosdk/reverse/IReverseApp;->getCurrentModStatus()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return v0
.end method

.method public getNewStub()Lcom/hsae/autosdk/reverse/IReverseApp;
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.IBINDER_REVERSING_MANAGER"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/IReverseApp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseAppStub:Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 12
    .line 13
    return-object v0
.end method

.method public isModButtonEnable()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/hsae/autosdk/reverse/IReverseApp;->isCurrentModButtonEnable()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return v0
.end method

.method public isNeedInitServer()Z
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.IBINDER_REVERSING_MANAGER"

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

.method public registerListener(Lcom/hsae/autosdk/server/ServerListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

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
    const-string v0, "com.hsae.auto.REVERSING_SERVICE"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseCallback:Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/hsae/autosdk/server/Server;->registerServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public registerReverseAppStatusListener(Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mAVMStatusForL42pObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mAVMStatusForL42pObservers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mL42pAVMStatusStub:Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;-><init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mL42pAVMStatusStub:Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

    .line 32
    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mL42pAVMStatusStub:Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverseApp;->registerReverseAppStatusListener(Lcom/hsae/autosdk/reverse/IReverseAppStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public sendCameraOFFKey()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverseApp;->sendCameraOFFKey()V
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

.method public sendLongAVMKeyPressed()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverseApp;->sendLongAVMKeyPressed()V
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

.method public sendNormalAVMKeyPressed()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverseApp;->sendNormalAVMKeyPressed()V
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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mServerObservers:Ljava/util/ArrayList;

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
    const-string v0, "com.hsae.auto.REVERSING_SERVICE"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->reverseCallback:Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/hsae/autosdk/server/Server;->unregisterServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public unRegisterReverseAppStatusListener(Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mAVMStatusForL42pObservers:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mAVMStatusForL42pObservers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mAVMStatusForL42pObservers:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mL42pAVMStatusStub:Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverseApp;->unRegisterReverseAppStatusListener(Lcom/hsae/autosdk/reverse/IReverseAppStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->mL42pAVMStatusStub:Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;

    .line 47
    .line 48
    :cond_2
    return-void
.end method
