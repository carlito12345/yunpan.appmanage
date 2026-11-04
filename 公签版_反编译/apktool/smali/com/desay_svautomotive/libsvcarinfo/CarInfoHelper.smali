.class public Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;,
        Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;,
        Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;,
        Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;,
        Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;
    }
.end annotation


# static fields
.field public static final MSG_ON_CHANGE_EVENT:I = 0x1

.field public static final MSG_ON_CHANGE_EVENT_IN_TIMING:I = 0x2

.field public static final MSG_ON_SERVICE_CONNECTED:I = 0x3

.field public static final MSG_TIMING_ARRIVAL:I = 0x0

.field private static final NOCHECK_COUNTER_VALUE:I = -0x1

.field public static final TIMER_DELAY_DEFAULT_COUNT:I = 0xa

.field private static final UPDATE_COUNTER_VALUE:I


# instance fields
.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCarInfoCallBack:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;

.field private mConnectCallBack:Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;

.field private mHandler:Landroid/os/Handler;

.field private mListenIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSpiListener:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;

    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mConnectCallBack:Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;

    .line 32
    .line 33
    new-instance v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCarInfoCallBack:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;

    .line 39
    .line 40
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mSpiListener:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;

    return-object p0
.end method

.method private regCallBack()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-array v3, v3, [I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ge v4, v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    aput v5, v3, v4

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v4, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget-object v5, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCarInfoCallBack:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;

    .line 52
    .line 53
    invoke-virtual {v2, v4, v5, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;[I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public end()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mSpiListener:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->unRegTimerCallBack(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mConnectCallBack:Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->unRegServiceConnectListener(Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCarInfoCallBack:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;

    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->unRegCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_3

    .line 56
    :goto_2
    throw v1

    .line 57
    :goto_3
    goto :goto_2
.end method

.method public getDelayCountByCmdId(II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/util/SparseArray;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return v1

    .line 27
    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public getItemValue(II)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->getItemValues(II)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    aget p1, p1, p2

    .line 14
    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    return p2
.end method

.method public getItemValues(II)[I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;

    .line 17
    .line 18
    iget v1, v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->moduleId:I

    .line 19
    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;

    .line 29
    .line 30
    iget v1, v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->cmdId:I

    .line 31
    .line 32
    if-ne p2, v1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->data:[I

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValues(II)[I

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public listen(I[I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p2

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget v3, p2, v2

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onConnectSuccess()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->regCallBack()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onReceiveData(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->getDelayCountByCmdId(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput p1, v1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x2

    .line 20
    iput p1, v1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onSVTimer()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/util/SparseArray;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    add-int/lit8 v5, v5, -0x1

    .line 41
    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v2, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iput v0, v5, Landroid/os/Message;->what:I

    .line 56
    .line 57
    iget-object v6, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 64
    .line 65
    iput v4, v5, Landroid/os/Message;->arg2:I

    .line 66
    .line 67
    iget-object v4, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return-void
.end method

.method public removeCacheItem(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;

    .line 18
    .line 19
    iget v1, v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->moduleId:I

    .line 20
    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;

    .line 30
    .line 31
    iget v1, v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->cmdId:I

    .line 32
    .line 33
    if-ne p2, v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public setDelayResponse(III)V
    .locals 1

    .line 1
    filled-new-array {p3}, [I

    move-result-object p3

    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->setDelayResponse(II[II)V

    return-void
.end method

.method public setDelayResponse(IIII)V
    .locals 0

    .line 2
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->setDelayResponse(II[II)V

    return-void
.end method

.method public setDelayResponse(II[II)V
    .locals 2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->removeCacheItem(II)V

    .line 4
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mCacheList:Ljava/util/ArrayList;

    new-instance v1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;-><init>(II[I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, p1, p2, p4}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->setDelayTimerCount(III)V

    return-void
.end method

.method public setDelayTimerCount(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mListenIDs:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public start(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mSpiListener:Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->regCallBack()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->mConnectCallBack:Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->regServiceConnectListener(Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->regTimerCallBack(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
