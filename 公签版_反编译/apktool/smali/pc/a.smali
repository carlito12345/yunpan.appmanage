.class public final Lpc/a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lpc/c;->a:Lpc/b;

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Throwable;

    .line 10
    .line 11
    sget-object v3, Lpc/c;->a:Lpc/b;

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    if-nez v2, :cond_1

    .line 18
    .line 19
    move-object v3, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    new-instance v3, Lhc/b;

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    new-array v4, v4, [Ljava/lang/Throwable;

    .line 25
    .line 26
    aput-object v2, v4, v1

    .line 27
    .line 28
    aput-object p1, v4, v0

    .line 29
    .line 30
    invoke-direct {v3, v4}, Lhc/b;-><init>([Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    :goto_2
    return v0

    .line 40
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eq v4, v2, :cond_2

    .line 45
    .line 46
    goto :goto_0
.end method

.method public final b()Ljava/lang/Throwable;
    .locals 2

    .line 1
    sget-object v0, Lpc/c;->a:Lpc/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 8
    .line 9
    sget-object v1, Lpc/c;->a:Lpc/b;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Throwable;

    .line 18
    .line 19
    :cond_0
    return-object v0
.end method
