.class public Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarInfoTimer"

.field private static volatile mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;


# instance fields
.field private mTimerCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mTimerCallBacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Thread;

    .line 12
    .line 13
    new-instance v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer$1;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mTimerCallBacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;
    .locals 2

    .line 1
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

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
    sget-object v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mInstance:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public regTimerCallBack(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mTimerCallBacks:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mTimerCallBacks:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public unRegTimerCallBack(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mTimerCallBacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->mTimerCallBacks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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
