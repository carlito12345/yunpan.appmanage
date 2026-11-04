.class public final Loc/s;
.super Lec/j;
.source "SourceFile"


# static fields
.field public static final d:Loc/m;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 7
    .line 8
    .line 9
    const-string v0, "rx2.single-priority"

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-instance v2, Loc/m;

    .line 32
    .line 33
    const-string v3, "RxSingleScheduler"

    .line 34
    .line 35
    invoke-direct {v2, v3, v0, v1}, Loc/m;-><init>(Ljava/lang/String;IZ)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Loc/s;->d:Loc/m;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lec/j;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Loc/s;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    sget-boolean v1, Loc/q;->a:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    sget-object v2, Loc/s;->d:Loc/m;

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-boolean v2, Loc/q;->a:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    instance-of v2, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 30
    .line 31
    sget-object v3, Loc/q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v3, v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lec/i;
    .locals 2

    .line 1
    new-instance v0, Loc/r;

    .line 2
    .line 3
    iget-object v1, p0, Loc/s;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Loc/r;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final b(Ly7/b;Ljava/util/concurrent/TimeUnit;)Lgc/b;
    .locals 0

    .line 1
    new-instance p2, Loc/o;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Loc/o;-><init>(Ly7/b;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Loc/s;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Loc/a;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lic/b;->a:Lic/b;

    .line 27
    .line 28
    return-object p1
.end method

.method public final c(Lmc/i;JJLjava/util/concurrent/TimeUnit;)Lgc/b;
    .locals 9

    .line 1
    sget-object v0, Lic/b;->a:Lic/b;

    .line 2
    .line 3
    iget-object v1, p0, Loc/s;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, p4, v2

    .line 8
    .line 9
    if-gtz v4, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    check-cast p4, Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    new-instance p5, Loc/f;

    .line 18
    .line 19
    invoke-direct {p5, p1, p4}, Loc/f;-><init>(Lmc/i;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 20
    .line 21
    .line 22
    cmp-long p1, p2, v2

    .line 23
    .line 24
    if-gtz p1, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-interface {p4, p5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {p4, p5, p2, p3, p6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-virtual {p5, p1}, Loc/f;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-object p5

    .line 41
    :goto_1
    invoke-static {p1}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    new-instance v8, Loc/n;

    .line 46
    .line 47
    invoke-direct {v8, p1}, Loc/n;-><init>(Lmc/i;)V

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v1, p1

    .line 55
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    .line 57
    move-object v2, v8

    .line 58
    move-wide v3, p2

    .line 59
    move-wide v5, p4

    .line 60
    move-object v7, p6

    .line 61
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v8, p1}, Loc/a;->b(Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    return-object v8

    .line 69
    :catch_1
    move-exception p1

    .line 70
    invoke-static {p1}, Lqf/c;->P(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
