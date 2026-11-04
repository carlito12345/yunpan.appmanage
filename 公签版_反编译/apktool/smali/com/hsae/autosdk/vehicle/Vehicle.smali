.class public Lcom/hsae/autosdk/vehicle/Vehicle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;,
        Lcom/hsae/autosdk/vehicle/Vehicle$VehicleStateListener;,
        Lcom/hsae/autosdk/vehicle/Vehicle$VehicleScreenListener;,
        Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;,
        Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/hsae/autosdk/vehicle/Vehicle;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

.field private mVehicleIllListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/hsae/autosdk/vehicle/Vehicle$VehicleScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleStateObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/vehicle/Vehicle$VehicleStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Vehicle"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 35
    .line 36
    const-string v0, "com.hsae.auto.IBINDER_VEHICLE"

    .line 37
    .line 38
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/hsae/autosdk/vehicle/IVehicle$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 47
    .line 48
    return-void
.end method

.method public static bridge synthetic a(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/hsae/autosdk/vehicle/Vehicle;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/hsae/autosdk/vehicle/Vehicle;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/vehicle/Vehicle;->mInstance:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hsae/autosdk/vehicle/Vehicle;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/vehicle/Vehicle;->mInstance:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/hsae/autosdk/vehicle/Vehicle;->mInstance:Lcom/hsae/autosdk/vehicle/Vehicle;

    .line 13
    .line 14
    return-object v0
.end method

.method private getNewStub()Lcom/hsae/autosdk/vehicle/IVehicle;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v2, "com.hsae.auto.IBINDER_VEHICLE"

    .line 8
    .line 9
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {v2}, Lcom/hsae/autosdk/vehicle/IVehicle$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->recoverLink()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 29
    .line 30
    :catch_0
    return-object v0
.end method

.method private getStub()Lcom/hsae/autosdk/vehicle/IVehicle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getNewStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStub:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getNewStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method private recoverLink()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    new-instance v0, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, p0, v1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;-><init>(Lcom/hsae/autosdk/vehicle/Vehicle;I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mKey:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v0, v1, v2, v3}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_2
    return-void
.end method

.method private registerCallback()Z
    .locals 7

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    const-string v1, "registerCallback registerVehicleCallback("

    .line 4
    .line 5
    iget-object v2, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "registerCallback mIVehicle is null"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m13e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    new-instance v4, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 26
    .line 27
    invoke-direct {v4, p0, v3}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;-><init>(Lcom/hsae/autosdk/vehicle/Vehicle;I)V

    .line 28
    .line 29
    .line 30
    iput-object v4, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 31
    .line 32
    :try_start_0
    iget-object v5, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v6, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mKey:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v2, v4, v5, v6}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iget-object v2, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mKey:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ") ret = "

    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Lcom/hsae/autosdk/util/LogUtil;->m15d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return v3

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    return v3
.end method

.method private unregisterCallback()V
    .locals 3

    .line 1
    const-string v0, "unregisterCallback unregisterVehicleCallback("

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "unregisterCallback mIVehicle is null"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/hsae/autosdk/util/LogUtil;->m13e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 54
    .line 55
    invoke-interface {v1, v2}, Lcom/hsae/autosdk/vehicle/IVehicle;->unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ")."

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lcom/hsae/autosdk/util/LogUtil;->m15d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :goto_0
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 89
    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public getDoorState()[Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    new-array v0, v0, [Z

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getDoorState()[Z

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getGearId()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$Gear;->OFF:Lcom/hsae/autosdk/vehicle/VehicleConst$VehicleData$Gear;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getGearId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public getIgnState()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getIgnState()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getKeyLeaveCarState()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getKeyLeaveCarState()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getMeterSpeed()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getMeterSpeed()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getOffScreenState()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getOffScreenState()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getParkState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getParkState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getSaftBelt()[I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    new-array v0, v0, [I

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getSaftBelt()[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getSpeed()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getTpmsStatus()[I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    new-array v0, v0, [I

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getTpmsStatus()[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getTurnLight()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getTurnLight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getUpdateState()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getUpdateState()Z

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
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getVehicleType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public isAccOn()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->isAccOn()Z

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
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public isL42PAVMType()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->isL42PAVMType()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public isSafetyLockEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->isSafetyLockEnabled()Z

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
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public registerListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public registerListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mKey:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    if-eqz p1, :cond_2

    return v1

    .line 8
    :cond_2
    new-instance p1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    invoke-direct {p1, p0, v1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;-><init>(Lcom/hsae/autosdk/vehicle/Vehicle;I)V

    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 9
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    move-result-object p1

    iget-object p2, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p3}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public registerOffScreenStateListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleScreenListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    new-instance p1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, p0, v0}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;-><init>(Lcom/hsae/autosdk/vehicle/Vehicle;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-interface {p1, v0, v1, v1}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public registerVehicleIllListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mKey:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    new-instance p1, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 36
    .line 37
    invoke-direct {p1, p0, v1}, Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;-><init>(Lcom/hsae/autosdk/vehicle/Vehicle;I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {p1, p2, v0, p3}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public registerVehicleStateListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleStateListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string v0, "something"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mPackageName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "sth"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mKey:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->registerCallback()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public setOffScreenState(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/vehicle/IVehicle;->setOffScreenState(Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setUpdateState(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/vehicle/IVehicle;->setUpdateState(Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public unRegisterListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 62
    .line 63
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public unRegisterOffScreenStateListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleScreenListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 62
    .line 63
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public unRegisterVehicleIllListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleIllListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleIllListeners:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleObservers:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleScreenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->getStub()Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 62
    .line 63
    invoke-interface {p1, v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleCallback:Lcom/hsae/autosdk/vehicle/Vehicle$VehicleCallbackStub;

    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public unregisterVehicleStateListener(Lcom/hsae/autosdk/vehicle/Vehicle$VehicleStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/vehicle/Vehicle;->mVehicleStateObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/hsae/autosdk/vehicle/Vehicle;->unregisterCallback()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
