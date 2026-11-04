.class public final Lkh/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Lkf/d;

.field public final b:I

.field public final c:Lkh/e;

.field public d:Z


# direct methods
.method public constructor <init>(Lkh/e;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkh/g;->c:Lkh/e;

    .line 5
    .line 6
    const/16 p1, 0xa

    .line 7
    .line 8
    iput p1, p0, Lkh/g;->b:I

    .line 9
    .line 10
    new-instance p1, Lkf/d;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p2, v0}, Lkf/d;-><init>(IZ)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lkh/g;->a:Lkf/d;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lkh/n;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lkh/i;->a(Ljava/lang/Object;Lkh/n;)Lkh/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p2, p0, Lkh/g;->a:Lkf/d;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lkf/d;->v(Lkh/i;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lkh/g;->d:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lkh/g;->d:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Landroidx/fragment/app/b0;

    .line 30
    .line 31
    const-string p2, "Could not send handler message"

    .line 32
    .line 33
    const/4 v0, 0x7

    .line 34
    invoke-direct {p1, p2, v0}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    :cond_0
    iget-object v2, p0, Lkh/g;->a:Lkf/d;

    .line 7
    .line 8
    invoke-virtual {v2}, Lkf/d;->L()Lkh/i;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v2, p0, Lkh/g;->a:Lkf/d;

    .line 16
    .line 17
    invoke-virtual {v2}, Lkf/d;->L()Lkh/i;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    iput-boolean p1, p0, Lkh/g;->d:Z

    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :try_start_2
    monitor-exit p0

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :try_start_3
    throw v0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    iget-object v3, p0, Lkh/g;->c:Lkh/e;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lkh/e;->d(Lkh/i;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    sub-long/2addr v2, v0

    .line 45
    iget v4, p0, Lkh/g;->b:I

    .line 46
    .line 47
    int-to-long v4, v4

    .line 48
    cmp-long v6, v2, v4

    .line 49
    .line 50
    if-ltz v6, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lkh/g;->d:Z

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    :try_start_4
    new-instance v0, Landroidx/fragment/app/b0;

    .line 67
    .line 68
    const-string v1, "Could not send handler message"

    .line 69
    .line 70
    const/4 v2, 0x7

    .line 71
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    :goto_2
    iput-boolean p1, p0, Lkh/g;->d:Z

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :goto_3
    throw v0

    .line 79
    :goto_4
    goto :goto_3
.end method
