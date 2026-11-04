.class public Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;,
        Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;
    }
.end annotation


# instance fields
.field private final FIRST_TIMER_ID:I

.field private TAG:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mFutureHashMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTaskHashMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerTaskHandler:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Lib-MultiTaskTimer"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 15
    .line 16
    new-instance v0, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTaskHashMap:Landroid/util/SparseArray;

    .line 22
    .line 23
    new-instance v0, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mFutureHashMap:Landroid/util/SparseArray;

    .line 29
    .line 30
    const v0, -0xffff

    .line 31
    .line 32
    .line 33
    iput v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->FIRST_TIMER_ID:I

    .line 34
    .line 35
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTimerTaskHandler:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->setTimeTask(II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static bridge synthetic a(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTaskHashMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTimerTaskHandler:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;

    return-object p0
.end method


# virtual methods
.method public cancelTimeTask(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mFutureHashMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mFutureHashMap:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTaskHashMap:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTaskHashMap:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Runnable;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTaskHashMap:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 18
    .line 19
    :cond_0
    iput-object v1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTimerTaskHandler:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;

    .line 20
    .line 21
    return-void
.end method

.method public isTaskExist(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mFutureHashMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    invoke-virtual {p0, p1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->cancelTimeTask(I)V

    .line 22
    .line 23
    .line 24
    return v1
.end method

.method public killTimer()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public setTimeTask(II)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->cancelTimeTask(I)V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;

    .line 5
    .line 6
    invoke-direct {v7, p0, p1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;-><init>(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;I)V

    .line 7
    .line 8
    .line 9
    int-to-long v4, p2

    .line 10
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mFutureHashMap:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v7}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->getTaskId()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 17
    .line 18
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    move-object v1, v7

    .line 21
    move-wide v2, v4

    .line 22
    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->mTaskHashMap:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v7}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->getTaskId()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
