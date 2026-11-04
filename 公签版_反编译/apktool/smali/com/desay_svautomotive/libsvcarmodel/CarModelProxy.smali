.class public Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SVLibCarModel"

.field private static final TIMER_ID_REBIND_SERVICE:I = 0x0

.field private static final TIMER_ID_RESEND_DATA:I = 0x1

.field private static final TIMER_TIME_REBIND_SERVICE:I = 0x1388

.field private static volatile mInstance:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;


# instance fields
.field private mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

.field private mBindPackageName:Ljava/lang/String;

.field private mBindServiceName:Ljava/lang/String;

.field private mConnectCount:I

.field private mConnectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/desay_svautomotive/libsvcarmodel/IServiceConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsServiceConnnected:Z

.field private mMapDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;

.field private mTimer:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private timerTaskHandler:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mTimer:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mIsServiceConnnected:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectListeners:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mMapDatas:Ljava/util/HashMap;

    .line 27
    .line 28
    iput v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I

    .line 29
    .line 30
    const-string v0, "com.rightware.kanzi.carmodel"

    .line 31
    .line 32
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mBindPackageName:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "com.rightware.kanzi.carmodel.CarModelService"

    .line 35
    .line 36
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mBindServiceName:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;-><init>(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 44
    .line 45
    new-instance v0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;-><init>(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->timerTaskHandler:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;

    .line 51
    .line 52
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mTimer:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;Lcom/desay_svautomotive/libsvcarmodel/ICarModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    return-void
.end method

.method public static bridge synthetic e(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mIsServiceConnnected:Z

    return-void
.end method

.method public static getInstance()Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;
    .locals 2

    .line 1
    sget-object v0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mInstance:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mInstance:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mInstance:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

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
    sget-object v0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mInstance:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 27
    .line 28
    return-object v0
.end method

.method private saveControlData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;-><init>(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;I)V

    .line 5
    .line 6
    .line 7
    iput-object p2, v0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mMapDatas:Ljava/util/HashMap;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mMapDatas:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit p2

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method private unBindService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x1388

    .line 3
    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x1

    .line 6
    const/16 v4, 0x3e8

    .line 7
    .line 8
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v6, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mBindPackageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mBindServiceName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v6, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 23
    .line 24
    invoke-virtual {v6, v5, v7, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    nop

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v5

    .line 31
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    iget-object v5, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 35
    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    iget-object v5, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mTimer:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    iget v5, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I

    .line 43
    .line 44
    if-lt v5, v2, :cond_0

    .line 45
    .line 46
    const/16 v4, 0x1388

    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 49
    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    iget-object v5, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mTimer:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    iget v6, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I

    .line 57
    .line 58
    if-lt v6, v2, :cond_1

    .line 59
    .line 60
    const/16 v4, 0x1388

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v5, v0, v4}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->setTimeTask(II)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget v4, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I

    .line 66
    .line 67
    add-int/2addr v4, v3

    .line 68
    iput v4, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_1
    iget-object v5, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 72
    .line 73
    if-nez v5, :cond_4

    .line 74
    .line 75
    iget-object v5, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mTimer:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 76
    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    iget v6, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I

    .line 80
    .line 81
    if-lt v6, v2, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v1, v4

    .line 85
    :goto_2
    invoke-virtual {v5, v0, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->setTimeTask(II)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I

    .line 89
    .line 90
    add-int/2addr v0, v3

    .line 91
    iput v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectCount:I

    .line 92
    .line 93
    :goto_3
    return-void
.end method

.method public getSurfaceIsCreate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

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
    invoke-interface {v0}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->getSurfaceIsCreate()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance p1, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->timerTaskHandler:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;-><init>(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mTimer:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->bindService()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public isServiceConnnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mIsServiceConnnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public onSurfaceChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onSurfaceChanged(II)V
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

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0, p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onSurfaceCreated(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onSurfaceDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->onTouchEvent(Landroid/view/MotionEvent;)V
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

.method public regCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->regCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V
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

.method public regServiceConnectListener(Lcom/desay_svautomotive/libsvcarmodel/IServiceConnectListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectListeners:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectListeners:Ljava/util/List;

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

.method public sendDefaultValue()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mMapDatas:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mMapDatas:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 33
    .line 34
    instance-of v3, v3, Ljava/lang/Boolean;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p0, v3, v2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->setDataBool(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 71
    .line 72
    instance-of v3, v3, Ljava/lang/Integer;

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v2, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p0, v3, v2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->setDataInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 105
    .line 106
    iget-object v3, v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 107
    .line 108
    instance-of v3, v3, Ljava/lang/Double;

    .line 109
    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 123
    .line 124
    iget-object v2, v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v2, Ljava/lang/Double;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    invoke-virtual {p0, v3, v4, v5}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->setDataReal(Ljava/lang/String;D)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 143
    .line 144
    instance-of v3, v3, Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v3, :cond_0

    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Ljava/lang/String;

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$ControlItem;->data:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v2, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p0, v3, v2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->setDataString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_4
    monitor-exit v0

    .line 170
    return-void

    .line 171
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    goto :goto_3

    .line 173
    :goto_2
    throw v1

    .line 174
    :goto_3
    goto :goto_2
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mBindPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mBindServiceName:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setDataBool(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->saveControlData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataBool(Ljava/lang/String;Z)V
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
    :cond_0
    :goto_0
    return-void
.end method

.method public setDataInt(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->saveControlData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataInt(Ljava/lang/String;I)V
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
    :cond_0
    :goto_0
    return-void
.end method

.method public setDataReal(Ljava/lang/String;D)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->saveControlData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataReal(Ljava/lang/String;D)V
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
    :cond_0
    :goto_0
    return-void
.end method

.method public setDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->saveControlData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->setDataString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public unRegCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mAidl:Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel;->unRegCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V
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

.method public unRegServiceConnectListener(Lcom/desay_svautomotive/libsvcarmodel/IServiceConnectListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectListeners:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->mConnectListeners:Ljava/util/List;

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
