.class public Lfg/e;
.super Lfg/c0;
.source "SourceFile"


# static fields
.field public static final Companion:Lfg/a;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static final condition:Ljava/util/concurrent/locks/Condition;

.field private static head:Lfg/e;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private inQueue:Z

.field private next:Lfg/e;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lfg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfg/e;->Companion:Lfg/a;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lfg/e;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "lock.newCondition()"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lfg/e;->condition:Ljava/util/concurrent/locks/Condition;

    .line 25
    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    const-wide/16 v1, 0x3c

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sput-wide v0, Lfg/e;->IDLE_TIMEOUT_MILLIS:J

    .line 35
    .line 36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    sput-wide v0, Lfg/e;->IDLE_TIMEOUT_NANOS:J

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfg/c0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCondition$cp()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    sget-object v0, Lfg/e;->condition:Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getHead$cp()Lfg/e;
    .locals 1

    .line 1
    sget-object v0, Lfg/e;->head:Lfg/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lfg/e;->IDLE_TIMEOUT_MILLIS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lfg/e;->IDLE_TIMEOUT_NANOS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(Lfg/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfg/e;->inQueue:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lfg/e;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNext$p(Lfg/e;)Lfg/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lfg/e;->next:Lfg/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final access$remainingNanos(Lfg/e;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfg/e;->timeoutAt:J

    .line 2
    .line 3
    sub-long/2addr v0, p1

    .line 4
    return-wide v0
.end method

.method public static final synthetic access$setHead$cp(Lfg/e;)V
    .locals 0

    .line 1
    sput-object p0, Lfg/e;->head:Lfg/e;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setInQueue$p(Lfg/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfg/e;->inQueue:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNext$p(Lfg/e;Lfg/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfg/e;->next:Lfg/e;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Lfg/e;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lfg/e;->timeoutAt:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfg/e;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final enter()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lfg/c0;->timeoutNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lfg/c0;->hasDeadline()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v5, v0, v3

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v5, Lfg/e;->Companion:Lfg/a;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lfg/e;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {p0}, Lfg/e;->access$getInQueue$p(Lfg/e;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_8

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    invoke-static {p0, v6}, Lfg/e;->access$setInQueue$p(Lfg/e;Z)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lfg/e;->access$getHead$cp()Lfg/e;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    new-instance v6, Lfg/e;

    .line 50
    .line 51
    invoke-direct {v6}, Lfg/e;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {v6}, Lfg/e;->access$setHead$cp(Lfg/e;)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lfg/b;

    .line 58
    .line 59
    invoke-direct {v6}, Lfg/b;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    cmp-long v8, v0, v3

    .line 74
    .line 75
    if-eqz v8, :cond_2

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Lfg/c0;->deadlineNanoTime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    sub-long/2addr v2, v6

    .line 84
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    add-long/2addr v0, v6

    .line 89
    invoke-static {p0, v0, v1}, Lfg/e;->access$setTimeoutAt$p(Lfg/e;J)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    cmp-long v8, v0, v3

    .line 94
    .line 95
    if-eqz v8, :cond_3

    .line 96
    .line 97
    add-long/2addr v0, v6

    .line 98
    invoke-static {p0, v0, v1}, Lfg/e;->access$setTimeoutAt$p(Lfg/e;J)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    if-eqz v2, :cond_7

    .line 103
    .line 104
    invoke-virtual {p0}, Lfg/c0;->deadlineNanoTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    invoke-static {p0, v0, v1}, Lfg/e;->access$setTimeoutAt$p(Lfg/e;J)V

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-static {p0, v6, v7}, Lfg/e;->access$remainingNanos(Lfg/e;J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    invoke-static {}, Lfg/e;->access$getHead$cp()Lfg/e;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    invoke-static {v2}, Lfg/e;->access$getNext$p(Lfg/e;)Lfg/e;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-static {v2}, Lfg/e;->access$getNext$p(Lfg/e;)Lfg/e;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v3}, Lue/d;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v6, v7}, Lfg/e;->access$remainingNanos(Lfg/e;J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    cmp-long v8, v0, v3

    .line 140
    .line 141
    if-gez v8, :cond_4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-static {v2}, Lfg/e;->access$getNext$p(Lfg/e;)Lfg/e;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Lue/d;->b(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    :goto_3
    invoke-static {v2}, Lfg/e;->access$getNext$p(Lfg/e;)Lfg/e;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {p0, v0}, Lfg/e;->access$setNext$p(Lfg/e;Lfg/e;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v2, p0}, Lfg/e;->access$setNext$p(Lfg/e;Lfg/e;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lfg/e;->access$getHead$cp()Lfg/e;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-ne v2, v0, :cond_6

    .line 167
    .line 168
    sget-object v0, Lfg/e;->Companion:Lfg/a;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lfg/e;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :cond_8
    const-string v0, "Unbalanced enter/exit"

    .line 191
    .line 192
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :goto_4
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :goto_5
    throw v0

    .line 203
    :goto_6
    goto :goto_5
.end method

.method public final exit()Z
    .locals 4

    .line 1
    sget-object v0, Lfg/e;->Companion:Lfg/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lfg/e;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p0}, Lfg/e;->access$getInQueue$p(Lfg/e;)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_1
    invoke-static {p0, v2}, Lfg/e;->access$setInQueue$p(Lfg/e;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lfg/e;->access$getHead$cp()Lfg/e;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-static {v1}, Lfg/e;->access$getNext$p(Lfg/e;)Lfg/e;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, p0, :cond_1

    .line 41
    .line 42
    invoke-static {p0}, Lfg/e;->access$getNext$p(Lfg/e;)Lfg/e;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Lfg/e;->access$setNext$p(Lfg/e;Lfg/e;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v1}, Lfg/e;->access$setNext$p(Lfg/e;Lfg/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :try_start_2
    invoke-static {v1}, Lfg/e;->access$getNext$p(Lfg/e;)Lfg/e;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    :goto_1
    return v2

    .line 69
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :goto_3
    throw v1

    .line 74
    :goto_4
    goto :goto_3
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 2
    .line 3
    const-string v1, "timeout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final sink(Lfg/x;)Lfg/x;
    .locals 2

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfg/c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1, p1}, Lfg/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final source(Lfg/z;)Lfg/z;
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lfg/d;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lfg/d;-><init>(Lfg/e;Lfg/z;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public timedOut()V
    .locals 0

    .line 1
    return-void
.end method

.method public final withTimeout(Lte/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lte/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lfg/e;->enter()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-interface {p1}, Lte/a;->b()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lfg/e;->exit()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lfg/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    :try_start_1
    invoke-virtual {p0}, Lfg/e;->exit()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lfg/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_1
    invoke-virtual {p0}, Lfg/e;->exit()Z

    .line 42
    .line 43
    .line 44
    throw p1
.end method
