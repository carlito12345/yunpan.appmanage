.class public Lcom/hsae/autosdk/reverse/Reverse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;,
        Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;,
        Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;,
        Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;,
        Lcom/hsae/autosdk/reverse/Reverse$AvmListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/hsae/autosdk/reverse/Reverse;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAvmListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/reverse/Reverse$AvmListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

.field private mReverseObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

.field private mReverseStateObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Reverse"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

    .line 28
    .line 29
    const-string v0, "com.hsae.auto.IBINDER_REVERSE"

    .line 30
    .line 31
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/IReverse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverse;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;

    .line 40
    .line 41
    return-void
.end method

.method public static bridge synthetic a(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/hsae/autosdk/reverse/Reverse;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/reverse/Reverse;->mInstance:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hsae/autosdk/reverse/Reverse;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hsae/autosdk/reverse/Reverse;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/reverse/Reverse;->mInstance:Lcom/hsae/autosdk/reverse/Reverse;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/hsae/autosdk/reverse/Reverse;->mInstance:Lcom/hsae/autosdk/reverse/Reverse;

    .line 13
    .line 14
    return-object v0
.end method

.method private getNewStub()Lcom/hsae/autosdk/reverse/IReverse;
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/util/LogUtil;->recoveryMechanismDelay(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.hsae.auto.IBINDER_REVERSE"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/IReverse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/reverse/IReverse;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->recoverLink()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;

    .line 22
    .line 23
    return-object v0
.end method

.method private getStub()Lcom/hsae/autosdk/reverse/IReverse;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getNewStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStub:Lcom/hsae/autosdk/reverse/IReverse;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getNewStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v1, "Air service doesn\'t start"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method private recoverLink()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;-><init>(Lcom/hsae/autosdk/reverse/Reverse;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 36
    .line 37
    invoke-interface {v0, v2}, Lcom/hsae/autosdk/reverse/IReverse;->registerReverseStateCallback(Lcom/hsae/autosdk/reverse/IReverseStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-lez v0, :cond_4

    .line 51
    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    new-instance v0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;-><init>(Lcom/hsae/autosdk/reverse/Reverse;I)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :catch_1
    move-exception v0

    .line 65
    goto :goto_4

    .line 66
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/reverse/IReverse;->registerReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_5

    .line 76
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_5
    return-void
.end method


# virtual methods
.method public avmControlCmd(BBBBBBB)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    move v5, p5

    .line 13
    move v6, p6

    .line 14
    move v7, p7

    .line 15
    invoke-interface/range {v0 .. v7}, Lcom/hsae/autosdk/reverse/IReverse;->avmControlCmd(BBBBBBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public getCameraType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getCameraType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getCurrentVehicleType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getCurrentVehicleType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getFrameType()B
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getFrameType()B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getQuickReverseState()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getQuickReverseState()Z

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

.method public getReverseState()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getReverseState()Z

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

.method public getSteeringWheelAngle()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getSteeringWheelAngle()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getSteeringWheelFlag()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getSteeringWheelFlag()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getVehicleType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->getVehicleType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public notifyReverseStartSucess(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->notifyReverseStartSucess(Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public registerAvmListener(Lcom/hsae/autosdk/reverse/Reverse$AvmListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, v0}, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;-><init>(Lcom/hsae/autosdk/reverse/Reverse;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverse;->registerReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public registerListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, v0}, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;-><init>(Lcom/hsae/autosdk/reverse/Reverse;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverse;->registerReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public registerStateListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, v0}, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;-><init>(Lcom/hsae/autosdk/reverse/Reverse;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverse;->registerReverseStateCallback(Lcom/hsae/autosdk/reverse/IReverseStateCallback;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public reqAVMAnimationEnable(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMAnimationEnable(B)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqAVMReset()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMReset()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqAVMReverseState()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMReverseState()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqAVMStateInfo(BBBB)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMStateInfo(BBBB)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqAVMSwitchScreen(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMSwitchScreen(B)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqAVMSynchronizationData(IBB)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMSynchronizationData(IBB)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqAVMTouchInfo(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMTouchInfo(II)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqAVMVersion()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->reqAVMVersion()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqChangeAVMLaungage(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqChangeAVMLaungage(B)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqChangeCarColor(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqChangeCarColor(B)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public reqCurrentAVMSettingValue()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->reqCurrentAVMSettingValue()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqDisplayTrackLine(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqDisplayTrackLine(B)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqEnterAVMFrame(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->reqEnterAVMFrame(B)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public reqEnterAVMSettingFrame()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->reqEnterAVMSettingFrame()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public reqExitAVMFrame()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/reverse/IReverse;->reqExitAVMFrame()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setReverseType(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->setReverseType(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setVehicleType(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/reverse/IReverse;->setVehicleType(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public unRegisterAvmListener(Lcom/hsae/autosdk/reverse/Reverse$AvmListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mAvmListener:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverse;->unregisterReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public unRegisterListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseObservers:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverse;->unregisterReverseCallback(Lcom/hsae/autosdk/reverse/IReverseCallback;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;

    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public unRegisterStateListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateObservers:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/Reverse;->getStub()Lcom/hsae/autosdk/reverse/IReverse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/reverse/IReverse;->unregisterReverseStateCallback(Lcom/hsae/autosdk/reverse/IReverseStateCallback;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse;->mReverseStateCallback:Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;

    .line 44
    .line 45
    :cond_2
    return-void
.end method
