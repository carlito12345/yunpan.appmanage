.class public Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AIDL_BINDSERVICE_PACKAGENAME:Ljava/lang/String; = "com.desay_svautomotive.svcarinfo"

.field private static final AIDL_BINDSERVICE_SERVICENAME:Ljava/lang/String; = "com.desay_svautomotive.svcarinfo.CarInfoService"

.field private static final TAG:Ljava/lang/String; = "SVLibCarInfo"

.field private static final TIMER_ID_REBIND_SERVICE:I = 0x0

.field private static final TIMER_TIME_REBIND_SERVICE:I = 0x1388

.field private static volatile mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;


# instance fields
.field private mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

.field private mConnectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsServiceConnnected:Z

.field private mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private timerTaskHandler:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mIsServiceConnnected:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mConnectListeners:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$1;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 27
    .line 28
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->timerTaskHandler:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;

    .line 34
    .line 35
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mConnectListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    return-void
.end method

.method public static bridge synthetic d(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mIsServiceConnnected:Z

    return-void
.end method

.method public static getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;
    .locals 2

    .line 1
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public bindService()V
    .locals 6

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "com.desay_svautomotive.svcarinfo"

    .line 10
    .line 11
    const-string v4, "com.desay_svautomotive.svcarinfo.CarInfoService"

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v2

    .line 28
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, v1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;->setTimeTask(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3, v1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;->setTimeTask(II)V

    .line 52
    .line 53
    .line 54
    :cond_1
    throw v2
.end method

.method public getCarSettingValue(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public getCarSettingValue2(I)I
    .locals 1

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getClusterValue(I)I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public getItemValue(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValues(II)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    return p1
.end method

.method public getItemValues(II)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;->getItemValues(II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    array-length p2, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    filled-new-array {p1}, [I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getNewEnergyValue(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance p1, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->timerTaskHandler:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;-><init>(Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->bindService()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public isDataReceivedFromMCU(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;->getItemValues(II)[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    array-length p1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-lez p1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :catch_0
    :cond_1
    return v1
.end method

.method public isServiceConnnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mIsServiceConnnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;[I)V

    return-void
.end method

.method public regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;[I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public regServiceConnectListener(Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mConnectListeners:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mConnectListeners:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public sendCarSettingValue(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public sendCarSettingValue2(II)V
    .locals 1

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendClusterValue(II)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public sendItemValue(III)Z
    .locals 0

    .line 1
    filled-new-array {p3}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValues(II[I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public sendItemValues(II[I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;->sendItemValues(II[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return v1
.end method

.method public sendNewEnergyValue(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->sendItemValue(III)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public sendValues(I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;->sendValues(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public unBindService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public unRegCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;->unRegCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public unRegServiceConnectListener(Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mConnectListeners:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->mConnectListeners:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1

    .line 16
    :cond_0
    :goto_0
    return-void
.end method
