.class public Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;,
        Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteNetMsgCallBack;,
        Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteCarLanCallBack;,
        Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;,
        Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$ICarLanListener;
    }
.end annotation


# static fields
.field private static final AIDL_BINDSERVICE_PACKAGENAME:Ljava/lang/String; = "com.desay_svautomotive.svcarinfo"

.field private static final AIDL_BINDSERVICE_SERVICENAME:Ljava/lang/String; = "com.desay_svautomotive.svcarinfo.net.NetCommService"

.field private static final MSG_CARLAN_MSG_RECEIVE:I = 0x3

.field private static final MSG_NET_CONNECT_CHANGED:I = 0x1

.field private static final MSG_NET_MSG_RECEIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetCommProxy"

.field private static final TIMER_ID_REBIND_SERVICE:I = 0x0

.field private static final TIMER_TIME_REBIND_SERVICE:I = 0x1388

.field private static final UPDATE_COUNTER_VALUE:I

.field private static volatile mInstance:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;


# instance fields
.field private mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

.field private mCarLanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$ICarLanListener;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHandler:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;

.field private mIsServiceConnnected:Z

.field private mListenIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetMsgListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteCarLanCallBack:Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;

.field private mRemoteNetMsgCallBack:Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;

.field private mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private timerTaskHandler:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;


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
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mIsServiceConnnected:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mCarLanListeners:Ljava/util/List;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteNetMsgCallBack:Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteCarLanCallBack:Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;-><init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 38
    .line 39
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$2;-><init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->timerTaskHandler:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;

    .line 45
    .line 46
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mCarLanListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mConnectListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mHandler:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mNetMsgListeners:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Lcom/desay_svautomotive/libsvcarinfo/INetComm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    return-void
.end method

.method public static bridge synthetic g(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mIsServiceConnnected:Z

    return-void
.end method

.method public static getInstance()Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;
    .locals 2

    .line 1
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

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
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 27
    .line 28
    return-object v0
.end method

.method private regRemoteCallBack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mNetMsgListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private unBindService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->serviceConnection:Landroid/content/ServiceConnection;

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
    const-string v4, "com.desay_svautomotive.svcarinfo.net.NetCommService"

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->serviceConnection:Landroid/content/ServiceConnection;

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
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

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
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

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

.method public getCarLanMsg(II)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->getCarLanMsg(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p1

    .line 13
    :catch_0
    return-object v1
.end method

.method public getNetMsgBytes(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->getNetMsg(I)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    return-object v1
.end method

.method public getNetMsgString(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->getNetMsgBytes(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :catch_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mConnectListeners:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mNetMsgListeners:Ljava/util/List;

    .line 20
    .line 21
    new-instance p1, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p1, p0, v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;-><init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mHandler:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;

    .line 31
    .line 32
    new-instance p1, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 38
    .line 39
    new-instance p1, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->timerTaskHandler:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;-><init>(Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mTimer:Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->bindService()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public isNetMsgConnected(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

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
    invoke-interface {v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->getNetMsgConnectStatus(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    return v1
.end method

.method public isNetMsgInTiming(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v3, p1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return v2

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    monitor-exit v0

    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_3

    .line 34
    :goto_2
    throw p1

    .line 35
    :goto_3
    goto :goto_2
.end method

.method public isServiceConnnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mIsServiceConnnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public onSVTimer()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x2

    .line 46
    iput v4, v3, Landroid/os/Message;->what:I

    .line 47
    .line 48
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 52
    .line 53
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mHandler:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_4

    .line 73
    :goto_3
    throw v1

    .line 74
    :goto_4
    goto :goto_3
.end method

.method public regCarLanMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$ICarLanListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteCarLanCallBack:Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteCarLanCallBack;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteCarLanCallBack;-><init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteCarLanCallBack:Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mCarLanListeners:Ljava/util/List;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mCarLanListeners:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public regNetMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteNetMsgCallBack:Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteNetMsgCallBack;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteNetMsgCallBack;-><init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteNetMsgCallBack:Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->regRemoteNetMsgCallBack()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mNetMsgListeners:Ljava/util/List;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mNetMsgListeners:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public regRemoteCarLanCallBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteCarLanCallBack:Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->regCarLanMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public regRemoteNetMsgCallBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mRemoteNetMsgCallBack:Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->regCallBack(Lcom/desay_svautomotive/libsvcarinfo/INetCommCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public regServiceConnectListener(Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mConnectListeners:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mConnectListeners:Ljava/util/List;

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

.method public sendCarLanMsg(IILjava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->sendCarLanMsg(IILjava/lang/String;Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public sendCarLanMsg(IILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->sendCarLanMsg(IILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v6
.end method

.method public sendNetMsg(ILjava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->sendNetMsg(I[BI)Z

    move-result p1

    return p1
.end method

.method public sendNetMsg(I[B)Z
    .locals 1

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->sendNetMsg(I[BI)Z

    move-result p1

    return p1
.end method

.method public sendNetMsg(I[BI)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mAidl:Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/desay_svautomotive/libsvcarinfo/INetComm;->sendNetMsg(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public setDelayTimerCount(I)V
    .locals 1

    const/16 v0, 0xa

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->setDelayTimerCount(II)V

    return-void
.end method

.method public setDelayTimerCount(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mListenIDs:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unRegCarLanMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$ICarLanListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mCarLanListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mCarLanListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public unRegNetMsgCallBack(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mNetMsgListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mNetMsgListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public unRegServiceConnectListener(Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mConnectListeners:Ljava/util/List;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->mConnectListeners:Ljava/util/List;

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
