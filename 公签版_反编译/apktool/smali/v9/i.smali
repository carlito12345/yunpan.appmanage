.class public final Lv9/i;
.super Lu9/d;
.source "SourceFile"


# instance fields
.field public volatile c:I

.field public final d:Ljava/lang/Process;

.field public final e:Lrg/c;

.field public final f:Lv9/g;

.field public final g:Lv9/g;

.field public final h:Ljava/util/concurrent/locks/ReentrantLock;

.field public final i:Ljava/util/concurrent/locks/Condition;

.field public final j:Ljava/util/ArrayDeque;

.field public k:Z


# direct methods
.method public constructor <init>(Lv9/a;Ljava/lang/Process;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lu9/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv9/i;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lv9/i;->i:Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lv9/i;->j:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lv9/i;->k:Z

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lv9/i;->c:I

    .line 29
    .line 30
    iput-object p2, p0, Lv9/i;->d:Ljava/lang/Process;

    .line 31
    .line 32
    new-instance v0, Lrg/c;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lrg/c;-><init>(Ljava/io/OutputStream;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lv9/i;->e:Lrg/c;

    .line 42
    .line 43
    new-instance v0, Lv9/g;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Lv9/g;-><init>(Ljava/io/InputStream;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lv9/i;->f:Lv9/g;

    .line 53
    .line 54
    new-instance v0, Lv9/g;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {v0, p2}, Lv9/g;-><init>(Ljava/io/InputStream;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lv9/i;->g:Lv9/g;

    .line 64
    .line 65
    new-instance p2, Ljava/util/concurrent/FutureTask;

    .line 66
    .line 67
    new-instance v0, Lv9/f;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lv9/f;-><init>(Lv9/i;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 76
    .line 77
    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    iget-wide v0, p1, Lv9/a;->a:J

    .line 81
    .line 82
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lv9/i;->c:I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    return-void

    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto :goto_3

    .line 99
    :catch_1
    move-exception p1

    .line 100
    goto :goto_0

    .line 101
    :catch_2
    move-exception p1

    .line 102
    goto :goto_1

    .line 103
    :catch_3
    move-exception p1

    .line 104
    goto :goto_2

    .line 105
    :goto_0
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    .line 106
    .line 107
    const-string v0, "Shell check interrupted"

    .line 108
    .line 109
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p2

    .line 113
    :goto_1
    new-instance p2, Ljava/io/IOException;

    .line 114
    .line 115
    const-string v0, "Shell check timeout"

    .line 116
    .line 117
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw p2

    .line 121
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    instance-of p2, p1, Ljava/io/IOException;

    .line 126
    .line 127
    if-eqz p2, :cond_0

    .line 128
    .line 129
    check-cast p1, Ljava/io/IOException;

    .line 130
    .line 131
    throw p1

    .line 132
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 133
    .line 134
    const-string v0, "Unknown ExecutionException"

    .line 135
    .line 136
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :goto_3
    invoke-virtual {p0}, Lv9/i;->M()V

    .line 141
    .line 142
    .line 143
    throw p1
.end method


# virtual methods
.method public final declared-synchronized J(Lu9/c;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lv9/i;->c:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lu9/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lv9/i;->f:Lv9/g;

    .line 14
    .line 15
    invoke-static {v0}, La9/o;->x(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lv9/i;->g:Lv9/g;

    .line 19
    .line 20
    invoke-static {v0}, La9/o;->x(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    iget-object v0, p0, Lv9/i;->e:Lrg/c;

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lv9/i;->e:Lrg/c;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_3
    iget-object v0, p0, Lv9/i;->e:Lrg/c;

    .line 36
    .line 37
    iget-object v1, p0, Lv9/i;->f:Lv9/g;

    .line 38
    .line 39
    iget-object v2, p0, Lv9/i;->g:Lv9/g;

    .line 40
    .line 41
    invoke-interface {p1, v0, v1, v2}, Lu9/c;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catch_0
    :try_start_4
    invoke-virtual {p0}, Lv9/i;->M()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lu9/c;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    throw p1
.end method

.method public final K(Lv9/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv9/i;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lv9/i;->k:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lv9/h;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Lv9/h;-><init>(Ljava/util/concurrent/locks/Condition;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lv9/i;->j:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :catch_0
    :goto_0
    iget-boolean v2, v1, Lv9/h;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    :try_start_1
    iget-object v2, v1, Lv9/h;->a:Ljava/util/concurrent/locks/Condition;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v1, 0x1

    .line 37
    :try_start_2
    iput-boolean v1, p0, Lv9/i;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lv9/i;->J(Lu9/c;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lv9/i;->L(Z)Lu9/c;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :goto_2
    throw p1

    .line 54
    :goto_3
    goto :goto_2
.end method

.method public final L(Z)Lu9/c;
    .locals 5

    .line 1
    iget-object v0, p0, Lv9/i;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv9/i;->j:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lu9/c;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lv9/i;->k:Z

    .line 19
    .line 20
    iget-object p1, p0, Lv9/i;->i:Ljava/util/concurrent/locks/Condition;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-object v3

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_1
    instance-of v4, v2, Lv9/h;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    check-cast v2, Lv9/h;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, v2, Lv9/h;->b:Z

    .line 39
    .line 40
    iget-object p1, v2, Lv9/h;->a:Ljava/util/concurrent/locks/Condition;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lua/g8;

    .line 58
    .line 59
    const/4 v0, 0x6

    .line 60
    invoke-direct {p1, v0, p0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 64
    .line 65
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-object v3

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final M()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lv9/i;->c:I

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lv9/i;->e:Lrg/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lrg/c;->r()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    :try_start_1
    iget-object v0, p0, Lv9/i;->g:Lv9/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Lv9/g;->r()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    :catch_1
    :try_start_2
    iget-object v0, p0, Lv9/i;->f:Lv9/g;

    .line 15
    .line 16
    invoke-virtual {v0}, Lv9/g;->r()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 17
    .line 18
    .line 19
    :catch_2
    iget-object v0, p0, Lv9/i;->d:Ljava/lang/Process;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final N(Lu9/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv9/i;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lv9/i;->j:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lv9/i;->k:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lv9/i;->k:Z

    .line 17
    .line 18
    sget-object p1, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    new-instance v1, Lua/g8;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-direct {v1, v2, p0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget v0, p0, Lv9/i;->c:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lv9/i;->M()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
